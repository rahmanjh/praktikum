-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jul 2023 pada 13.25
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
-- Database: `rahmanjohana`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `age` int(11) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `employee`
--

INSERT INTO `employee` (`id`, `name`, `email`, `age`, `designation`, `created`) VALUES
(1, 'John Doe', 'johndoe@gmail.com', 32, 'Data Scientist', '2012-06-01 02:12:30'),
(2, 'David Costa', 'sam.mraz1996@yahoo.com', 29, 'Apparel Patternmaker', '2013-03-03 01:20:10'),
(3, 'Todd Martell', 'liliane_hirt@gmail.com', 36, 'Accountant', '2014-09-20 03:10:25'),
(6, 'Alan Wallin', 'neva_gutman10@hotmail.com', 37, 'Chemical Technician', '0000-00-00 00:00:00'),
(7, 'Joyce Hinze', 'davonte.maye@yahoo.com', 44, 'Transportation Planner', '0000-00-00 00:00:00'),
(8, 'Donna Andrews', 'joesph.quitz@yahoo.com', 49, 'Wind Energy Engineer', '0000-00-00 00:00:00'),
(9, 'Andrew Best', 'jeramie_roh@hotmail.com', 51, 'Geneticist', '2019-01-02 02:20:30'),
(10, 'Joel Ogle', 'summer_shanah@hotmail.com', 45, 'Space Sciences Teacher', '0000-00-00 00:00:00'),
(19, 'Rahman', 'rahman@mail.com', 20, 'Programmer', '2023-06-19 09:29:15'),
(21, 'Rahman', 'rahman@mail.com', 20, 'Programmer', '2023-06-19 09:34:40'),
(26, 'Gudril', 'mobilranger241@gmail.com', 27, 'Doctor', '2023-06-26 08:51:21'),
(28, 'jason da costa', 'mobilranger241@gmail.com', 0, 'Football ', '2023-07-04 07:59:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `city` varchar(60) NOT NULL,
  `state` varchar(60) NOT NULL,
  `zip` varchar(5) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`first_name`, `last_name`, `username`, `password`, `city`, `state`, `zip`, `id`) VALUES
('Rahman', 'Johana', 'Rahman', 'Rahman', 'Ciamis', 'Jawa Barat', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
