-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 12. Maret 2013 jam 16:51
-- Versi Server: 5.0.51
-- Versi PHP: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `rental_mobil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mobil`
--

CREATE TABLE IF NOT EXISTS `tb_mobil` (
  `id_mobil` int(20) NOT NULL auto_increment,
  `merek` varchar(20) NOT NULL,
  `tipe` varchar(20) NOT NULL,
  `tahun` varchar(20) NOT NULL,
  `nopol` varchar(10) NOT NULL,
  `harga` int(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY  (`id_mobil`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data untuk tabel `tb_mobil`
--

INSERT INTO `tb_mobil` (`id_mobil`, `merek`, `tipe`, `tahun`, `nopol`, `harga`, `status`) VALUES
(20, 'VW', 'Ex', '2005', 'B 6', 400000, 'Keluar'),
(19, 'Daihatsu', 'Vios', '2008', 'B 4', 300000, 'Tersedia'),
(27, '1', '1', '2012', '1', 1, 'Tersedia'),
(21, 'Nwew', 'Sedan', '2012', 'B 3', 60000, 'Keluar'),
(17, 'Suzuki', 'Eskudo', '2008', 'B 2', 400000, 'Keluar'),
(16, 'Toyota', 'Avanza', '2012', 'B 1 ', 300000, 'Keluar'),
(22, 'masuk+dari client', 'test', '2012', 'b2', 4000, 'Tersedia'),
(23, 'tes', 'as', '2008', 'B6', 699000, 'Tersedia'),
(24, 'Test Client', 'Client', '2012', 'B 400', 500000, 'Tersedia'),
(25, 'Oke', 'Oke', '2012', 'B 23', 400000, 'Tersedia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_peminjam`
--

CREATE TABLE IF NOT EXISTS `tb_peminjam` (
  `id_peminjam` int(20) NOT NULL auto_increment,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  PRIMARY KEY  (`id_peminjam`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data untuk tabel `tb_peminjam`
--

INSERT INTO `tb_peminjam` (`id_peminjam`, `nama`, `alamat`, `telp`, `email`) VALUES
(15, 'Luluq', 'Malang', '07519400390', 'luluq_luarbiasa'),
(14, 'Luluq', 'Malang', '07519400390', 'luluq_luarbiasa'),
(13, 'Cipto', 'Padang', '085289388949', 'jksolslopdm'),
(12, 'Cipto', 'Padang', '085289388949', 'jksolslopdm'),
(11, 'Israq Luthfan Sidiq', 'Padang', '081353666345', 'shidiq.com'),
(10, 'Israq Luthfan Sidiq', 'Padang', '081353666345', 'shidiq.com'),
(16, 'Sidiq', 'Padang	', '085276878499', 'Shidiq.com'),
(17, 'Sidiq', 'Padang	', '085276878499', 'Shidiq.com'),
(18, 'Israq Luthfan Sidiq', 'Jl. Raden Saleh No. 51 Padang\nSumatera Barat', '081317812207', 'shidiq.luthfan@gmail'),
(19, 'Israq Luthfan Sidiq', 'Jl. Raden Saleh No. 51 Padang\nSumatera Barat', '081317812207', 'shidiq.luthfan@gmail');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_transaksi`
--

CREATE TABLE IF NOT EXISTS `tb_transaksi` (
  `id_transaksi` int(20) NOT NULL auto_increment,
  `peminjam` varchar(20) NOT NULL,
  `nopol` varchar(20) default NULL,
  `harga` varchar(20) NOT NULL,
  `tgl_pinjaman` date default NULL,
  `tgl_kembali` varchar(20) default NULL,
  `lama` varchar(10) default NULL,
  `total` varchar(20) default NULL,
  `denda` varchar(20) default NULL,
  PRIMARY KEY  (`id_transaksi`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data untuk tabel `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `peminjam`, `nopol`, `harga`, `tgl_pinjaman`, `tgl_kembali`, `lama`, `total`, `denda`) VALUES
(23, 'Israq Luthfan Sidiq', 'B 3', '60000', '2013-01-28', '2013-01-31', '3', '180000', NULL),
(21, 'Luluq', 'B 1 ', '300000', '2013-01-13', '2013-01-14', '1', '300000', NULL),
(22, 'Sidiq', 'B 2', '400000', '2013-01-01', '2013-01-24', '23', '9200000', NULL),
(24, 'Israq Luthfan Sidiq', 'B 6', '400000', '2013-01-01', '2013-01-20', '19', '7600000', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL auto_increment,
  `nama` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY  (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `type`) VALUES
(6, '1', '1', '1', 'Admin'),
(3, 'Sucipto', 'cipto', '1', 'Admin'),
(7, 'staff', 'staff', '1', 'Staff'),
(5, 'sidiq', 'sidiq', 'admin', 'Admin');
