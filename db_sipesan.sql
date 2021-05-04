-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2021 at 10:31 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sipesan`
--

-- --------------------------------------------------------

--
-- Table structure for table `sipesan_brosur`
--

CREATE TABLE `sipesan_brosur` (
  `brosur_id` varchar(10) NOT NULL,
  `brosur_keranjang_id` varchar(10) NOT NULL,
  `brosur_ukuran` enum('A4','A5') NOT NULL,
  `brosur_bahan` enum('hvs','konstruk') NOT NULL,
  `brosur_jumlah` int(11) NOT NULL,
  `brosur_total` int(11) NOT NULL,
  `brosur_estimasi` int(11) NOT NULL,
  `brosur_foto` text NOT NULL,
  `brosur_date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sipesan_brosur`
--

INSERT INTO `sipesan_brosur` (`brosur_id`, `brosur_keranjang_id`, `brosur_ukuran`, `brosur_bahan`, `brosur_jumlah`, `brosur_total`, `brosur_estimasi`, `brosur_foto`, `brosur_date_created`) VALUES
('BRC-29881', 'CRT-75430', 'A4', 'hvs', 1, 500000, 10, 'Screenshot_(2).png', '2019-08-11 20:24:41'),
('BRC-30100', 'CRT-75430', 'A5', 'konstruk', 1, 750000, 10, 'Screenshot_(92).png', '2019-08-11 20:28:20'),
('BRC-64497', 'CRT-64497', 'A4', 'konstruk', 1, 750000, 1, 'ILHAM.jpg', '2021-04-18 23:48:17'),
('BRC-97141', 'CRT-97141', 'A4', 'konstruk', 1, 750000, 2, 'LRM_EXPORT_20180817_211729_1.jpg', '2021-04-17 01:19:01');

-- --------------------------------------------------------

--
-- Table structure for table `sipesan_desain`
--

CREATE TABLE `sipesan_desain` (
  `desain_id` varchar(10) CHARACTER SET latin1 NOT NULL,
  `desain_produk_id` varchar(10) CHARACTER SET latin1 NOT NULL,
  `desain_foto` text CHARACTER SET latin1 NOT NULL,
  `desain_komentar` varchar(255) CHARACTER SET latin1 NOT NULL,
  `desain_status` enum('belum','tunggu','selesai') CHARACTER SET latin1 NOT NULL DEFAULT 'belum'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sipesan_desain`
--

INSERT INTO `sipesan_desain` (`desain_id`, `desain_produk_id`, `desain_foto`, `desain_komentar`, `desain_status`) VALUES
('DSN-77851', 'INV-75876', 'Screenshot_7.jpg', '', 'belum'),
('DSN-77976', 'INV-77905', 'Lembar_Pengesahan_Praktik_Industri_2020_Ferdhiawan_Perdana_Putra-1.jpg', '', 'belum'),
('DSN-78850', 'SKR-77898', 'Lembar_Pengesahan_Praktik_Industri_2020_Ferdhiawan_Perdana_Putra-11.jpg', 'CUKUP BAGUS BRO LANJUTKAN TERUS WANI!!!!!!', 'selesai');

-- --------------------------------------------------------

--
-- Table structure for table `sipesan_faktur`
--

