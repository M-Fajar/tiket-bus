-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2021 at 07:08 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtiket`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_access_menu`
--

CREATE TABLE `tbl_access_menu` (
  `kd_access_menu` int(11) DEFAULT NULL,
  `kd_level` int(11) DEFAULT NULL,
  `kd_menu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_access_menu`
--

INSERT INTO `tbl_access_menu` (`kd_access_menu`, `kd_level`, `kd_menu`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(1, 1, 1),
(2, 1, 2),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `kd_admin` varchar(50) NOT NULL,
  `nama_admin` varchar(35) DEFAULT NULL,
  `username_admin` varchar(30) DEFAULT NULL,
  `password_admin` varchar(256) DEFAULT NULL,
  `img_admin` varchar(35) DEFAULT NULL,
  `email_admin` varchar(35) DEFAULT NULL,
  `level_admin` varchar(12) DEFAULT NULL,
  `status_admin` int(1) DEFAULT NULL,
  `date_create_admin` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`kd_admin`, `nama_admin`, `username_admin`, `password_admin`, `img_admin`, `email_admin`, `level_admin`, `status_admin`, `date_create_admin`) VALUES
('ADM0001', 'Administrator', 'admin', '$2y$10$v0gb1WCvbp6/oUKEJEy3l.AQAor1Rzb7rDRWVz1g3kmHGonxlPiui', 'assets/backend/img/default.png', 'adm@gmail.com', '2', 1, '1552276812'),
('ADM0003', 'Muhammad Fajar Santoso', 'owner', '$2y$10$v25.H4XMgDztA2NmxeJQSeaRl2nKboXeRTo1BjPe37R0JG3rXraZG', 'assets/backend/img/default.png', 'owner@gmail.com', '1', 1, '1552819095');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `kd_bank` varchar(50) NOT NULL,
  `nasabah_bank` varchar(50) DEFAULT NULL,
  `nama_bank` varchar(50) DEFAULT NULL,
  `nomrek_bank` varchar(50) DEFAULT NULL,
  `photo_bank` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`kd_bank`, `nasabah_bank`, `nama_bank`, `nomrek_bank`, `photo_bank`) VALUES
