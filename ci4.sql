-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2020 at 11:56 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_activation_attempts`
--

INSERT INTO `auth_activation_attempts` (`id`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f14d3d595d146a7c830351dc387f9f1f', '2020-12-13 04:43:20'),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f14d3d595d146a7c830351dc387f9f1f', '2020-12-13 04:45:32'),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f1939ea599133d8e34aa2bbf91787ad1', '2020-12-13 04:59:12');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'efiraaa2111@gmail.com', NULL, '2020-12-13 03:49:09', 0),
(2, '::1', 'akulaku@gmail.com', 1, '2020-12-13 04:01:23', 1),
(3, '::1', 'efiraaa2111@gmail.com', NULL, '2020-12-13 04:44:03', 0),
(4, '::1', 'efiraaa2111@gmail.com', NULL, '2020-12-13 04:44:39', 0),
(5, '::1', 'eka.efira@gmail.com', 3, '2020-12-13 04:59:47', 1),
(6, '::1', 'eka.efira@gmail.com', 3, '2020-12-13 05:09:34', 1),
(7, '::1', 'eka.efira@gmail.com', 3, '2020-12-16 06:11:41', 1),
(8, '::1', 'eka.efira@gmail.com', 3, '2020-12-16 09:39:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Naruto', 'naruto', 'Masashi Kishimoto', 'Shonen Jump', 'naruto.jpg', NULL, NULL),
(2, 'One Piece', 'one-piece', 'Eichiro Oda', 'Gramedia', 'naruto2.jpg', NULL, NULL),
(3, 'Eye Shield 21', 'eye-shield-21', 'Riichiro Inagaki', 'Shueisha', 'eyeshield21.jpg', NULL, NULL),
(17, 'Demon Slayer', 'demon-slayer', 'Koyoharu Gotoge', 'Shueisha', 'default.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-12-12-171505', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1607794299, 1),
(2, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1607849609, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Dwi Kusumo S.Ked', 'Ki. Gajah Mada No. 852, Bogor 17572, Bali', '1987-04-26 10:38:05', '2020-12-12 12:43:04'),
(2, 'Fitria Yuniar', 'Ds. Sentot Alibasa No. 717, Pagar Alam 94957, NTB', '2019-11-18 15:00:36', '2020-12-12 12:43:04'),
(3, 'Bakijan Gunarto M.Farm', 'Dk. Baranang Siang Indah No. 788, Tidore Kepulauan 90801, KalUt', '2010-11-29 21:53:07', '2020-12-12 12:43:05'),
(4, 'Mursita Sihombing', 'Jln. B.Agam Dlm No. 508, Lubuklinggau 82305, NTT', '2019-06-01 07:59:20', '2020-12-12 12:43:05'),
(5, 'Ulya Jasmin Aryani M.Kom.', 'Psr. Honggowongso No. 721, Tarakan 97697, DKI', '1984-02-05 14:42:00', '2020-12-12 12:43:06'),
(6, 'Elisa Astuti S.Pt', 'Jln. Taman No. 137, Solok 57538, Aceh', '2005-02-25 03:43:32', '2020-12-12 12:43:06'),
(7, 'Saiful Nashiruddin S.Farm', 'Dk. Lada No. 151, Jayapura 24295, Bengkulu', '1996-11-27 16:15:17', '2020-12-12 12:43:06'),
(8, 'Melinda Hasanah', 'Ds. Ters. Kiaracondong No. 365, Administrasi Jakarta Barat 96364, Maluku', '1990-05-04 02:51:07', '2020-12-12 12:43:06'),
(9, 'Umar Mujur Simanjuntak', 'Jln. Yoga No. 186, Gorontalo 72974, SulUt', '2000-02-24 02:45:41', '2020-12-12 12:43:06'),
(10, 'Ridwan Karman Saragih', 'Psr. Tubagus Ismail No. 753, Palu 70167, KalUt', '1971-07-11 02:30:40', '2020-12-12 12:43:06'),
(11, 'Irma Usamah', 'Kpg. Bass No. 929, Administrasi Jakarta Timur 59504, Maluku', '2002-05-15 00:00:41', '2020-12-12 12:43:06'),
(12, 'Lurhur Prasetyo', 'Ds. Gardujati No. 623, Probolinggo 30944, Bengkulu', '2002-11-18 07:13:09', '2020-12-12 12:43:06'),
(13, 'Fitria Prastuti', 'Jr. Bakau No. 401, Pariaman 31316, DIY', '1974-02-07 17:56:29', '2020-12-12 12:43:06'),
(14, 'Jaka Simanjuntak', 'Ki. Ahmad Dahlan No. 675, Lhokseumawe 62619, Jambi', '2017-07-24 19:18:10', '2020-12-12 12:43:06'),
(15, 'Taufan Rajasa', 'Ki. Dewi Sartika No. 977, Blitar 21422, SulTeng', '1971-06-23 13:49:07', '2020-12-12 12:43:06'),
(16, 'Abyasa Nababan', 'Gg. Pasteur No. 500, Pagar Alam 57060, BaBel', '1999-12-02 11:22:03', '2020-12-12 12:43:06'),
(17, 'Lintang Maryati', 'Ki. Adisucipto No. 897, Sawahlunto 46141, KalBar', '2011-06-01 13:06:52', '2020-12-12 12:43:06'),
(18, 'Pandu Jamil Hardiansyah', 'Ki. Basudewo No. 121, Administrasi Jakarta Utara 15336, KalUt', '2009-02-26 10:51:34', '2020-12-12 12:43:06'),
(19, 'Amelia Hani Agustina M.Farm', 'Ki. Raya Ujungberung No. 269, Medan 95387, PapBar', '1972-08-05 14:23:35', '2020-12-12 12:43:06'),
(20, 'Yulia Laksmiwati', 'Ds. Bank Dagang Negara No. 635, Metro 43595, Bali', '2002-09-29 02:42:09', '2020-12-12 12:43:06'),
(21, 'Yosef Prakosa Natsir', 'Psr. Madrasah No. 49, Malang 52088, SulBar', '1995-08-15 02:55:56', '2020-12-12 12:43:06'),
(22, 'Hasim Carub Winarno M.TI.', 'Ki. Baik No. 362, Padangpanjang 84077, DIY', '1993-10-27 18:23:56', '2020-12-12 12:43:07'),
(23, 'Jefri Narpati', 'Ki. Wahidin Sudirohusodo No. 53, Binjai 60861, SumSel', '1977-12-14 21:14:16', '2020-12-12 12:43:08'),
(24, 'Carub Habibi', 'Kpg. Mulyadi No. 654, Tarakan 40703, SulSel', '2005-05-19 12:21:13', '2020-12-12 12:43:10'),
(25, 'Mulyanto Maheswara S.T.', 'Psr. Rumah Sakit No. 707, Gorontalo 18766, MalUt', '1988-02-02 20:19:54', '2020-12-12 12:43:10'),
(26, 'Olivia Utami', 'Kpg. Sudirman No. 54, Madiun 25385, SulBar', '1974-06-01 11:54:20', '2020-12-12 12:43:10'),
(27, 'Ajimin Tampubolon S.E.', 'Jr. Supono No. 925, Batu 72154, Banten', '1970-06-07 03:48:30', '2020-12-12 12:43:10'),
(28, 'Talia Yuliarti', 'Psr. Bass No. 58, Ambon 48604, KalUt', '1985-01-02 19:23:19', '2020-12-12 12:43:10'),
(29, 'Humaira Amelia Utami M.Ak', 'Dk. Suryo No. 779, Banda Aceh 11814, KalTim', '2018-10-05 15:05:43', '2020-12-12 12:43:10'),
(30, 'Dartono Narpati', 'Kpg. Pahlawan No. 426, Cilegon 74667, SumBar', '2016-11-09 11:55:40', '2020-12-12 12:43:10'),
(31, 'Janet Wijayanti S.Ked', 'Psr. Lada No. 38, Salatiga 91986, KalBar', '1979-06-15 07:21:12', '2020-12-12 12:43:10'),
(32, 'Halima Rini Rahayu S.E.', 'Ki. Gading No. 620, Bima 48035, SumUt', '1983-09-04 10:35:27', '2020-12-12 12:43:10'),
(33, 'Sabrina Suryatmi', 'Ki. Raden No. 277, Binjai 91190, KalTeng', '2004-04-07 23:29:29', '2020-12-12 12:43:10'),
(34, 'Hasna Purwanti M.Farm', 'Jr. Antapani Lama No. 36, Denpasar 75392, JaBar', '1994-10-19 01:23:06', '2020-12-12 12:43:10'),
(35, 'Yulia Rachel Mardhiyah', 'Ds. Ciwastra No. 355, Balikpapan 99581, JaTim', '1981-06-07 17:24:56', '2020-12-12 12:43:10'),
(36, 'Oni Salwa Lestari', 'Psr. Sugiono No. 761, Gorontalo 84261, KalUt', '2001-05-03 18:39:45', '2020-12-12 12:43:10'),
(37, 'Cecep Anggabaya Narpati M.Pd', 'Kpg. Bara Tambar No. 250, Pariaman 58607, SulBar', '1972-05-31 12:09:11', '2020-12-12 12:43:10'),
(38, 'Fitriani Prastuti S.E.', 'Gg. Ters. Jakarta No. 703, Binjai 56214, SumSel', '2014-01-24 00:25:25', '2020-12-12 12:43:10'),
(39, 'Kadir Kayun Budiyanto S.Farm', 'Jln. Sudiarto No. 706, Sabang 12180, DKI', '1978-11-11 14:43:40', '2020-12-12 12:43:10'),
(40, 'Indah Salimah Hariyah M.TI.', 'Kpg. Astana Anyar No. 970, Samarinda 90941, Bali', '1989-08-15 04:27:07', '2020-12-12 12:43:10'),
(41, 'Nrima Pratama', 'Ds. PHH. Mustofa No. 76, Tangerang Selatan 80492, Maluku', '1989-07-07 11:06:35', '2020-12-12 12:43:10'),
(42, 'Oni Vicky Handayani', 'Dk. Bambu No. 381, Padangpanjang 74360, Bali', '2001-11-09 04:28:57', '2020-12-12 12:43:10'),
(43, 'Prabawa Darsirah Megantara S.I.Kom', 'Gg. Sutoyo No. 306, Jambi 60034, SumUt', '1996-04-24 19:08:51', '2020-12-12 12:43:10'),
(44, 'Hendri Hidayanto', 'Gg. Pattimura No. 818, Bogor 95703, Aceh', '1978-12-02 08:00:03', '2020-12-12 12:43:10'),
(45, 'Winda Nurdiyanti M.TI.', 'Jr. Sudiarto No. 673, Pematangsiantar 16453, NTB', '2007-02-22 02:48:09', '2020-12-12 12:43:10'),
(46, 'Tiara Purnawati', 'Ki. Baranangsiang No. 118, Samarinda 37847, SulTeng', '1981-05-21 08:23:45', '2020-12-12 12:43:10'),
(47, 'Padma Pudjiastuti', 'Jr. Gegerkalong Hilir No. 305, Surakarta 80539, SumUt', '1989-09-06 06:21:01', '2020-12-12 12:43:10'),
(48, 'Anom Santoso S.Pt', 'Gg. Rajawali Timur No. 143, Administrasi Jakarta Barat 62971, KalSel', '1988-08-12 07:08:57', '2020-12-12 12:43:10'),
(49, 'Garan Marpaung', 'Gg. Peta No. 222, Surabaya 66292, Aceh', '1972-02-06 13:55:48', '2020-12-12 12:43:10'),
(50, 'Raharja Wacana', 'Kpg. Sadang Serang No. 443, Denpasar 69784, SulBar', '1982-04-11 02:43:54', '2020-12-12 12:43:10'),
(51, 'Luhung Habibi', 'Dk. Wora Wari No. 992, Yogyakarta 73084, KalUt', '1994-03-19 14:37:12', '2020-12-12 12:43:10'),
(52, 'Elvina Novitasari', 'Dk. Nangka No. 935, Tanjungbalai 72353, Maluku', '1979-04-23 14:24:44', '2020-12-12 12:43:10'),
(53, 'Wisnu Prayoga', 'Jln. Baya Kali Bungur No. 724, Pekanbaru 69182, DIY', '2010-10-04 17:43:18', '2020-12-12 12:43:10'),
(54, 'Viktor Wacana', 'Ki. Flora No. 975, Padang 56622, Papua', '1986-10-05 09:45:40', '2020-12-12 12:43:10'),
(55, 'Asmuni Siregar', 'Ki. Warga No. 897, Pontianak 32672, KalTim', '1988-08-08 01:29:47', '2020-12-12 12:43:10'),
(56, 'Harsaya Gambira Mahendra', 'Psr. Jamika No. 43, Bontang 87119, DKI', '1975-07-14 20:55:38', '2020-12-12 12:43:10'),
(57, 'Dimaz Radika Wasita', 'Kpg. Sadang Serang No. 73, Sibolga 60473, SumSel', '2016-03-09 10:52:02', '2020-12-12 12:43:10'),
(58, 'Cemplunk Wahyudin S.E.', 'Psr. Hang No. 694, Bau-Bau 69487, SulSel', '2020-07-14 20:13:43', '2020-12-12 12:43:10'),
(59, 'Yoga Sihotang M.TI.', 'Dk. Baing No. 671, Pekanbaru 75146, Gorontalo', '2002-02-15 06:08:26', '2020-12-12 12:43:10'),
(60, 'Olga Saptono', 'Dk. Baja No. 415, Yogyakarta 40810, KalSel', '2020-10-22 21:09:11', '2020-12-12 12:43:10'),
(61, 'Iriana Oktaviani', 'Psr. Ki Hajar Dewantara No. 377, Tomohon 59847, Bali', '2001-12-18 15:28:39', '2020-12-12 12:43:10'),
(62, 'Karimah Agustina', 'Ki. B.Agam 1 No. 754, Tomohon 74713, SulSel', '2019-08-26 11:55:03', '2020-12-12 12:43:10'),
(63, 'Safina Yuniar', 'Kpg. Cikutra Barat No. 193, Tangerang 58168, DIY', '1986-08-03 03:57:18', '2020-12-12 12:43:10'),
(64, 'Najwa Kamaria Namaga', 'Ds. Achmad No. 90, Tidore Kepulauan 59815, JaTeng', '1973-08-20 02:03:57', '2020-12-12 12:43:10'),
(65, 'Bakijan Mustofa S.Sos', 'Jr. Adisucipto No. 814, Makassar 72626, KalTim', '1993-04-05 01:23:12', '2020-12-12 12:43:11'),
(66, 'Umi Fujiati', 'Ki. Basoka Raya No. 41, Palembang 63721, Bengkulu', '1989-11-29 21:30:50', '2020-12-12 12:43:11'),
(67, 'Raisa Hastuti M.M.', 'Jln. Basudewo No. 253, Metro 80581, Banten', '1976-04-08 22:12:22', '2020-12-12 12:43:11'),
(68, 'Emong Raditya Permadi S.H.', 'Jr. Baya Kali Bungur No. 187, Tangerang 69755, Aceh', '2020-08-11 00:29:30', '2020-12-12 12:43:11'),
(69, 'Omar Nashiruddin', 'Psr. Yosodipuro No. 984, Banda Aceh 62898, Bali', '1984-12-31 04:18:47', '2020-12-12 12:43:11'),
(70, 'Aurora Aryani', 'Jr. B.Agam Dlm No. 707, Gunungsitoli 64752, Bali', '1996-07-13 06:35:52', '2020-12-12 12:43:11'),
(71, 'Dodo Lukita Sirait M.Ak', 'Ki. Supono No. 581, Probolinggo 23389, SulSel', '2019-10-17 07:05:37', '2020-12-12 12:43:11'),
(72, 'Talia Umi Riyanti S.Psi', 'Gg. Qrisdoren No. 719, Payakumbuh 64029, DIY', '1976-05-01 05:13:38', '2020-12-12 12:43:11'),
(73, 'Jono Tarihoran', 'Ds. Batako No. 765, Serang 79283, NTB', '2020-07-07 04:29:18', '2020-12-12 12:43:11'),
(74, 'Azalea Sari Winarsih', 'Dk. Suprapto No. 426, Dumai 22134, Bengkulu', '1990-11-06 06:06:53', '2020-12-12 12:43:11'),
(75, 'Puti Palastri', 'Jln. Sudirman No. 124, Mojokerto 62555, NTB', '1995-08-08 17:11:22', '2020-12-12 12:43:11'),
(76, 'Gantar Najam Salahudin', 'Ds. Pahlawan No. 938, Makassar 31924, Bali', '1998-06-03 11:55:14', '2020-12-12 12:43:11'),
(77, 'Kamal Siregar', 'Dk. Dago No. 821, Pariaman 22931, KalUt', '1984-06-26 07:58:46', '2020-12-12 12:43:11'),
(78, 'Yulia Mardhiyah S.I.Kom', 'Dk. Bakau No. 521, Bandung 99702, KalTim', '2011-06-14 05:47:54', '2020-12-12 12:43:11'),
(79, 'Jamal Mulyono Sihotang', 'Kpg. Sumpah Pemuda No. 678, Bima 58888, KalTim', '1981-04-21 10:07:45', '2020-12-12 12:43:11'),
(80, 'Ratih Jasmin Lestari S.Sos', 'Gg. Yos Sudarso No. 462, Sabang 11848, Lampung', '2005-12-13 09:59:03', '2020-12-12 12:43:11'),
(81, 'Uchita Dian Novitasari M.Pd', 'Kpg. Banal No. 434, Pangkal Pinang 59392, Maluku', '1974-04-12 05:37:10', '2020-12-12 12:43:11'),
(82, 'Tugiman Ramadan', 'Psr. Bata Putih No. 377, Palopo 47685, Papua', '1977-07-14 12:40:27', '2020-12-12 12:43:11'),
(83, 'Cinta Dina Agustina S.Farm', 'Jr. Cikutra Barat No. 489, Tanjungbalai 46057, SumUt', '2016-09-17 12:13:52', '2020-12-12 12:43:11'),
(84, 'Ani Hariyah', 'Psr. Zamrud No. 876, Tasikmalaya 91853, KepR', '1982-11-15 02:27:06', '2020-12-12 12:43:11'),
(85, 'Lidya Ulya Handayani S.Pt', 'Kpg. Peta No. 395, Administrasi Jakarta Timur 37570, MalUt', '2007-10-14 09:35:13', '2020-12-12 12:43:11'),
(86, 'Vicky Wijayanti', 'Ki. PHH. Mustofa No. 247, Cilegon 70220, Lampung', '1985-08-17 14:37:54', '2020-12-12 12:43:11'),
(87, 'Keisha Anggraini', 'Jln. Kiaracondong No. 918, Tanjungbalai 13600, MalUt', '2017-09-13 05:01:51', '2020-12-12 12:43:11'),
(88, 'Hana Agustina', 'Ds. Bara No. 285, Sawahlunto 83613, Riau', '1999-05-29 12:08:36', '2020-12-12 12:43:11'),
(89, 'Jane Mulyani', 'Dk. Rajawali Barat No. 174, Bandung 47589, NTT', '2017-09-08 06:39:07', '2020-12-12 12:43:11'),
(90, 'Kadir Marpaung S.Psi', 'Jr. Sampangan No. 724, Sorong 97772, Banten', '2014-11-04 19:35:23', '2020-12-12 12:43:11'),
(91, 'Michelle Halimah', 'Ds. Bazuka Raya No. 821, Bengkulu 82773, BaBel', '1978-08-14 11:57:30', '2020-12-12 12:43:11'),
(92, 'Laila Handayani', 'Ds. Supomo No. 510, Medan 34537, SulSel', '1971-10-19 00:05:55', '2020-12-12 12:43:12'),
(93, 'Anastasia Puspita', 'Dk. Baranang No. 602, Jayapura 76013, Maluku', '2020-06-27 18:54:47', '2020-12-12 12:43:12'),
(94, 'Silvia Yulianti', 'Dk. Bahagia No. 182, Tomohon 83007, SulTeng', '1997-01-09 07:47:26', '2020-12-12 12:43:12'),
(95, 'Alika Anastasia Hassanah S.Kom', 'Gg. Rumah Sakit No. 718, Bau-Bau 85651, NTB', '1995-12-16 03:01:47', '2020-12-12 12:43:12'),
(96, 'Hana Lestari', 'Dk. Bagis Utama No. 55, Batam 82902, Gorontalo', '1977-05-21 00:00:24', '2020-12-12 12:43:12'),
(97, 'Melinda Uyainah', 'Dk. PHH. Mustofa No. 928, Lubuklinggau 39376, DIY', '2001-10-13 15:03:27', '2020-12-12 12:43:12'),
(98, 'Salsabila Cici Rahimah', 'Jr. Sutami No. 373, Palu 47546, SumSel', '1984-02-09 12:26:50', '2020-12-12 12:43:12'),
(99, 'Indah Laksmiwati M.Kom.', 'Psr. Cikapayang No. 500, Samarinda 30081, Bali', '1992-04-23 21:10:36', '2020-12-12 12:43:12'),
(100, 'Respati Hutapea', 'Kpg. Acordion No. 593, Subulussalam 24488, SulTra', '1999-06-28 10:29:37', '2020-12-12 12:43:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'eka.efira@gmail.com', 'ekaefira', '$2y$10$DRH0ABmpr6JA8b.0/TbpyO8su7hhZGbt73h6gzEeLaEiM8v81lEh2', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-12-13 04:57:25', '2020-12-13 04:59:12', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
