-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jul 2023 pada 13.15
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datasewastadion`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee`
--

CREATE TABLE `employee` (
  `id` int(8) NOT NULL,
  `namapenyewa` varchar(25) NOT NULL,
  `tanggalsewa` date NOT NULL,
  `notelepon` int(12) NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  `hargasewa` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `employee`
--

INSERT INTO `employee` (`id`, `namapenyewa`, `tanggalsewa`, `notelepon`, `keterangan`, `hargasewa`) VALUES
(1, 'rahman', '2023-08-05', 2147483647, 'konser coldplay', 200000000),
(2, 'rahmanj', '2023-09-02', 2147483647, 'konser blackpink', 200000000),
(10, 'Rahlan Junior', '2023-02-02', 76889234, 'crazy football', 130000000),
(12, 'Nemanja Gudelj', '2023-10-11', 77778923, 'Konser Reggae', 150000000),
(13, 'Zafar G', '2023-11-12', 778809123, 'Indonesia Vs Timor Leste', 200000000),
(14, 'Farda', '2023-09-16', 770000267, 'Indonesia Vs Zimbabwe', 200000000),
(15, 'Dudun ', '2023-09-18', 76889277, 'Hyper Fc Vs Kontrago', 80000000),
(17, 'Alejandro Garnacho', '2023-11-12', 214475555, 'Asnawi Vs Garnacho', 200000000),
(18, 'Rindang', '2023-09-12', 777780000, 'fun football', 150000000),
(20, 'Zeni', '2023-09-14', 214470000, 'Jesse Lingard Festival', 120000000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
