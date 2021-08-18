-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2020 at 07:28 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik_21916069`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nidn_dosen` varchar(10) NOT NULL,
  `nama_dosen` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nidn_dosen`, `nama_dosen`) VALUES
('0904048003', 'DARMAN, S.Pd., M.Pd'),
('0922059102', 'ZILA RAZILU, S.Pd., M.Pd'),
('0919029203', 'HENDRA NELVA SAPUTRA, S.Pd., M.Pd'),
('0908109005', 'USMAN, S.Pd., M.Pd'),
('0916049006', 'SAMUSU, S.Pd., M.Pd');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim_mahasiswa` varchar(8) NOT NULL,
  `nama_mahasiswa` varchar(100) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim_mahasiswa`, `nama_mahasiswa`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`) VALUES
('21916069', 'HESTI SULISTIAWATI', 'PETOAHA', '2001-01-14', 'P', 'KEL ABELI KEC ABELI KOTA KENDARI'),
('21916088', 'FITRI AYUNING', 'LIPU', '2000-12-02', 'P', 'KEMARAYA KEC KENDARI BARAT'),
('21916073', 'LA ODE HILMAN FAUZAN HASIM', 'LAKOLOGOU-TONGKUNO-MUNA', '2001-04-25', 'L', 'LAKOLOGOU-TONGKUNO-MUNA'),
('21916068', 'DENI ARFHA ARDHANA', 'SURABAYA', '2001-03-15', 'L', 'JLN. RURUHI LRG.SARAMASE KENDARI'),
('21916080', 'SELFI', ' MOROMPAITONGA', '2000-07-09', 'P', 'DESA MOROMPAITONGA, KEC.MENUI KEPULAUAN KAB.MOROWALI'),
('21916060', 'AISYAH LESTARINDA', 'KENDARI', '2000-11-11', 'P', 'BTN GRIYA TIWI'),
('21916079', 'MUH OGIN ARDIAWAN', 'POTORO', '2000-10-30', 'L', 'KEL.POTORO KEC.ANDOOLO KAB.KONAWE SELATAN'),
('21916074', 'SULQAIDA P', 'ANDABIA', '2001-01-29', 'P', 'KEL.ANDABIA KEC.ANGGABERI KAB.KONAWE'),
('21916081', 'WA ODE SRI RAMLAN', 'AMBEUA', '2001-12-08', 'P', 'AMBEUA RAYA KEC.KALEDUPA KAB.WAKATOBI'),
('21916087', 'RANCISNA', 'AOSOLE', '1998-11-10', 'P', 'DESA AOSOLE KEC.PALANGGA KAB.KONAWE SELATAN');

-- --------------------------------------------------------

--
-- Table structure for table `mata kuliah`
--

CREATE TABLE `mata kuliah` (
  `kode_mk` varchar(6) NOT NULL,
  `nama_mk` varchar(50) NOT NULL,
  `sks` int(2) NOT NULL,
  `semester` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mata kuliah`
--

INSERT INTO `mata kuliah` (`kode_mk`, `nama_mk`, `sks`, `semester`) VALUES
('02033', 'BAHASA INGGRIS FROFESI', 3, 2),
('02082', 'ARSITEKTUR DAN ORGANISASI KOMPUTER', 2, 2),
('02043', 'BELAJAR DAN PEMBELAJARAN', 3, 2),
('02023', 'STATISTIK PENDIDIKAN', 3, 2),
('02012', 'AIK II', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `perkuliahan`
--

CREATE TABLE `perkuliahan` (
  `nim_mahasiswa` varchar(8) NOT NULL,
  `kode_mk` varchar(6) NOT NULL,
  `nidn_dosen` varchar(10) NOT NULL,
  `sks` int(2) NOT NULL,
  `nilai` char(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perkuliahan`
--

INSERT INTO `perkuliahan` (`nim_mahasiswa`, `kode_mk`, `nidn_dosen`, `sks`, `nilai`) VALUES
('21916069', '02033', '0904048003', 3, '8'),
('21916088', '02082', '0922059102', 2, '8'),
('21916060', '02043', '0919029203', 3, '9'),
('21916080', '02023', '0908109005', 3, '8'),
('21916081', '02012', '0916049006', 2, '9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nidn_dosen`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim_mahasiswa`);

--
-- Indexes for table `mata kuliah`
--
ALTER TABLE `mata kuliah`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indexes for table `perkuliahan`
--
ALTER TABLE `perkuliahan`
  ADD PRIMARY KEY (`nim_mahasiswa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
