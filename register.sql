-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2020 at 05:45 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `register`
--

-- --------------------------------------------------------

--
-- Table structure for table `jns_kelamin`
--

CREATE TABLE `jns_kelamin` (
  `id` int(11) NOT NULL,
  `jenis_kelamin` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jns_kelamin`
--

INSERT INTO `jns_kelamin` (`id`, `jenis_kelamin`) VALUES
(1, 'pria'),
(2, 'wanita');

-- --------------------------------------------------------

--
-- Table structure for table `keahlian`
--

CREATE TABLE `keahlian` (
  `id` int(11) NOT NULL,
  `kluster_keahlian` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keahlian`
--

INSERT INTO `keahlian` (`id`, `kluster_keahlian`) VALUES
(1, 'dosen/peneliti'),
(2, 'dosen non peneliti'),
(3, 'peneliti institusi'),
(4, 'postdoc'),
(5, 'peneliti industri');

-- --------------------------------------------------------

--
-- Table structure for table `keanggotaan`
--

CREATE TABLE `keanggotaan` (
  `id` int(11) NOT NULL,
  `status_keanggotaan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keanggotaan`
--

INSERT INTO `keanggotaan` (`id`, `status_keanggotaan`) VALUES
(1, 'belum anggota'),
(2, 'anggota');

-- --------------------------------------------------------

--
-- Table structure for table `kenegaraan`
--

CREATE TABLE `kenegaraan` (
  `id` int(11) NOT NULL,
  `kewarganegaraan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kenegaraan`
--

INSERT INTO `kenegaraan` (`id`, `kewarganegaraan`) VALUES
(1, 'WNI'),
(2, 'WNA');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `jenis_kelamin_id` varchar(128) DEFAULT NULL,
  `kewarganegaraan_id` varchar(128) DEFAULT NULL,
  `kawasan_id` varchar(255) DEFAULT NULL,
  `negara` varchar(128) DEFAULT NULL,
  `kota` varchar(128) DEFAULT NULL,
  `gelar` varchar(128) DEFAULT NULL,
  `institusi` varchar(128) DEFAULT NULL,
  `departemen` varchar(128) DEFAULT NULL,
  `jabatan` varchar(128) DEFAULT NULL,
  `kluster_keahlian_id` varchar(128) DEFAULT NULL,
  `email_resmi` varchar(128) DEFAULT NULL,
  `email` varchar(128) NOT NULL,
  `no_telp` varchar(128) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `research_interest` varchar(255) DEFAULT NULL,
  `research` varchar(255) DEFAULT NULL,
  `status_keanggotaan_id` varchar(128) DEFAULT NULL,
  `tanggal_update` varchar(255) NOT NULL DEFAULT current_timestamp(),
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(128) NOT NULL,
  `admin_kawasan` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `jenis_kelamin_id`, `kewarganegaraan_id`, `kawasan_id`, `negara`, `kota`, `gelar`, `institusi`, `departemen`, `jabatan`, `kluster_keahlian_id`, `email_resmi`, `email`, `no_telp`, `website`, `research_interest`, `research`, `status_keanggotaan_id`, `tanggal_update`, `role_id`, `is_active`, `password`, `foto`, `admin_kawasan`) VALUES
(1, 'Eka', '1', '2', NULL, '-', '-', '-', '-', '-', '-', '1', '-', 'ekas@gmail.com', '-', '-', '-', '-', '1', '22-06-2020 10:14:11', 1, 1, '$2y$10$YQvJU8dB.4vDKbaV3M/CUOI74aejQWPDc/MHOyVrFoJ5IhQDKBqAe', 'people.jpg', 'Indonesia'),
(2, 'Nayla', '1', '1', NULL, '-', '-', '-', '-', '-', '-', '1', '-', 'nayla@gmail.com', '-', '-', '-', '-', '1', '14-06-2020 11:51:12', 1, 1, '$2y$10$ypr.Et4TgmnxRzkCrQUT7OFEymoheHiZiTuu0UWvBAB/KilYxSj3C', 'people.jpg', 'As dan Kanada'),
(3, 'Lazuardi', '1', '1', '1', 'Indonesia', 'Blitar', '', '', '', '', '1', '', 'lazu@gmail.com', '', '', '', '', '2', '26-06-2020 10:00:34', 2, 1, '$2y$10$sZJjCuE70iMB5euzhQNgB.nZeULVO/b1OIWj12ClAsE8dpSjk.QKC', 'people.jpg', ''),
(4, 'Alfeda', '1', '1', '1', 'Indonesia', 'Tulungagung', NULL, NULL, NULL, NULL, '2', '', 'ivan@gmail.com', '', '', '', '', '2', '22-06-2020 14:12:10', 2, 1, '$2y$10$ckZ23ivnYq9MhCGTyGIKZOflPS3vjUUNoYfTiRLacrGLXqv..EbYC', 'people.jpg', ''),
(5, 'Tareq', '1', '2', '2', '', '', '', '', '', '', '1', '', 'tareq@gmail.com', '', '', '', '', '2', '16-06-2020 14:31:06', 2, 1, '$2y$10$i3RfmPR9u2T5Yyig9cjnGelBYCak.DUgjZY0x9vC0APm0/l14FP9y', 'people.jpg', ''),
(6, 'Gerry', '1', '2', '2', '', '', '', '', '', '', '1', '', 'gerry@gmail.com', '', '', '', '', '2', '22-06-2020 08:50:15', 2, 1, '$2y$10$IC7M2Kz.DgklftgWeeDzpOdZ1FBwbfkacZ.EFt2v.h0MVf3HZDlA.', 'people.jpg', ''),
(18, 'Alya', '2', '1', '1', 'Indonesia', 'Jakarta', '', '', '', '', '1', '', 'alyahanna@gmail.com', '', '', '', '', '2', '22-06-2020 14:14:37', 2, 1, '$2y$10$HtEICjHzmmdVJVvhDqhm3ubERbnTEb/VidFLikDa1lXrRBQZxeVdO', 'people.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(3, 2, 2),
(4, 1, 3),
(8, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'administrator'),
(2, 'member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-book-open', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-address-book', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1);

-- --------------------------------------------------------

--
-- Table structure for table `zona`
--

CREATE TABLE `zona` (
  `id` int(11) NOT NULL,
  `kawasan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zona`
--

INSERT INTO `zona` (`id`, `kawasan`) VALUES
(1, 'Indonesia'),
(2, 'AS dan Kanada'),
(3, 'Asia Tenggara'),
(4, 'Asia Timur'),
(5, 'Inggris'),
(6, 'Eropa'),
(7, 'Australia'),
(8, 'Timur Tengah dan Afrika');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jns_kelamin`
--
ALTER TABLE `jns_kelamin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keahlian`
--
ALTER TABLE `keahlian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keanggotaan`
--
ALTER TABLE `keanggotaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kenegaraan`
--
ALTER TABLE `kenegaraan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zona`
--
ALTER TABLE `zona`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jns_kelamin`
--
ALTER TABLE `jns_kelamin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `keahlian`
--
ALTER TABLE `keahlian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `keanggotaan`
--
ALTER TABLE `keanggotaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kenegaraan`
--
ALTER TABLE `kenegaraan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `zona`
--
ALTER TABLE `zona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