CREATE TABLE `sipesan_faktur` (
  `faktur_id` varchar(10) NOT NULL,
  `faktur_keranjang_id` varchar(10) NOT NULL,
  `faktur_bank` enum('bri','bni') NOT NULL,
  `faktur_status` enum('belum','sudah','tunggu') NOT NULL DEFAULT 'belum',
  `faktur_date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sipesan_faktur`
--

INSERT INTO `sipesan_faktur` (`faktur_id`, `faktur_keranjang_id`, `faktur_bank`, `faktur_status`, `faktur_date_created`) VALUES
('INV-01973', 'KLD%20-287', 'bri', 'belum', '2021-04-29 20:12:53'),
('INV-02069', 'KLD%20-287', 'bri', 'belum', '2021-04-29 20:14:29'),
('INV-02143', 'KLD%20-287', 'bni', 'belum', '2021-04-29 20:15:43'),
('INV-03038', 'KLD-02934', 'bri', 'belum', '2021-04-29 20:30:38'),
('INV-03073', 'KLD-03061', 'bri', 'sudah', '2021-04-29 20:31:13'),
('INV-06780', 'CRT-06729', 'bri', 'belum', '2019-08-06 22:53:00'),
('INV-11376', 'CRT-69598', 'bri', 'sudah', '2019-08-02 09:02:56'),
('INV-18741', 'KLD-06899', 'bri', 'belum', '2021-05-01 04:39:01'),
('INV-28434', 'CRT-65796', 'bri', 'sudah', '2021-04-27 20:00:34'),
('INV-30460', 'CRT-75430', 'bri', 'sudah', '2019-08-11 20:34:20'),
('INV-30764', 'CRT-30738', 'bri', 'belum', '2019-08-11 20:39:24'),
('INV-30879', 'CRT-30858', 'bri', 'belum', '2019-08-11 20:41:19'),
('INV-57920', 'CRT-10688', 'bni', 'belum', '2019-08-08 16:52:00'),
('INV-62278', 'CRT-62241', 'bri', 'tunggu', '2021-04-27 01:37:58'),
('INV-62694', 'CRT-62674', 'bni', 'tunggu', '2021-04-27 01:44:54'),
('INV-62937', 'CRT-62925', 'bri', 'tunggu', '2021-04-27 01:48:57'),
('INV-64552', 'CRT-64497', 'bri', 'sudah', '2021-04-18 23:49:12'),
('INV-65758', 'CRT-64771', 'bni', 'belum', '2021-04-27 02:35:58'),
('INV-73209', 'CRT-73166', 'bri', 'sudah', '2019-08-08 21:06:49'),
('INV-75876', 'KLD-75865', 'bri', 'sudah', '2021-05-01 20:31:16'),
('INV-77905', 'CRT-77898', 'bni', 'sudah', '2021-05-01 21:05:05'),
('INV-81280', 'CRT-81166', 'bri', 'belum', '2019-08-12 10:41:20'),
('INV-97155', 'CRT-97141', 'bri', 'belum', '2021-04-17 01:19:15');

-- --------------------------------------------------------

--
-- Table structure for table `sipesan_kalender`
--

CREATE TABLE `sipesan_kalender` (
  `kalender_id` varchar(10) CHARACTER SET latin1 NOT NULL,
  `kalender_keranjang_id` varchar(10) CHARACTER SET latin1 NOT NULL,
  `kalender_ukuran` enum('29 X 42 cm') CHARACTER SET latin1 NOT NULL,
  `kalender_cetakisicover` enum('4/0') CHARACTER SET latin1 NOT NULL,
  `kalender_jumlahhalaman` enum('13','6','4','1') CHARACTER SET latin1 NOT NULL,
  `kalender_packaging` enum('Plastic') CHARACTER SET latin1 NOT NULL,
  `kalender_finishing` enum('Plastic + Hanger') CHARACTER SET latin1 NOT NULL,
  `kalender_jumlah` int(11) NOT NULL,
  `kalender_total` int(11) NOT NULL,
  `kalender_foto` text CHARACTER SET latin1 NOT NULL,
  `kalender_date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sipesan_kalender`
--

INSERT INTO `sipesan_kalender` (`kalender_id`, `kalender_keranjang_id`, `kalender_ukuran`, `kalender_cetakisicover`, `kalender_jumlahhalaman`, `kalender_packaging`, `kalender_finishing`, `kalender_jumlah`, `kalender_total`, `kalender_foto`, `kalender_date_created`) VALUES
('KLD -26337', 'CRT-65796', '29 X 42 cm', '4/0', '13', 'Plastic', 'Plastic + Hanger', 1, 500000, 'Screenshot_32.jpg', '2021-04-27 19:25:37'),
('KLD -28756', 'KLD -28756', '29 X 42 cm', '4/0', '6', 'Plastic', 'Plastic + Hanger', 2, 1500000, 'Screenshot_7.jpg', '2021-04-27 20:05:56'),
('KLD-03061', 'KLD-03061', '29 X 42 cm', '4/0', '13', 'Plastic', 'Plastic + Hanger', 1, 500000, '1000112.jpg', '2021-04-29 20:31:01'),
('KLD-75865', 'KLD-75865', '29 X 42 cm', '4/0', '13', 'Plastic', 'Plastic + Hanger', 1, 500000, 'Screenshot_71.jpg', '2021-05-01 20:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `sipesan_kartu`
--

CREATE TABLE `sipesan_kartu` (
  `kartu_id` varchar(10) NOT NULL,
  `kartu_keranjang_id` varchar(10) NOT NULL,
  `kartu_bahan` enum('biasa','bagus') NOT NULL,
  `kartu_jumlah` int(11) NOT NULL,
  `kartu_estimasi` int(11) NOT NULL,
  `kartu_total` int(11) NOT NULL,
  `kartu_foto` text NOT NULL,
  `kartu_date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sipesan_kartu`
--

INSERT INTO `sipesan_kartu` (`kartu_id`, `kartu_keranjang_id`, `kartu_bahan`, `kartu_jumlah`, `kartu_estimasi`, `kartu_total`, `kartu_foto`, `kartu_date_created`) VALUES
('CRD-24383', 'CRT-75430', 'bagus', 2, 10, 90000, 'Screenshot_(5).png', '2019-08-11 18:53:03'),
('CRD-30738', 'CRT-30738', 'biasa', 1, 2, 35000, 'Screenshot_(6).png', '2019-08-11 20:38:58'),
('CRD-30751', 'CRT-30738', 'bagus', 1, 3, 45000, 'Screenshot_(11).png', '2019-08-11 20:39:11'),
('CRD-30858', 'CRT-30858', 'biasa', 2, 10, 70000, 'Screenshot_(7).png', '2019-08-11 20:40:58'),
('CRD-30868', 'CRT-30858', 'bagus', 1, 12, 45000, 'Screenshot_(7)1.png', '2019-08-11 20:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `sipesan_keranjang`
--

CREATE TABLE `sipesan_keranjang` (
  `keranjang_id` varchar(10) NOT NULL,
  `keranjang_pengguna_id` int(11) NOT NULL,
  `keranjang_total` int(11) NOT NULL,
  `keranjang_status` enum('belum','selesai','bayar_diterima','bayar_menunggu','bayar_verifikasi') NOT NULL DEFAULT 'belum',
  `keranjang_date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sipesan_keranjang`
--

INSERT INTO `sipesan_keranjang` (`keranjang_id`, `keranjang_pengguna_id`, `keranjang_total`, `keranjang_status`, `keranjang_date_created`) VALUES
('CRT-06729', 2, 370000, 'bayar_menunggu', '2019-08-06 22:52:09'),
('CRT-10688', 2, 180000, 'bayar_menunggu', '2019-08-06 23:58:08'),
('CRT-30738', 2, 80000, 'bayar_menunggu', '2019-08-11 20:38:58'),
('CRT-30858', 2, 115000, 'bayar_menunggu', '2019-08-11 20:40:58'),
('CRT-62241', 5, 3990000, 'bayar_menunggu', '2021-04-27 01:37:21'),
('CRT-62427', 1, 600000, 'belum', '2021-04-27 01:40:27'),
('CRT-62674', 5, 720000, 'bayar_menunggu', '2021-04-27 01:44:34'),
('CRT-62925', 5, 75000, 'bayar_menunggu', '2021-04-27 01:48:45'),
('CRT-64497', 5, 750000, 'bayar_menunggu', '2021-04-18 23:48:17'),
('CRT-64771', 5, 10800000, 'bayar_menunggu', '2021-04-27 02:19:31'),
('CRT-65796', 5, 500000, 'bayar_menunggu', '2021-04-27 02:36:36'),
('CRT-69598', 2, 1230000, 'bayar_menunggu', '2019-07-27 02:33:18'),
('CRT-73166', 2, 4500000, 'bayar_menunggu', '2019-08-08 21:06:06'),
('CRT-75430', 2, 4100000, 'bayar_menunggu', '2019-08-08 21:43:50'),
('CRT-77898', 7, 75000, 'bayar_menunggu', '2021-05-01 21:04:58'),
('CRT-81166', 2, 38000, 'bayar_menunggu', '2019-08-12 10:39:26'),
('CRT-97141', 4, 750000, 'bayar_menunggu', '2021-04-17 01:19:01'),
('KLD-02934', 5, 75000, 'bayar_menunggu', '2021-04-29 20:28:54'),
('KLD-03061', 5, 500000, 'bayar_menunggu', '2021-04-29 20:31:01'),
('KLD-06899', 5, 40000, 'bayar_menunggu', '2021-05-01 01:21:39'),
('KLD-75865', 7, 500000, 'bayar_menunggu', '2021-05-01 20:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `sipesan_konfirmasi`
--

CREATE TABLE `sipesan_konfirmasi` (
  `konfirmasi_id` varchar(10) NOT NULL,
  `konfirmasi_faktur_id` varchar(10) NOT NULL,
  `konfirmasi_rekening` varchar(30) NOT NULL,
  `konfirmasi_atas_nama` varchar(50) NOT NULL,
  `konfirmasi_nominal` int(11) NOT NULL,
  `konfirmasi_struk` text NOT NULL,
  `konfirmasi_date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sipesan_konfirmasi`
--

INSERT INTO `sipesan_konfirmasi` (`konfirmasi_id`, `konfirmasi_faktur_id`, `konfirmasi_rekening`, `konfirmasi_atas_nama`, `konfirmasi_nominal`, `konfirmasi_struk`, `konfirmasi_date_created`) VALUES
('CFM-03169', 'INV-03073', '08771231', 'FERDHIAWAN', 500000, '100012.jpg', '2021-04-29 20:32:49'),
('CFM-28454', 'INV-28434', '123123', 'asdasda', 500000, 'Screenshot_7.jpg', '2021-04-27 20:00:54'),
('CFM-32462', 'INV-30460', '123415151', 'Jihad Benastey', 4100000, 'Screenshot_(3).png', '2019-08-11 21:07:42'),
('CFM-62562', 'INV-62278', '0812831273', 'FERDHIAWAN', 3900000, 'Scan_Halaman_Persetujuan_Judul_Tugas_Akhir-1.png', '2021-04-27 01:42:42'),
('CFM-62715', 'INV-62694', '123123123', 'FERDHIAWAN', 720, '10001.jpg', '2021-04-27 01:45:15'),
('CFM-62959', 'INV-62937', '123123123', 'FERDHIAWAN', 75000, '100011.jpg', '2021-04-27 01:49:19'),
('CFM-64586', 'INV-64552', '1', 'ggg', 750000, 'ILHAM.jpg', '2021-04-18 23:49:46'),
('CFM-73287', 'INV-73209', '21312312', 'Randi', 4500000, 'imk_jadwal_test.png', '2019-08-08 21:08:07'),
('CFM-75909', 'INV-75876', '086123', 'nyobi', 500000, 'Screenshot_71.jpg', '2021-05-01 20:31:50'),
('CFM-77926', 'INV-77905', '087711', 'nyobi', 75000, 'Screenshot_72.jpg', '2021-05-01 21:05:26'),
('CFM-95038', 'INV-11376', '11551102648', 'Jihad Benastey', 1230000, '430scuderia.jpg', '2019-08-05 15:50:38');

-- --------------------------------------------------------

--
-- Table structure for table `sipesan_pengguna`
--

CREATE TABLE `sipesan_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_username` varchar(255) NOT NULL,
  `pengguna_password` varchar(255) NOT NULL,
  `pengguna_nama` varchar(255) DEFAULT NULL,
  `pengguna_nomor_hp` varchar(20) DEFAULT NULL,
  `pengguna_email` varchar(255) DEFAULT NULL,
  `pengguna_level` enum('administrator','pemesan') NOT NULL,
  `pengguna_date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sipesan_pengguna`
--

INSERT INTO `sipesan_pengguna` (`pengguna_id`, `pengguna_username`, `pengguna_password`, `pengguna_nama`, `pengguna_nomor_hp`, `pengguna_email`, `pengguna_level`, `pengguna_date_created`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', NULL, NULL, NULL, 'administrator', '2019-07-18 16:35:32'),
(2, 'pemesan', 'd58910536eed6faa657ba7dbc012534c', 'Randi', '081234567890', 'pemesan@gmail.com', 'pemesan', '2019-07-24 11:05:24'),
(3, 'testing', '7f2ababa423061c509f4923dd04b6cf1', 'nama test', '1234567', 'testing@gmail.com', 'pemesan', '2019-08-11 23:10:40'),
(4, 'coba', 'c3ec0f7b054e729c5a716c8125839829', 'coba', '08123123123', 'coba@gmail.com', 'pemesan', '2021-04-17 01:16:42'),
(5, 'ferdhi', 'c323f6a341cc7009960bbc0e7caf895a', 'ferdhi', '081231', 'ferdhi', 'pemesan', '2021-04-18 23:44:12'),
(6, 'hafiz.18023@mhs.unesa.ac.id', '202cb962ac59075b964b07152d234b70', 'hara', '085892247762', 'hafizadinata69@gmail.com', 'pemesan', '2021-04-29 04:27:49'),
(7, 'nyobi', '70c5a7cebf7f4b90afeb5b48e3c0b5df', 'nyobi', '087711134877', 'ferdhi1515@gmail.com', 'pemesan', '2021-05-01 20:30:45');

-- --------------------------------------------------------

--
-- Table structure for table `sipesan_spanduk`
--

CREATE TABLE `sipesan_spanduk` (
  `spanduk_id` varchar(10) NOT NULL,
  `spanduk_keranjang_id` varchar(10) DEFAULT NULL,
  `spanduk_panjang` double NOT NULL,
  `spanduk_lebar` double NOT NULL,
  `spanduk_bahan` enum('biasa','menengah','bagus') NOT NULL,
  `spanduk_jumlah` int(11) NOT NULL,
  `spanduk_estimasi` int(11) NOT NULL,
  `spanduk_total` int(11) NOT NULL,
  `spanduk_foto` text NOT NULL,
  `spanduk_date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sipesan_spanduk`
--

INSERT INTO `sipesan_spanduk` (`spanduk_id`, `spanduk_keranjang_id`, `spanduk_panjang`, `spanduk_lebar`, `spanduk_bahan`, `spanduk_jumlah`, `spanduk_estimasi`, `spanduk_total`, `spanduk_foto`, `spanduk_date_created`) VALUES
('SDK-06729', 'CRT-06729', 2, 2, 'biasa', 2, 10, 160000, 'imk_jadwal_test.png', '2019-08-06 22:52:09'),
('SDK-06767', 'CRT-06729', 3, 1, 'bagus', 2, 3, 210000, 'Screenshot_(6)1.png', '2019-08-06 22:52:47'),
('SDK-10688', 'CRT-10688', 3, 1, 'menengah', 2, 12, 180000, 'Screenshot_(6)2.png', '2019-08-06 23:58:08'),
('SDK-18731', 'KLD-06899', 1, 1, 'biasa', 2, 1, 40000, 'Screenshot_7.jpg', '2021-05-01 04:38:51'),
('SDK-62674', 'CRT-62674', 2, 3, 'menengah', 4, 1, 720000, 'Scan_Halaman_Persetujuan_Judul_Tugas_Akhir-1.png', '2021-04-27 01:44:34'),
('SDK-69598', 'CRT-69598', 2, 3, 'menengah', 1, 12, 180000, 'Screenshot_(6).png', '2019-07-27 02:33:18'),
('SDK-69692', 'CRT-69598', 5, 7, 'menengah', 1, 4, 1050000, 'Screenshot_(1)1.png', '2019-07-27 02:34:52'),
('SDK-73166', 'CRT-73166', 10, 5, 'menengah', 3, 10, 4500000, 'imk_jadwal_test1.png', '2019-08-08 21:06:06'),
('SDK-75430', 'CRT-75430', 10, 5, 'biasa', 2, 10, 2000000, 'Screenshot_(3).png', '2019-08-08 21:43:50'),
('SDK-81225', 'CRT-81166', 1, 0.4, 'biasa', 1, 10, 8000, 'Screenshot_(1)2.png', '2019-08-12 10:40:25');

-- --------------------------------------------------------

--
-- Table structure for table `sipesan_stiker`
--

CREATE TABLE `sipesan_stiker` (
  `stiker_id` varchar(10) NOT NULL,
  `stiker_keranjang_id` varchar(10) NOT NULL,
  `stiker_panjang` double NOT NULL,
  `stiker_lebar` double NOT NULL,
  `stiker_bahan` enum('biasa','bagus') NOT NULL,
  `stiker_jumlah` int(11) NOT NULL,
  `stiker_estimasi` int(11) NOT NULL,
  `stiker_total` int(11) NOT NULL,
  `stiker_foto` text NOT NULL,
  `stiker_date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sipesan_stiker`
--

INSERT INTO `sipesan_stiker` (`stiker_id`, `stiker_keranjang_id`, `stiker_panjang`, `stiker_lebar`, `stiker_bahan`, `stiker_jumlah`, `stiker_estimasi`, `stiker_total`, `stiker_foto`, `stiker_date_created`) VALUES
('SKR-03028', 'KLD-02934', 1, 1, 'biasa', 1, 1, 75000, 'Scan_Halaman_Persetujuan_Judul_Tugas_Akhir-11.png', '2021-04-29 20:30:28'),
('SKR-22758', 'CRT-75430', 2, 2, 'bagus', 2, 10, 760000, 'Screenshot_(3).png', '2019-08-11 18:25:58'),
('SKR-62241', 'CRT-62241', 6, 7, 'bagus', 1, 7, 3990000, '0001.jpg', '2021-04-27 01:37:21'),
('SKR-62427', 'CRT-62427', 2, 2, 'biasa', 2, 1, 600000, '00011.jpg', '2021-04-27 01:40:27'),
('SKR-62925', 'CRT-62925', 1, 1, 'biasa', 1, 1, 75000, '10001.jpg', '2021-04-27 01:48:45'),
('SKR-65731', 'CRT-64771', 12, 12, 'biasa', 1, 1, 10800000, 'Scan_Halaman_Persetujuan_Judul_Tugas_Akhir-1.png', '2021-04-27 02:35:31'),
('SKR-77898', 'CRT-77898', 1, 1, 'biasa', 1, 1, 75000, 'Screenshot_7.jpg', '2021-05-01 21:04:58'),
('SKR-81166', 'CRT-81166', 1, 0.4, 'biasa', 1, 10, 30000, 'Screenshot_(2)1.png', '2019-08-12 10:39:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sipesan_brosur`
--
ALTER TABLE `sipesan_brosur`
  ADD PRIMARY KEY (`brosur_id`),
  ADD KEY `brosur_keranjang_id` (`brosur_keranjang_id`);

--
-- Indexes for table `sipesan_desain`
--
ALTER TABLE `sipesan_desain`
  ADD PRIMARY KEY (`desain_id`) USING BTREE,
  ADD KEY `desain_produk_id` (`desain_produk_id`) USING BTREE;

--
-- Indexes for table `sipesan_faktur`
--
ALTER TABLE `sipesan_faktur`
  ADD PRIMARY KEY (`faktur_id`),
  ADD KEY `faktur_keranjang_id` (`faktur_keranjang_id`);

--
-- Indexes for table `sipesan_kalender`
--
ALTER TABLE `sipesan_kalender`
  ADD PRIMARY KEY (`kalender_id`) USING BTREE,
  ADD KEY `kalender_keranjang_id` (`kalender_keranjang_id`) USING BTREE;

--
-- Indexes for table `sipesan_kartu`
--
ALTER TABLE `sipesan_kartu`
  ADD PRIMARY KEY (`kartu_id`),
  ADD KEY `kartu_keranjang_id` (`kartu_keranjang_id`);

--
-- Indexes for table `sipesan_keranjang`
--
ALTER TABLE `sipesan_keranjang`
  ADD PRIMARY KEY (`keranjang_id`),
  ADD KEY `keranjang_pengguna_id` (`keranjang_pengguna_id`);

--
-- Indexes for table `sipesan_konfirmasi`
--
ALTER TABLE `sipesan_konfirmasi`
  ADD PRIMARY KEY (`konfirmasi_id`),
  ADD KEY `konfirmasi_faktur_id` (`konfirmasi_faktur_id`);

--
-- Indexes for table `sipesan_pengguna`
--
ALTER TABLE `sipesan_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indexes for table `sipesan_spanduk`
--
ALTER TABLE `sipesan_spanduk`
  ADD PRIMARY KEY (`spanduk_id`),
  ADD KEY `spanduk_keranjang_id` (`spanduk_keranjang_id`);

--
-- Indexes for table `sipesan_stiker`
--
ALTER TABLE `sipesan_stiker`
  ADD PRIMARY KEY (`stiker_id`),
  ADD KEY `stiker_keranjang_id` (`stiker_keranjang_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sipesan_pengguna`
--
ALTER TABLE `sipesan_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