('BNK0001', 'Muhammad Fajar Santoso', 'BCA', '5490252063', 'assets/frontend/img/bank/bca-icon.jpg'),
('BNK0002', 'Muhammad Fajar Santoso', 'MANDIRI', '6666666666', 'assets/frontend/img/bank/mandiri-icon.jpg'),
('BNK0003', 'Muhammad Fajar Santoso', 'BRI', '7777777777', 'assets/frontend/img/bank/bri-icon.jpg'),
('BNK0004', 'Muhammad Fajar Santoso', 'BNI', '8888888888', 'assets/frontend/img/bank/bni-icon.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bus`
--

CREATE TABLE `tbl_bus` (
  `kd_bus` varchar(50) NOT NULL,
  `nama_bus` varchar(50) DEFAULT NULL,
  `plat_bus` varchar(50) DEFAULT NULL,
  `kapasitas_bus` int(13) DEFAULT NULL,
  `status_bus` int(1) DEFAULT NULL,
  `desc_bus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bus`
--

INSERT INTO `tbl_bus` (`kd_bus`, `nama_bus`, `plat_bus`, `kapasitas_bus`, `status_bus`, `desc_bus`) VALUES
('B001', 'JKT1', 'B 4514 BLN', 19, 1, '--'),
('B002', 'JKT2', 'B 4514 BLN', 19, 1, '--'),
('B003', 'BDG1', 'B 4514 BLN', 19, 1, '--'),
('B004', 'BDG2', 'B 4514 BLN', 19, 1, '--'),
('B005', 'BDG3', 'B 4561 BLN', 19, 1, '--'),
('B006', 'JKT3', 'B 1234 BLN', 19, 1, '--');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jadwal`
--

CREATE TABLE `tbl_jadwal` (
  `kd_jadwal` varchar(50) NOT NULL,
  `kd_bus` varchar(50) DEFAULT NULL,
  `kd_tujuan` varchar(50) DEFAULT NULL,
  `kd_asal` varchar(50) DEFAULT NULL,
  `wilayah_jadwal` varchar(50) DEFAULT NULL,
  `jam_berangkat_jadwal` time DEFAULT NULL,
  `jam_tiba_jadwal` time DEFAULT NULL,
  `harga_jadwal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jadwal`
--

INSERT INTO `tbl_jadwal` (`kd_jadwal`, `kd_bus`, `kd_tujuan`, `kd_asal`, `wilayah_jadwal`, `jam_berangkat_jadwal`, `jam_tiba_jadwal`, `harga_jadwal`) VALUES
('J0001', 'B003', 'TJ002', 'TJ001', 'bandung', '07:00:00', '10:30:00', '112500'),
('J0002', 'B004', 'TJ005', 'TJ003', 'bandung', '12:00:00', '15:45:00', '123000'),
('J0003', 'B005', 'TJ006', 'TJ004', 'bandung', '16:00:00', '19:00:00', '134000'),
('J0004', 'B001', 'TJ001', 'TJ002', 'jakarta', '07:30:00', '10:00:00', '145000'),
('J0005', 'B002', 'TJ003', 'TJ005', 'jakarta', '11:00:00', '03:00:00', '132000'),
('J0006', 'B006', 'TJ004', 'TJ006', 'jakarta', '17:00:00', '20:00:00', '128000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_konfirmasi`
--

CREATE TABLE `tbl_konfirmasi` (
  `kd_konfirmasi` varchar(50) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `nama_konfirmasi` varchar(50) DEFAULT NULL,
  `nama_bank_konfirmasi` varchar(50) DEFAULT NULL,
  `norek_konfirmasi` varchar(50) DEFAULT NULL,
  `total_konfirmasi` varchar(50) DEFAULT NULL,
  `photo_konfirmasi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_konfirmasi`
--

INSERT INTO `tbl_konfirmasi` (`kd_konfirmasi`, `kd_order`, `nama_konfirmasi`, `nama_bank_konfirmasi`, `norek_konfirmasi`, `total_konfirmasi`, `photo_konfirmasi`) VALUES
('KF0001', 'ORD00001', 'najsdkkasdn', 'BCA', '213123', '536000', '/assets/frontend/upload/payment/10__home.png'),
('KF0002', 'ORD00002', 'test', 'BCA', '23456543', '528000', '/assets/frontend/upload/payment/Penguins.jpg'),
('KF0003', 'ORD00003', 'adsdsa', 'BCA', '12', '290000', '/assets/frontend/upload/payment/14__laporan_transaksi1.png'),
('KF0004', 'ORD00006', 'm', 'BRI', '12345678', '132000', '/assets/frontend/upload/payment/BLACK.PNG'),
('KF0005', 'ORD00009', 'RU', 'BRI', '34567890', '112500', '/assets/frontend/upload/payment/LOGO_ORI.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level`
--

CREATE TABLE `tbl_level` (
  `kd_level` int(11) NOT NULL,
  `nama_level` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_level`
--

INSERT INTO `tbl_level` (`kd_level`, `nama_level`) VALUES
(1, 'owner'),
(2, 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `kd_menu` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`kd_menu`, `nama_menu`) VALUES
(1, 'owner'),
(2, 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id_order` int(11) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `kd_tiket` varchar(50) DEFAULT NULL,
  `kd_jadwal` varchar(50) DEFAULT NULL,
  `kd_pelanggan` varchar(50) DEFAULT NULL,
  `kd_bank` varchar(50) DEFAULT NULL,
  `asal_order` varchar(200) DEFAULT NULL,
  `nama_order` varchar(50) DEFAULT NULL,
  `tgl_beli_order` varchar(50) DEFAULT NULL,
  `tgl_berangkat_order` varchar(50) DEFAULT NULL,
  `nama_kursi_order` varchar(50) DEFAULT NULL,
  `umur_kursi_order` varchar(50) DEFAULT NULL,
  `no_kursi_order` varchar(50) DEFAULT NULL,
  `no_ktp_order` varchar(50) DEFAULT NULL,
  `no_tlpn_order` varchar(50) DEFAULT NULL,
  `alamat_order` varchar(100) DEFAULT NULL,
  `email_order` varchar(100) DEFAULT NULL,
  `expired_order` varchar(50) DEFAULT NULL,
  `qrcode_order` varchar(100) DEFAULT NULL,
  `status_order` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id_order`, `kd_order`, `kd_tiket`, `kd_jadwal`, `kd_pelanggan`, `kd_bank`, `asal_order`, `nama_order`, `tgl_beli_order`, `tgl_berangkat_order`, `nama_kursi_order`, `umur_kursi_order`, `no_kursi_order`, `no_ktp_order`, `no_tlpn_order`, `alamat_order`, `email_order`, `expired_order`, `qrcode_order`, `status_order`) VALUES
(11, 'ORD00001', 'TORD00001J0004TJ002201904253', 'J0004', 'PL0001', 'BNK0002', 'TJ002', 'Bahyu Sanciko', 'Jumat, 12 April 2019, 09:22', '2019-04-25', 'asdd', '90', '3', '021452125', '089682261128', 'JL AJA', 'cbahyu@gmail.com', '13-04-2019 09:22:48', 'assets/frontend/upload/qrcode/ORD00001.png', '2'),
(12, 'ORD00001', 'TORD00001J0004TJ002201904254', 'J0004', 'PL0001', 'BNK0002', 'TJ002', 'Bahyu Sanciko', 'Jumat, 12 April 2019, 09:22', '2019-04-25', 'asda', '90', '4', '021452125', '089682261128', 'JL AJA', 'cbahyu@gmail.com', '13-04-2019 09:22:48', 'assets/frontend/upload/qrcode/ORD00001.png', '2'),
(13, 'ORD00002', 'TORD00002J00042021062010', 'J0004', 'PL0009', 'BNK0003', 'TJ002', 'Muhammad Fajar', 'Sabtu, 19 Juni 2021, 21:02', '2021-06-20', 'Fajar', '20', '10', '123456789', '08526948770', 'Jl AH Nasution No 10\r\nCibiru', 'informageekteam@gmail.com', '20-06-2021 21:02:56', 'assets/frontend/upload/qrcode/ORD00002.png', '2'),
(14, 'ORD00003', 'TORD00003J00042021062010', 'J0004', 'PL0009', 'BNK0003', 'TJ002', 'Muhammad Fajar', 'Sabtu, 19 Juni 2021, 21:03', '2021-06-20', 'Fajar', '20', '10', '123456789', '08526948770', 'Jl AH Nasution No 10\r\nCibiru', 'informageekteam@gmail.com', '20-06-2021 21:03:08', 'assets/frontend/upload/qrcode/ORD00003.png', '1'),
(15, 'ORD00004', 'TORD00004J00042021062010', 'J0004', 'PL0009', 'BNK0003', 'TJ002', 'Muhammad Fajar', 'Sabtu, 19 Juni 2021, 21:08', '2021-06-20', 'Fajar', '21', '10', '123456789', '08526948770', 'Jl AH Nasution No 10\r\nCibiru', 'informageekteam@gmail.com', '20-06-2021 21:08:26', 'assets/frontend/upload/qrcode/ORD00004.png', '1'),
(16, 'ORD00005', 'TORD00005J00042021062010', 'J0004', 'PL0009', 'BNK0003', 'TJ002', 'Muhammad Fajar', 'Sabtu, 19 Juni 2021, 21:08', '2021-06-20', 'Fajar', '22', '10', '12345678', '08526948770', 'Jl AH Nasution No 10\r\nCibiru', 'informageekteam@gmail.com', '20-06-2021 21:08:58', 'assets/frontend/upload/qrcode/ORD00005.png', '2'),
(17, 'ORD00006', 'TORD00006J00052021062111', 'J0005', 'PL0010', 'BNK0001', 'TJ005', 'Muhammad Fajar', 'Sabtu, 19 Juni 2021, 21:26', '2021-06-21', 'Fajar', '39', '11', '123456789', '08512345678', 'Jl AH Nasution No 10\r\nCibiru', 'mfajarbin@gmail.com', '20-06-2021 21:26:39', 'assets/frontend/upload/qrcode/ORD00006.png', '1'),
(18, 'ORD00007', 'TORD00007J00032021062915', 'J0003', 'PL0010', 'BNK0003', 'TJ004', 'Muhammad Fajar', 'Sabtu, 19 Juni 2021, 22:27', '2021-06-29', 'Fajar', '90', '15', '12345678', '08512345678', 'Jl AH Nasution No 10\r\nCibiru', 'mfajarbin@gmail.com', '20-06-2021 22:27:28', 'assets/frontend/upload/qrcode/ORD00007.png', '1'),
(19, 'ORD00008', 'TORD00008J0004202107101', 'J0004', 'PL0013', 'BNK0003', 'TJ002', 'Muhammad Fajar Santoso', 'Jumat, 09 Juli 2021, 21:36', '2021-07-10', 'Fajar', '22', '1', '19071111119209130131', '085269468772', 'Jl Sindangreret No 10', 'mfajarbin27@gmail.com', '10-07-2021 21:36:43', 'assets/frontend/upload/qrcode/ORD00008.png', '1'),
(20, 'ORD00009', 'TORD00009J0001202107107', 'J0001', 'PL0001', 'BNK0003', 'TJ001', 'Muhammad Fajar Santoso', 'Jumat, 09 Juli 2021, 21:54', '2021-07-10', 'Fajar', '21', '7', '19071111119209130131', '085269468770', 'Jl Sindangreret No 10', 'muhammadfajatwae@gmail.com', '10-07-2021 21:54:26', 'assets/frontend/upload/qrcode/ORD00009.png', '1'),
(21, 'ORD00010', 'TORD00010J0005202107108', 'J0005', 'PL0001', 'BNK0001', 'TJ005', 'Muhammad Fajar Santoso', 'Jumat, 09 Juli 2021, 22:00', '2021-07-10', 'Fajar', '89', '8', '19071111119209130131', '085269468770', 'Jl Sindangreret No 10', 'muhammadfajatwae@gmail.com', '10-07-2021 22:00:06', 'assets/frontend/upload/qrcode/ORD00010.png', '1'),
(22, 'ORD00010', 'TORD00010J00052021071012', 'J0005', 'PL0001', 'BNK0001', 'TJ005', 'Muhammad Fajar Santoso', 'Jumat, 09 Juli 2021, 22:00', '2021-07-10', 'Fajar', '86', '12', '19071111119209130131', '085269468770', 'Jl Sindangreret No 10', 'muhammadfajatwae@gmail.com', '10-07-2021 22:00:06', 'assets/frontend/upload/qrcode/ORD00010.png', '1'),
(23, 'ORD00011', 'TORD00011J0005202107107', 'J0005', 'PL0001', 'BNK0003', 'TJ005', 'Muhammad Fajar Santoso', 'Jumat, 09 Juli 2021, 22:16', '2021-07-10', 'Fajar', '21', '7', '19071111119209130131', '085269468770', 'Jl Sindangreret No 10', 'muhammadfajatwae@gmail.com', '10-07-2021 22:16:06', 'assets/frontend/upload/qrcode/ORD00011.png', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `kd_pelanggan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username_pelanggan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password_pelanggan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `no_ktp_pelanggan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_pelanggan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat_pelanggan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `email_pelanggan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `telpon_pelanggan` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `img_pelanggan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `status_pelanggan` int(1) DEFAULT NULL,
  `date_create_pelanggan` varchar(50) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`kd_pelanggan`, `username_pelanggan`, `password_pelanggan`, `no_ktp_pelanggan`, `nama_pelanggan`, `alamat_pelanggan`, `email_pelanggan`, `telpon_pelanggan`, `img_pelanggan`, `status_pelanggan`, `date_create_pelanggan`) VALUES
('PL0001', 'Fajar', '$2y$10$aI/8kFVa3q50iYVqgATFJOl5t73rgB4tb2rbG0H8NNGQ7akYF9GxW', '', 'Muhammad Fajar Santoso', 'Jl Sindangreret No 10', 'muhammadfajatwae@gmail.com', '085269468770', 'assets/frontend/img/default.png', 1, '1625842374');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_menu`
--

CREATE TABLE `tbl_sub_menu` (
  `kd_sub_menu` int(11) NOT NULL,
  `kd_menu` int(11) DEFAULT NULL,
  `title_sub_menu` varchar(128) DEFAULT NULL,
  `url_sub_menu` varchar(128) DEFAULT NULL,
  `is_active_sub_menu` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sub_menu`
--

INSERT INTO `tbl_sub_menu` (`kd_sub_menu`, `kd_menu`, `title_sub_menu`, `url_sub_menu`, `is_active_sub_menu`) VALUES
(0, 1, 'Dashboard', 'backend/home', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tiket`
--

CREATE TABLE `tbl_tiket` (
  `kd_tiket` varchar(50) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `nama_tiket` varchar(50) DEFAULT NULL,
  `kursi_tiket` varchar(50) DEFAULT NULL,
  `umur_tiket` varchar(50) DEFAULT NULL,
  `asal_beli_tiket` varchar(50) DEFAULT NULL,
  `harga_tiket` varchar(50) NOT NULL,
  `etiket_tiket` varchar(100) DEFAULT NULL,
  `status_tiket` varchar(50) NOT NULL,
  `create_tgl_tiket` date DEFAULT NULL,
  `create_admin_tiket` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tiket`
--

INSERT INTO `tbl_tiket` (`kd_tiket`, `kd_order`, `nama_tiket`, `kursi_tiket`, `umur_tiket`, `asal_beli_tiket`, `harga_tiket`, `etiket_tiket`, `status_tiket`, `create_tgl_tiket`, `create_admin_tiket`) VALUES
('TORD00001J0004TJ002201904253', 'ORD00001', 'asdd', '3', '90 Tahun', 'TJ002', '145000', 'assets/backend/upload/etiket/ORD00001.pdf', '2', '2019-04-12', 'bahyu'),
('TORD00001J0004TJ002201904254', 'ORD00001', 'asda', '4', '90 Tahun', 'TJ002', '145000', 'assets/backend/upload/etiket/ORD00001.pdf', '2', '2019-04-12', 'bahyu'),
('TORD00002J00042021062010', 'ORD00002', 'Fajar', '10', '20 Tahun', 'TJ002', '145000', 'assets/backend/upload/etiket/ORD00002.pdf', '2', '2021-06-19', 'admin'),
('TORD00005J00042021062010', 'ORD00005', 'Fajar', '10', '22 Tahun', 'TJ002', '145000', 'assets/backend/upload/etiket/ORD00005.pdf', '2', '2021-06-19', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_token_pelanggan`
--

CREATE TABLE `tbl_token_pelanggan` (
  `kd_token` int(11) NOT NULL,
  `nama_token` varchar(256) DEFAULT NULL,
  `email_token` varchar(50) DEFAULT NULL,
  `date_create_token` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_token_pelanggan`
--

INSERT INTO `tbl_token_pelanggan` (`kd_token`, `nama_token`, `email_token`, `date_create_token`) VALUES
(1, 'fe27c26c26d262788cec50af6d68e699', 'muhammadfajatwae@gmail.com', 1623918557),
(2, 'b4e79c52382937d3dd1f43830be66335', 'informageekteam@gmail.com', 1624109622),
(4, '35d13afbe79ebd3ff065dbb74610d14c', 'santosofajarbin@gmail.com', 1625463103),
(5, '18c67d19f62658d0054ce1a076d3acfb', 'muhammadfajatw2ae@gmail.com', 1625463540),
(6, 'e32e4766c486a10a1abdd9e355939ec3', 'mfajarbin27@gmail.com', 1625841345),
(7, 'be5e153d10f661212c15b76987dbd720', 'muhammadfajatwae@gmail.com', 1625842374);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tujuan`
--

CREATE TABLE `tbl_tujuan` (
  `kd_tujuan` varchar(50) NOT NULL,
  `kota_tujuan` varchar(50) NOT NULL,
  `nama_terminal_tujuan` varchar(50) NOT NULL,
  `terminal_tujuan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tujuan`
--

INSERT INTO `tbl_tujuan` (`kd_tujuan`, `kota_tujuan`, `nama_terminal_tujuan`, `terminal_tujuan`) VALUES
('TJ001', 'jakarta', 'Terminal Kayu Besar', 'Jl. Auto Ring Road Kapuk Kamal Kayu Besar, Cengkareng, RT.7/RW.8, Cengkareng Bar., Cengkareng, Kota '),
('TJ002', 'bandung', 'Terminal Bojongloa ', 'Jl. Raya Sawahan No.283, Situsaeur, Bojongloa Kidul, Kota Bandung, Jawa Barat 40235'),
('TJ003', 'jakarta', 'Terminal Rawa Buaya', 'Jl. Darma Wanita 1 No.10, RT.7/RW.6, Duri Kosambi, Cengkareng, Kota Jakarta Barat, Daerah Khusus Ibu'),
('TJ004', 'jakarta', 'Termnial Kali Deres', 'Terminal bus Kalideres, Jl. Daan Mogot, RT.4/RW.1, Kalideres, West Jakarta City, Jakarta 11840'),
('TJ005', 'bandung', 'Terminal Babakan', 'JL. Raya Gede Bage No.68, Babakan Penghulu, Cinambo, Bandung City, West Java 40295'),
('TJ006', 'bandung', 'Terimnal Ledeng', 'Jl. Setiabudhi Dalam, Ledeng, Cidadap, Kota Bandung, Jawa Barat 40143');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`kd_admin`);

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`kd_bank`);

--
-- Indexes for table `tbl_bus`
--
ALTER TABLE `tbl_bus`
  ADD PRIMARY KEY (`kd_bus`);

--
-- Indexes for table `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  ADD PRIMARY KEY (`kd_jadwal`),
  ADD KEY `kd_bus` (`kd_bus`),
  ADD KEY `kd_tujuan` (`kd_tujuan`);

--
-- Indexes for table `tbl_konfirmasi`
--
ALTER TABLE `tbl_konfirmasi`
  ADD PRIMARY KEY (`kd_konfirmasi`),
  ADD KEY `kode_order` (`kd_order`);

--
-- Indexes for table `tbl_level`
--
ALTER TABLE `tbl_level`
  ADD PRIMARY KEY (`kd_level`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`kd_menu`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `kd_jadwal` (`kd_jadwal`),
  ADD KEY `kd_kustomer` (`kd_pelanggan`),
  ADD KEY `kd_tiket` (`kd_tiket`),
  ADD KEY `kd_bank` (`kd_bank`);

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`kd_pelanggan`);

--
-- Indexes for table `tbl_sub_menu`
--
ALTER TABLE `tbl_sub_menu`
  ADD PRIMARY KEY (`kd_sub_menu`),
  ADD KEY `kd_menu` (`kd_menu`);

--
-- Indexes for table `tbl_tiket`
--
ALTER TABLE `tbl_tiket`
  ADD PRIMARY KEY (`kd_tiket`),
  ADD KEY `kode_order` (`kd_order`);

--
-- Indexes for table `tbl_token_pelanggan`
--
ALTER TABLE `tbl_token_pelanggan`
  ADD PRIMARY KEY (`kd_token`);

--
-- Indexes for table `tbl_tujuan`
--
ALTER TABLE `tbl_tujuan`
  ADD PRIMARY KEY (`kd_tujuan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_level`
--
ALTER TABLE `tbl_level`
  MODIFY `kd_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `kd_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_token_pelanggan`
--
ALTER TABLE `tbl_token_pelanggan`
  MODIFY `kd_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
