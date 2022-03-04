-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2022 at 02:27 PM
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
('321601', '3216', 'Tarumajaya'),
('321602', '3216', 'Babelan'),
('321603', '3216', 'Sukawangi'),
('321604', '3216', 'Tambelang'),
('321605', '3216', 'Tambun Utara'),
('321606', '3216', 'Tambun Selatan'),
('321607', '3216', 'Cibitung'),
('321608', '3216', 'Cikarang Barat'),
('321609', '3216', 'Cikarang Utara'),
('321610', '3216', 'Karang Bahagia'),
('321611', '3216', 'Cikarang Timur'),
('321612', '3216', 'Kedung Waringin'),
('321613', '3216', 'Pebayuran'),
('321614', '3216', 'Sukakarya'),
('321615', '3216', 'Sukatani'),
('321616', '3216', 'Cabangbungin'),
('321617', '3216', 'Muaragembong'),
('321618', '3216', 'Setu'),
('321619', '3216', 'Cikarang Selatan'),
('321620', '3216', 'Cikarang Pusat'),
('321621', '3216', 'Serang Baru'),
('321622', '3216', 'Cibarusah'),
('321623', '3216', 'Bojongmangu'),
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
('3216', '32', 'KAB. BEKASI'),
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
('3216012001', '321601', 'Sagara Makmur'),
('3216012002', '321601', 'Segarajaya'),
('3216012003', '321601', 'Pusaka Rakyat'),
('3216012004', '321601', 'Pahlawan Setia'),
('3216012005', '321601', 'Setia Mulya'),
('3216012006', '321601', 'Samudra Jaya'),
('3216012007', '321601', 'Setia Asih'),
('3216012008', '321601', 'Pantai Makmur'),
('3216021006', '321602', 'Bahagia'),
('3216021007', '321602', 'Kebalen'),
('3216022001', '321602', 'Bunibakti'),
('3216022002', '321602', 'Muarabakti'),
('3216022003', '321602', 'Kedung Pengawas'),
('3216022004', '321602', 'Hurip Jaya'),
('3216022005', '321602', 'Pantaihurip'),
('3216022008', '321602', 'Babelankota'),
('3216022009', '321602', 'Kedungjaya'),
('3216032001', '321603', 'Sukaringin'),
('3216032002', '321603', 'Sukabudi'),
('3216032003', '321603', 'Sukadaya'),
('3216032004', '321603', 'Sukawangi'),
('3216032005', '321603', 'Sukakerta'),
('3216032006', '321603', 'Sukatenang'),
('3216032007', '321603', 'Sukamekar'),
('3216042001', '321604', 'Sukawijaya'),
('3216042002', '321604', 'Sukamaju'),
('3216042003', '321604', 'Sukaraja'),
('3216042004', '321604', 'Sukarapih'),
('3216042005', '321604', 'Sukarahayu'),
('3216042006', '321604', 'Sukamantri'),
('3216042007', '321604', 'Sukabakti'),
('3216052001', '321605', 'Satriajaya'),
('3216052002', '321605', 'Jejalenjaya'),
('3216052003', '321605', 'Satriamekar'),
('3216052004', '321605', 'Sriamur'),
('3216052005', '321605', 'Srimukti'),
('3216052006', '321605', 'Srijaya'),
('3216052007', '321605', 'Srimahi'),
('3216052008', '321605', 'Karangsatria'),
('3216061001', '321606', 'Jatimulya'),
('3216062002', '321606', 'Lambangsari'),
('3216062003', '321606', 'Lambangjaya'),
('3216062004', '321606', 'Tambun'),
('3216062005', '321606', 'Setiadarma'),
('3216062006', '321606', 'Setiamekar'),
('3216062007', '321606', 'Mekarsari'),
('3216062008', '321606', 'Tridaya Sakti'),
('3216062009', '321606', 'Mangunjaya'),
('3216062010', '321606', 'Sumberjaya'),
('3216071001', '321607', 'Wanasari'),
('3216072002', '321607', 'Wanajaya'),
('3216072003', '321607', 'Kertamukti'),
('3216072004', '321607', 'Muktiwari'),
('3216072005', '321607', 'Sarimukti'),
('3216072006', '321607', 'Sukajaya'),
('3216072007', '321607', 'Cibuntu'),
('3216081008', '321608', 'Telaga Asih'),
('3216082001', '321608', 'Telagamurni'),
('3216082002', '321608', 'Mekarwangi'),
('3216082003', '321608', 'Jatiwangi'),
('3216082004', '321608', 'Danau Indah'),
('3216082005', '321608', 'Gandamekar'),
('3216082006', '321608', 'Gandasari'),
('3216082007', '321608', 'Sukadanau'),
('3216082009', '321608', 'Kalijaya'),
('3216082010', '321608', 'Telajung'),
('3216082011', '321608', 'Cikedokan'),
('3216092001', '321609', 'Cikarangkota'),
('3216092002', '321609', 'Karangbaru'),
('3216092003', '321609', 'Karangasih'),
('3216092004', '321609', 'Waluya'),
('3216092005', '321609', 'Karangraharja'),
('3216092006', '321609', 'Pasirgombong'),
('3216092007', '321609', 'Simpangan'),
('3216092008', '321609', 'Tanjungsari'),
('3216092009', '321609', 'Hajarmekar'),
('3216092010', '321609', 'Mekarmukti'),
('3216092011', '321609', 'Wangunharja'),
('3216102001', '321610', 'Sukaraya'),
('3216102002', '321610', 'Karangrahayu'),
('3216102003', '321610', 'Karangsetia'),
('3216102004', '321610', 'Karanganyar'),
('3216102005', '321610', 'Karangbahagia'),
('3216102006', '321610', 'Karangsentosa'),
('3216102007', '321610', 'Karangsatu'),
('3216102008', '321610', 'Karangmukti'),
('3216111007', '321611', 'Sertajaya'),
('3216112001', '321611', 'Tanjungbaru'),
('3216112002', '321611', 'Cipayung'),
('3216112003', '321611', 'Hegarmanah'),
('3216112004', '321611', 'Jatireja'),
('3216112005', '321611', 'Jatibaru'),
('3216112006', '321611', 'Labansari'),
('3216112008', '321611', 'Karangsari'),
('3216122001', '321612', 'Karangsambung'),
('3216122002', '321612', 'Waringinjaya'),
('3216122003', '321612', 'Karangmekar'),
('3216122004', '321612', 'Mekarjaya'),
('3216122005', '321612', 'Karangharum'),
('3216122006', '321612', 'Bojongsari'),
('3216122007', '321612', 'Kedungwaringin'),
('3216131011', '321613', 'Kertasari'),
('3216132001', '321613', 'Karangharja'),
('3216132002', '321613', 'Karangsegar'),
('3216132003', '321613', 'Sumberurip'),
('3216132004', '321613', 'Sumbereja'),
('3216132005', '321613', 'Karangreja'),
('3216132006', '321613', 'Karangjaya'),
('3216132007', '321613', 'Sumbersari'),
('3216132008', '321613', 'Karangpatri'),
('3216132009', '321613', 'Karanghaur'),
('3216132010', '321613', 'Kertajaya'),
('3216132012', '321613', 'Bantarsari'),
('3216132013', '321613', 'Bantarjaya'),
('3216142001', '321614', 'Sukamurni'),
('3216142002', '321614', 'Sukaindah'),
('3216142003', '321614', 'Sukakarya'),
('3216142004', '321614', 'Sukalaksana'),
('3216142005', '321614', 'Sukajadi'),
('3216142006', '321614', 'Sukakarsa'),
('3216142007', '321614', 'Sukamakmur'),
('3216152001', '321615', 'Sukamulya'),
('3216152002', '321615', 'Sukamanah'),
('3216152003', '321615', 'Sukahurip'),
('3216152004', '321615', 'Sukaasih'),
('3216152005', '321615', 'Sukarukun'),
('3216152006', '321615', 'Banjarsari'),
('3216152007', '321615', 'Sukadarma'),
('3216162001', '321616', 'Jayabakti'),
('3216162002', '321616', 'Jayalaksana'),
('3216162003', '321616', 'Sindangsari'),
('3216162004', '321616', 'Sindangjaya'),
('3216162005', '321616', 'Setialaksana'),
('3216162006', '321616', 'Setiajaya'),
('3216162007', '321616', 'Lenggahjaya'),
('3216162008', '321616', 'Lenggahsari'),
('3216172001', '321617', 'Pantai Mekar'),
('3216172002', '321617', 'Pantai Bahagia'),
('3216172003', '321617', 'Pantai Bakti'),
('3216172004', '321617', 'Pantai Harapanjaya'),
('3216172005', '321617', 'Pantai Sederhana'),
('3216172006', '321617', 'Jayasakti'),
('3216182001', '321618', 'Cijengkol'),
('3216182002', '321618', 'Lubangbuaya'),
('3216182003', '321618', 'Burangkeng'),
('3216182004', '321618', 'Ciledug'),
('3216182005', '321618', 'Cibening'),
('3216182006', '321618', 'Taman Sari'),
('3216182007', '321618', 'Taman Rahayu'),
('3216182008', '321618', 'Cikarageman'),
('3216182009', '321618', 'Ragamanunggal'),
('3216182010', '321618', 'Muktijaya'),
('3216182011', '321618', 'Kertarahayu'),
('3216192001', '321619', 'Cibatu'),
('3216192002', '321619', 'Sukasejati'),
('3216192003', '321619', 'Ciantra'),
('3216192004', '321619', 'Sukadami'),
('3216192005', '321619', 'Sukaresmi'),
('3216192006', '321619', 'Serang'),
('3216192007', '321619', 'Pasirsari'),
('3216202001', '321620', 'Cicau'),
('3216202002', '321620', 'Sukamahi'),
('3216202003', '321620', 'Pasiranji'),
('3216202004', '321620', 'Hegarmukti'),
('3216202005', '321620', 'Jayamukti'),
('3216202006', '321620', 'Pasirtanjung'),
('3216212001', '321621', 'Sukaragam'),
('3216212002', '321621', 'Sirnajaya'),
('3216212003', '321621', 'Sukasari'),
('3216212004', '321621', 'Jayamulya'),
('3216212005', '321621', 'Nagacipta'),
('3216212006', '321621', 'Nagasari'),
('3216212007', '321621', 'Cilangkara'),
('3216212008', '321621', 'Jayasampurna'),
('3216222001', '321622', 'Sirnajati'),
('3216222002', '321622', 'Ridogalih'),
('3216222003', '321622', 'Ridomanah'),
('3216222004', '321622', 'Wibawamulya'),
('3216222005', '321622', 'Cibarusah Kota'),
('3216222006', '321622', 'Cibarusah Jaya'),
('3216222007', '321622', 'Sindangmulya'),
('3216232001', '321623', 'Karangmulya'),
('3216232002', '321623', 'Karangindah'),
('3216232003', '321623', 'Bojongmangu'),
('3216232004', '321623', 'Sukabungah'),
('3216232005', '321623', 'Sukamukti'),
('3216232006', '321623', 'Medalkrisna'),
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
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

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
