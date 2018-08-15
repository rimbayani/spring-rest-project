-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2018 at 09:43 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `indonesia_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `regency_id` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kabupaten_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `regency_id`, `name`, `kabupaten_id`) VALUES
('3101010', '3101', 'KEPULAUAN SERIBU SELATAN', NULL),
('3101020', '3101', 'KEPULAUAN SERIBU UTARA', NULL),
('3171010', '3171', 'JAGAKARSA', NULL),
('3171020', '3171', 'PASAR MINGGU', NULL),
('3171030', '3171', 'CILANDAK', NULL),
('3171040', '3171', 'PESANGGRAHAN', NULL),
('3171050', '3171', 'KEBAYORAN LAMA', NULL),
('3171060', '3171', 'KEBAYORAN BARU', NULL),
('3171070', '3171', 'MAMPANG PRAPATAN', NULL),
('3171080', '3171', 'PANCORAN', NULL),
('3171090', '3171', 'TEBET', NULL),
('3171100', '3171', 'SETIA BUDI', NULL),
('3172010', '3172', 'PASAR REBO', NULL),
('3172020', '3172', 'CIRACAS', NULL),
('3172030', '3172', 'CIPAYUNG', NULL),
('3172040', '3172', 'MAKASAR', NULL),
('3172050', '3172', 'KRAMAT JATI', NULL),
('3172060', '3172', 'JATINEGARA', NULL),
('3172070', '3172', 'DUREN SAWIT', NULL),
('3172080', '3172', 'CAKUNG', NULL),
('3172090', '3172', 'PULO GADUNG', NULL),
('3172100', '3172', 'MATRAMAN', NULL),
('3173010', '3173', 'TANAH ABANG', NULL),
('3173020', '3173', 'MENTENG', NULL),
('3173030', '3173', 'SENEN', NULL),
('3173040', '3173', 'JOHAR BARU', NULL),
('3173050', '3173', 'CEMPAKA PUTIH', NULL),
('3173060', '3173', 'KEMAYORAN', NULL),
('3173070', '3173', 'SAWAH BESAR', NULL),
('3173080', '3173', 'GAMBIR', NULL),
('3174010', '3174', 'KEMBANGAN', NULL),
('3174020', '3174', 'KEBON JERUK', NULL),
('3174030', '3174', 'PALMERAH', NULL),
('3174040', '3174', 'GROGOL PETAMBURAN', NULL),
('3174050', '3174', 'TAMBORA', NULL),
('3174060', '3174', 'TAMAN SARI', NULL),
('3174070', '3174', 'CENGKARENG', NULL),
('3174080', '3174', 'KALI DERES', NULL),
('3175010', '3175', 'PENJARINGAN', NULL),
('3175020', '3175', 'PADEMANGAN', NULL),
('3175030', '3175', 'TANJUNG PRIOK', NULL),
('3175040', '3175', 'KOJA', NULL),
('3175050', '3175', 'KELAPA GADING', NULL),
('3175060', '3175', 'CILINCING', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`) VALUES
('31', 'DKI JAKARTA');

-- --------------------------------------------------------

--
-- Table structure for table `regencies`
--

