-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Mar 2022 pada 06.37
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `responsi1`
--

DELIMITER $$
--
-- Prosedur
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_kontak` (`id` INT(5))  BEGIN
		DELETE FROM tb_kontak WHERE id_kontak=id;
	END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_pesan` (`id` INT(5))  BEGIN
		DELETE FROM tb_pesan WHERE id_pesan=id;
	END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_kontak` (`in_id` INT(5), `in_nama` VARCHAR(30), `in_email` VARCHAR(30), `in_subjek` VARCHAR(30), `in_pesan` VARCHAR(50))  BEGIN
		INSERT INTO tb_kontak VALUE (in_id, in_nama, in_email, in_subjek, in_pesan);
	END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_pesan` (`in_id` INT(5), `in_email` VARCHAR(30), `in_no_hp` INT(15), `in_cek_in` DATE, `in_cek_out` DATE, `in_tamu` VARCHAR(30))  BEGIN
		INSERT INTO tb_pesan VALUE (in_id, in_email, in_no_hp, in_cek_in, in_cek_out,in_tamu);
	END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchNama` (IN `namanya` VARCHAR(30))  BEGIN
	SELECT *
	FROM tb_pesan 
	WHERE tb_pesan.nama LIKE namanya;
	END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_kontak` (`id` INT(5), `nm` VARCHAR(30), `email` VARCHAR(30), `su` VARCHAR(30), `ps` VARCHAR(50))  BEGIN
		UPDATE tb_kontak SET id_kontak=id, nama=nm, email=email, subjek=sb, pesan=ps
		WHERE id_kontak=id;
	END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_pesan` (`id` INT(5), `email` VARCHAR(30), `hp` INT(15), `ci` DATE, `co` DATE, `tamu` VARCHAR(30))  BEGIN
		UPDATE tb_pesan SET id_pesan=id, email=email, no_hp=hp, cek_in=ci, cek_out=co
		WHERE id_pesan=id;
	END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kontak`
--

CREATE TABLE `tb_kontak` (
  `id_kontak` int(5) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `subjek` varchar(30) DEFAULT NULL,
  `pesan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesan`
--

CREATE TABLE `tb_pesan` (
  `nik` varchar(16) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `cek_in` date NOT NULL,
  `cek_out` date NOT NULL,
  `tamu` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pesan`
--

INSERT INTO `tb_pesan` (`nik`, `nama`, `no_hp`, `cek_in`, `cek_out`, `tamu`) VALUES
('6202040803030001', 'Muhammad Rizal Firmansyah', '085754730736', '2022-03-31', '2022-04-01', 'Standard');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_kontak`
--
ALTER TABLE `tb_kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indeks untuk tabel `tb_pesan`
--
ALTER TABLE `tb_pesan`
  ADD PRIMARY KEY (`nik`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_kontak`
--
ALTER TABLE `tb_kontak`
  MODIFY `id_kontak` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
