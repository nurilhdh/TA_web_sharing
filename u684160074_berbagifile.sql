-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 28, 2022 at 11:39 PM
-- Server version: 10.5.13-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u684160074_berbagifile`
--

-- --------------------------------------------------------

--
-- Table structure for table `uploaded_files`
--

CREATE TABLE `uploaded_files` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `keyword` varchar(255) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploaded_files`
--

INSERT INTO `uploaded_files` (`id`, `name`, `file`, `keyword`) VALUES
(1, 'nurilhd', '31052216540064561203191003_NURIL HIDAYAH_3D3TA_LAPRES11 (1).pdf', 'selasa31'),
(2, 'nurilhd', '3105221654006791PRAKTIKUM 10.docx', 'selasa098'),
(3, 'nurilhd', '310522165400861911. Drafting FTTH and labelling.pdf', 'selasa10'),
(4, 'nurilhd', '3105221654009473LAPORAN RESMI9.docx', 'lapres31'),
(5, 'nurilhd', '310522165401027911 Modul XBee Sleep Scheduling dan multihop.pdf', 'lapres098'),
(6, 'Shofia', '3105221654012575Modul 11.pdf', 'lapres'),
(7, 'Shofia', '3105221654012818Modul 11.pdf', ''),
(8, 'nurilhd', '31052216540130151203191003_NURIL HIDAYAH_3D3TA_LAPRES 10.pdf', 'lapresbuida'),
(9, 'Regita ', '31052216540130271653974059231.jpg', ''),
(10, 'admin', '3105221654013225Garuda L76G Datasheet (2).pdf', 'Yes'),
(11, 'ujang', '3105221654017039deviceframes.png', ''),
(12, 'irfanrdi', '3105221654017791medfo16.jpg', 'Tes'),
(13, 'nurilhd', '31052216540188431203191003_NURIL HIDAYAH_3D3TA_LAPRES3.pdf', 'lapres3'),
(14, 'ujang', '3105221654020232Extendded Abstrak_merged.pdf', 'ujangta'),
(15, 'tothemoon', '0106221654050844tes.pdf', 'rahasia'),
(16, 'nurilhd', '0106221654051658NURIL HIDAYAH_2D3TA_1203191003_UAS TKKI.pdf', 'Rabu01'),
(17, 'Feri', '0106221654052900PPTProposalProyekAkhir.pdf', 'fileppt'),
(18, 'Feri', '0106221654052968PPTProposalProyekAkhir.pdf', 'fileppt'),
(19, 'Ghulam', '0106221654072097ANALISA 4G - TEMS (1).docx', 'Tes'),
(20, 'Coba', '0106221654076256suresh2019.pdf', 'Coba'),
(21, 'nurilhd', '01062216540815031203191003_NURIL HIDAYAH_3D3TA_LAPRES 10.pdf', 'lapres10'),
(22, 'Ayfaa', '0106221654089510SOAL DESAIN GPON DAN FTTX_2.pdf', 'Ff'),
(23, 'dickyyy', '01062216540932901203191017-M. DICKY ATHALLA-UTS.pdf', '1234'),
(24, 'nurilhd', '0106221654095190PROPOSAL REVISI_1203191003.pdf', 'proposal10'),
(25, 'nurilhd', '0106221654095473PROPOSAL REVISI_1203191003.pdf', 'proposal10'),
(26, 'nurilhd', '0106221654095653PROPOSAL REVISI_1203191003-dikonversi.docx', 'proposal#'),
(27, 'nurilhd', '020622165413556711 Modul XBee Sleep Scheduling dan multihop.pdf', 'kamis02'),
(28, 'nurilhd', '0206221654172475FORM KOMITMEN KHUSUS PESERTA EC-COUNCIL 2021_Nuril Hidayah.doc', 'resmi#'),
(29, 'nurilhd', '0406221654352915pexels-fauxels-3184360.jpg', 'okta06'),
(30, 'nurilhd', '140622165522212403-15-29_KELOMPOK 7_LAPORAN PROYEK_3D3TA.pdf', 'project07'),
(31, 'nurilhd', '1506221655264724Education_Nuril Hidayah.pdf', 'part01'),
(32, 'nurilhd', '1506221655264771Education_Nuril Hidayah.pdf', 'part01'),
(33, 'nurilhd', '1506221655264948Education_Nuril Hidayah.pdf', 'part_01'),
(34, 'nurilhd', '1706221655475707Dokumentasi Praktikum 10 Mei 2022.docx', 'jumat17'),
(35, 'nurilhd', '1706221655483143Education_Nuril Hidayah.pdf', 'pdf_01'),
(36, 'nurilhd', '1706221655483448DESKRIPSI TA_NURIL HIDAYAH.pdf', 'pdf_02'),
(37, 'nurilhd', '17062216554837441203191003_Nuril Hidayah_ProposalPA.pdf', 'pdf_03'),
(38, 'nurilhd', '1706221655483984PORTOFOLIO_CONTENT WRITER_NURIL HIDAYAH.pdf', 'pdf_04'),
(39, 'nurilhd', '1706221655485279REVISI BUKU KP.pdf', 'pdf_05'),
(40, 'nurilhd', '1706221655485714ANALISA 4G - TEMS (1).docx.pdf', 'pdf_06'),
(41, 'nurilhd', '1806221655530192Kini Fitur Link IG Stories Bisa Digunakan Siapa Saja.doc', 'doc_01'),
(42, 'nurilhd', '1806221655530359DESKRIPSI.doc', 'doc_02'),
(43, 'nurilhd', '1806221655530527PROPOSAL KP BMKG PROGRESS 3.doc', 'doc_03'),
(44, 'nurilhd', '1806221655530673PENGAMATAN DATA 3G TEMS_KELOMPOK 5.docx', 'doc_04'),
(45, 'nurilhd', '1806221655530835PORTO.doc', 'doc_05'),
(46, 'nurilhd', '1806221655531043ANALISA 4G - TEMS (1) (1).docx', 'doc_06'),
(47, 'nurilhd', '22062216558633631203191003_Nuril Hidayah_Buku PA Progress 1.pdf', 'rabu10#'),
(48, 'nurilhd', '22062216558699481203191003_Nuril Hidayah_Buku PA Progress 1.pdf', 'rabu22#'),
(49, 'nurilhd', '22062216558701241203191003_Nuril Hidayah_Buku PA2 Rev1.pdf', '1234#'),
(50, 'nurilhd', '22062216558715801203191003_Nuril Hidayah_Buku PA2.pdf', 'rabusaja#'),
(51, 'nurilhd', '22062216558716101203191003_Nuril Hidayah_Buku PA2.pdf', 'rabusaja#'),
(52, 'nurilhd', '2506221656138662REVISI DESKRIPSI 2_NURIL HIDAYAH.pdf', 'sabtu#'),
(53, 'nurilhd', '2307221658556253TUGAS 1_NURIL HIDAYAH.pdf', 'sabtu23'),
(54, 'nurilhd', '26072216588030981203191003_Nuril Hidayah_Buku PA2 Rev After Demo.doc', 'selasa10'),
(55, 'nurilhd', '26072216588036541203191003_Nuril Hidayah_Buku PA2 Rev2 selasa.doc', 'selasa20'),
(56, 'nurilhd', '26072216588048621203191003_Nuril Hidayah_Buku PA2 Rev2 selasa.doc', 'selasa#'),
(57, 'nurilhd', '26072216588054671203191003_Nuril Hidayah_Buku PA2 Rev After Demo.doc', 'selasa10'),
(58, 'nurilhd', '26072216588055881203191003_Nuril Hidayah_Buku PA2 Rev2 selasa.doc', 'selasa30'),
(59, 'nurilhd', '26072216588183931203191003_Nuril Hidayah_Buku PA2 Rev After Demo.doc', 'selasa50'),
(60, 'nurilhd', '26072216588185431203191003_Nuril Hidayah_Buku PA2 Rev2 selasa.doc', 'minggu10'),
(61, 'nurilhd', '26072216588200561203191003_Nuril Hidayah_Buku PA2 Rev After Demo.doc', 'aja10');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`) VALUES
(1, 'nurilhd', 'nurilhd29@gmail.com', '8865c420990fb14a1621058a99565671'),
(2, 'Shofia', 'shofiakhairina22@gmail.com', '3f71916d46f94f5ee51bcee817ad8fae'),
(3, 'Regita ', 'Regitafebry17@mail.com', '6dc2225ba4c846d2b58680afda25337d'),
(4, 'admin', 'rafidimas1706@gmail.com', '139c4e89cdbedaf144d05ca54a12a57b'),
(5, 'ermadani_dyah09', 'ermadani.dyah09@gmail.com', '8fbfd88d05ee870fbf9b12e8b42db844'),
(6, 'Yudho', 'yudhoputran@gmail.com', '3b98e2dffc6cb06a89dcb0d5c60a0206'),
(7, 'ujang', 'ujang@gmail.com', 'c959810f01adc10791f46e1b3ecab45a'),
(8, 'irfanrdi', 'irfan99irfan9@gmail.com', '93159691bfd0cd68913a6ef63b1bcd8c'),
(9, 'Ahmad Aji', 'ahmadajialk17@gmail.com', '4c1995a94351ecca2483b149bbcedea0'),
(10, 'Anin Cantik', 'anintania9820@gmail.com', '9058e374a4ab7705d2283b33bf0f23ae'),
(11, 'aini', 'aininu0306@gmail.com', '8274b82aa057f3df1908084f14c55ec3'),
(12, 'anissa', 'anissa17@gmail.com', '084c6bef144995ef136b907f5e79b72d'),
(13, 'raihanimanu', 'raihanimanu@outlook.com', '202cb962ac59075b964b07152d234b70'),
(14, 'sl230601', 'srilestari230601@gmail.com', '67d397814ce59eb8d5a2eefdcc9b8c2c'),
(15, 'Zazaza', 'muhammadrezasaputra180900@gmail.com', 'b42d644d30c1441c97f64ee8471f83e7'),
(16, 'audinaayum', 'audiimrdn@gmail.com', '572a439c9b9f9696dd68b4e6d039076b'),
(17, 'azizhaha', 'm.aziz@student.ppns.ac.id', 'febd328d0f73bec284ea9b32be1b2253'),
(18, 'tothemoon', 'tothemoon@guerrillamail.com', '202cb962ac59075b964b07152d234b70'),
(19, 'Feri', 'feriafrianto7@gmail.com', 'd8208ece042ec0fc11d29cb28b394583'),
(20, 'Mila', 'milanadhifah12@gmail.com', '394ccbc0d53f0bdaa1a5280e7104cca5'),
(21, 'Ghulam', 'ghulammegilan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(22, 'Coba', 'coba@gmail.com', 'aeb2d79912d5da78564e2971b7159f92'),
(23, 'Ayfaa', 'afifatulfaizah99@gmail.com', '444f450bbff8c6f061a0d5901313eb42'),
(24, 'dickyyy', 'dickyathallah@gamil.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(25, 'Blopblop', 'moonlie190@gmail.com', '0bf44a9634896de88678e56222c1b012'),
(26, 'coba', 'emailcoba@gmail.com', 'c3ec0f7b054e729c5a716c8125839829');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `uploaded_files`
--
ALTER TABLE `uploaded_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `uploaded_files`
--
ALTER TABLE `uploaded_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
