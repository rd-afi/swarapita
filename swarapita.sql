-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2022 at 08:25 AM
-- Server version: 10.4.18-MariaDB
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
('461', 'begeng', 'lokasi 82 bekasi'),
('2841902966579590', 'AegiBabby', 'indonesia'),
('9766118009801980', 'baechildhood', 'indonesia'),
('6611860159455090', 'baefather', 'indonesia'),
('3520117764533040', 'baelove', 'indonesia'),
('9237086449213940', 'baemerry', 'indonesia'),
('4365480120561440', 'Bd_Army', 'indonesia'),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', '');

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
  `kota` int(11) NOT NULL,
  `kecamatan` bigint(20) NOT NULL,
  `kelurahan` bigint(20) NOT NULL,
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

INSERT INTO `relawan` (`nik`, `nama`, `tempat_lahir`, `jk`, `tgl_lahir`, `alamat`, `rt`, `rw`, `provinsi`, `kota`, `kecamatan`, `kelurahan`, `hpwa`, `as_koor`, `source`, `created_at`, `updated_at`, `penginput`) VALUES
('1175433000115940', 'Soo Yun', 'indonesia', 1, '1992-06-12', 'gumudasd', '121', '122', 32, 3276, 327601, 3276011010, '72259717282012', 1, '', NULL, NULL, NULL),
('1196457682377860', 'lisaans_', 'indonesia', 1, '1999-02-25', 'gumudasd', '159', '160', 32, 3276, 327605, 3276051001, '47182572791534', 1, '', NULL, NULL, NULL),
('1219711368842370', 'Reels&RiverGirl', 'indonesia', 2, '1986-02-04', 'gumudasd', '195', '196', 32, 3276, 327608, 3276081002, '15819451053412', 1, '', NULL, NULL, NULL),
('1340256790036580', 'vitri', 'indonesia', 1, '1996-08-09', 'gumudasd', '235', '236', 32, 3276, 327611, 3276111006, '26266835272777', 1, '', NULL, NULL, NULL),
('1374105153273930', 'therealnurisya', 'indonesia', 1, '1985-12-03', 'gumudasd', '227', '228', 32, 3276, 327611, 3276111002, '64691063108604', 1, '', NULL, NULL, NULL),
('1410122241965480', 'SandSay', 'indonesia', 2, '1991-09-27', 'gumudasd', '219', '220', 32, 3276, 327610, 3276101005, '18464572668425', 1, '', NULL, NULL, NULL),
('1462608451379970', 'revinassyarif', 'indonesia', 1, '1984-05-10', 'gumudasd', '199', '200', 32, 3276, 327608, 3276081004, '82030159676468', 1, '', NULL, NULL, NULL),
('1489675471678420', 'wvinterb', 'indonesia', 2, '1981-04-07', 'gumudasd', '137', '138', 32, 3276, 327603, 3276031001, '308415796259', 1, '', NULL, NULL, NULL),
('1699427289002000', 'Sun Hee', 'indonesia', 2, '1984-02-03', 'gumudasd', '131', '132', 32, 3276, 327602, 3276021010, '46087938397505', 1, '', NULL, NULL, NULL),
('1787018277828100', 'Myung-Dae', 'indonesia', 2, '2000-01-30', 'gumudasd', '83', '84', 32, 3275, 327509, 3275091005, '63050156189905', 1, '', NULL, NULL, NULL),
('1903574441488730', 'Guk Sang-Ook', 'indonesia', 2, '1993-03-10', 'gumudasd', '45', '46', 32, 3275, 327505, 3275051003, '41004735781079', 1, '', NULL, NULL, NULL),
('1944401641723550', 'Yun Hee', 'indonesia', 1, '1987-10-21', 'gumudasd', '151', '152', 32, 3276, 327604, 3276041001, '67511419540773', 1, '', NULL, NULL, NULL),
('2126782830760010', 'deTzuyu', 'indonesia', 1, '1983-09-13', 'gumudasd', '23', '24', 32, 3275, 327503, 3275031003, '12517637856665', 1, '', NULL, NULL, NULL),
('2287766108555950', 'Luuu_V', 'indonesia', 2, '1984-12-07', 'gumudasd', '63', '64', 32, 3275, 327507, 3275071008, '2472162161663', 1, '', NULL, NULL, NULL),
('2413680415591130', 'snugglecelebrate', 'indonesia', 2, '1999-02-24', 'gumudasd', '111', '112', 32, 3275, 327512, 3275121004, '32050268951002', 1, '', NULL, NULL, NULL),
('2437024302786860', 'matamarza', 'indonesia', 1, '1998-05-24', 'gumudasd', '165', '166', 32, 3276, 327605, 3276051005, '21855383826548', 1, '', NULL, NULL, NULL),
('2455883275703150', 'Si Bong', 'indonesia', 2, '1983-04-07', 'gumudasd', '107', '108', 32, 3275, 327512, 3275121002, '46909503656721', 1, '', NULL, NULL, NULL),
('2506314598476150', 'tnftr', 'indonesia', 2, '1981-04-15', 'gumudasd', '231', '232', 32, 3276, 327611, 3276111004, '59941630973615', 1, '', NULL, NULL, NULL),
('2841902966579590', 'AegiBabby', 'indonesia', 1, '2000-03-10', 'gumudasd', '1', '2', 32, 3275, 327501, 3275011001, '8506563511073', 1, '', NULL, NULL, NULL),
('2942459928228890', 'Suck-Chin', 'indonesia', 1, '1991-08-09', 'gumudasd', '125', '126', 32, 3276, 327602, 3276021007, '92788084727427', 1, '', NULL, NULL, NULL),
('2997384715663520', 'syhrrahmah', 'indonesia', 2, '1980-04-14', 'gumudasd', '225', '226', 32, 3276, 327611, 3276111001, '7071030079289', 1, '', NULL, NULL, NULL),
('3076797856066550', 'Young-Soo', 'indonesia', 2, '1993-02-13', 'gumudasd', '147', '148', 32, 3276, 327603, 3276031011, '27548558102350', 1, '', NULL, NULL, NULL),
('3115475706000120', 'Gim Moon', 'indonesia', 2, '1994-09-10', 'gumudasd', '39', '40', 32, 3275, 327504, 3275041005, '42521540061302', 1, '', NULL, NULL, NULL),
('3305460063755300', 'eop Hana', 'indonesia', 1, '1989-02-24', 'gumudasd', '29', '30', 32, 3275, 327503, 3275031006, '80518751073302', 1, '', NULL, NULL, NULL),
('3374124309016970', 'windiazahra', 'indonesia', 1, '1992-07-03', 'gumudasd', '237', '238', 32, 3276, 327611, 3276111007, '691209492007', 1, '', NULL, NULL, NULL),
('3388846124758290', 'rizkymustari94', 'indonesia', 1, '1985-06-07', 'gumudasd', '207', '208', 32, 3276, 327609, 3276091003, '33898096597128', 1, '', NULL, NULL, NULL),
('3455764361960120', 'Haseeulquu', 'indonesia', 1, '1993-10-02', 'gumudasd', '47', '48', 32, 3275, 327505, 3275051004, '49549305554254', 1, '', NULL, NULL, NULL),
('3479225924718370', 'dimplescomedy', 'indonesia', 2, '1996-11-10', 'gumudasd', '25', '26', 32, 3275, 327503, 3275031004, '47659276940530', 1, '', NULL, NULL, NULL),
('3520117764533040', 'baelove', 'indonesia', 1, '1998-05-11', 'gumudasd', '7', '8', 32, 3275, 327501, 3275011004, '8246556510673', 1, '', NULL, NULL, NULL),
('3547784695388410', 'lusianaganesha', 'indonesia', 2, '1998-09-02', 'gumudasd', '161', '162', 32, 3276, 327605, 3276051003, '85553562423436', 1, '', NULL, NULL, NULL),
('3592000969421570', 'Young-Il', 'indonesia', 1, '1997-01-20', 'gumudasd', '143', '144', 32, 3276, 327603, 3276031009, '2761567055741', 1, '', NULL, NULL, NULL),
('3731925850186420', 'Young-Soon', 'indonesia', 2, '1986-06-26', 'gumudasd', '149', '150', 32, 3276, 327603, 3276031012, '98479416417790', 1, '', NULL, NULL, NULL),
('3746052726640820', 'btsoynd', 'indonesia', 1, '1987-05-16', 'gumudasd', '15', '16', 32, 3275, 327502, 3275021004, '31708971723989', 1, '', NULL, NULL, NULL),
('3748136939585500', 'Eunneunn', 'indonesia', 1, '1988-07-26', 'gumudasd', '31', '32', 32, 3275, 327504, 3275041001, '20316506209171', 1, '', NULL, NULL, NULL),
('3774590151048810', 'Yoo Joon', 'indonesia', 2, '1983-11-27', 'gumudasd', '139', '140', 32, 3276, 327603, 3276031002, '21639659235121', 1, '', NULL, NULL, NULL),
('3844305309421450', 'rinnamarlina', 'indonesia', 1, '1985-08-31', 'gumudasd', '203', '204', 32, 3276, 327609, 3276091001, '81976929211278', 1, '', NULL, NULL, NULL),
('3848171868839290', 'Moon', 'indonesia', 1, '1986-07-09', 'gumudasd', '75', '76', 32, 3275, 327509, 3275091001, '94532773496081', 1, '', NULL, NULL, NULL),
('3856800485423170', 'mrsloli__', 'indonesia', 1, '1987-11-26', 'gumudasd', '173', '174', 32, 3276, 327606, 3276061002, '87271361275960', 1, '', NULL, NULL, NULL),
('3900459352593250', 'BuBuChoerry', 'indonesia', 1, '1985-04-19', 'gumudasd', '17', '18', 32, 3275, 327502, 3275021005, '7689483198748', 1, '', NULL, NULL, NULL),
('4315591718673410', 'Gmin_mine', 'indonesia', 2, '1993-01-23', 'gumudasd', '43', '44', 32, 3275, 327505, 3275051002, '56904066352757', 1, '', NULL, NULL, NULL),
('4365480120561440', 'Bd_Army', 'indonesia', 1, '1980-01-09', 'gumudasd', '11', '12', 32, 3275, 327502, 3275021002, '14927545559061', 1, '', NULL, NULL, NULL),
('4459940240509090', 'NMrap_NamJoon', 'indonesia', 2, '1992-08-07', 'gumudasd', '85', '86', 32, 3275, 327509, 3275091006, '44803382606578', 1, '', NULL, NULL, NULL),
('4564802418501740', 'MyJiin', 'indonesia', 2, '1986-02-10', 'gumudasd', '79', '80', 32, 3275, 327509, 3275091003, '85970272063502', 1, '', NULL, NULL, NULL),
('4651567227012960', 'tiara_fratiwi', 'indonesia', 1, '1981-08-19', 'gumudasd', '229', '230', 32, 3276, 327611, 3276111003, '68925146523125', 1, '', NULL, NULL, NULL),
('4691626474391910', 'poochcakes', 'indonesia', 2, '1986-04-07', 'gumudasd', '91', '92', 32, 3275, 327510, 3275101003, '26705952415589', 1, '', NULL, NULL, NULL),
('4696548516633220', 'SiJhopehop', 'indonesia', 1, '1987-07-24', 'gumudasd', '109', '110', 32, 3275, 327512, 3275121003, '55003413902905', 1, '', NULL, NULL, NULL),
('4715716270309420', 'reycmail', 'indonesia', 1, '1985-11-23', 'gumudasd', '201', '202', 32, 3276, 327608, 3276081005, '49075035604541', 1, '', NULL, NULL, NULL),
('4942811973400370', 'nurbaeti_susanti', 'indonesia', 1, '1983-11-10', 'gumudasd', '185', '186', 32, 3276, 327607, 3276071002, '24174004834491', 1, '', NULL, NULL, NULL),
('4979318399772040', 'mnimoniex', 'indonesia', 2, '1985-08-29', 'gumudasd', '73', '74', 32, 3275, 327508, 3275081007, '53961815966353', 1, '', NULL, NULL, NULL),
('4982988174112420', 'Jungpock', 'indonesia', 2, '1985-05-15', 'gumudasd', '57', '58', 32, 3275, 327507, 3275071003, '16871024400738', 1, '', NULL, NULL, NULL),
('5130665386961080', 'poetsdago14', 'indonesia', 2, '1996-03-28', 'gumudasd', '187', '188', 32, 3276, 327607, 3276071003, '60963965599439', 1, '', NULL, NULL, NULL),
('5270618681456810', 'Park Dae', 'indonesia', 1, '1987-10-20', 'gumudasd', '89', '90', 32, 3275, 327510, 3275101002, '82830344029524', 1, '', NULL, NULL, NULL),
('5280849040787840', 'milishwan', 'indonesia', 1, '1982-02-08', 'gumudasd', '171', '172', 32, 3276, 327606, 3276061001, '73154204382543', 1, '', NULL, NULL, NULL),
('5374134215522450', 'Soo Min', 'indonesia', 1, '2000-02-17', 'gumudasd', '119', '120', 32, 3276, 327601, 3276011009, '57324915513169', 1, '', NULL, NULL, NULL),
('5489229780474910', 'dxlwrys', 'indonesia', 1, '2000-02-04', 'gumudasd', '27', '28', 32, 3275, 327503, 3275031005, '931542499954', 1, '', NULL, NULL, NULL),
('5536005020823580', 'rusninurkhafifah', 'indonesia', 1, '1982-06-25', 'gumudasd', '217', '218', 32, 3276, 327610, 3276101004, '65202096698955', 1, '', NULL, NULL, NULL),
('5593192882970150', 'Sarang_Donghae', 'indonesia', 1, '1994-11-13', 'gumudasd', '97', '98', 32, 3275, 327511, 3275111001, '88316800066201', 1, '', NULL, NULL, NULL),
('5644183891011060', 'rahmayantirizki', 'indonesia', 1, '1981-07-13', 'gumudasd', '191', '192', 32, 3276, 327607, 3276071005, '1053286031805', 1, '', NULL, NULL, NULL),
('5782851102830900', 'RoseLife', 'indonesia', 2, '1999-12-18', 'gumudasd', '215', '216', 32, 3276, 327610, 3276101003, '52751460421845', 1, '', NULL, NULL, NULL),
('5876269906312420', 'narafudin', 'indonesia', 1, '1985-10-18', 'gumudasd', '175', '176', 32, 3276, 327606, 3276061003, '2719523212589', 1, '', NULL, NULL, NULL),
('6026869749746390', 'RoosterFairy', 'indonesia', 1, '1984-11-24', 'gumudasd', '213', '214', 32, 3276, 327610, 3276101002, '42146416195302', 1, '', NULL, NULL, NULL),
('6093062301367140', 'kuudill', 'indonesia', 1, '1986-12-01', 'gumudasd', '153', '154', 32, 3276, 327604, 3276041002, '26120005055735', 1, '', NULL, NULL, NULL),
('6112191254340010', 'Sugaa_R', 'indonesia', 2, '1987-04-12', 'gumudasd', '127', '128', 32, 3276, 327602, 3276021008, '39204411882467', 1, '', NULL, NULL, NULL),
('6121605423068890', 'renadelaa', 'indonesia', 2, '1993-12-25', 'gumudasd', '197', '198', 32, 3276, 327608, 3276081003, '4271068780982', 1, '', NULL, NULL, NULL),
('6205528452207560', 'sheerllyannaa', 'indonesia', 2, '1981-05-10', 'gumudasd', '221', '222', 32, 3276, 327610, 3276101006, '40775578796818', 1, '', NULL, NULL, NULL),
('6316734386198650', 'leila_meka', 'indonesia', 1, '1986-04-25', 'gumudasd', '157', '158', 32, 3276, 327604, 3276041004, '33149288223067', 1, '', NULL, NULL, NULL),
('6387999634202590', 'ladyTurnip', 'indonesia', 2, '1987-01-13', 'gumudasd', '155', '156', 32, 3276, 327604, 3276041003, '67670077344784', 1, '', NULL, NULL, NULL),
('6389138396154200', 'rnmardiyanaa', 'indonesia', 2, '1997-05-05', 'gumudasd', '209', '210', 32, 3276, 327609, 3276091004, '46863113591300', 1, '', NULL, NULL, NULL),
('6390744754490290', 'qViVi', 'indonesia', 2, '1995-12-25', 'gumudasd', '93', '94', 32, 3275, 327510, 3275101004, '71690208562451', 1, '', NULL, NULL, NULL),
('6594465443453560', 'Young Mi', 'indonesia', 1, '1985-03-17', 'gumudasd', '141', '142', 32, 3276, 327603, 3276031003, '20386796721212', 1, '', NULL, NULL, NULL),
('6611860159455090', 'baefather', 'indonesia', 2, '1993-06-14', 'gumudasd', '5', '6', 32, 3275, 327501, 3275011003, '91764272735574', 1, '', NULL, NULL, NULL),
('6626514617058490', 'ttaegqukiey', 'indonesia', 2, '1982-09-20', 'gumudasd', '133', '134', 32, 3276, 327602, 3276021011, '43225814557888', 1, '', NULL, NULL, NULL),
('6660040996862660', 'SuliHye_', 'indonesia', 2, '1997-07-05', 'gumudasd', '129', '130', 32, 3276, 327602, 3276021009, '40023248259406', 1, '', NULL, NULL, NULL),
('6674090340249030', 'Myung', 'indonesia', 1, '1998-07-07', 'gumudasd', '81', '82', 32, 3275, 327509, 3275091004, '67896876233462', 1, '', NULL, NULL, NULL),
('6755231503091810', 'fffluefiyon', 'indonesia', 2, '1985-10-16', 'gumudasd', '33', '34', 32, 3275, 327504, 3275041002, '73978145362620', 1, '', NULL, NULL, NULL),
('6920601090908750', 'Min Joon', 'indonesia', 2, '1981-09-14', 'gumudasd', '71', '72', 32, 3275, 327508, 3275081006, '12840279275210', 1, '', NULL, NULL, NULL),
('6983846895012980', 'Soon-Bok', 'indonesia', 1, '2000-11-26', 'gumudasd', '123', '124', 32, 3276, 327601, 3276011011, '60053483102542', 1, '', NULL, NULL, NULL),
('7065603426330860', 'mariaeansa', 'indonesia', 2, '1998-07-15', 'gumudasd', '163', '164', 32, 3276, 327605, 3276051004, '67657511383379', 1, '', NULL, NULL, NULL),
('7072152971580810', 'Da Du', 'indonesia', 1, '1983-07-08', 'gumudasd', '21', '22', 32, 3275, 327503, 3275031002, '74237213735575', 1, '', NULL, NULL, NULL),
('7098529441854630', 'So Young', 'indonesia', 1, '1994-01-25', 'gumudasd', '113', '114', 32, 3276, 327601, 3276011006, '60206763940198', 1, '', NULL, NULL, NULL),
('7128539611728480', 'FuuIrene`', 'indonesia', 1, '1982-02-04', 'gumudasd', '35', '36', 32, 3275, 327504, 3275041003, '9492929350502', 1, '', NULL, NULL, NULL),
('7163407676705450', 'Young-Jae', 'indonesia', 1, '1991-11-17', 'gumudasd', '145', '146', 32, 3276, 327603, 3276031010, '35555632444555', 1, '', NULL, NULL, NULL),
('7239729769963770', 'rofiqotula', 'indonesia', 2, '1990-07-29', 'gumudasd', '211', '212', 32, 3276, 327610, 3276101001, '36976163002393', 1, '', NULL, NULL, NULL),
('7401768853723180', 'kswjfue', 'indonesia', 1, '1991-12-28', 'gumudasd', '59', '60', 32, 3275, 327507, 3275071004, '90477945490639', 1, '', NULL, NULL, NULL),
('7459462363380290', 'nitahura', 'indonesia', 2, '1989-07-03', 'gumudasd', '183', '184', 32, 3276, 327607, 3276071001, '73894642725277', 1, '', NULL, NULL, NULL),
('7474406460931530', 'puspasaridwi', 'indonesia', 1, '1992-07-27', 'gumudasd', '189', '190', 32, 3276, 327607, 3276071004, '16967572755243', 1, '', NULL, NULL, NULL),
('7579674871760300', 'Soo Ah', 'indonesia', 2, '1991-02-17', 'gumudasd', '115', '116', 32, 3276, 327601, 3276011007, '11436793211722', 1, '', NULL, NULL, NULL),
('7592736856033730', 'ninanuryanah', 'indonesia', 2, '1987-10-27', 'gumudasd', '179', '180', 32, 3276, 327606, 3276061005, '52485256423878', 1, '', NULL, NULL, NULL),
('7646287323341500', 'hyojwun', 'indonesia', 2, '1993-05-21', 'gumudasd', '51', '52', 32, 3275, 327506, 3275061002, '84805225066539', 1, '', NULL, NULL, NULL),
('7688380528635520', 'rizal7476', 'indonesia', 2, '1987-06-26', 'gumudasd', '205', '206', 32, 3276, 327609, 3276091002, '2607872770585', 1, '', NULL, NULL, NULL),
('7694813073008780', 'maydinamey', 'indonesia', 1, '1996-03-20', 'gumudasd', '167', '168', 32, 3276, 327605, 3276051008, '51894934958775', 1, '', NULL, NULL, NULL),
('7746864291640740', 'Jeom Bon-Hwa', 'indonesia', 1, '1983-03-27', 'gumudasd', '53', '54', 32, 3275, 327506, 3275061003, '53187987827601', 1, '', NULL, NULL, NULL),
('7759181964068990', 'scenervyy', 'indonesia', 2, '1987-11-16', 'gumudasd', '99', '100', 32, 3275, 327511, 3275111002, '22576364337341', 1, '', NULL, NULL, NULL),
('7879997978585800', 'wobblybae', 'indonesia', 1, '1997-07-23', 'gumudasd', '135', '136', 32, 3276, 327602, 3276021012, '71983054932921', 1, '', NULL, NULL, NULL),
('8183082157398620', 'Seo Yeon', 'indonesia', 1, '1980-01-10', 'gumudasd', '101', '102', 32, 3275, 327511, 3275111003, '38604968155119', 1, '', NULL, NULL, NULL),
('8535579185781480', 'ratu_hotpick', 'indonesia', 1, '2000-12-24', 'gumudasd', '193', '194', 32, 3276, 327608, 3276081001, '48933920783596', 1, '', NULL, NULL, NULL),
('8536432655165440', 'Man-Young', 'indonesia', 1, '1982-04-20', 'gumudasd', '69', '70', 32, 3275, 327508, 3275081003, '43219973164060', 1, '', NULL, NULL, NULL),
('8655697472799790', 'hwningkai', 'indonesia', 1, '1994-04-06', 'gumudasd', '49', '50', 32, 3275, 327506, 3275061001, '37955855219545', 1, '', NULL, NULL, NULL),
('8678962117665460', 'nieena100219', 'indonesia', 2, '1997-05-24', 'gumudasd', '177', '178', 32, 3276, 327606, 3276061004, '32496098925699', 1, '', NULL, NULL, NULL),
('8797892271664240', 'MyBangtan', 'indonesia', 1, '1990-06-10', 'gumudasd', '77', '78', 32, 3275, 327509, 3275091002, '93824193249804', 1, '', NULL, NULL, NULL),
('8858609160661930', 'sofiamaulidas', 'indonesia', 1, '1986-12-11', 'gumudasd', '223', '224', 32, 3276, 327610, 3276101007, '29800376714659', 1, '', NULL, NULL, NULL),
('8944774408996520', 'Ong Shik', 'indonesia', 1, '1982-01-08', 'gumudasd', '87', '88', 32, 3275, 327510, 3275101001, '17329713980919', 1, '', NULL, NULL, NULL),
('9013715169625520', 'glowcakes', 'indonesia', 2, '1991-07-22', 'gumudasd', '41', '42', 32, 3275, 327505, 3275051001, '95768907279517', 1, '', NULL, NULL, NULL),
('9018988759258450', 'Jung_Kookq', 'indonesia', 2, '1999-02-24', 'gumudasd', '55', '56', 32, 3275, 327506, 3275061004, '80622278957020', 1, '', NULL, NULL, NULL),
('9028532597744730', 'Seo Yoon', 'indonesia', 1, '1998-05-23', 'gumudasd', '103', '104', 32, 3275, 327511, 3275111004, '80281216614189', 1, '', NULL, NULL, NULL),
('9146525199821350', 'Soo Jin', 'indonesia', 1, '1989-01-10', 'gumudasd', '117', '118', 32, 3276, 327601, 3276011008, '67235587487931', 1, '', NULL, NULL, NULL),
('9206970909577280', 'Cho Soomin', 'indonesia', 2, '1997-06-13', 'gumudasd', '19', '20', 32, 3275, 327503, 3275031001, '73571610399210', 1, '', NULL, NULL, NULL),
('9237086449213940', 'baemerry', 'indonesia', 2, '1993-08-23', 'gumudasd', '9', '10', 32, 3275, 327502, 3275021001, '91643196664822', 1, '', NULL, NULL, NULL),
('9510005123416260', 'Ryeom Dae-Jung', 'indonesia', 1, '1987-12-19', 'gumudasd', '95', '96', 32, 3275, 327510, 3275101005, '42008686693523', 1, '', NULL, NULL, NULL),
('9556873269307120', 'LuV', 'indonesia', 2, '1996-08-27', 'gumudasd', '65', '66', 32, 3275, 327508, 3275081001, '20653944435203', 1, '', NULL, NULL, NULL),
('9591629349648820', 'Seon Jin-Sang', 'indonesia', 2, '1998-10-27', 'gumudasd', '105', '106', 32, 3275, 327512, 3275121001, '28904030106240', 1, '', NULL, NULL, NULL),
('9654048884387680', 'veelsa__', 'indonesia', 1, '1996-07-03', 'gumudasd', '233', '234', 32, 3276, 327611, 3276111005, '63885814527303', 1, '', NULL, NULL, NULL),
('9702390880470910', 'Lalalala_sa', 'indonesia', 2, '1985-05-02', 'gumudasd', '61', '62', 32, 3275, 327507, 3275071007, '49489360863721', 1, '', NULL, NULL, NULL),
('9766118009801980', 'baechildhood', 'indonesia', 1, '1991-07-15', 'gumudasd', '3', '4', 32, 3275, 327501, 3275011002, '64067093368307', 1, '', NULL, NULL, NULL),
('9804524933565920', 'nissaarr', 'indonesia', 2, '1987-12-12', 'gumudasd', '181', '182', 32, 3276, 327606, 3276061006, '69752429724335', 1, '', NULL, NULL, NULL),
('9917965463235970', 'bloomingshortcake', 'indonesia', 2, '1982-11-08', 'gumudasd', '13', '14', 32, 3275, 327502, 3275021003, '84926030313753', 1, '', NULL, NULL, NULL),
('9937782350729650', 'mikisofia', 'indonesia', 1, '1982-08-26', 'gumudasd', '169', '170', 32, 3276, 327605, 3276051010, '10815690187600', 1, '', NULL, NULL, NULL),
('9981692743178550', 'MaJoy_', 'indonesia', 2, '1991-01-25', 'gumudasd', '67', '68', 32, 3275, 327508, 3275081002, '17778021516594', 1, '', NULL, NULL, NULL),
('9989571983065370', 'Gi Dong-Yul', 'indonesia', 1, '1997-01-13', 'gumudasd', '37', '38', 32, 3275, 327504, 3275041004, '86888261974607', 1, '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `relawan_temp`
--

CREATE TABLE `relawan_temp` (
  `nik` varchar(256) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `tempat_lahir` varchar(256) NOT NULL,
  `jk` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(256) NOT NULL,
  `rt` varchar(11) NOT NULL,
  `rw` varchar(11) NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kelurahan` varchar(100) NOT NULL,
  `hpwa` varchar(256) NOT NULL,
  `as_koor` int(11) NOT NULL,
  `source` varchar(10) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `penginput` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `relawan_temp`
--

INSERT INTO `relawan_temp` (`nik`, `nama`, `tempat_lahir`, `jk`, `tgl_lahir`, `alamat`, `rt`, `rw`, `provinsi`, `kota`, `kecamatan`, `kelurahan`, `hpwa`, `as_koor`, `source`, `created_at`, `updated_at`, `penginput`) VALUES
('2841902966579590', 'AegiBabby', 'indonesia', 'perempuan', '2000-10-03', 'solo', '1', '2', 'Jawa Barat', 'KOTA BEKASI', 'Margahayu', 'Bekasi Timur', '8506563511073', 1, 'excel', '2022-04-01 13:21:23', NULL, 'dika'),
('9766118009801980', 'baechildhood', 'indonesia', 'perempuan', '1991-07-15', 'solo', '2', '3', 'Jawa Barat', 'KOTA BEKASI', 'Jakamulya', 'Bekasi Selatan', '64067093368307', 1, 'excel', '2022-04-01 13:21:23', NULL, 'dika'),
('6611860159455090', 'baefather', 'indonesia', 'perempuan', '1993-06-14', 'solo', '3', '4', 'Jawa Barat', 'KOTA DEPOK', 'Bedahan', 'Sawangan', '91764272735574', 1, 'excel', '2022-04-01 13:21:23', NULL, 'dika'),
('3520117764533040', 'baelove', 'indonesia', 'perempuan', '1998-11-05', 'solo', '4', '5', 'Jawa Barat', 'KOTA DEPOK', 'Pengasinan', 'Sawangan', '8246556510673', 1, 'excel', '2022-04-01 13:21:23', NULL, 'dika'),
('9237086449213940', 'baemerry', 'indonesia', 'perempuan', '1993-08-23', 'solo', '5', '6', 'Jawa Barat', 'DEPOK', 'Cinangka', 'Sawangan', '91643196664822', 1, 'excel', '2022-04-01 13:21:23', NULL, 'dika'),
('4365480120561440', 'Bd_Army', 'indonesia', 'perempuan', '1980-09-01', 'solo', '6', '7', 'Jawa Barat', 'Bekasi', 'Aren Jaya', 'Bekasi Timur', '14927545559061', 1, 'excel', '2022-04-01 13:21:23', NULL, 'dika');

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
-- Indexes for table `relawan_temp`
--
ALTER TABLE `relawan_temp`
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