CREATE TABLE `regencies` (
  `id` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `province_id` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `regencies`
--

INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES
('3101', '31', 'KABUPATEN KEPULAUAN SERIBU'),
('3171', '31', 'KOTA JAKARTA SELATAN'),
('3172', '31', 'KOTA JAKARTA TIMUR'),
('3173', '31', 'KOTA JAKARTA PUSAT'),
('3174', '31', 'KOTA JAKARTA BARAT'),
('3175', '31', 'KOTA JAKARTA UTARA');

-- --------------------------------------------------------

--
-- Table structure for table `villages`
--

CREATE TABLE `villages` (
  `id` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `district_id` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `villages`
--

INSERT INTO `villages` (`id`, `district_id`, `name`) VALUES
('3101010001', '3101010', 'PULAU TIDUNG'),
('3101010002', '3101010', 'PULAU PARI'),
('3101010003', '3101010', 'PULAU UNTUNG JAWA'),
('3101020001', '3101020', 'PULAU PANGGANG'),
('3101020002', '3101020', 'PULAU KELAPA'),
('3101020003', '3101020', 'PULAU HARAPAN'),
('3171010001', '3171010', 'CIPEDAK'),
('3171010002', '3171010', 'SRENGSENG SAWAH'),
('3171010003', '3171010', 'CIGANJUR'),
('3171010004', '3171010', 'JAGAKARSA'),
('3171010005', '3171010', 'LENTENG AGUNG'),
('3171010006', '3171010', 'TANJUNG BARAT'),
('3171020001', '3171020', 'CILANDAK TIMUR'),
('3171020002', '3171020', 'RAGUNAN'),
('3171020003', '3171020', 'KEBAGUSAN'),
('3171020004', '3171020', 'PASAR MINGGU'),
('3171020005', '3171020', 'JATI PADANG'),
('3171020006', '3171020', 'PEJATEN BARAT'),
('3171020007', '3171020', 'PEJATEN TIMUR'),
('3171030001', '3171030', 'LEBAK BULUS'),
('3171030002', '3171030', 'PONDOK LABU'),
('3171030003', '3171030', 'CILANDAK BARAT'),
('3171030004', '3171030', 'GANDARIA SELATAN'),
('3171030005', '3171030', 'CIPETE SELATAN'),
('3171040001', '3171040', 'BINTARO'),
('3171040002', '3171040', 'PESANGGRAHAN'),
('3171040003', '3171040', 'ULUJAMI'),
('3171040004', '3171040', 'PETUKANGAN SELATAN'),
('3171040005', '3171040', 'PETUKANGAN UTARA'),
('3171050001', '3171050', 'PONDOK PINANG'),
('3171050002', '3171050', 'KEBAYORAN LAMA SELATAN'),
('3171050003', '3171050', 'KEBAYORAN LAMA UTARA'),
('3171050004', '3171050', 'CIPULIR'),
('3171050005', '3171050', 'GROGOL SELATAN'),
('3171050006', '3171050', 'GROGOL UTARA'),
('3171060001', '3171060', 'GANDARIA UTARA'),
('3171060002', '3171060', 'CIPETE UTARA'),
('3171060003', '3171060', 'PULO'),
('3171060004', '3171060', 'PETOGOGAN'),
('3171060005', '3171060', 'MELAWAI'),
('3171060006', '3171060', 'KRAMAT PELA'),
('3171060007', '3171060', 'GUNUNG'),
('3171060008', '3171060', 'SELONG'),
('3171060009', '3171060', 'RAWA BARAT'),
('3171060010', '3171060', 'SENAYAN'),
('3171070001', '3171070', 'BANGKA'),
('3171070002', '3171070', 'PELA MAMPANG'),
('3171070003', '3171070', 'TEGAL PARANG'),
('3171070004', '3171070', 'MAMPANG PRAPATAN'),
('3171070005', '3171070', 'KUNINGAN BARAT'),
('3171080001', '3171080', 'KALIBATA'),
('3171080002', '3171080', 'RAWAJATI'),
('3171080003', '3171080', 'DUREN TIGA'),
('3171080004', '3171080', 'PANCORAN'),
('3171080005', '3171080', 'PENGADEGAN'),
('3171080006', '3171080', 'CIKOKO'),
('3171090001', '3171090', 'MENTENG DALAM'),
('3171090002', '3171090', 'TEBET BARAT'),
('3171090003', '3171090', 'TEBET TIMUR'),
('3171090004', '3171090', 'KEBON BARU'),
('3171090005', '3171090', 'BUKIT DURI'),
('3171090006', '3171090', 'MANGGARAI SELATAN'),
('3171090007', '3171090', 'MANGGARAI'),
('3171100001', '3171100', 'KARET SEMANGGI'),
('3171100002', '3171100', 'KUNINGAN TIMUR'),
('3171100003', '3171100', 'KARET KUNINGAN'),
('3171100004', '3171100', 'KARET'),
('3171100005', '3171100', 'MENTENG ATAS'),
('3171100006', '3171100', 'PASAR MANGGIS'),
('3171100007', '3171100', 'GUNTUR'),
('3171100008', '3171100', 'SETIA BUDI'),
('3172010001', '3172010', 'PEKAYON'),
('3172010002', '3172010', 'KALISARI'),
('3172010003', '3172010', 'BARU'),
('3172010004', '3172010', 'CIJANTUNG'),
('3172010005', '3172010', 'GEDONG'),
('3172020001', '3172020', 'CIBUBUR'),
('3172020002', '3172020', 'KELAPA DUA WETAN'),
('3172020003', '3172020', 'CIRACAS'),
('3172020004', '3172020', 'SUSUKAN'),
('3172020005', '3172020', 'RAMBUTAN'),
('3172030001', '3172030', 'PONDOK RANGGON'),
('3172030002', '3172030', 'CILANGKAP'),
('3172030003', '3172030', 'MUNJUL'),
('3172030004', '3172030', 'CIPAYUNG'),
('3172030005', '3172030', 'SETU'),
('3172030006', '3172030', 'BAMBU APUS'),
('3172030007', '3172030', 'CEGER'),
('3172030008', '3172030', 'LUBANG BUAYA'),
('3172040001', '3172040', 'PINANG RANTI'),
('3172040002', '3172040', 'MAKASAR'),
('3172040003', '3172040', 'KEBON PALA'),
('3172040004', '3172040', 'HALIM PERDANA KUSUMAH'),
('3172040005', '3172040', 'CIPINANG MELAYU'),
('3172050001', '3172050', 'BALE KAMBANG'),
('3172050002', '3172050', 'BATU AMPAR'),
('3172050003', '3172050', 'KAMPUNG TENGAH'),
('3172050004', '3172050', 'DUKUH'),
('3172050005', '3172050', 'KRAMAT JATI'),
('3172050006', '3172050', 'CILILITAN'),
('3172050007', '3172050', 'CAWANG'),
('3172060001', '3172060', 'BIDARA CINA'),
('3172060002', '3172060', 'CIPINANG CEMPEDAK'),
('3172060003', '3172060', 'CIPINANG BESAR SELATAN'),
('3172060004', '3172060', 'CIPINANG MUARA'),
('3172060005', '3172060', 'CIPINANG BESAR UTARA'),
('3172060006', '3172060', 'RAWA BUNGA'),
('3172060007', '3172060', 'BALI MESTER'),
('3172060008', '3172060', 'KAMPUNG MELAYU'),
('3172070001', '3172070', 'PONDOK BAMBU'),
('3172070002', '3172070', 'DUREN SAWIT'),
('3172070003', '3172070', 'PONDOK KELAPA'),
('3172070004', '3172070', 'PONDOK KOPI'),
('3172070005', '3172070', 'MALAKA JAYA'),
('3172070006', '3172070', 'MALAKA SARI'),
('3172070007', '3172070', 'KLENDER'),
('3172080001', '3172080', 'JATINEGARA'),
('3172080002', '3172080', 'PENGGILINGAN'),
('3172080003', '3172080', 'PULO GEBANG'),
('3172080004', '3172080', 'UJUNG MENTENG'),
('3172080005', '3172080', 'CAKUNG TIMUR'),
('3172080006', '3172080', 'CAKUNG BARAT'),
('3172080007', '3172080', 'RAWA TERATE'),
('3172090001', '3172090', 'PISANGAN TIMUR'),
('3172090002', '3172090', 'CIPINANG'),
('3172090003', '3172090', 'JATINEGARA KAUM'),
('3172090004', '3172090', 'JATI'),
('3172090005', '3172090', 'RAWAMANGUN'),
('3172090006', '3172090', 'KAYU PUTIH'),
('3172090007', '3172090', 'PULO GADUNG'),
('3172100001', '3172100', 'KEBON MANGGIS'),
('3172100002', '3172100', 'PAL MERIEM'),
('3172100003', '3172100', 'PISANGAN BARU'),
('3172100004', '3172100', 'KAYU MANIS'),
('3172100005', '3172100', 'UTAN KAYU SELATAN'),
('3172100006', '3172100', 'UTAN KAYU UTARA'),
('3173010001', '3173010', 'GELORA'),
('3173010002', '3173010', 'BENDUNGAN HILIR'),
('3173010003', '3173010', 'KARET TENGSIN'),
('3173010004', '3173010', 'KEBON MELATI'),
('3173010005', '3173010', 'PETAMBURAN'),
('3173010006', '3173010', 'KEBON KACANG'),
('3173010007', '3173010', 'KAMPUNG BALI'),
('3173020001', '3173020', 'MENTENG'),
('3173020002', '3173020', 'PEGANGSAAN'),
('3173020003', '3173020', 'CIKINI'),
('3173020004', '3173020', 'GONDANGDIA'),
('3173020005', '3173020', 'KEBON SIRIH'),
('3173030001', '3173030', 'KENARI'),
('3173030002', '3173030', 'PASEBAN'),
('3173030003', '3173030', 'KRAMAT'),
('3173030004', '3173030', 'KWITANG'),
('3173030005', '3173030', 'SENEN'),
('3173030006', '3173030', 'BUNGUR'),
('3173040001', '3173040', 'JOHAR BARU'),
('3173040002', '3173040', 'KAMPUNG RAWA'),
('3173040003', '3173040', 'TANAH TINGGI'),
('3173040004', '3173040', 'GALUR'),
('3173050001', '3173050', 'RAWA SARI'),
('3173050002', '3173050', 'CEMPAKA PUTIH TIMUR'),
('3173050003', '3173050', 'CEMPAKA PUTIH BARAT'),
('3173060001', '3173060', 'HARAPAN MULYA'),
('3173060002', '3173060', 'CEMPAKA BARU'),
('3173060003', '3173060', 'SUMUR BATU'),
('3173060004', '3173060', 'SERDANG'),
('3173060005', '3173060', 'UTAN PANJANG'),
('3173060006', '3173060', 'KEBON KOSONG'),
('3173060007', '3173060', 'KEMAYORAN'),
('3173060008', '3173060', 'GUNUNG SAHARI SELATAN'),
('3173070001', '3173070', 'PASAR BARU'),
('3173070002', '3173070', 'GUNUNG SAHARI UTARA'),
('3173070003', '3173070', 'KARTINI'),
('3173070004', '3173070', 'KARANG ANYAR'),
('3173070005', '3173070', 'MANGGA DUA SELATAN'),
('3173080001', '3173080', 'CIDENG'),
('3173080002', '3173080', 'PETOJO SELATAN'),
('3173080003', '3173080', 'GAMBIR'),
('3173080004', '3173080', 'KEBON KELAPA'),
('3173080005', '3173080', 'PETOJO UTARA'),
('3173080006', '3173080', 'DURI PULO'),
('3174010001', '3174010', 'JOGLO'),
('3174010002', '3174010', 'SRENGSENG'),
('3174010003', '3174010', 'MERUYA SELATAN'),
('3174010004', '3174010', 'MERUYA UTARA'),
('3174010005', '3174010', 'KEMBANGAN SELATAN'),
('3174010006', '3174010', 'KEMBANGAN UTARA'),
('3174020001', '3174020', 'SUKABUMI SELATAN'),
('3174020002', '3174020', 'SUKABUMI UTARA'),
('3174020003', '3174020', 'KELAPA DUA'),
('3174020004', '3174020', 'KEBON JERUK'),
('3174020005', '3174020', 'DURI KEPA'),
('3174020006', '3174020', 'KEDOYA SELATAN'),
('3174020007', '3174020', 'KEDOYA UTARA'),
('3174030001', '3174030', 'PALMERAH'),
('3174030002', '3174030', 'SLIPI'),
('3174030003', '3174030', 'KEMANGGISAN'),
('3174030004', '3174030', 'KOTA BAMBU UTARA'),
('3174030005', '3174030', 'KOTA BAMBU SELATAN'),
('3174030006', '3174030', 'JATI PULO'),
('3174040001', '3174040', 'TANJUNG DUREN UTARA'),
('3174040002', '3174040', 'TANJUNG DUREN SELATAN'),
('3174040003', '3174040', 'TOMANG'),
('3174040004', '3174040', 'GROGOL'),
('3174040005', '3174040', 'JELAMBAR'),
('3174040006', '3174040', 'WIJAYA KESUMA'),
('3174040007', '3174040', 'JELAMBAR BARU'),
('3174050001', '3174050', 'KALIANYAR'),
('3174050002', '3174050', 'DURI SELATAN'),
('3174050003', '3174050', 'TANAH SEREAL'),
('3174050004', '3174050', 'DURI UTARA'),
('3174050005', '3174050', 'KRENDANG'),
('3174050006', '3174050', 'JEMBATAN BESI'),
('3174050007', '3174050', 'ANGKE'),
('3174050008', '3174050', 'JEMBATAN LIMA'),
('3174050009', '3174050', 'TAMBORA'),
('3174050010', '3174050', 'ROA MALAKA'),
('3174050011', '3174050', 'PEKOJAN'),
('3174060001', '3174060', 'KRUKUT'),
('3174060002', '3174060', 'MAPHAR'),
('3174060003', '3174060', 'TAMAN SARI'),
('3174060004', '3174060', 'TANGKI'),
('3174060005', '3174060', 'MANGGA BESAR'),
('3174060006', '3174060', 'KEAGUNGAN'),
('3174060007', '3174060', 'GLODOK'),
('3174060008', '3174060', 'PINANGSIA'),
('3174070001', '3174070', 'DURI KOSAMBI'),
('3174070002', '3174070', 'RAWA BUAYA'),
('3174070003', '3174070', 'KEDAUNG KALI ANGKE'),
('3174070004', '3174070', 'KAPUK'),
('3174070005', '3174070', 'CENGKARENG TIMUR'),
('3174070006', '3174070', 'CENGKARENG BARAT'),
('3174080001', '3174080', 'SEMANAN'),
('3174080002', '3174080', 'KALIDERES'),
('3174080003', '3174080', 'PEGADUNGAN'),
('3174080004', '3174080', 'TEGAL ALUR'),
('3174080005', '3174080', 'KAMAL'),
('3175010001', '3175010', 'KAMAL MUARA'),
('3175010002', '3175010', 'KAPUK MUARA'),
('3175010003', '3175010', 'PEJAGALAN'),
('3175010004', '3175010', 'PENJARINGAN'),
('3175010005', '3175010', 'PLUIT'),
('3175020001', '3175020', 'PADEMANGAN BARAT'),
('3175020002', '3175020', 'PADEMANGAN TIMUR'),
('3175020003', '3175020', 'ANCOL'),
('3175030001', '3175030', 'SUNTER AGUNG'),
('3175030002', '3175030', 'SUNTER JAYA'),
('3175030003', '3175030', 'PAPANGO'),
('3175030004', '3175030', 'WARAKAS'),
('3175030005', '3175030', 'SUNGAI BAMBU'),
('3175030006', '3175030', 'KEBON BAWANG'),
('3175030007', '3175030', 'TANJUNG PRIUK'),
('3175040001', '3175040', 'RAWABADAK SELATAN'),
('3175040002', '3175040', 'TUGU SELATAN'),
('3175040003', '3175040', 'TUGU UTARA'),
('3175040004', '3175040', 'LAGOA'),
('3175040005', '3175040', 'RAWABADAK UTARA'),
('3175040006', '3175040', 'KOJA'),
('3175050001', '3175050', 'KELAPA GADING BARAT'),
('3175050002', '3175050', 'KELAPA GADING TIMUR'),
('3175050003', '3175050', 'PEGANGSAAN DUA'),
('3175060001', '3175060', 'SUKA PURA'),
('3175060002', '3175060', 'ROROTAN'),
('3175060003', '3175060', 'MARUNDA'),
('3175060004', '3175060', 'CILINCING'),
('3175060005', '3175060', 'SEMPER TIMUR'),
('3175060006', '3175060', 'SEMPER BARAT'),
('3175060007', '3175060', 'KALI BARU');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_id_index` (`regency_id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regencies`
--
ALTER TABLE `regencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regencies_province_id_index` (`province_id`);

--
-- Indexes for table `villages`
--
ALTER TABLE `villages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `villages_district_id_index` (`district_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `FK25nj353bjkatyt9y6r6obu59r` FOREIGN KEY (`regency_id`) REFERENCES `regencies` (`id`),
  ADD CONSTRAINT `districts_regency_id_foreign` FOREIGN KEY (`regency_id`) REFERENCES `regencies` (`id`);

--
-- Constraints for table `regencies`
--
ALTER TABLE `regencies`
  ADD CONSTRAINT `FKa03h2v730k7y47ekehmgxav8d` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`),
  ADD CONSTRAINT `FKlmu0eahsm9kphakmc0qc6i92r` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`),
  ADD CONSTRAINT `regencies_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`);

--
-- Constraints for table `villages`
--
ALTER TABLE `villages`
  ADD CONSTRAINT `villages_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;