-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2022 at 09:29 PM
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
  `password` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', 'malasngoding123', 'admin'),
(3, 'budi', 'sayabudi', 'user'),
(8, 'dika', 'dika', 'super_admin');

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
('1135709192929340', 'Cakra Pramanda', 'indonesia', 2, '1994-10-22', 'jalan mekatani gg syukur no 238 e marindal medan sumatra utara 20318231', '13', '30', 32, 3276, 3276101003, 327610, '52751460421845', 1, 'form', NULL, NULL, 'user'),
('1142352063593010', 'Sakti Ardiansyah', 'indonesia', 2, '1996-04-08', 'gumudasd', '29', '16', 32, 3276, 3276111002, 327611, '64691063108604', 1, 'form', NULL, NULL, 'super_admin'),
('1156786756382850', 'Richard Larassati', 'indonesia', 1, '1980-03-13', 'gumudasd', '16', '30', 32, 3276, 3275031005, 327503, '931542499954', 1, 'form', NULL, NULL, 'admin'),
('1175433000115940', 'Soo Yun', 'indonesia', 1, '1992-06-12', 'gumudasd', '16', '1', 32, 3276, 3276011010, 327601, '72259717282012', 1, 'form', NULL, NULL, 'admin'),
('1184619726426420', 'Revi Subiarsono', 'indonesia', 2, '1981-05-11', 'gumudasd', '28', '1', 32, 3276, 3275021004, 327502, '31708971723989', 1, 'form', NULL, NULL, 'admin'),
('1196457682377860', 'lisaans_', 'indonesia', 1, '1999-02-25', 'gumudasd', '3', '25', 32, 3276, 3276051001, 327605, '47182572791534', 1, 'form', NULL, NULL, 'admin'),
('1216827299208910', 'Evi Tobing', 'indonesia', 2, '1994-01-18', 'gumudasd', '29', '18', 32, 3276, 3275081006, 327508, '12840279275210', 1, 'form', NULL, NULL, 'admin'),
('1219711368842370', 'Reels&RiverGirl', 'indonesia', 2, '1986-02-04', 'gumudasd', '17', '5', 32, 3276, 3276081002, 327608, '15819451053412', 1, 'form', NULL, NULL, 'admin'),
('1246183257848420', 'Alrendy Delmeizar', 'indonesia', 2, '1982-03-25', 'gumudasd', '22', '13', 32, 3276, 3275041004, 327504, '86888261974607', 1, 'form', NULL, NULL, 'admin'),
('1291138131044160', 'Hizrian Lendy Dinantika', 'indonesia', 2, '1985-07-11', 'gumudasd', '13', '21', 32, 3276, 3275051001, 327505, '95768907279517', 1, 'form', NULL, NULL, 'admin'),
('1331415463941610', 'Tasya Zahra Mawaldi', 'indonesia', 1, '2000-10-30', 'gumudasd', '10', '2', 32, 3276, 3276061004, 327606, '32496098925699', 1, 'form', NULL, NULL, 'admin'),
('1340256790036580', 'vitri', 'indonesia', 1, '1996-08-09', 'gumudasd', '3', '8', 32, 3276, 3276111006, 327611, '26266835272777', 1, 'form', NULL, NULL, 'admin'),
('1374105153273930', 'therealnurisya', 'indonesia', 1, '1985-12-03', 'gumudasd', '18', '28', 32, 3276, 3276111002, 327611, '64691063108604', 1, 'form', NULL, NULL, 'admin'),
('1410122241965480', 'SandSay', 'indonesia', 2, '1991-09-27', 'gumudasd', '30', '5', 32, 3276, 3276101005, 327610, '18464572668425', 1, 'form', NULL, NULL, 'admin'),
('1437267253264560', 'Ayuningtyas Wahyuningtias', 'indonesia', 2, '1993-11-14', 'gumudasd', '25', '10', 32, 3276, 3276011010, 327601, '72259717282012', 1, 'form', NULL, NULL, 'admin'),
('1442157363507930', 'Ries Bagir', 'indonesia', 1, '1983-08-05', 'gumudasd', '8', '13', 32, 3276, 3275091005, 327509, '63050156189905', 1, 'form', NULL, NULL, 'admin'),
('1445398427059460', 'Alditio Fatimah', 'indonesia', 1, '1994-07-08', 'gumudasd', '2', '11', 32, 3276, 3275051001, 327505, '95768907279517', 1, 'form', NULL, NULL, 'admin'),
('1454552392461670', 'Hizkia Isham', 'indonesia', 2, '1994-07-02', 'gumudasd', '15', '1', 32, 3276, 3275031001, 327503, '73571610399210', 1, 'form', NULL, NULL, 'admin'),
('1462608451379970', 'revinassyarif', 'indonesia', 1, '1984-05-10', 'gumudasd', '11', '21', 32, 3276, 3276081004, 327608, '82030159676468', 1, 'form', NULL, NULL, 'admin'),
('1489675471678420', 'wvinterb', 'indonesia', 2, '1981-04-07', 'gumudasd', '13', '27', 32, 3276, 3276031001, 327603, '308415796259', 1, 'form', NULL, NULL, 'admin'),
('1503651726472050', 'Choirunnisa Tyas Sastra', 'indonesia', 1, '1986-12-20', 'gumudasd', '2', '21', 32, 3276, 3276021011, 327602, '43225814557888', 1, 'form', NULL, NULL, 'admin'),
('1520747805357240', 'Dhanu Utami', 'indonesia', 2, '1985-10-31', 'gumudasd', '13', '25', 32, 3276, 3275021004, 327502, '31708971723989', 1, 'form', NULL, NULL, 'admin'),
('1553413522430510', 'Deka Hardianti', 'indonesia', 2, '1991-04-22', 'gumudasd', '15', '1', 32, 3276, 3275051003, 327505, '41004735781079', 1, 'form', NULL, NULL, 'admin'),
('1563019828619460', 'Sebastian Septefani', 'indonesia', 2, '2000-04-20', 'gumudasd', '11', '8', 32, 3276, 3275071008, 327507, '2472162161663', 1, 'form', NULL, NULL, 'admin'),
('1576164634245180', 'Adityo Sinuka', 'indonesia', 1, '1985-04-12', 'gumudasd', '7', '10', 32, 3276, 3275111002, 327511, '22576364337341', 1, 'form', NULL, NULL, 'admin'),
('1584816617230930', 'Hafizh Chandra', 'indonesia', 2, '1980-10-23', 'gumudasd', '25', '18', 32, 3276, 3275041004, 327504, '86888261974607', 1, 'form', NULL, NULL, 'admin'),
('1592867516949380', 'Anindyanti Gustika', 'indonesia', 1, '1990-03-16', 'gumudasd', '14', '4', 32, 3276, 3276081001, 327608, '48933920783596', 1, 'form', NULL, NULL, 'admin'),
('1594240127066490', 'Nafila Larasati', 'indonesia', 2, '1992-10-12', 'gumudasd', '27', '15', 32, 3276, 3276081001, 327608, '48933920783596', 1, 'form', NULL, NULL, 'admin'),
('1603727720778850', 'Bunga Lalo', 'indonesia', 1, '1994-06-14', 'gumudasd', '28', '19', 32, 3276, 3276051010, 327605, '10815690187600', 1, 'form', NULL, NULL, 'admin'),
('1605290858117370', 'Handayani Rahadian', 'indonesia', 1, '1995-10-14', 'gumudasd', '2', '1', 32, 3276, 3276041004, 327604, '33149288223067', 1, 'form', NULL, NULL, 'admin'),
('1619691547430820', 'Rofiqotul Giarini', 'indonesia', 1, '1983-01-14', 'gumudasd', '28', '17', 32, 3276, 3276061004, 327606, '32496098925699', 1, 'form', NULL, NULL, 'admin'),
('1632170552597240', 'Rusdi Abrianto', 'indonesia', 2, '1998-07-29', 'gumudasd', '26', '18', 32, 3276, 3275091001, 327509, '94532773496081', 1, 'form', NULL, NULL, 'admin'),
('1654749510139900', 'Banni Syaraswati', 'indonesia', 1, '1983-04-15', 'gumudasd', '19', '27', 32, 3276, 3275081001, 327508, '20653944435203', 1, 'form', NULL, NULL, 'admin'),
('1669282547898830', 'Farizi Chairunisa', 'indonesia', 2, '1995-11-12', 'gumudasd', '6', '14', 32, 3276, 3275061003, 327506, '53187987827601', 1, 'form', NULL, NULL, 'admin'),
('1685197032774330', 'Mohammad Dyarini', 'indonesia', 1, '1987-12-19', 'gumudasd', '10', '12', 32, 3276, 3275061001, 327506, '37955855219545', 1, 'form', NULL, NULL, 'admin'),
('1699427289002000', 'Sun Hee', 'indonesia', 2, '1984-02-03', 'gumudasd', '5', '21', 32, 3276, 3276021010, 327602, '46087938397505', 1, 'form', NULL, NULL, 'admin'),
('1708668229768680', 'Ramanta Fajri Azzahrani', 'indonesia', 1, '1980-07-17', 'gumudasd', '3', '5', 32, 3276, 3275111001, 327511, '88316800066201', 1, 'form', NULL, NULL, 'admin'),
('1711782174793810', 'Nika Sobirin', 'indonesia', 1, '1996-04-14', 'gumudasd', '4', '7', 32, 3276, 3276091004, 327609, '46863113591300', 1, 'form', NULL, NULL, 'admin'),
('1766731322807190', 'Fauzi Jeni', 'indonesia', 1, '1989-07-26', 'gumudasd', '9', '6', 32, 3276, 3275021001, 327502, '91643196664822', 1, 'form', NULL, NULL, 'admin'),
('1775047820535100', 'Esra Umaeroh', 'indonesia', 2, '1984-12-08', 'gumudasd', '10', '15', 32, 3276, 3276101006, 327610, '40775578796818', 1, 'form', NULL, NULL, 'admin'),
('1787018277828100', 'Myung-Dae', 'indonesia', 2, '2000-01-30', 'gumudasd', '13', '23', 32, 3275, 3275091005, 327509, '63050156189905', 1, 'form', NULL, NULL, 'admin'),
('1807593872278810', 'Doni Arrauf', 'indonesia', 2, '1983-03-05', 'gumudasd', '9', '14', 32, 3276, 3276111006, 327611, '26266835272777', 1, 'form', NULL, NULL, 'admin'),
('1823888998112720', 'Sumandi Mulyanti', 'indonesia', 2, '1984-04-24', 'gumudasd', '16', '11', 32, 3276, 3275061004, 327506, '80622278957020', 1, 'form', NULL, NULL, 'admin'),
('1826380275162970', 'Ressy Fachria', 'indonesia', 1, '1996-07-06', 'gumudasd', '9', '12', 32, 3276, 3276061006, 327606, '69752429724335', 1, 'form', NULL, NULL, 'admin'),
('1858553374168270', 'Dhanu Firdaus Hidayatul', 'indonesia', 1, '1993-10-10', 'gumudasd', '26', '20', 32, 3276, 3275011004, 327501, '8246556510673', 1, 'form', NULL, NULL, 'admin'),
('1862798219223280', 'Priyohadi Aziz', 'indonesia', 2, '1988-06-03', 'gumudasd', '13', '2', 32, 3276, 3276081001, 327608, '48933920783596', 1, 'form', NULL, NULL, 'admin'),
('1886133718812830', 'Sujendro Audy', 'indonesia', 1, '1991-06-15', 'gumudasd', '30', '10', 32, 3276, 3275091001, 327509, '94532773496081', 1, 'form', NULL, NULL, 'admin'),
('1898793770104920', 'Yudha Astuti', 'indonesia', 2, '1985-11-21', 'gumudasd', '30', '24', 32, 3276, 3275021005, 327502, '7689483198748', 1, 'form', NULL, NULL, 'admin'),
('1903067632507020', 'Hanny Tilasnuari', 'indonesia', 2, '1994-03-21', 'gumudasd', '16', '26', 32, 3276, 3276021008, 327602, '39204411882467', 1, 'form', NULL, NULL, 'admin'),
('1903574441488730', 'Guk Sang-Ook', 'indonesia', 2, '1993-03-10', 'gumudasd', '6', '31', 32, 3275, 3275051003, 327505, '41004735781079', 1, 'form', NULL, NULL, 'admin'),
('1904440464657280', 'Annieza Noerani', 'indonesia', 1, '1985-07-14', 'gumudasd', '27', '2', 32, 3276, 3276021010, 327602, '46087938397505', 1, 'form', NULL, NULL, 'admin'),
('1904894196870830', 'Elma Santi', 'indonesia', 1, '1993-11-30', 'gumudasd', '4', '18', 32, 3276, 3276041001, 327604, '67511419540773', 1, 'form', NULL, NULL, 'admin'),
('1908966800020410', 'Ficky Primastiny', 'indonesia', 2, '1993-03-30', 'gumudasd', '23', '25', 32, 3276, 3275021003, 327502, '84926030313753', 1, 'form', NULL, NULL, 'admin'),
('1936466131869300', 'Finaldi Novitasari', 'indonesia', 2, '1992-03-16', 'gumudasd', '6', '28', 32, 3276, 3275021005, 327502, '7689483198748', 1, 'form', NULL, NULL, 'admin'),
('1944401641723550', 'Yun Hee', 'indonesia', 1, '1987-10-21', 'gumudasd', '22', '27', 32, 3276, 3276041001, 327604, '67511419540773', 1, 'form', NULL, NULL, 'admin'),
('1964555095821190', 'Nella Fudhail', 'indonesia', 1, '1985-08-05', 'gumudasd', '3', '27', 32, 3276, 3275041001, 327504, '20316506209171', 1, 'form', NULL, NULL, 'admin'),
('1973604227502380', 'Fadillah Adhitama', 'indonesia', 2, '2000-03-08', 'gumudasd', '25', '2', 32, 3276, 3276051003, 327605, '85553562423436', 1, 'form', NULL, NULL, 'admin'),
('1999968834900670', 'Yessi Carolina', 'indonesia', 2, '1995-01-17', 'gumudasd', '7', '15', 32, 3276, 3276011007, 327601, '11436793211722', 1, 'form', NULL, NULL, 'admin'),
('2003027726216500', 'Alditio Sinuka', 'indonesia', 2, '1985-02-26', 'gumudasd', '21', '23', 32, 3276, 3275041005, 327504, '42521540061302', 1, 'form', NULL, NULL, 'admin'),
('2041605380865850', 'Thomas Dayanti', 'indonesia', 1, '1984-01-16', 'gumudasd', '15', '2', 32, 3276, 3276111002, 327611, '64691063108604', 1, 'form', NULL, NULL, 'admin'),
('2115023126207300', 'Magdalena Tursia', 'indonesia', 1, '1980-05-11', 'gumudasd', '9', '2', 32, 3276, 3276091003, 327609, '33898096597128', 1, 'form', NULL, NULL, 'admin'),
('2123081226512270', 'Ridhwan Zahaira', 'indonesia', 1, '1988-11-12', 'gumudasd', '27', '6', 32, 3276, 3276101003, 327610, '52751460421845', 1, 'form', NULL, NULL, 'admin'),
('2125113606585140', 'Fandy Utomo', 'indonesia', 2, '1980-05-24', 'gumudasd', '26', '3', 32, 3276, 3276091004, 327609, '46863113591300', 1, 'form', NULL, NULL, 'admin'),
('2126782830760010', 'deTzuyu', 'indonesia', 1, '1983-09-13', 'gumudasd', '8', '20', 32, 3275, 3275031003, 327503, '12517637856665', 1, 'form', NULL, NULL, 'admin'),
('2127011375702750', 'Deka Jeni', 'indonesia', 1, '1989-09-30', 'gumudasd', '12', '7', 32, 3276, 3275031002, 327503, '74237213735575', 1, 'form', NULL, NULL, 'admin'),
('2129678917515060', 'Inneke Herdani', 'indonesia', 2, '1995-05-05', 'gumudasd', '30', '15', 32, 3276, 3276061003, 327606, '2719523212589', 1, 'form', NULL, NULL, 'admin'),
('2130255989147910', 'Yosua Alvianto', 'indonesia', 2, '1990-05-26', 'gumudasd', '6', '11', 32, 3276, 3275011003, 327501, '91764272735574', 1, 'form', NULL, NULL, 'admin'),
('2154175538882460', 'Reksa Pradana', 'indonesia', 2, '1980-12-16', 'gumudasd', '18', '25', 32, 3276, 3275031004, 327503, '47659276940530', 1, 'form', NULL, NULL, 'admin'),
('2169150625583900', 'Miftachul Rifat Noor', 'indonesia', 2, '1998-06-09', 'gumudasd', '26', '31', 32, 3276, 3276101001, 327610, '36976163002393', 1, 'form', NULL, NULL, 'admin'),
('2180021451262280', 'Arini Anastasia Shella', 'indonesia', 2, '1993-04-24', 'gumudasd', '3', '29', 32, 3276, 3276051005, 327605, '21855383826548', 1, 'form', NULL, NULL, 'admin'),
('2209590044983860', 'Candrakasi Mayasopha', 'indonesia', 1, '1989-05-13', 'gumudasd', '6', '16', 32, 3276, 3275111001, 327511, '88316800066201', 1, 'form', NULL, NULL, 'admin'),
('2249048003058650', 'Aswin Sali', 'indonesia', 1, '1996-08-20', 'gumudasd', '3', '16', 32, 3276, 3275091004, 327509, '67896876233462', 1, 'form', NULL, NULL, 'admin'),
('2274973700419950', 'Handayani Kahfi', 'indonesia', 1, '1994-09-19', 'gumudasd', '8', '4', 32, 3276, 3275081002, 327508, '17778021516594', 1, 'form', NULL, NULL, 'admin'),
('2276030412257330', 'Arinda Zain', 'indonesia', 1, '1994-11-06', 'gumudasd', '11', '25', 32, 3276, 3275121001, 327512, '28904030106240', 1, 'form', NULL, NULL, 'admin'),
('2287766108555950', 'Luuu_V', 'indonesia', 2, '1984-12-07', 'gumudasd', '5', '17', 32, 3275, 3275071008, 327507, '2472162161663', 1, 'form', NULL, NULL, 'admin'),
('2304494330709310', 'Aufa Amalina', 'indonesia', 2, '1981-03-29', 'gumudasd', '19', '27', 32, 3276, 3275091002, 327509, '93824193249804', 1, 'form', NULL, NULL, 'admin'),
('2311599458430320', 'Muhamad Siahainenia', 'indonesia', 2, '1991-07-13', 'gumudasd', '11', '26', 32, 3276, 3276031009, 327603, '2761567055741', 1, 'form', NULL, NULL, 'admin'),
('2323939533799720', 'Shifa Priyanto', 'indonesia', 1, '1997-01-20', 'gumudasd', '6', '13', 32, 3276, 3275101002, 327510, '82830344029524', 1, 'form', NULL, NULL, 'admin'),
('2333624462416680', 'Jova Usra', 'indonesia', 1, '1989-05-12', 'gumudasd', '26', '18', 32, 3276, 3275111004, 327511, '80281216614189', 1, 'form', NULL, NULL, 'admin'),
('2335794502933790', 'Kharisma Siahainenia', 'indonesia', 2, '1981-10-13', 'gumudasd', '21', '11', 32, 3276, 3275091004, 327509, '67896876233462', 1, 'form', NULL, NULL, 'admin'),
('2352705241252150', 'Irene Iqbal', 'indonesia', 1, '1999-04-22', 'gumudasd', '5', '31', 32, 3276, 3275061002, 327506, '84805225066539', 1, 'form', NULL, NULL, 'admin'),
('2376805049259160', 'Tessa Fitria Habiba', 'indonesia', 2, '1997-10-04', 'gumudasd', '14', '17', 32, 3276, 3276061002, 327606, '87271361275960', 1, 'form', NULL, NULL, 'admin'),
('2384393692894060', 'Khaznan Mustikawati', 'indonesia', 1, '1991-05-27', 'gumudasd', '22', '26', 32, 3276, 3275041002, 327504, '73978145362620', 1, 'form', NULL, NULL, 'admin'),
('2395879183629960', 'Satrya Asmarandana', 'indonesia', 2, '1988-06-09', 'gumudasd', '8', '17', 32, 3276, 3275011004, 327501, '8246556510673', 1, 'form', NULL, NULL, 'admin'),
('2403035163978720', 'Fitria Mukaffi', 'indonesia', 1, '1991-03-13', 'gumudasd', '4', '25', 32, 3276, 3275121003, 327512, '55003413902905', 1, 'form', NULL, NULL, 'admin'),
('2413680415591130', 'snugglecelebrate', 'indonesia', 2, '1999-02-24', 'gumudasd', '30', '23', 32, 3275, 3275121004, 327512, '32050268951002', 1, 'form', NULL, NULL, 'admin'),
('2437024302786860', 'matamarza', 'indonesia', 1, '1998-05-24', 'gumudasd', '10', '18', 32, 3276, 3276051005, 327605, '21855383826548', 1, 'form', NULL, NULL, 'admin'),
('2449542456589030', 'Eti Triutami', 'indonesia', 1, '1991-10-05', 'gumudasd', '30', '14', 32, 3276, 3276011011, 327601, '60053483102542', 1, 'form', NULL, NULL, 'admin'),
('2455883275703150', 'Si Bong', 'indonesia', 2, '1983-04-07', 'gumudasd', '2', '3', 32, 3275, 3275121002, 327512, '46909503656721', 1, 'form', NULL, NULL, 'admin'),
('2493898562842900', 'Rahardianto Azis', 'indonesia', 2, '1998-01-28', 'gumudasd', '26', '9', 32, 3276, 3275031005, 327503, '931542499954', 1, 'form', NULL, NULL, 'admin'),
('2506314598476150', 'tnftr', 'indonesia', 2, '1981-04-15', 'gumudasd', '24', '12', 32, 3276, 3276111004, 327611, '59941630973615', 1, 'form', NULL, NULL, 'admin'),
('2524864322073800', 'Roy Julianne', 'indonesia', 2, '1999-01-13', 'gumudasd', '2', '31', 32, 3276, 3276011008, 327601, '67235587487931', 1, 'form', NULL, NULL, 'admin'),
('2548771234687970', 'Hillery Agustiana', 'indonesia', 2, '1995-02-27', 'gumudasd', '9', '13', 32, 3276, 3276021009, 327602, '40023248259406', 1, 'form', NULL, NULL, 'admin'),
('2550361504364950', 'Rinaldy Hidayanti', 'indonesia', 1, '1988-01-29', 'gumudasd', '5', '26', 32, 3276, 3275011002, 327501, '64067093368307', 1, 'form', NULL, NULL, 'admin'),
('2574796994852300', 'Titiek Zulaeha', 'indonesia', 2, '1984-12-30', 'gumudasd', '21', '7', 32, 3276, 3275101001, 327510, '17329713980919', 1, 'form', NULL, NULL, 'admin'),
('2602840066974990', 'Ryan Adisdi Widyasmoro', 'indonesia', 2, '1998-04-28', 'gumudasd', '12', '15', 32, 3276, 3276051005, 327605, '21855383826548', 1, 'form', NULL, NULL, 'admin'),
('2613513408933890', 'Maureen Arinda Fiora', 'indonesia', 2, '1990-05-22', 'gumudasd', '11', '22', 32, 3276, 3276101002, 327610, '42146416195302', 1, 'form', NULL, NULL, 'admin'),
('2635758236394740', 'Avicenna Anugrah Acbar', 'indonesia', 1, '1981-05-13', 'gumudasd', '29', '9', 32, 3276, 3276101005, 327610, '18464572668425', 1, 'form', NULL, NULL, 'admin'),
('2654217059314240', 'Maruto Randhika', 'indonesia', 1, '1993-11-13', 'gumudasd', '29', '3', 32, 3276, 3276021012, 327602, '71983054932921', 1, 'form', NULL, NULL, 'admin'),
('2662577588938480', 'Rinaldy Pamungkas', 'indonesia', 2, '1998-07-07', 'gumudasd', '1', '24', 32, 3276, 3276021010, 327602, '46087938397505', 1, 'form', NULL, NULL, 'admin'),
('2689337890001610', 'Ogie Banni Mariana', 'indonesia', 2, '2000-03-07', 'gumudasd', '14', '28', 32, 3276, 3275081003, 327508, '43219973164060', 1, 'form', NULL, NULL, 'admin'),
('2702593378558260', 'Allen Hamdi', 'indonesia', 1, '1998-05-03', 'gumudasd', '27', '20', 32, 3276, 3275051003, 327505, '41004735781079', 1, 'form', NULL, NULL, 'admin'),
('2841902966579590', 'AegiBabby', 'indonesia', 1, '2000-03-10', 'gumudasd', '16', '20', 32, 3275, 3275011001, 327501, '8506563511073', 1, 'form', NULL, NULL, 'admin'),
('2858014005096090', 'Caesarani Verev', 'indonesia', 2, '1988-04-08', 'gumudasd', '13', '18', 32, 3276, 3276041004, 327604, '33149288223067', 1, 'form', NULL, NULL, 'admin'),
('2858101629347710', 'Jenny Amsamsyum', 'indonesia', 2, '1983-11-12', 'gumudasd', '9', '3', 32, 3276, 3276101005, 327610, '18464572668425', 1, 'form', NULL, NULL, 'admin'),
('2861476672511410', 'Julian Yasin', 'indonesia', 1, '1990-06-01', 'gumudasd', '16', '21', 32, 3276, 3276021008, 327602, '39204411882467', 1, 'form', NULL, NULL, 'admin'),
('2934355258147520', 'June Husein', 'indonesia', 1, '1981-03-14', 'gumudasd', '12', '5', 32, 3276, 3276011008, 327601, '67235587487931', 1, 'form', NULL, NULL, 'admin'),
('2942459928228890', 'Suck-Chin', 'indonesia', 1, '1991-08-09', 'gumudasd', '21', '1', 32, 3276, 3276021007, 327602, '92788084727427', 1, 'form', NULL, NULL, 'admin'),
('2944496584311710', 'Roy Umam', 'indonesia', 1, '1993-08-19', 'gumudasd', '2', '16', 32, 3276, 3275021001, 327502, '91643196664822', 1, 'form', NULL, NULL, 'admin'),
('2962201605712610', 'Siti Farahdiba', 'indonesia', 1, '2000-05-26', 'gumudasd', '23', '19', 32, 3276, 3276011006, 327601, '60206763940198', 1, 'form', NULL, NULL, 'admin'),
('2991223311278740', 'Kayraa Aisi', 'indonesia', 2, '1999-04-18', 'gumudasd', '6', '11', 32, 3276, 3276071003, 327607, '60963965599439', 1, 'form', NULL, NULL, 'admin'),
('2997384715663520', 'syhrrahmah', 'indonesia', 2, '1980-04-14', 'gumudasd', '6', '6', 32, 3276, 3276111001, 327611, '7071030079289', 1, 'form', NULL, NULL, 'admin'),
('3005108142929250', 'Ferhat Setyawati', 'indonesia', 2, '1994-04-19', 'gumudasd', '28', '17', 32, 3276, 3275071004, 327507, '90477945490639', 1, 'form', NULL, NULL, 'admin'),
('3028659926307270', 'Novita Butar-butar', 'indonesia', 2, '1992-09-11', 'gumudasd', '23', '3', 32, 3276, 3275111003, 327511, '38604968155119', 1, 'form', NULL, NULL, 'admin'),
('3042332081806510', 'Magdalena Nustantomo', 'indonesia', 2, '1984-06-26', 'gumudasd', '24', '10', 32, 3276, 3275091001, 327509, '94532773496081', 1, 'form', NULL, NULL, 'admin'),
('3076082883533400', 'Faishal Caroline', 'indonesia', 1, '1999-09-20', 'gumudasd', '10', '16', 32, 3276, 3276111006, 327611, '26266835272777', 1, 'form', NULL, NULL, 'admin'),
('3076797856066550', 'Young-Soo', 'indonesia', 2, '1993-02-13', 'gumudasd', '23', '7', 32, 3276, 3276031011, 327603, '27548558102350', 1, 'form', NULL, NULL, 'admin'),
('3089013059471880', 'Syahdian Larashaty', 'indonesia', 2, '2000-02-25', 'gumudasd', '15', '8', 32, 3276, 3276111004, 327611, '59941630973615', 1, 'form', NULL, NULL, 'admin'),
('3115475706000120', 'Gim Moon', 'indonesia', 2, '1994-09-10', 'gumudasd', '13', '11', 32, 3275, 3275041005, 327504, '42521540061302', 1, 'form', NULL, NULL, 'admin'),
('3153465971957870', 'Fajri Giarini', 'indonesia', 1, '1995-07-12', 'gumudasd', '26', '10', 32, 3276, 3275011003, 327501, '91764272735574', 1, 'form', NULL, NULL, 'admin'),
('3207248149580120', 'Akbar Maulidah', 'indonesia', 1, '1994-05-03', 'gumudasd', '31', '3', 32, 3276, 3276051004, 327605, '67657511383379', 1, 'form', NULL, NULL, 'admin'),
('3213150409522050', 'Gilang Syahrul Hasan', 'indonesia', 2, '1995-06-13', 'gumudasd', '29', '10', 32, 3276, 3275051002, 327505, '56904066352757', 1, 'form', NULL, NULL, 'admin'),
('3214881595584280', 'Hudzaifah Adha', 'indonesia', 1, '1998-02-14', 'gumudasd', '10', '23', 32, 3276, 3276111007, 327611, '691209492007', 1, 'form', NULL, NULL, 'admin'),
('3232187721878300', 'Theresia Widiyasari', 'indonesia', 2, '1991-06-21', 'gumudasd', '8', '27', 32, 3276, 3275051001, 327505, '95768907279517', 1, 'form', NULL, NULL, 'admin'),
('3262212358991910', 'Dyah Triutami', 'indonesia', 2, '1985-03-28', 'gumudasd', '15', '12', 32, 3276, 3276061002, 327606, '87271361275960', 1, 'form', NULL, NULL, 'admin'),
('3264315321815850', 'Astrid Permana', 'indonesia', 2, '1987-08-19', 'gumudasd', '3', '30', 32, 3276, 3276031012, 327603, '98479416417790', 1, 'form', NULL, NULL, 'admin'),
('3285061521073540', 'Prieskha Melfriza', 'indonesia', 2, '1997-09-06', 'gumudasd', '18', '9', 32, 3276, 3276031002, 327603, '21639659235121', 1, 'form', NULL, NULL, 'admin'),
('3287405201702240', 'Reksa Ayudhani', 'indonesia', 2, '1985-06-03', 'gumudasd', '23', '1', 32, 3276, 3276041004, 327604, '33149288223067', 1, 'form', NULL, NULL, 'admin'),
('3305460063755300', 'eop Hana', 'indonesia', 1, '1989-02-24', 'gumudasd', '8', '23', 32, 3275, 3275031006, 327503, '80518751073302', 1, 'form', NULL, NULL, 'admin'),
('3311417280082800', 'Avie Anindita', 'indonesia', 1, '1985-02-16', 'gumudasd', '5', '24', 32, 3276, 3275081007, 327508, '53961815966353', 1, 'form', NULL, NULL, 'admin'),
('3362919352700310', 'Deka Julianto', 'indonesia', 2, '1993-02-23', 'gumudasd', '7', '31', 32, 3276, 3276101006, 327610, '40775578796818', 1, 'form', NULL, NULL, 'admin'),
('3372424387422840', 'Lutfia Herdianti', 'indonesia', 1, '2000-05-16', 'gumudasd', '6', '29', 32, 3276, 3276081004, 327608, '82030159676468', 1, 'form', NULL, NULL, 'admin'),
('3374124309016970', 'windiazahra', 'indonesia', 1, '1992-07-03', 'gumudasd', '12', '28', 32, 3276, 3276111007, 327611, '691209492007', 1, 'form', NULL, NULL, 'admin'),
('3388846124758290', 'rizkymustari94', 'indonesia', 1, '1985-06-07', 'gumudasd', '30', '12', 32, 3276, 3276091003, 327609, '33898096597128', 1, 'form', NULL, NULL, 'admin'),
('3393595441313400', 'Aimee Paramadina', 'indonesia', 2, '1989-06-26', 'gumudasd', '31', '12', 32, 3276, 3275031005, 327503, '931542499954', 1, 'form', NULL, NULL, 'admin'),
('3455764361960120', 'Haseeulquu', 'indonesia', 1, '1993-10-02', 'gumudasd', '8', '21', 32, 3275, 3275051004, 327505, '49549305554254', 1, 'form', NULL, NULL, 'admin'),
('3479225924718370', 'dimplescomedy', 'indonesia', 2, '1996-11-10', 'gumudasd', '20', '22', 32, 3275, 3275031004, 327503, '47659276940530', 1, 'form', NULL, NULL, 'admin'),
('3514533308657900', 'Dessita Ariefandi', 'indonesia', 2, '1984-12-20', 'gumudasd', '17', '21', 32, 3276, 3276101007, 327610, '29800376714659', 1, 'form', NULL, NULL, 'admin'),
('3519010405314900', 'Jhon Tanjung', 'indonesia', 1, '1993-12-13', 'gumudasd', '30', '20', 32, 3276, 3275041005, 327504, '42521540061302', 1, 'form', NULL, NULL, 'admin'),
('3520117764533040', 'baelove', 'indonesia', 1, '1998-05-11', 'gumudasd', '19', '16', 32, 3275, 3275011004, 327501, '8246556510673', 1, 'form', NULL, NULL, 'admin'),
('3545502922316820', 'Dhika Hanifah', 'indonesia', 1, '1998-03-13', 'gumudasd', '23', '14', 32, 3276, 3275051004, 327505, '49549305554254', 1, 'form', NULL, NULL, 'admin'),
('3547784695388410', 'lusianaganesha', 'indonesia', 2, '1998-09-02', 'gumudasd', '3', '5', 32, 3276, 3276051003, 327605, '85553562423436', 1, 'form', NULL, NULL, 'admin'),
('3553785908378510', 'Rusdi Pringganti', 'indonesia', 2, '1998-09-10', 'gumudasd', '7', '4', 32, 3276, 3276071005, 327607, '1053286031805', 1, 'form', NULL, NULL, 'admin'),
('3592000969421570', 'Young-Il', 'indonesia', 1, '1997-01-20', 'gumudasd', '22', '12', 32, 3276, 3276031009, 327603, '2761567055741', 1, 'form', NULL, NULL, 'admin'),
('3614361147302990', 'Irlan Ariana', 'indonesia', 1, '2000-04-19', 'gumudasd', '19', '21', 32, 3276, 3275021001, 327502, '91643196664822', 1, 'form', NULL, NULL, 'admin'),
('3625738607243660', 'Aditya Aristy', 'indonesia', 2, '1996-08-09', 'gumudasd', '26', '28', 32, 3276, 3276111003, 327611, '68925146523125', 1, 'form', NULL, NULL, 'admin'),
('3652118396005430', 'Daniel Arrivalda Viena', 'indonesia', 1, '2000-03-27', 'gumudasd', '12', '21', 32, 3276, 3275031002, 327503, '74237213735575', 1, 'form', NULL, NULL, 'admin'),
('3675119463765560', 'Ruthcharuni Rifqi', 'indonesia', 1, '1986-03-19', 'gumudasd', '14', '11', 32, 3276, 3275101005, 327510, '42008686693523', 1, 'form', NULL, NULL, 'admin'),
('3675826977841150', 'Sigit Pasha', 'indonesia', 2, '1999-03-03', 'gumudasd', '3', '19', 32, 3276, 3275061003, 327506, '53187987827601', 1, 'form', NULL, NULL, 'admin'),
('3690796199633860', 'Chandra Melfriza', 'indonesia', 1, '1984-06-06', 'gumudasd', '15', '9', 32, 3276, 3275101001, 327510, '17329713980919', 1, 'form', NULL, NULL, 'admin'),
('3692579758190930', 'Edwin Setiawan', 'indonesia', 2, '1980-02-06', 'gumudasd', '3', '13', 32, 3276, 3275021005, 327502, '7689483198748', 1, 'form', NULL, NULL, 'admin'),
('3704292069260200', 'Herdaru Sherina', 'indonesia', 1, '1986-10-08', 'gumudasd', '22', '29', 32, 3276, 3276111002, 327611, '64691063108604', 1, 'form', NULL, NULL, 'admin'),
('3729918684554140', 'Yoedhistiera Hudzaifah Ridho', 'indonesia', 2, '1994-03-26', 'gumudasd', '24', '17', 32, 3276, 3276061002, 327606, '87271361275960', 1, 'form', NULL, NULL, 'admin'),
('3730786617038540', 'Bony Isnaini', 'indonesia', 1, '1990-05-07', 'gumudasd', '27', '21', 32, 3276, 3276061003, 327606, '2719523212589', 1, 'form', NULL, NULL, 'admin'),
('3730937570784490', 'Izzatul Farzilah', 'indonesia', 1, '1991-12-23', 'gumudasd', '18', '25', 32, 3276, 3276051003, 327605, '85553562423436', 1, 'form', NULL, NULL, 'admin'),
('3731925850186420', 'Young-Soon', 'indonesia', 2, '1986-06-26', 'gumudasd', '1', '22', 32, 3276, 3276031012, 327603, '98479416417790', 1, 'form', NULL, NULL, 'admin'),
('3746052726640820', 'btsoynd', 'indonesia', 1, '1987-05-16', 'gumudasd', '21', '9', 32, 3275, 3275021004, 327502, '31708971723989', 1, 'form', NULL, NULL, 'admin'),
('3748136939585500', 'Eunneunn', 'indonesia', 1, '1988-07-26', 'gumudasd', '9', '13', 32, 3275, 3275041001, 327504, '20316506209171', 1, 'form', NULL, NULL, 'admin'),
('3774590151048810', 'Yoo Joon', 'indonesia', 2, '1983-11-27', 'gumudasd', '16', '23', 32, 3276, 3276031002, 327603, '21639659235121', 1, 'form', NULL, NULL, 'admin'),
('3823960694601350', 'Hilyah Usmani', 'indonesia', 2, '1989-10-25', 'gumudasd', '25', '16', 32, 3276, 3275091006, 327509, '44803382606578', 1, 'form', NULL, NULL, 'admin'),
('3824514679990910', 'Andika Nurkhayati', 'indonesia', 1, '1998-02-15', 'gumudasd', '3', '8', 32, 3276, 3275101001, 327510, '17329713980919', 1, 'form', NULL, NULL, 'admin'),
('3841268069535500', 'Irsan Septefani', 'indonesia', 2, '1984-01-09', 'gumudasd', '20', '9', 32, 3276, 3275041002, 327504, '73978145362620', 1, 'form', NULL, NULL, 'admin'),
('3844305309421450', 'rinnamarlina', 'indonesia', 1, '1985-08-31', 'gumudasd', '12', '23', 32, 3276, 3276091001, 327609, '81976929211278', 1, 'form', NULL, NULL, 'admin'),
('3848171868839290', 'Moon', 'indonesia', 1, '1986-07-09', 'gumudasd', '15', '22', 32, 3275, 3275091001, 327509, '94532773496081', 1, 'form', NULL, NULL, 'admin'),
('3856800485423170', 'mrsloli__', 'indonesia', 1, '1987-11-26', 'gumudasd', '3', '24', 32, 3276, 3276061002, 327606, '87271361275960', 1, 'form', NULL, NULL, 'admin'),
('3868894150178430', 'Givan Puspa', 'indonesia', 1, '1983-02-13', 'gumudasd', '21', '29', 32, 3276, 3275091003, 327509, '85970272063502', 1, 'form', NULL, NULL, 'admin'),
('3884138802602120', 'Septania Wahyudi', 'indonesia', 1, '1988-11-16', 'gumudasd', '2', '10', 32, 3276, 3276041002, 327604, '26120005055735', 1, 'form', NULL, NULL, 'admin'),
('3890397442576810', 'Kevin Redian Farahdiba', 'indonesia', 2, '1984-08-02', 'gumudasd', '31', '14', 32, 3276, 3276111004, 327611, '59941630973615', 1, 'form', NULL, NULL, 'admin'),
('3900459352593250', 'BuBuChoerry', 'indonesia', 1, '1985-04-19', 'gumudasd', '21', '14', 32, 3275, 3275021005, 327502, '7689483198748', 1, 'form', NULL, NULL, 'admin'),
('3901955559020100', 'Febby Yasin', 'indonesia', 1, '1997-07-09', 'gumudasd', '4', '20', 32, 3276, 3275101003, 327510, '26705952415589', 1, 'form', NULL, NULL, 'admin'),
('3951495479922510', 'Bonita Pasha', 'indonesia', 2, '1984-01-04', 'gumudasd', '27', '10', 32, 3276, 3276011007, 327601, '11436793211722', 1, 'form', NULL, NULL, 'admin'),
('3981164700644680', 'Taris Susanto', 'indonesia', 2, '1997-08-09', 'gumudasd', '8', '12', 32, 3276, 3275071008, 327507, '2472162161663', 1, 'form', NULL, NULL, 'admin'),
('3991817621812600', 'Eylien Ferani Qonita', 'indonesia', 2, '1995-03-15', 'gumudasd', '6', '26', 32, 3276, 3276011011, 327601, '60053483102542', 1, 'form', NULL, NULL, 'admin'),
('3999092157453150', 'Garin Larassati', 'indonesia', 2, '1992-04-08', 'gumudasd', '11', '18', 32, 3276, 3275081002, 327508, '17778021516594', 1, 'form', NULL, NULL, 'admin'),
('4000815706186690', 'Reksa Rahadian', 'indonesia', 1, '1983-12-08', 'gumudasd', '13', '9', 32, 3276, 3276111004, 327611, '59941630973615', 1, 'form', NULL, NULL, 'admin'),
('4001396862298390', 'Yosia Amalia', 'indonesia', 1, '1988-10-19', 'gumudasd', '19', '11', 32, 3276, 3276061006, 327606, '69752429724335', 1, 'form', NULL, NULL, 'admin'),
('4017296827092480', 'Arrivaldi Hilmiansyah', 'indonesia', 1, '1990-03-22', 'gumudasd', '28', '31', 32, 3276, 3276041003, 327604, '67670077344784', 1, 'form', NULL, NULL, 'admin'),
('4095092609209620', 'Aprian Gerard', 'indonesia', 1, '1993-05-24', 'gumudasd', '30', '3', 32, 3276, 3276051010, 327605, '10815690187600', 1, 'form', NULL, NULL, 'admin'),
('4104355779630210', 'Mohamad Ray Rismiarti', 'indonesia', 2, '1985-04-20', 'gumudasd', '9', '6', 32, 3276, 3275071003, 327507, '16871024400738', 1, 'form', NULL, NULL, 'admin'),
('4128521908872540', 'Rayhana Azzad', 'indonesia', 1, '1984-09-22', 'gumudasd', '8', '19', 32, 3276, 3275091003, 327509, '85970272063502', 1, 'form', NULL, NULL, 'admin'),
('4142704434224230', 'Bimo Maydina', 'indonesia', 2, '2000-11-17', 'gumudasd', '7', '19', 32, 3276, 3275011004, 327501, '8246556510673', 1, 'form', NULL, NULL, 'admin'),
('4196079913771660', 'Anisah Irmha Septiani', 'indonesia', 1, '1995-09-23', 'gumudasd', '5', '30', 32, 3276, 3276071001, 327607, '73894642725277', 1, 'form', NULL, NULL, 'admin'),
('4198502261239790', 'Fajar Richard Fauzunuria', 'indonesia', 1, '1997-10-06', 'gumudasd', '13', '22', 32, 3276, 3275051001, 327505, '95768907279517', 1, 'form', NULL, NULL, 'admin'),
('4207079850652700', 'Gishella Amaliya', 'indonesia', 2, '1982-08-22', 'gumudasd', '3', '6', 32, 3276, 3276031010, 327603, '35555632444555', 1, 'form', NULL, NULL, 'admin'),
('4230321459729560', 'Nicolas Elleonora', 'indonesia', 1, '1985-08-04', 'gumudasd', '7', '2', 32, 3276, 3275031001, 327503, '73571610399210', 1, 'form', NULL, NULL, 'admin'),
('4236553876807630', 'Aldi Aristy', 'indonesia', 2, '1980-09-22', 'gumudasd', '1', '18', 32, 3276, 3275021005, 327502, '7689483198748', 1, 'form', NULL, NULL, 'admin'),
('4254111574617700', 'Fauzi Pratama', 'indonesia', 2, '1996-04-27', 'gumudasd', '3', '23', 32, 3276, 3275061002, 327506, '84805225066539', 1, 'form', NULL, NULL, 'admin'),
('4258084343805220', 'Joseph Hizrian Oktavianty', 'indonesia', 1, '1982-06-14', 'gumudasd', '5', '19', 32, 3276, 3275031002, 327503, '74237213735575', 1, 'form', NULL, NULL, 'admin'),
('4265545184741510', 'Angel Putri W', 'indonesia', 2, '1984-02-04', 'gumudasd', '23', '1', 32, 3276, 3276081003, 327608, '4271068780982', 1, 'form', NULL, NULL, 'admin'),
('4315591718673410', 'Gmin_mine', 'indonesia', 2, '1993-01-23', 'gumudasd', '7', '29', 32, 3275, 3275051002, 327505, '56904066352757', 1, 'form', NULL, NULL, 'admin'),
('4328185983906830', 'Rifat Yunika', 'indonesia', 1, '1995-12-16', 'gumudasd', '27', '6', 32, 3276, 3276011009, 327601, '57324915513169', 1, 'form', NULL, NULL, 'admin'),
('4340856074018900', 'Annieza Rahayoe', 'indonesia', 1, '1999-10-16', 'gumudasd', '21', '25', 32, 3276, 3276041002, 327604, '26120005055735', 1, 'form', NULL, NULL, 'admin'),
('4348002723855770', 'Sakti Fahdnul Astuti', 'indonesia', 2, '1988-06-04', 'gumudasd', '4', '30', 32, 3276, 3276071004, 327607, '16967572755243', 1, 'form', NULL, NULL, 'admin'),
('4365480120561440', 'Bd_Army', 'indonesia', 1, '1980-01-09', 'gumudasd', '18', '18', 32, 3275, 3275021002, 327502, '14927545559061', 1, 'form', NULL, NULL, 'admin'),
('4381691484063650', 'Adrian Mandarasari', 'indonesia', 1, '1992-09-08', 'gumudasd', '6', '4', 32, 3276, 3276081004, 327608, '82030159676468', 1, 'form', NULL, NULL, 'admin'),
('4407061761097260', 'Lintang Tio', 'indonesia', 2, '1981-03-21', 'gumudasd', '15', '12', 32, 3276, 3276111005, 327611, '63885814527303', 1, 'form', NULL, NULL, 'admin'),
('4407878519411030', 'Aliriza Gibran', 'indonesia', 1, '1995-07-10', 'gumudasd', '30', '18', 32, 3276, 3276051008, 327605, '51894934958775', 1, 'form', NULL, NULL, 'admin'),
('4438507345201690', 'Farqy Kartika', 'indonesia', 1, '1980-04-01', 'gumudasd', '30', '29', 32, 3276, 3276101007, 327610, '29800376714659', 1, 'form', NULL, NULL, 'admin'),
('4444959470614360', 'Givan Admianawidiastuti', 'indonesia', 1, '1997-05-29', 'gumudasd', '25', '17', 32, 3276, 3275061004, 327506, '80622278957020', 1, 'form', NULL, NULL, 'admin'),
('4451530786175500', 'Rianita Amrullah', 'indonesia', 2, '1991-04-19', 'gumudasd', '5', '3', 32, 3276, 3276011009, 327601, '57324915513169', 1, 'form', NULL, NULL, 'admin'),
('4455651821572280', 'Angel Syahrani', 'indonesia', 2, '1982-04-21', 'gumudasd', '8', '30', 32, 3276, 3276081002, 327608, '15819451053412', 1, 'form', NULL, NULL, 'admin'),
('4459940240509090', 'NMrap_NamJoon', 'indonesia', 2, '1992-08-07', 'gumudasd', '15', '16', 32, 3275, 3275091006, 327509, '44803382606578', 1, 'form', NULL, NULL, 'admin'),
('4482889334260590', 'Andhicha Artiryani', 'indonesia', 1, '1989-02-27', 'gumudasd', '28', '16', 32, 3276, 3275091006, 327509, '44803382606578', 1, 'form', NULL, NULL, 'admin'),
('4503926122842750', 'Rico Pandu Rugaya', 'indonesia', 2, '1998-09-12', 'gumudasd', '5', '9', 32, 3276, 3276091004, 327609, '46863113591300', 1, 'form', NULL, NULL, 'admin'),
('4539625661319750', 'Haikal Handoko', 'indonesia', 1, '1994-11-20', 'gumudasd', '2', '7', 32, 3276, 3276061004, 327606, '32496098925699', 1, 'form', NULL, NULL, 'admin'),
('4552309276753280', 'Rifqy Ciptasari', 'indonesia', 1, '1996-11-21', 'gumudasd', '22', '7', 32, 3276, 3276111001, 327611, '7071030079289', 1, 'form', NULL, NULL, 'admin'),
('4559419687370180', 'Riski Mukaffi', 'indonesia', 2, '1993-09-23', 'gumudasd', '27', '24', 32, 3276, 3276091001, 327609, '81976929211278', 1, 'form', NULL, NULL, 'admin'),
('4564802418501740', 'MyJiin', 'indonesia', 2, '1986-02-10', 'gumudasd', '10', '7', 32, 3275, 3275091003, 327509, '85970272063502', 1, 'form', NULL, NULL, 'admin'),
('4586599363340810', 'Alfin Ramsihs', 'indonesia', 1, '1999-05-18', 'gumudasd', '26', '31', 32, 3276, 3276011011, 327601, '60053483102542', 1, 'form', NULL, NULL, 'admin'),
('4588216893617300', 'Ficky Indrayakti', 'indonesia', 2, '1982-02-16', 'gumudasd', '11', '28', 32, 3276, 3275021002, 327502, '14927545559061', 1, 'form', NULL, NULL, 'admin'),
('4604570145779450', 'Tiari Palit', 'indonesia', 2, '1980-09-28', 'gumudasd', '12', '18', 32, 3276, 3275111004, 327511, '80281216614189', 1, 'form', NULL, NULL, 'admin'),
('4616984597538100', 'Karina Balqis', 'indonesia', 1, '1998-01-15', 'gumudasd', '4', '12', 32, 3276, 3276081005, 327608, '49075035604541', 1, 'form', NULL, NULL, 'admin'),
('4626941088279060', 'Artika Annas', 'indonesia', 2, '1994-02-02', 'gumudasd', '30', '28', 32, 3276, 3275031006, 327503, '80518751073302', 1, 'form', NULL, NULL, 'admin'),
('4651567227012960', 'tiara_fratiwi', 'indonesia', 1, '1981-08-19', 'gumudasd', '18', '16', 32, 3276, 3276111003, 327611, '68925146523125', 1, 'form', NULL, NULL, 'admin'),
('4655006190170150', 'Lendy Alika', 'indonesia', 1, '1990-01-11', 'gumudasd', '9', '26', 32, 3276, 3275021002, 327502, '14927545559061', 1, 'form', NULL, NULL, 'admin'),
('4662946797261720', 'Azhar Cansan', 'indonesia', 2, '1982-10-07', 'gumudasd', '8', '11', 32, 3276, 3275081002, 327508, '17778021516594', 1, 'form', NULL, NULL, 'admin'),
('4686689864456470', 'Permata Octarina', 'indonesia', 2, '1983-04-03', 'gumudasd', '26', '23', 32, 3276, 3276071005, 327607, '1053286031805', 1, 'form', NULL, NULL, 'admin'),
('4691626474391910', 'poochcakes', 'indonesia', 2, '1986-04-07', 'gumudasd', '3', '17', 32, 3275, 3275101003, 327510, '26705952415589', 1, 'form', NULL, NULL, 'admin'),
('4693841239528390', 'Hafizh Yenu Dufay', 'indonesia', 2, '1991-10-31', 'gumudasd', '11', '8', 32, 3276, 3275011001, 327501, '8506563511073', 1, 'form', NULL, NULL, 'admin'),
('4695779930490200', 'Mochammad Obara', 'indonesia', 1, '1981-03-04', 'gumudasd', '12', '3', 32, 3276, 3275101005, 327510, '42008686693523', 1, 'form', NULL, NULL, 'admin'),
('4696548516633220', 'SiJhopehop', 'indonesia', 1, '1987-07-24', 'gumudasd', '8', '10', 32, 3275, 3275121003, 327512, '55003413902905', 1, 'form', NULL, NULL, 'admin'),
('4706842540388680', 'Redian Aliriza Sunday', 'indonesia', 1, '1997-12-24', 'gumudasd', '11', '7', 32, 3276, 3275011001, 327501, '8506563511073', 1, 'form', NULL, NULL, 'admin'),
('4715716270309420', 'reycmail', 'indonesia', 1, '1985-11-23', 'gumudasd', '24', '3', 32, 3276, 3276081005, 327608, '49075035604541', 1, 'form', NULL, NULL, 'admin'),
('4807437660190980', 'Revi Ivangkia', 'indonesia', 1, '1987-02-10', 'gumudasd', '26', '24', 32, 3276, 3276051001, 327605, '47182572791534', 1, 'form', NULL, NULL, 'admin'),
('4838119976075060', 'Rutwan Hamdi', 'indonesia', 2, '1998-12-01', 'gumudasd', '8', '2', 32, 3276, 3275081006, 327508, '12840279275210', 1, 'form', NULL, NULL, 'admin'),
('4846050942100220', 'Avicenna Alfin Rahayoe', 'indonesia', 1, '1987-01-05', 'gumudasd', '18', '5', 32, 3276, 3275031003, 327503, '12517637856665', 1, 'form', NULL, NULL, 'admin'),
('4858349150512330', 'Dina Falah', 'indonesia', 1, '1999-09-25', 'gumudasd', '12', '7', 32, 3276, 3276011010, 327601, '72259717282012', 1, 'form', NULL, NULL, 'admin'),
('4863349611728180', 'Dikposa Hilmiansyah', 'indonesia', 2, '1993-04-25', 'gumudasd', '31', '12', 32, 3276, 3275071008, 327507, '2472162161663', 1, 'form', NULL, NULL, 'admin'),
('4915454275441830', 'Alvino Tiara', 'indonesia', 2, '1988-10-28', 'gumudasd', '27', '16', 32, 3276, 3276081005, 327608, '49075035604541', 1, 'form', NULL, NULL, 'admin'),
('4919654946151160', 'Maria Oktavia', 'indonesia', 1, '1980-03-14', 'gumudasd', '26', '28', 32, 3276, 3275041003, 327504, '9492929350502', 1, 'form', NULL, NULL, 'admin'),
('4942811973400370', 'nurbaeti_susanti', 'indonesia', 1, '1983-11-10', 'gumudasd', '15', '24', 32, 3276, 3276071002, 327607, '24174004834491', 1, 'form', NULL, NULL, 'admin'),
('4950153526980560', 'Auzy Isnaini', 'indonesia', 2, '1984-07-15', 'gumudasd', '18', '12', 32, 3276, 3275121004, 327512, '32050268951002', 1, 'form', NULL, NULL, 'admin'),
('4979318399772040', 'mnimoniex', 'indonesia', 2, '1985-08-29', 'gumudasd', '2', '26', 32, 3275, 3275081007, 327508, '53961815966353', 1, 'form', NULL, NULL, 'admin'),
('4982988174112420', 'Jungpock', 'indonesia', 2, '1985-05-15', 'gumudasd', '1', '26', 32, 3275, 3275071003, 327507, '16871024400738', 1, 'form', NULL, NULL, 'admin'),
('4994618460540100', 'Aprilita Aruti', 'indonesia', 1, '1995-03-11', 'gumudasd', '5', '25', 32, 3276, 3275031004, 327503, '47659276940530', 1, 'form', NULL, NULL, 'admin'),
('5018405873015830', 'Daniel Noverlia', 'indonesia', 1, '1982-09-15', 'gumudasd', '7', '5', 32, 3276, 3275061001, 327506, '37955855219545', 1, 'form', NULL, NULL, 'admin'),
('5033844354770320', 'Ari Hermawaty', 'indonesia', 2, '1999-06-13', 'gumudasd', '17', '7', 32, 3276, 3275121003, 327512, '55003413902905', 1, 'form', NULL, NULL, 'admin'),
('5086397275446000', 'Zahra Tobing', 'indonesia', 1, '1988-09-25', 'gumudasd', '14', '5', 32, 3276, 3276071004, 327607, '16967572755243', 1, 'form', NULL, NULL, 'admin'),
('5130665386961080', 'poetsdago14', 'indonesia', 2, '1996-03-28', 'gumudasd', '18', '29', 32, 3276, 3276071003, 327607, '60963965599439', 1, 'form', NULL, NULL, 'admin'),
('5154624129516470', 'Aufa Iqbal', 'indonesia', 1, '2000-03-07', 'gumudasd', '27', '19', 32, 3276, 3276031012, 327603, '98479416417790', 1, 'form', NULL, NULL, 'admin'),
('5164878919268490', 'Fajar Puspitasari', 'indonesia', 1, '1994-05-14', 'gumudasd', '26', '27', 32, 3276, 3276081003, 327608, '4271068780982', 1, 'form', NULL, NULL, 'admin'),
('5207035355221650', 'Gilang Cakra Herlin', 'indonesia', 2, '1994-07-20', 'gumudasd', '15', '3', 32, 3276, 3275091004, 327509, '67896876233462', 1, 'form', NULL, NULL, 'admin'),
('5214989514603990', 'Andrie Siliwangi', 'indonesia', 1, '1988-01-27', 'gumudasd', '8', '6', 32, 3276, 3275111003, 327511, '38604968155119', 1, 'form', NULL, NULL, 'admin'),
('5227219611260810', 'Nurmi Suheryanto', 'indonesia', 2, '1999-12-23', 'gumudasd', '6', '4', 32, 3276, 3276081002, 327608, '15819451053412', 1, 'form', NULL, NULL, 'admin'),
('5270618681456810', 'Park Dae', 'indonesia', 1, '1987-10-20', 'gumudasd', '10', '9', 32, 3275, 3275101002, 327510, '82830344029524', 1, 'form', NULL, NULL, 'admin'),
('5271814451993220', 'Elza Khairani', 'indonesia', 2, '1980-01-04', 'gumudasd', '10', '2', 32, 3276, 3276031003, 327603, '20386796721212', 1, 'form', NULL, NULL, 'admin'),
('5280849040787840', 'milishwan', 'indonesia', 1, '1982-02-08', 'gumudasd', '20', '29', 32, 3276, 3276061001, 327606, '73154204382543', 1, 'form', NULL, NULL, 'admin'),
('5282864966086350', 'Maruto Baskoro', 'indonesia', 2, '1992-09-10', 'gumudasd', '9', '10', 32, 3276, 3276111005, 327611, '63885814527303', 1, 'form', NULL, NULL, 'admin'),
('5285982173816700', 'Anugrah Gilang Putra', 'indonesia', 2, '1988-08-13', 'gumudasd', '31', '3', 32, 3276, 3275051004, 327505, '49549305554254', 1, 'form', NULL, NULL, 'admin'),
('5298504405902350', 'Lukman Wahyuni', 'indonesia', 2, '1992-02-23', 'gumudasd', '31', '19', 32, 3276, 3275091001, 327509, '94532773496081', 1, 'form', NULL, NULL, 'admin'),
('5312010958201240', 'Mubarak Arfan Sapitri', 'indonesia', 2, '1988-02-10', 'gumudasd', '2', '26', 32, 3276, 3276101001, 327610, '36976163002393', 1, 'form', NULL, NULL, 'admin'),
('5317154400653720', 'Safira Admianawidiastuti', 'indonesia', 1, '1987-01-16', 'gumudasd', '7', '7', 32, 3276, 3276031011, 327603, '27548558102350', 1, 'form', NULL, NULL, 'admin'),
('5333759410374950', 'Chandra Alvianto', 'indonesia', 1, '1997-06-24', 'gumudasd', '6', '29', 32, 3276, 3276091003, 327609, '33898096597128', 1, 'form', NULL, NULL, 'admin'),
('5334168944739410', 'Jeremy Alfin Adriarso', 'indonesia', 1, '1985-07-05', 'gumudasd', '10', '26', 32, 3276, 3275071004, 327507, '90477945490639', 1, 'form', NULL, NULL, 'admin'),
('5366643135179570', 'Yutama Mitsuko', 'indonesia', 1, '1998-07-18', 'gumudasd', '22', '26', 32, 3276, 3276091002, 327609, '2607872770585', 1, 'form', NULL, NULL, 'admin'),
('5374134215522450', 'Soo Min', 'indonesia', 1, '2000-02-17', 'gumudasd', '18', '7', 32, 3276, 3276011009, 327601, '57324915513169', 1, 'form', NULL, NULL, 'admin'),
('5391900607667170', 'Fahdnul Anjani', 'indonesia', 1, '1983-11-10', 'gumudasd', '10', '9', 32, 3276, 3276101007, 327610, '29800376714659', 1, 'form', NULL, NULL, 'admin'),
('5398411203486870', 'Nicolas Febrianto', 'indonesia', 2, '1986-06-19', 'gumudasd', '3', '13', 32, 3276, 3275041003, 327504, '9492929350502', 1, 'form', NULL, NULL, 'admin'),
('5400788676867400', 'Lady Syahputra', 'indonesia', 2, '1990-08-22', 'gumudasd', '6', '1', 32, 3276, 3275081001, 327508, '20653944435203', 1, 'form', NULL, NULL, 'admin'),
('5401087603553740', 'Rio Loren', 'indonesia', 2, '1980-06-11', 'gumudasd', '11', '21', 32, 3276, 3275031004, 327503, '47659276940530', 1, 'form', NULL, NULL, 'admin'),
('5467117730231920', 'Widya Amadea Naradhipa', 'indonesia', 1, '1995-10-21', 'gumudasd', '19', '8', 32, 3276, 3276021009, 327602, '40023248259406', 1, 'form', NULL, NULL, 'admin'),
('5489229780474910', 'dxlwrys', 'indonesia', 1, '2000-02-04', 'gumudasd', '7', '19', 32, 3275, 3275031005, 327503, '931542499954', 1, 'form', NULL, NULL, 'admin'),
('5500299923107720', 'Richard Widyawati', 'indonesia', 1, '2000-01-13', 'gumudasd', '17', '6', 32, 3276, 3276111003, 327611, '68925146523125', 1, 'form', NULL, NULL, 'admin'),
('5500966316879040', 'Indah Adisanyoto', 'indonesia', 2, '2000-01-29', 'gumudasd', '25', '30', 32, 3276, 3275051004, 327505, '49549305554254', 1, 'form', NULL, NULL, 'admin'),
('5502013722668250', 'Ferhat Qurniawan', 'indonesia', 1, '1997-05-19', 'gumudasd', '1', '23', 32, 3276, 3275121001, 327512, '28904030106240', 1, 'form', NULL, NULL, 'admin'),
('5518743147230190', 'Mirza Ervya', 'indonesia', 2, '1989-02-14', 'gumudasd', '11', '17', 32, 3276, 3276101004, 327610, '65202096698955', 1, 'form', NULL, NULL, 'admin'),
('5520010135197530', 'Elvin Vernanda', 'indonesia', 2, '1993-06-16', 'gumudasd', '20', '6', 32, 3276, 3275061002, 327506, '84805225066539', 1, 'form', NULL, NULL, 'admin'),
('5523814006043490', 'Derilandry Ridanty', 'indonesia', 2, '1999-12-15', 'gumudasd', '18', '7', 32, 3276, 3275021002, 327502, '14927545559061', 1, 'form', NULL, NULL, 'admin'),
('5529873692277820', 'Aristyo Elleonora', 'indonesia', 1, '1985-03-17', 'gumudasd', '13', '14', 32, 3276, 3275061001, 327506, '37955855219545', 1, 'form', NULL, NULL, 'admin'),
('5536005020823580', 'rusninurkhafifah', 'indonesia', 1, '1982-06-25', 'gumudasd', '2', '7', 32, 3276, 3276101004, 327610, '65202096698955', 1, 'form', NULL, NULL, 'admin'),
('5542342771692090', 'Reynaldi Khasanah', 'indonesia', 1, '1986-11-01', 'gumudasd', '29', '17', 32, 3276, 3275091005, 327509, '63050156189905', 1, 'form', NULL, NULL, 'admin'),
('5570077165148610', 'Muhamad Nurkhasanah', 'indonesia', 1, '1980-06-01', 'gumudasd', '8', '20', 32, 3276, 3276111001, 327611, '7071030079289', 1, 'form', NULL, NULL, 'admin'),
('5593192882970150', 'Sarang_Donghae', 'indonesia', 1, '1994-11-13', 'gumudasd', '4', '14', 32, 3275, 3275111001, 327511, '88316800066201', 1, 'form', NULL, NULL, 'admin'),
('5593836838103200', 'Akbar Erdyaning', 'indonesia', 2, '1993-12-11', 'gumudasd', '18', '9', 32, 3276, 3275011003, 327501, '91764272735574', 1, 'form', NULL, NULL, 'admin'),
('5612356818080060', 'Christian Priyanto', 'indonesia', 2, '1990-10-03', 'gumudasd', '27', '25', 32, 3276, 3276071001, 327607, '73894642725277', 1, 'form', NULL, NULL, 'admin'),
('5621563798890660', 'Putrima Oktaviani', 'indonesia', 1, '1994-12-24', 'gumudasd', '30', '5', 32, 3276, 3276071005, 327607, '1053286031805', 1, 'form', NULL, NULL, 'admin'),
('5644183891011060', 'rahmayantirizki', 'indonesia', 1, '1981-07-13', 'gumudasd', '19', '26', 32, 3276, 3276071005, 327607, '1053286031805', 1, 'form', NULL, NULL, 'admin'),
('5654867479328260', 'Yenu Priatni', 'indonesia', 1, '2000-09-04', 'gumudasd', '15', '2', 32, 3276, 3275021003, 327502, '84926030313753', 1, 'form', NULL, NULL, 'admin'),
('5660363900863530', 'Firdaus Fadillah', 'indonesia', 2, '2000-09-28', 'gumudasd', '7', '28', 32, 3276, 3275081006, 327508, '12840279275210', 1, 'form', NULL, NULL, 'admin'),
('5660862100319420', 'Kenneth Sjukri', 'indonesia', 1, '1988-01-16', 'gumudasd', '6', '18', 32, 3276, 3275041002, 327504, '73978145362620', 1, 'form', NULL, NULL, 'admin'),
('5772069419098820', 'Devicka Kassa', 'indonesia', 1, '1996-10-16', 'gumudasd', '9', '26', 32, 3276, 3276061003, 327606, '2719523212589', 1, 'form', NULL, NULL, 'admin'),
('5782851102830900', 'RoseLife', 'indonesia', 2, '1999-12-18', 'gumudasd', '2', '2', 32, 3276, 3276101003, 327610, '52751460421845', 1, 'form', NULL, NULL, 'admin'),
('5838166034397340', 'Nita Devi', 'indonesia', 1, '1993-01-16', 'gumudasd', '28', '13', 32, 3276, 3276091002, 327609, '2607872770585', 1, 'form', NULL, NULL, 'admin'),
('5876269906312420', 'narafudin', 'indonesia', 1, '1985-10-18', 'gumudasd', '28', '9', 32, 3276, 3276061003, 327606, '2719523212589', 1, 'form', NULL, NULL, 'admin'),
('5889900499907340', 'Miftachul Khairani', 'indonesia', 2, '2000-06-13', 'gumudasd', '2', '11', 32, 3276, 3275091005, 327509, '63050156189905', 1, 'form', NULL, NULL, 'admin'),
('5902024611398460', 'Angrit Atiyasari', 'indonesia', 1, '1989-03-22', 'gumudasd', '30', '6', 32, 3276, 3275041002, 327504, '73978145362620', 1, 'form', NULL, NULL, 'admin'),
('5912622931728280', 'Fariz Mubasyiroh', 'indonesia', 1, '2000-12-27', 'gumudasd', '20', '15', 32, 3276, 3276051003, 327605, '85553562423436', 1, 'form', NULL, NULL, 'admin'),
('5967500508646140', 'Lendy Lesihantika', 'indonesia', 1, '1991-12-10', 'gumudasd', '31', '19', 32, 3276, 3276071002, 327607, '24174004834491', 1, 'form', NULL, NULL, 'admin'),
('6020182480879120', 'Dee Permana', 'indonesia', 1, '1980-09-12', 'gumudasd', '31', '25', 32, 3276, 3276081002, 327608, '15819451053412', 1, 'form', NULL, NULL, 'admin'),
('6025909965133900', 'Derisa Nafila Naenggolan', 'indonesia', 1, '1984-04-14', 'gumudasd', '7', '8', 32, 3276, 3276031012, 327603, '98479416417790', 1, 'form', NULL, NULL, 'admin');
INSERT INTO `relawan` (`nik`, `nama`, `tempat_lahir`, `jk`, `tgl_lahir`, `alamat`, `rt`, `rw`, `provinsi`, `kabupaten`, `kelurahan`, `kecamatan`, `hpwa`, `as_koor`, `source`, `created_at`, `updated_at`, `penginput`) VALUES
('6026869749746390', 'RoosterFairy', 'indonesia', 1, '1984-11-24', 'gumudasd', '31', '2', 32, 3276, 3276101002, 327610, '42146416195302', 1, 'form', NULL, NULL, 'admin'),
('6042316759612900', 'Derilandry Ardina', 'indonesia', 1, '1996-07-26', 'gumudasd', '4', '14', 32, 3276, 3276011006, 327601, '60206763940198', 1, 'form', NULL, NULL, 'admin'),
('6093062301367140', 'kuudill', 'indonesia', 1, '1986-12-01', 'gumudasd', '8', '11', 32, 3276, 3276041002, 327604, '26120005055735', 1, 'form', NULL, NULL, 'admin'),
('6100268239889430', 'Valerie Willyanda', 'indonesia', 2, '1988-10-05', 'gumudasd', '29', '2', 32, 3276, 3275121002, 327512, '46909503656721', 1, 'form', NULL, NULL, 'admin'),
('6112191254340010', 'Sugaa_R', 'indonesia', 2, '1987-04-12', 'gumudasd', '4', '10', 32, 3276, 3276021008, 327602, '39204411882467', 1, 'form', NULL, NULL, 'admin'),
('6121605423068890', 'renadelaa', 'indonesia', 2, '1993-12-25', 'gumudasd', '18', '20', 32, 3276, 3276081003, 327608, '4271068780982', 1, 'form', NULL, NULL, 'admin'),
('6133522967509630', 'Jenifer Raka', 'indonesia', 2, '1980-09-17', 'gumudasd', '16', '29', 32, 3276, 3275061004, 327506, '80622278957020', 1, 'form', NULL, NULL, 'admin'),
('6169696667420150', 'Dwira Ridanty', 'indonesia', 1, '1982-03-22', 'gumudasd', '19', '23', 32, 3276, 3276011008, 327601, '67235587487931', 1, 'form', NULL, NULL, 'admin'),
('6181044311108600', 'Naufal Sabri', 'indonesia', 2, '1981-01-20', 'gumudasd', '13', '25', 32, 3276, 3275111002, 327511, '22576364337341', 1, 'form', NULL, NULL, 'admin'),
('6189548121859580', 'Chaerul Suandhini', 'indonesia', 1, '1999-06-09', 'gumudasd', '28', '16', 32, 3276, 3276071003, 327607, '60963965599439', 1, 'form', NULL, NULL, 'admin'),
('6205528452207560', 'sheerllyannaa', 'indonesia', 2, '1981-05-10', 'gumudasd', '8', '23', 32, 3276, 3276101006, 327610, '40775578796818', 1, 'form', NULL, NULL, 'admin'),
('6225214629487810', 'Cynthia Asriandari', 'indonesia', 2, '1996-08-06', 'gumudasd', '18', '27', 32, 3276, 3276041003, 327604, '67670077344784', 1, 'form', NULL, NULL, 'admin'),
('6298009635963490', 'Lavina Fajriah', 'indonesia', 1, '1998-05-23', 'gumudasd', '2', '26', 32, 3276, 3276031002, 327603, '21639659235121', 1, 'form', NULL, NULL, 'admin'),
('6316734386198650', 'leila_meka', 'indonesia', 1, '1986-04-25', 'gumudasd', '11', '21', 32, 3276, 3276041004, 327604, '33149288223067', 1, 'form', NULL, NULL, 'admin'),
('6320945535064420', 'Reynard Rabani', 'indonesia', 1, '1998-01-11', 'gumudasd', '11', '1', 32, 3276, 3276101004, 327610, '65202096698955', 1, 'form', NULL, NULL, 'admin'),
('6340006588120330', 'Mustofa Khasanah', 'indonesia', 1, '1999-09-10', 'gumudasd', '24', '29', 32, 3276, 3275101005, 327510, '42008686693523', 1, 'form', NULL, NULL, 'admin'),
('6358258874559620', 'Ray Rahayu', 'indonesia', 1, '1995-04-19', 'gumudasd', '21', '20', 32, 3276, 3275081002, 327508, '17778021516594', 1, 'form', NULL, NULL, 'admin'),
('6365537809177150', 'Agus Riahdita', 'indonesia', 2, '1988-07-22', 'gumudasd', '8', '14', 32, 3276, 3276091001, 327609, '81976929211278', 1, 'form', NULL, NULL, 'admin'),
('6387999634202590', 'ladyTurnip', 'indonesia', 2, '1987-01-13', 'gumudasd', '9', '11', 32, 3276, 3276041003, 327604, '67670077344784', 1, 'form', NULL, NULL, 'admin'),
('6389138396154200', 'rnmardiyanaa', 'indonesia', 2, '1997-05-05', 'gumudasd', '11', '29', 32, 3276, 3276091004, 327609, '46863113591300', 1, 'form', NULL, NULL, 'admin'),
('6390744754490290', 'qViVi', 'indonesia', 2, '1995-12-25', 'gumudasd', '4', '12', 32, 3275, 3275101004, 327510, '71690208562451', 1, 'form', NULL, NULL, 'admin'),
('6414286558563910', 'Muthia Lavinta Agtrivia', 'indonesia', 2, '1982-05-03', 'gumudasd', '15', '18', 32, 3276, 3276051004, 327605, '67657511383379', 1, 'form', NULL, NULL, 'admin'),
('6420274805024550', 'Satyawati Larasati', 'indonesia', 1, '1990-03-23', 'gumudasd', '2', '12', 32, 3276, 3275111003, 327511, '38604968155119', 1, 'form', NULL, NULL, 'admin'),
('6424620742483180', 'Defara Keviati', 'indonesia', 2, '1998-09-27', 'gumudasd', '9', '8', 32, 3276, 3275051003, 327505, '41004735781079', 1, 'form', NULL, NULL, 'admin'),
('6428582164057250', 'Joseph Maharani', 'indonesia', 1, '1989-10-28', 'gumudasd', '23', '28', 32, 3276, 3275101003, 327510, '26705952415589', 1, 'form', NULL, NULL, 'admin'),
('6437470338548930', 'Tyas Triashafira', 'indonesia', 1, '1996-01-14', 'gumudasd', '26', '16', 32, 3276, 3276071003, 327607, '60963965599439', 1, 'form', NULL, NULL, 'admin'),
('6442568860951550', 'Syahid Syaibatul Arifah', 'indonesia', 2, '2000-11-09', 'gumudasd', '10', '24', 32, 3276, 3275041004, 327504, '86888261974607', 1, 'form', NULL, NULL, 'admin'),
('6445855171360820', 'Tiffany Fauzi', 'indonesia', 2, '1993-05-06', 'gumudasd', '24', '9', 32, 3276, 3275041005, 327504, '42521540061302', 1, 'form', NULL, NULL, 'admin'),
('6447608034712360', 'Ulfah Pratiwi', 'indonesia', 2, '1984-11-03', 'gumudasd', '29', '3', 32, 3276, 3275061001, 327506, '37955855219545', 1, 'form', NULL, NULL, 'admin'),
('6491685112494630', 'Aswin Rizka Arfianti', 'indonesia', 2, '1997-11-15', 'gumudasd', '6', '21', 32, 3276, 3275121002, 327512, '46909503656721', 1, 'form', NULL, NULL, 'admin'),
('6528964101157960', 'Alfin Rachma', 'indonesia', 1, '1996-02-18', 'gumudasd', '30', '8', 32, 3276, 3275031003, 327503, '12517637856665', 1, 'form', NULL, NULL, 'admin'),
('6543554330037340', 'Widi Sutanti', 'indonesia', 1, '1986-09-10', 'gumudasd', '6', '13', 32, 3276, 3275071003, 327507, '16871024400738', 1, 'form', NULL, NULL, 'admin'),
('6557420980675280', 'Yutama Radja Ramadani', 'indonesia', 2, '1989-09-17', 'gumudasd', '7', '22', 32, 3276, 3276101002, 327610, '42146416195302', 1, 'form', NULL, NULL, 'admin'),
('6584741334996550', 'Fajri Maryanti', 'indonesia', 1, '1983-05-26', 'gumudasd', '14', '6', 32, 3276, 3275101003, 327510, '26705952415589', 1, 'form', NULL, NULL, 'admin'),
('6594227784534710', 'Arinda Destrya', 'indonesia', 2, '1991-11-11', 'gumudasd', '23', '19', 32, 3276, 3276021008, 327602, '39204411882467', 1, 'form', NULL, NULL, 'admin'),
('6594465443453560', 'Young Mi', 'indonesia', 1, '1985-03-17', 'gumudasd', '25', '30', 32, 3276, 3276031003, 327603, '20386796721212', 1, 'form', NULL, NULL, 'admin'),
('6598453007326180', 'Dikposa Hasni', 'indonesia', 1, '1994-08-01', 'gumudasd', '2', '4', 32, 3276, 3275061004, 327506, '80622278957020', 1, 'form', NULL, NULL, 'admin'),
('6611533091599660', 'Wiwied Irwansyah', 'indonesia', 2, '1989-08-20', 'gumudasd', '23', '5', 32, 3276, 3276061005, 327606, '52485256423878', 1, 'form', NULL, NULL, 'admin'),
('6611860159455090', 'baefather', 'indonesia', 2, '1993-06-14', 'gumudasd', '11', '31', 32, 3275, 3275011003, 327501, '91764272735574', 1, 'form', NULL, NULL, 'admin'),
('6626514617058490', 'ttaegqukiey', 'indonesia', 2, '1982-09-20', 'gumudasd', '21', '3', 32, 3276, 3276021011, 327602, '43225814557888', 1, 'form', NULL, NULL, 'admin'),
('6660040996862660', 'SuliHye_', 'indonesia', 2, '1997-07-05', 'gumudasd', '18', '11', 32, 3276, 3276021009, 327602, '40023248259406', 1, 'form', NULL, NULL, 'admin'),
('6674090340249030', 'Myung', 'indonesia', 1, '1998-07-07', 'gumudasd', '14', '13', 32, 3275, 3275091004, 327509, '67896876233462', 1, 'form', NULL, NULL, 'admin'),
('6685637774894560', 'Andriawan Utami', 'indonesia', 2, '1989-02-23', 'gumudasd', '22', '23', 32, 3276, 3275091003, 327509, '85970272063502', 1, 'form', NULL, NULL, 'admin'),
('6690777815332540', 'Singgih Yasin', 'indonesia', 1, '1992-05-28', 'gumudasd', '23', '2', 32, 3276, 3276111007, 327611, '691209492007', 1, 'form', NULL, NULL, 'admin'),
('6699407160301660', 'Fauzan Bayu Sulistiyo', 'indonesia', 2, '1983-01-09', 'gumudasd', '30', '6', 32, 3276, 3275031006, 327503, '80518751073302', 1, 'form', NULL, NULL, 'admin'),
('6705610119972920', 'Hana Oktaviaman', 'indonesia', 2, '1990-12-21', 'gumudasd', '2', '14', 32, 3276, 3276051004, 327605, '67657511383379', 1, 'form', NULL, NULL, 'admin'),
('6709108736666650', 'Rezky Chairinnisa', 'indonesia', 2, '1989-02-06', 'gumudasd', '2', '13', 32, 3276, 3275041001, 327504, '20316506209171', 1, 'form', NULL, NULL, 'admin'),
('6746997650960270', 'Rutwan Umam', 'indonesia', 2, '1991-07-08', 'gumudasd', '21', '17', 32, 3276, 3276101002, 327610, '42146416195302', 1, 'form', NULL, NULL, 'admin'),
('6755231503091810', 'fffluefiyon', 'indonesia', 2, '1985-10-16', 'gumudasd', '7', '12', 32, 3275, 3275041002, 327504, '73978145362620', 1, 'form', NULL, NULL, 'admin'),
('6786037886203360', 'Chaerul Reksa Ridho', 'indonesia', 2, '1987-06-07', 'gumudasd', '10', '2', 32, 3276, 3275041003, 327504, '9492929350502', 1, 'form', NULL, NULL, 'admin'),
('6811893357643040', 'Lady Andrawida', 'indonesia', 2, '1997-02-04', 'gumudasd', '25', '2', 32, 3276, 3276081003, 327608, '4271068780982', 1, 'form', NULL, NULL, 'admin'),
('6812443147768520', 'Irlan Asriandari', 'indonesia', 1, '1991-08-25', 'gumudasd', '21', '20', 32, 3276, 3276021011, 327602, '43225814557888', 1, 'form', NULL, NULL, 'admin'),
('6814648198460690', 'Hudzaifah Octaviana', 'indonesia', 1, '1983-11-14', 'gumudasd', '16', '11', 32, 3276, 3275081003, 327508, '43219973164060', 1, 'form', NULL, NULL, 'admin'),
('6832429060018470', 'Herdaru Apriando', 'indonesia', 2, '1995-12-28', 'gumudasd', '12', '27', 32, 3276, 3275071003, 327507, '16871024400738', 1, 'form', NULL, NULL, 'admin'),
('6846501549406390', 'Yudha Anjani', 'indonesia', 1, '1989-05-02', 'gumudasd', '28', '8', 32, 3276, 3275031006, 327503, '80518751073302', 1, 'form', NULL, NULL, 'admin'),
('6878476207345210', 'Una Listyani', 'indonesia', 2, '1991-07-08', 'gumudasd', '25', '22', 32, 3276, 3276011009, 327601, '57324915513169', 1, 'form', NULL, NULL, 'admin'),
('6892387239890010', 'Hizrian Habiba', 'indonesia', 1, '1998-12-27', 'gumudasd', '17', '5', 32, 3276, 3275031002, 327503, '74237213735575', 1, 'form', NULL, NULL, 'admin'),
('6920601090908750', 'Min Joon', 'indonesia', 2, '1981-09-14', 'gumudasd', '26', '31', 32, 3275, 3275081006, 327508, '12840279275210', 1, 'form', NULL, NULL, 'admin'),
('6938133796822400', 'Fiani Farandy', 'indonesia', 2, '1997-06-14', 'gumudasd', '16', '10', 32, 3276, 3276031001, 327603, '308415796259', 1, 'form', NULL, NULL, 'admin'),
('6946245274295910', 'Saliha Aristy', 'indonesia', 2, '1981-12-10', 'gumudasd', '6', '16', 32, 3276, 3275041004, 327504, '86888261974607', 1, 'form', NULL, NULL, 'admin'),
('6980929143286170', 'Pandu Sali', 'indonesia', 2, '1985-09-21', 'gumudasd', '11', '27', 32, 3276, 3275011003, 327501, '91764272735574', 1, 'form', NULL, NULL, 'admin'),
('6983846895012980', 'Soon-Bok', 'indonesia', 1, '2000-11-26', 'gumudasd', '14', '24', 32, 3276, 3276011011, 327601, '60053483102542', 1, 'form', NULL, NULL, 'admin'),
('6988462555939820', 'Syifa Oktavia', 'indonesia', 1, '1986-08-12', 'gumudasd', '2', '19', 32, 3276, 3276021007, 327602, '92788084727427', 1, 'form', NULL, NULL, 'admin'),
('7006657532550740', 'Jeremy Syaraswati', 'indonesia', 2, '1999-11-16', 'gumudasd', '16', '10', 32, 3276, 3275091002, 327509, '93824193249804', 1, 'form', NULL, NULL, 'admin'),
('7065603426330860', 'mariaeansa', 'indonesia', 2, '1998-07-15', 'gumudasd', '12', '8', 32, 3276, 3276051004, 327605, '67657511383379', 1, 'form', NULL, NULL, 'admin'),
('7072152971580810', 'Da Du', 'indonesia', 1, '1983-07-08', 'gumudasd', '1', '31', 32, 3275, 3275031002, 327503, '74237213735575', 1, 'form', NULL, NULL, 'admin'),
('7098529441854630', 'So Young', 'indonesia', 1, '1994-01-25', 'gumudasd', '30', '23', 32, 3276, 3276011006, 327601, '60206763940198', 1, 'form', NULL, NULL, 'admin'),
('7128539611728480', 'FuuIrene`', 'indonesia', 1, '1982-02-04', 'gumudasd', '18', '6', 32, 3275, 3275041003, 327504, '9492929350502', 1, 'form', NULL, NULL, 'admin'),
('7144055363905340', 'Yenu Satrio', 'indonesia', 1, '1983-12-29', 'gumudasd', '10', '31', 32, 3276, 3275021003, 327502, '84926030313753', 1, 'form', NULL, NULL, 'admin'),
('7147237002180590', 'Yutama Bony Octarina', 'indonesia', 1, '1993-08-05', 'gumudasd', '20', '15', 32, 3276, 3276011010, 327601, '72259717282012', 1, 'form', NULL, NULL, 'admin'),
('7152706563353270', 'Wildan Tabriiz', 'indonesia', 2, '1997-09-04', 'gumudasd', '10', '22', 32, 3276, 3276041002, 327604, '26120005055735', 1, 'form', NULL, NULL, 'admin'),
('7155532406037530', 'Adi Ressy Afini', 'indonesia', 2, '1991-11-26', 'gumudasd', '19', '6', 32, 3276, 3275031003, 327503, '12517637856665', 1, 'form', NULL, NULL, 'admin'),
('7163407676705450', 'Young-Jae', 'indonesia', 1, '1991-11-17', 'gumudasd', '17', '11', 32, 3276, 3276031010, 327603, '35555632444555', 1, 'form', NULL, NULL, 'admin'),
('7209312703481020', 'Arie Anisa', 'indonesia', 2, '1983-05-12', 'gumudasd', '17', '25', 32, 3276, 3275011002, 327501, '64067093368307', 1, 'form', NULL, NULL, 'admin'),
('7239729769963770', 'rofiqotula', 'indonesia', 2, '1990-07-29', 'gumudasd', '26', '4', 32, 3276, 3276101001, 327610, '36976163002393', 1, 'form', NULL, NULL, 'admin'),
('7244625639867210', 'Lukman Rompas', 'indonesia', 2, '1983-08-01', 'gumudasd', '6', '29', 32, 3276, 3275011004, 327501, '8246556510673', 1, 'form', NULL, NULL, 'admin'),
('7252493026623480', 'Kayraa Andriana', 'indonesia', 2, '1995-04-29', 'gumudasd', '19', '6', 32, 3276, 3276051008, 327605, '51894934958775', 1, 'form', NULL, NULL, 'admin'),
('7253158505839560', 'Ulfah Hafizh', 'indonesia', 2, '1985-08-29', 'gumudasd', '23', '19', 32, 3276, 3276061001, 327606, '73154204382543', 1, 'form', NULL, NULL, 'admin'),
('7286441841677810', 'Arrivaldi Farizi', 'indonesia', 1, '1993-10-14', 'gumudasd', '6', '30', 32, 3276, 3275011001, 327501, '8506563511073', 1, 'form', NULL, NULL, 'admin'),
('7303889774654220', 'Andriawan Chaerunnisa', 'indonesia', 2, '1990-10-25', 'gumudasd', '23', '11', 32, 3276, 3275021004, 327502, '31708971723989', 1, 'form', NULL, NULL, 'admin'),
('7339426416421940', 'Yusnizar Hayati', 'indonesia', 1, '1990-12-14', 'gumudasd', '11', '29', 32, 3276, 3276051001, 327605, '47182572791534', 1, 'form', NULL, NULL, 'admin'),
('7386665946880560', 'Anugrah A', 'indonesia', 2, '1986-02-06', 'gumudasd', '12', '25', 32, 3276, 3275051002, 327505, '56904066352757', 1, 'form', NULL, NULL, 'admin'),
('7401768853723180', 'kswjfue', 'indonesia', 1, '1991-12-28', 'gumudasd', '11', '12', 32, 3275, 3275071004, 327507, '90477945490639', 1, 'form', NULL, NULL, 'admin'),
('7449231277944860', 'Taufik Wirawan', 'indonesia', 1, '1989-01-11', 'gumudasd', '6', '14', 32, 3276, 3275091005, 327509, '63050156189905', 1, 'form', NULL, NULL, 'admin'),
('7459462363380290', 'nitahura', 'indonesia', 2, '1989-07-03', 'gumudasd', '19', '3', 32, 3276, 3276071001, 327607, '73894642725277', 1, 'form', NULL, NULL, 'admin'),
('7461627848288600', 'Agus Vernanda', 'indonesia', 2, '1996-11-19', 'gumudasd', '23', '30', 32, 3276, 3275121004, 327512, '32050268951002', 1, 'form', NULL, NULL, 'admin'),
('7474406460931530', 'puspasaridwi', 'indonesia', 1, '1992-07-27', 'gumudasd', '30', '24', 32, 3276, 3276071004, 327607, '16967572755243', 1, 'form', NULL, NULL, 'admin'),
('7479669644210680', 'Mustika Luthfia Fiona', 'indonesia', 2, '1997-05-16', 'gumudasd', '24', '15', 32, 3276, 3276061005, 327606, '52485256423878', 1, 'form', NULL, NULL, 'admin'),
('7519705493670370', 'Marvel Octarina', 'indonesia', 1, '1984-06-26', 'gumudasd', '8', '11', 32, 3276, 3275071007, 327507, '49489360863721', 1, 'form', NULL, NULL, 'admin'),
('7557013947618690', 'Arfan Handoko', 'indonesia', 2, '1981-07-18', 'gumudasd', '14', '14', 32, 3276, 3276031010, 327603, '35555632444555', 1, 'form', NULL, NULL, 'admin'),
('7579674871760300', 'Soo Ah', 'indonesia', 2, '1991-02-17', 'gumudasd', '11', '10', 32, 3276, 3276011007, 327601, '11436793211722', 1, 'form', NULL, NULL, 'admin'),
('7580252744848530', 'Yanti Bayhacki', 'indonesia', 1, '1984-05-14', 'gumudasd', '2', '30', 32, 3276, 3276071002, 327607, '24174004834491', 1, 'form', NULL, NULL, 'admin'),
('7592736856033730', 'ninanuryanah', 'indonesia', 2, '1987-10-27', 'gumudasd', '22', '3', 32, 3276, 3276061005, 327606, '52485256423878', 1, 'form', NULL, NULL, 'admin'),
('7598101812628160', 'Tria Satyawati Prabowo', 'indonesia', 1, '1986-03-01', 'gumudasd', '3', '12', 32, 3276, 3276051008, 327605, '51894934958775', 1, 'form', NULL, NULL, 'admin'),
('7628199508680530', 'Ariyadi Pratama Azalia', 'indonesia', 1, '1980-10-01', 'gumudasd', '28', '18', 32, 3276, 3276031001, 327603, '308415796259', 1, 'form', NULL, NULL, 'admin'),
('7628713202080980', 'Adelia Feby Halida', 'indonesia', 1, '1995-02-05', 'gumudasd', '7', '6', 32, 3276, 3276041003, 327604, '67670077344784', 1, 'form', NULL, NULL, 'admin'),
('7646287323341500', 'hyojwun', 'indonesia', 2, '1993-05-21', 'gumudasd', '11', '2', 32, 3275, 3275061002, 327506, '84805225066539', 1, 'form', NULL, NULL, 'admin'),
('7653901024266760', 'Marini Maretta', 'indonesia', 1, '1997-09-08', 'gumudasd', '11', '31', 32, 3276, 3276011006, 327601, '60206763940198', 1, 'form', NULL, NULL, 'admin'),
('7657882193328060', 'Finkha Rais', 'indonesia', 2, '2000-12-23', 'gumudasd', '19', '8', 32, 3276, 3276031001, 327603, '308415796259', 1, 'form', NULL, NULL, 'admin'),
('7680904402602260', 'Ulfi Mukaffi', 'indonesia', 1, '1982-06-02', 'gumudasd', '2', '7', 32, 3276, 3275061003, 327506, '53187987827601', 1, 'form', NULL, NULL, 'admin'),
('7682632900141470', 'Aristyo Virgina', 'indonesia', 1, '1991-10-16', 'gumudasd', '9', '29', 32, 3276, 3275061003, 327506, '53187987827601', 1, 'form', NULL, NULL, 'admin'),
('7686789128796140', 'Aprian Rugaya', 'indonesia', 1, '1981-02-26', 'gumudasd', '18', '6', 32, 3276, 3275021001, 327502, '91643196664822', 1, 'form', NULL, NULL, 'admin'),
('7688380528635520', 'rizal7476', 'indonesia', 2, '1987-06-26', 'gumudasd', '27', '20', 32, 3276, 3276091002, 327609, '2607872770585', 1, 'form', NULL, NULL, 'admin'),
('7694813073008780', 'maydinamey', 'indonesia', 1, '1996-03-20', 'gumudasd', '10', '17', 32, 3276, 3276051008, 327605, '51894934958775', 1, 'form', NULL, NULL, 'admin'),
('7699978362073600', 'Aliriza Selenia', 'indonesia', 2, '1983-07-23', 'gumudasd', '4', '22', 32, 3276, 3275081003, 327508, '43219973164060', 1, 'form', NULL, NULL, 'admin'),
('7722362167032920', 'Fahlian Fitriyah', 'indonesia', 1, '1987-07-08', 'gumudasd', '25', '8', 32, 3276, 3276111003, 327611, '68925146523125', 1, 'form', NULL, NULL, 'admin'),
('7746864291640740', 'Jeom Bon-Hwa', 'indonesia', 1, '1983-03-27', 'gumudasd', '27', '8', 32, 3275, 3275061003, 327506, '53187987827601', 1, 'form', NULL, NULL, 'admin'),
('7750020893903310', 'Rahardianto Julius Hasan', 'indonesia', 2, '1988-05-11', 'gumudasd', '15', '14', 32, 3276, 3276021009, 327602, '40023248259406', 1, 'form', NULL, NULL, 'admin'),
('7757704213803150', 'Anas Mawarni', 'indonesia', 1, '2000-10-03', 'gumudasd', '6', '7', 32, 3276, 3275091006, 327509, '44803382606578', 1, 'form', NULL, NULL, 'admin'),
('7759181964068990', 'scenervyy', 'indonesia', 2, '1987-11-16', 'gumudasd', '18', '6', 32, 3275, 3275111002, 327511, '22576364337341', 1, 'form', NULL, NULL, 'admin'),
('7764607700938920', 'Juno Raka', 'indonesia', 1, '1993-12-01', 'gumudasd', '26', '28', 32, 3276, 3275091003, 327509, '85970272063502', 1, 'form', NULL, NULL, 'admin'),
('7764663320109570', 'Tyas Nurfitria', 'indonesia', 1, '1984-10-03', 'gumudasd', '28', '24', 32, 3276, 3276101003, 327610, '52751460421845', 1, 'form', NULL, NULL, 'admin'),
('7792769650717680', 'Caryne Satrio', 'indonesia', 2, '1987-02-03', 'gumudasd', '28', '21', 32, 3276, 3276051001, 327605, '47182572791534', 1, 'form', NULL, NULL, 'admin'),
('7795983037903840', 'Alrendy Sobirin', 'indonesia', 1, '1993-02-20', 'gumudasd', '17', '5', 32, 3276, 3275051004, 327505, '49549305554254', 1, 'form', NULL, NULL, 'admin'),
('7823304152794160', 'Nathasya Tika', 'indonesia', 2, '1994-01-04', 'gumudasd', '7', '26', 32, 3276, 3276021007, 327602, '92788084727427', 1, 'form', NULL, NULL, 'admin'),
('7852265144629680', 'Christian Ramadhani', 'indonesia', 2, '1998-12-07', 'gumudasd', '30', '10', 32, 3276, 3275081007, 327508, '53961815966353', 1, 'form', NULL, NULL, 'admin'),
('7852606941389790', 'Anas Octaviana', 'indonesia', 2, '1982-11-11', 'gumudasd', '6', '10', 32, 3276, 3275051002, 327505, '56904066352757', 1, 'form', NULL, NULL, 'admin'),
('7866446937636570', 'Arrivaldi Annas', 'indonesia', 2, '1992-03-19', 'gumudasd', '22', '2', 32, 3276, 3275011001, 327501, '8506563511073', 1, 'form', NULL, NULL, 'admin'),
('7879997978585800', 'wobblybae', 'indonesia', 1, '1997-07-23', 'gumudasd', '15', '16', 32, 3276, 3276021012, 327602, '71983054932921', 1, 'form', NULL, NULL, 'admin'),
('7894375051511360', 'Ekka Kevin', 'indonesia', 1, '1989-11-11', 'gumudasd', '24', '23', 32, 3276, 3275101004, 327510, '71690208562451', 1, 'form', NULL, NULL, 'admin'),
('7908050314538240', 'Reynard Farida', 'indonesia', 1, '1987-04-15', 'gumudasd', '16', '8', 32, 3276, 3275021002, 327502, '14927545559061', 1, 'form', NULL, NULL, 'admin'),
('7948053053075490', 'Deristya Brian', 'indonesia', 2, '1994-05-02', 'gumudasd', '5', '27', 32, 3276, 3275101004, 327510, '71690208562451', 1, 'form', NULL, NULL, 'admin'),
('7948551228700160', 'Mariana Amalina', 'indonesia', 1, '1988-02-04', 'gumudasd', '27', '15', 32, 3276, 3275111004, 327511, '80281216614189', 1, 'form', NULL, NULL, 'admin'),
('7953277943048910', 'Muhamad Varensia', 'indonesia', 2, '1982-03-10', 'gumudasd', '16', '24', 32, 3276, 3275081007, 327508, '53961815966353', 1, 'form', NULL, NULL, 'admin'),
('7980034843627820', 'Anton Larascaesara', 'indonesia', 2, '2000-10-14', 'gumudasd', '14', '21', 32, 3276, 3275071007, 327507, '49489360863721', 1, 'form', NULL, NULL, 'admin'),
('8061716814834300', 'Shelly Candraditya', 'indonesia', 1, '1990-03-08', 'gumudasd', '19', '28', 32, 3276, 3275121004, 327512, '32050268951002', 1, 'form', NULL, NULL, 'admin'),
('8133118515018530', 'Rizka Gerard', 'indonesia', 1, '2000-04-10', 'gumudasd', '29', '28', 32, 3276, 3276031003, 327603, '20386796721212', 1, 'form', NULL, NULL, 'admin'),
('8178099659040690', 'nggih Utami', 'indonesia', 1, '1984-04-30', 'gumudasd', '14', '28', 32, 3276, 3276081005, 327608, '49075035604541', 1, 'form', NULL, NULL, 'admin'),
('8183082157398620', 'Seo Yeon', 'indonesia', 1, '1980-01-10', 'gumudasd', '21', '8', 32, 3275, 3275111003, 327511, '38604968155119', 1, 'form', NULL, NULL, 'admin'),
('8193456114639130', 'Amadea Irianto', 'indonesia', 1, '1997-08-17', 'gumudasd', '26', '21', 32, 3276, 3276071004, 327607, '16967572755243', 1, 'form', NULL, NULL, 'admin'),
('8199007479660170', 'Juno Umam', 'indonesia', 1, '2000-08-25', 'gumudasd', '11', '8', 32, 3276, 3275081006, 327508, '12840279275210', 1, 'form', NULL, NULL, 'admin'),
('8249357741988950', 'Syahrul Aisi', 'indonesia', 1, '1983-06-10', 'gumudasd', '31', '16', 32, 3276, 3275051003, 327505, '41004735781079', 1, 'form', NULL, NULL, 'admin'),
('8285642949239420', 'Humam Gilang Idrus', 'indonesia', 2, '1987-04-03', 'gumudasd', '25', '28', 32, 3276, 3276111001, 327611, '7071030079289', 1, 'form', NULL, NULL, 'admin'),
('8293155536852740', 'Abdullah Lalo', 'indonesia', 2, '1985-06-17', 'gumudasd', '28', '4', 32, 3276, 3276101006, 327610, '40775578796818', 1, 'form', NULL, NULL, 'admin'),
('8297972071393460', 'Rangga Fachria', 'indonesia', 2, '1992-12-07', 'gumudasd', '2', '9', 32, 3276, 3275031004, 327503, '47659276940530', 1, 'form', NULL, NULL, 'admin'),
('8334430242917240', 'Surya Rosmalia', 'indonesia', 1, '1998-03-31', 'gumudasd', '8', '11', 32, 3276, 3275071004, 327507, '90477945490639', 1, 'form', NULL, NULL, 'admin'),
('8413373432670360', 'Larasati Joan', 'indonesia', 2, '1996-06-26', 'gumudasd', '31', '6', 32, 3276, 3275121002, 327512, '46909503656721', 1, 'form', NULL, NULL, 'admin'),
('8425872971322290', 'Nabila Ariana', 'indonesia', 1, '1981-05-16', 'gumudasd', '16', '28', 32, 3276, 3276031003, 327603, '20386796721212', 1, 'form', NULL, NULL, 'admin'),
('8426146030931880', 'Sigit Hapsari', 'indonesia', 1, '1986-09-06', 'gumudasd', '15', '21', 32, 3276, 3275041003, 327504, '9492929350502', 1, 'form', NULL, NULL, 'admin'),
('8479010750575880', 'Achmad Jaya', 'indonesia', 1, '1998-09-06', 'gumudasd', '1', '15', 32, 3276, 3276091002, 327609, '2607872770585', 1, 'form', NULL, NULL, 'admin'),
('8482882059296040', 'Teddo Carolina', 'indonesia', 1, '1984-05-23', 'gumudasd', '5', '17', 32, 3276, 3275041001, 327504, '20316506209171', 1, 'form', NULL, NULL, 'admin'),
('8530783084640740', 'Zahra Annisa', 'indonesia', 1, '1998-10-18', 'gumudasd', '29', '20', 32, 3276, 3276021012, 327602, '71983054932921', 1, 'form', NULL, NULL, 'admin'),
('8535579185781480', 'ratu_hotpick', 'indonesia', 1, '2000-12-24', 'gumudasd', '3', '30', 32, 3276, 3276081001, 327608, '48933920783596', 1, 'form', NULL, NULL, 'admin'),
('8536432655165440', 'Man-Young', 'indonesia', 1, '1982-04-20', 'gumudasd', '30', '27', 32, 3275, 3275081003, 327508, '43219973164060', 1, 'form', NULL, NULL, 'admin'),
('8555245119746010', 'Axel Lesihantika', 'indonesia', 1, '1986-04-09', 'gumudasd', '22', '16', 32, 3276, 3276101005, 327610, '18464572668425', 1, 'form', NULL, NULL, 'admin'),
('8597723470673820', 'Hizkia Ibidemu', 'indonesia', 2, '1989-01-31', 'gumudasd', '17', '30', 32, 3276, 3275101002, 327510, '82830344029524', 1, 'form', NULL, NULL, 'admin'),
('8609227707376390', 'Aisyah Lalo', 'indonesia', 1, '1989-12-12', 'gumudasd', '26', '19', 32, 3276, 3276031010, 327603, '35555632444555', 1, 'form', NULL, NULL, 'admin'),
('8642852374413540', 'Bayu Mediarrahman', 'indonesia', 1, '1982-11-09', 'gumudasd', '9', '28', 32, 3276, 3276061005, 327606, '52485256423878', 1, 'form', NULL, NULL, 'admin'),
('8655697472799790', 'hwningkai', 'indonesia', 1, '1994-04-06', 'gumudasd', '25', '30', 32, 3275, 3275061001, 327506, '37955855219545', 1, 'form', NULL, NULL, 'admin'),
('8663982972165070', 'Farqy Widyatmo', 'indonesia', 1, '1980-12-12', 'gumudasd', '30', '29', 32, 3276, 3275041005, 327504, '42521540061302', 1, 'form', NULL, NULL, 'admin'),
('8671484958615960', 'Shifa Faradhia Rozi', 'indonesia', 1, '1982-01-11', 'gumudasd', '6', '4', 32, 3276, 3276021012, 327602, '71983054932921', 1, 'form', NULL, NULL, 'admin'),
('8678962117665460', 'nieena100219', 'indonesia', 2, '1997-05-24', 'gumudasd', '28', '21', 32, 3276, 3276061004, 327606, '32496098925699', 1, 'form', NULL, NULL, 'admin'),
('8695125775078680', 'Dessy Monica', 'indonesia', 2, '1995-01-13', 'gumudasd', '17', '13', 32, 3276, 3275101004, 327510, '71690208562451', 1, 'form', NULL, NULL, 'admin'),
('8716582093891800', 'Bony Permana', 'indonesia', 1, '1980-09-15', 'gumudasd', '10', '9', 32, 3276, 3275021003, 327502, '84926030313753', 1, 'form', NULL, NULL, 'admin'),
('8742411803475700', 'Yanti Lesihantika', 'indonesia', 2, '1993-12-16', 'gumudasd', '12', '25', 32, 3276, 3276101001, 327610, '36976163002393', 1, 'form', NULL, NULL, 'admin'),
('8747131854254520', 'Axel Bryan Fachrully', 'indonesia', 1, '1997-01-10', 'gumudasd', '5', '20', 32, 3276, 3276091001, 327609, '81976929211278', 1, 'form', NULL, NULL, 'admin'),
('8751855201254630', 'Bintang Chaerunnisa', 'indonesia', 1, '1991-01-15', 'gumudasd', '10', '7', 32, 3276, 3275021004, 327502, '31708971723989', 1, 'form', NULL, NULL, 'admin'),
('8768167432223670', 'Demi Tiara', 'indonesia', 1, '1987-04-01', 'gumudasd', '24', '15', 32, 3276, 3275071007, 327507, '49489360863721', 1, 'form', NULL, NULL, 'admin'),
('8782840134402430', 'Ranea Aswati', 'indonesia', 2, '1985-07-10', 'gumudasd', '15', '20', 32, 3276, 3276061001, 327606, '73154204382543', 1, 'form', NULL, NULL, 'admin'),
('8786116885705150', 'Nabila Anggraini', 'indonesia', 2, '1981-03-30', 'gumudasd', '25', '20', 32, 3276, 3275111002, 327511, '22576364337341', 1, 'form', NULL, NULL, 'admin'),
('8797892271664240', 'MyBangtan', 'indonesia', 1, '1990-06-10', 'gumudasd', '3', '1', 32, 3275, 3275091002, 327509, '93824193249804', 1, 'form', NULL, NULL, 'admin'),
('8858609160661930', 'sofiamaulidas', 'indonesia', 1, '1986-12-11', 'gumudasd', '13', '30', 32, 3276, 3276101007, 327610, '29800376714659', 1, 'form', NULL, NULL, 'admin'),
('8944774408996520', 'Ong Shik', 'indonesia', 1, '1982-01-08', 'gumudasd', '11', '13', 32, 3275, 3275101001, 327510, '17329713980919', 1, 'form', NULL, NULL, 'admin'),
('8953830446658510', 'Rheza Ekka Balqis', 'indonesia', 2, '1981-06-11', 'gumudasd', '8', '20', 32, 3276, 3275031001, 327503, '73571610399210', 1, 'form', NULL, NULL, 'admin'),
('8973721736163950', 'Zulfi Satria', 'indonesia', 1, '1993-11-09', 'gumudasd', '12', '4', 32, 3276, 3276011007, 327601, '11436793211722', 1, 'form', NULL, NULL, 'admin'),
('8983275033020610', 'Hardianti Wibisono', 'indonesia', 2, '1987-03-16', 'gumudasd', '12', '15', 32, 3276, 3276071002, 327607, '24174004834491', 1, 'form', NULL, NULL, 'admin'),
('9009620671858820', 'Pratama Latifani', 'indonesia', 1, '2000-01-12', 'gumudasd', '18', '2', 32, 3276, 3276061001, 327606, '73154204382543', 1, 'form', NULL, NULL, 'admin'),
('9013715169625520', 'glowcakes', 'indonesia', 2, '1991-07-22', 'gumudasd', '2', '26', 32, 3275, 3275051001, 327505, '95768907279517', 1, 'form', NULL, NULL, 'admin'),
('9015380251573080', 'Aufa Mario Ramadhani', 'indonesia', 2, '1994-12-08', 'gumudasd', '29', '13', 32, 3276, 3275081007, 327508, '53961815966353', 1, 'form', NULL, NULL, 'admin'),
('9018988759258450', 'Jung_Kookq', 'indonesia', 2, '1999-02-24', 'gumudasd', '16', '3', 32, 3275, 3275061004, 327506, '80622278957020', 1, 'form', NULL, NULL, 'admin'),
('9028532597744730', 'Seo Yoon', 'indonesia', 1, '1998-05-23', 'gumudasd', '10', '4', 32, 3275, 3275111004, 327511, '80281216614189', 1, 'form', NULL, NULL, 'admin'),
('9040604527945210', 'Redian Alim', 'indonesia', 1, '1984-05-13', 'gumudasd', '26', '21', 32, 3276, 3276031011, 327603, '27548558102350', 1, 'form', NULL, NULL, 'admin'),
('9055155874317980', 'Nauval Maharani', 'indonesia', 1, '1998-03-30', 'gumudasd', '15', '31', 32, 3276, 3276111005, 327611, '63885814527303', 1, 'form', NULL, NULL, 'admin'),
('9056514981109680', 'Dela Franclin', 'indonesia', 2, '1987-03-18', 'gumudasd', '25', '3', 32, 3276, 3276071001, 327607, '73894642725277', 1, 'form', NULL, NULL, 'admin'),
('9068023084027660', 'Fadhlir Iqbal', 'indonesia', 1, '1983-02-21', 'gumudasd', '8', '21', 32, 3276, 3276111006, 327611, '26266835272777', 1, 'form', NULL, NULL, 'admin'),
('9072725641787670', 'Arifah Sharifa', 'indonesia', 1, '2000-08-22', 'gumudasd', '6', '19', 32, 3276, 3276041001, 327604, '67511419540773', 1, 'form', NULL, NULL, 'admin'),
('9089988227385790', 'Emir Chairinnisa', 'indonesia', 2, '1997-03-05', 'gumudasd', '3', '31', 32, 3276, 3276041001, 327604, '67511419540773', 1, 'form', NULL, NULL, 'admin'),
('9091674314104830', 'Shelly Hanifa Dayanti', 'indonesia', 1, '1982-02-13', 'gumudasd', '10', '25', 32, 3276, 3275091002, 327509, '93824193249804', 1, 'form', NULL, NULL, 'admin'),
('9146525199821350', 'Soo Jin', 'indonesia', 1, '1989-01-10', 'gumudasd', '18', '12', 32, 3276, 3276011008, 327601, '67235587487931', 1, 'form', NULL, NULL, 'admin'),
('9168071251640010', 'Muhamad Fauzi', 'indonesia', 1, '1987-08-14', 'gumudasd', '6', '8', 32, 3276, 3275071007, 327507, '49489360863721', 1, 'form', NULL, NULL, 'admin'),
('9193705461111740', 'Fadillah W', 'indonesia', 1, '1980-05-02', 'gumudasd', '16', '12', 32, 3276, 3276031009, 327603, '2761567055741', 1, 'form', NULL, NULL, 'admin'),
('9197438726660700', 'Bryan Hendy', 'indonesia', 1, '1991-01-03', 'gumudasd', '10', '5', 32, 3276, 3275011002, 327501, '64067093368307', 1, 'form', NULL, NULL, 'admin'),
('9201684106309450', 'Sakti Qosthory', 'indonesia', 2, '1987-12-08', 'gumudasd', '15', '5', 32, 3276, 3276091003, 327609, '33898096597128', 1, 'form', NULL, NULL, 'admin'),
('9206970909577280', 'Cho Soomin', 'indonesia', 2, '1997-06-13', 'gumudasd', '27', '5', 32, 3275, 3275031001, 327503, '73571610399210', 1, 'form', NULL, NULL, 'admin'),
('9237086449213940', 'baemerry', 'indonesia', 2, '1993-08-23', 'gumudasd', '28', '17', 32, 3275, 3275021001, 327502, '91643196664822', 1, 'form', NULL, NULL, 'admin'),
('9301154087933620', 'Azrul Geryance', 'indonesia', 1, '1986-11-02', 'gumudasd', '8', '24', 32, 3276, 3275091004, 327509, '67896876233462', 1, 'form', NULL, NULL, 'admin'),
('9301384600698660', 'Vito Muharia', 'indonesia', 1, '1982-06-21', 'gumudasd', '7', '26', 32, 3276, 3275071003, 327507, '16871024400738', 1, 'form', NULL, NULL, 'admin'),
('9317034141627340', 'Agustina Prayogi', 'indonesia', 1, '1997-05-07', 'gumudasd', '24', '22', 32, 3276, 3276051010, 327605, '10815690187600', 1, 'form', NULL, NULL, 'admin'),
('9324327055520310', 'Umi Priatni', 'indonesia', 1, '1980-04-23', 'gumudasd', '11', '29', 32, 3276, 3276021010, 327602, '46087938397505', 1, 'form', NULL, NULL, 'admin'),
('9331602169162700', 'Miftachul Anggarini', 'indonesia', 1, '1989-07-27', 'gumudasd', '31', '13', 32, 3276, 3276031002, 327603, '21639659235121', 1, 'form', NULL, NULL, 'admin'),
('9352581252633890', 'Bryan Fatimah', 'indonesia', 2, '1989-07-15', 'gumudasd', '28', '25', 32, 3276, 3275031005, 327503, '931542499954', 1, 'form', NULL, NULL, 'admin'),
('9416560416675300', 'Silviana Utami', 'indonesia', 1, '1998-10-22', 'gumudasd', '7', '26', 32, 3276, 3275071004, 327507, '90477945490639', 1, 'form', NULL, NULL, 'admin'),
('9431582786247670', 'Gusti Naradhipa', 'indonesia', 1, '1996-10-12', 'gumudasd', '15', '17', 32, 3276, 3275011002, 327501, '64067093368307', 1, 'form', NULL, NULL, 'admin'),
('9437960795111350', 'Anita Prabowo', 'indonesia', 1, '2000-08-21', 'gumudasd', '21', '13', 32, 3276, 3275121001, 327512, '28904030106240', 1, 'form', NULL, NULL, 'admin'),
('9510005123416260', 'Ryeom Dae-Jung', 'indonesia', 1, '1987-12-19', 'gumudasd', '25', '8', 32, 3275, 3275101005, 327510, '42008686693523', 1, 'form', NULL, NULL, 'admin'),
('9528158416293350', 'Aelda Rahmawati', 'indonesia', 2, '1993-11-08', 'gumudasd', '31', '11', 32, 3276, 3276031011, 327603, '27548558102350', 1, 'form', NULL, NULL, 'admin'),
('9538865400053020', 'Faishal Desiana', 'indonesia', 2, '1989-05-16', 'gumudasd', '13', '17', 32, 3276, 3275091006, 327509, '44803382606578', 1, 'form', NULL, NULL, 'admin'),
('9556873269307120', 'LuV', 'indonesia', 2, '1996-08-27', 'gumudasd', '5', '16', 32, 3275, 3275081001, 327508, '20653944435203', 1, 'form', NULL, NULL, 'admin'),
('9579535431253210', 'Della Widyatmo', 'indonesia', 1, '1998-09-25', 'gumudasd', '31', '22', 32, 3276, 3275051002, 327505, '56904066352757', 1, 'form', NULL, NULL, 'admin'),
('9580876190110100', 'Lutfia Adha', 'indonesia', 2, '1985-01-27', 'gumudasd', '9', '16', 32, 3276, 3276031009, 327603, '2761567055741', 1, 'form', NULL, NULL, 'admin'),
('9585456887146080', 'Diniyah Alghifari', 'indonesia', 2, '1983-11-12', 'gumudasd', '27', '27', 32, 3276, 3276101004, 327610, '65202096698955', 1, 'form', NULL, NULL, 'admin'),
('9591629349648820', 'Seon Jin-Sang', 'indonesia', 2, '1998-10-27', 'gumudasd', '20', '4', 32, 3275, 3275121001, 327512, '28904030106240', 1, 'form', NULL, NULL, 'admin'),
('9595191615360770', 'Ilham Nugroho', 'indonesia', 2, '1984-09-26', 'gumudasd', '6', '24', 32, 3276, 3275101002, 327510, '82830344029524', 1, 'form', NULL, NULL, 'admin'),
('9618887295175820', 'Kamilia Widyawati', 'indonesia', 1, '1987-03-13', 'gumudasd', '22', '22', 32, 3276, 3276081004, 327608, '82030159676468', 1, 'form', NULL, NULL, 'admin'),
('9629637865703440', 'Christian Nugroho', 'indonesia', 2, '1981-05-17', 'gumudasd', '13', '10', 32, 3276, 3275071008, 327507, '2472162161663', 1, 'form', NULL, NULL, 'admin'),
('9652720598747310', 'Anastasia Langit', 'indonesia', 1, '1992-07-28', 'gumudasd', '13', '11', 32, 3276, 3276051005, 327605, '21855383826548', 1, 'form', NULL, NULL, 'admin'),
('9654048884387680', 'veelsa__', 'indonesia', 1, '1996-07-03', 'gumudasd', '15', '14', 32, 3276, 3276111005, 327611, '63885814527303', 1, 'form', NULL, NULL, 'admin'),
('9682490481948180', 'Demi Sayoga', 'indonesia', 2, '1981-07-06', 'gumudasd', '10', '4', 32, 3276, 3276061006, 327606, '69752429724335', 1, 'form', NULL, NULL, 'admin'),
('9702390880470910', 'Lalalala_sa', 'indonesia', 2, '1985-05-02', 'gumudasd', '31', '4', 32, 3275, 3275071007, 327507, '49489360863721', 1, 'form', NULL, NULL, 'admin'),
('9712376341492050', 'Caesarani Sapto', 'indonesia', 2, '1984-08-15', 'gumudasd', '19', '1', 32, 3276, 3275081003, 327508, '43219973164060', 1, 'form', NULL, NULL, 'admin'),
('9735067716884760', 'Ramanta Yuliasti', 'indonesia', 2, '1988-08-27', 'gumudasd', '28', '15', 32, 3276, 3275081001, 327508, '20653944435203', 1, 'form', NULL, NULL, 'admin'),
('9766118009801980', 'baechildhood', 'indonesia', 1, '1991-07-15', 'gumudasd', '9', '25', 32, 3275, 3275011002, 327501, '64067093368307', 1, 'form', NULL, NULL, 'admin'),
('9766958312876880', 'Rizki Adhitama', 'indonesia', 1, '1985-06-20', 'gumudasd', '17', '8', 32, 3276, 3275031001, 327503, '73571610399210', 1, 'form', NULL, NULL, 'admin'),
('9787396050113860', 'Imam Kusuma', 'indonesia', 2, '1999-12-03', 'gumudasd', '29', '25', 32, 3276, 3276021007, 327602, '92788084727427', 1, 'form', NULL, NULL, 'admin'),
('9804524933565920', 'nissaarr', 'indonesia', 2, '1987-12-12', 'gumudasd', '9', '27', 32, 3276, 3276061006, 327606, '69752429724335', 1, 'form', NULL, NULL, 'admin'),
('9804809951425730', 'Andhicha Kasta', 'indonesia', 1, '2000-01-10', 'gumudasd', '6', '26', 32, 3276, 3275041001, 327504, '20316506209171', 1, 'form', NULL, NULL, 'admin'),
('9808514899983740', 'Omar Nadya', 'indonesia', 2, '1994-07-23', 'gumudasd', '21', '8', 32, 3276, 3276111007, 327611, '691209492007', 1, 'form', NULL, NULL, 'admin'),
('9853958592226100', 'Hanifa Juliyanti', 'indonesia', 1, '1993-06-29', 'gumudasd', '10', '19', 32, 3276, 3275121003, 327512, '55003413902905', 1, 'form', NULL, NULL, 'admin'),
('9873290772003360', 'Andhika Firdaus Wardani', 'indonesia', 2, '1998-05-03', 'gumudasd', '8', '6', 32, 3276, 3275081001, 327508, '20653944435203', 1, 'form', NULL, NULL, 'admin'),
('9899263102307770', 'Pratama P', 'indonesia', 1, '1999-12-07', 'gumudasd', '20', '20', 32, 3276, 3275061002, 327506, '84805225066539', 1, 'form', NULL, NULL, 'admin'),
('9907180463289420', 'Berty Jeni', 'indonesia', 2, '1993-03-26', 'gumudasd', '4', '8', 32, 3276, 3276021011, 327602, '43225814557888', 1, 'form', NULL, NULL, 'admin'),
('9917965463235970', 'bloomingshortcake', 'indonesia', 2, '1982-11-08', 'gumudasd', '13', '17', 32, 3275, 3275021003, 327502, '84926030313753', 1, 'form', NULL, NULL, 'admin'),
('9932939321777370', 'Hilman Isham', 'indonesia', 2, '1988-02-20', 'gumudasd', '19', '15', 32, 3276, 3275111001, 327511, '88316800066201', 1, 'form', NULL, NULL, 'admin'),
('9935951004845950', 'Fahlian Ismail Hafizh', 'indonesia', 1, '1996-07-11', 'gumudasd', '18', '14', 32, 3276, 3275031003, 327503, '12517637856665', 1, 'form', NULL, NULL, 'admin'),
('9937782350729650', 'mikisofia', 'indonesia', 1, '1982-08-26', 'gumudasd', '26', '8', 32, 3276, 3276051010, 327605, '10815690187600', 1, 'form', NULL, NULL, 'admin'),
('9939638689960470', 'Ari Rheza Umaeroh', 'indonesia', 2, '1983-12-28', 'gumudasd', '26', '20', 32, 3276, 3275091002, 327509, '93824193249804', 1, 'form', NULL, NULL, 'admin'),
('9950664924163200', 'Dicky Fajriah', 'indonesia', 1, '1994-02-28', 'gumudasd', '18', '30', 32, 3276, 3275031006, 327503, '80518751073302', 1, 'form', NULL, NULL, 'admin'),
('9981692743178550', 'MaJoy_', 'indonesia', 2, '1991-01-25', 'gumudasd', '8', '24', 32, 3275, 3275081002, 327508, '17778021516594', 1, 'form', NULL, NULL, 'admin'),
('9989571983065370', 'Gi Dong-Yul', 'indonesia', 1, '1997-01-13', 'gumudasd', '2', '9', 32, 3275, 3275041004, 327504, '86888261974607', 1, 'form', NULL, NULL, 'admin');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
