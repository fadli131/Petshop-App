-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Nov 2020 pada 07.40
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpemesanan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(50) NOT NULL,
  `tanggal_pemesanan` date NOT NULL,
  `total_belanja` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemesanan`
--

-- INSERT INTO `pemesanan` (`id_pemesanan`, `tanggal_pemesanan`, `total_belanja`) VALUES
-- -- (35, '2020-06-22', 50000),
-- -- (38, '2020-06-22', 17000),
-- -- (39, '2020-06-22', 25000),
-- -- (40, '2020-06-22', 22000),
-- -- (41, '2020-06-22', 56000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan_produk`
--

CREATE TABLE `pemesanan_produk` (
  `id_pemesanan_produk` int(50) NOT NULL,
  `id_pemesanan` int(50) NOT NULL,
  `id_menu` varchar(50) NOT NULL,
  `jumlah` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemesanan_produk`
--

-- INSERT INTO `pemesanan_produk` (`id_pemesanan_produk`, `id_pemesanan`, `id_menu`, `jumlah`) VALUES
-- (7, 32, '9', 1),
-- (8, 32, '11', 1),
-- (9, 33, '16', 1),
-- (10, 33, '6', 1),
-- (11, 34, '13', 1),
-- (12, 34, '8', 1),
-- (13, 34, '9', 1),
-- (14, 34, '17', 1),
-- (15, 35, '9', 2),
-- (16, 35, '14', 1),
-- (17, 36, '8', 1),
-- (18, 37, '13', 1),
-- (19, 37, '16', 1),
-- (20, 38, '8', 1),
-- (21, 39, '9', 1),
-- (22, 39, '16', 1),
-- (23, 40, '10', 1),
-- (24, 40, '14', 1),
-- (25, 41, '17', 1),
-- (26, 41, '10', 1),
-- (27, 41, '9', 2),
-- (28, 42, '9', 1),
-- (29, 42, '14', 1),
-- (30, 42, '7', 1),
-- (31, 42, '17', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_menu` int(50) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `jenis_menu` varchar(50) NOT NULL,
  `stok` int(50) NOT NULL,
  `harga` int(50) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_menu`, `nama_menu`, `jenis_menu`, `stok`, `harga`, `gambar`) VALUES
(1, 'Blue Ocean', 'Minuman', 80, 12000, 'blueocean.jpg'),
(2, 'Choco Avocado', 'Minuman', 50, 13000, 'chocoavocado.jpg'),
(3, 'Choco Oreo Blend', 'Minuman', 50, 17000, 'chocooreoblend.jpg'),
(4, 'Double Espresso', 'Minuman', 45, 20000, 'doubleespresso.jpg'),
(5, 'Ice Americano', 'Minuman', 50, 12000, 'iceamericano.jpg'),
(6, 'Ice Caramel Machiato', 'Minuman', 78, 10000, 'icecaramelmachiato.jpg'),
(7, 'Ice Kopi Milo', 'Minuman', 100, 2000, 'icekopimilo.jpg'),
(8, 'Red Velvet Hot', 'Minuman', 55, 8000, 'redvelvethot.jpg'),
(9, 'Sweet Tea Hot', 'Minuman', 50, 10000, 'sweetteahot.jpg'),
(10, 'Taro Hot', 'Minuman', 50, 10000, 'tarohot.jpg'),
(11, 'Vanilla Hot', 'Minuman', 60, 5000, 'vanillahot.jpg'),
(12, 'Violet Sunset', 'Minuman', 100, 4000, 'violetsunset.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `nama_lengkap` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `hp` varchar(25) NOT NULL,
  `status` enum('admin','user','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_lengkap`, `jenis_kelamin`, `tanggal_lahir`, `alamat`, `hp`, `status`) VALUES
(1, 'daus', 'daus123', 'Alfirdaus Muhammad Farhan', 'Laki-Laki', '1998-05-14', 'Tanjung Piayu', '089560328673', 'admin'),
(2, 'rinaldo', 'rinaldo123', 'Rinaldo', 'Laki-Laki', '1999-01-11', 'Tanjung Uma', '085233748222', 'user'),
(3, 'admin', 'admin', 'Alfirdaus Muhammad Farhan', 'Laki-Laki', '1998-05-19', 'Tanjung Piayu', '089123614882', 'admin'),
(4, 'user', 'user', 'Rinaldo', 'Laki-Laki', '1998-10-22', 'Tanjung Uma', '089560328673', 'user'),
(5, 'rinaldo', 'rinaldo', 'Rinaldo', 'Laki-Laki', '1999-02-23', 'Tanjung Uma', '089123614882', 'user'),
(6, 'daus', 'daus123', 'Alfirdaus Muhammad Farhan', 'Laki-Laki', '1998-05-14', 'Tanjung Piayu', '085233748222', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indeks untuk tabel `pemesanan_produk`
--
ALTER TABLE `pemesanan_produk`
  ADD PRIMARY KEY (`id_pemesanan_produk`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `pemesanan_produk`
--
ALTER TABLE `pemesanan_produk`
  MODIFY `id_pemesanan_produk` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_menu` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
