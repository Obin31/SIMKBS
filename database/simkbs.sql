-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2023 at 07:34 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simkbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_control`
--

CREATE TABLE `tabel_control` (
  `id` int(11) NOT NULL,
  `nama_desa` varchar(255) NOT NULL,
  `logo_desa` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `maps` text NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_control`
--

INSERT INTO `tabel_control` (`id`, `nama_desa`, `logo_desa`, `alamat`, `maps`, `email`) VALUES
(1, 'Ketapang Sampit', '1689176172.312664aec86c4c50a.png', 'Jl. H. Imran, Ketapang, Kec. Mentawa Baru Ketapang, Kabupaten Kotawaringin Timur, Kalimantan Tengah 74321', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1228.5553530055881!2d112.95668130187015!3d-2.562612082218003!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2de2957ed75e764b%3A0x1ab8b86b0ff1c647!2sKantor%20Kelu%20Rahan%20Ketapang!5e0!3m2!1sen!2sid!4v1689176903923!5m2!1sen!2sid', 'kelketapang@kotimkab.go.id');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_dusun`
--

CREATE TABLE `tabel_dusun` (
  `id` int(11) NOT NULL,
  `dusun` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_dusun`
--

INSERT INTO `tabel_dusun` (`id`, `dusun`) VALUES
(6, 'Ketapang');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_kependudukan`
--

CREATE TABLE `tabel_kependudukan` (
  `NO_KK` char(16) NOT NULL,
  `NIK` char(16) NOT NULL,
  `NAMA_LGKP` varchar(50) NOT NULL,
  `HBKEL` varchar(2) NOT NULL,
  `JK` tinyint(1) NOT NULL,
  `TMPT_LHR` varchar(30) NOT NULL,
  `TGL_LHR` date NOT NULL,
  `TAHUN` varchar(3) NOT NULL,
  `BULAN` varchar(2) NOT NULL,
  `HARI` varchar(2) NOT NULL,
  `NAMA_LGKP_AYAH` varchar(100) NOT NULL,
  `NAMA_LGKP_IBU` varchar(100) NOT NULL,
  `KECAMATAN` varchar(30) NOT NULL,
  `KELURAHAN` varchar(30) NOT NULL,
  `DSN` int(11) NOT NULL,
  `AGAMA` varchar(10) NOT NULL,
  `bantuan` varchar(2) NOT NULL,
  `jenis_bantuan` varchar(100) NOT NULL,
  `ibu_hamil` varchar(2) NOT NULL,
  `disabilitas` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_kependudukan`
--

INSERT INTO `tabel_kependudukan` (`NO_KK`, `NIK`, `NAMA_LGKP`, `HBKEL`, `JK`, `TMPT_LHR`, `TGL_LHR`, `TAHUN`, `BULAN`, `HARI`, `NAMA_LGKP_AYAH`, `NAMA_LGKP_IBU`, `KECAMATAN`, `KELURAHAN`, `DSN`, `AGAMA`, `bantuan`, `jenis_bantuan`, `ibu_hamil`, `disabilitas`) VALUES
('7796513189631363', '1221433242323523', 'MUSLIPAH', '3', 2, 'Sampit', '1990-06-03', '33', '2', '0', 'Andi', 'Sulistiawati', 'TILONGKABILA', 'BUTU', 6, 'islam', '', '', '0', ''),
('7796513189631363', '2415353534534641', 'Rusmi', '3', 2, 'Sampit', '1983-05-03', '40', '3', '0', 'Andi', 'Sulistiawati', 'TILONGKABILA', 'BUTU', 6, 'islam', '', '', '0', ''),
('620206016050168', '6202060306760006', 'DARMA KUSUMA', '--', 1, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206021000120', '6202060608800008', 'RAFII DAHLAN', '--', 1, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206021000101', '6202060706500001', 'ADNAWI', '--', 1, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206020000105', '6202060901960003', 'TAUFIK AKBAR', '--', 1, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206021000112', '6202061606650005', 'WIJI', '--', 1, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206021000110', '6202062609500001', 'HADRIN', '--', 1, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016001707', '6202064102480002', 'MAIMUNAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016000656', '6202064103300001', 'OPON', '--', 1, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016001706', '6202064106750007', 'SARIYAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206021000134', '6202064107500014', 'INTANIAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050321', '6202064107760037', 'ATI', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050178', '6202064201830005', 'ENDANG', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206020000133', '6202064204500001', 'ROHANA', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050258', '6202064205710003', 'RUSITAH', '--', 0, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206021000181', '6202064206670004', 'SURIATI', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016000258', '6202064209700001', 'NOOR RAHMAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050316', '6202064209820001', 'HOLIDEH', '--', 1, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206021000102', '6202064303490001', 'MASTANIYAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050325', '6202064306870003', 'HADARIAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016000260', '6202064309790004', 'RAUDAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016001287', '6202064409720001', 'ERNAWATI', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050208', '6202064410760001', 'FATIMAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206021000054', '6202064505790004', 'AMAI DAMAYANTI', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050286', '6202064510750008', 'MURIAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050135', '6202064510830004', 'SRI WAHYUNI', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050114', '6202064511820001', 'RITA RIANI', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206021000116', '6202064512860002', 'RUBAINAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050311', '6202064603600002', 'PUNAMI', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050206', '6202064605770003', 'TAIBAH', '--', 1, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016001510', '6202064605780004', 'RITA', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050110', '6202064606790005', 'ZAINAB', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016001711', '6202064608710006', 'YULIANA', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016002989', '6202064703720004', 'MUSLIPAH', '--', 1, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050252', '6202064703810001', 'IDA ROYANI', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050306', '6202064706890002', 'NOR HALIMAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016000880', '6202064707650001', 'RAHIMAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016002351', '6202064707740003', 'NORHALIMAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050198', '6202064712720001', 'YULIAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016002355', '6202064802820005', 'NEMAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206021000079', '6202064803710001', 'SAMIYAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016001085', '6202064803740005', 'BIANA', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016000263', '6202064805720001', 'SANAUWIYAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206021000121', '6202064806920002', 'HALIMAHTUL SALBIYAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206020000034', '6202064812890001', 'MISNAWATI', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050097', '6202064905730006', 'RABIAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016001946', '6202064907770004', 'RUSIANI', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050276', '6202065003700003', 'MASIYANA', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206021000179', '6202065005680005', 'SUMAINAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206021000150', '6202065008780010', 'MISNAWATI', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016002543', '6202065008800004', 'RITA', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206000300001', '6202065010770008', 'HANI', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050098', '6202065010840007', 'IDA ROYANI', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050138', '6202065102900008', 'JUMIATI', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016000262', '6202065105460001', 'NORHAYATI', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050304', '6202065111750003', 'HANIAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050141', '6202065203740003', 'RUSMAWATI', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050215', '6202065204820004', 'YENI', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206020000109', '6202065207760005', 'HARTIAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206021000094', '6202065210800002', 'MARIYANA', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050266', '6202065302820004', 'SITI AISYAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016003343', '6202065302860001', 'KASMIATI', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016000882', '6202065304790003', 'HALIMAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206021000158', '6202065310690002', 'ENDANG', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206021000009', '6202065312720001', 'SAWIYAH', '--', 1, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050096', '6202065404820002', 'SALMAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050295', '6202065502810003', 'MINAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050205', '6202065507660002', 'NURIAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050243', '6202065508800003', 'TATI', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050214', '6202065509910001', 'NOR MAYA SARAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050220', '6202065602740003', 'SRI ARIYUNANI', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050291', '6202065602810002', 'MUNDARSIH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206021000081', '6202065606860008', 'FITRI RAHMADANIYATI', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050164', '6202065708890007', 'PRISTINA WATI ANGGRAINI', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050275', '6202065802820004', 'SUMARNI', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050122', '6202066003820001', 'SITI AISYAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206020000002', '6202066005700005', 'RUSINAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050173', '6202066012680001', 'LAMSIAH', '--', 1, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050248', '6202066107770005', 'LILI HENDRAWATI', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050253', '6202066109840002', 'RIA MURNI', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050137', '6202066204810002', 'SITI SABARIAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206021000141', '6202066206460001', 'KAPSAH', '--', 1, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016000884', '6202066303800013', 'HAIRIATI', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050128', '6202066402910001', 'KURNIASARY', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016002987', '6202066509810002', 'SUSANTI', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050190', '6202066512740007', 'NORHAYATI', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206021000177', '6202066705610001', 'MEI ROSITA KATHARINA', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016001286', '6202066708760003', 'MISNAWATI', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050156', '6202066708880008', 'ANGGUN', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206021000076', '6202066711490001', 'MARIYAM', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206021000098', '6202066810100004', 'AISYAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050140', '6202066810830004', 'PUJI ASTUTIK', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206000300027', '6202066906690002', 'ARBAINAH', '--', 1, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016002353', '6202066906750001', 'MUSNIAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016001285', '6202067001800001', 'HAMSIAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050296', '6202067005800003', 'NOOR SEHAN', '--', 1, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206000300011', '6202067006810002', 'SITI AISYAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', '', '', ''),
('620206016050279', '6202067112690010', 'SALMAH', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050297', '6202067112720019', 'RUSDIANA', '--', 1, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206016050271', '6202067112840008', 'MAHRITA', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', ''),
('620206021000132', '6202174303920001', 'MURTIYANI', '--', 2, '', '0000-00-00', '0', '0', '0', '', '', 'TILONGKABILA', 'BUTU', 6, '--Pilih Ag', '1', 'PKH', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_konsumsi`
--

CREATE TABLE `tabel_konsumsi` (
  `NIK` varchar(16) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `BAHAN_MAKANAN` varchar(10) NOT NULL,
  `FREKUENSI_PER_MINGGU` varchar(2) NOT NULL,
  `PAKAIAN_PER_TAHUN` varchar(2) NOT NULL,
  `MAKAN_PER_HARI` varchar(2) NOT NULL,
  `BIAYA_PENGOBATAN` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_konsumsi`
--

INSERT INTO `tabel_konsumsi` (`NIK`, `NAMA`, `BAHAN_MAKANAN`, `FREKUENSI_PER_MINGGU`, `PAKAIAN_PER_TAHUN`, `MAKAN_PER_HARI`, `BIAYA_PENGOBATAN`) VALUES
('1221433242323523', 'MUSLIPAH', '', '', '', '', ''),
('2415353534534641', 'Rusmi', '', '', '', '', ''),
('6202060306760006', 'DARMA KUSUMA', '', '', '', '', ''),
('6202060608800008', 'RAFII DAHLAN', '', '', '', '', ''),
('6202060706500001', 'ADNAWI', '', '', '', '', ''),
('6202060901960003', 'TAUFIK AKBAR', '', '', '', '', ''),
('6202061606650005', 'WIJI', '', '', '', '', ''),
('6202062609500001', 'HADRIN', '', '', '', '', ''),
('6202064102480002', 'MAIMUNAH', '', '', '', '', ''),
('6202064103300001', 'OPON', '', '', '', '', ''),
('6202064106750007', 'SARIYAH', '', '', '', '', ''),
('6202064107500014', 'INTANIAH', '', '', '', '', ''),
('6202064107760037', 'ATI', '', '', '', '', ''),
('6202064201830005', 'ENDANG', '', '', '', '', ''),
('6202064204500001', 'ROHANA', '', '', '', '', ''),
('6202064205710003', 'RUSITAH', '', '', '', '', ''),
('6202064206670004', 'SURIATI', '', '', '', '', ''),
('6202064209700001', 'NOOR RAHMAH', '', '', '', '', ''),
('6202064209820001', 'HOLIDEH', '', '', '', '', ''),
('6202064303490001', 'MASTANIYAH', '', '', '', '', ''),
('6202064306870003', 'HADARIAH', '', '', '', '', ''),
('6202064309790004', 'RAUDAH', '', '', '', '', ''),
('6202064409720001', 'ERNAWATI', '', '', '', '', ''),
('6202064410760001', 'FATIMAH', '', '', '', '', ''),
('6202064505790004', 'AMAI DAMAYANTI', '', '', '', '', ''),
('6202064510750008', 'MURIAH', '', '', '', '', ''),
('6202064510830004', 'SRI WAHYUNI', '', '', '', '', ''),
('6202064511820001', 'RITA RIANI', '', '', '', '', ''),
('6202064512860002', 'RUBAINAH', '', '', '', '', ''),
('6202064603600002', 'PUNAMI', '', '', '', '', ''),
('6202064605770003', 'TAIBAH', '', '', '', '', ''),
('6202064605780004', 'RITA', '', '', '', '', ''),
('6202064606790005', 'ZAINAB', '', '', '', '', ''),
('6202064608710006', 'YULIANA', '', '', '', '', ''),
('6202064703720004', 'MUSLIPAH', '', '', '', '', ''),
('6202064703810001', 'IDA ROYANI', '', '', '', '', ''),
('6202064706890002', 'NOR HALIMAH', '', '', '', '', ''),
('6202064707650001', 'RAHIMAH', '', '', '', '', ''),
('6202064707740003', 'NORHALIMAH', '', '', '', '', ''),
('6202064712720001', 'YULIAH', '', '', '', '', ''),
('6202064802820005', 'NEMAH', '', '', '', '', ''),
('6202064803710001', 'SAMIYAH', '', '', '', '', ''),
('6202064803740005', 'BIANA', '', '', '', '', ''),
('6202064805720001', 'SANAUWIYAH', '', '', '', '', ''),
('6202064806920002', 'HALIMAHTUL SALBIYAH', '', '', '', '', ''),
('6202064812890001', 'MISNAWATI', '', '', '', '', ''),
('6202064905730006', 'RABIAH', '', '', '', '', ''),
('6202064907770004', 'RUSIANI', '', '', '', '', ''),
('6202065003700003', 'MASIYANA', '', '', '', '', ''),
('6202065005680005', 'SUMAINAH', '', '', '', '', ''),
('6202065008780010', 'MISNAWATI', '', '', '', '', ''),
('6202065008800004', 'RITA', '', '', '', '', ''),
('6202065010770008', 'HANI', '', '', '', '', ''),
('6202065010840007', 'IDA ROYANI', '', '', '', '', ''),
('6202065102900008', 'JUMIATI', '', '', '', '', ''),
('6202065105460001', 'NORHAYATI', '', '', '', '', ''),
('6202065111750003', 'HANIAH', '', '', '', '', ''),
('6202065203740003', 'RUSMAWATI', '', '', '', '', ''),
('6202065204820004', 'YENI', '', '', '', '', ''),
('6202065207760005', 'HARTIAH', '', '', '', '', ''),
('6202065210800002', 'MARIYANA', '', '', '', '', ''),
('6202065302820004', 'SITI AISYAH', '', '', '', '', ''),
('6202065302860001', 'KASMIATI', '', '', '', '', ''),
('6202065304790003', 'HALIMAH', '', '', '', '', ''),
('6202065310690002', 'ENDANG', '', '', '', '', ''),
('6202065312720001', 'SAWIYAH', '', '', '', '', ''),
('6202065404820002', 'SALMAH', '', '', '', '', ''),
('6202065502810003', 'MINAH', '', '', '', '', ''),
('6202065507660002', 'NURIAH', '', '', '', '', ''),
('6202065508800003', 'TATI', '', '', '', '', ''),
('6202065509910001', 'NOR MAYA SARAH', '', '', '', '', ''),
('6202065602740003', 'SRI ARIYUNANI', '', '', '', '', ''),
('6202065602810002', 'MUNDARSIH', '', '', '', '', ''),
('6202065606860008', 'FITRI RAHMADANIYATI', '', '', '', '', ''),
('6202065708890007', 'PRISTINA WATI ANGGRAINI', '', '', '', '', ''),
('6202065802820004', 'SUMARNI', '', '', '', '', ''),
('6202066003820001', 'SITI AISYAH', '', '', '', '', ''),
('6202066005700005', 'RUSINAH', '', '', '', '', ''),
('6202066012680001', 'LAMSIAH', '', '', '', '', ''),
('6202066107770005', 'LILI HENDRAWATI', '', '', '', '', ''),
('6202066109840002', 'RIA MURNI', '', '', '', '', ''),
('6202066204810002', 'SITI SABARIAH', '', '', '', '', ''),
('6202066206460001', 'KAPSAH', '', '', '', '', ''),
('6202066303800013', 'HAIRIATI', '', '', '', '', ''),
('6202066402910001', 'KURNIASARY', '', '', '', '', ''),
('6202066509810002', 'SUSANTI', '', '', '', '', ''),
('6202066512740007', 'NORHAYATI', '', '', '', '', ''),
('6202066705610001', 'MEI ROSITA KATHARINA', '', '', '', '', ''),
('6202066708760003', 'MISNAWATI', '', '', '', '', ''),
('6202066708880008', 'ANGGUN', '', '', '', '', ''),
('6202066711490001', 'MARIYAM', '', '', '', '', ''),
('6202066810100004', 'AISYAH', '', '', '', '', ''),
('6202066810830004', 'PUJI ASTUTIK', '', '', '', '', ''),
('6202066906690002', 'ARBAINAH', '', '', '', '', ''),
('6202066906750001', 'MUSNIAH', '', '', '', '', ''),
('6202067001800001', 'HAMSIAH', '', '', '', '', ''),
('6202067005800003', 'NOOR SEHAN', '', '', '', '', ''),
('6202067006810002', 'SITI AISYAH', '', '', '', '', ''),
('6202067112690010', 'SALMAH', '', '', '', '', ''),
('6202067112720019', 'RUSDIANA', '', '', '', '', ''),
('6202067112840008', 'MAHRITA', '', '', '', '', ''),
('6202174303920001', 'MURTIYANI', '', '', '', '', ''),
('7503031505690001', 'Explicabo Commodo d', '1', '0', '1', '2', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pekerjaan`
--

CREATE TABLE `tabel_pekerjaan` (
  `NIK` varchar(16) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `PEKERJAAN` varchar(30) NOT NULL,
  `PENGHASILAN_PER_BULAN` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_pekerjaan`
--

INSERT INTO `tabel_pekerjaan` (`NIK`, `NAMA`, `PEKERJAAN`, `PENGHASILAN_PER_BULAN`) VALUES
('1221433242323523', 'MUSLIPAH', 'Petani', 0),
('2415353534534641', 'Rusmi', 'Petani', 0),
('6202060306760006', 'DARMA KUSUMA', '--Pilih Pekerjaan--', 0),
('6202060608800008', 'RAFII DAHLAN', '--Pilih Pekerjaan--', 0),
('6202060706500001', 'ADNAWI', '--Pilih Pekerjaan--', 0),
('6202060901960003', 'TAUFIK AKBAR', '--Pilih Pekerjaan--', 0),
('6202061606650005', 'WIJI', '--Pilih Pekerjaan--', 0),
('6202062609500001', 'HADRIN', '--Pilih Pekerjaan--', 0),
('6202064102480002', 'MAIMUNAH', '--Pilih Pekerjaan--', 0),
('6202064103300001', 'OPON', '--Pilih Pekerjaan--', 0),
('6202064106750007', 'SARIYAH', '--Pilih Pekerjaan--', 0),
('6202064107500014', 'INTANIAH', '--Pilih Pekerjaan--', 0),
('6202064107760037', 'ATI', '--Pilih Pekerjaan--', 0),
('6202064201830005', 'ENDANG', '--Pilih Pekerjaan--', 0),
('6202064204500001', 'ROHANA', '--Pilih Pekerjaan--', 0),
('6202064205710003', 'RUSITAH', '--Pilih Pekerjaan--', 0),
('6202064206670004', 'SURIATI', '--Pilih Pekerjaan--', 0),
('6202064209700001', 'NOOR RAHMAH', '--Pilih Pekerjaan--', 0),
('6202064209820001', 'HOLIDEH', '--Pilih Pekerjaan--', 0),
('6202064303490001', 'MASTANIYAH', '--Pilih Pekerjaan--', 0),
('6202064306870003', 'HADARIAH', '--Pilih Pekerjaan--', 0),
('6202064309790004', 'RAUDAH', '--Pilih Pekerjaan--', 0),
('6202064409720001', 'ERNAWATI', '--Pilih Pekerjaan--', 0),
('6202064410760001', 'FATIMAH', '--Pilih Pekerjaan--', 0),
('6202064505790004', 'AMAI DAMAYANTI', '--Pilih Pekerjaan--', 0),
('6202064510750008', 'MURIAH', '--Pilih Pekerjaan--', 0),
('6202064510830004', 'SRI WAHYUNI', '--Pilih Pekerjaan--', 0),
('6202064511820001', 'RITA RIANI', '--Pilih Pekerjaan--', 0),
('6202064512860002', 'RUBAINAH', '--Pilih Pekerjaan--', 0),
('6202064603600002', 'PUNAMI', '--Pilih Pekerjaan--', 0),
('6202064605770003', 'TAIBAH', '--Pilih Pekerjaan--', 0),
('6202064605780004', 'RITA', '--Pilih Pekerjaan--', 0),
('6202064606790005', 'ZAINAB', '--Pilih Pekerjaan--', 0),
('6202064608710006', 'YULIANA', '--Pilih Pekerjaan--', 0),
('6202064703720004', 'MUSLIPAH', '--Pilih Pekerjaan--', 0),
('6202064703810001', 'IDA ROYANI', '--Pilih Pekerjaan--', 0),
('6202064706890002', 'NOR HALIMAH', '--Pilih Pekerjaan--', 0),
('6202064707650001', 'RAHIMAH', '--Pilih Pekerjaan--', 0),
('6202064707740003', 'NORHALIMAH', '--Pilih Pekerjaan--', 0),
('6202064712720001', 'YULIAH', '--Pilih Pekerjaan--', 0),
('6202064802820005', 'NEMAH', '--Pilih Pekerjaan--', 0),
('6202064803710001', 'SAMIYAH', '--Pilih Pekerjaan--', 0),
('6202064803740005', 'BIANA', '--Pilih Pekerjaan--', 0),
('6202064805720001', 'SANAUWIYAH', '--Pilih Pekerjaan--', 0),
('6202064806920002', 'HALIMAHTUL SALBIYAH', '--Pilih Pekerjaan--', 0),
('6202064812890001', 'MISNAWATI', '--Pilih Pekerjaan--', 0),
('6202064905730006', 'RABIAH', '--Pilih Pekerjaan--', 0),
('6202064907770004', 'RUSIANI', '--Pilih Pekerjaan--', 0),
('6202065003700003', 'MASIYANA', '--Pilih Pekerjaan--', 0),
('6202065005680005', 'SUMAINAH', '--Pilih Pekerjaan--', 0),
('6202065008780010', 'MISNAWATI', '--Pilih Pekerjaan--', 0),
('6202065008800004', 'RITA', '--Pilih Pekerjaan--', 0),
('6202065010770008', 'HANI', '--Pilih Pekerjaan--', 0),
('6202065010840007', 'IDA ROYANI', '--Pilih Pekerjaan--', 0),
('6202065102900008', 'JUMIATI', '--Pilih Pekerjaan--', 0),
('6202065105460001', 'NORHAYATI', '--Pilih Pekerjaan--', 0),
('6202065111750003', 'HANIAH', '--Pilih Pekerjaan--', 0),
('6202065203740003', 'RUSMAWATI', '--Pilih Pekerjaan--', 0),
('6202065204820004', 'YENI', '--Pilih Pekerjaan--', 0),
('6202065207760005', 'HARTIAH', '--Pilih Pekerjaan--', 0),
('6202065210800002', 'MARIYANA', '--Pilih Pekerjaan--', 0),
('6202065302820004', 'SITI AISYAH', '--Pilih Pekerjaan--', 0),
('6202065302860001', 'KASMIATI', '--Pilih Pekerjaan--', 0),
('6202065304790003', 'HALIMAH', '--Pilih Pekerjaan--', 0),
('6202065310690002', 'ENDANG', '--Pilih Pekerjaan--', 0),
('6202065312720001', 'SAWIYAH', '--Pilih Pekerjaan--', 0),
('6202065404820002', 'SALMAH', '--Pilih Pekerjaan--', 0),
('6202065502810003', 'MINAH', '--Pilih Pekerjaan--', 0),
('6202065507660002', 'NURIAH', '--Pilih Pekerjaan--', 0),
('6202065508800003', 'TATI', '--Pilih Pekerjaan--', 0),
('6202065509910001', 'NOR MAYA SARAH', '--Pilih Pekerjaan--', 0),
('6202065602740003', 'SRI ARIYUNANI', '--Pilih Pekerjaan--', 0),
('6202065602810002', 'MUNDARSIH', '--Pilih Pekerjaan--', 0),
('6202065606860008', 'FITRI RAHMADANIYATI', '--Pilih Pekerjaan--', 0),
('6202065708890007', 'PRISTINA WATI ANGGRAINI', '--Pilih Pekerjaan--', 0),
('6202065802820004', 'SUMARNI', '--Pilih Pekerjaan--', 0),
('6202066003820001', 'SITI AISYAH', '--Pilih Pekerjaan--', 0),
('6202066005700005', 'RUSINAH', '--Pilih Pekerjaan--', 0),
('6202066012680001', 'LAMSIAH', '--Pilih Pekerjaan--', 0),
('6202066107770005', 'LILI HENDRAWATI', '--Pilih Pekerjaan--', 0),
('6202066109840002', 'RIA MURNI', '--Pilih Pekerjaan--', 0),
('6202066204810002', 'SITI SABARIAH', '--Pilih Pekerjaan--', 0),
('6202066206460001', 'KAPSAH', '--Pilih Pekerjaan--', 0),
('6202066303800013', 'HAIRIATI', '--Pilih Pekerjaan--', 0),
('6202066402910001', 'KURNIASARY', '--Pilih Pekerjaan--', 0),
('6202066509810002', 'SUSANTI', '--Pilih Pekerjaan--', 0),
('6202066512740007', 'NORHAYATI', '--Pilih Pekerjaan--', 0),
('6202066705610001', 'MEI ROSITA KATHARINA', '--Pilih Pekerjaan--', 0),
('6202066708760003', 'MISNAWATI', '--Pilih Pekerjaan--', 0),
('6202066708880008', 'ANGGUN', '--Pilih Pekerjaan--', 0),
('6202066711490001', 'MARIYAM', '--Pilih Pekerjaan--', 0),
('6202066810100004', 'AISYAH', '--Pilih Pekerjaan--', 0),
('6202066810830004', 'PUJI ASTUTIK', '--Pilih Pekerjaan--', 0),
('6202066906690002', 'ARBAINAH', '--Pilih Pekerjaan--', 0),
('6202066906750001', 'MUSNIAH', '--Pilih Pekerjaan--', 0),
('6202067001800001', 'HAMSIAH', '--Pilih Pekerjaan--', 0),
('6202067005800003', 'NOOR SEHAN', '--Pilih Pekerjaan--', 0),
('6202067006810002', 'SITI AISYAH', '--Pilih Pekerjaan--', 0),
('6202067112690010', 'SALMAH', '--Pilih Pekerjaan--', 0),
('6202067112720019', 'RUSDIANA', '--Pilih Pekerjaan--', 0),
('6202067112840008', 'MAHRITA', '--Pilih Pekerjaan--', 0),
('6202174303920001', 'MURTIYANI', '--Pilih Pekerjaan--', 0),
('7503031505690001', 'Explicabo Commodo d', 'Pengolahan/Industri', 70);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pendidikan`
--

CREATE TABLE `tabel_pendidikan` (
  `NIK` varchar(16) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `PENDIDIKAN_TERAKHIR` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_pendidikan`
--

INSERT INTO `tabel_pendidikan` (`NIK`, `NAMA`, `PENDIDIKAN_TERAKHIR`) VALUES
('1221433242323523', 'MUSLIPAH', 'SMP dan Sederajat'),
('2415353534534641', 'Rusmi', 'SD dan Sederajat'),
('6202060306760006', 'DARMA KUSUMA', '--Pilih Pendidikan--'),
('6202060608800008', 'RAFII DAHLAN', '--Pilih Pendidikan--'),
('6202060706500001', 'ADNAWI', '--Pilih Pendidikan--'),
('6202060901960003', 'TAUFIK AKBAR', '--Pilih Pendidikan--'),
('6202061606650005', 'WIJI', '--Pilih Pendidikan--'),
('6202062609500001', 'HADRIN', '--Pilih Pendidikan--'),
('6202064102480002', 'MAIMUNAH', '--Pilih Pendidikan--'),
('6202064103300001', 'OPON', '--Pilih Pendidikan--'),
('6202064106750007', 'SARIYAH', '--Pilih Pendidikan--'),
('6202064107500014', 'INTANIAH', '--Pilih Pendidikan--'),
('6202064107760037', 'ATI', '--Pilih Pendidikan--'),
('6202064201830005', 'ENDANG', '--Pilih Pendidikan--'),
('6202064204500001', 'ROHANA', '--Pilih Pendidikan--'),
('6202064205710003', 'RUSITAH', '--Pilih Pendidikan--'),
('6202064206670004', 'SURIATI', '--Pilih Pendidikan--'),
('6202064209700001', 'NOOR RAHMAH', '--Pilih Pendidikan--'),
('6202064209820001', 'HOLIDEH', '--Pilih Pendidikan--'),
('6202064303490001', 'MASTANIYAH', '--Pilih Pendidikan--'),
('6202064306870003', 'HADARIAH', '--Pilih Pendidikan--'),
('6202064309790004', 'RAUDAH', '--Pilih Pendidikan--'),
('6202064409720001', 'ERNAWATI', '--Pilih Pendidikan--'),
('6202064410760001', 'FATIMAH', '--Pilih Pendidikan--'),
('6202064505790004', 'AMAI DAMAYANTI', '--Pilih Pendidikan--'),
('6202064510750008', 'MURIAH', '--Pilih Pendidikan--'),
('6202064510830004', 'SRI WAHYUNI', '--Pilih Pendidikan--'),
('6202064511820001', 'RITA RIANI', '--Pilih Pendidikan--'),
('6202064512860002', 'RUBAINAH', '--Pilih Pendidikan--'),
('6202064603600002', 'PUNAMI', '--Pilih Pendidikan--'),
('6202064605770003', 'TAIBAH', '--Pilih Pendidikan--'),
('6202064605780004', 'RITA', '--Pilih Pendidikan--'),
('6202064606790005', 'ZAINAB', '--Pilih Pendidikan--'),
('6202064608710006', 'YULIANA', '--Pilih Pendidikan--'),
('6202064703720004', 'MUSLIPAH', '--Pilih Pendidikan--'),
('6202064703810001', 'IDA ROYANI', '--Pilih Pendidikan--'),
('6202064706890002', 'NOR HALIMAH', '--Pilih Pendidikan--'),
('6202064707650001', 'RAHIMAH', '--Pilih Pendidikan--'),
('6202064707740003', 'NORHALIMAH', '--Pilih Pendidikan--'),
('6202064712720001', 'YULIAH', '--Pilih Pendidikan--'),
('6202064802820005', 'NEMAH', '--Pilih Pendidikan--'),
('6202064803710001', 'SAMIYAH', '--Pilih Pendidikan--'),
('6202064803740005', 'BIANA', '--Pilih Pendidikan--'),
('6202064805720001', 'SANAUWIYAH', '--Pilih Pendidikan--'),
('6202064806920002', 'HALIMAHTUL SALBIYAH', '--Pilih Pendidikan--'),
('6202064812890001', 'MISNAWATI', '--Pilih Pendidikan--'),
('6202064905730006', 'RABIAH', '--Pilih Pendidikan--'),
('6202064907770004', 'RUSIANI', '--Pilih Pendidikan--'),
('6202065003700003', 'MASIYANA', '--Pilih Pendidikan--'),
('6202065005680005', 'SUMAINAH', '--Pilih Pendidikan--'),
('6202065008780010', 'MISNAWATI', '--Pilih Pendidikan--'),
('6202065008800004', 'RITA', '--Pilih Pendidikan--'),
('6202065010770008', 'HANI', '--Pilih Pendidikan--'),
('6202065010840007', 'IDA ROYANI', '--Pilih Pendidikan--'),
('6202065102900008', 'JUMIATI', '--Pilih Pendidikan--'),
('6202065105460001', 'NORHAYATI', '--Pilih Pendidikan--'),
('6202065111750003', 'HANIAH', '--Pilih Pendidikan--'),
('6202065203740003', 'RUSMAWATI', '--Pilih Pendidikan--'),
('6202065204820004', 'YENI', '--Pilih Pendidikan--'),
('6202065207760005', 'HARTIAH', '--Pilih Pendidikan--'),
('6202065210800002', 'MARIYANA', '--Pilih Pendidikan--'),
('6202065302820004', 'SITI AISYAH', '--Pilih Pendidikan--'),
('6202065302860001', 'KASMIATI', '--Pilih Pendidikan--'),
('6202065304790003', 'HALIMAH', '--Pilih Pendidikan--'),
('6202065310690002', 'ENDANG', '--Pilih Pendidikan--'),
('6202065312720001', 'SAWIYAH', '--Pilih Pendidikan--'),
('6202065404820002', 'SALMAH', '--Pilih Pendidikan--'),
('6202065502810003', 'MINAH', '--Pilih Pendidikan--'),
('6202065507660002', 'NURIAH', '--Pilih Pendidikan--'),
('6202065508800003', 'TATI', '--Pilih Pendidikan--'),
('6202065509910001', 'NOR MAYA SARAH', '--Pilih Pendidikan--'),
('6202065602740003', 'SRI ARIYUNANI', '--Pilih Pendidikan--'),
('6202065602810002', 'MUNDARSIH', '--Pilih Pendidikan--'),
('6202065606860008', 'FITRI RAHMADANIYATI', '--Pilih Pendidikan--'),
('6202065708890007', 'PRISTINA WATI ANGGRAINI', '--Pilih Pendidikan--'),
('6202065802820004', 'SUMARNI', '--Pilih Pendidikan--'),
('6202066003820001', 'SITI AISYAH', '--Pilih Pendidikan--'),
('6202066005700005', 'RUSINAH', '--Pilih Pendidikan--'),
('6202066012680001', 'LAMSIAH', '--Pilih Pendidikan--'),
('6202066107770005', 'LILI HENDRAWATI', '--Pilih Pendidikan--'),
('6202066109840002', 'RIA MURNI', '--Pilih Pendidikan--'),
('6202066204810002', 'SITI SABARIAH', '--Pilih Pendidikan--'),
('6202066206460001', 'KAPSAH', '--Pilih Pendidikan--'),
('6202066303800013', 'HAIRIATI', '--Pilih Pendidikan--'),
('6202066402910001', 'KURNIASARY', '--Pilih Pendidikan--'),
('6202066509810002', 'SUSANTI', '--Pilih Pendidikan--'),
('6202066512740007', 'NORHAYATI', '--Pilih Pendidikan--'),
('6202066705610001', 'MEI ROSITA KATHARINA', '--Pilih Pendidikan--'),
('6202066708760003', 'MISNAWATI', '--Pilih Pendidikan--'),
('6202066708880008', 'ANGGUN', '--Pilih Pendidikan--'),
('6202066711490001', 'MARIYAM', '--Pilih Pendidikan--'),
('6202066810100004', 'AISYAH', '--Pilih Pendidikan--'),
('6202066810830004', 'PUJI ASTUTIK', '--Pilih Pendidikan--'),
('6202066906690002', 'ARBAINAH', '--Pilih Pendidikan--'),
('6202066906750001', 'MUSNIAH', '--Pilih Pendidikan--'),
('6202067001800001', 'HAMSIAH', '--Pilih Pendidikan--'),
('6202067005800003', 'NOOR SEHAN', '--Pilih Pendidikan--'),
('6202067006810002', 'SITI AISYAH', '--Pilih Pendidikan--'),
('6202067112690010', 'SALMAH', '--Pilih Pendidikan--'),
('6202067112720019', 'RUSDIANA', '--Pilih Pendidikan--'),
('6202067112840008', 'MAHRITA', '--Pilih Pendidikan--'),
('6202174303920001', 'MURTIYANI', '--Pilih Pendidikan--'),
('7503031505690001', 'Explicabo Commodo d', 'Tidak Tamat SD');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pengumpulan_data`
--

CREATE TABLE `tabel_pengumpulan_data` (
  `id` int(12) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tabel_pengumpulan_data`
--

INSERT INTO `tabel_pengumpulan_data` (`id`, `nama`, `alamat`, `no_hp`, `email`, `file`, `created_at`) VALUES
(4, 'Mak Nyak', 'Ini adalah alamat rumah dari mak nyak', '088274097292', 'tech@esteticohome.com', '1689171158.221164aeb4d635fab.jpeg', '2023-07-02 22:51:11'),
(5, 'Burito Tenggarong', 'Ini adalah alamat dari burito tenggarong silahkan dicek duly', '088274097292', 'pelanggan@gmail.com', '1689173766.373264aebf065b1e5.jpg', '2023-07-12 23:14:36'),
(6, 'Windah Bersaudara', 'Youtube windah', '089670566663', 'bapak@gmail.com', '1689436437.686364b2c115a78ec.png', '2023-07-15 22:53:57');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_rumah`
--

CREATE TABLE `tabel_rumah` (
  `NIK` varchar(16) NOT NULL,
  `LUAS_LANTAI` int(2) NOT NULL,
  `JENIS_LANTAI` varchar(20) NOT NULL,
  `JENIS_DINDING` varchar(30) NOT NULL,
  `FASILITAS_BAB` tinyint(1) NOT NULL,
  `SUMBER_PENERANGAN` tinyint(1) NOT NULL,
  `SUMBER_AIR_MINUM` varchar(30) NOT NULL,
  `BAHAN_BAKAR_MEMASAK` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_rumah`
--

INSERT INTO `tabel_rumah` (`NIK`, `LUAS_LANTAI`, `JENIS_LANTAI`, `JENIS_DINDING`, `FASILITAS_BAB`, `SUMBER_PENERANGAN`, `SUMBER_AIR_MINUM`, `BAHAN_BAKAR_MEMASAK`) VALUES
('', 0, '--Pilih Jenis Lantai', '--Pilih Jenis Dinding--', 1, 1, '--Pilih Sumber Air Minum--', '--Pilih Bahan Bakar '),
('0987654321234587', 1, 'Semen', 'Tembok Tanpa Di Plester', 0, 0, 'Air Hujan', 'Minyak Tanah'),
('1234567890987678', 1, 'Tanah', 'Kayu berkualitas rendah/Bambu', 0, 0, 'Mata air tidak terlindung', 'Kayu Bakar'),
('1302100901880001', 1, 'Bambu', 'Bambu', 0, 0, 'Sungai', 'Kayu Bakar'),
('7204040405770001', 1, 'Bambu', 'Kayu berkualitas rendah/Bambu', 0, 0, 'Mata air tidak terlindung', 'Kayu Bakar'),
('7501190712690001', 1, 'Bambu', 'Kayu berkualitas rendah/Bambu', 0, 0, 'Mata air tidak terlindung', 'Kayu Bakar'),
('7503060111850001', 1, 'Kayu/Papan', 'Rumbia', 0, 0, 'Sungai', 'Kayu Bakar'),
('7503061212710002', 1, 'Kayu/Papan', 'Rumbia', 0, 0, 'Mata Air tidak Terlindung', 'Kayu Bakar'),
('7503061308840001', 1, 'Bambu', 'Kayu berkualitas rendah/Bambu', 0, 0, 'Mata air tidak terlindung', 'Kayu Bakar'),
('7503061706670001', 1, 'Kayu/Papan', 'Bambu', 0, 0, 'Sungai', 'Kayu Bakar'),
('7503062306700001', 1, 'Bambu', 'Rumbia', 0, 0, 'Mata Air tidak Terlindung', 'Kayu Bakar'),
('750306251187002', 1, 'Kayu/Papan', 'Bambu', 0, 0, 'Air Hujan', 'Minyak Tanah'),
('7505020511640001', 1, 'Bambu', 'Rumbia', 0, 0, 'Mata Air tidak Terlindung', 'Kayu Bakar'),
('7571030805610001', 1, 'Bambu', 'Bambu', 0, 0, 'Mata Air tidak Terlindung', 'Kayu Bakar');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_tabungan`
--

CREATE TABLE `tabel_tabungan` (
  `NIK` varchar(16) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `KEPEMILIKAN_TABUNGAN` varchar(1) NOT NULL,
  `JENIS_TABUNGAN` varchar(4) NOT NULL,
  `HARGA` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_tabungan`
--

INSERT INTO `tabel_tabungan` (`NIK`, `NAMA`, `KEPEMILIKAN_TABUNGAN`, `JENIS_TABUNGAN`, `HARGA`) VALUES
('1221433242323523', 'MUSLIPAH', '', '', ''),
('2415353534534641', 'Rusmi', '', '', ''),
('6202060306760006', 'DARMA KUSUMA', '', '', ''),
('6202060608800008', 'RAFII DAHLAN', '', '', ''),
('6202060706500001', 'ADNAWI', '', '', ''),
('6202060901960003', 'TAUFIK AKBAR', '', '', ''),
('6202061606650005', 'WIJI', '', '', ''),
('6202062609500001', 'HADRIN', '', '', ''),
('6202064102480002', 'MAIMUNAH', '', '', ''),
('6202064103300001', 'OPON', '', '', ''),
('6202064106750007', 'SARIYAH', '', '', ''),
('6202064107500014', 'INTANIAH', '', '', ''),
('6202064107760037', 'ATI', '', '', ''),
('6202064201830005', 'ENDANG', '', '', ''),
('6202064204500001', 'ROHANA', '', '', ''),
('6202064205710003', 'RUSITAH', '', '', ''),
('6202064206670004', 'SURIATI', '', '', ''),
('6202064209700001', 'NOOR RAHMAH', '', '', ''),
('6202064209820001', 'HOLIDEH', '', '', ''),
('6202064303490001', 'MASTANIYAH', '', '', ''),
('6202064306870003', 'HADARIAH', '', '', ''),
('6202064309790004', 'RAUDAH', '', '', ''),
('6202064409720001', 'ERNAWATI', '', '', ''),
('6202064410760001', 'FATIMAH', '', '', ''),
('6202064505790004', 'AMAI DAMAYANTI', '', '', ''),
('6202064510750008', 'MURIAH', '', '', ''),
('6202064510830004', 'SRI WAHYUNI', '', '', ''),
('6202064511820001', 'RITA RIANI', '', '', ''),
('6202064512860002', 'RUBAINAH', '', '', ''),
('6202064603600002', 'PUNAMI', '', '', ''),
('6202064605770003', 'TAIBAH', '', '', ''),
('6202064605780004', 'RITA', '', '', ''),
('6202064606790005', 'ZAINAB', '', '', ''),
('6202064608710006', 'YULIANA', '', '', ''),
('6202064703720004', 'MUSLIPAH', '', '', ''),
('6202064703810001', 'IDA ROYANI', '', '', ''),
('6202064706890002', 'NOR HALIMAH', '', '', ''),
('6202064707650001', 'RAHIMAH', '', '', ''),
('6202064707740003', 'NORHALIMAH', '', '', ''),
('6202064712720001', 'YULIAH', '', '', ''),
('6202064802820005', 'NEMAH', '0', '', ''),
('6202064803710001', 'SAMIYAH', '', '', ''),
('6202064803740005', 'BIANA', '', '', ''),
('6202064805720001', 'SANAUWIYAH', '', '', ''),
('6202064806920002', 'HALIMAHTUL SALBIYAH', '', '', ''),
('6202064812890001', 'MISNAWATI', '', '', ''),
('6202064905730006', 'RABIAH', '', '', ''),
('6202064907770004', 'RUSIANI', '', '', ''),
('6202065003700003', 'MASIYANA', '', '', ''),
('6202065005680005', 'SUMAINAH', '', '', ''),
('6202065008780010', 'MISNAWATI', '', '', ''),
('6202065008800004', 'RITA', '', '', ''),
('6202065010770008', 'HANI', '', '', ''),
('6202065010840007', 'IDA ROYANI', '', '', ''),
('6202065102900008', 'JUMIATI', '', '', ''),
('6202065105460001', 'NORHAYATI', '', '', ''),
('6202065111750003', 'HANIAH', '', '', ''),
('6202065203740003', 'RUSMAWATI', '', '', ''),
('6202065204820004', 'YENI', '', '', ''),
('6202065207760005', 'HARTIAH', '', '', ''),
('6202065210800002', 'MARIYANA', '', '', ''),
('6202065302820004', 'SITI AISYAH', '', '', ''),
('6202065302860001', 'KASMIATI', '', '', ''),
('6202065304790003', 'HALIMAH', '', '', ''),
('6202065310690002', 'ENDANG', '', '', ''),
('6202065312720001', 'SAWIYAH', '', '', ''),
('6202065404820002', 'SALMAH', '', '', ''),
('6202065502810003', 'MINAH', '', '', ''),
('6202065507660002', 'NURIAH', '', '', ''),
('6202065508800003', 'TATI', '', '', ''),
('6202065509910001', 'NOR MAYA SARAH', '', '', ''),
('6202065602740003', 'SRI ARIYUNANI', '', '', ''),
('6202065602810002', 'MUNDARSIH', '', '', ''),
('6202065606860008', 'FITRI RAHMADANIYATI', '', '', ''),
('6202065708890007', 'PRISTINA WATI ANGGRAINI', '', '', ''),
('6202065802820004', 'SUMARNI', '', '', ''),
('6202066003820001', 'SITI AISYAH', '', '', ''),
('6202066005700005', 'RUSINAH', '', '', ''),
('6202066012680001', 'LAMSIAH', '', '', ''),
('6202066107770005', 'LILI HENDRAWATI', '', '', ''),
('6202066109840002', 'RIA MURNI', '', '', ''),
('6202066204810002', 'SITI SABARIAH', '', '', ''),
('6202066206460001', 'KAPSAH', '', '', ''),
('6202066303800013', 'HAIRIATI', '', '', ''),
('6202066402910001', 'KURNIASARY', '', '', ''),
('6202066509810002', 'SUSANTI', '', '', ''),
('6202066512740007', 'NORHAYATI', '', '', ''),
('6202066705610001', 'MEI ROSITA KATHARINA', '', '', ''),
('6202066708760003', 'MISNAWATI', '', '', ''),
('6202066708880008', 'ANGGUN', '', '', ''),
('6202066711490001', 'MARIYAM', '', '', ''),
('6202066810100004', 'AISYAH', '', '', ''),
('6202066810830004', 'PUJI ASTUTIK', '', '', ''),
('6202066906690002', 'ARBAINAH', '', '', ''),
('6202066906750001', 'MUSNIAH', '', '', ''),
('6202067001800001', 'HAMSIAH', '', '', ''),
('6202067005800003', 'NOOR SEHAN', '', '', ''),
('6202067006810002', 'SITI AISYAH', '', '', ''),
('6202067112690010', 'SALMAH', '', '', ''),
('6202067112720019', 'RUSDIANA', '', '', ''),
('6202067112840008', 'MAHRITA', '', '', ''),
('6202174303920001', 'MURTIYANI', '', '', ''),
('7503031505690001', 'Explicabo Commodo d', '0', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(10) NOT NULL,
  `pass` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `pass`) VALUES
(2, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_control`
--
ALTER TABLE `tabel_control`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_dusun`
--
ALTER TABLE `tabel_dusun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_kependudukan`
--
ALTER TABLE `tabel_kependudukan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `tabel_konsumsi`
--
ALTER TABLE `tabel_konsumsi`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `tabel_pekerjaan`
--
ALTER TABLE `tabel_pekerjaan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `tabel_pendidikan`
--
ALTER TABLE `tabel_pendidikan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `tabel_pengumpulan_data`
--
ALTER TABLE `tabel_pengumpulan_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_rumah`
--
ALTER TABLE `tabel_rumah`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `tabel_tabungan`
--
ALTER TABLE `tabel_tabungan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_control`
--
ALTER TABLE `tabel_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tabel_dusun`
--
ALTER TABLE `tabel_dusun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tabel_pengumpulan_data`
--
ALTER TABLE `tabel_pengumpulan_data`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
