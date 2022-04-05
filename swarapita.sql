-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2022 at 05:39 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

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
(1, 'admin', 'admin', 'admin'),
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
-- Table structure for table `regional`
--

CREATE TABLE `regional` (
  `kota` varchar(255) CHARACTER SET latin1 NOT NULL,
  `kecamatan` varchar(255) CHARACTER SET latin1 NOT NULL,
  `kelurahan` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `regional`
--

INSERT INTO `regional` (`kota`, `kecamatan`, `kelurahan`) VALUES
('KOTA BEKASI', 'Bekasi Timur', 'Bekasijaya'),
('KOTA BEKASI', 'Bekasi Timur', 'Margahayu'),
('KOTA BEKASI', 'Bekasi Timur', 'Durenjaya'),
('KOTA BEKASI', 'Bekasi Timur', 'Arenjaya'),
('KOTA BEKASI', 'Bekasi Barat', 'Bintara'),
('KOTA BEKASI', 'Bekasi Barat', 'Kranji'),
('KOTA BEKASI', 'Bekasi Barat', 'Kotabaru'),
('KOTA BEKASI', 'Bekasi Barat', 'Bintarajaya'),
('KOTA BEKASI', 'Bekasi Barat', 'Jakasampurna'),
('KOTA BEKASI', 'Bekasi Utara', 'Kaliabang Tengah'),
('KOTA BEKASI', 'Bekasi Utara', 'Perwira'),
('KOTA BEKASI', 'Bekasi Utara', 'Harapanbaru'),
('KOTA BEKASI', 'Bekasi Utara', 'Teluk Pucung'),
('KOTA BEKASI', 'Bekasi Utara', 'Margamulya'),
('KOTA BEKASI', 'Bekasi Utara', 'Harapanjaya'),
('KOTA BEKASI', 'Bekasi Selatan', 'Pekayonjaya'),
('KOTA BEKASI', 'Bekasi Selatan', 'Margajaya'),
('KOTA BEKASI', 'Bekasi Selatan', 'Jakamulya'),
('KOTA BEKASI', 'Bekasi Selatan', 'Jakasetia'),
('KOTA BEKASI', 'Bekasi Selatan', 'Kayuringinjaya'),
('KOTA BEKASI', 'Rawalumbu', 'Bojong Rawalumbu'),
('KOTA BEKASI', 'Rawalumbu', 'Pengasinan'),
('KOTA BEKASI', 'Rawalumbu', 'Sepanjangjaya'),
('KOTA BEKASI', 'Rawalumbu', 'Bojongmenteng'),
('KOTA BEKASI', 'Medansatria', 'Medansatria'),
('KOTA BEKASI', 'Medansatria', 'Harapanmulya'),
('KOTA BEKASI', 'Medansatria', 'Pejuang'),
('KOTA BEKASI', 'Medansatria', 'Kalibaru'),
('KOTA BEKASI', 'Bantargebang', 'Bantargebang'),
('KOTA BEKASI', 'Bantargebang', 'Cikiwul'),
('KOTA BEKASI', 'Bantargebang', 'Ciketingudik'),
('KOTA BEKASI', 'Bantargebang', 'Sumurbatu'),
('KOTA BEKASI', 'Pondokgede', 'Jatiwaringin'),
('KOTA BEKASI', 'Pondokgede', 'Jatibening'),
('KOTA BEKASI', 'Pondokgede', 'Jatimakmur'),
('KOTA BEKASI', 'Pondokgede', 'Jatibening Baru'),
('KOTA BEKASI', 'Pondokgede', 'Jaticempaka'),
('KOTA BEKASI', 'Jatiasih', 'Jatimekar'),
('KOTA BEKASI', 'Jatiasih', 'Jatiasih'),
('KOTA BEKASI', 'Jatiasih', 'Jatikramat'),
('KOTA BEKASI', 'Jatiasih', 'Jatirasa'),
('KOTA BEKASI', 'Jatiasih', 'Jatiluhur'),
('KOTA BEKASI', 'Jatiasih', 'Jatisari'),
('KOTA BEKASI', 'Jatisampurna', 'Jatisampurna'),
('KOTA BEKASI', 'Jatisampurna', 'Jatikarya'),
('KOTA BEKASI', 'Jatisampurna', 'Jatiranggon'),
('KOTA BEKASI', 'Jatisampurna', 'Jatirangga'),
('KOTA BEKASI', 'Jatisampurna', 'Jatiraden'),
('KOTA BEKASI', 'Mustikajaya', 'Padurenan'),
('KOTA BEKASI', 'Mustikajaya', 'Cimuning'),
('KOTA BEKASI', 'Mustikajaya', 'Mustikajaya'),
('KOTA BEKASI', 'Mustikajaya', 'Mustikasari'),
('KOTA BEKASI', 'Pondokmelati', 'Jatirahayu'),
('KOTA BEKASI', 'Pondokmelati', 'Jatiwarna'),
('KOTA BEKASI', 'Pondokmelati', 'Jatimelati'),
('KOTA BEKASI', 'Pondokmelati', 'Jatimurni'),
('KOTA DEPOK', 'Pancoran Mas', 'Depok'),
('KOTA DEPOK', 'Pancoran Mas', 'Depok Jaya'),
('KOTA DEPOK', 'Pancoran Mas', 'Pancoran Mas'),
('KOTA DEPOK', 'Pancoran Mas', 'Mampang'),
('KOTA DEPOK', 'Pancoran Mas', 'Rangkapan Jaya Baru'),
('KOTA DEPOK', 'Pancoran Mas', 'Rangkapan Jaya'),
('KOTA DEPOK', 'Cimanggis', 'Harjamukti'),
('KOTA DEPOK', 'Cimanggis', 'Curug'),
('KOTA DEPOK', 'Cimanggis', 'Tugu'),
('KOTA DEPOK', 'Cimanggis', 'Mekarsari'),
('KOTA DEPOK', 'Cimanggis', 'Pasir Gunung Selatan'),
('KOTA DEPOK', 'Cimanggis', 'Cisalak Pasar'),
('KOTA DEPOK', 'Sawangan', 'Pasir Putih'),
('KOTA DEPOK', 'Sawangan', 'Bedahan'),
('KOTA DEPOK', 'Sawangan', 'Pengasinan'),
('KOTA DEPOK', 'Sawangan', 'Cinangka'),
('KOTA DEPOK', 'Sawangan', 'Sawangan'),
('KOTA DEPOK', 'Sawangan', 'Sawangan Baru'),
('KOTA DEPOK', 'Sawangan', 'Kedaung'),
('KOTA DEPOK', 'Limo', 'Maruyung'),
('KOTA DEPOK', 'Limo', 'Grogol'),
('KOTA DEPOK', 'Limo', 'Krukut'),
('KOTA DEPOK', 'Limo', 'Limo'),
('KOTA DEPOK', 'Sukmajaya', 'Sukmajaya'),
('KOTA DEPOK', 'Sukmajaya', 'Abadi Jaya'),
('KOTA DEPOK', 'Sukmajaya', 'Mekar Jaya'),
('KOTA DEPOK', 'Sukmajaya', 'Baktijaya'),
('KOTA DEPOK', 'Sukmajaya', 'Cisalak'),
('KOTA DEPOK', 'Sukmajaya', 'Tirtajaya'),
('KOTA DEPOK', 'Beji', 'Beji'),
('KOTA DEPOK', 'Beji', 'Kukusan'),
('KOTA DEPOK', 'Beji', 'Tanah Baru'),
('KOTA DEPOK', 'Beji', 'Kemiri Muka'),
('KOTA DEPOK', 'Beji', 'Pondok Cina'),
('KOTA DEPOK', 'Beji', 'Beji Timur'),
('KOTA DEPOK', 'Cipayung', 'Cipayung'),
('KOTA DEPOK', 'Cipayung', 'Cipayung Jaya'),
('KOTA DEPOK', 'Cipayung', 'Ratu Jaya'),
('KOTA DEPOK', 'Cipayung', 'Bojong Pondok Terong'),
('KOTA DEPOK', 'Cipayung', 'Pondok Jaya'),
('KOTA DEPOK', 'Cilodong', 'Sukamaju'),
('KOTA DEPOK', 'Cilodong', 'Cilodong'),
('KOTA DEPOK', 'Cilodong', 'Kalibaru'),
('KOTA DEPOK', 'Cilodong', 'Kalimulya'),
('KOTA DEPOK', 'Cilodong', 'Jatimulya'),
('KOTA DEPOK', 'Cinere', 'Cinere'),
('KOTA DEPOK', 'Cinere', 'Gandul'),
('KOTA DEPOK', 'Cinere', 'Pangkalan Jati'),
('KOTA DEPOK', 'Cinere', 'Pangkalan Jati Baru'),
('KOTA DEPOK', 'Tapos', 'Tapos'),
('KOTA DEPOK', 'Tapos', 'Leuwinanggung'),
('KOTA DEPOK', 'Tapos', 'Sukatani'),
('KOTA DEPOK', 'Tapos', 'Sukamaju Baru'),
('KOTA DEPOK', 'Tapos', 'Jatijajar'),
('KOTA DEPOK', 'Tapos', 'Cilangkap'),
('KOTA DEPOK', 'Tapos', 'Cimpaeun'),
('KOTA DEPOK', 'Bojongsari', 'Bojongsari'),
('KOTA DEPOK', 'Bojongsari', 'Bojongsari Baru'),
('KOTA DEPOK', 'Bojongsari', 'Serua'),
('KOTA DEPOK', 'Bojongsari', 'Pondok Petir'),
('KOTA DEPOK', 'Bojongsari', 'Curug'),
('KOTA DEPOK', 'Bojongsari', 'Duren Mekar'),
('KOTA DEPOK', 'Bojongsari', 'Duren Seribu');

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
-- Dumping data for table `relawan`
--

INSERT INTO `relawan` (`nik`, `nama`, `tempat_lahir`, `jk`, `tgl_lahir`, `alamat`, `rt`, `rw`, `kota`, `kecamatan`, `kelurahan`, `hpwa`, `as_koor`, `source`, `created_at`, `updated_at`, `penginput`) VALUES
('1175433000115940', 'Soo Yun', 'indonesia', 1, '1992-06-12', 'gumudasd', '121', '122', 'KOTA DEPOK', 'Pancoran Mas', 'Rangkapan Jaya Baru', '72259717282012', 1, '', NULL, NULL, NULL),
('1196457682377860', 'lisaans_', 'indonesia', 1, '1999-02-25', 'gumudasd', '159', '160', 'KOTA DEPOK', 'Sukmajaya', 'Sukmajaya', '47182572791534', 1, '', NULL, NULL, NULL),
('1219711368842370', 'Reels&RiverGirl', 'indonesia', 2, '1986-02-04', 'gumudasd', '195', '196', 'KOTA DEPOK', 'Cilodong', 'Cilodong', '15819451053412', 1, '', NULL, NULL, NULL),
('1340256790036580', 'vitri', 'indonesia', 1, '1996-08-09', 'gumudasd', '235', '236', 'KOTA DEPOK', 'Bojongsari', 'Duren Mekar', '26266835272777', 1, '', NULL, NULL, NULL),
('1374105153273930', 'therealnurisya', 'indonesia', 1, '1985-12-03', 'gumudasd', '227', '228', 'KOTA DEPOK', 'Bojongsari', 'Bojongsari Baru', '64691063108604', 1, '', NULL, NULL, NULL),
('1410122241965480', 'SandSay', 'indonesia', 2, '1991-09-27', 'gumudasd', '219', '220', 'KOTA DEPOK', 'Tapos', 'Jatijajar', '18464572668425', 1, '', NULL, NULL, NULL),
('1462608451379970', 'revinassyarif', 'indonesia', 1, '1984-05-10', 'gumudasd', '199', '200', 'KOTA DEPOK', 'Cilodong', 'Kalimulya', '82030159676468', 1, '', NULL, NULL, NULL),
('1489675471678420', 'wvinterb', 'indonesia', 2, '1981-04-07', 'gumudasd', '137', '138', 'KOTA DEPOK', 'Sawangan', 'Pasir Putih', '308415796259', 1, '', NULL, NULL, NULL),
('1699427289002000', 'Sun Hee', 'indonesia', 2, '1984-02-03', 'gumudasd', '131', '132', 'KOTA DEPOK', 'Cimanggis', 'Mekarsari', '46087938397505', 1, '', NULL, NULL, NULL),
('1787018277828100', 'Myung-Dae', 'indonesia', 2, '2000-01-30', 'gumudasd', '83', '84', 'KOTA BEKASI', 'Jatiasih', 'Jatiluhur', '63050156189905', 1, '', NULL, NULL, NULL),
('1903574441488730', 'Guk Sang-Ook', 'indonesia', 2, '1993-03-10', 'gumudasd', '45', '46', 'KOTA BEKASI', 'Rawalumbu', 'Sepanjangjaya', '41004735781079', 1, '', NULL, NULL, NULL),
('1944401641723550', 'Yun Hee', 'indonesia', 1, '1987-10-21', 'gumudasd', '151', '152', 'KOTA DEPOK', 'Limo', 'Maruyung', '67511419540773', 1, '', NULL, NULL, NULL),
('2126782830760010', 'deTzuyu', 'indonesia', 1, '1983-09-13', 'gumudasd', '23', '24', 'KOTA BEKASI', 'Bekasi Utara', 'Harapanbaru', '12517637856665', 1, '', NULL, NULL, NULL),
('2287766108555950', 'Luuu_V', 'indonesia', 2, '1984-12-07', 'gumudasd', '63', '64', 'KOTA BEKASI', 'Bantargebang', 'Sumurbatu', '2472162161663', 1, '', NULL, NULL, NULL),
('2413680415591130', 'snugglecelebrate', 'indonesia', 2, '1999-02-24', 'gumudasd', '111', '112', 'KOTA BEKASI', 'Pondokmelati', 'Jatimurni', '32050268951002', 1, '', NULL, NULL, NULL),
('2437024302786860', 'matamarza', 'indonesia', 1, '1998-05-24', 'gumudasd', '165', '166', 'KOTA DEPOK', 'Sukmajaya', 'Baktijaya', '21855383826548', 1, '', NULL, NULL, NULL),
('2455883275703150', 'Si Bong', 'indonesia', 2, '1983-04-07', 'gumudasd', '107', '108', 'KOTA BEKASI', 'Pondokmelati', 'Jatiwarna', '46909503656721', 1, '', NULL, NULL, NULL),
('2506314598476150', 'tnftr', 'indonesia', 2, '1981-04-15', 'gumudasd', '231', '232', 'KOTA DEPOK', 'Bojongsari', 'Pondok Petir', '59941630973615', 1, '', NULL, NULL, NULL),
('2841902966579590', 'AegiBabby', 'indonesia', 1, '2000-03-10', 'gumudasd', '1', '2', 'KOTA BEKASI', 'Bekasi Timur', 'Bekasijaya', '8506563511073', 1, '', NULL, NULL, NULL),
('2942459928228890', 'Suck-Chin', 'indonesia', 1, '1991-08-09', 'gumudasd', '125', '126', 'KOTA DEPOK', 'Cimanggis', 'Harjamukti', '92788084727427', 1, '', NULL, NULL, NULL),
('2997384715663520', 'syhrrahmah', 'indonesia', 2, '1980-04-14', 'gumudasd', '225', '226', 'KOTA DEPOK', 'Bojongsari', 'Bojongsari', '7071030079289', 1, '', NULL, NULL, NULL),
('3076797856066550', 'Young-Soo', 'indonesia', 2, '1993-02-13', 'gumudasd', '147', '148', 'KOTA DEPOK', 'Sawangan', 'Sawangan Baru', '27548558102350', 1, '', NULL, NULL, NULL),
('3115475706000120', 'Gim Moon', 'indonesia', 2, '1994-09-10', 'gumudasd', '39', '40', 'KOTA BEKASI', 'Bekasi Selatan', 'Kayuringinjaya', '42521540061302', 1, '', NULL, NULL, NULL),
('3305460063755300', 'eop Hana', 'indonesia', 1, '1989-02-24', 'gumudasd', '29', '30', 'KOTA BEKASI', 'Bekasi Utara', 'Harapanjaya', '80518751073302', 1, '', NULL, NULL, NULL),
('3374124309016970', 'windiazahra', 'indonesia', 1, '1992-07-03', 'gumudasd', '237', '238', 'KOTA DEPOK', 'Bojongsari', 'Duren Seribu', '691209492007', 1, '', NULL, NULL, NULL),
('3388846124758290', 'rizkymustari94', 'indonesia', 1, '1985-06-07', 'gumudasd', '207', '208', 'KOTA DEPOK', 'Cinere', 'Pangkalan Jati', '33898096597128', 1, '', NULL, NULL, NULL),
('3455764361960120', 'Haseeulquu', 'indonesia', 1, '1993-10-02', 'gumudasd', '47', '48', 'KOTA BEKASI', 'Rawalumbu', 'Bojongmenteng', '49549305554254', 1, '', NULL, NULL, NULL),
('3479225924718370', 'dimplescomedy', 'indonesia', 2, '1996-11-10', 'gumudasd', '25', '26', 'KOTA BEKASI', 'Bekasi Utara', 'Teluk Pucung', '47659276940530', 1, '', NULL, NULL, NULL),
('3520117764533040', 'baelove', 'indonesia', 1, '1998-05-11', 'gumudasd', '7', '8', 'KOTA BEKASI', 'Bekasi Timur', 'Arenjaya', '8246556510673', 1, '', NULL, NULL, NULL),
('3547784695388410', 'lusianaganesha', 'indonesia', 2, '1998-09-02', 'gumudasd', '161', '162', 'KOTA DEPOK', 'Sukmajaya', 'Abadi Jaya', '85553562423436', 1, '', NULL, NULL, NULL),
('3592000969421570', 'Young-Il', 'indonesia', 1, '1997-01-20', 'gumudasd', '143', '144', 'KOTA DEPOK', 'Sawangan', 'Cinangka', '2761567055741', 1, '', NULL, NULL, NULL),
('3731925850186420', 'Young-Soon', 'indonesia', 2, '1986-06-26', 'gumudasd', '149', '150', 'KOTA DEPOK', 'Sawangan', 'Kedaung', '98479416417790', 1, '', NULL, NULL, NULL),
('3746052726640820', 'btsoynd', 'indonesia', 1, '1987-05-16', 'gumudasd', '15', '16', 'KOTA BEKASI', 'Bekasi Barat', 'Bintarajaya', '31708971723989', 1, '', NULL, NULL, NULL),
('3748136939585500', 'Eunneunn', 'indonesia', 1, '1988-07-26', 'gumudasd', '31', '32', 'KOTA BEKASI', 'Bekasi Selatan', 'Pekayonjaya', '20316506209171', 1, '', NULL, NULL, NULL),
('3774590151048810', 'Yoo Joon', 'indonesia', 2, '1983-11-27', 'gumudasd', '139', '140', 'KOTA DEPOK', 'Sawangan', 'Bedahan', '21639659235121', 1, '', NULL, NULL, NULL),
('3844305309421450', 'rinnamarlina', 'indonesia', 1, '1985-08-31', 'gumudasd', '203', '204', 'KOTA DEPOK', 'Cinere', 'Cinere', '81976929211278', 1, '', NULL, NULL, NULL),
('3848171868839290', 'Moon', 'indonesia', 1, '1986-07-09', 'gumudasd', '75', '76', 'KOTA BEKASI', 'Jatiasih', 'Jatimekar', '94532773496081', 1, '', NULL, NULL, NULL),
('3856800485423170', 'mrsloli__', 'indonesia', 1, '1987-11-26', 'gumudasd', '173', '174', 'KOTA DEPOK', 'Beji', 'Kukusan', '87271361275960', 1, '', NULL, NULL, NULL),
('3900459352593250', 'BuBuChoerry', 'indonesia', 1, '1985-04-19', 'gumudasd', '17', '18', 'KOTA BEKASI', 'Bekasi Barat', 'Jakasampurna', '7689483198748', 1, '', NULL, NULL, NULL),
('4315591718673410', 'Gmin_mine', 'indonesia', 2, '1993-01-23', 'gumudasd', '43', '44', 'KOTA BEKASI', 'Rawalumbu', 'Pengasinan', '56904066352757', 1, '', NULL, NULL, NULL),
('4365480120561440', 'Bd_Army', 'indonesia', 1, '1980-01-09', 'gumudasd', '11', '12', 'KOTA BEKASI', 'Bekasi Barat', 'Kranji', '14927545559061', 1, '', NULL, NULL, NULL),
('4459940240509090', 'NMrap_NamJoon', 'indonesia', 2, '1992-08-07', 'gumudasd', '85', '86', 'KOTA BEKASI', 'Jatiasih', 'Jatisari', '44803382606578', 1, '', NULL, NULL, NULL),
('4564802418501740', 'MyJiin', 'indonesia', 2, '1986-02-10', 'gumudasd', '79', '80', 'KOTA BEKASI', 'Jatiasih', 'Jatikramat', '85970272063502', 1, '', NULL, NULL, NULL),
('4651567227012960', 'tiara_fratiwi', 'indonesia', 1, '1981-08-19', 'gumudasd', '229', '230', 'KOTA DEPOK', 'Bojongsari', 'Serua', '68925146523125', 1, '', NULL, NULL, NULL),
('4691626474391910', 'poochcakes', 'indonesia', 2, '1986-04-07', 'gumudasd', '91', '92', 'KOTA BEKASI', 'Jatisampurna', 'Jatiranggon', '26705952415589', 1, '', NULL, NULL, NULL),
('4696548516633220', 'SiJhopehop', 'indonesia', 1, '1987-07-24', 'gumudasd', '109', '110', 'KOTA BEKASI', 'Pondokmelati', 'Jatimelati', '55003413902905', 1, '', NULL, NULL, NULL),
('4715716270309420', 'reycmail', 'indonesia', 1, '1985-11-23', 'gumudasd', '201', '202', 'KOTA DEPOK', 'Cilodong', 'Jatimulya', '49075035604541', 1, '', NULL, NULL, NULL),
('4942811973400370', 'nurbaeti_susanti', 'indonesia', 1, '1983-11-10', 'gumudasd', '185', '186', 'KOTA DEPOK', 'Cipayung', 'Cipayung Jaya', '24174004834491', 1, '', NULL, NULL, NULL),
('4979318399772040', 'mnimoniex', 'indonesia', 2, '1985-08-29', 'gumudasd', '73', '74', 'KOTA BEKASI', 'Pondokgede', 'Jaticempaka', '53961815966353', 1, '', NULL, NULL, NULL),
('4982988174112420', 'Jungpock', 'indonesia', 2, '1985-05-15', 'gumudasd', '57', '58', 'KOTA BEKASI', 'Bantargebang', 'Bantargebang', '16871024400738', 1, '', NULL, NULL, NULL),
('5130665386961080', 'poetsdago14', 'indonesia', 2, '1996-03-28', 'gumudasd', '187', '188', 'KOTA DEPOK', 'Cipayung', 'Ratu Jaya', '60963965599439', 1, '', NULL, NULL, NULL),
('5270618681456810', 'Park Dae', 'indonesia', 1, '1987-10-20', 'gumudasd', '89', '90', 'KOTA BEKASI', 'Jatisampurna', 'Jatikarya', '82830344029524', 1, '', NULL, NULL, NULL),
('5280849040787840', 'milishwan', 'indonesia', 1, '1982-02-08', 'gumudasd', '171', '172', 'KOTA DEPOK', 'Beji', 'Beji', '73154204382543', 1, '', NULL, NULL, NULL),
('5374134215522450', 'Soo Min', 'indonesia', 1, '2000-02-17', 'gumudasd', '119', '120', 'KOTA DEPOK', 'Pancoran Mas', 'Mampang', '57324915513169', 1, '', NULL, NULL, NULL),
('5489229780474910', 'dxlwrys', 'indonesia', 1, '2000-02-04', 'gumudasd', '27', '28', 'KOTA BEKASI', 'Bekasi Utara', 'Margamulya', '931542499954', 1, '', NULL, NULL, NULL),
('5536005020823580', 'rusninurkhafifah', 'indonesia', 1, '1982-06-25', 'gumudasd', '217', '218', 'KOTA DEPOK', 'Tapos', 'Sukamaju Baru', '65202096698955', 1, '', NULL, NULL, NULL),
('5593192882970150', 'Sarang_Donghae', 'indonesia', 1, '1994-11-13', 'gumudasd', '97', '98', 'KOTA BEKASI', 'Mustikajaya', 'Padurenan', '88316800066201', 1, '', NULL, NULL, NULL),
('5644183891011060', 'rahmayantirizki', 'indonesia', 1, '1981-07-13', 'gumudasd', '191', '192', 'KOTA DEPOK', 'Cipayung', 'Pondok Jaya', '1053286031805', 1, '', NULL, NULL, NULL),
('5782851102830900', 'RoseLife', 'indonesia', 2, '1999-12-18', 'gumudasd', '215', '216', 'KOTA DEPOK', 'Tapos', 'Sukatani', '52751460421845', 1, '', NULL, NULL, NULL),
('5876269906312420', 'narafudin', 'indonesia', 1, '1985-10-18', 'gumudasd', '175', '176', 'KOTA DEPOK', 'Beji', 'Tanah Baru', '2719523212589', 1, '', NULL, NULL, NULL),
('6026869749746390', 'RoosterFairy', 'indonesia', 1, '1984-11-24', 'gumudasd', '213', '214', 'KOTA DEPOK', 'Tapos', 'Leuwinanggung', '42146416195302', 1, '', NULL, NULL, NULL),
('6093062301367140', 'kuudill', 'indonesia', 1, '1986-12-01', 'gumudasd', '153', '154', 'KOTA DEPOK', 'Limo', 'Grogol', '26120005055735', 1, '', NULL, NULL, NULL),
('6112191254340010', 'Sugaa_R', 'indonesia', 2, '1987-04-12', 'gumudasd', '127', '128', 'KOTA DEPOK', 'Cimanggis', 'Curug', '39204411882467', 1, '', NULL, NULL, NULL),
('6121605423068890', 'renadelaa', 'indonesia', 2, '1993-12-25', 'gumudasd', '197', '198', 'KOTA DEPOK', 'Cilodong', 'Kalibaru', '4271068780982', 1, '', NULL, NULL, NULL),
('6205528452207560', 'sheerllyannaa', 'indonesia', 2, '1981-05-10', 'gumudasd', '221', '222', 'KOTA DEPOK', 'Tapos', 'Cilangkap', '40775578796818', 1, '', NULL, NULL, NULL),
('6316734386198650', 'leila_meka', 'indonesia', 1, '1986-04-25', 'gumudasd', '157', '158', 'KOTA DEPOK', 'Limo', 'Limo', '33149288223067', 1, '', NULL, NULL, NULL),
('6387999634202590', 'ladyTurnip', 'indonesia', 2, '1987-01-13', 'gumudasd', '155', '156', 'KOTA DEPOK', 'Limo', 'Krukut', '67670077344784', 1, '', NULL, NULL, NULL),
('6389138396154200', 'rnmardiyanaa', 'indonesia', 2, '1997-05-05', 'gumudasd', '209', '210', 'KOTA DEPOK', 'Cinere', 'Pangkalan Jati Baru', '46863113591300', 1, '', NULL, NULL, NULL),
('6390744754490290', 'qViVi', 'indonesia', 2, '1995-12-25', 'gumudasd', '93', '94', 'KOTA BEKASI', 'Jatisampurna', 'Jatirangga', '71690208562451', 1, '', NULL, NULL, NULL),
('6594465443453560', 'Young Mi', 'indonesia', 1, '1985-03-17', 'gumudasd', '141', '142', 'KOTA DEPOK', 'Sawangan', 'Pengasinan', '20386796721212', 1, '', NULL, NULL, NULL),
('6611860159455090', 'baefather', 'indonesia', 2, '1993-06-14', 'gumudasd', '5', '6', 'KOTA BEKASI', 'Bekasi Timur', 'Durenjaya', '91764272735574', 1, '', NULL, NULL, NULL),
('6626514617058490', 'ttaegqukiey', 'indonesia', 2, '1982-09-20', 'gumudasd', '133', '134', 'KOTA DEPOK', 'Cimanggis', 'Pasir Gunung Selatan', '43225814557888', 1, '', NULL, NULL, NULL),
('6660040996862660', 'SuliHye_', 'indonesia', 2, '1997-07-05', 'gumudasd', '129', '130', 'KOTA DEPOK', 'Cimanggis', 'Tugu', '40023248259406', 1, '', NULL, NULL, NULL),
('6674090340249030', 'Myung', 'indonesia', 1, '1998-07-07', 'gumudasd', '81', '82', 'KOTA BEKASI', 'Jatiasih', 'Jatirasa', '67896876233462', 1, '', NULL, NULL, NULL),
('6755231503091810', 'fffluefiyon', 'indonesia', 2, '1985-10-16', 'gumudasd', '33', '34', 'KOTA BEKASI', 'Bekasi Selatan', 'Margajaya', '73978145362620', 1, '', NULL, NULL, NULL),
('6920601090908750', 'Min Joon', 'indonesia', 2, '1981-09-14', 'gumudasd', '71', '72', 'KOTA BEKASI', 'Pondokgede', 'Jatibening Baru', '12840279275210', 1, '', NULL, NULL, NULL),
('6983846895012980', 'Soon-Bok', 'indonesia', 1, '2000-11-26', 'gumudasd', '123', '124', 'KOTA DEPOK', 'Pancoran Mas', 'Rangkapan Jaya', '60053483102542', 1, '', NULL, NULL, NULL),
('7065603426330860', 'mariaeansa', 'indonesia', 2, '1998-07-15', 'gumudasd', '163', '164', 'KOTA DEPOK', 'Sukmajaya', 'Mekar Jaya', '67657511383379', 1, '', NULL, NULL, NULL),
('7072152971580810', 'Da Du', 'indonesia', 1, '1983-07-08', 'gumudasd', '21', '22', 'KOTA BEKASI', 'Bekasi Utara', 'Perwira', '74237213735575', 1, '', NULL, NULL, NULL),
('7098529441854630', 'So Young', 'indonesia', 1, '1994-01-25', 'gumudasd', '113', '114', 'KOTA DEPOK', 'Pancoran Mas', 'Depok', '60206763940198', 1, '', NULL, NULL, NULL),
('7128539611728480', 'FuuIrene`', 'indonesia', 1, '1982-02-04', 'gumudasd', '35', '36', 'KOTA BEKASI', 'Bekasi Selatan', 'Jakamulya', '9492929350502', 1, '', NULL, NULL, NULL),
('7163407676705450', 'Young-Jae', 'indonesia', 1, '1991-11-17', 'gumudasd', '145', '146', 'KOTA DEPOK', 'Sawangan', 'Sawangan', '35555632444555', 1, '', NULL, NULL, NULL),
('7239729769963770', 'rofiqotula', 'indonesia', 2, '1990-07-29', 'gumudasd', '211', '212', 'KOTA DEPOK', 'Tapos', 'Tapos', '36976163002393', 1, '', NULL, NULL, NULL),
('7401768853723180', 'kswjfue', 'indonesia', 1, '1991-12-28', 'gumudasd', '59', '60', 'KOTA BEKASI', 'Bantargebang', 'Cikiwul', '90477945490639', 1, '', NULL, NULL, NULL),
('7459462363380290', 'nitahura', 'indonesia', 2, '1989-07-03', 'gumudasd', '183', '184', 'KOTA DEPOK', 'Cipayung', 'Cipayung', '73894642725277', 1, '', NULL, NULL, NULL),
('7474406460931530', 'puspasaridwi', 'indonesia', 1, '1992-07-27', 'gumudasd', '189', '190', 'KOTA DEPOK', 'Cipayung', 'Bojong Pondok Terong', '16967572755243', 1, '', NULL, NULL, NULL),
('7579674871760300', 'Soo Ah', 'indonesia', 2, '1991-02-17', 'gumudasd', '115', '116', 'KOTA DEPOK', 'Pancoran Mas', 'Depok Jaya', '11436793211722', 1, '', NULL, NULL, NULL),
('7592736856033730', 'ninanuryanah', 'indonesia', 2, '1987-10-27', 'gumudasd', '179', '180', 'KOTA DEPOK', 'Beji', 'Pondok Cina', '52485256423878', 1, '', NULL, NULL, NULL),
('7646287323341500', 'hyojwun', 'indonesia', 2, '1993-05-21', 'gumudasd', '51', '52', 'KOTA BEKASI', 'Medansatria', 'Harapanmulya', '84805225066539', 1, '', NULL, NULL, NULL),
('7688380528635520', 'rizal7476', 'indonesia', 2, '1987-06-26', 'gumudasd', '205', '206', 'KOTA DEPOK', 'Cinere', 'Gandul', '2607872770585', 1, '', NULL, NULL, NULL),
('7694813073008780', 'maydinamey', 'indonesia', 1, '1996-03-20', 'gumudasd', '167', '168', 'KOTA DEPOK', 'Sukmajaya', 'Cisalak', '51894934958775', 1, '', NULL, NULL, NULL),
('7746864291640740', 'Jeom Bon-Hwa', 'indonesia', 1, '1983-03-27', 'gumudasd', '53', '54', 'KOTA BEKASI', 'Medansatria', 'Pejuang', '53187987827601', 1, '', NULL, NULL, NULL),
('7759181964068990', 'scenervyy', 'indonesia', 2, '1987-11-16', 'gumudasd', '99', '100', 'KOTA BEKASI', 'Mustikajaya', 'Cimuning', '22576364337341', 1, '', NULL, NULL, NULL),
('7879997978585800', 'wobblybae', 'indonesia', 1, '1997-07-23', 'gumudasd', '135', '136', 'KOTA DEPOK', 'Cimanggis', 'Cisalak Pasar', '71983054932921', 1, '', NULL, NULL, NULL),
('8183082157398620', 'Seo Yeon', 'indonesia', 1, '1980-01-10', 'gumudasd', '101', '102', 'KOTA BEKASI', 'Mustikajaya', 'Mustikajaya', '38604968155119', 1, '', NULL, NULL, NULL),
('8535579185781480', 'ratu_hotpick', 'indonesia', 1, '2000-12-24', 'gumudasd', '193', '194', 'KOTA DEPOK', 'Cilodong', 'Sukamaju', '48933920783596', 1, '', NULL, NULL, NULL),
('8536432655165440', 'Man-Young', 'indonesia', 1, '1982-04-20', 'gumudasd', '69', '70', 'KOTA BEKASI', 'Pondokgede', 'Jatimakmur', '43219973164060', 1, '', NULL, NULL, NULL),
('8655697472799790', 'hwningkai', 'indonesia', 1, '1994-04-06', 'gumudasd', '49', '50', 'KOTA BEKASI', 'Medansatria', 'Medansatria', '37955855219545', 1, '', NULL, NULL, NULL),
('8678962117665460', 'nieena100219', 'indonesia', 2, '1997-05-24', 'gumudasd', '177', '178', 'KOTA DEPOK', 'Beji', 'Kemiri Muka', '32496098925699', 1, '', NULL, NULL, NULL),
('8797892271664240', 'MyBangtan', 'indonesia', 1, '1990-06-10', 'gumudasd', '77', '78', 'KOTA BEKASI', 'Jatiasih', 'Jatiasih', '93824193249804', 1, '', NULL, NULL, NULL),
('8858609160661930', 'sofiamaulidas', 'indonesia', 1, '1986-12-11', 'gumudasd', '223', '224', 'KOTA DEPOK', 'Tapos', 'Cimpaeun', '29800376714659', 1, '', NULL, NULL, NULL),
('8944774408996520', 'Ong Shik', 'indonesia', 1, '1982-01-08', 'gumudasd', '87', '88', 'KOTA BEKASI', 'Jatisampurna', 'Jatisampurna', '17329713980919', 1, '', NULL, NULL, NULL),
('9013715169625520', 'glowcakes', 'indonesia', 2, '1991-07-22', 'gumudasd', '41', '42', 'KOTA BEKASI', 'Rawalumbu', 'Bojong Rawalumbu', '95768907279517', 1, '', NULL, NULL, NULL),
('9018988759258450', 'Jung_Kookq', 'indonesia', 2, '1999-02-24', 'gumudasd', '55', '56', 'KOTA BEKASI', 'Medansatria', 'Kalibaru', '80622278957020', 1, '', NULL, NULL, NULL),
('9028532597744730', 'Seo Yoon', 'indonesia', 1, '1998-05-23', 'gumudasd', '103', '104', 'KOTA BEKASI', 'Mustikajaya', 'Mustikasari', '80281216614189', 1, '', NULL, NULL, NULL),
('9146525199821350', 'Soo Jin', 'indonesia', 1, '1989-01-10', 'gumudasd', '117', '118', 'KOTA DEPOK', 'Pancoran Mas', 'Pancoran Mas', '67235587487931', 1, '', NULL, NULL, NULL),
('9206970909577280', 'Cho Soomin', 'indonesia', 2, '1997-06-13', 'gumudasd', '19', '20', 'KOTA BEKASI', 'Bekasi Utara', 'Kaliabang Tengah', '73571610399210', 1, '', NULL, NULL, NULL),
('9237086449213940', 'baemerry', 'indonesia', 2, '1993-08-23', 'gumudasd', '9', '10', 'KOTA BEKASI', 'Bekasi Barat', 'Bintara', '91643196664822', 1, '', NULL, NULL, NULL),
('9510005123416260', 'Ryeom Dae-Jung', 'indonesia', 1, '1987-12-19', 'gumudasd', '95', '96', 'KOTA BEKASI', 'Jatisampurna', 'Jatiraden', '42008686693523', 1, '', NULL, NULL, NULL),
('9556873269307120', 'LuV', 'indonesia', 2, '1996-08-27', 'gumudasd', '65', '66', 'KOTA BEKASI', 'Pondokgede', 'Jatiwaringin', '20653944435203', 1, '', NULL, NULL, NULL),
('9591629349648820', 'Seon Jin-Sang', 'indonesia', 2, '1998-10-27', 'gumudasd', '105', '106', 'KOTA BEKASI', 'Pondokmelati', 'Jatirahayu', '28904030106240', 1, '', NULL, NULL, NULL),
('9654048884387680', 'veelsa__', 'indonesia', 1, '1996-07-03', 'gumudasd', '233', '234', 'KOTA DEPOK', 'Bojongsari', 'Curug', '63885814527303', 1, '', NULL, NULL, NULL),
('9702390880470910', 'Lalalala_sa', 'indonesia', 2, '1985-05-02', 'gumudasd', '61', '62', 'KOTA BEKASI', 'Bantargebang', 'Ciketingudik', '49489360863721', 1, '', NULL, NULL, NULL),
('9766118009801980', 'baechildhood', 'indonesia', 1, '1991-07-15', 'gumudasd', '3', '4', 'KOTA BEKASI', 'Bekasi Timur', 'Margahayu', '64067093368307', 1, '', NULL, NULL, NULL),
('9804524933565920', 'nissaarr', 'indonesia', 2, '1987-12-12', 'gumudasd', '181', '182', 'KOTA DEPOK', 'Beji', 'Beji Timur', '69752429724335', 1, '', NULL, NULL, NULL),
('9917965463235970', 'bloomingshortcake', 'indonesia', 2, '1982-11-08', 'gumudasd', '13', '14', 'KOTA BEKASI', 'Bekasi Barat', 'Kotabaru', '84926030313753', 1, '', NULL, NULL, NULL),
('9937782350729650', 'mikisofia', 'indonesia', 1, '1982-08-26', 'gumudasd', '169', '170', 'KOTA DEPOK', 'Sukmajaya', 'Tirtajaya', '10815690187600', 1, '', NULL, NULL, NULL),
('9981692743178550', 'MaJoy_', 'indonesia', 2, '1991-01-25', 'gumudasd', '67', '68', 'KOTA BEKASI', 'Pondokgede', 'Jatibening', '17778021516594', 1, '', NULL, NULL, NULL),
('9989571983065370', 'Gi Dong-Yul', 'indonesia', 1, '1997-01-13', 'gumudasd', '37', '38', 'KOTA BEKASI', 'Bekasi Selatan', 'Jakasetia', '86888261974607', 1, '', NULL, NULL, NULL);

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
('2841902966579590', 'AegiBabby', 'indonesia', '1', '2000-10-03', 'solo', '1', '2', 'Jawa Barat', 'KOTA BEKASI', 'Bekasi Timur', 'Margahayu', '8506563511073', 1, 'form', '2022-04-01 13:21:23', '2022-04-05 22:19:07', 'dika'),
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
