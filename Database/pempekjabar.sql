-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jul 2025 pada 17.39
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pempekjabar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pegawai`
--

CREATE TABLE `data_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama_pegawai` char(25) DEFAULT NULL,
  `alamat` char(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `j_kelamin` char(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_pegawai`
--

INSERT INTO `data_pegawai` (`id_pegawai`, `nama_pegawai`, `alamat`, `email`, `j_kelamin`) VALUES
(1, 'Bimo', 'Kp.Kelapa Dua', 'Bimo@gmail.com', 'Pria'),
(2, 'Cahyo', 'Pamulang', 'Bimo@gmail.com', 'Perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga`) VALUES
(1, 'Pempek Lenjer', 3000),
(2, 'Pempek Adaan', 3000),
(3, 'Pempek Kulit', 3000),
(4, 'Pempek Kapal Selam (kecil)', 5000),
(5, 'Pempek Kapal Selam (Besar)', 10000),
(6, 'Tekwan', 14000),
(7, 'Pempek Lenggang', 18000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` char(25) DEFAULT NULL,
  `alamat_supplier` varchar(100) DEFAULT NULL,
  `jenis_bahan` varchar(3000) DEFAULT NULL,
  `no_tlp` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `alamat_supplier`, `jenis_bahan`, `no_tlp`) VALUES
(1, 'Aliph', 'BojongNangka', 'Ikan', '08978323652'),
(2, 'Cv.MitraBumbu', 'Balaradja, Kab.Tanerang', 'Bumbu', '089518812962');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `nama_pembeli` varchar(100) DEFAULT NULL,
  `total` int(11) NOT NULL,
  `bayar` int(11) NOT NULL,
  `kembali` int(11) NOT NULL,
  `waktu` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `nama_pembeli`, `total`, `bayar`, `kembali`, `waktu`) VALUES
(1, 'Bimo', 34000, 50000, 16000, '2025-07-02 13:36:50'),
(2, 'Jaspn', 28000, 50000, 22000, '2025-07-02 13:39:26'),
(3, 'bimo', 72000, 100000, 28000, '2025-07-02 13:41:13'),
(4, 'suep', 16000, 30000, 14000, '2025-07-02 13:50:46'),
(5, 'suep', 163000, 1700000, 1537000, '2025-07-02 14:11:02'),
(6, '4', 28000, 40000, 12000, '2025-07-02 14:23:55'),
(7, 'Bimo', 5000, 20000, 15000, '2025-07-02 14:29:59'),
(8, 'Bimok', 20000, 20000, 0, '2025-07-02 14:34:56'),
(9, 'Aliph', 23000, 23000, 0, '2025-07-02 15:19:08'),
(10, 'Aliph', 3000, 50000, 47000, '2025-07-02 15:19:31'),
(11, 'TEst', 10000, 20000, 10000, '2025-07-02 15:39:34'),
(12, 'Test1', 16000, 20000, 4000, '2025-07-02 21:25:08'),
(13, 'Test1', 16000, 20000, 4000, '2025-07-02 21:27:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` char(255) DEFAULT NULL,
  `password` varchar(3000) DEFAULT NULL,
  `akses` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `akses`) VALUES
(3, 'Admin', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `nama_pembeli` (`nama_pembeli`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_pegawai`
--
ALTER TABLE `data_pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=655;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
