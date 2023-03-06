-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jun 2021 pada 12.02
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ndesowood`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(4) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `deskripsi_barang` varchar(1000) NOT NULL,
  `harga_barang` int(9) NOT NULL,
  `stok` int(5) NOT NULL,
  `rating_barang` int(1) NOT NULL,
  `foto_barang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `kategori`, `deskripsi_barang`, `harga_barang`, `stok`, `rating_barang`, `foto_barang`) VALUES
(6, 'Kursi Santai', 'kursi', 'Kursi santai ini dibuat dengan bahan dasar kayu jati. Memiliki bentuk yang minimalis dan sangat nyaman untuk duduk bersantai. ', 750000, 5, 4, 'chair2.png'),
(7, 'Rak Buku', 'rak', 'Rak buku ini dibuat dengan bahan dasar kayu jati. Memiliki desain yang simpel namun menarik, sangat cocok untuk menyimpan barang/buku agar terlihat lebih rapi dan elegan. Mampu menahan beban buku yang cukup berat', 2100000, 5, 5, 'rak.png'),
(8, 'Rak 5 Tingkat', 'rak', 'Memiliki 5 tingkat sebagai tempat yang dapat digunakan untuk menyimpan berbagai barang seperti buku, hiasan bunga, dan lain sebagainya. Memiliki laci yang dapat ditutup pada bagian bawah yang berukuran cukup besar. Dibuat dengan bahan dasar kayu jati. ', 1600000, 3, 4, 'rak5tingkat.jpg'),
(9, 'Rak Sepatu 3 Tingkat', 'rak', 'Mampu menampung 9 pasang sepatu atau sandal ukuran dewasa. Dengan desain yang cukup simpel membuat rak ini tetap terlihat indah saat ditempatkan di berbagai tempat. Berbahan dasar kayu Jati Belanda', 450000, 2, 5, 'raksepatu3tingkat.jpg'),
(10, 'Rak Dinding Tempel', 'rak', 'Dibuat dengan bahan dasar kayu mahoni dengan finishing warna gelap  membuatnya terlihat estetik. Memiliki dua tingkat rak yang memiliki ukuran sedang.', 200000, 2, 5, 'rakdindingtempel.jpg'),
(11, 'Rak Tempel Sudut 4 Tingkat', 'rak', 'Memiliki 4 tingkat untuk menyimpan barang. Terbuat dari kayu mahoni dengan finishing warna gelap. Sesuai dengan namanya, rak ini ditempatkan menempel pada sudut dinding dengan besar sudut 90°', 450000, 3, 5, 'rakdindingsudut.jpg'),
(12, 'Set Meja & Kursi Makan', 'meja', 'Satu set kursi dan meja makan terdiri dari 4 kursi, 1 kursi panjang, dan satu buah meja. Dibuat dengan bahan dasar kayu mahoni den dilapisi dengan cat kayu berwarna gelap. ', 5000000, 1, 5, 'setmejakursimakan.jpg'),
(13, 'Kursi Berjemur', 'kursi', 'Kursi berjemur cocok ditempatkan di luar rumah terutama di taman. Kursi ini dibuat dengan tujuan menyediakan tempat bersantai bagi penggunanya. Berbahan dasar kayu mahoni dan dilengkapi roda, sehingga mudah dipindahkan', 1200000, 1, 4, 'kursiberjemur.jpg'),
(14, 'Set Kursi & Meja Santai', 'kursi', 'Kursi ini memiliki bentuk unik yaitu kursi yang melekat dengan mejanya. Terdiri dari satu meja diantara dua kursi yang sejajar. Cocok ditempatkan di teras rumah. Dibuat dengan bahan dasar kayu jati.', 1500000, 1, 5, 'kursiteras.jpg'),
(15, 'Rak Besar 9 kotak', 'rak', 'Rak ini memiliki ukuran yang besar dan kokoh. Memiliki 9 tempat berbentuk kotak yang dapat digunakan untuk menyimpan berbagai barang. Pada bagian bawah rak terdapat laci dengan pintu geser. Rak ini dibuat dengan bahan dasar kayu mahoni', 1800000, 1, 5, 'rakdanlaci.jpg'),
(16, 'Meja TV Besar', 'meja', 'Meja ini dapat digunakan untuk meletakkan TV. Memiliki laci yang dapat ditutup sebanyak 2 buah dan laci terbuka 2 buah pada bagian tengah meja. Dibuat dengan bahan dasar kayu jati sehingga mampu menahan beban yang cukup berat.', 2200000, 1, 5, 'mejatvbesar.jpg'),
(17, 'Kursi Santai Panjang', 'kursi', 'Kursi ini Cocok ditempatkan di teras untuk bersantai bersama keluarga. Terbuat dari kayu mahoni dengan finishing warna natural. ', 1000000, 1, 4, 'kursisantaipanjang.jpg'),
(18, 'Bangku Panjang', 'kursi', 'Bangku ini memiliki desain classic dan sederhana. Sangat cocok ditempatkan di rumah tradisional. Berbahan dasar kayu mahoni dan dilapisi cat kayu berwarna gelap.', 600000, 1, 4, 'bangkupanjang.jpg'),
(19, 'Meja Lingkaran', 'meja', 'Dibuat dengan bahan dasar kayu mahoni. Kayu ini berbentuk lingkaran dengan empat kaki meja, cocok ditempatkan di ruang santai. ', 800000, 1, 5, 'mejalingkaran.png'),
(20, 'Kursi Teras', 'kursi', 'Kursi ini dibuat dengan bahan dasar kayu mahoni dengan finishing warna gelap. Cocok ditempatkan di teras rumah untuk bersantai bersama keluarga.', 450000, 2, 4, 'kursiteras2.jpg'),
(21, 'Rak Sepatu 3 Tingkat', 'rak', 'Rak sepatu ini memiliki tiga tingkat dan dapat menyimpan hingga sembilan sepatu / sandal ukuran dewasa. Dibuat dengan bahan dasar kayu mahoni dan dilapisi cat kayu natural. Memiliki ukuran yang ramping sehingga tidak memakan terlalu banyak tempat', 400000, 2, 5, 'raksepatu3.jpg'),
(22, 'Rak Besar', 'rak', 'Rak ini memiliki ukuran yang cukup besar dan memiliki 4 ruang untuk menyimpan barang. Terbuat dari kayu jati belanda dengan warna natural. ', 1000000, 2, 5, 'rakbesar.jpg'),
(23, 'Meja Lingkaran', 'meja', 'Dibuat dengan bahan dasar kayu mahoni. Meja ini berbentuk lingkaran dengan daun meja dibuat dari potongan kayu yang disusun secara rapi. Kaki meja saling terhubung sehingga mampu menahan beban yang lumayan berat, cocok ditempatkan di ruang santai. ', 520000, 1, 4, 'meja.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang_user`
--

CREATE TABLE `keranjang_user` (
  `id_pemilik_keranjang` int(4) NOT NULL,
  `id_barang` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `keranjang_user`
--

INSERT INTO `keranjang_user` (`id_pemilik_keranjang`, `id_barang`) VALUES
(5, 6),
(5, 13),
(10, 18);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(5) NOT NULL,
  `id_barang` int(4) NOT NULL,
  `id_pemesan` int(4) NOT NULL,
  `nama_pemesan` varchar(70) NOT NULL,
  `barang` varchar(300) NOT NULL,
  `alamat` varchar(500) NOT NULL,
  `jasa_kirim` varchar(100) NOT NULL,
  `bank_pembayaran` varchar(10) NOT NULL,
  `total` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `id_barang`, `id_pemesan`, `nama_pemesan`, `barang`, `alamat`, `jasa_kirim`, `bank_pembayaran`, `total`) VALUES
(20, 7, 5, 'Yusuf Abidin', 'Rak Buku', '\r\n    081216922107, NGADIROJO, KAB WONOGIRI, JAWA TENGAH, 57681', 'JNE', 'BRI', 1200000),
(23, 13, 10, 'namaku adalah', 'Kuri Berjemur', '\r\n    , , KAB , , ', 'JNT', 'BRI', 1200000),
(24, 18, 10, 'namaku adalah', 'Bangku Panjang', '\r\n    , , KAB , , ', 'JNE', '', 600000),
(25, 23, 10, 'namaku adalah', 'Meja Lingkaran', '\r\n    , , KAB , , ', 'JNE', 'BRI', 520000),
(26, 20, 12, 'firdhausdwisukma', 'Kursi Teras', '\r\n    081384445202, Bumi Parahyangan Kencana blok e-17 no 23 rt 02 rw 13 kec cangkuang, KAB BANDUNG, JAWA BARAT, 40238', 'JNE', 'BRI', 450000),
(27, 22, 13, 'Firdhaus Dwi Sukma', 'Rak Besar', '\r\n    081384445202, Bumi Parahyangan Kencana blok e-17 no 23 rt 02 rw 13 , KAB BANDUNG, JAWA BARAT, 40238', 'JNE', 'BRI', 1000000),
(28, 21, 12, 'firdhausdwisukma', 'Rak Sepatu 3 Tingkat', '\r\n    081384445202, Bumi Parahyangan Kencana blok e-17 no 23 rt 02 rw 13 , KAB BANDUNG, JAWA BARAT, 40238', 'JNE', 'MANDIRI', 400000),
(29, 22, 12, 'firdhausdwisukma', 'Rak Besar', '\r\n    081384445202, Bumi Parahyangan Kencana blok e-17 no 23 rt 02 rw 13 , KAB BANDUNG, JAWA BARAT, 40238', 'JNE', 'BRI', 1000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil_user`
--

CREATE TABLE `profil_user` (
  `id_user` int(4) NOT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `alamat` varchar(120) DEFAULT NULL,
  `provinsi` varchar(40) DEFAULT NULL,
  `kabupaten` varchar(50) DEFAULT NULL,
  `kode_pos` char(5) DEFAULT NULL,
  `foto_user` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `profil_user`
--

INSERT INTO `profil_user` (`id_user`, `no_hp`, `alamat`, `provinsi`, `kabupaten`, `kode_pos`, `foto_user`) VALUES
(5, '081216922107', 'NGADIROJO', 'JAWA TENGAH', 'WONOGIRI', '57681', 'yusopdipantayyyyy.jpg'),
(6, '081216922107', 'Dungwinong, RT03/11 Mlokomaniswetan, Ngadirojo', 'JAWA TENGAH', 'WONOGIRI', '57681', 'yusopdigunungg.jpg'),
(10, '', '', '', '', '', ''),
(11, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '081384445202', 'Bumi Parahyangan Kencana blok e-17 no 23 rt 02 rw 13 ', 'JAWA BARAT', 'BANDUNG', '40238', NULL),
(13, '081384445202', 'Bumi Parahyangan Kencana blok e-17 no 23 rt 02 rw 13 ', 'JAWA BARAT', 'BANDUNG', '40238', '2.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(4) NOT NULL,
  `username` varchar(25) NOT NULL,
  `nama` varchar(70) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(300) NOT NULL,
  `kodereset` varchar(300) DEFAULT NULL,
  `waktu` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `nama`, `email`, `password`, `kodereset`, `waktu`) VALUES
(1, 'yusufabidin', 'Yusuf Abidin Nurrahman', 'yusufabidin02@gmail.com', '$2y$10$uNyvr9apR.e825j6DbB.qOrM3ne8yjhCt85eDomi6hyznRHJb7S0W', NULL, '2021-05-24 01:13:00'),
(5, 'abidin', 'Yusuf Abidin', 'yusufysfytb@gmail.com', '$2y$10$a92X98bo8UzxTCEQZQyYU.EwUCQ9wD6R4vzrAr1SEhebatwQ6a4ve', NULL, '2021-06-07 12:30:02'),
(6, 'ysf_abidin', 'Yusuf Abidin N', 'bakulbaksobro132@gmail.com', '$2y$10$tSt.tc36UvQvEgkDDdMhB.nziqIUOZ6IuTiVftmB3AtOpe2gwZvJ2', NULL, '2021-05-24 00:00:00'),
(10, 'namamu', 'namaku adalah', 'akutampanbro132@gmail.com', '$2y$10$l5S2vxWcbVW7/5OQIIReVOkg.JE8hDykmlQLEjxZp4IcKRBWcsoLu', NULL, '0000-00-00 00:00:00'),
(11, 'abidin123', 'abidin', 'anakbapakapril@gmail.com', '$2y$10$vN1Smh4JB0magxvLi/MX8.dNqfOrizr4v1YaofiD5rGkuPO8OIRR2', NULL, NULL),
(12, 'usdhaus', 'firdhausdwisukma', 'firdausdwisukma@gmail.com', '$2y$10$T/dtHVCVlFXWmIW/FOVDhu56XUQHRXFoIpYP9mPeO8uqALgA3nxRm', 'd3e981c50136f65e0ef7a7f0ae95ecf813f5e5f162882dbf6ad525b3a7ff4ce9', '2021-06-15 16:21:20'),
(13, 'firdhausdwisukma', 'Firdhaus Dwi Sukma', 'firdausdwisukma@outlook.com', '$2y$10$guzRGlntSGsK3VccOb3hlu5wlyYSVjoUE.U9vvnPBchtSllndmd8q', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `keranjang_user`
--
ALTER TABLE `keranjang_user`
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_pemilik_keranjang` (`id_pemilik_keranjang`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_pemesan` (`id_pemesan`);

--
-- Indeks untuk tabel `profil_user`
--
ALTER TABLE `profil_user`
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `keranjang_user`
--
ALTER TABLE `keranjang_user`
  ADD CONSTRAINT `keranjang_user_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `keranjang_user_ibfk_2` FOREIGN KEY (`id_pemilik_keranjang`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_ibfk_2` FOREIGN KEY (`id_pemesan`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `profil_user`
--
ALTER TABLE `profil_user`
  ADD CONSTRAINT `profil_user_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

DELIMITER $$
--
-- Event
--
CREATE DEFINER=`root`@`localhost` EVENT `hapus_kode` ON SCHEDULE EVERY 1 MINUTE STARTS '2021-05-20 23:23:10' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE user SET kodereset = NULL
WHERE TIMEDIFF(CURRENT_TIMESTAMP(), waktu) >= 700$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
