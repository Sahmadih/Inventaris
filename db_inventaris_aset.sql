-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2022 at 09:25 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_inventaris_aset`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(7) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `id_kategori` varchar(7) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `id_ruang` varchar(7) NOT NULL,
  `kondisi` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `id_kategori`, `jumlah`, `id_ruang`, `kondisi`) VALUES
('002', 'Avanza', 'KT003', 2, 'G001', 'BAIK'),
('003', 'Gedung Pusat', 'KT004', 1, 'G001', 'Baik'),
('004', 'Pulpen', 'KT001', 10, 'R003', 'Baik'),
('005', 'Penghapus', 'KT001', 9, 'G001', 'Baru'),
('006', 'Printer', 'KT002', 5, 'R001', 'Baru');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` varchar(7) NOT NULL,
  `nama_kategori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
('KT001', 'Alat Tulis Kantor'),
('KT002', 'Komputer'),
('KT003', 'Mobil'),
('KT004', 'Bangunan');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `id_ruangan` varchar(7) NOT NULL,
  `nama_ruangan` text NOT NULL,
  `gedung` varchar(20) NOT NULL,
  `lantai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`id_ruangan`, `nama_ruangan`, `gedung`, `lantai`) VALUES
('R001', 'Direktur', 'A', '3'),
('R002', 'Manager', 'A', '2'),
('R003', 'Staff - 001', 'A', '2'),
('G001', 'Gudang', 'B', '2'),
('G003', 'Gudang', 'B', '1'),
('R004', 'Staff - 002', 'B', '1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
