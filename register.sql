-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2020 at 04:47 PM
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
(2, 'mau'),
(3, 'tidak mau');

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
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp(),
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `jenis_kelamin_id`, `kewarganegaraan_id`, `negara`, `kota`, `gelar`, `institusi`, `departemen`, `jabatan`, `kluster_keahlian_id`, `email_resmi`, `email`, `no_telp`, `website`, `research_interest`, `research`, `status_keanggotaan_id`, `tanggal_update`, `role_id`, `is_active`, `password`, `foto`) VALUES
(1, 'Eka Susianawanti', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ilmuan', NULL, NULL, 'ekas@gmail.com', NULL, NULL, NULL, NULL, 'belum_anggota', '0000-00-00 00:00:00', 1, 1, '$2y$10$9R.ppqMcVNtmylmK0xLQcejS6A3s7nTma0e1Zc3By7Uz18gupavoe', 'people.jpg'),
(2, 'Nayla', '1', '1', 'Indonesia', 'Bojonegoro', 'Sarjana', '-', '-', 'ilmuan', '1', 'a@gmail.com', 'nayla@gmail.com', '123', 'nayla.com', '-', '-', '1', '0000-00-00 00:00:00', 2, 1, '$2y$10$RicBS4k/5wH0OqMJSlQhZutao9XyVLEMXTWcCyg2TAMXnpOrFpJ6S', 'people.jpg'),
(3, 'Susi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ilmuan', NULL, NULL, 'susi@gmail.com', NULL, NULL, NULL, NULL, 'belum_anggota', '0000-00-00 00:00:00', 2, 1, '$2y$10$3EIPRvEJj77mC4jnSRxWweEAFMhZQeOO59dDVrIOdpYgg1fDPSIYG', 'people.jpg');

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
(2, 1, 2),
(3, 2, 2),
(4, 1, 3);

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
(2, 'user'),
(3, 'menu');

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
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 3, 'Sub Menu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(7, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
