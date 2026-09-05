-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2025 at 01:15 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ponpes`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_panel_convertedimage`
--

CREATE TABLE `admin_panel_convertedimage` (
  `id` bigint(20) NOT NULL,
  `original_filename` varchar(255) NOT NULL,
  `webp_image` varchar(100) NOT NULL,
  `original_size` bigint(20) NOT NULL,
  `converted_size` bigint(20) NOT NULL,
  `compression_ratio` double NOT NULL,
  `quality` int(11) NOT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admissions_santri`
--

CREATE TABLE `admissions_santri` (
  `id` bigint(20) NOT NULL,
  `nama_lengkap` varchar(200) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `golongan_darah` varchar(3) NOT NULL,
  `tinggi_badan` int(10) UNSIGNED DEFAULT NULL CHECK (`tinggi_badan` >= 0),
  `berat_badan` int(10) UNSIGNED DEFAULT NULL CHECK (`berat_badan` >= 0),
  `nama_ayah` varchar(200) NOT NULL,
  `nik_ayah` varchar(16) NOT NULL,
  `nama_ibu` varchar(200) NOT NULL,
  `nik_ibu` varchar(16) NOT NULL,
  `pekerjaan_ayah` varchar(100) NOT NULL,
  `pekerjaan_ibu` varchar(100) NOT NULL,
  `no_hp_ayah` varchar(15) NOT NULL,
  `no_hp_ibu` varchar(15) NOT NULL,
  `alamat_orangtua` longtext NOT NULL,
  `alamat` longtext NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `email` varchar(254) NOT NULL,
  `asal_sekolah` varchar(200) NOT NULL,
  `kelas_terakhir` varchar(50) NOT NULL,
  `tahun_lulus` varchar(4) NOT NULL,
  `no_ijazah` varchar(50) NOT NULL,
  `foto_santri` varchar(100) DEFAULT NULL,
  `foto_ktp` varchar(100) DEFAULT NULL,
  `foto_akta` varchar(100) DEFAULT NULL,
  `foto_ijazah` varchar(100) DEFAULT NULL,
  `surat_sehat` varchar(100) DEFAULT NULL,
  `foto_santri_approved` tinyint(1) NOT NULL,
  `foto_ktp_approved` tinyint(1) NOT NULL,
  `foto_akta_approved` tinyint(1) NOT NULL,
  `foto_ijazah_approved` tinyint(1) NOT NULL,
  `surat_sehat_approved` tinyint(1) NOT NULL,
  `catatan` longtext NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `agama_ayah` varchar(20) NOT NULL,
  `agama_ibu` varchar(20) NOT NULL,
  `anak_ke` int(10) UNSIGNED DEFAULT NULL CHECK (`anak_ke` >= 0),
  `bahasa_sehari_hari` varchar(50) NOT NULL,
  `desa` varchar(100) NOT NULL,
  `jumlah_saudara` int(10) UNSIGNED DEFAULT NULL CHECK (`jumlah_saudara` >= 0),
  `kabupaten` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kelas_diterima` varchar(50) NOT NULL,
  `kewarganegaraan` varchar(10) NOT NULL,
  `kewarganegaraan_ayah` varchar(10) NOT NULL,
  `kewarganegaraan_ibu` varchar(10) NOT NULL,
  `kode_pos` varchar(10) NOT NULL,
  `nama_panggilan` varchar(100) NOT NULL,
  `npsn_sekolah` varchar(20) NOT NULL,
  `pendidikan_ayah` varchar(50) NOT NULL,
  `pendidikan_ibu` varchar(50) NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `riwayat_penyakit` varchar(200) NOT NULL,
  `status_ayah` varchar(10) NOT NULL,
  `status_ibu` varchar(10) NOT NULL,
  `tanggal_diterima` date DEFAULT NULL,
  `tanggal_lahir_ayah` date DEFAULT NULL,
  `tanggal_lahir_ibu` date DEFAULT NULL,
  `tempat_lahir_ayah` varchar(100) NOT NULL,
  `tempat_lahir_ibu` varchar(100) NOT NULL,
  `tinggal_dengan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admissions_santri`
--

INSERT INTO `admissions_santri` (`id`, `nama_lengkap`, `nisn`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `golongan_darah`, `tinggi_badan`, `berat_badan`, `nama_ayah`, `nik_ayah`, `nama_ibu`, `nik_ibu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `no_hp_ayah`, `no_hp_ibu`, `alamat_orangtua`, `alamat`, `no_hp`, `email`, `asal_sekolah`, `kelas_terakhir`, `tahun_lulus`, `no_ijazah`, `foto_santri`, `foto_ktp`, `foto_akta`, `foto_ijazah`, `surat_sehat`, `foto_santri_approved`, `foto_ktp_approved`, `foto_akta_approved`, `foto_ijazah_approved`, `surat_sehat_approved`, `catatan`, `status`, `created_at`, `updated_at`, `agama_ayah`, `agama_ibu`, `anak_ke`, `bahasa_sehari_hari`, `desa`, `jumlah_saudara`, `kabupaten`, `kecamatan`, `kelas_diterima`, `kewarganegaraan`, `kewarganegaraan_ayah`, `kewarganegaraan_ibu`, `kode_pos`, `nama_panggilan`, `npsn_sekolah`, `pendidikan_ayah`, `pendidikan_ibu`, `provinsi`, `riwayat_penyakit`, `status_ayah`, `status_ibu`, `tanggal_diterima`, `tanggal_lahir_ayah`, `tanggal_lahir_ibu`, `tempat_lahir_ayah`, `tempat_lahir_ibu`, `tinggal_dengan`) VALUES
(51, 'Mahmud Pratama', '3561019928', 'Malang', '2007-11-06', 'L', 'Islam', 'A', 179, 48, 'Haris Sutrisno', '9648981501941490', 'Kiki Siregar', '2657402068727213', 'Wiraswasta', 'Arsitek', '08943263205', '08134859589', 'Jl. Gatot Subroto No. 931, RT 06/RW 04, Kelurahan E, Kecamatan E, Surabaya, Sumatera Utara', 'Jl. Gatot Subroto No. 931, RT 06/RW 04, Kelurahan E, Kecamatan E, Surabaya, Sumatera Utara', '08449432688', 'mahmudpratama0@gmail.com', 'SMP Negeri 01', '9 SMP', '2024', 'DN-863174/2024', 'santri/foto/3561019928_foto_santri.jpg', 'santri/ktp/3561019928_foto_ktp.jpg', 'santri/akta/3561019928_foto_akta.jpg', 'santri/ijazah/3561019928_foto_ijazah.jpg', 'santri/surat_sehat/3561019928_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:36.333716', '2025-12-01 18:19:36.343196', 'Islam', 'Islam', 1, 'Indonesia', 'Kelurahan E', 1, 'Surabaya', 'Kecamatan E', '', 'WNI', 'WNI', 'WNI', '41352', 'Mahmud', '43672738', 'S2', 'SD SEDERAJAT', 'Sumatera Utara', 'Asma ringan', 'HIDUP', 'HIDUP', NULL, '1980-10-17', '1984-03-19', 'Jakarta', 'Bandung', 'Wali'),
(52, 'Gita Harto', '1238164370', 'Bekasi', '2007-01-08', 'P', 'Islam', 'O', 134, 32, 'Iqbal Santoso', '9703250505536026', 'Sinta Setiawan', '3836782117861085', 'Arsitek', 'Polisi', '08587538036', '08163212481', 'Jl. Ahmad Yani No. 640, RT 08/RW 06, Kelurahan E, Kecamatan H, Semarang, Lampung', 'Jl. Ahmad Yani No. 640, RT 08/RW 06, Kelurahan E, Kecamatan H, Semarang, Lampung', '08817055853', 'gitaharto1@gmail.com', 'MA Al-Amin', '12 MA', '2023', 'DN-483361/2023', 'santri/foto/1238164370_foto_santri.jpg', 'santri/ktp/1238164370_foto_ktp.jpg', 'santri/akta/1238164370_foto_akta.jpg', 'santri/ijazah/1238164370_foto_ijazah.jpg', 'santri/surat_sehat/1238164370_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:36.367165', '2025-12-01 18:19:36.374453', 'Islam', 'Islam', 5, 'Indonesia', 'Kelurahan E', 1, 'Semarang', 'Kecamatan H', '', 'WNI', 'WNI', 'WNI', '27949', 'Gita', '52540632', 'SMP SEDERAJAT', 'D3', 'Lampung', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1983-05-21', '1976-09-06', 'Tangerang', 'Palu', 'Lainnya'),
(53, 'Zainab Wardhana', '1636792167', 'Magelang', '2007-04-02', 'P', 'Islam', 'AB', 142, 69, 'Ali Susilo', '8517933760675190', 'Elsa Wardhana', '5964871986739144', 'Arsitek', 'Dosen', '08585250130', '08146950164', 'Jl. Gatot Subroto No. 637, RT 07/RW 10, Desa A, Kecamatan J, Palembang, DI Yogyakarta', 'Jl. Gatot Subroto No. 637, RT 07/RW 10, Desa A, Kecamatan J, Palembang, DI Yogyakarta', '08531812087', 'zainabwardhana2@gmail.com', 'SD Islam Terpadu', '9 SMP', '2024', 'DN-623797/2024', 'santri/foto/1636792167_foto_santri.jpg', 'santri/ktp/1636792167_foto_ktp.jpg', 'santri/akta/1636792167_foto_akta.jpg', 'santri/ijazah/1636792167_foto_ijazah.jpg', 'santri/surat_sehat/1636792167_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:36.400024', '2025-12-01 18:19:36.408664', 'Islam', 'Islam', 4, 'Indonesia', 'Desa A', 2, 'Palembang', 'Kecamatan J', '', 'WNI', 'WNI', 'WNI', '91639', 'Zainab', '53357976', 'D3', 'S1', 'DI Yogyakarta', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1972-10-25', '1969-07-05', 'Padang', 'Tasikmalaya', 'Orang Tua'),
(54, 'Indah Maulana', '8309352123', 'Semarang', '2010-11-03', 'P', 'Islam', 'A', 170, 40, 'Bilal Wijaya', '1453817148957591', 'Fira Hidayat', '8836724027449781', 'Pedagang', 'TNI', '08656169422', '08727859576', 'Jl. Sudirman No. 711, RT 09/RW 02, Desa C, Kecamatan B, Pekanbaru, Kalimantan Tengah', 'Jl. Sudirman No. 711, RT 09/RW 02, Desa C, Kecamatan B, Pekanbaru, Kalimantan Tengah', '08992089048', 'indahmaulana3@gmail.com', 'MA Al-Amin', '12 MA', '2021', 'DN-908807/2021', 'santri/foto/8309352123_foto_santri.jpg', 'santri/ktp/8309352123_foto_ktp.jpg', 'santri/akta/8309352123_foto_akta.jpg', 'santri/ijazah/8309352123_foto_ijazah.jpg', 'santri/surat_sehat/8309352123_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:36.435194', '2025-12-01 18:19:36.442578', 'Islam', 'Islam', 3, 'Indonesia', 'Desa C', 6, 'Pekanbaru', 'Kecamatan B', '', 'WNI', 'WNI', 'WNI', '58752', 'Indah', '42457618', 'S2', 'SMP SEDERAJAT', 'Kalimantan Tengah', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1984-01-08', '1992-05-26', 'Tangerang', 'Malang', 'Lainnya'),
(55, 'Laila Wibisono', '4501514456', 'Manado', '2013-04-20', 'P', 'Islam', 'B', 142, 58, 'Rafi Kusuma', '6300785578475396', 'Zahra Agung', '7847980495787897', 'Perawat', 'Hakim', '08217042455', '08562196274', 'Jl. Diponegoro No. 715, RT 01/RW 06, Desa E, Kecamatan F, Jakarta Pusat, Sumatera Utara', 'Jl. Diponegoro No. 715, RT 01/RW 06, Desa E, Kecamatan F, Jakarta Pusat, Sumatera Utara', '08567921396', 'lailawibisono4@gmail.com', 'SD Muhammadiyah', '9 SMP', '2021', 'DN-349986/2021', 'santri/foto/4501514456_foto_santri.jpg', 'santri/ktp/4501514456_foto_ktp.jpg', 'santri/akta/4501514456_foto_akta.jpg', 'santri/ijazah/4501514456_foto_ijazah.jpg', 'santri/surat_sehat/4501514456_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:36.467240', '2025-12-01 18:19:36.476307', 'Islam', 'Islam', 1, 'Indonesia', 'Desa E', 2, 'Jakarta Pusat', 'Kecamatan F', '', 'WNI', 'WNI', 'WNI', '55770', 'Laila', '26473060', 'S1', 'S1', 'Sumatera Utara', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1973-01-12', '1989-04-27', 'Magelang', 'Malang', 'Orang Tua'),
(56, 'Ira Harto', '2047648358', 'Bogor', '2015-09-23', 'P', 'Islam', 'AB', 164, 56, 'Hadi Setiawan', '3853113655563063', 'Hani Setiawan', '3745357022991913', 'Konsultan', 'Akuntan', '08123541496', '08531328976', 'Jl. Diponegoro No. 411, RT 10/RW 06, Kelurahan E, Kecamatan B, Jakarta Barat, Kalimantan Barat', 'Jl. Diponegoro No. 411, RT 10/RW 06, Kelurahan E, Kecamatan B, Jakarta Barat, Kalimantan Barat', '08978620068', 'iraharto5@gmail.com', 'SD Negeri 02', '12 SMA', '2022', 'DN-451460/2022', 'santri/foto/2047648358_foto_santri.jpg', 'santri/ktp/2047648358_foto_ktp.jpg', 'santri/akta/2047648358_foto_akta.jpg', 'santri/ijazah/2047648358_foto_ijazah.jpg', 'santri/surat_sehat/2047648358_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:36.505827', '2025-12-01 18:19:36.514707', 'Islam', 'Islam', 3, 'Indonesia', 'Kelurahan E', 3, 'Jakarta Barat', 'Kecamatan B', '', 'WNI', 'WNI', 'WNI', '63478', 'Ira', '44242453', 'S1', 'SMA SEDERAJAT', 'Kalimantan Barat', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1980-06-09', '1979-06-19', 'Ambon', 'Semarang', 'Wali'),
(57, 'Zahra Kurniawan', '5272205661', 'Malang', '2015-05-13', 'P', 'Islam', 'B', 137, 61, 'Usman Rizki', '2833585865177391', 'Alya Bambang', '1059473284156978', 'Pedagang', 'Petani', '08403715131', '08526070131', 'Jl. Hayam Wuruk No. 261, RT 09/RW 10, Desa E, Kecamatan G, Jakarta Utara, Jawa Timur', 'Jl. Hayam Wuruk No. 261, RT 09/RW 10, Desa E, Kecamatan G, Jakarta Utara, Jawa Timur', '08648507239', 'zahrakurniawan6@gmail.com', 'MTs Al-Ikhlas', '12 MA', '2023', 'DN-782078/2023', 'santri/foto/5272205661_foto_santri.jpg', 'santri/ktp/5272205661_foto_ktp.jpg', 'santri/akta/5272205661_foto_akta.jpg', 'santri/ijazah/5272205661_foto_ijazah.jpg', 'santri/surat_sehat/5272205661_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:36.548004', '2025-12-01 18:19:36.554490', 'Islam', 'Islam', 4, 'Indonesia', 'Desa E', 0, 'Jakarta Utara', 'Kecamatan G', '', 'WNI', 'WNI', 'WNI', '30190', 'Zahra', '29895408', 'D3', 'SMP SEDERAJAT', 'Jawa Timur', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1988-10-06', '1985-09-21', 'Jakarta', 'Jakarta', 'Wali'),
(58, 'Khalid Saputra', '9865057138', 'Malang', '2009-09-10', 'L', 'Islam', 'B', 163, 40, 'Rizki Pratama', '4118447134534723', 'Nadia Dalimunthe', '4958423612399352', 'Wiraswasta', 'Perawat', '08287033113', '08976063768', 'Jl. Diponegoro No. 222, RT 06/RW 02, Kelurahan C, Kecamatan E, Bekasi, Bengkulu', 'Jl. Diponegoro No. 222, RT 06/RW 02, Kelurahan C, Kecamatan E, Bekasi, Bengkulu', '08836962714', 'khalidsaputra7@gmail.com', 'SMA Negeri 02', '6 SD', '2022', 'DN-123112/2022', 'santri/foto/9865057138_foto_santri.jpg', 'santri/ktp/9865057138_foto_ktp.jpg', 'santri/akta/9865057138_foto_akta.jpg', 'santri/ijazah/9865057138_foto_ijazah.jpg', 'santri/surat_sehat/9865057138_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:36.589755', '2025-12-01 18:19:36.598484', 'Islam', 'Islam', 5, 'Indonesia', 'Kelurahan C', 4, 'Bekasi', 'Kecamatan E', '', 'WNI', 'WNI', 'WNI', '93926', 'Khalid', '86548246', 'SMP SEDERAJAT', 'S3', 'Bengkulu', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1970-02-16', '1978-10-08', 'Depok', 'Palu', 'Orang Tua'),
(59, 'Fatimah Suryadi', '1130336239', 'Bekasi', '2013-05-03', 'P', 'Islam', 'B', 155, 38, 'Jalal Sari', '4266260676044676', 'Jihan Tanjung', '8627857799428926', 'Pengusaha', 'Nelayan', '08596288255', '08711876928', 'Jl. Sudirman No. 655, RT 05/RW 05, Desa C, Kecamatan C, Depok, Sulawesi Utara', 'Jl. Sudirman No. 655, RT 05/RW 05, Desa C, Kecamatan C, Depok, Sulawesi Utara', '08496445549', 'fatimahsuryadi8@gmail.com', 'MTs Al-Ikhlas', '6 SD', '2021', 'DN-241720/2021', 'santri/foto/1130336239_foto_santri.jpg', 'santri/ktp/1130336239_foto_ktp.jpg', 'santri/akta/1130336239_foto_akta.jpg', 'santri/ijazah/1130336239_foto_ijazah.jpg', 'santri/surat_sehat/1130336239_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:36.631983', '2025-12-01 18:19:36.639230', 'Islam', 'Islam', 3, 'Indonesia', 'Desa C', 1, 'Depok', 'Kecamatan C', '', 'WNI', 'WNI', 'WNI', '55104', 'Fatimah', '37509393', 'SMP SEDERAJAT', 'S1', 'Sulawesi Utara', 'Alergi debu', 'HIDUP', 'HIDUP', NULL, '1988-09-02', '1981-01-21', 'Banten', 'Magelang', 'Lainnya'),
(60, 'Hasan Sari', '1459048003', 'Tangerang', '2012-07-19', 'L', 'Islam', 'A', 155, 38, 'Dani Budi', '9241457678779141', 'Vina Nur', '7614262901111294', 'Pengusaha', 'Wiraswasta', '08374217799', '08684173623', 'Jl. Gatot Subroto No. 244, RT 06/RW 04, Kelurahan B, Kecamatan H, Malang, Kalimantan Barat', 'Jl. Gatot Subroto No. 244, RT 06/RW 04, Kelurahan B, Kecamatan H, Malang, Kalimantan Barat', '08526732916', 'hasansari9@gmail.com', 'MI Al-Hidayah', '9 SMP', '2023', 'DN-488199/2023', 'santri/foto/1459048003_foto_santri.jpg', 'santri/ktp/1459048003_foto_ktp.jpg', 'santri/akta/1459048003_foto_akta.jpg', 'santri/ijazah/1459048003_foto_ijazah.jpg', 'santri/surat_sehat/1459048003_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:36.667235', '2025-12-01 18:19:36.677957', 'Islam', 'Islam', 1, 'Indonesia', 'Kelurahan B', 3, 'Malang', 'Kecamatan H', '', 'WNI', 'WNI', 'WNI', '52328', 'Hasan', '93545430', 'SD SEDERAJAT', 'S2', 'Kalimantan Barat', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1980-09-09', '1975-06-12', 'Tasikmalaya', 'Padang', 'Lainnya'),
(61, 'Fadil Arief', '9810799183', 'Kendari', '2010-09-28', 'L', 'Islam', 'AB', 148, 71, 'Dani Wijaya', '1581096676682509', 'Ira Maulana', '3473082498420055', 'Konsultan', 'Hakim', '08783381987', '08601115516', 'Jl. Ahmad Yani No. 694, RT 09/RW 09, Kelurahan E, Kecamatan D, Tangerang, Jawa Barat', 'Jl. Ahmad Yani No. 694, RT 09/RW 09, Kelurahan E, Kecamatan D, Tangerang, Jawa Barat', '08858514681', 'fadilarief10@gmail.com', 'MA Muhammadiyah', '12 SMA', '2024', 'DN-964461/2024', 'santri/foto/9810799183_foto_santri.jpg', 'santri/ktp/9810799183_foto_ktp.jpg', 'santri/akta/9810799183_foto_akta.jpg', 'santri/ijazah/9810799183_foto_ijazah.jpg', 'santri/surat_sehat/9810799183_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:36.706582', '2025-12-01 18:19:36.714190', 'Islam', 'Islam', 4, 'Indonesia', 'Kelurahan E', 6, 'Tangerang', 'Kecamatan D', '', 'WNI', 'WNI', 'WNI', '41103', 'Fadil', '55531408', 'SD SEDERAJAT', 'S3', 'Jawa Barat', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1990-03-09', '1983-11-15', 'Denpasar', 'Lampung', 'Orang Tua'),
(62, 'Ibrahim Sukarno', '9963451433', 'Banten', '2009-02-06', 'L', 'Islam', 'AB', 170, 79, 'Jalal Pratama', '6357174116538980', 'Fadila Lubis', '6223726063188056', 'Karyawan Swasta', 'PNS', '08199409195', '08559982611', 'Jl. Ahmad Yani No. 130, RT 09/RW 07, Kelurahan C, Kecamatan H, Pekanbaru, Sumatera Selatan', 'Jl. Ahmad Yani No. 130, RT 09/RW 07, Kelurahan C, Kecamatan H, Pekanbaru, Sumatera Selatan', '08724786935', 'ibrahimsukarno11@gmail.com', 'SMA Negeri 02', '12 MA', '2022', 'DN-721273/2022', 'santri/foto/9963451433_foto_santri.jpg', 'santri/ktp/9963451433_foto_ktp.jpg', 'santri/akta/9963451433_foto_akta.jpg', 'santri/ijazah/9963451433_foto_ijazah.jpg', 'santri/surat_sehat/9963451433_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:36.742899', '2025-12-01 18:19:36.754947', 'Islam', 'Islam', 1, 'Indonesia', 'Kelurahan C', 6, 'Pekanbaru', 'Kecamatan H', '', 'WNI', 'WNI', 'WNI', '77289', 'Ibrahim', '11040249', 'SD SEDERAJAT', 'SD SEDERAJAT', 'Sumatera Selatan', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1969-03-18', '1986-06-01', 'Bogor', 'Palu', 'Wali'),
(63, 'Amir Dalimunthe', '9803496487', 'Solo', '2008-05-26', 'L', 'Islam', 'A', 155, 78, 'Hamzah Handoko', '4022350480900455', 'Umi Arief', '6961589138628063', 'Insinyur', 'PNS', '08726346097', '08772319826', 'Jl. Gatot Subroto No. 114, RT 03/RW 10, Desa D, Kecamatan E, Jakarta Pusat, Kalimantan Selatan', 'Jl. Gatot Subroto No. 114, RT 03/RW 10, Desa D, Kecamatan E, Jakarta Pusat, Kalimantan Selatan', '08280079753', 'amirdalimunthe12@gmail.com', 'MA Muhammadiyah', '12 MA', '2021', 'DN-868577/2021', 'santri/foto/9803496487_foto_santri.jpg', 'santri/ktp/9803496487_foto_ktp.jpg', 'santri/akta/9803496487_foto_akta.jpg', 'santri/ijazah/9803496487_foto_ijazah.jpg', 'santri/surat_sehat/9803496487_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:36.783359', '2025-12-01 18:19:36.796215', 'Islam', 'Islam', 4, 'Indonesia', 'Desa D', 5, 'Jakarta Pusat', 'Kecamatan E', '', 'WNI', 'WNI', 'WNI', '44660', 'Amir', '77987258', 'S1', 'SD SEDERAJAT', 'Kalimantan Selatan', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1985-03-28', '1973-08-03', 'Bengkulu', 'Makassar', 'Wali'),
(64, 'Bilal Kusuma', '8161175484', 'Palembang', '2013-10-20', 'L', 'Islam', 'A', 167, 62, 'Yasin Sutrisno', '5111628164191467', 'Khadijah Sutrisno', '6283376766139040', 'Notaris', 'Pegawai Bank', '08369762920', '08730087870', 'Jl. Sudirman No. 462, RT 02/RW 08, Desa E, Kecamatan I, Palembang, Banten', 'Jl. Sudirman No. 462, RT 02/RW 08, Desa E, Kecamatan I, Palembang, Banten', '08833804141', 'bilalkusuma13@gmail.com', 'SD Negeri 02', '12 SMA', '2021', 'DN-130132/2021', 'santri/foto/8161175484_foto_santri.jpg', 'santri/ktp/8161175484_foto_ktp.jpg', 'santri/akta/8161175484_foto_akta.jpg', 'santri/ijazah/8161175484_foto_ijazah.jpg', 'santri/surat_sehat/8161175484_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:36.817550', '2025-12-01 18:19:36.831423', 'Islam', 'Islam', 4, 'Indonesia', 'Desa E', 2, 'Palembang', 'Kecamatan I', '', 'WNI', 'WNI', 'WNI', '25668', 'Bilal', '11690253', 'SMP SEDERAJAT', 'SMA SEDERAJAT', 'Banten', 'Alergi debu', 'HIDUP', 'HIDUP', NULL, '1975-02-06', '1976-06-16', 'Depok', 'Balikpapan', 'Wali'),
(65, 'Khalid Kusuma', '3540816449', 'Samarinda', '2011-03-10', 'L', 'Islam', 'AB', 168, 65, 'Faris Suryadi', '8936861418332045', 'Hilda Darmawan', '8489440009855875', 'Akuntan', 'Nelayan', '08751443900', '08228359955', 'Jl. Diponegoro No. 820, RT 04/RW 01, Kelurahan B, Kecamatan B, Semarang, Sumatera Barat', 'Jl. Diponegoro No. 820, RT 04/RW 01, Kelurahan B, Kecamatan B, Semarang, Sumatera Barat', '08340027017', 'khalidkusuma14@gmail.com', 'MTs Darussalam', '12 MA', '2024', 'DN-955872/2024', 'santri/foto/3540816449_foto_santri.jpg', 'santri/ktp/3540816449_foto_ktp.jpg', 'santri/akta/3540816449_foto_akta.jpg', 'santri/ijazah/3540816449_foto_ijazah.jpg', 'santri/surat_sehat/3540816449_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:36.860582', '2025-12-01 18:19:36.870323', 'Islam', 'Islam', 2, 'Indonesia', 'Kelurahan B', 0, 'Semarang', 'Kecamatan B', '', 'WNI', 'WNI', 'WNI', '50263', 'Khalid', '72128134', 'SMA SEDERAJAT', 'S2', 'Sumatera Barat', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1989-03-24', '1973-06-15', 'Pekanbaru', 'Bogor', 'Lainnya'),
(66, 'Abdullah Saputra', '6574625586', 'Lampung', '2007-10-21', 'L', 'Islam', 'AB', 150, 78, 'Mansur Wibisono', '5683318583949242', 'Aisyah Wibisono', '8535458277972806', 'Hakim', 'Pengusaha', '08470407506', '08860437318', 'Jl. Hayam Wuruk No. 832, RT 09/RW 02, Kelurahan D, Kecamatan F, Padang, Kalimantan Barat', 'Jl. Hayam Wuruk No. 832, RT 09/RW 02, Kelurahan D, Kecamatan F, Padang, Kalimantan Barat', '08292614806', 'abdullahsaputra15@gmail.com', 'SMA Negeri 02', '12 MA', '2021', 'DN-224088/2021', 'santri/foto/6574625586_foto_santri.jpg', 'santri/ktp/6574625586_foto_ktp.jpg', 'santri/akta/6574625586_foto_akta.jpg', 'santri/ijazah/6574625586_foto_ijazah.jpg', 'santri/surat_sehat/6574625586_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:36.900480', '2025-12-01 18:19:36.907546', 'Islam', 'Islam', 2, 'Indonesia', 'Kelurahan D', 5, 'Padang', 'Kecamatan F', '', 'WNI', 'WNI', 'WNI', '15123', 'Abdullah', '54366551', 'S1', 'SMP SEDERAJAT', 'Kalimantan Barat', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1973-07-12', '1969-10-19', 'Purwokerto', 'Tasikmalaya', 'Wali'),
(67, 'Maya Budi', '3543713683', 'Jambi', '2009-09-09', 'P', 'Islam', 'AB', 159, 56, 'Abdurrahman Santoso', '7015756392990155', 'Jihan Purnomo', '1244900149971442', 'Karyawan Swasta', 'Pedagang', '08507884035', '08567667976', 'Jl. Merdeka No. 457, RT 10/RW 06, Kelurahan C, Kecamatan B, Jakarta Selatan, Jawa Tengah', 'Jl. Merdeka No. 457, RT 10/RW 06, Kelurahan C, Kecamatan B, Jakarta Selatan, Jawa Tengah', '08690528094', 'mayabudi16@gmail.com', 'MTs Darussalam', '6 SD', '2023', 'DN-790606/2023', 'santri/foto/3543713683_foto_santri.jpg', 'santri/ktp/3543713683_foto_ktp.jpg', 'santri/akta/3543713683_foto_akta.jpg', 'santri/ijazah/3543713683_foto_ijazah.jpg', 'santri/surat_sehat/3543713683_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:36.931397', '2025-12-01 18:19:36.941128', 'Islam', 'Islam', 3, 'Indonesia', 'Kelurahan C', 3, 'Jakarta Selatan', 'Kecamatan B', '', 'WNI', 'WNI', 'WNI', '25230', 'Maya', '10045419', 'SMP SEDERAJAT', 'S3', 'Jawa Tengah', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1976-02-19', '1989-05-06', 'Palu', 'Bengkulu', 'Lainnya'),
(68, 'Eko Kurniawan', '7879359374', 'Lampung', '2007-12-16', 'L', 'Islam', 'B', 176, 56, 'Lukman Harahap', '9705578245759013', 'Aisyah Putri', '2268364619987301', 'TNI', 'Dokter', '08257312944', '08760070831', 'Jl. Sudirman No. 806, RT 04/RW 09, Desa C, Kecamatan A, Tangerang, DKI Jakarta', 'Jl. Sudirman No. 806, RT 04/RW 09, Desa C, Kecamatan A, Tangerang, DKI Jakarta', '08260858314', 'ekokurniawan17@gmail.com', 'SD Negeri 01', '12 SMA', '2021', 'DN-260712/2021', 'santri/foto/7879359374_foto_santri.jpg', 'santri/ktp/7879359374_foto_ktp.jpg', 'santri/akta/7879359374_foto_akta.jpg', 'santri/ijazah/7879359374_foto_ijazah.jpg', 'santri/surat_sehat/7879359374_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:36.966691', '2025-12-01 18:19:36.979899', 'Islam', 'Islam', 2, 'Indonesia', 'Desa C', 3, 'Tangerang', 'Kecamatan A', '', 'WNI', 'WNI', 'WNI', '23049', 'Eko', '73611319', 'SMA SEDERAJAT', 'D3', 'DKI Jakarta', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1981-02-22', '1984-11-13', 'Solo', 'Padang', 'Orang Tua'),
(69, 'Hilda Gunawan', '7463161559', 'Yogyakarta', '2012-06-10', 'P', 'Islam', 'B', 162, 47, 'Zaki Bambang', '3628774134753116', 'Dara Putri', '2293293975555180', 'Jaksa', 'Konsultan', '08211648385', '08742309025', 'Jl. Hayam Wuruk No. 261, RT 09/RW 04, Desa E, Kecamatan J, Malang, Banten', 'Jl. Hayam Wuruk No. 261, RT 09/RW 04, Desa E, Kecamatan J, Malang, Banten', '08194836049', 'hildagunawan18@gmail.com', 'MTs Al-Azhar', '9 SMP', '2023', 'DN-146609/2023', 'santri/foto/7463161559_foto_santri.jpg', 'santri/ktp/7463161559_foto_ktp.jpg', 'santri/akta/7463161559_foto_akta.jpg', 'santri/ijazah/7463161559_foto_ijazah.jpg', 'santri/surat_sehat/7463161559_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:37.001646', '2025-12-01 18:19:37.014568', 'Islam', 'Islam', 2, 'Indonesia', 'Desa E', 2, 'Malang', 'Kecamatan J', '', 'WNI', 'WNI', 'WNI', '52948', 'Hilda', '72783202', 'S3', 'D3', 'Banten', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1979-01-26', '1988-05-14', 'Balikpapan', 'Cirebon', 'Wali'),
(70, 'Jamil Santoso', '1728830959', 'Banten', '2012-08-12', 'L', 'Islam', 'AB', 175, 51, 'Luthfi Nasution', '9502329118384271', 'Dinda Darmawan', '8164876629783988', 'Notaris', 'Jaksa', '08871421920', '08908909039', 'Jl. Hayam Wuruk No. 370, RT 01/RW 04, Kelurahan D, Kecamatan D, Makassar, Kalimantan Barat', 'Jl. Hayam Wuruk No. 370, RT 01/RW 04, Kelurahan D, Kecamatan D, Makassar, Kalimantan Barat', '08448731923', 'jamilsantoso19@gmail.com', 'MA Darul Ulum', '12 MA', '2021', 'DN-710525/2021', 'santri/foto/1728830959_foto_santri.jpg', 'santri/ktp/1728830959_foto_ktp.jpg', 'santri/akta/1728830959_foto_akta.jpg', 'santri/ijazah/1728830959_foto_ijazah.jpg', 'santri/surat_sehat/1728830959_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:37.038431', '2025-12-01 18:19:37.044445', 'Islam', 'Islam', 2, 'Indonesia', 'Kelurahan D', 1, 'Makassar', 'Kecamatan D', '', 'WNI', 'WNI', 'WNI', '85613', 'Jamil', '15660685', 'S2', 'SMP SEDERAJAT', 'Kalimantan Barat', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1990-04-11', '1987-03-28', 'Pekanbaru', 'Bogor', 'Orang Tua'),
(71, 'Gita Agung', '5274654983', 'Yogyakarta', '2014-10-16', 'P', 'Islam', 'B', 138, 41, 'Usman Dalimunthe', '8012135396631185', 'Sinta Joko', '2804257520493398', 'Dokter', 'Guru', '08297579870', '08852329100', 'Jl. Thamrin No. 574, RT 04/RW 04, Desa C, Kecamatan B, Bandung, DI Yogyakarta', 'Jl. Thamrin No. 574, RT 04/RW 04, Desa C, Kecamatan B, Bandung, DI Yogyakarta', '08186163737', 'gitaagung20@gmail.com', 'SD Muhammadiyah', '9 SMP', '2024', 'DN-593257/2024', 'santri/foto/5274654983_foto_santri.jpg', 'santri/ktp/5274654983_foto_ktp.jpg', 'santri/akta/5274654983_foto_akta.jpg', 'santri/ijazah/5274654983_foto_ijazah.jpg', 'santri/surat_sehat/5274654983_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:37.069935', '2025-12-01 18:19:37.078971', 'Islam', 'Islam', 2, 'Indonesia', 'Desa C', 0, 'Bandung', 'Kecamatan B', '', 'WNI', 'WNI', 'WNI', '46194', 'Gita', '31525740', 'SMP SEDERAJAT', 'S3', 'DI Yogyakarta', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1982-01-16', '1979-08-10', 'Bogor', 'Kendari', 'Orang Tua'),
(72, 'Hani Wibisono', '7529701254', 'Jambi', '2011-12-28', 'P', 'Islam', 'O', 167, 45, 'Iqbal Rizki', '2266996623703570', 'Putri Pratama', '2009669717172687', 'Pegawai Bank', 'Dokter', '08709994018', '08519616295', 'Jl. Merdeka No. 365, RT 08/RW 03, Desa A, Kecamatan G, Makassar, Jambi', 'Jl. Merdeka No. 365, RT 08/RW 03, Desa A, Kecamatan G, Makassar, Jambi', '08431581484', 'haniwibisono21@gmail.com', 'MTs Al-Ikhlas', '12 SMA', '2021', 'DN-836269/2021', 'santri/foto/7529701254_foto_santri.jpg', 'santri/ktp/7529701254_foto_ktp.jpg', 'santri/akta/7529701254_foto_akta.jpg', 'santri/ijazah/7529701254_foto_ijazah.jpg', 'santri/surat_sehat/7529701254_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:37.103918', '2025-12-01 18:19:37.112029', 'Islam', 'Islam', 2, 'Indonesia', 'Desa A', 1, 'Makassar', 'Kecamatan G', '', 'WNI', 'WNI', 'WNI', '87424', 'Hani', '11455594', 'S3', 'D3', 'Jambi', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1978-09-07', '1983-06-19', 'Manado', 'Bekasi', 'Lainnya'),
(73, 'Rafi Nasution', '7970478158', 'Solo', '2012-10-04', 'L', 'Islam', 'AB', 173, 75, 'Lukman Nasution', '4404160796468707', 'Citra Wibowo', '2279396816471027', 'Pensiunan', 'Pegawai Bank', '08566099815', '08127951757', 'Jl. Sudirman No. 906, RT 03/RW 05, Kelurahan C, Kecamatan D, Tangerang, Kalimantan Selatan', 'Jl. Sudirman No. 906, RT 03/RW 05, Kelurahan C, Kecamatan D, Tangerang, Kalimantan Selatan', '08221203426', 'rafinasution22@gmail.com', 'MA Darul Ulum', '6 SD', '2022', 'DN-725749/2022', 'santri/foto/7970478158_foto_santri.jpg', 'santri/ktp/7970478158_foto_ktp.jpg', 'santri/akta/7970478158_foto_akta.jpg', 'santri/ijazah/7970478158_foto_ijazah.jpg', 'santri/surat_sehat/7970478158_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:37.136813', '2025-12-01 18:19:37.143303', 'Islam', 'Islam', 2, 'Indonesia', 'Kelurahan C', 3, 'Tangerang', 'Kecamatan D', '', 'WNI', 'WNI', 'WNI', '64755', 'Rafi', '31748334', 'SMA SEDERAJAT', 'S1', 'Kalimantan Selatan', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1973-08-01', '1974-03-02', 'Makassar', 'Ambon', 'Wali'),
(74, 'Ibrahim Handoko', '7564444355', 'Pontianak', '2008-06-06', 'L', 'Islam', 'AB', 171, 38, 'Usman Putra', '4265030665209115', 'Nur Tanjung', '2669274438690866', 'PNS', 'PNS', '08608165485', '08330810963', 'Jl. Sudirman No. 773, RT 05/RW 04, Kelurahan B, Kecamatan H, Makassar, Jawa Barat', 'Jl. Sudirman No. 773, RT 05/RW 04, Kelurahan B, Kecamatan H, Makassar, Jawa Barat', '08121778762', 'ibrahimhandoko23@gmail.com', 'SD Negeri 02', '12 SMA', '2020', 'DN-138616/2020', 'santri/foto/7564444355_foto_santri.jpg', 'santri/ktp/7564444355_foto_ktp.jpg', 'santri/akta/7564444355_foto_akta.jpg', 'santri/ijazah/7564444355_foto_ijazah.jpg', 'santri/surat_sehat/7564444355_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:37.166334', '2025-12-01 18:19:37.174924', 'Islam', 'Islam', 2, 'Indonesia', 'Kelurahan B', 1, 'Makassar', 'Kecamatan H', '', 'WNI', 'WNI', 'WNI', '99381', 'Ibrahim', '99585267', 'SMA SEDERAJAT', 'D3', 'Jawa Barat', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1984-06-16', '1974-08-07', 'Denpasar', 'Medan', 'Lainnya'),
(75, 'Wahid Fauzi', '2229504862', 'Tangerang', '2007-06-01', 'L', 'Islam', 'A', 148, 75, 'Ilyas Budi', '5691688607691479', 'Qonita Putri', '6403615904752864', 'Polisi', 'Ibu Rumah Tangga', '08899886560', '08781430148', 'Jl. Sudirman No. 149, RT 05/RW 03, Desa C, Kecamatan I, Depok, Riau', 'Jl. Sudirman No. 149, RT 05/RW 03, Desa C, Kecamatan I, Depok, Riau', '08680304041', 'wahidfauzi24@gmail.com', 'MI Al-Hidayah', '12 SMA', '2021', 'DN-357758/2021', 'santri/foto/2229504862_foto_santri.jpg', 'santri/ktp/2229504862_foto_ktp.jpg', 'santri/akta/2229504862_foto_akta.jpg', 'santri/ijazah/2229504862_foto_ijazah.jpg', 'santri/surat_sehat/2229504862_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:37.200100', '2025-12-01 18:19:37.207693', 'Islam', 'Islam', 4, 'Indonesia', 'Desa C', 4, 'Depok', 'Kecamatan I', '', 'WNI', 'WNI', 'WNI', '59945', 'Wahid', '40799702', 'SMA SEDERAJAT', 'SMA SEDERAJAT', 'Riau', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1984-07-14', '1982-08-05', 'Malang', 'Bekasi', 'Wali'),
(76, 'Iqbal Sari', '5383379568', 'Ambon', '2012-05-25', 'L', 'Islam', 'O', 169, 73, 'Yunus Pramono', '6186643700995766', 'Ika Wibowo', '1741169500287372', 'Konsultan', 'Pensiunan', '08860010553', '08862058741', 'Jl. Gatot Subroto No. 651, RT 06/RW 02, Kelurahan D, Kecamatan I, Bogor, Sumatera Barat', 'Jl. Gatot Subroto No. 651, RT 06/RW 02, Kelurahan D, Kecamatan I, Bogor, Sumatera Barat', '08389215979', 'iqbalsari25@gmail.com', 'MTs Al-Ikhlas', '6 SD', '2020', 'DN-434313/2020', 'santri/foto/5383379568_foto_santri.jpg', 'santri/ktp/5383379568_foto_ktp.jpg', 'santri/akta/5383379568_foto_akta.jpg', 'santri/ijazah/5383379568_foto_ijazah.jpg', 'santri/surat_sehat/5383379568_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:37.232389', '2025-12-01 18:19:37.240733', 'Islam', 'Islam', 5, 'Indonesia', 'Kelurahan D', 3, 'Bogor', 'Kecamatan I', '', 'WNI', 'WNI', 'WNI', '11850', 'Iqbal', '98685922', 'S2', 'S1', 'Sumatera Barat', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1979-08-17', '1982-04-04', 'Bandung', 'Kendari', 'Lainnya'),
(77, 'Rafi Siregar', '3168438751', 'Palu', '2012-03-18', 'L', 'Islam', 'O', 141, 42, 'Wahid Kurniawan', '8631499049103949', 'Winda Hidayat', '7663838380866213', 'Hakim', 'TNI', '08965312760', '08972889226', 'Jl. Diponegoro No. 819, RT 07/RW 08, Desa B, Kecamatan D, Pekanbaru, DKI Jakarta', 'Jl. Diponegoro No. 819, RT 07/RW 08, Desa B, Kecamatan D, Pekanbaru, DKI Jakarta', '08289853907', 'rafisiregar26@gmail.com', 'MA Al-Muttaqin', '12 SMA', '2022', 'DN-280951/2022', 'santri/foto/3168438751_foto_santri.jpg', 'santri/ktp/3168438751_foto_ktp.jpg', 'santri/akta/3168438751_foto_akta.jpg', 'santri/ijazah/3168438751_foto_ijazah.jpg', 'santri/surat_sehat/3168438751_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:37.268004', '2025-12-01 18:19:37.274088', 'Islam', 'Islam', 2, 'Indonesia', 'Desa B', 3, 'Pekanbaru', 'Kecamatan D', '', 'WNI', 'WNI', 'WNI', '53358', 'Rafi', '50047875', 'SMP SEDERAJAT', 'S1', 'DKI Jakarta', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1985-12-07', '1988-10-23', 'Malang', 'Pontianak', 'Wali'),
(78, 'Putri Pramono', '7675695403', 'Tasikmalaya', '2007-12-19', 'P', 'Islam', 'B', 130, 31, 'Hamzah Siregar', '5463723431148353', 'Vina Maulana', '1723768267191577', 'Ibu Rumah Tangga', 'Hakim', '08125461833', '08383938145', 'Jl. Merdeka No. 836, RT 01/RW 08, Desa C, Kecamatan H, Jakarta Timur, Lampung', 'Jl. Merdeka No. 836, RT 01/RW 08, Desa C, Kecamatan H, Jakarta Timur, Lampung', '08970325158', 'putripramono27@gmail.com', 'MA Darul Ulum', '12 MA', '2021', 'DN-184150/2021', 'santri/foto/7675695403_foto_santri.jpg', 'santri/ktp/7675695403_foto_ktp.jpg', 'santri/akta/7675695403_foto_akta.jpg', 'santri/ijazah/7675695403_foto_ijazah.jpg', 'santri/surat_sehat/7675695403_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:37.296996', '2025-12-01 18:19:37.305521', 'Islam', 'Islam', 2, 'Indonesia', 'Desa C', 6, 'Jakarta Timur', 'Kecamatan H', '', 'WNI', 'WNI', 'WNI', '67214', 'Putri', '69570080', 'SD SEDERAJAT', 'S3', 'Lampung', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1979-06-14', '1982-11-05', 'Balikpapan', 'Samarinda', 'Orang Tua'),
(79, 'Gita Setiawan', '1025384481', 'Medan', '2014-07-03', 'P', 'Islam', 'B', 143, 69, 'Fadil Bambang', '9156688174849005', 'Nadia Arief', '2160295749645104', 'Karyawan Swasta', 'Hakim', '08657238991', '08905210390', 'Jl. Thamrin No. 69, RT 08/RW 10, Desa C, Kecamatan F, Jakarta Utara, Bali', 'Jl. Thamrin No. 69, RT 08/RW 10, Desa C, Kecamatan F, Jakarta Utara, Bali', '08631262774', 'gitasetiawan28@gmail.com', 'SMP Negeri 01', '6 SD', '2023', 'DN-811905/2023', 'santri/foto/1025384481_foto_santri.jpg', 'santri/ktp/1025384481_foto_ktp.jpg', 'santri/akta/1025384481_foto_akta.jpg', 'santri/ijazah/1025384481_foto_ijazah.jpg', 'santri/surat_sehat/1025384481_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:37.334122', '2025-12-01 18:19:37.341324', 'Islam', 'Islam', 4, 'Indonesia', 'Desa C', 0, 'Jakarta Utara', 'Kecamatan F', '', 'WNI', 'WNI', 'WNI', '79165', 'Gita', '34796087', 'SMA SEDERAJAT', 'SMA SEDERAJAT', 'Bali', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1991-02-08', '1991-12-26', 'Solo', 'Pekanbaru', 'Wali'),
(80, 'Salman Kusuma', '4004149137', 'Depok', '2011-08-20', 'L', 'Islam', 'O', 168, 75, 'Haris Darmawan', '8101585476185404', 'Putri Purnomo', '3403924031450229', 'Ibu Rumah Tangga', 'Pedagang', '08549512600', '08350723791', 'Jl. Ahmad Yani No. 172, RT 06/RW 03, Kelurahan E, Kecamatan J, Yogyakarta, Sulawesi Utara', 'Jl. Ahmad Yani No. 172, RT 06/RW 03, Kelurahan E, Kecamatan J, Yogyakarta, Sulawesi Utara', '08680774455', 'salmankusuma29@gmail.com', 'SMP Muhammadiyah', '12 SMA', '2023', 'DN-691490/2023', 'santri/foto/4004149137_foto_santri.jpg', 'santri/ktp/4004149137_foto_ktp.jpg', 'santri/akta/4004149137_foto_akta.jpg', 'santri/ijazah/4004149137_foto_ijazah.jpg', 'santri/surat_sehat/4004149137_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:37.367182', '2025-12-01 18:19:37.374880', 'Islam', 'Islam', 1, 'Indonesia', 'Kelurahan E', 0, 'Yogyakarta', 'Kecamatan J', '', 'WNI', 'WNI', 'WNI', '13508', 'Salman', '73546673', 'S3', 'S2', 'Sulawesi Utara', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1981-01-20', '1985-10-17', 'Kendari', 'Makassar', 'Orang Tua'),
(81, 'Kamil Gunawan', '4435931873', 'Cirebon', '2011-06-15', 'L', 'Islam', 'B', 141, 51, 'Abdurrahman Kurniawan', '2571790161746317', 'Fadila Dalimunthe', '7156693329336893', 'Dokter', 'Akuntan', '08352218511', '08813745945', 'Jl. Diponegoro No. 19, RT 09/RW 02, Desa A, Kecamatan D, Bekasi, Sumatera Selatan', 'Jl. Diponegoro No. 19, RT 09/RW 02, Desa A, Kecamatan D, Bekasi, Sumatera Selatan', '08884384782', 'kamilgunawan30@gmail.com', 'SMA Negeri 01', '9 SMP', '2021', 'DN-787492/2021', 'santri/foto/4435931873_foto_santri.jpg', 'santri/ktp/4435931873_foto_ktp.jpg', 'santri/akta/4435931873_foto_akta.jpg', 'santri/ijazah/4435931873_foto_ijazah.jpg', 'santri/surat_sehat/4435931873_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:37.406648', '2025-12-01 18:19:37.413832', 'Islam', 'Islam', 2, 'Indonesia', 'Desa A', 0, 'Bekasi', 'Kecamatan D', '', 'WNI', 'WNI', 'WNI', '66803', 'Kamil', '29391480', 'SD SEDERAJAT', 'SD SEDERAJAT', 'Sumatera Selatan', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1989-09-23', '1979-12-26', 'Bandung', 'Palembang', 'Lainnya'),
(82, 'Winda Rizki', '7323433010', 'Manado', '2011-04-03', 'P', 'Islam', 'B', 146, 68, 'Rahmat Darmawan', '7732573596296230', 'Salsabila Suryadi', '4608620413966511', 'Wiraswasta', 'PNS', '08639418922', '08139671253', 'Jl. Thamrin No. 160, RT 03/RW 08, Kelurahan E, Kecamatan A, Medan, Jambi', 'Jl. Thamrin No. 160, RT 03/RW 08, Kelurahan E, Kecamatan A, Medan, Jambi', '08205670055', 'windarizki31@gmail.com', 'MA Darul Ulum', '12 SMA', '2021', 'DN-766717/2021', 'santri/foto/7323433010_foto_santri.jpg', 'santri/ktp/7323433010_foto_ktp.jpg', 'santri/akta/7323433010_foto_akta.jpg', 'santri/ijazah/7323433010_foto_ijazah.jpg', 'santri/surat_sehat/7323433010_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:37.440577', '2025-12-01 18:19:37.447053', 'Islam', 'Islam', 4, 'Indonesia', 'Kelurahan E', 5, 'Medan', 'Kecamatan A', '', 'WNI', 'WNI', 'WNI', '82731', 'Winda', '23664042', 'S2', 'SMA SEDERAJAT', 'Jambi', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1986-01-04', '1977-06-19', 'Kendari', 'Banten', 'Lainnya'),
(83, 'Putri Maulana', '1489660144', 'Tasikmalaya', '2011-10-16', 'P', 'Islam', 'B', 144, 64, 'Salman Kurniawan', '9191573753234798', 'Rina Hidayat', '4856754815131610', 'Nelayan', 'Pedagang', '08812615776', '08761113245', 'Jl. Merdeka No. 783, RT 08/RW 08, Desa E, Kecamatan G, Padang, Lampung', 'Jl. Merdeka No. 783, RT 08/RW 08, Desa E, Kecamatan G, Padang, Lampung', '08204821513', 'putrimaulana32@gmail.com', 'SD Muhammadiyah', '12 SMA', '2024', 'DN-295590/2024', 'santri/foto/1489660144_foto_santri.jpg', 'santri/ktp/1489660144_foto_ktp.jpg', 'santri/akta/1489660144_foto_akta.jpg', 'santri/ijazah/1489660144_foto_ijazah.jpg', 'santri/surat_sehat/1489660144_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:37.472496', '2025-12-01 18:19:37.480328', 'Islam', 'Islam', 2, 'Indonesia', 'Desa E', 6, 'Padang', 'Kecamatan G', '', 'WNI', 'WNI', 'WNI', '79559', 'Putri', '75781073', 'D3', 'S3', 'Lampung', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1980-05-04', '1987-10-22', 'Semarang', 'Bekasi', 'Wali'),
(84, 'Yunus Wibisono', '6862981801', 'Kendari', '2009-08-04', 'L', 'Islam', 'AB', 176, 75, 'Muhammad Putri', '4712115671243727', 'Mariam Sukarno', '7262271994608553', 'Konsultan', 'Ibu Rumah Tangga', '08630073197', '08907829347', 'Jl. Diponegoro No. 464, RT 06/RW 07, Kelurahan A, Kecamatan A, Jakarta Barat, Sulawesi Utara', 'Jl. Diponegoro No. 464, RT 06/RW 07, Kelurahan A, Kecamatan A, Jakarta Barat, Sulawesi Utara', '08290163298', 'yunuswibisono33@gmail.com', 'MA Darul Ulum', '6 SD', '2022', 'DN-211004/2022', 'santri/foto/6862981801_foto_santri.jpg', 'santri/ktp/6862981801_foto_ktp.jpg', 'santri/akta/6862981801_foto_akta.jpg', 'santri/ijazah/6862981801_foto_ijazah.jpg', 'santri/surat_sehat/6862981801_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:37.505005', '2025-12-01 18:19:37.511738', 'Islam', 'Islam', 2, 'Indonesia', 'Kelurahan A', 0, 'Jakarta Barat', 'Kecamatan A', '', 'WNI', 'WNI', 'WNI', '43977', 'Yunus', '72761110', 'SMA SEDERAJAT', 'S3', 'Sulawesi Utara', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1978-03-16', '1971-10-20', 'Yogyakarta', 'Palu', 'Wali'),
(85, 'Ilyas Wibowo', '2444511409', 'Pekanbaru', '2014-03-20', 'L', 'Islam', 'AB', 158, 80, 'Nabil Wati', '8024705367734176', 'Putri Hakim', '1649188548069670', 'Ibu Rumah Tangga', 'Polisi', '08102705601', '08281977624', 'Jl. Sudirman No. 770, RT 03/RW 04, Desa C, Kecamatan G, Padang, Kalimantan Barat', 'Jl. Sudirman No. 770, RT 03/RW 04, Desa C, Kecamatan G, Padang, Kalimantan Barat', '08547591314', 'ilyaswibowo34@gmail.com', 'SD Islam Terpadu', '12 MA', '2024', 'DN-580687/2024', 'santri/foto/2444511409_foto_santri.jpg', 'santri/ktp/2444511409_foto_ktp.jpg', 'santri/akta/2444511409_foto_akta.jpg', 'santri/ijazah/2444511409_foto_ijazah.jpg', 'santri/surat_sehat/2444511409_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:37.539220', '2025-12-01 18:19:37.547060', 'Islam', 'Islam', 3, 'Indonesia', 'Desa C', 0, 'Padang', 'Kecamatan G', '', 'WNI', 'WNI', 'WNI', '96670', 'Ilyas', '62118527', 'D3', 'S3', 'Kalimantan Barat', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1994-11-05', '1995-03-10', 'Purwokerto', 'Solo', 'Lainnya'),
(86, 'Hamzah Nur', '2211162616', 'Palembang', '2014-07-04', 'L', 'Islam', 'A', 173, 41, 'Kamil Rizki', '7566826448017793', 'Fadila Saputra', '8387091257114738', 'Insinyur', 'Insinyur', '08916701889', '08314031033', 'Jl. Gatot Subroto No. 350, RT 06/RW 07, Kelurahan B, Kecamatan B, Semarang, Kalimantan Timur', 'Jl. Gatot Subroto No. 350, RT 06/RW 07, Kelurahan B, Kecamatan B, Semarang, Kalimantan Timur', '08215783406', 'hamzahnur35@gmail.com', 'MTs Al-Ikhlas', '9 SMP', '2023', 'DN-852701/2023', 'santri/foto/2211162616_foto_santri.jpg', 'santri/ktp/2211162616_foto_ktp.jpg', 'santri/akta/2211162616_foto_akta.jpg', 'santri/ijazah/2211162616_foto_ijazah.jpg', 'santri/surat_sehat/2211162616_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:37.571301', '2025-12-01 18:19:37.579294', 'Islam', 'Islam', 3, 'Indonesia', 'Kelurahan B', 2, 'Semarang', 'Kecamatan B', '', 'WNI', 'WNI', 'WNI', '75015', 'Hamzah', '80917881', 'SMA SEDERAJAT', 'S1', 'Kalimantan Timur', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1975-06-15', '1994-11-11', 'Solo', 'Depok', 'Wali'),
(87, 'Putri Santoso', '9618946152', 'Pontianak', '2007-06-21', 'P', 'Islam', 'B', 136, 32, 'Jalal Arief', '2447255347925541', 'Hilda Hakim', '9018830789279013', 'Arsitek', 'Jaksa', '08907263880', '08717230306', 'Jl. Merdeka No. 823, RT 08/RW 09, Kelurahan E, Kecamatan B, Depok, Jawa Tengah', 'Jl. Merdeka No. 823, RT 08/RW 09, Kelurahan E, Kecamatan B, Depok, Jawa Tengah', '08426603526', 'putrisantoso36@gmail.com', 'MA Darul Ulum', '6 SD', '2020', 'DN-776117/2020', 'santri/foto/9618946152_foto_santri.jpg', 'santri/ktp/9618946152_foto_ktp.jpg', 'santri/akta/9618946152_foto_akta.jpg', 'santri/ijazah/9618946152_foto_ijazah.jpg', 'santri/surat_sehat/9618946152_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:37.606122', '2025-12-01 18:19:37.612475', 'Islam', 'Islam', 2, 'Indonesia', 'Kelurahan E', 0, 'Depok', 'Kecamatan B', '', 'WNI', 'WNI', 'WNI', '91353', 'Putri', '72625668', 'SD SEDERAJAT', 'SD SEDERAJAT', 'Jawa Tengah', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1970-07-15', '1974-08-05', 'Tangerang', 'Malang', 'Wali'),
(88, 'Ismail Gunawan', '6434710116', 'Jakarta', '2014-10-23', 'L', 'Islam', 'A', 150, 36, 'Mansur Pratama', '8078769657521811', 'Oktavia Wati', '1916969931867674', 'Petani', 'Wiraswasta', '08158761728', '08775427150', 'Jl. Diponegoro No. 269, RT 01/RW 06, Desa B, Kecamatan A, Surabaya, Sulawesi Selatan', 'Jl. Diponegoro No. 269, RT 01/RW 06, Desa B, Kecamatan A, Surabaya, Sulawesi Selatan', '08765783682', 'ismailgunawan37@gmail.com', 'SMP Negeri 01', '9 SMP', '2020', 'DN-931641/2020', 'santri/foto/6434710116_foto_santri.jpg', 'santri/ktp/6434710116_foto_ktp.jpg', 'santri/akta/6434710116_foto_akta.jpg', 'santri/ijazah/6434710116_foto_ijazah.jpg', 'santri/surat_sehat/6434710116_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:37.640313', '2025-12-01 18:19:37.646526', 'Islam', 'Islam', 5, 'Indonesia', 'Desa B', 3, 'Surabaya', 'Kecamatan A', '', 'WNI', 'WNI', 'WNI', '33026', 'Ismail', '85339197', 'S3', 'S3', 'Sulawesi Selatan', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1989-01-27', '1986-11-14', 'Jambi', 'Banten', 'Lainnya'),
(89, 'Jihan Hidayat', '5909966831', 'Pekanbaru', '2008-05-02', 'P', 'Islam', 'B', 169, 50, 'Ibrahim Tanjung', '6881099924416116', 'Fira Wati', '8174358042556833', 'Polisi', 'Dosen', '08754146677', '08825610016', 'Jl. Hayam Wuruk No. 851, RT 09/RW 05, Desa A, Kecamatan I, Medan, Banten', 'Jl. Hayam Wuruk No. 851, RT 09/RW 05, Desa A, Kecamatan I, Medan, Banten', '08556235428', 'jihanhidayat38@gmail.com', 'SD Negeri 01', '12 SMA', '2020', 'DN-236154/2020', 'santri/foto/5909966831_foto_santri.jpg', 'santri/ktp/5909966831_foto_ktp.jpg', 'santri/akta/5909966831_foto_akta.jpg', 'santri/ijazah/5909966831_foto_ijazah.jpg', 'santri/surat_sehat/5909966831_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:37.672079', '2025-12-01 18:19:37.678268', 'Islam', 'Islam', 2, 'Indonesia', 'Desa A', 2, 'Medan', 'Kecamatan I', '', 'WNI', 'WNI', 'WNI', '47842', 'Jihan', '57008404', 'S2', 'SD SEDERAJAT', 'Banten', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1984-03-05', '1981-12-12', 'Bekasi', 'Magelang', 'Wali'),
(90, 'Hafiz Handoko', '3548870959', 'Makassar', '2014-04-26', 'L', 'Islam', 'B', 141, 66, 'Husain Fauzi', '6533879096713912', 'Siti Eko', '6964145746015968', 'Notaris', 'Pegawai Bank', '08616212084', '08982585791', 'Jl. Hayam Wuruk No. 253, RT 07/RW 05, Kelurahan B, Kecamatan B, Makassar, DKI Jakarta', 'Jl. Hayam Wuruk No. 253, RT 07/RW 05, Kelurahan B, Kecamatan B, Makassar, DKI Jakarta', '08777055580', 'hafizhandoko39@gmail.com', 'SMA Negeri 01', '6 SD', '2024', 'DN-307487/2024', 'santri/foto/3548870959_foto_santri.jpg', 'santri/ktp/3548870959_foto_ktp.jpg', 'santri/akta/3548870959_foto_akta.jpg', 'santri/ijazah/3548870959_foto_ijazah.jpg', 'santri/surat_sehat/3548870959_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:37.705927', '2025-12-01 18:19:37.714960', 'Islam', 'Islam', 3, 'Indonesia', 'Kelurahan B', 1, 'Makassar', 'Kecamatan B', '', 'WNI', 'WNI', 'WNI', '17088', 'Hafiz', '92324163', 'SMA SEDERAJAT', 'S1', 'DKI Jakarta', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1979-12-24', '1992-11-21', 'Palu', 'Semarang', 'Wali'),
(91, 'Laila Tanjung', '5723638764', 'Magelang', '2014-12-03', 'P', 'Islam', 'B', 130, 46, 'Gani Setiawan', '6027085125008574', 'Fadila Agung', '3475165629949753', 'Akuntan', 'Ibu Rumah Tangga', '08954473006', '08902900488', 'Jl. Hayam Wuruk No. 905, RT 05/RW 01, Kelurahan B, Kecamatan D, Bandung, Bali', 'Jl. Hayam Wuruk No. 905, RT 05/RW 01, Kelurahan B, Kecamatan D, Bandung, Bali', '08929084339', 'lailatanjung40@gmail.com', 'MA Al-Muttaqin', '12 SMA', '2022', 'DN-353053/2022', 'santri/foto/5723638764_foto_santri.jpg', 'santri/ktp/5723638764_foto_ktp.jpg', 'santri/akta/5723638764_foto_akta.jpg', 'santri/ijazah/5723638764_foto_ijazah.jpg', 'santri/surat_sehat/5723638764_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:37.741743', '2025-12-01 18:19:37.748924', 'Islam', 'Islam', 2, 'Indonesia', 'Kelurahan B', 4, 'Bandung', 'Kecamatan D', '', 'WNI', 'WNI', 'WNI', '29282', 'Laila', '89855004', 'S2', 'D3', 'Bali', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1977-01-05', '1987-04-12', 'Semarang', 'Banten', 'Lainnya'),
(92, 'Winda Bambang', '2916441032', 'Yogyakarta', '2015-09-22', 'P', 'Islam', 'O', 156, 51, 'Fauzan Pratama', '5806620922971118', 'Hilda Suryadi', '2620834737295438', 'Insinyur', 'Jaksa', '08499013578', '08445441805', 'Jl. Sudirman No. 64, RT 06/RW 06, Desa C, Kecamatan F, Jakarta Pusat, Sumatera Utara', 'Jl. Sudirman No. 64, RT 06/RW 06, Desa C, Kecamatan F, Jakarta Pusat, Sumatera Utara', '08926918088', 'windabambang41@gmail.com', 'SD Islam Terpadu', '9 SMP', '2021', 'DN-837394/2021', 'santri/foto/2916441032_foto_santri.jpg', 'santri/ktp/2916441032_foto_ktp.jpg', 'santri/akta/2916441032_foto_akta.jpg', 'santri/ijazah/2916441032_foto_ijazah.jpg', 'santri/surat_sehat/2916441032_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:37.777520', '2025-12-01 18:19:37.783790', 'Islam', 'Islam', 3, 'Indonesia', 'Desa C', 3, 'Jakarta Pusat', 'Kecamatan F', '', 'WNI', 'WNI', 'WNI', '85570', 'Winda', '73010948', 'S3', 'S2', 'Sumatera Utara', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1991-04-21', '1993-07-01', 'Kendari', 'Tangerang', 'Orang Tua'),
(93, 'Laila Putri', '6303498004', 'Malang', '2014-07-17', 'P', 'Islam', 'A', 160, 45, 'Zaid Agung', '9462098240796864', 'Fira Pohan', '5266907872199148', 'Guru', 'Pedagang', '08566071395', '08256264853', 'Jl. Hayam Wuruk No. 192, RT 06/RW 02, Desa E, Kecamatan D, Surabaya, Jawa Barat', 'Jl. Hayam Wuruk No. 192, RT 06/RW 02, Desa E, Kecamatan D, Surabaya, Jawa Barat', '08863233874', 'lailaputri42@gmail.com', 'MI Nurul Iman', '12 SMA', '2020', 'DN-644706/2020', 'santri/foto/6303498004_foto_santri.jpg', 'santri/ktp/6303498004_foto_ktp.jpg', 'santri/akta/6303498004_foto_akta.jpg', 'santri/ijazah/6303498004_foto_ijazah.jpg', 'santri/surat_sehat/6303498004_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:37.807887', '2025-12-01 18:19:37.814886', 'Islam', 'Islam', 5, 'Indonesia', 'Desa E', 4, 'Surabaya', 'Kecamatan D', '', 'WNI', 'WNI', 'WNI', '67737', 'Laila', '32591026', 'SMP SEDERAJAT', 'SMA SEDERAJAT', 'Jawa Barat', 'Asma ringan', 'HIDUP', 'HIDUP', NULL, '1988-11-13', '1985-12-05', 'Manado', 'Medan', 'Wali'),
(94, 'Jamil Nur', '1068543222', 'Samarinda', '2012-05-22', 'L', 'Islam', 'A', 155, 54, 'Fadil Kurniawan', '9454130026741878', 'Fira Harahap', '1831788568350939', 'Dokter', 'Karyawan Swasta', '08183923176', '08335311331', 'Jl. Merdeka No. 226, RT 07/RW 06, Desa D, Kecamatan J, Bandung, Sulawesi Selatan', 'Jl. Merdeka No. 226, RT 07/RW 06, Desa D, Kecamatan J, Bandung, Sulawesi Selatan', '08890105284', 'jamilnur43@gmail.com', 'MA Muhammadiyah', '9 SMP', '2024', 'DN-963118/2024', 'santri/foto/1068543222_foto_santri.jpg', 'santri/ktp/1068543222_foto_ktp.jpg', 'santri/akta/1068543222_foto_akta.jpg', 'santri/ijazah/1068543222_foto_ijazah.jpg', 'santri/surat_sehat/1068543222_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:37.843978', '2025-12-01 18:19:37.851548', 'Islam', 'Islam', 1, 'Indonesia', 'Desa D', 4, 'Bandung', 'Kecamatan J', '', 'WNI', 'WNI', 'WNI', '62750', 'Jamil', '61578161', 'S3', 'D3', 'Sulawesi Selatan', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1990-06-14', '1978-07-14', 'Palu', 'Bengkulu', 'Orang Tua'),
(95, 'Nur Maulana', '8167224936', 'Denpasar', '2010-02-24', 'P', 'Islam', 'O', 152, 54, 'Eko Kurniawan', '5557769243702477', 'Rina Suryadi', '2974046236009270', 'Insinyur', 'Akuntan', '08784096253', '08678066470', 'Jl. Hayam Wuruk No. 576, RT 08/RW 08, Desa B, Kecamatan J, Malang, Kalimantan Tengah', 'Jl. Hayam Wuruk No. 576, RT 08/RW 08, Desa B, Kecamatan J, Malang, Kalimantan Tengah', '08794577033', 'nurmaulana44@gmail.com', 'SD Islam Terpadu', '6 SD', '2021', 'DN-631918/2021', 'santri/foto/8167224936_foto_santri.jpg', 'santri/ktp/8167224936_foto_ktp.jpg', 'santri/akta/8167224936_foto_akta.jpg', 'santri/ijazah/8167224936_foto_ijazah.jpg', 'santri/surat_sehat/8167224936_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:37.876859', '2025-12-01 18:19:37.884867', 'Islam', 'Islam', 3, 'Indonesia', 'Desa B', 6, 'Malang', 'Kecamatan J', '', 'WNI', 'WNI', 'WNI', '23426', 'Nur', '59135002', 'D3', 'SMP SEDERAJAT', 'Kalimantan Tengah', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1975-06-13', '1989-10-14', 'Balikpapan', 'Balikpapan', 'Wali');
INSERT INTO `admissions_santri` (`id`, `nama_lengkap`, `nisn`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `golongan_darah`, `tinggi_badan`, `berat_badan`, `nama_ayah`, `nik_ayah`, `nama_ibu`, `nik_ibu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `no_hp_ayah`, `no_hp_ibu`, `alamat_orangtua`, `alamat`, `no_hp`, `email`, `asal_sekolah`, `kelas_terakhir`, `tahun_lulus`, `no_ijazah`, `foto_santri`, `foto_ktp`, `foto_akta`, `foto_ijazah`, `surat_sehat`, `foto_santri_approved`, `foto_ktp_approved`, `foto_akta_approved`, `foto_ijazah_approved`, `surat_sehat_approved`, `catatan`, `status`, `created_at`, `updated_at`, `agama_ayah`, `agama_ibu`, `anak_ke`, `bahasa_sehari_hari`, `desa`, `jumlah_saudara`, `kabupaten`, `kecamatan`, `kelas_diterima`, `kewarganegaraan`, `kewarganegaraan_ayah`, `kewarganegaraan_ibu`, `kode_pos`, `nama_panggilan`, `npsn_sekolah`, `pendidikan_ayah`, `pendidikan_ibu`, `provinsi`, `riwayat_penyakit`, `status_ayah`, `status_ibu`, `tanggal_diterima`, `tanggal_lahir_ayah`, `tanggal_lahir_ibu`, `tempat_lahir_ayah`, `tempat_lahir_ibu`, `tinggal_dengan`) VALUES
(96, 'Husain Fauzi', '5502045227', 'Depok', '2014-02-15', 'L', 'Islam', 'AB', 154, 64, 'Zaid Arief', '1895067122139537', 'Sinta Harahap', '5200116358900448', 'Insinyur', 'Ibu Rumah Tangga', '08319714469', '08109446987', 'Jl. Hayam Wuruk No. 787, RT 02/RW 09, Kelurahan B, Kecamatan D, Malang, Kalimantan Selatan', 'Jl. Hayam Wuruk No. 787, RT 02/RW 09, Kelurahan B, Kecamatan D, Malang, Kalimantan Selatan', '08431971941', 'husainfauzi45@gmail.com', 'MTs Darussalam', '6 SD', '2022', 'DN-727967/2022', 'santri/foto/5502045227_foto_santri.jpg', 'santri/ktp/5502045227_foto_ktp.jpg', 'santri/akta/5502045227_foto_akta.jpg', 'santri/ijazah/5502045227_foto_ijazah.jpg', 'santri/surat_sehat/5502045227_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:37.908224', '2025-12-01 18:19:37.915486', 'Islam', 'Islam', 1, 'Indonesia', 'Kelurahan B', 0, 'Malang', 'Kecamatan D', '', 'WNI', 'WNI', 'WNI', '54506', 'Husain', '87858812', 'SMP SEDERAJAT', 'SMA SEDERAJAT', 'Kalimantan Selatan', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1974-05-05', '1994-09-05', 'Denpasar', 'Ambon', 'Orang Tua'),
(97, 'Rizki Rahman', '2577140886', 'Jambi', '2015-08-09', 'L', 'Islam', 'B', 176, 75, 'Abdurrahman Purnomo', '8353081034562100', 'Siti Harahap', '5213392551371718', 'Konsultan', 'Polisi', '08253570716', '08757951351', 'Jl. Diponegoro No. 921, RT 04/RW 10, Desa B, Kecamatan C, Bandung, Sumatera Utara', 'Jl. Diponegoro No. 921, RT 04/RW 10, Desa B, Kecamatan C, Bandung, Sumatera Utara', '08534858572', 'rizkirahman46@gmail.com', 'SMA Muhammadiyah', '9 SMP', '2022', 'DN-596598/2022', 'santri/foto/2577140886_foto_santri.jpg', 'santri/ktp/2577140886_foto_ktp.jpg', 'santri/akta/2577140886_foto_akta.jpg', 'santri/ijazah/2577140886_foto_ijazah.jpg', 'santri/surat_sehat/2577140886_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:37.940928', '2025-12-01 18:19:37.947142', 'Islam', 'Islam', 1, 'Indonesia', 'Desa B', 0, 'Bandung', 'Kecamatan C', '', 'WNI', 'WNI', 'WNI', '30982', 'Rizki', '24657284', 'S2', 'D3', 'Sumatera Utara', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1989-01-03', '1993-12-27', 'Palembang', 'Solo', 'Lainnya'),
(98, 'Khadijah Eko', '6658517433', 'Tasikmalaya', '2007-04-19', 'P', 'Islam', 'A', 167, 52, 'Eko Siregar', '2101827995355734', 'Indah Wibisono', '9309117772924764', 'Pegawai Bank', 'PNS', '08846924111', '08388868476', 'Jl. Gatot Subroto No. 829, RT 08/RW 10, Desa D, Kecamatan A, Pekanbaru, DKI Jakarta', 'Jl. Gatot Subroto No. 829, RT 08/RW 10, Desa D, Kecamatan A, Pekanbaru, DKI Jakarta', '08908269642', 'khadijaheko47@gmail.com', 'SMA Negeri 01', '6 SD', '2021', 'DN-403399/2021', 'santri/foto/6658517433_foto_santri.jpg', 'santri/ktp/6658517433_foto_ktp.jpg', 'santri/akta/6658517433_foto_akta.jpg', 'santri/ijazah/6658517433_foto_ijazah.jpg', 'santri/surat_sehat/6658517433_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:37.970102', '2025-12-01 18:19:37.977935', 'Islam', 'Islam', 4, 'Indonesia', 'Desa D', 0, 'Pekanbaru', 'Kecamatan A', '', 'WNI', 'WNI', 'WNI', '34326', 'Khadijah', '14744531', 'S1', 'SMP SEDERAJAT', 'DKI Jakarta', 'Asma ringan', 'HIDUP', 'HIDUP', NULL, '1972-03-15', '1981-11-16', 'Cirebon', 'Samarinda', 'Orang Tua'),
(99, 'Amir Purnomo', '5902739087', 'Solo', '2009-02-16', 'L', 'Islam', 'AB', 171, 76, 'Gani Susilo', '9488949262590259', 'Nadia Sukarno', '2855823865998289', 'Nelayan', 'Akuntan', '08444355886', '08273135718', 'Jl. Merdeka No. 546, RT 02/RW 01, Desa D, Kecamatan A, Bekasi, Sumatera Barat', 'Jl. Merdeka No. 546, RT 02/RW 01, Desa D, Kecamatan A, Bekasi, Sumatera Barat', '08735540402', 'amirpurnomo48@gmail.com', 'MI Al-Hidayah', '9 SMP', '2024', 'DN-353271/2024', 'santri/foto/5902739087_foto_santri.jpg', 'santri/ktp/5902739087_foto_ktp.jpg', 'santri/akta/5902739087_foto_akta.jpg', 'santri/ijazah/5902739087_foto_ijazah.jpg', 'santri/surat_sehat/5902739087_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.002663', '2025-12-01 18:19:38.010385', 'Islam', 'Islam', 5, 'Indonesia', 'Desa D', 6, 'Bekasi', 'Kecamatan A', '', 'WNI', 'WNI', 'WNI', '14937', 'Amir', '15083710', 'S3', 'S2', 'Sumatera Barat', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1972-10-06', '1972-01-24', 'Depok', 'Jakarta', 'Orang Tua'),
(100, 'Winda Susilo', '6253755309', 'Magelang', '2014-02-07', 'P', 'Islam', 'AB', 134, 66, 'Ibrahim Nasution', '7178745824733550', 'Fira Susilo', '4189340831116517', 'Akuntan', 'Akuntan', '08985578515', '08379508821', 'Jl. Gatot Subroto No. 248, RT 04/RW 05, Desa E, Kecamatan A, Medan, Bengkulu', 'Jl. Gatot Subroto No. 248, RT 04/RW 05, Desa E, Kecamatan A, Medan, Bengkulu', '08317463067', 'windasusilo49@gmail.com', 'SD Negeri 02', '6 SD', '2022', 'DN-989894/2022', 'santri/foto/6253755309_foto_santri.jpg', 'santri/ktp/6253755309_foto_ktp.jpg', 'santri/akta/6253755309_foto_akta.jpg', 'santri/ijazah/6253755309_foto_ijazah.jpg', 'santri/surat_sehat/6253755309_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.035129', '2025-12-01 18:19:38.041227', 'Islam', 'Islam', 1, 'Indonesia', 'Desa E', 6, 'Medan', 'Kecamatan A', '', 'WNI', 'WNI', 'WNI', '22335', 'Winda', '32571438', 'S2', 'SMP SEDERAJAT', 'Bengkulu', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1977-11-24', '1980-11-12', 'Lampung', 'Jambi', 'Wali'),
(101, 'Citra Suryadi', '9152747886', 'Yogyakarta', '2010-12-16', 'P', 'Islam', 'B', 154, 60, 'Jamil Saputra', '5684803879760548', 'Gina Rahman', '7161401589510614', 'Hakim', 'Perawat', '08255047245', '08587529331', 'Jl. Hayam Wuruk No. 774, RT 09/RW 07, Kelurahan A, Kecamatan F, Tangerang, Lampung', 'Jl. Hayam Wuruk No. 774, RT 09/RW 07, Kelurahan A, Kecamatan F, Tangerang, Lampung', '08730541588', 'citrasuryadi50@gmail.com', 'SD Muhammadiyah', '6 SD', '2021', 'DN-820938/2021', 'santri/foto/9152747886_foto_santri.jpg', 'santri/ktp/9152747886_foto_ktp.jpg', 'santri/akta/9152747886_foto_akta.jpg', 'santri/ijazah/9152747886_foto_ijazah.jpg', 'santri/surat_sehat/9152747886_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.064246', '2025-12-01 18:19:38.071444', 'Islam', 'Islam', 1, 'Indonesia', 'Kelurahan A', 1, 'Tangerang', 'Kecamatan F', '', 'WNI', 'WNI', 'WNI', '49503', 'Citra', '16560284', 'SD SEDERAJAT', 'SMA SEDERAJAT', 'Lampung', 'Asma ringan', 'HIDUP', 'HIDUP', NULL, '1974-07-06', '1990-11-22', 'Malang', 'Malang', 'Wali'),
(102, 'Fadila Lubis', '7205062789', 'Bengkulu', '2015-04-24', 'P', 'Islam', 'B', 140, 42, 'Ibrahim Rizki', '4251262615732198', 'Hilda Nasution', '9366989209846237', 'Jaksa', 'Dokter', '08904510057', '08603845712', 'Jl. Gatot Subroto No. 685, RT 10/RW 04, Kelurahan D, Kecamatan F, Semarang, DKI Jakarta', 'Jl. Gatot Subroto No. 685, RT 10/RW 04, Kelurahan D, Kecamatan F, Semarang, DKI Jakarta', '08314523110', 'fadilalubis51@gmail.com', 'MA Darul Ulum', '12 MA', '2021', 'DN-970163/2021', 'santri/foto/7205062789_foto_santri.jpg', 'santri/ktp/7205062789_foto_ktp.jpg', 'santri/akta/7205062789_foto_akta.jpg', 'santri/ijazah/7205062789_foto_ijazah.jpg', 'santri/surat_sehat/7205062789_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.091848', '2025-12-01 18:19:38.099234', 'Islam', 'Islam', 1, 'Indonesia', 'Kelurahan D', 4, 'Semarang', 'Kecamatan F', '', 'WNI', 'WNI', 'WNI', '56552', 'Fadila', '97373252', 'D3', 'SD SEDERAJAT', 'DKI Jakarta', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1995-12-12', '1995-05-28', 'Yogyakarta', 'Purwokerto', 'Orang Tua'),
(103, 'Iqbal Arief', '2498989215', 'Balikpapan', '2012-12-01', 'L', 'Islam', 'A', 179, 68, 'Kamil Siregar', '9319806601202353', 'Gina Gunawan', '8556546716664184', 'Insinyur', 'Insinyur', '08177839119', '08704136259', 'Jl. Merdeka No. 132, RT 02/RW 04, Kelurahan D, Kecamatan E, Bandung, Sumatera Utara', 'Jl. Merdeka No. 132, RT 02/RW 04, Kelurahan D, Kecamatan E, Bandung, Sumatera Utara', '08378067787', 'iqbalarief52@gmail.com', 'SMP Negeri 01', '9 SMP', '2024', 'DN-695630/2024', 'santri/foto/2498989215_foto_santri.jpg', 'santri/ktp/2498989215_foto_ktp.jpg', 'santri/akta/2498989215_foto_akta.jpg', 'santri/ijazah/2498989215_foto_ijazah.jpg', 'santri/surat_sehat/2498989215_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.123779', '2025-12-01 18:19:38.132835', 'Islam', 'Islam', 5, 'Indonesia', 'Kelurahan D', 4, 'Bandung', 'Kecamatan E', '', 'WNI', 'WNI', 'WNI', '79839', 'Iqbal', '32099790', 'SD SEDERAJAT', 'S2', 'Sumatera Utara', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1989-08-02', '1983-12-07', 'Padang', 'Ambon', 'Orang Tua'),
(104, 'Laila Wibowo', '1587130133', 'Samarinda', '2011-10-10', 'P', 'Islam', 'B', 161, 48, 'Ibrahim Suryadi', '1371869264138667', 'Bunga Pramono', '1856274871556432', 'Insinyur', 'Hakim', '08876517711', '08726272220', 'Jl. Hayam Wuruk No. 837, RT 02/RW 07, Desa E, Kecamatan F, Denpasar, Banten', 'Jl. Hayam Wuruk No. 837, RT 02/RW 07, Desa E, Kecamatan F, Denpasar, Banten', '08102528582', 'lailawibowo53@gmail.com', 'SD Negeri 02', '12 MA', '2023', 'DN-208387/2023', 'santri/foto/1587130133_foto_santri.jpg', 'santri/ktp/1587130133_foto_ktp.jpg', 'santri/akta/1587130133_foto_akta.jpg', 'santri/ijazah/1587130133_foto_ijazah.jpg', 'santri/surat_sehat/1587130133_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.151602', '2025-12-01 18:19:38.167328', 'Islam', 'Islam', 4, 'Indonesia', 'Desa E', 2, 'Denpasar', 'Kecamatan F', '', 'WNI', 'WNI', 'WNI', '87133', 'Laila', '58343702', 'D3', 'S3', 'Banten', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1978-04-23', '1973-10-25', 'Jakarta', 'Kendari', 'Wali'),
(105, 'Oktavia Kusuma', '9174896772', 'Ambon', '2014-09-14', 'P', 'Islam', 'B', 141, 39, 'Husain Sukarno', '7890749501180931', 'Qonita Bambang', '3451832667431569', 'Dokter', 'Pedagang', '08437283895', '08113030197', 'Jl. Merdeka No. 99, RT 05/RW 08, Kelurahan A, Kecamatan B, Jakarta Utara, Kalimantan Tengah', 'Jl. Merdeka No. 99, RT 05/RW 08, Kelurahan A, Kecamatan B, Jakarta Utara, Kalimantan Tengah', '08414000670', 'oktaviakusuma54@gmail.com', 'SD Negeri 02', '12 SMA', '2021', 'DN-363914/2021', 'santri/foto/9174896772_foto_santri.jpg', 'santri/ktp/9174896772_foto_ktp.jpg', 'santri/akta/9174896772_foto_akta.jpg', 'santri/ijazah/9174896772_foto_ijazah.jpg', 'santri/surat_sehat/9174896772_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.182530', '2025-12-01 18:19:38.198085', 'Islam', 'Islam', 1, 'Indonesia', 'Kelurahan A', 4, 'Jakarta Utara', 'Kecamatan B', '', 'WNI', 'WNI', 'WNI', '66523', 'Oktavia', '98442207', 'S2', 'S3', 'Kalimantan Tengah', 'Asma ringan', 'HIDUP', 'HIDUP', NULL, '1987-07-27', '1993-06-15', 'Balikpapan', 'Padang', 'Orang Tua'),
(106, 'Cinta Harto', '5383611089', 'Samarinda', '2008-03-03', 'P', 'Islam', 'A', 168, 34, 'Amir Fauzi', '2307551531342872', 'Nadia Bambang', '5407346715914430', 'Arsitek', 'Guru', '08961783535', '08970212198', 'Jl. Thamrin No. 69, RT 01/RW 08, Kelurahan A, Kecamatan A, Jakarta Utara, Nusa Tenggara Barat', 'Jl. Thamrin No. 69, RT 01/RW 08, Kelurahan A, Kecamatan A, Jakarta Utara, Nusa Tenggara Barat', '08927688717', 'cintaharto55@gmail.com', 'SD Negeri 02', '9 SMP', '2020', 'DN-300656/2020', 'santri/foto/5383611089_foto_santri.jpg', 'santri/ktp/5383611089_foto_ktp.jpg', 'santri/akta/5383611089_foto_akta.jpg', 'santri/ijazah/5383611089_foto_ijazah.jpg', 'santri/surat_sehat/5383611089_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.216716', '2025-12-01 18:19:38.231170', 'Islam', 'Islam', 1, 'Indonesia', 'Kelurahan A', 5, 'Jakarta Utara', 'Kecamatan A', '', 'WNI', 'WNI', 'WNI', '88763', 'Cinta', '75802349', 'SMP SEDERAJAT', 'SMP SEDERAJAT', 'Nusa Tenggara Barat', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1969-02-01', '1970-01-03', 'Lampung', 'Bekasi', 'Lainnya'),
(107, 'Zahra Harahap', '9365279238', 'Padang', '2009-08-12', 'P', 'Islam', 'AB', 156, 43, 'Hafiz Harahap', '2837950955849702', 'Dinda Sari', '7893369598721644', 'Karyawan Swasta', 'TNI', '08485518621', '08826625817', 'Jl. Gatot Subroto No. 210, RT 02/RW 10, Kelurahan C, Kecamatan G, Malang, Riau', 'Jl. Gatot Subroto No. 210, RT 02/RW 10, Kelurahan C, Kecamatan G, Malang, Riau', '08144400575', 'zahraharahap56@gmail.com', 'SMA Negeri 02', '6 SD', '2020', 'DN-221954/2020', 'santri/foto/9365279238_foto_santri.jpg', 'santri/ktp/9365279238_foto_ktp.jpg', 'santri/akta/9365279238_foto_akta.jpg', 'santri/ijazah/9365279238_foto_ijazah.jpg', 'santri/surat_sehat/9365279238_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.258328', '2025-12-01 18:19:38.264597', 'Islam', 'Islam', 4, 'Indonesia', 'Kelurahan C', 0, 'Malang', 'Kecamatan G', '', 'WNI', 'WNI', 'WNI', '81012', 'Zahra', '96467015', 'SMA SEDERAJAT', 'SMA SEDERAJAT', 'Riau', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1969-01-05', '1986-04-16', 'Palembang', 'Bekasi', 'Lainnya'),
(108, 'Dani Kurniawan', '7192619019', 'Purwokerto', '2014-11-01', 'L', 'Islam', 'O', 155, 72, 'Haris Purnomo', '5391638335652545', 'Nur Kusuma', '9202361186346834', 'Nelayan', 'Petani', '08939017600', '08280301250', 'Jl. Merdeka No. 109, RT 05/RW 05, Desa D, Kecamatan C, Padang, Banten', 'Jl. Merdeka No. 109, RT 05/RW 05, Desa D, Kecamatan C, Padang, Banten', '08158855341', 'danikurniawan57@gmail.com', 'MI Nurul Iman', '12 MA', '2020', 'DN-224627/2020', 'santri/foto/7192619019_foto_santri.jpg', 'santri/ktp/7192619019_foto_ktp.jpg', 'santri/akta/7192619019_foto_akta.jpg', 'santri/ijazah/7192619019_foto_ijazah.jpg', 'santri/surat_sehat/7192619019_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.293349', '2025-12-01 18:19:38.298118', 'Islam', 'Islam', 5, 'Indonesia', 'Desa D', 4, 'Padang', 'Kecamatan C', '', 'WNI', 'WNI', 'WNI', '25639', 'Dani', '77887762', 'SMA SEDERAJAT', 'SMA SEDERAJAT', 'Banten', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1989-04-02', '1990-03-28', 'Pontianak', 'Banten', 'Wali'),
(109, 'Taufik Putri', '1245063601', 'Surabaya', '2013-07-22', 'L', 'Islam', 'B', 164, 38, 'Ihsan Tanjung', '3623074255229806', 'Sari Suryadi', '3900730879594273', 'Hakim', 'PNS', '08856861133', '08399632231', 'Jl. Merdeka No. 220, RT 10/RW 07, Desa C, Kecamatan I, Makassar, Jawa Tengah', 'Jl. Merdeka No. 220, RT 10/RW 07, Desa C, Kecamatan I, Makassar, Jawa Tengah', '08484553907', 'taufikputri58@gmail.com', 'MA Al-Muttaqin', '12 SMA', '2022', 'DN-800189/2022', 'santri/foto/1245063601_foto_santri.jpg', 'santri/ktp/1245063601_foto_ktp.jpg', 'santri/akta/1245063601_foto_akta.jpg', 'santri/ijazah/1245063601_foto_ijazah.jpg', 'santri/surat_sehat/1245063601_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.317365', '2025-12-01 18:19:38.331242', 'Islam', 'Islam', 2, 'Indonesia', 'Desa C', 1, 'Makassar', 'Kecamatan I', '', 'WNI', 'WNI', 'WNI', '52507', 'Taufik', '85153543', 'S1', 'S3', 'Jawa Tengah', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1982-11-07', '1988-06-04', 'Kendari', 'Jakarta', 'Orang Tua'),
(110, 'Gani Budi', '8298992263', 'Ambon', '2009-03-13', 'L', 'Islam', 'AB', 165, 39, 'Rafi Purnomo', '5745512780082429', 'Yuli Wati', '9055541432774987', 'TNI', 'Pengusaha', '08249022829', '08338393647', 'Jl. Sudirman No. 986, RT 05/RW 03, Desa A, Kecamatan D, Padang, Jambi', 'Jl. Sudirman No. 986, RT 05/RW 03, Desa A, Kecamatan D, Padang, Jambi', '08967596893', 'ganibudi59@gmail.com', 'SMA Muhammadiyah', '12 SMA', '2023', 'DN-416184/2023', 'santri/foto/8298992263_foto_santri.jpg', 'santri/ktp/8298992263_foto_ktp.jpg', 'santri/akta/8298992263_foto_akta.jpg', 'santri/ijazah/8298992263_foto_ijazah.jpg', 'santri/surat_sehat/8298992263_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.355169', '2025-12-01 18:19:38.360989', 'Islam', 'Islam', 5, 'Indonesia', 'Desa A', 0, 'Padang', 'Kecamatan D', '', 'WNI', 'WNI', 'WNI', '10978', 'Gani', '38538559', 'SMP SEDERAJAT', 'S3', 'Jambi', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1988-04-14', '1979-09-14', 'Lampung', 'Magelang', 'Lainnya'),
(111, 'Mariam Pohan', '3837646805', 'Palembang', '2009-01-07', 'P', 'Islam', 'A', 164, 65, 'Luthfi Joko', '6005310009160310', 'Rahma Suryadi', '6348949356804704', 'TNI', 'Petani', '08206260861', '08762642209', 'Jl. Hayam Wuruk No. 65, RT 03/RW 06, Desa B, Kecamatan B, Medan, Kalimantan Tengah', 'Jl. Hayam Wuruk No. 65, RT 03/RW 06, Desa B, Kecamatan B, Medan, Kalimantan Tengah', '08301680755', 'mariampohan60@gmail.com', 'MI Al-Hidayah', '12 SMA', '2024', 'DN-276935/2024', 'santri/foto/3837646805_foto_santri.jpg', 'santri/ktp/3837646805_foto_ktp.jpg', 'santri/akta/3837646805_foto_akta.jpg', 'santri/ijazah/3837646805_foto_ijazah.jpg', 'santri/surat_sehat/3837646805_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.386084', '2025-12-01 18:19:38.389088', 'Islam', 'Islam', 3, 'Indonesia', 'Desa B', 6, 'Medan', 'Kecamatan B', '', 'WNI', 'WNI', 'WNI', '11282', 'Mariam', '66059402', 'S2', 'SMP SEDERAJAT', 'Kalimantan Tengah', 'Alergi debu', 'HIDUP', 'HIDUP', NULL, '1977-03-28', '1985-08-11', 'Bogor', 'Palu', 'Lainnya'),
(112, 'Lukman Hakim', '4143253634', 'Pekanbaru', '2011-04-28', 'L', 'Islam', 'O', 161, 65, 'Ilyas Hidayat', '2710576896459820', 'Indah Eko', '5881275276378621', 'Pengusaha', 'Dokter', '08451567457', '08930260307', 'Jl. Ahmad Yani No. 490, RT 06/RW 09, Kelurahan C, Kecamatan J, Jakarta Pusat, Kalimantan Barat', 'Jl. Ahmad Yani No. 490, RT 06/RW 09, Kelurahan C, Kecamatan J, Jakarta Pusat, Kalimantan Barat', '08651107584', 'lukmanhakim61@gmail.com', 'MA Muhammadiyah', '9 SMP', '2022', 'DN-808196/2022', 'santri/foto/4143253634_foto_santri.jpg', 'santri/ktp/4143253634_foto_ktp.jpg', 'santri/akta/4143253634_foto_akta.jpg', 'santri/ijazah/4143253634_foto_ijazah.jpg', 'santri/surat_sehat/4143253634_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.419596', '2025-12-01 18:19:38.427291', 'Islam', 'Islam', 2, 'Indonesia', 'Kelurahan C', 6, 'Jakarta Pusat', 'Kecamatan J', '', 'WNI', 'WNI', 'WNI', '21374', 'Lukman', '54967802', 'SD SEDERAJAT', 'S3', 'Kalimantan Barat', 'Asma ringan', 'HIDUP', 'HIDUP', NULL, '1975-04-05', '1982-04-27', 'Padang', 'Palembang', 'Lainnya'),
(113, 'Mahmud Agung', '8117362919', 'Magelang', '2015-11-24', 'L', 'Islam', 'A', 179, 43, 'Umar Wijaya', '3656375304017205', 'Winda Sukarno', '7024458911236667', 'Arsitek', 'Konsultan', '08439409023', '08147071043', 'Jl. Diponegoro No. 542, RT 10/RW 01, Desa A, Kecamatan I, Pekanbaru, Lampung', 'Jl. Diponegoro No. 542, RT 10/RW 01, Desa A, Kecamatan I, Pekanbaru, Lampung', '08164593862', 'mahmudagung62@gmail.com', 'MTs Al-Ikhlas', '9 SMP', '2023', 'DN-941526/2023', 'santri/foto/8117362919_foto_santri.jpg', 'santri/ktp/8117362919_foto_ktp.jpg', 'santri/akta/8117362919_foto_akta.jpg', 'santri/ijazah/8117362919_foto_ijazah.jpg', 'santri/surat_sehat/8117362919_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.454389', '2025-12-01 18:19:38.462081', 'Islam', 'Islam', 4, 'Indonesia', 'Desa A', 4, 'Pekanbaru', 'Kecamatan I', '', 'WNI', 'WNI', 'WNI', '91663', 'Mahmud', '64930199', 'SMP SEDERAJAT', 'D3', 'Lampung', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1993-03-04', '1983-10-01', 'Medan', 'Depok', 'Orang Tua'),
(114, 'Yunus Budi', '8323781112', 'Bogor', '2012-05-03', 'L', 'Islam', 'AB', 176, 39, 'Kamil Lubis', '8748260028406106', 'Citra Fauzi', '3786449855192556', 'Petani', 'Jaksa', '08942656045', '08280661148', 'Jl. Thamrin No. 24, RT 07/RW 10, Desa E, Kecamatan F, Denpasar, Jawa Tengah', 'Jl. Thamrin No. 24, RT 07/RW 10, Desa E, Kecamatan F, Denpasar, Jawa Tengah', '08773735932', 'yunusbudi63@gmail.com', 'SD Negeri 01', '9 SMP', '2024', 'DN-986957/2024', 'santri/foto/8323781112_foto_santri.jpg', 'santri/ktp/8323781112_foto_ktp.jpg', 'santri/akta/8323781112_foto_akta.jpg', 'santri/ijazah/8323781112_foto_ijazah.jpg', 'santri/surat_sehat/8323781112_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.487633', '2025-12-01 18:19:38.495075', 'Islam', 'Islam', 5, 'Indonesia', 'Desa E', 3, 'Denpasar', 'Kecamatan F', '', 'WNI', 'WNI', 'WNI', '17739', 'Yunus', '25915641', 'SMA SEDERAJAT', 'S2', 'Jawa Tengah', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1982-11-07', '1977-12-21', 'Makassar', 'Bogor', 'Lainnya'),
(115, 'Putri Arief', '1970798127', 'Bogor', '2009-01-08', 'P', 'Islam', 'O', 147, 51, 'Yusuf Kurniawan', '3142922818670547', 'Dinda Lubis', '3169768833456049', 'Ibu Rumah Tangga', 'Akuntan', '08218437197', '08406566696', 'Jl. Merdeka No. 397, RT 08/RW 09, Kelurahan E, Kecamatan D, Tangerang, Jawa Timur', 'Jl. Merdeka No. 397, RT 08/RW 09, Kelurahan E, Kecamatan D, Tangerang, Jawa Timur', '08673199997', 'putriarief64@gmail.com', 'SD Muhammadiyah', '12 MA', '2021', 'DN-821159/2021', 'santri/foto/1970798127_foto_santri.jpg', 'santri/ktp/1970798127_foto_ktp.jpg', 'santri/akta/1970798127_foto_akta.jpg', 'santri/ijazah/1970798127_foto_ijazah.jpg', 'santri/surat_sehat/1970798127_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.520281', '2025-12-01 18:19:38.527159', 'Islam', 'Islam', 5, 'Indonesia', 'Kelurahan E', 0, 'Tangerang', 'Kecamatan D', '', 'WNI', 'WNI', 'WNI', '27941', 'Putri', '56062263', 'S1', 'S2', 'Jawa Timur', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1971-11-02', '1981-07-20', 'Balikpapan', 'Samarinda', 'Lainnya'),
(116, 'Putri Sukarno', '1674041347', 'Purwokerto', '2013-11-23', 'P', 'Islam', 'B', 134, 35, 'Abdurrahman Suryadi', '4133508350870107', 'Fadila Wibisono', '3833654491856971', 'Petani', 'Notaris', '08920461115', '08283797867', 'Jl. Ahmad Yani No. 109, RT 08/RW 03, Desa D, Kecamatan I, Denpasar, Kalimantan Tengah', 'Jl. Ahmad Yani No. 109, RT 08/RW 03, Desa D, Kecamatan I, Denpasar, Kalimantan Tengah', '08727772167', 'putrisukarno65@gmail.com', 'SD Muhammadiyah', '12 SMA', '2023', 'DN-382375/2023', 'santri/foto/1674041347_foto_santri.jpg', 'santri/ktp/1674041347_foto_ktp.jpg', 'santri/akta/1674041347_foto_akta.jpg', 'santri/ijazah/1674041347_foto_ijazah.jpg', 'santri/surat_sehat/1674041347_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.551952', '2025-12-01 18:19:38.558570', 'Islam', 'Islam', 5, 'Indonesia', 'Desa D', 3, 'Denpasar', 'Kecamatan I', '', 'WNI', 'WNI', 'WNI', '20593', 'Putri', '27079016', 'SMP SEDERAJAT', 'SMA SEDERAJAT', 'Kalimantan Tengah', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1983-07-01', '1978-11-07', 'Bandung', 'Bandung', 'Wali'),
(117, 'Umar Wibisono', '3716659553', 'Manado', '2012-02-21', 'L', 'Islam', 'B', 144, 77, 'Zulfikar Siregar', '9084141954944344', 'Aisyah Pramono', '7995917279989595', 'Akuntan', 'Pedagang', '08564932724', '08910765277', 'Jl. Ahmad Yani No. 34, RT 03/RW 10, Kelurahan A, Kecamatan J, Makassar, Lampung', 'Jl. Ahmad Yani No. 34, RT 03/RW 10, Kelurahan A, Kecamatan J, Makassar, Lampung', '08395724658', 'umarwibisono66@gmail.com', 'MA Al-Amin', '6 SD', '2022', 'DN-771083/2022', 'santri/foto/3716659553_foto_santri.jpg', 'santri/ktp/3716659553_foto_ktp.jpg', 'santri/akta/3716659553_foto_akta.jpg', 'santri/ijazah/3716659553_foto_ijazah.jpg', 'santri/surat_sehat/3716659553_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.582103', '2025-12-01 18:19:38.590059', 'Islam', 'Islam', 5, 'Indonesia', 'Kelurahan A', 2, 'Makassar', 'Kecamatan J', '', 'WNI', 'WNI', 'WNI', '73069', 'Umar', '41256332', 'D3', 'S2', 'Lampung', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1987-02-08', '1989-04-10', 'Denpasar', 'Surabaya', 'Wali'),
(118, 'Amir Susilo', '4859420697', 'Depok', '2011-11-23', 'L', 'Islam', 'A', 174, 71, 'Kamil Hidayat', '4963580870298944', 'Bella Santoso', '1180946298796703', 'Nelayan', 'Insinyur', '08877723251', '08364596695', 'Jl. Ahmad Yani No. 737, RT 06/RW 05, Desa D, Kecamatan E, Jakarta Utara, DI Yogyakarta', 'Jl. Ahmad Yani No. 737, RT 06/RW 05, Desa D, Kecamatan E, Jakarta Utara, DI Yogyakarta', '08566534439', 'amirsusilo67@gmail.com', 'SMA Muhammadiyah', '12 MA', '2024', 'DN-193054/2024', 'santri/foto/4859420697_foto_santri.jpg', 'santri/ktp/4859420697_foto_ktp.jpg', 'santri/akta/4859420697_foto_akta.jpg', 'santri/ijazah/4859420697_foto_ijazah.jpg', 'santri/surat_sehat/4859420697_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.613710', '2025-12-01 18:19:38.622470', 'Islam', 'Islam', 4, 'Indonesia', 'Desa D', 5, 'Jakarta Utara', 'Kecamatan E', '', 'WNI', 'WNI', 'WNI', '43324', 'Amir', '38107122', 'S2', 'S2', 'DI Yogyakarta', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1973-10-10', '1978-09-06', 'Lampung', 'Palu', 'Lainnya'),
(119, 'Hamzah Sari', '9695350737', 'Padang', '2015-02-22', 'L', 'Islam', 'O', 152, 54, 'Fauzan Hakim', '7828225831310368', 'Dewi Saputra', '9292568441838021', 'PNS', 'Perawat', '08436040550', '08206278496', 'Jl. Ahmad Yani No. 359, RT 01/RW 03, Desa A, Kecamatan J, Makassar, Jambi', 'Jl. Ahmad Yani No. 359, RT 01/RW 03, Desa A, Kecamatan J, Makassar, Jambi', '08186682283', 'hamzahsari68@gmail.com', 'MI Nurul Iman', '6 SD', '2024', 'DN-628042/2024', 'santri/foto/9695350737_foto_santri.jpg', 'santri/ktp/9695350737_foto_ktp.jpg', 'santri/akta/9695350737_foto_akta.jpg', 'santri/ijazah/9695350737_foto_ijazah.jpg', 'santri/surat_sehat/9695350737_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.647136', '2025-12-01 18:19:38.656275', 'Islam', 'Islam', 1, 'Indonesia', 'Desa A', 6, 'Makassar', 'Kecamatan J', '', 'WNI', 'WNI', 'WNI', '78136', 'Hamzah', '33381546', 'S2', 'S3', 'Jambi', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1980-10-06', '1995-09-06', 'Bengkulu', 'Manado', 'Lainnya'),
(120, 'Hani Dalimunthe', '3156040816', 'Bengkulu', '2015-11-20', 'P', 'Islam', 'A', 137, 32, 'Abdurrahman Rizki', '9971731003488232', 'Gina Kurniawan', '8481735270927831', 'Wiraswasta', 'Pedagang', '08844417148', '08465903519', 'Jl. Ahmad Yani No. 99, RT 02/RW 10, Desa A, Kecamatan D, Palembang, Kalimantan Timur', 'Jl. Ahmad Yani No. 99, RT 02/RW 10, Desa A, Kecamatan D, Palembang, Kalimantan Timur', '08784782148', 'hanidalimunthe69@gmail.com', 'SMP Negeri 01', '12 SMA', '2021', 'DN-843832/2021', 'santri/foto/3156040816_foto_santri.jpg', 'santri/ktp/3156040816_foto_ktp.jpg', 'santri/akta/3156040816_foto_akta.jpg', 'santri/ijazah/3156040816_foto_ijazah.jpg', 'santri/surat_sehat/3156040816_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.679218', '2025-12-01 18:19:38.687756', 'Islam', 'Islam', 3, 'Indonesia', 'Desa A', 3, 'Palembang', 'Kecamatan D', '', 'WNI', 'WNI', 'WNI', '57249', 'Hani', '45055963', 'SMA SEDERAJAT', 'SMP SEDERAJAT', 'Kalimantan Timur', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1977-02-14', '1996-02-06', 'Jakarta', 'Bandung', 'Wali'),
(121, 'Mahmud Handoko', '9901270500', 'Bandung', '2007-06-20', 'L', 'Islam', 'B', 157, 67, 'Ismail Kusuma', '1704499726925223', 'Putri Joko', '3769012988541350', 'Polisi', 'Konsultan', '08549749396', '08478935669', 'Jl. Merdeka No. 606, RT 02/RW 08, Desa D, Kecamatan J, Bandung, Lampung', 'Jl. Merdeka No. 606, RT 02/RW 08, Desa D, Kecamatan J, Bandung, Lampung', '08776227639', 'mahmudhandoko70@gmail.com', 'MI Nurul Iman', '12 MA', '2022', 'DN-249614/2022', 'santri/foto/9901270500_foto_santri.jpg', 'santri/ktp/9901270500_foto_ktp.jpg', 'santri/akta/9901270500_foto_akta.jpg', 'santri/ijazah/9901270500_foto_ijazah.jpg', 'santri/surat_sehat/9901270500_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.711076', '2025-12-01 18:19:38.718187', 'Islam', 'Islam', 2, 'Indonesia', 'Desa D', 0, 'Bandung', 'Kecamatan J', '', 'WNI', 'WNI', 'WNI', '95680', 'Mahmud', '59121748', 'S1', 'SMA SEDERAJAT', 'Lampung', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1973-01-19', '1980-05-23', 'Banten', 'Bekasi', 'Orang Tua'),
(122, 'Lina Joko', '2365907681', 'Padang', '2014-11-24', 'P', 'Islam', 'AB', 138, 61, 'Jalal Sari', '9814033944197641', 'Khadijah Pratama', '2603393305932375', 'Konsultan', 'Petani', '08696765074', '08515499716', 'Jl. Sudirman No. 467, RT 05/RW 02, Desa E, Kecamatan I, Jakarta Pusat, Sulawesi Selatan', 'Jl. Sudirman No. 467, RT 05/RW 02, Desa E, Kecamatan I, Jakarta Pusat, Sulawesi Selatan', '08993599730', 'linajoko71@gmail.com', 'MA Al-Muttaqin', '6 SD', '2020', 'DN-560383/2020', 'santri/foto/2365907681_foto_santri.jpg', 'santri/ktp/2365907681_foto_ktp.jpg', 'santri/akta/2365907681_foto_akta.jpg', 'santri/ijazah/2365907681_foto_ijazah.jpg', 'santri/surat_sehat/2365907681_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.742253', '2025-12-01 18:19:38.748967', 'Islam', 'Islam', 3, 'Indonesia', 'Desa E', 0, 'Jakarta Pusat', 'Kecamatan I', '', 'WNI', 'WNI', 'WNI', '21594', 'Lina', '36056111', 'SMP SEDERAJAT', 'S1', 'Sulawesi Selatan', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1983-02-15', '1989-11-20', 'Tangerang', 'Palu', 'Lainnya'),
(123, 'Dara Sutrisno', '2519928219', 'Depok', '2011-11-22', 'P', 'Islam', 'B', 153, 46, 'Fauzan Pohan', '4134816597973742', 'Citra Susilo', '2069767782347236', 'Hakim', 'Petani', '08308151705', '08882404936', 'Jl. Hayam Wuruk No. 143, RT 01/RW 10, Kelurahan C, Kecamatan J, Padang, Kalimantan Selatan', 'Jl. Hayam Wuruk No. 143, RT 01/RW 10, Kelurahan C, Kecamatan J, Padang, Kalimantan Selatan', '08679398375', 'darasutrisno72@gmail.com', 'MA Al-Amin', '12 SMA', '2020', 'DN-174095/2020', 'santri/foto/2519928219_foto_santri.jpg', 'santri/ktp/2519928219_foto_ktp.jpg', 'santri/akta/2519928219_foto_akta.jpg', 'santri/ijazah/2519928219_foto_ijazah.jpg', 'santri/surat_sehat/2519928219_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.778626', '2025-12-01 18:19:38.787084', 'Islam', 'Islam', 4, 'Indonesia', 'Kelurahan C', 0, 'Padang', 'Kecamatan J', '', 'WNI', 'WNI', 'WNI', '64878', 'Dara', '42613252', 'SMA SEDERAJAT', 'SD SEDERAJAT', 'Kalimantan Selatan', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1972-08-23', '1973-09-05', 'Tangerang', 'Makassar', 'Lainnya'),
(124, 'Dara Putri', '4859758416', 'Pekanbaru', '2014-01-19', 'P', 'Islam', 'B', 138, 55, 'Qasim Sutrisno', '4971543976591671', 'Sinta Sutrisno', '2762851475314122', 'Pengusaha', 'Akuntan', '08770522242', '08548252537', 'Jl. Diponegoro No. 236, RT 03/RW 01, Kelurahan D, Kecamatan B, Bandung, Jawa Timur', 'Jl. Diponegoro No. 236, RT 03/RW 01, Kelurahan D, Kecamatan B, Bandung, Jawa Timur', '08319201493', 'daraputri73@gmail.com', 'SMP Muhammadiyah', '12 SMA', '2020', 'DN-936173/2020', 'santri/foto/4859758416_foto_santri.jpg', 'santri/ktp/4859758416_foto_ktp.jpg', 'santri/akta/4859758416_foto_akta.jpg', 'santri/ijazah/4859758416_foto_ijazah.jpg', 'santri/surat_sehat/4859758416_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.810940', '2025-12-01 18:19:38.818942', 'Islam', 'Islam', 2, 'Indonesia', 'Kelurahan D', 0, 'Bandung', 'Kecamatan B', '', 'WNI', 'WNI', 'WNI', '80400', 'Dara', '47369085', 'S3', 'S2', 'Jawa Timur', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1983-06-24', '1985-02-05', 'Padang', 'Malang', 'Lainnya'),
(125, 'Tasya Santoso', '7714423700', 'Denpasar', '2015-04-05', 'P', 'Islam', 'B', 144, 36, 'Bilal Santoso', '7583827705908516', 'Sinta Bambang', '3571088467915142', 'PNS', 'Polisi', '08358029291', '08711780687', 'Jl. Thamrin No. 339, RT 05/RW 06, Kelurahan E, Kecamatan H, Yogyakarta, Nusa Tenggara Barat', 'Jl. Thamrin No. 339, RT 05/RW 06, Kelurahan E, Kecamatan H, Yogyakarta, Nusa Tenggara Barat', '08438696285', 'tasyasantoso74@gmail.com', 'SMP Negeri 01', '6 SD', '2023', 'DN-719661/2023', 'santri/foto/7714423700_foto_santri.jpg', 'santri/ktp/7714423700_foto_ktp.jpg', 'santri/akta/7714423700_foto_akta.jpg', 'santri/ijazah/7714423700_foto_ijazah.jpg', 'santri/surat_sehat/7714423700_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.843097', '2025-12-01 18:19:38.850195', 'Islam', 'Islam', 5, 'Indonesia', 'Kelurahan E', 2, 'Yogyakarta', 'Kecamatan H', '', 'WNI', 'WNI', 'WNI', '26920', 'Tasya', '22250595', 'S1', 'D3', 'Nusa Tenggara Barat', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1981-08-26', '1994-01-08', 'Samarinda', 'Magelang', 'Orang Tua'),
(126, 'Gani Bambang', '8606990228', 'Palembang', '2013-02-18', 'L', 'Islam', 'A', 142, 39, 'Zaki Sutrisno', '1803846118373299', 'Siti Dalimunthe', '6555178582008984', 'Insinyur', 'Insinyur', '08365319336', '08128138898', 'Jl. Thamrin No. 461, RT 10/RW 02, Desa B, Kecamatan G, Denpasar, Sulawesi Selatan', 'Jl. Thamrin No. 461, RT 10/RW 02, Desa B, Kecamatan G, Denpasar, Sulawesi Selatan', '08276662283', 'ganibambang75@gmail.com', 'SMP Negeri 01', '6 SD', '2024', 'DN-871322/2024', 'santri/foto/8606990228_foto_santri.jpg', 'santri/ktp/8606990228_foto_ktp.jpg', 'santri/akta/8606990228_foto_akta.jpg', 'santri/ijazah/8606990228_foto_ijazah.jpg', 'santri/surat_sehat/8606990228_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.874622', '2025-12-01 18:19:38.884266', 'Islam', 'Islam', 3, 'Indonesia', 'Desa B', 5, 'Denpasar', 'Kecamatan G', '', 'WNI', 'WNI', 'WNI', '47196', 'Gani', '79497728', 'SMP SEDERAJAT', 'SD SEDERAJAT', 'Sulawesi Selatan', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1984-11-02', '1991-10-19', 'Solo', 'Palu', 'Orang Tua'),
(127, 'Umi Wibisono', '8562364716', 'Jambi', '2012-10-09', 'P', 'Islam', 'B', 140, 39, 'Gani Wati', '6968811414312009', 'Vina Nur', '2981527276324221', 'Guru', 'Wiraswasta', '08238252718', '08962680915', 'Jl. Diponegoro No. 900, RT 07/RW 07, Kelurahan E, Kecamatan G, Bogor, DI Yogyakarta', 'Jl. Diponegoro No. 900, RT 07/RW 07, Kelurahan E, Kecamatan G, Bogor, DI Yogyakarta', '08901166917', 'umiwibisono76@gmail.com', 'SMA Negeri 01', '12 MA', '2024', 'DN-534170/2024', 'santri/foto/8562364716_foto_santri.jpg', 'santri/ktp/8562364716_foto_ktp.jpg', 'santri/akta/8562364716_foto_akta.jpg', 'santri/ijazah/8562364716_foto_ijazah.jpg', 'santri/surat_sehat/8562364716_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.908484', '2025-12-01 18:19:38.914669', 'Islam', 'Islam', 1, 'Indonesia', 'Kelurahan E', 4, 'Bogor', 'Kecamatan G', '', 'WNI', 'WNI', 'WNI', '44050', 'Umi', '51683674', 'SMA SEDERAJAT', 'SMP SEDERAJAT', 'DI Yogyakarta', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1989-03-18', '1976-06-11', 'Manado', 'Solo', 'Orang Tua'),
(128, 'Rafi Wibisono', '6117590961', 'Purwokerto', '2010-08-17', 'L', 'Islam', 'B', 158, 52, 'Yunus Dalimunthe', '2285379314872548', 'Gita Wibowo', '9938123175518831', 'Polisi', 'Pensiunan', '08546236791', '08590821007', 'Jl. Gatot Subroto No. 959, RT 10/RW 04, Desa D, Kecamatan I, Yogyakarta, Sulawesi Selatan', 'Jl. Gatot Subroto No. 959, RT 10/RW 04, Desa D, Kecamatan I, Yogyakarta, Sulawesi Selatan', '08126632443', 'rafiwibisono77@gmail.com', 'MI Al-Hidayah', '6 SD', '2024', 'DN-557990/2024', 'santri/foto/6117590961_foto_santri.jpg', 'santri/ktp/6117590961_foto_ktp.jpg', 'santri/akta/6117590961_foto_akta.jpg', 'santri/ijazah/6117590961_foto_ijazah.jpg', 'santri/surat_sehat/6117590961_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.942079', '2025-12-01 18:19:38.949374', 'Islam', 'Islam', 3, 'Indonesia', 'Desa D', 3, 'Yogyakarta', 'Kecamatan I', '', 'WNI', 'WNI', 'WNI', '33881', 'Rafi', '35934054', 'S1', 'SD SEDERAJAT', 'Sulawesi Selatan', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1989-06-11', '1977-04-04', 'Denpasar', 'Kendari', 'Orang Tua'),
(129, 'Muhammad Handoko', '4053698362', 'Lampung', '2011-08-10', 'L', 'Islam', 'O', 171, 58, 'Jalal Siregar', '1160553092464503', 'Ika Siregar', '4119107391011159', 'Wiraswasta', 'Hakim', '08596544611', '08416495799', 'Jl. Merdeka No. 808, RT 08/RW 10, Desa D, Kecamatan I, Padang, Sumatera Selatan', 'Jl. Merdeka No. 808, RT 08/RW 10, Desa D, Kecamatan I, Padang, Sumatera Selatan', '08629989016', 'muhammadhandoko78@gmail.com', 'MTs Darussalam', '6 SD', '2023', 'DN-874112/2023', 'santri/foto/4053698362_foto_santri.jpg', 'santri/ktp/4053698362_foto_ktp.jpg', 'santri/akta/4053698362_foto_akta.jpg', 'santri/ijazah/4053698362_foto_ijazah.jpg', 'santri/surat_sehat/4053698362_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:38.975256', '2025-12-01 18:19:38.983511', 'Islam', 'Islam', 2, 'Indonesia', 'Desa D', 3, 'Padang', 'Kecamatan I', '', 'WNI', 'WNI', 'WNI', '57516', 'Muhammad', '29683517', 'S2', 'S3', 'Sumatera Selatan', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1979-02-01', '1982-01-23', 'Jakarta', 'Samarinda', 'Orang Tua'),
(130, 'Indah Hakim', '9373710324', 'Solo', '2012-07-06', 'P', 'Islam', 'B', 155, 33, 'Lukman Arief', '9746843651783195', 'Dinda Maulana', '4841026127252455', 'Wiraswasta', 'TNI', '08244250330', '08820557351', 'Jl. Gatot Subroto No. 617, RT 07/RW 02, Kelurahan E, Kecamatan C, Malang, Sumatera Utara', 'Jl. Gatot Subroto No. 617, RT 07/RW 02, Kelurahan E, Kecamatan C, Malang, Sumatera Utara', '08164089826', 'indahhakim79@gmail.com', 'SMP Muhammadiyah', '9 SMP', '2022', 'DN-210391/2022', 'santri/foto/9373710324_foto_santri.jpg', 'santri/ktp/9373710324_foto_ktp.jpg', 'santri/akta/9373710324_foto_akta.jpg', 'santri/ijazah/9373710324_foto_ijazah.jpg', 'santri/surat_sehat/9373710324_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:39.006399', '2025-12-01 18:19:39.012849', 'Islam', 'Islam', 3, 'Indonesia', 'Kelurahan E', 0, 'Malang', 'Kecamatan C', '', 'WNI', 'WNI', 'WNI', '37602', 'Indah', '54913070', 'SMP SEDERAJAT', 'S1', 'Sumatera Utara', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1981-06-02', '1983-11-19', 'Bandung', 'Kendari', 'Wali'),
(131, 'Rahmat Darmawan', '7329897996', 'Bogor', '2007-01-20', 'L', 'Islam', 'AB', 151, 76, 'Ubaid Wibisono', '1028446599561691', 'Siti Kurniawan', '2715198334852772', 'Pedagang', 'Wiraswasta', '08520860445', '08136122738', 'Jl. Merdeka No. 190, RT 01/RW 09, Kelurahan B, Kecamatan C, Jakarta Timur, DKI Jakarta', 'Jl. Merdeka No. 190, RT 01/RW 09, Kelurahan B, Kecamatan C, Jakarta Timur, DKI Jakarta', '08406943981', 'rahmatdarmawan80@gmail.com', 'SMP Negeri 02', '6 SD', '2024', 'DN-113106/2024', 'santri/foto/7329897996_foto_santri.jpg', 'santri/ktp/7329897996_foto_ktp.jpg', 'santri/akta/7329897996_foto_akta.jpg', 'santri/ijazah/7329897996_foto_ijazah.jpg', 'santri/surat_sehat/7329897996_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:39.042446', '2025-12-01 18:19:39.049474', 'Islam', 'Islam', 3, 'Indonesia', 'Kelurahan B', 0, 'Jakarta Timur', 'Kecamatan C', '', 'WNI', 'WNI', 'WNI', '28310', 'Rahmat', '95300013', 'SMA SEDERAJAT', 'SMA SEDERAJAT', 'DKI Jakarta', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1981-06-27', '1979-09-28', 'Palembang', 'Padang', 'Orang Tua'),
(132, 'Yasin Pratama', '9891017554', 'Banten', '2010-07-13', 'L', 'Islam', 'O', 165, 39, 'Zaki Wati', '2513811906111996', 'Dewi Rizki', '2553807473084530', 'Petani', 'Dokter', '08515679794', '08870887853', 'Jl. Thamrin No. 224, RT 01/RW 05, Kelurahan A, Kecamatan A, Bogor, Sulawesi Utara', 'Jl. Thamrin No. 224, RT 01/RW 05, Kelurahan A, Kecamatan A, Bogor, Sulawesi Utara', '08964607972', 'yasinpratama81@gmail.com', 'SMP Muhammadiyah', '12 MA', '2024', 'DN-465251/2024', 'santri/foto/9891017554_foto_santri.jpg', 'santri/ktp/9891017554_foto_ktp.jpg', 'santri/akta/9891017554_foto_akta.jpg', 'santri/ijazah/9891017554_foto_ijazah.jpg', 'santri/surat_sehat/9891017554_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:39.074284', '2025-12-01 18:19:39.082287', 'Islam', 'Islam', 4, 'Indonesia', 'Kelurahan A', 5, 'Bogor', 'Kecamatan A', '', 'WNI', 'WNI', 'WNI', '86627', 'Yasin', '75501259', 'S1', 'S2', 'Sulawesi Utara', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1990-03-18', '1983-08-15', 'Padang', 'Jambi', 'Orang Tua'),
(133, 'Lukman Pohan', '6613978551', 'Surabaya', '2014-10-21', 'L', 'Islam', 'B', 177, 36, 'Eko Wati', '6385948065029565', 'Fira Nur', '5841744244311795', 'Karyawan Swasta', 'Insinyur', '08931690509', '08445338186', 'Jl. Thamrin No. 794, RT 01/RW 09, Kelurahan E, Kecamatan I, Jakarta Timur, Sumatera Barat', 'Jl. Thamrin No. 794, RT 01/RW 09, Kelurahan E, Kecamatan I, Jakarta Timur, Sumatera Barat', '08310597776', 'lukmanpohan82@gmail.com', 'MA Muhammadiyah', '6 SD', '2022', 'DN-159769/2022', 'santri/foto/6613978551_foto_santri.jpg', 'santri/ktp/6613978551_foto_ktp.jpg', 'santri/akta/6613978551_foto_akta.jpg', 'santri/ijazah/6613978551_foto_ijazah.jpg', 'santri/surat_sehat/6613978551_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:39.107229', '2025-12-01 18:19:39.115942', 'Islam', 'Islam', 3, 'Indonesia', 'Kelurahan E', 4, 'Jakarta Timur', 'Kecamatan I', '', 'WNI', 'WNI', 'WNI', '86284', 'Lukman', '44129901', 'S2', 'D3', 'Sumatera Barat', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1977-01-26', '1978-04-25', 'Yogyakarta', 'Pontianak', 'Orang Tua'),
(134, 'Luthfi Pohan', '1253504521', 'Kendari', '2010-05-17', 'L', 'Islam', 'AB', 175, 75, 'Mansur Saputra', '1668282970312855', 'Ira Putri', '3393141690256176', 'Ibu Rumah Tangga', 'Akuntan', '08868350651', '08638266899', 'Jl. Diponegoro No. 929, RT 01/RW 06, Desa A, Kecamatan A, Denpasar, Jawa Timur', 'Jl. Diponegoro No. 929, RT 01/RW 06, Desa A, Kecamatan A, Denpasar, Jawa Timur', '08724648997', 'luthfipohan83@gmail.com', 'SMP Muhammadiyah', '12 MA', '2024', 'DN-186317/2024', 'santri/foto/1253504521_foto_santri.jpg', 'santri/ktp/1253504521_foto_ktp.jpg', 'santri/akta/1253504521_foto_akta.jpg', 'santri/ijazah/1253504521_foto_ijazah.jpg', 'santri/surat_sehat/1253504521_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:39.141572', '2025-12-01 18:19:39.148883', 'Islam', 'Islam', 5, 'Indonesia', 'Desa A', 1, 'Denpasar', 'Kecamatan A', '', 'WNI', 'WNI', 'WNI', '52052', 'Luthfi', '39457344', 'D3', 'S2', 'Jawa Timur', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1982-09-04', '1974-07-03', 'Tasikmalaya', 'Tangerang', 'Orang Tua'),
(135, 'Nur Sukarno', '2692758506', 'Medan', '2012-03-03', 'P', 'Islam', 'A', 148, 56, 'Eko Wati', '4165167123024392', 'Citra Harto', '8289851100745817', 'Jaksa', 'Pengusaha', '08345811807', '08957784579', 'Jl. Diponegoro No. 928, RT 02/RW 03, Kelurahan C, Kecamatan F, Makassar, Riau', 'Jl. Diponegoro No. 928, RT 02/RW 03, Kelurahan C, Kecamatan F, Makassar, Riau', '08734921897', 'nursukarno84@gmail.com', 'MA Al-Muttaqin', '6 SD', '2024', 'DN-425038/2024', 'santri/foto/2692758506_foto_santri.jpg', 'santri/ktp/2692758506_foto_ktp.jpg', 'santri/akta/2692758506_foto_akta.jpg', 'santri/ijazah/2692758506_foto_ijazah.jpg', 'santri/surat_sehat/2692758506_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:39.171919', '2025-12-01 18:19:39.178493', 'Islam', 'Islam', 3, 'Indonesia', 'Kelurahan C', 2, 'Makassar', 'Kecamatan F', '', 'WNI', 'WNI', 'WNI', '58800', 'Nur', '43919662', 'S2', 'SD SEDERAJAT', 'Riau', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1979-05-23', '1975-04-08', 'Solo', 'Medan', 'Wali'),
(136, 'Husain Sutrisno', '6976747071', 'Surabaya', '2009-04-24', 'L', 'Islam', 'AB', 179, 47, 'Zaki Bambang', '8672262602519604', 'Putri Sari', '9852326693609041', 'Perawat', 'Petani', '08939510619', '08826123582', 'Jl. Thamrin No. 87, RT 05/RW 04, Desa D, Kecamatan A, Jakarta Utara, DKI Jakarta', 'Jl. Thamrin No. 87, RT 05/RW 04, Desa D, Kecamatan A, Jakarta Utara, DKI Jakarta', '08562382376', 'husainsutrisno85@gmail.com', 'MTs Al-Ikhlas', '12 MA', '2020', 'DN-966077/2020', 'santri/foto/6976747071_foto_santri.jpg', 'santri/ktp/6976747071_foto_ktp.jpg', 'santri/akta/6976747071_foto_akta.jpg', 'santri/ijazah/6976747071_foto_ijazah.jpg', 'santri/surat_sehat/6976747071_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:39.202634', '2025-12-01 18:19:39.209878', 'Islam', 'Islam', 1, 'Indonesia', 'Desa D', 4, 'Jakarta Utara', 'Kecamatan A', '', 'WNI', 'WNI', 'WNI', '78358', 'Husain', '32319813', 'D3', 'S2', 'DKI Jakarta', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1980-10-19', '1987-06-11', 'Balikpapan', 'Bekasi', 'Lainnya'),
(137, 'Hasan Kusuma', '9598081959', 'Magelang', '2012-08-28', 'L', 'Islam', 'B', 148, 43, 'Ahmad Dalimunthe', '9364976429949751', 'Nadia Sari', '2383666765594192', 'Jaksa', 'TNI', '08828132757', '08619610174', 'Jl. Ahmad Yani No. 837, RT 05/RW 04, Desa C, Kecamatan H, Palembang, Jawa Timur', 'Jl. Ahmad Yani No. 837, RT 05/RW 04, Desa C, Kecamatan H, Palembang, Jawa Timur', '08807795445', 'hasankusuma86@gmail.com', 'SMA Negeri 01', '6 SD', '2020', 'DN-821571/2020', 'santri/foto/9598081959_foto_santri.jpg', 'santri/ktp/9598081959_foto_ktp.jpg', 'santri/akta/9598081959_foto_akta.jpg', 'santri/ijazah/9598081959_foto_ijazah.jpg', 'santri/surat_sehat/9598081959_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:39.234347', '2025-12-01 18:19:39.240482', 'Islam', 'Islam', 4, 'Indonesia', 'Desa C', 5, 'Palembang', 'Kecamatan H', '', 'WNI', 'WNI', 'WNI', '68092', 'Hasan', '84170367', 'SD SEDERAJAT', 'D3', 'Jawa Timur', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1978-09-04', '1987-03-03', 'Purwokerto', 'Kendari', 'Wali'),
(138, 'Muhammad Lubis', '8694186361', 'Kendari', '2012-10-14', 'L', 'Islam', 'A', 154, 49, 'Fadil Rizki', '6191577704504783', 'Kartika Nur', '8619420275933691', 'Petani', 'TNI', '08440097433', '08821045909', 'Jl. Diponegoro No. 726, RT 09/RW 04, Kelurahan D, Kecamatan C, Bogor, DKI Jakarta', 'Jl. Diponegoro No. 726, RT 09/RW 04, Kelurahan D, Kecamatan C, Bogor, DKI Jakarta', '08448464488', 'muhammadlubis87@gmail.com', 'MI Al-Hidayah', '12 MA', '2021', 'DN-456533/2021', 'santri/foto/8694186361_foto_santri.jpg', 'santri/ktp/8694186361_foto_ktp.jpg', 'santri/akta/8694186361_foto_akta.jpg', 'santri/ijazah/8694186361_foto_ijazah.jpg', 'santri/surat_sehat/8694186361_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:39.263996', '2025-12-01 18:19:39.271375', 'Islam', 'Islam', 4, 'Indonesia', 'Kelurahan D', 3, 'Bogor', 'Kecamatan C', '', 'WNI', 'WNI', 'WNI', '67945', 'Muhammad', '60152417', 'SMA SEDERAJAT', 'SD SEDERAJAT', 'DKI Jakarta', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1986-10-09', '1981-02-20', 'Lampung', 'Cirebon', 'Lainnya'),
(139, 'Sari Wardhana', '5773655481', 'Malang', '2009-01-10', 'P', 'Islam', 'B', 148, 39, 'Qasim Agung', '2158083911224027', 'Ayu Eko', '9855325936863081', 'Akuntan', 'Akuntan', '08909296245', '08752042473', 'Jl. Ahmad Yani No. 443, RT 05/RW 02, Desa E, Kecamatan I, Bandung, Kalimantan Selatan', 'Jl. Ahmad Yani No. 443, RT 05/RW 02, Desa E, Kecamatan I, Bandung, Kalimantan Selatan', '08771636468', 'sariwardhana88@gmail.com', 'MA Muhammadiyah', '12 MA', '2020', 'DN-621039/2020', 'santri/foto/5773655481_foto_santri.jpg', 'santri/ktp/5773655481_foto_ktp.jpg', 'santri/akta/5773655481_foto_akta.jpg', 'santri/ijazah/5773655481_foto_ijazah.jpg', 'santri/surat_sehat/5773655481_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:39.298189', '2025-12-01 18:19:39.305715', 'Islam', 'Islam', 2, 'Indonesia', 'Desa E', 3, 'Bandung', 'Kecamatan I', '', 'WNI', 'WNI', 'WNI', '92947', 'Sari', '83307263', 'D3', 'S2', 'Kalimantan Selatan', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1983-02-04', '1983-05-26', 'Manado', 'Jambi', 'Wali'),
(140, 'Mariam Pramono', '4303294053', 'Pekanbaru', '2015-10-11', 'P', 'Islam', 'AB', 150, 35, 'Muhammad Rahman', '9153113823632454', 'Alya Purnomo', '9776947570338207', 'Konsultan', 'Konsultan', '08812627300', '08538292708', 'Jl. Hayam Wuruk No. 980, RT 09/RW 05, Kelurahan D, Kecamatan D, Semarang, Kalimantan Selatan', 'Jl. Hayam Wuruk No. 980, RT 09/RW 05, Kelurahan D, Kecamatan D, Semarang, Kalimantan Selatan', '08339336563', 'mariampramono89@gmail.com', 'SMA Negeri 02', '6 SD', '2021', 'DN-648718/2021', 'santri/foto/4303294053_foto_santri.jpg', 'santri/ktp/4303294053_foto_ktp.jpg', 'santri/akta/4303294053_foto_akta.jpg', 'santri/ijazah/4303294053_foto_ijazah.jpg', 'santri/surat_sehat/4303294053_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:39.330015', '2025-12-01 18:19:39.337235', 'Islam', 'Islam', 3, 'Indonesia', 'Kelurahan D', 4, 'Semarang', 'Kecamatan D', '', 'WNI', 'WNI', 'WNI', '56079', 'Mariam', '76260849', 'S3', 'S2', 'Kalimantan Selatan', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1985-01-05', '1985-08-06', 'Jambi', 'Medan', 'Wali');
INSERT INTO `admissions_santri` (`id`, `nama_lengkap`, `nisn`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `golongan_darah`, `tinggi_badan`, `berat_badan`, `nama_ayah`, `nik_ayah`, `nama_ibu`, `nik_ibu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `no_hp_ayah`, `no_hp_ibu`, `alamat_orangtua`, `alamat`, `no_hp`, `email`, `asal_sekolah`, `kelas_terakhir`, `tahun_lulus`, `no_ijazah`, `foto_santri`, `foto_ktp`, `foto_akta`, `foto_ijazah`, `surat_sehat`, `foto_santri_approved`, `foto_ktp_approved`, `foto_akta_approved`, `foto_ijazah_approved`, `surat_sehat_approved`, `catatan`, `status`, `created_at`, `updated_at`, `agama_ayah`, `agama_ibu`, `anak_ke`, `bahasa_sehari_hari`, `desa`, `jumlah_saudara`, `kabupaten`, `kecamatan`, `kelas_diterima`, `kewarganegaraan`, `kewarganegaraan_ayah`, `kewarganegaraan_ibu`, `kode_pos`, `nama_panggilan`, `npsn_sekolah`, `pendidikan_ayah`, `pendidikan_ibu`, `provinsi`, `riwayat_penyakit`, `status_ayah`, `status_ibu`, `tanggal_diterima`, `tanggal_lahir_ayah`, `tanggal_lahir_ibu`, `tempat_lahir_ayah`, `tempat_lahir_ibu`, `tinggal_dengan`) VALUES
(141, 'Fadila Pramono', '1710892169', 'Yogyakarta', '2010-09-20', 'P', 'Islam', 'B', 166, 68, 'Husain Tanjung', '2650017926759100', 'Maya Rahman', '7395062932320333', 'Notaris', 'Karyawan Swasta', '08711437149', '08937880546', 'Jl. Gatot Subroto No. 884, RT 03/RW 05, Desa B, Kecamatan J, Malang, Lampung', 'Jl. Gatot Subroto No. 884, RT 03/RW 05, Desa B, Kecamatan J, Malang, Lampung', '08294900361', 'fadilapramono90@gmail.com', 'MA Al-Muttaqin', '6 SD', '2023', 'DN-248160/2023', 'santri/foto/1710892169_foto_santri.jpg', 'santri/ktp/1710892169_foto_ktp.jpg', 'santri/akta/1710892169_foto_akta.jpg', 'santri/ijazah/1710892169_foto_ijazah.jpg', 'santri/surat_sehat/1710892169_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:39.361043', '2025-12-01 18:19:39.368455', 'Islam', 'Islam', 5, 'Indonesia', 'Desa B', 5, 'Malang', 'Kecamatan J', '', 'WNI', 'WNI', 'WNI', '79690', 'Fadila', '28127192', 'SMP SEDERAJAT', 'S2', 'Lampung', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1981-03-17', '1979-05-03', 'Surabaya', 'Semarang', 'Lainnya'),
(142, 'Rizki Wibisono', '2292958799', 'Bandung', '2015-02-09', 'L', 'Islam', 'A', 157, 66, 'Jamil Budi', '2371600090308301', 'Hani Kusuma', '2505764220842659', 'PNS', 'Pengusaha', '08264473706', '08820583057', 'Jl. Sudirman No. 690, RT 08/RW 05, Desa C, Kecamatan E, Medan, Lampung', 'Jl. Sudirman No. 690, RT 08/RW 05, Desa C, Kecamatan E, Medan, Lampung', '08334997635', 'rizkiwibisono91@gmail.com', 'SMA Negeri 01', '6 SD', '2022', 'DN-371235/2022', 'santri/foto/2292958799_foto_santri.jpg', 'santri/ktp/2292958799_foto_ktp.jpg', 'santri/akta/2292958799_foto_akta.jpg', 'santri/ijazah/2292958799_foto_ijazah.jpg', 'santri/surat_sehat/2292958799_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:39.393319', '2025-12-01 18:19:39.401806', 'Islam', 'Islam', 3, 'Indonesia', 'Desa C', 1, 'Medan', 'Kecamatan E', '', 'WNI', 'WNI', 'WNI', '34632', 'Rizki', '84375577', 'SMP SEDERAJAT', 'S2', 'Lampung', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1994-07-20', '1982-03-08', 'Balikpapan', 'Bengkulu', 'Orang Tua'),
(143, 'Kartika Wati', '6584564202', 'Palembang', '2012-02-03', 'P', 'Islam', 'A', 170, 64, 'Fauzan Hidayat', '4007698818549227', 'Fira Kurniawan', '3191330699409116', 'PNS', 'Dosen', '08397942223', '08863092133', 'Jl. Hayam Wuruk No. 674, RT 07/RW 05, Desa E, Kecamatan I, Jakarta Selatan, Sumatera Barat', 'Jl. Hayam Wuruk No. 674, RT 07/RW 05, Desa E, Kecamatan I, Jakarta Selatan, Sumatera Barat', '08891882084', 'kartikawati92@gmail.com', 'SMP Muhammadiyah', '6 SD', '2021', 'DN-214841/2021', 'santri/foto/6584564202_foto_santri.jpg', 'santri/ktp/6584564202_foto_ktp.jpg', 'santri/akta/6584564202_foto_akta.jpg', 'santri/ijazah/6584564202_foto_ijazah.jpg', 'santri/surat_sehat/6584564202_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:39.425748', '2025-12-01 18:19:39.432622', 'Islam', 'Islam', 5, 'Indonesia', 'Desa E', 4, 'Jakarta Selatan', 'Kecamatan I', '', 'WNI', 'WNI', 'WNI', '25559', 'Kartika', '69456156', 'D3', 'SD SEDERAJAT', 'Sumatera Barat', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1986-02-09', '1993-08-23', 'Bekasi', 'Bandung', 'Wali'),
(144, 'Elsa Susilo', '8638946516', 'Solo', '2013-12-13', 'P', 'Islam', 'O', 161, 50, 'Ubaid Wibowo', '2882141812826196', 'Fadila Hakim', '3164208292089730', 'Pensiunan', 'Perawat', '08893239999', '08104311749', 'Jl. Sudirman No. 456, RT 01/RW 01, Desa E, Kecamatan J, Bogor, Sumatera Utara', 'Jl. Sudirman No. 456, RT 01/RW 01, Desa E, Kecamatan J, Bogor, Sumatera Utara', '08890193692', 'elsasusilo93@gmail.com', 'SD Muhammadiyah', '9 SMP', '2021', 'DN-897157/2021', 'santri/foto/8638946516_foto_santri.jpg', 'santri/ktp/8638946516_foto_ktp.jpg', 'santri/akta/8638946516_foto_akta.jpg', 'santri/ijazah/8638946516_foto_ijazah.jpg', 'santri/surat_sehat/8638946516_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:39.458224', '2025-12-01 18:19:39.465006', 'Islam', 'Islam', 1, 'Indonesia', 'Desa E', 4, 'Bogor', 'Kecamatan J', '', 'WNI', 'WNI', 'WNI', '94390', 'Elsa', '43813688', 'SD SEDERAJAT', 'D3', 'Sumatera Utara', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1990-12-26', '1979-07-12', 'Bogor', 'Balikpapan', 'Wali'),
(145, 'Winda Gunawan', '7094093870', 'Jambi', '2009-04-28', 'P', 'Islam', 'B', 170, 38, 'Faris Wibisono', '9688851937425617', 'Umi Wati', '3128173673039250', 'Ibu Rumah Tangga', 'Akuntan', '08172452814', '08887696083', 'Jl. Sudirman No. 697, RT 03/RW 03, Desa D, Kecamatan G, Bogor, Sumatera Utara', 'Jl. Sudirman No. 697, RT 03/RW 03, Desa D, Kecamatan G, Bogor, Sumatera Utara', '08789313558', 'windagunawan94@gmail.com', 'SMA Negeri 01', '12 SMA', '2022', 'DN-723451/2022', 'santri/foto/7094093870_foto_santri.jpg', 'santri/ktp/7094093870_foto_ktp.jpg', 'santri/akta/7094093870_foto_akta.jpg', 'santri/ijazah/7094093870_foto_ijazah.jpg', 'santri/surat_sehat/7094093870_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:39.493597', '2025-12-01 18:19:39.500599', 'Islam', 'Islam', 2, 'Indonesia', 'Desa D', 4, 'Bogor', 'Kecamatan G', '', 'WNI', 'WNI', 'WNI', '39030', 'Winda', '98678687', 'SD SEDERAJAT', 'SMP SEDERAJAT', 'Sumatera Utara', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1986-07-07', '1990-03-20', 'Yogyakarta', 'Tangerang', 'Lainnya'),
(146, 'Hani Rahman', '9582093820', 'Medan', '2012-10-15', 'P', 'Islam', 'O', 147, 60, 'Ihsan Agung', '5810615264406779', 'Putri Sukarno', '5955212471064362', 'Jaksa', 'Dokter', '08200516301', '08681886052', 'Jl. Sudirman No. 793, RT 04/RW 09, Desa A, Kecamatan E, Tangerang, Riau', 'Jl. Sudirman No. 793, RT 04/RW 09, Desa A, Kecamatan E, Tangerang, Riau', '08919708605', 'hanirahman95@gmail.com', 'MTs Al-Azhar', '6 SD', '2021', 'DN-234339/2021', 'santri/foto/9582093820_foto_santri.jpg', 'santri/ktp/9582093820_foto_ktp.jpg', 'santri/akta/9582093820_foto_akta.jpg', 'santri/ijazah/9582093820_foto_ijazah.jpg', 'santri/surat_sehat/9582093820_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:39.523972', '2025-12-01 18:19:39.530973', 'Islam', 'Islam', 1, 'Indonesia', 'Desa A', 2, 'Tangerang', 'Kecamatan E', '', 'WNI', 'WNI', 'WNI', '97204', 'Hani', '68545803', 'S1', 'D3', 'Riau', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1988-07-13', '1994-02-24', 'Jambi', 'Tasikmalaya', 'Wali'),
(147, 'Khalid Dalimunthe', '5151258395', 'Pontianak', '2014-07-10', 'L', 'Islam', 'AB', 176, 43, 'Mahmud Wibisono', '5639557286852260', 'Alya Sutrisno', '6579021211416651', 'Ibu Rumah Tangga', 'Guru', '08929096236', '08901549798', 'Jl. Thamrin No. 833, RT 09/RW 07, Kelurahan A, Kecamatan H, Yogyakarta, Sulawesi Selatan', 'Jl. Thamrin No. 833, RT 09/RW 07, Kelurahan A, Kecamatan H, Yogyakarta, Sulawesi Selatan', '08855565345', 'khaliddalimunthe96@gmail.com', 'MA Al-Muttaqin', '12 MA', '2024', 'DN-776251/2024', 'santri/foto/5151258395_foto_santri.jpg', 'santri/ktp/5151258395_foto_ktp.jpg', 'santri/akta/5151258395_foto_akta.jpg', 'santri/ijazah/5151258395_foto_ijazah.jpg', 'santri/surat_sehat/5151258395_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:39.557310', '2025-12-01 18:19:39.564122', 'Islam', 'Islam', 5, 'Indonesia', 'Kelurahan A', 6, 'Yogyakarta', 'Kecamatan H', '', 'WNI', 'WNI', 'WNI', '98907', 'Khalid', '12505897', 'S1', 'SD SEDERAJAT', 'Sulawesi Selatan', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1988-12-13', '1988-05-21', 'Banten', 'Pekanbaru', 'Lainnya'),
(148, 'Bunga Sukarno', '2414895680', 'Padang', '2013-07-24', 'P', 'Islam', 'O', 138, 30, 'Lukman Setiawan', '5971483723570150', 'Hilda Maulana', '1391877217606068', 'Wiraswasta', 'Insinyur', '08237492175', '08956555421', 'Jl. Sudirman No. 370, RT 03/RW 05, Kelurahan E, Kecamatan C, Bekasi, Sumatera Barat', 'Jl. Sudirman No. 370, RT 03/RW 05, Kelurahan E, Kecamatan C, Bekasi, Sumatera Barat', '08556990968', 'bungasukarno97@gmail.com', 'MA Al-Amin', '12 SMA', '2020', 'DN-640694/2020', 'santri/foto/2414895680_foto_santri.jpg', 'santri/ktp/2414895680_foto_ktp.jpg', 'santri/akta/2414895680_foto_akta.jpg', 'santri/ijazah/2414895680_foto_ijazah.jpg', 'santri/surat_sehat/2414895680_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:39.588782', '2025-12-01 18:19:39.594388', 'Islam', 'Islam', 3, 'Indonesia', 'Kelurahan E', 1, 'Bekasi', 'Kecamatan C', '', 'WNI', 'WNI', 'WNI', '80036', 'Bunga', '35021390', 'SD SEDERAJAT', 'S3', 'Sumatera Barat', '', 'HIDUP', 'HIDUP', NULL, '1976-11-19', '1987-11-11', 'Tangerang', 'Bogor', 'Wali'),
(149, 'Fadila Budi', '5294471524', 'Palu', '2011-10-11', 'P', 'Islam', 'O', 158, 31, 'Salman Harto', '7788496504942182', 'Dewi Wibowo', '6868046298876070', 'Nelayan', 'Notaris', '08853958980', '08592941206', 'Jl. Gatot Subroto No. 48, RT 07/RW 01, Desa D, Kecamatan G, Depok, Sumatera Barat', 'Jl. Gatot Subroto No. 48, RT 07/RW 01, Desa D, Kecamatan G, Depok, Sumatera Barat', '08937548805', 'fadilabudi98@gmail.com', 'SD Muhammadiyah', '12 MA', '2023', 'DN-117921/2023', 'santri/foto/5294471524_foto_santri.jpg', 'santri/ktp/5294471524_foto_ktp.jpg', 'santri/akta/5294471524_foto_akta.jpg', 'santri/ijazah/5294471524_foto_ijazah.jpg', 'santri/surat_sehat/5294471524_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:39.619141', '2025-12-01 18:19:39.626937', 'Islam', 'Islam', 4, 'Indonesia', 'Desa D', 5, 'Depok', 'Kecamatan G', '', 'WNI', 'WNI', 'WNI', '60770', 'Fadila', '62665508', 'S3', 'D3', 'Sumatera Barat', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1989-03-04', '1991-07-15', 'Purwokerto', 'Purwokerto', 'Wali'),
(150, 'Ayu Dalimunthe', '8892553474', 'Jakarta', '2011-07-18', 'P', 'Islam', 'AB', 137, 66, 'Omar Saputra', '2734532847855002', 'Bunga Kusuma', '4730231528097925', 'Polisi', 'Jaksa', '08414468220', '08971795816', 'Jl. Hayam Wuruk No. 262, RT 04/RW 05, Kelurahan C, Kecamatan G, Pekanbaru, Nusa Tenggara Barat', 'Jl. Hayam Wuruk No. 262, RT 04/RW 05, Kelurahan C, Kecamatan G, Pekanbaru, Nusa Tenggara Barat', '08707007477', 'ayudalimunthe99@gmail.com', 'SMA Muhammadiyah', '6 SD', '2023', 'DN-959292/2023', 'santri/foto/8892553474_foto_santri.jpg', 'santri/ktp/8892553474_foto_ktp.jpg', 'santri/akta/8892553474_foto_akta.jpg', 'santri/ijazah/8892553474_foto_ijazah.jpg', 'santri/surat_sehat/8892553474_surat_sehat.jpg', 1, 1, 1, 1, 1, 'Data dummy untuk testing', 'pending', '2025-12-01 18:19:39.651396', '2025-12-01 18:19:39.657529', 'Islam', 'Islam', 3, 'Indonesia', 'Kelurahan C', 2, 'Pekanbaru', 'Kecamatan G', '', 'WNI', 'WNI', 'WNI', '61939', 'Ayu', '61806220', 'SD SEDERAJAT', 'SMP SEDERAJAT', 'Nusa Tenggara Barat', 'Tidak ada', 'HIDUP', 'HIDUP', NULL, '1989-11-01', '1976-05-02', 'Depok', 'Bandung', 'Orang Tua');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add attachment', 6, 'add_attachment'),
(22, 'Can change attachment', 6, 'change_attachment'),
(23, 'Can delete attachment', 6, 'delete_attachment'),
(24, 'Can view attachment', 6, 'view_attachment'),
(25, 'Can add Alur Pendaftaran', 7, 'add_alurpendaftaran'),
(26, 'Can change Alur Pendaftaran', 7, 'change_alurpendaftaran'),
(27, 'Can delete Alur Pendaftaran', 7, 'delete_alurpendaftaran'),
(28, 'Can view Alur Pendaftaran', 7, 'view_alurpendaftaran'),
(29, 'Can add Bagian/Jabatan', 8, 'add_bagianjabatan'),
(30, 'Can change Bagian/Jabatan', 8, 'change_bagianjabatan'),
(31, 'Can delete Bagian/Jabatan', 8, 'delete_bagianjabatan'),
(32, 'Can view Bagian/Jabatan', 8, 'view_bagianjabatan'),
(33, 'Can add Biaya Pendidikan', 9, 'add_biayapendidikan'),
(34, 'Can change Biaya Pendidikan', 9, 'change_biayapendidikan'),
(35, 'Can delete Biaya Pendidikan', 9, 'delete_biayapendidikan'),
(36, 'Can view Biaya Pendidikan', 9, 'view_biayapendidikan'),
(37, 'Can add Contact Person', 10, 'add_contactperson'),
(38, 'Can change Contact Person', 10, 'change_contactperson'),
(39, 'Can delete Contact Person', 10, 'delete_contactperson'),
(40, 'Can view Contact Person', 10, 'view_contactperson'),
(41, 'Can add Dokumentasi', 11, 'add_dokumentasi'),
(42, 'Can change Dokumentasi', 11, 'change_dokumentasi'),
(43, 'Can delete Dokumentasi', 11, 'delete_dokumentasi'),
(44, 'Can view Dokumentasi', 11, 'view_dokumentasi'),
(45, 'Can add Ekstrakurikuler', 12, 'add_ekstrakurikuler'),
(46, 'Can change Ekstrakurikuler', 12, 'change_ekstrakurikuler'),
(47, 'Can delete Ekstrakurikuler', 12, 'delete_ekstrakurikuler'),
(48, 'Can view Ekstrakurikuler', 12, 'view_ekstrakurikuler'),
(49, 'Can add FAQ', 13, 'add_faq'),
(50, 'Can change FAQ', 13, 'change_faq'),
(51, 'Can delete FAQ', 13, 'delete_faq'),
(52, 'Can view FAQ', 13, 'view_faq'),
(53, 'Can add Fasilitas', 14, 'add_fasilitas'),
(54, 'Can change Fasilitas', 14, 'change_fasilitas'),
(55, 'Can delete Fasilitas', 14, 'delete_fasilitas'),
(56, 'Can view Fasilitas', 14, 'view_fasilitas'),
(57, 'Can add Hero Section', 15, 'add_herosection'),
(58, 'Can change Hero Section', 15, 'change_herosection'),
(59, 'Can delete Hero Section', 15, 'delete_herosection'),
(60, 'Can view Hero Section', 15, 'view_herosection'),
(61, 'Can add Jadwal Harian', 16, 'add_jadwalharian'),
(62, 'Can change Jadwal Harian', 16, 'change_jadwalharian'),
(63, 'Can delete Jadwal Harian', 16, 'delete_jadwalharian'),
(64, 'Can view Jadwal Harian', 16, 'view_jadwalharian'),
(65, 'Can add KMI', 17, 'add_kmi'),
(66, 'Can change KMI', 17, 'change_kmi'),
(67, 'Can delete KMI', 17, 'delete_kmi'),
(68, 'Can view KMI', 17, 'view_kmi'),
(69, 'Can add Kontak', 18, 'add_kontak'),
(70, 'Can change Kontak', 18, 'change_kontak'),
(71, 'Can delete Kontak', 18, 'delete_kontak'),
(72, 'Can view Kontak', 18, 'view_kontak'),
(73, 'Can add Media', 19, 'add_media'),
(74, 'Can change Media', 19, 'change_media'),
(75, 'Can delete Media', 19, 'delete_media'),
(76, 'Can view Media', 19, 'view_media'),
(77, 'Can add Persyaratan Penerimaan', 20, 'add_persyaratan'),
(78, 'Can change Persyaratan Penerimaan', 20, 'change_persyaratan'),
(79, 'Can delete Persyaratan Penerimaan', 20, 'delete_persyaratan'),
(80, 'Can view Persyaratan Penerimaan', 20, 'view_persyaratan'),
(81, 'Can add Program', 21, 'add_program'),
(82, 'Can change Program', 21, 'change_program'),
(83, 'Can delete Program', 21, 'delete_program'),
(84, 'Can view Program', 21, 'view_program'),
(85, 'Can add Program Pendidikan', 22, 'add_programpendidikan'),
(86, 'Can change Program Pendidikan', 22, 'change_programpendidikan'),
(87, 'Can delete Program Pendidikan', 22, 'delete_programpendidikan'),
(88, 'Can view Program Pendidikan', 22, 'view_programpendidikan'),
(89, 'Can add Timeline Sejarah', 23, 'add_sejarahtimeline'),
(90, 'Can change Timeline Sejarah', 23, 'change_sejarahtimeline'),
(91, 'Can delete Timeline Sejarah', 23, 'delete_sejarahtimeline'),
(92, 'Can view Timeline Sejarah', 23, 'view_sejarahtimeline'),
(93, 'Can add Seragam', 24, 'add_seragam'),
(94, 'Can change Seragam', 24, 'change_seragam'),
(95, 'Can delete Seragam', 24, 'delete_seragam'),
(96, 'Can view Seragam', 24, 'view_seragam'),
(97, 'Can add Social Media', 25, 'add_socialmedia'),
(98, 'Can change Social Media', 25, 'change_socialmedia'),
(99, 'Can delete Social Media', 25, 'delete_socialmedia'),
(100, 'Can view Social Media', 25, 'view_socialmedia'),
(101, 'Can add Statistik', 26, 'add_statistik'),
(102, 'Can change Statistik', 26, 'change_statistik'),
(103, 'Can delete Statistik', 26, 'delete_statistik'),
(104, 'Can view Statistik', 26, 'view_statistik'),
(105, 'Can add Visi Misi', 27, 'add_visimisi'),
(106, 'Can change Visi Misi', 27, 'change_visimisi'),
(107, 'Can delete Visi Misi', 27, 'delete_visimisi'),
(108, 'Can view Visi Misi', 27, 'view_visimisi'),
(109, 'Can add Pengaturan Website', 28, 'add_websitesettings'),
(110, 'Can change Pengaturan Website', 28, 'change_websitesettings'),
(111, 'Can delete Pengaturan Website', 28, 'delete_websitesettings'),
(112, 'Can view Pengaturan Website', 28, 'view_websitesettings'),
(113, 'Can add Kategori Template WhatsApp', 29, 'add_whatsapptemplatekategori'),
(114, 'Can change Kategori Template WhatsApp', 29, 'change_whatsapptemplatekategori'),
(115, 'Can delete Kategori Template WhatsApp', 29, 'delete_whatsapptemplatekategori'),
(116, 'Can view Kategori Template WhatsApp', 29, 'view_whatsapptemplatekategori'),
(117, 'Can add Gambar Dokumentasi', 30, 'add_dokumentasiimage'),
(118, 'Can change Gambar Dokumentasi', 30, 'change_dokumentasiimage'),
(119, 'Can delete Gambar Dokumentasi', 30, 'delete_dokumentasiimage'),
(120, 'Can view Gambar Dokumentasi', 30, 'view_dokumentasiimage'),
(121, 'Can add Gambar Ekstrakurikuler', 31, 'add_ekstrakurikulerimage'),
(122, 'Can change Gambar Ekstrakurikuler', 31, 'change_ekstrakurikulerimage'),
(123, 'Can delete Gambar Ekstrakurikuler', 31, 'delete_ekstrakurikulerimage'),
(124, 'Can view Gambar Ekstrakurikuler', 31, 'view_ekstrakurikulerimage'),
(125, 'Can add Gambar Program Pendidikan', 32, 'add_programpendidikanimage'),
(126, 'Can change Gambar Program Pendidikan', 32, 'change_programpendidikanimage'),
(127, 'Can delete Gambar Program Pendidikan', 32, 'delete_programpendidikanimage'),
(128, 'Can view Gambar Program Pendidikan', 32, 'view_programpendidikanimage'),
(129, 'Can add Gambar Timeline Sejarah', 33, 'add_sejarahtimelineimage'),
(130, 'Can change Gambar Timeline Sejarah', 33, 'change_sejarahtimelineimage'),
(131, 'Can delete Gambar Timeline Sejarah', 33, 'delete_sejarahtimelineimage'),
(132, 'Can view Gambar Timeline Sejarah', 33, 'view_sejarahtimelineimage'),
(133, 'Can add Tenaga Pengajar', 34, 'add_tenagapengajar'),
(134, 'Can change Tenaga Pengajar', 34, 'change_tenagapengajar'),
(135, 'Can delete Tenaga Pengajar', 34, 'delete_tenagapengajar'),
(136, 'Can view Tenaga Pengajar', 34, 'view_tenagapengajar'),
(137, 'Can add Template WhatsApp', 35, 'add_whatsapptemplate'),
(138, 'Can change Template WhatsApp', 35, 'change_whatsapptemplate'),
(139, 'Can delete Template WhatsApp', 35, 'delete_whatsapptemplate'),
(140, 'Can view Template WhatsApp', 35, 'view_whatsapptemplate'),
(141, 'Can add Informasi Tambahan', 36, 'add_informasitambahan'),
(142, 'Can change Informasi Tambahan', 36, 'change_informasitambahan'),
(143, 'Can delete Informasi Tambahan', 36, 'delete_informasitambahan'),
(144, 'Can view Informasi Tambahan', 36, 'view_informasitambahan'),
(145, 'Can add User', 37, 'add_user'),
(146, 'Can change User', 37, 'change_user'),
(147, 'Can delete User', 37, 'delete_user'),
(148, 'Can view User', 37, 'view_user'),
(149, 'Can add Login History', 38, 'add_loginhistory'),
(150, 'Can change Login History', 38, 'change_loginhistory'),
(151, 'Can delete Login History', 38, 'delete_loginhistory'),
(152, 'Can view Login History', 38, 'view_loginhistory'),
(153, 'Can add Santri', 39, 'add_santri'),
(154, 'Can change Santri', 39, 'change_santri'),
(155, 'Can delete Santri', 39, 'delete_santri'),
(156, 'Can view Santri', 39, 'view_santri'),
(157, 'Can add Template Dokumen', 40, 'add_documenttemplate'),
(158, 'Can change Template Dokumen', 40, 'change_documenttemplate'),
(159, 'Can delete Template Dokumen', 40, 'delete_documenttemplate'),
(160, 'Can view Template Dokumen', 40, 'view_documenttemplate'),
(161, 'Can add Rekening Bank', 41, 'add_bankaccount'),
(162, 'Can change Rekening Bank', 41, 'change_bankaccount'),
(163, 'Can delete Rekening Bank', 41, 'delete_bankaccount'),
(164, 'Can view Rekening Bank', 41, 'view_bankaccount'),
(165, 'Can add Pembayaran', 42, 'add_payment'),
(166, 'Can change Pembayaran', 42, 'change_payment'),
(167, 'Can delete Pembayaran', 42, 'delete_payment'),
(168, 'Can view Pembayaran', 42, 'view_payment'),
(169, 'Can add Gambar yang Dikonversi', 43, 'add_convertedimage'),
(170, 'Can change Gambar yang Dikonversi', 43, 'change_convertedimage'),
(171, 'Can delete Gambar yang Dikonversi', 43, 'delete_convertedimage'),
(172, 'Can view Gambar yang Dikonversi', 43, 'view_convertedimage'),
(173, 'Can add Gambar Blog', 44, 'add_blogimage'),
(174, 'Can change Gambar Blog', 44, 'change_blogimage'),
(175, 'Can delete Gambar Blog', 44, 'delete_blogimage'),
(176, 'Can view Gambar Blog', 44, 'view_blogimage'),
(177, 'Can add Artikel Blog', 45, 'add_blogpost'),
(178, 'Can change Artikel Blog', 45, 'change_blogpost'),
(179, 'Can delete Artikel Blog', 45, 'delete_blogpost'),
(180, 'Can view Artikel Blog', 45, 'view_blogpost'),
(181, 'Can add Kategori', 46, 'add_category'),
(182, 'Can change Kategori', 46, 'change_category'),
(183, 'Can delete Kategori', 46, 'delete_category'),
(184, 'Can view Kategori', 46, 'view_category'),
(185, 'Can add Pengumuman', 47, 'add_pengumuman'),
(186, 'Can change Pengumuman', 47, 'change_pengumuman'),
(187, 'Can delete Pengumuman', 47, 'delete_pengumuman'),
(188, 'Can view Pengumuman', 47, 'view_pengumuman'),
(189, 'Can add Tag', 48, 'add_tag'),
(190, 'Can change Tag', 48, 'change_tag'),
(191, 'Can delete Tag', 48, 'delete_tag'),
(192, 'Can view Tag', 48, 'view_tag'),
(193, 'Can add Testimoni', 49, 'add_testimoni'),
(194, 'Can change Testimoni', 49, 'change_testimoni'),
(195, 'Can delete Testimoni', 49, 'delete_testimoni'),
(196, 'Can view Testimoni', 49, 'view_testimoni'),
(197, 'Can add access attempt', 50, 'add_accessattempt'),
(198, 'Can change access attempt', 50, 'change_accessattempt'),
(199, 'Can delete access attempt', 50, 'delete_accessattempt'),
(200, 'Can view access attempt', 50, 'view_accessattempt'),
(201, 'Can add access log', 51, 'add_accesslog'),
(202, 'Can change access log', 51, 'change_accesslog'),
(203, 'Can delete access log', 51, 'delete_accesslog'),
(204, 'Can view access log', 51, 'view_accesslog'),
(205, 'Can add access failure', 52, 'add_accessfailurelog'),
(206, 'Can change access failure', 52, 'change_accessfailurelog'),
(207, 'Can delete access failure', 52, 'delete_accessfailurelog'),
(208, 'Can view access failure', 52, 'view_accessfailurelog');

-- --------------------------------------------------------

--
-- Table structure for table `axes_accessattempt`
--

CREATE TABLE `axes_accessattempt` (
  `id` int(11) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `http_accept` varchar(1025) NOT NULL,
  `path_info` varchar(255) NOT NULL,
  `attempt_time` datetime(6) NOT NULL,
  `get_data` longtext NOT NULL,
  `post_data` longtext NOT NULL,
  `failures_since_start` int(10) UNSIGNED NOT NULL CHECK (`failures_since_start` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `axes_accessfailurelog`
--

CREATE TABLE `axes_accessfailurelog` (
  `id` int(11) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `http_accept` varchar(1025) NOT NULL,
  `path_info` varchar(255) NOT NULL,
  `attempt_time` datetime(6) NOT NULL,
  `locked_out` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `axes_accesslog`
--

CREATE TABLE `axes_accesslog` (
  `id` int(11) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `http_accept` varchar(1025) NOT NULL,
  `path_info` varchar(255) NOT NULL,
  `attempt_time` datetime(6) NOT NULL,
  `logout_time` datetime(6) DEFAULT NULL,
  `session_hash` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `axes_accesslog`
--

INSERT INTO `axes_accesslog` (`id`, `user_agent`, `ip_address`, `username`, `http_accept`, `path_info`, `attempt_time`, `logout_time`, `session_hash`) VALUES
(1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '127.0.0.1', 'admin', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/users/login/', '2025-12-02 04:39:36.492869', '2025-12-02 04:45:42.625786', '8c1c7622880967d461c0360b47b35c072ce3a9780b7dc18f4ea4b0a9c84dbcea'),
(2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '127.0.0.1', 'admin', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/users/login/', '2025-12-02 04:45:50.172236', NULL, 'b2b0f1806d9f93b6429627e92a6c5a1cd3706b0e419633150c2ead6ba5b70f85'),
(3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '127.0.0.1', 'admin', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/users/login/', '2025-12-02 11:57:35.332827', '2025-12-02 12:00:06.941157', '496946c6700137c6711e1017d8460ba41867f193ff7f40c8b2ca9cb010867830'),
(4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '127.0.0.1', 'admin', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/users/login/', '2025-12-02 12:00:14.701312', '2025-12-02 12:03:55.403776', '923b2ae5e4f8d696b0435dd41d57920a85cf7ede0fe99f8580670cb6957b92ee'),
(5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '127.0.0.1', 'admin', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/users/login/', '2025-12-02 12:04:02.394693', NULL, '76d2ca34f302281a210bafc6320c6ef2b89e2dcedc1722ddafed239aa6d60d57');

-- --------------------------------------------------------

--
-- Table structure for table `blog_blogimage`
--

CREATE TABLE `blog_blogimage` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `alt_text` varchar(200) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `created_at` datetime(6) NOT NULL,
  `blog_post_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_blogimage`
--

INSERT INTO `blog_blogimage` (`id`, `image`, `alt_text`, `caption`, `order`, `created_at`, `blog_post_id`) VALUES
(1, 'blog/images/2025/12/02/blog_image_1_1_5422.jpg', 'Kegiatan Rutin Sholat Berjamaah di Pondok Pesantren - Gambar 1', 'Gambar ilustrasi untuk artikel: Kegiatan Rutin Sholat Berjamaah di Pondok Pesantren', 1, '2025-12-01 18:37:47.333000', 11),
(2, 'blog/images/2025/12/02/blog_image_2_1_5429.jpg', 'Prestasi Santri dalam Lomba Pidato Bahasa Arab - Gambar 1', 'Gambar ilustrasi untuk artikel: Prestasi Santri dalam Lomba Pidato Bahasa Arab', 1, '2025-12-01 18:37:47.360253', 12),
(3, 'blog/images/2025/12/02/blog_image_3_1_2799.jpg', 'Kajian Kitab Kuning Setiap Malam Jumat - Gambar 1', 'Gambar ilustrasi untuk artikel: Kajian Kitab Kuning Setiap Malam Jumat', 1, '2025-12-01 18:37:47.377952', 13),
(4, 'blog/images/2025/12/02/blog_image_3_2_9650.jpg', 'Kajian Kitab Kuning Setiap Malam Jumat - Gambar 2', 'Gambar ilustrasi untuk artikel: Kajian Kitab Kuning Setiap Malam Jumat', 2, '2025-12-01 18:37:47.385269', 13),
(5, 'blog/images/2025/12/02/blog_image_4_1_3225.jpg', 'Kegiatan Ekstrakurikuler Pramuka untuk Santri - Gambar 1', 'Gambar ilustrasi untuk artikel: Kegiatan Ekstrakurikuler Pramuka untuk Santri', 1, '2025-12-01 18:37:47.408048', 14),
(6, 'blog/images/2025/12/02/blog_image_5_1_7885.jpg', 'Penerimaan Santri Baru Tahun Ajaran 2024 - Gambar 1', 'Gambar ilustrasi untuk artikel: Penerimaan Santri Baru Tahun Ajaran 2024', 1, '2025-12-01 18:37:47.430594', 15),
(7, 'blog/images/2025/12/02/blog_image_6_1_7674.jpg', 'Kegiatan Outbound Santri di Gunung Lawu - Gambar 1', 'Gambar ilustrasi untuk artikel: Kegiatan Outbound Santri di Gunung Lawu', 1, '2025-12-01 18:37:47.457576', 16),
(8, 'blog/images/2025/12/02/blog_image_6_2_3902.jpg', 'Kegiatan Outbound Santri di Gunung Lawu - Gambar 2', 'Gambar ilustrasi untuk artikel: Kegiatan Outbound Santri di Gunung Lawu', 2, '2025-12-01 18:37:47.465265', 16),
(9, 'blog/images/2025/12/02/blog_image_7_1_5614.jpg', 'Prestasi Santri dalam Olimpiade Matematika - Gambar 1', 'Gambar ilustrasi untuk artikel: Prestasi Santri dalam Olimpiade Matematika', 1, '2025-12-01 18:37:47.485684', 17),
(10, 'blog/images/2025/12/02/blog_image_7_2_4388.jpg', 'Prestasi Santri dalam Olimpiade Matematika - Gambar 2', 'Gambar ilustrasi untuk artikel: Prestasi Santri dalam Olimpiade Matematika', 2, '2025-12-01 18:37:47.494841', 17),
(11, 'blog/images/2025/12/02/blog_image_8_1_5150.jpg', 'Kegiatan Tahfidz Al-Quran untuk Santri - Gambar 1', 'Gambar ilustrasi untuk artikel: Kegiatan Tahfidz Al-Quran untuk Santri', 1, '2025-12-01 18:37:47.517099', 18),
(12, 'blog/images/2025/12/02/blog_image_9_1_7393.jpg', 'Kegiatan Bakti Sosial Santri ke Panti Asuhan - Gambar 1', 'Gambar ilustrasi untuk artikel: Kegiatan Bakti Sosial Santri ke Panti Asuhan', 1, '2025-12-01 18:37:47.541448', 19),
(13, 'blog/images/2025/12/02/blog_image_9_2_9451.jpg', 'Kegiatan Bakti Sosial Santri ke Panti Asuhan - Gambar 2', 'Gambar ilustrasi untuk artikel: Kegiatan Bakti Sosial Santri ke Panti Asuhan', 2, '2025-12-01 18:37:47.547647', 19),
(14, 'blog/images/2025/12/02/blog_image_9_3_6596.jpg', 'Kegiatan Bakti Sosial Santri ke Panti Asuhan - Gambar 3', 'Gambar ilustrasi untuk artikel: Kegiatan Bakti Sosial Santri ke Panti Asuhan', 3, '2025-12-01 18:37:47.559553', 19),
(15, 'blog/images/2025/12/02/blog_image_10_1_4188.jpg', 'Peringatan Maulid Nabi Muhammad SAW - Gambar 1', 'Gambar ilustrasi untuk artikel: Peringatan Maulid Nabi Muhammad SAW', 1, '2025-12-01 18:37:47.576662', 20),
(16, 'blog/images/2025/12/02/blog_image_10_2_2539.jpg', 'Peringatan Maulid Nabi Muhammad SAW - Gambar 2', 'Gambar ilustrasi untuk artikel: Peringatan Maulid Nabi Muhammad SAW', 2, '2025-12-01 18:37:47.593620', 20),
(17, 'blog/images/2025/12/02/blog_image_11_1_7527.jpg', 'Kegiatan Muhadhoroh (Latihan Pidato) Santri - Gambar 1', 'Gambar ilustrasi untuk artikel: Kegiatan Muhadhoroh (Latihan Pidato) Santri', 1, '2025-12-01 18:37:47.615292', 21),
(18, 'blog/images/2025/12/02/blog_image_11_2_5774.jpg', 'Kegiatan Muhadhoroh (Latihan Pidato) Santri - Gambar 2', 'Gambar ilustrasi untuk artikel: Kegiatan Muhadhoroh (Latihan Pidato) Santri', 2, '2025-12-01 18:37:47.627005', 21),
(19, 'blog/images/2025/12/02/blog_image_11_3_9018.jpg', 'Kegiatan Muhadhoroh (Latihan Pidato) Santri - Gambar 3', 'Gambar ilustrasi untuk artikel: Kegiatan Muhadhoroh (Latihan Pidato) Santri', 3, '2025-12-01 18:37:47.629180', 21),
(20, 'blog/images/2025/12/02/blog_image_12_1_8696.jpg', 'Prestasi Santri dalam Lomba MTQ - Gambar 1', 'Gambar ilustrasi untuk artikel: Prestasi Santri dalam Lomba MTQ', 1, '2025-12-01 18:37:47.657528', 22),
(21, 'blog/images/2025/12/02/blog_image_12_2_1934.jpg', 'Prestasi Santri dalam Lomba MTQ - Gambar 2', 'Gambar ilustrasi untuk artikel: Prestasi Santri dalam Lomba MTQ', 2, '2025-12-01 18:37:47.663643', 22),
(22, 'blog/images/2025/12/02/blog_image_13_1_6348.jpg', 'Kegiatan Rutin Tadarus Al-Quran - Gambar 1', 'Gambar ilustrasi untuk artikel: Kegiatan Rutin Tadarus Al-Quran', 1, '2025-12-01 18:37:47.675201', 23),
(23, 'blog/images/2025/12/02/blog_image_13_2_1585.jpg', 'Kegiatan Rutin Tadarus Al-Quran - Gambar 2', 'Gambar ilustrasi untuk artikel: Kegiatan Rutin Tadarus Al-Quran', 2, '2025-12-01 18:37:47.692998', 23),
(24, 'blog/images/2025/12/02/blog_image_13_3_8967.jpg', 'Kegiatan Rutin Tadarus Al-Quran - Gambar 3', 'Gambar ilustrasi untuk artikel: Kegiatan Rutin Tadarus Al-Quran', 3, '2025-12-01 18:37:47.708042', 23),
(25, 'blog/images/2025/12/02/blog_image_14_1_6016.jpg', 'Kegiatan Ekstrakurikuler Kaligrafi - Gambar 1', 'Gambar ilustrasi untuk artikel: Kegiatan Ekstrakurikuler Kaligrafi', 1, '2025-12-01 18:37:47.726676', 24),
(26, 'blog/images/2025/12/02/blog_image_14_2_7330.jpg', 'Kegiatan Ekstrakurikuler Kaligrafi - Gambar 2', 'Gambar ilustrasi untuk artikel: Kegiatan Ekstrakurikuler Kaligrafi', 2, '2025-12-01 18:37:47.726676', 24),
(27, 'blog/images/2025/12/02/blog_image_15_1_1021.jpg', 'Kunjungan Santri ke Museum Sejarah - Gambar 1', 'Gambar ilustrasi untuk artikel: Kunjungan Santri ke Museum Sejarah', 1, '2025-12-01 18:37:47.758112', 25),
(28, 'blog/images/2025/12/02/blog_image_15_2_5021.jpg', 'Kunjungan Santri ke Museum Sejarah - Gambar 2', 'Gambar ilustrasi untuk artikel: Kunjungan Santri ke Museum Sejarah', 2, '2025-12-01 18:37:47.769433', 25),
(29, 'blog/images/2025/12/02/blog_image_15_3_9627.jpg', 'Kunjungan Santri ke Museum Sejarah - Gambar 3', 'Gambar ilustrasi untuk artikel: Kunjungan Santri ke Museum Sejarah', 3, '2025-12-01 18:37:47.774737', 25),
(30, 'blog/images/2025/12/02/blog_image_16_1_2880.jpg', 'Kegiatan Rutin Sholat Dhuha Berjamaah - Gambar 1', 'Gambar ilustrasi untuk artikel: Kegiatan Rutin Sholat Dhuha Berjamaah', 1, '2025-12-01 18:37:47.798169', 26),
(31, 'blog/images/2025/12/02/blog_image_17_1_6103.jpg', 'Prestasi Santri dalam Lomba Cerdas Cermat - Gambar 1', 'Gambar ilustrasi untuk artikel: Prestasi Santri dalam Lomba Cerdas Cermat', 1, '2025-12-01 18:37:47.825549', 27),
(32, 'blog/images/2025/12/02/blog_image_17_2_8462.jpg', 'Prestasi Santri dalam Lomba Cerdas Cermat - Gambar 2', 'Gambar ilustrasi untuk artikel: Prestasi Santri dalam Lomba Cerdas Cermat', 2, '2025-12-01 18:37:47.825549', 27),
(33, 'blog/images/2025/12/02/blog_image_18_1_5089.jpg', 'Kegiatan Ekstrakurikuler Pencak Silat - Gambar 1', 'Gambar ilustrasi untuk artikel: Kegiatan Ekstrakurikuler Pencak Silat', 1, '2025-12-01 18:37:47.859199', 28),
(34, 'blog/images/2025/12/02/blog_image_18_2_5513.jpg', 'Kegiatan Ekstrakurikuler Pencak Silat - Gambar 2', 'Gambar ilustrasi untuk artikel: Kegiatan Ekstrakurikuler Pencak Silat', 2, '2025-12-01 18:37:47.861206', 28),
(35, 'blog/images/2025/12/02/blog_image_18_3_1650.jpg', 'Kegiatan Ekstrakurikuler Pencak Silat - Gambar 3', 'Gambar ilustrasi untuk artikel: Kegiatan Ekstrakurikuler Pencak Silat', 3, '2025-12-01 18:37:47.881147', 28),
(36, 'blog/images/2025/12/02/blog_image_19_1_4309.jpg', 'Kegiatan Rutin Sholat Tahajud - Gambar 1', 'Gambar ilustrasi untuk artikel: Kegiatan Rutin Sholat Tahajud', 1, '2025-12-01 18:37:47.899800', 29),
(37, 'blog/images/2025/12/02/blog_image_19_2_5709.jpg', 'Kegiatan Rutin Sholat Tahajud - Gambar 2', 'Gambar ilustrasi untuk artikel: Kegiatan Rutin Sholat Tahajud', 2, '2025-12-01 18:37:47.907996', 29),
(38, 'blog/images/2025/12/02/blog_image_20_1_9005.jpg', 'Peringatan Isra Mi\'raj Nabi Muhammad SAW - Gambar 1', 'Gambar ilustrasi untuk artikel: Peringatan Isra Mi\'raj Nabi Muhammad SAW', 1, '2025-12-01 18:37:47.926858', 30),
(39, 'blog/images/2025/12/02/blog_image_20_2_8808.jpg', 'Peringatan Isra Mi\'raj Nabi Muhammad SAW - Gambar 2', 'Gambar ilustrasi untuk artikel: Peringatan Isra Mi\'raj Nabi Muhammad SAW', 2, '2025-12-01 18:37:47.944668', 30),
(40, 'blog/images/2025/12/02/blog_image_21_1_9953.jpg', 'Kegiatan Rutin Sholat Subuh Berjamaah - Gambar 1', 'Gambar ilustrasi untuk artikel: Kegiatan Rutin Sholat Subuh Berjamaah', 1, '2025-12-01 18:37:47.968223', 31),
(41, 'blog/images/2025/12/02/blog_image_21_2_6564.jpg', 'Kegiatan Rutin Sholat Subuh Berjamaah - Gambar 2', 'Gambar ilustrasi untuk artikel: Kegiatan Rutin Sholat Subuh Berjamaah', 2, '2025-12-01 18:37:47.982618', 31),
(42, 'blog/images/2025/12/02/blog_image_21_3_4953.jpg', 'Kegiatan Rutin Sholat Subuh Berjamaah - Gambar 3', 'Gambar ilustrasi untuk artikel: Kegiatan Rutin Sholat Subuh Berjamaah', 3, '2025-12-01 18:37:47.991878', 31),
(43, 'blog/images/2025/12/02/blog_image_22_1_8744.jpg', 'Prestasi Santri dalam Lomba Debat Bahasa Inggris - Gambar 1', 'Gambar ilustrasi untuk artikel: Prestasi Santri dalam Lomba Debat Bahasa Inggris', 1, '2025-12-01 18:37:48.008125', 32),
(44, 'blog/images/2025/12/02/blog_image_22_2_1469.jpg', 'Prestasi Santri dalam Lomba Debat Bahasa Inggris - Gambar 2', 'Gambar ilustrasi untuk artikel: Prestasi Santri dalam Lomba Debat Bahasa Inggris', 2, '2025-12-01 18:37:48.028154', 32),
(45, 'blog/images/2025/12/02/blog_image_22_3_4475.jpg', 'Prestasi Santri dalam Lomba Debat Bahasa Inggris - Gambar 3', 'Gambar ilustrasi untuk artikel: Prestasi Santri dalam Lomba Debat Bahasa Inggris', 3, '2025-12-01 18:37:48.028154', 32),
(46, 'blog/images/2025/12/02/blog_image_23_1_9808.jpg', 'Kegiatan Ekstrakurikuler Seni Musik Islami - Gambar 1', 'Gambar ilustrasi untuk artikel: Kegiatan Ekstrakurikuler Seni Musik Islami', 1, '2025-12-01 18:37:48.058009', 33),
(47, 'blog/images/2025/12/02/blog_image_24_1_4500.jpg', 'Kegiatan Rutin Kajian Tafsir Al-Quran - Gambar 1', 'Gambar ilustrasi untuk artikel: Kegiatan Rutin Kajian Tafsir Al-Quran', 1, '2025-12-01 18:37:48.083754', 34),
(48, 'blog/images/2025/12/02/blog_image_25_1_2953.jpg', 'Prestasi Santri dalam Lomba Robotik - Gambar 1', 'Gambar ilustrasi untuk artikel: Prestasi Santri dalam Lomba Robotik', 1, '2025-12-01 18:37:48.110340', 35),
(49, 'blog/images/2025/12/02/blog_image_25_2_4479.jpg', 'Prestasi Santri dalam Lomba Robotik - Gambar 2', 'Gambar ilustrasi untuk artikel: Prestasi Santri dalam Lomba Robotik', 2, '2025-12-01 18:37:48.110340', 35),
(50, 'blog/images/2025/12/02/blog_image_25_3_1772.jpg', 'Prestasi Santri dalam Lomba Robotik - Gambar 3', 'Gambar ilustrasi untuk artikel: Prestasi Santri dalam Lomba Robotik', 3, '2025-12-01 18:37:48.126842', 35);

-- --------------------------------------------------------

--
-- Table structure for table `blog_blogpost`
--

CREATE TABLE `blog_blogpost` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `excerpt` longtext NOT NULL,
  `featured_image` varchar(100) DEFAULT NULL,
  `meta_title` varchar(200) NOT NULL,
  `meta_description` longtext NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `video_file` varchar(100) DEFAULT NULL,
  `views_count` int(10) UNSIGNED NOT NULL CHECK (`views_count` >= 0),
  `likes_count` int(10) UNSIGNED NOT NULL CHECK (`likes_count` >= 0),
  `shares_count` int(10) UNSIGNED NOT NULL CHECK (`shares_count` >= 0),
  `status` varchar(20) NOT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `author_id` bigint(20) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_blogpost`
--

INSERT INTO `blog_blogpost` (`id`, `title`, `slug`, `content`, `excerpt`, `featured_image`, `meta_title`, `meta_description`, `meta_keywords`, `video_file`, `views_count`, `likes_count`, `shares_count`, `status`, `published_at`, `is_featured`, `created_at`, `updated_at`, `author_id`, `category_id`) VALUES
(1, 'Kegiatan Rutin Sholat Berjamaah di Pondok Pesantren', 'kegiatan-rutin-sholat-berjamaah-di-pondok-pesantren-1-8341', '<p>Pondok Pesantren kami mengadakan kegiatan rutin sholat berjamaah setiap hari. Kegiatan ini bertujuan untuk membiasakan santri dalam melaksanakan sholat tepat waktu dan berjamaah.</p>\n            <p>Kegiatan sholat berjamaah ini diikuti oleh seluruh santri dan ustadz/ustadzah. Setiap santri diwajibkan untuk mengikuti kegiatan ini sebagai bagian dari pendidikan karakter dan akhlak.</p>\n            <p>Dengan kegiatan ini, diharapkan santri dapat terbiasa dengan sholat berjamaah dan memahami pentingnya sholat dalam kehidupan sehari-hari.</p>', 'Pondok Pesantren kami mengadakan kegiatan rutin sholat berjamaah setiap hari. Kegiatan ini bertujuan untuk membiasakan santri dalam melaksanakan sholat tepat waktu dan berjamaah.\n            <p...', '', 'Kegiatan Rutin Sholat Berjamaah di Pondok Pesantren', 'Pondok Pesantren kami mengadakan kegiatan rutin sholat berjamaah setiap hari. Kegiatan ini bertujuan untuk membiasakan santri dalam melaksanakan sholat tepat waktu dan berjamaah.\n            <p', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 469, 16, 13, 'published', NULL, 0, '2025-12-01 17:44:14.121797', '2025-12-01 17:44:14.121797', 1, 10),
(2, 'Prestasi Santri dalam Lomba Pidato Bahasa Arab', 'prestasi-santri-dalam-lomba-pidato-bahasa-arab-2-7440', '<p>Alhamdulillah, beberapa santri kami berhasil meraih prestasi dalam lomba pidato bahasa Arab tingkat regional. Prestasi ini merupakan hasil dari kerja keras dan dedikasi santri dalam belajar bahasa Arab.</p>\n            <p>Lomba ini diikuti oleh berbagai pondok pesantren di wilayah Jawa Tengah. Santri kami berhasil meraih juara 1, 2, dan 3 dalam berbagai kategori.</p>\n            <p>Prestasi ini menjadi motivasi bagi santri lainnya untuk terus belajar dan berprestasi dalam berbagai bidang.</p>', 'Alhamdulillah, beberapa santri kami berhasil meraih prestasi dalam lomba pidato bahasa Arab tingkat regional. Prestasi ini merupakan hasil dari kerja keras dan dedikasi santri dalam belajar bahasa...', '', 'Prestasi Santri dalam Lomba Pidato Bahasa Arab', 'Alhamdulillah, beberapa santri kami berhasil meraih prestasi dalam lomba pidato bahasa Arab tingkat regional. Prestasi ini merupakan hasil dari kerja keras dan dedikasi santri dalam belajar bahasa', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 422, 55, 16, 'published', '2025-10-06 17:44:14.125939', 0, '2025-12-01 17:44:14.127049', '2025-12-01 17:44:14.127049', 1, 6),
(3, 'Kajian Kitab Kuning Setiap Malam Jumat', 'kajian-kitab-kuning-setiap-malam-jumat-3-6121', '<p>Setiap malam Jumat, pondok pesantren mengadakan kajian kitab kuning yang diikuti oleh seluruh santri. Kajian ini membahas berbagai kitab klasik yang menjadi rujukan dalam pendidikan Islam.</p>\n            <p>Kajian dipimpin oleh ustadz senior yang memiliki keahlian dalam bidang ilmu agama. Santri diajarkan untuk membaca, memahami, dan mengamalkan isi kitab yang dikaji.</p>\n            <p>Kegiatan ini merupakan bagian dari kurikulum pendidikan pondok pesantren yang bertujuan untuk memperdalam pemahaman santri tentang ajaran Islam.</p>', 'Setiap malam Jumat, pondok pesantren mengadakan kajian kitab kuning yang diikuti oleh seluruh santri. Kajian ini membahas berbagai kitab klasik yang menjadi rujukan dalam pendidikan Islam....', '', 'Kajian Kitab Kuning Setiap Malam Jumat', 'Setiap malam Jumat, pondok pesantren mengadakan kajian kitab kuning yang diikuti oleh seluruh santri. Kajian ini membahas berbagai kitab klasik yang menjadi rujukan dalam pendidikan Islam.', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 223, 75, 32, 'draft', '2025-06-08 17:44:14.130662', 0, '2025-12-01 17:44:14.130662', '2025-12-01 17:44:14.130662', 1, 10),
(4, 'Kegiatan Ekstrakurikuler Pramuka untuk Santri', 'kegiatan-ekstrakurikuler-pramuka-untuk-santri-4-3746', '<p>Ekstrakurikuler pramuka menjadi salah satu kegiatan favorit santri. Kegiatan ini mengajarkan nilai-nilai kepemimpinan, kedisiplinan, dan kerja sama tim.</p>\n            <p>Setiap minggu, santri mengikuti latihan pramuka yang meliputi berbagai kegiatan seperti hiking, camping, dan berbagai permainan edukatif.</p>\n            <p>Melalui kegiatan pramuka, santri belajar untuk mandiri, bertanggung jawab, dan memiliki jiwa sosial yang tinggi.</p>', 'Ekstrakurikuler pramuka menjadi salah satu kegiatan favorit santri. Kegiatan ini mengajarkan nilai-nilai kepemimpinan, kedisiplinan, dan kerja sama tim.\n            Setiap minggu, santri men...', '', 'Kegiatan Ekstrakurikuler Pramuka untuk Santri', 'Ekstrakurikuler pramuka menjadi salah satu kegiatan favorit santri. Kegiatan ini mengajarkan nilai-nilai kepemimpinan, kedisiplinan, dan kerja sama tim.\n            Setiap minggu, santri men', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 893, 59, 47, 'published', '2025-09-13 17:44:14.133816', 0, '2025-12-01 17:44:14.133816', '2025-12-01 17:44:14.133816', 1, 9),
(5, 'Penerimaan Santri Baru Tahun Ajaran 2024', 'penerimaan-santri-baru-tahun-ajaran-2024-5-1122', '<p>Pondok Pesantren membuka pendaftaran santri baru untuk tahun ajaran 2024. Pendaftaran dibuka untuk berbagai jenjang pendidikan mulai dari SD, SMP, hingga SMA.</p>\n            <p>Calon santri dapat mendaftar melalui website resmi pondok pesantren atau datang langsung ke kantor pendaftaran. Persyaratan dan informasi lengkap dapat dilihat di website.</p>\n            <p>Kami mengundang para orang tua untuk mendaftarkan putra-putrinya menjadi bagian dari keluarga besar pondok pesantren kami.</p>', 'Pondok Pesantren membuka pendaftaran santri baru untuk tahun ajaran 2024. Pendaftaran dibuka untuk berbagai jenjang pendidikan mulai dari SD, SMP, hingga SMA.\n            Calon santri dapat...', '', 'Penerimaan Santri Baru Tahun Ajaran 2024', 'Pondok Pesantren membuka pendaftaran santri baru untuk tahun ajaran 2024. Pendaftaran dibuka untuk berbagai jenjang pendidikan mulai dari SD, SMP, hingga SMA.\n            Calon santri dapat', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 804, 87, 22, 'published', '2025-10-26 17:44:14.137166', 1, '2025-12-01 17:44:14.137166', '2025-12-01 17:44:14.137166', 1, 4),
(6, 'Kegiatan Outbound Santri di Gunung Lawu', 'kegiatan-outbound-santri-di-gunung-lawu-6-6347', '<p>Ini adalah konten artikel blog ke-6. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.</p>', 'Ini adalah konten artikel blog ke-6. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', '', 'Kegiatan Outbound Santri di Gunung Lawu', 'Ini adalah konten artikel blog ke-6. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 954, 34, 37, 'draft', '2025-09-25 17:44:14.140343', 0, '2025-12-01 17:44:14.140343', '2025-12-01 17:44:14.140343', 1, 3),
(7, 'Prestasi Santri dalam Olimpiade Matematika', 'prestasi-santri-dalam-olimpiade-matematika-7-9356', '<p>Ini adalah konten artikel blog ke-7. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.</p>', 'Ini adalah konten artikel blog ke-7. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', '', 'Prestasi Santri dalam Olimpiade Matematika', 'Ini adalah konten artikel blog ke-7. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 219, 14, 26, 'published', NULL, 0, '2025-12-01 17:44:14.144665', '2025-12-01 17:44:14.144665', 1, 3),
(8, 'Kegiatan Tahfidz Al-Quran untuk Santri', 'kegiatan-tahfidz-al-quran-untuk-santri-8-4376', '<p>Ini adalah konten artikel blog ke-8. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.</p>', 'Ini adalah konten artikel blog ke-8. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', '', 'Kegiatan Tahfidz Al-Quran untuk Santri', 'Ini adalah konten artikel blog ke-8. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 395, 98, 37, 'published', NULL, 0, '2025-12-01 17:44:14.149017', '2025-12-01 17:44:14.149017', 1, 10),
(9, 'Kegiatan Bakti Sosial Santri ke Panti Asuhan', 'kegiatan-bakti-sosial-santri-ke-panti-asuhan-9-3219', '<p>Ini adalah konten artikel blog ke-9. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.</p>', 'Ini adalah konten artikel blog ke-9. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', '', 'Kegiatan Bakti Sosial Santri ke Panti Asuhan', 'Ini adalah konten artikel blog ke-9. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 870, 58, 27, 'draft', '2025-10-19 17:44:14.152032', 0, '2025-12-01 17:44:14.153032', '2025-12-01 17:44:14.153032', 1, 10),
(10, 'Peringatan Maulid Nabi Muhammad SAW', 'peringatan-maulid-nabi-muhammad-saw-10-2647', '<p>Ini adalah konten artikel blog ke-10. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.</p>', 'Ini adalah konten artikel blog ke-10. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', '', 'Peringatan Maulid Nabi Muhammad SAW', 'Ini adalah konten artikel blog ke-10. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 894, 5, 19, 'published', '2025-07-17 17:44:14.155451', 0, '2025-12-01 17:44:14.156499', '2025-12-01 17:44:14.156499', 1, 3),
(11, 'Kegiatan Rutin Sholat Berjamaah di Pondok Pesantren', 'kegiatan-rutin-sholat-berjamaah-di-pondok-pesantren-1-4824', '<p>Pondok Pesantren kami mengadakan kegiatan rutin sholat berjamaah setiap hari. Kegiatan ini bertujuan untuk membiasakan santri dalam melaksanakan sholat tepat waktu dan berjamaah.</p>\n            <p>Kegiatan sholat berjamaah ini diikuti oleh seluruh santri dan ustadz/ustadzah. Setiap santri diwajibkan untuk mengikuti kegiatan ini sebagai bagian dari pendidikan karakter dan akhlak.</p>\n            <p>Dengan kegiatan ini, diharapkan santri dapat terbiasa dengan sholat berjamaah dan memahami pentingnya sholat dalam kehidupan sehari-hari.</p>', 'Pondok Pesantren kami mengadakan kegiatan rutin sholat berjamaah setiap hari. Kegiatan ini bertujuan untuk membiasakan santri dalam melaksanakan sholat tepat waktu dan berjamaah.\n            <p...', 'blog/featured/2025/12/02/blog_featured_1_9974.jpg', 'Kegiatan Rutin Sholat Berjamaah di Pondok Pesantren', 'Pondok Pesantren kami mengadakan kegiatan rutin sholat berjamaah setiap hari. Kegiatan ini bertujuan untuk membiasakan santri dalam melaksanakan sholat tepat waktu dan berjamaah.\n            <p', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 886, 45, 29, 'published', '2025-08-04 18:37:47.300117', 0, '2025-12-01 18:37:47.317350', '2025-12-01 18:37:47.321351', 1, 6),
(12, 'Prestasi Santri dalam Lomba Pidato Bahasa Arab', 'prestasi-santri-dalam-lomba-pidato-bahasa-arab-2-3304', '<p>Alhamdulillah, beberapa santri kami berhasil meraih prestasi dalam lomba pidato bahasa Arab tingkat regional. Prestasi ini merupakan hasil dari kerja keras dan dedikasi santri dalam belajar bahasa Arab.</p>\n            <p>Lomba ini diikuti oleh berbagai pondok pesantren di wilayah Jawa Tengah. Santri kami berhasil meraih juara 1, 2, dan 3 dalam berbagai kategori.</p>\n            <p>Prestasi ini menjadi motivasi bagi santri lainnya untuk terus belajar dan berprestasi dalam berbagai bidang.</p>', 'Alhamdulillah, beberapa santri kami berhasil meraih prestasi dalam lomba pidato bahasa Arab tingkat regional. Prestasi ini merupakan hasil dari kerja keras dan dedikasi santri dalam belajar bahasa...', 'blog/featured/2025/12/02/blog_featured_2_5510.jpg', 'Prestasi Santri dalam Lomba Pidato Bahasa Arab', 'Alhamdulillah, beberapa santri kami berhasil meraih prestasi dalam lomba pidato bahasa Arab tingkat regional. Prestasi ini merupakan hasil dari kerja keras dan dedikasi santri dalam belajar bahasa', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 719, 47, 25, 'published', '2025-09-09 18:37:47.340877', 1, '2025-12-01 18:37:47.347950', '2025-12-01 18:37:47.349957', 1, 7),
(13, 'Kajian Kitab Kuning Setiap Malam Jumat', 'kajian-kitab-kuning-setiap-malam-jumat-3-7436', '<p>Setiap malam Jumat, pondok pesantren mengadakan kajian kitab kuning yang diikuti oleh seluruh santri. Kajian ini membahas berbagai kitab klasik yang menjadi rujukan dalam pendidikan Islam.</p>\n            <p>Kajian dipimpin oleh ustadz senior yang memiliki keahlian dalam bidang ilmu agama. Santri diajarkan untuk membaca, memahami, dan mengamalkan isi kitab yang dikaji.</p>\n            <p>Kegiatan ini merupakan bagian dari kurikulum pendidikan pondok pesantren yang bertujuan untuk memperdalam pemahaman santri tentang ajaran Islam.</p>', 'Setiap malam Jumat, pondok pesantren mengadakan kajian kitab kuning yang diikuti oleh seluruh santri. Kajian ini membahas berbagai kitab klasik yang menjadi rujukan dalam pendidikan Islam....', 'blog/featured/2025/12/02/blog_featured_3_6201.jpg', 'Kajian Kitab Kuning Setiap Malam Jumat', 'Setiap malam Jumat, pondok pesantren mengadakan kajian kitab kuning yang diikuti oleh seluruh santri. Kajian ini membahas berbagai kitab klasik yang menjadi rujukan dalam pendidikan Islam.', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 760, 48, 43, 'published', '2025-08-21 18:37:47.363649', 0, '2025-12-01 18:37:47.364890', '2025-12-01 18:37:47.364890', 1, 5),
(14, 'Kegiatan Ekstrakurikuler Pramuka untuk Santri', 'kegiatan-ekstrakurikuler-pramuka-untuk-santri-4-9888', '<p>Ekstrakurikuler pramuka menjadi salah satu kegiatan favorit santri. Kegiatan ini mengajarkan nilai-nilai kepemimpinan, kedisiplinan, dan kerja sama tim.</p>\n            <p>Setiap minggu, santri mengikuti latihan pramuka yang meliputi berbagai kegiatan seperti hiking, camping, dan berbagai permainan edukatif.</p>\n            <p>Melalui kegiatan pramuka, santri belajar untuk mandiri, bertanggung jawab, dan memiliki jiwa sosial yang tinggi.</p>', 'Ekstrakurikuler pramuka menjadi salah satu kegiatan favorit santri. Kegiatan ini mengajarkan nilai-nilai kepemimpinan, kedisiplinan, dan kerja sama tim.\n            Setiap minggu, santri men...', 'blog/featured/2025/12/02/blog_featured_4_2316.jpg', 'Kegiatan Ekstrakurikuler Pramuka untuk Santri', 'Ekstrakurikuler pramuka menjadi salah satu kegiatan favorit santri. Kegiatan ini mengajarkan nilai-nilai kepemimpinan, kedisiplinan, dan kerja sama tim.\n            Setiap minggu, santri men', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 788, 46, 11, 'draft', '2025-11-16 18:37:47.393387', 1, '2025-12-01 18:37:47.393387', '2025-12-01 18:37:47.402332', 1, 3),
(15, 'Penerimaan Santri Baru Tahun Ajaran 2024', 'penerimaan-santri-baru-tahun-ajaran-2024-5-6002', '<p>Pondok Pesantren membuka pendaftaran santri baru untuk tahun ajaran 2024. Pendaftaran dibuka untuk berbagai jenjang pendidikan mulai dari SD, SMP, hingga SMA.</p>\n            <p>Calon santri dapat mendaftar melalui website resmi pondok pesantren atau datang langsung ke kantor pendaftaran. Persyaratan dan informasi lengkap dapat dilihat di website.</p>\n            <p>Kami mengundang para orang tua untuk mendaftarkan putra-putrinya menjadi bagian dari keluarga besar pondok pesantren kami.</p>', 'Pondok Pesantren membuka pendaftaran santri baru untuk tahun ajaran 2024. Pendaftaran dibuka untuk berbagai jenjang pendidikan mulai dari SD, SMP, hingga SMA.\n            Calon santri dapat...', 'blog/featured/2025/12/02/blog_featured_5_4390.jpg', 'Penerimaan Santri Baru Tahun Ajaran 2024', 'Pondok Pesantren membuka pendaftaran santri baru untuk tahun ajaran 2024. Pendaftaran dibuka untuk berbagai jenjang pendidikan mulai dari SD, SMP, hingga SMA.\n            Calon santri dapat', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 793, 32, 30, 'published', '2025-09-29 18:37:47.414264', 1, '2025-12-01 18:37:47.414264', '2025-12-01 18:37:47.424687', 1, 6),
(16, 'Kegiatan Outbound Santri di Gunung Lawu', 'kegiatan-outbound-santri-di-gunung-lawu-6-9448', '<p>Kegiatan outbound santri di Gunung Lawu berlangsung dengan sukses. Kegiatan ini diikuti oleh 50 santri yang terpilih berdasarkan prestasi dan kedisiplinan.</p>\n            <p>Selama 3 hari 2 malam, santri melakukan berbagai aktivitas seperti hiking, camping, dan team building. Kegiatan ini bertujuan untuk melatih kemandirian dan kerja sama tim.</p>\n            <p>Semua santri sangat antusias mengikuti kegiatan ini dan berharap kegiatan serupa dapat diadakan kembali di masa depan.</p>', 'Kegiatan outbound santri di Gunung Lawu berlangsung dengan sukses. Kegiatan ini diikuti oleh 50 santri yang terpilih berdasarkan prestasi dan kedisiplinan.\n            Selama 3 hari 2 malam,...', 'blog/featured/2025/12/02/blog_featured_6_9245.jpg', 'Kegiatan Outbound Santri di Gunung Lawu', 'Kegiatan outbound santri di Gunung Lawu berlangsung dengan sukses. Kegiatan ini diikuti oleh 50 santri yang terpilih berdasarkan prestasi dan kedisiplinan.\n            Selama 3 hari 2 malam,', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 168, 36, 12, 'published', '2025-09-26 18:37:47.436267', 0, '2025-12-01 18:37:47.443409', '2025-12-01 18:37:47.447562', 1, 1),
(17, 'Prestasi Santri dalam Olimpiade Matematika', 'prestasi-santri-dalam-olimpiade-matematika-7-3025', '<p>Prestasi membanggakan diraih oleh santri kami dalam olimpiade matematika tingkat provinsi. Tiga santri berhasil meraih medali emas, perak, dan perunggu.</p>\n            <p>Prestasi ini tidak lepas dari kerja keras dan dedikasi santri dalam belajar matematika. Ustadz pembimbing juga memberikan bimbingan intensif sebelum lomba.</p>\n            <p>Kami berharap prestasi ini dapat memotivasi santri lainnya untuk terus belajar dan berprestasi.</p>', 'Prestasi membanggakan diraih oleh santri kami dalam olimpiade matematika tingkat provinsi. Tiga santri berhasil meraih medali emas, perak, dan perunggu.\n            Prestasi ini tidak lepas...', 'blog/featured/2025/12/02/blog_featured_7_3867.jpg', 'Prestasi Santri dalam Olimpiade Matematika', 'Prestasi membanggakan diraih oleh santri kami dalam olimpiade matematika tingkat provinsi. Tiga santri berhasil meraih medali emas, perak, dan perunggu.\n            Prestasi ini tidak lepas', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 54, 86, 5, 'draft', '2025-08-31 18:37:47.471265', 0, '2025-12-01 18:37:47.476925', '2025-12-01 18:37:47.480347', 1, 5),
(18, 'Kegiatan Tahfidz Al-Quran untuk Santri', 'kegiatan-tahfidz-al-quran-untuk-santri-8-3632', '<p>Program tahfidz Al-Quran menjadi salah satu program unggulan di pondok pesantren kami. Program ini diikuti oleh santri yang memiliki minat dan kemampuan menghafal Al-Quran.</p>\n            <p>Setiap santri dibimbing oleh ustadz khusus yang memiliki sanad hafalan. Santri diwajibkan untuk menghafal minimal 1 juz per bulan.</p>\n            <p>Program ini telah menghasilkan banyak hafidz dan hafidzah yang menjadi kebanggaan pondok pesantren.</p>', 'Program tahfidz Al-Quran menjadi salah satu program unggulan di pondok pesantren kami. Program ini diikuti oleh santri yang memiliki minat dan kemampuan menghafal Al-Quran.\n            Setia...', 'blog/featured/2025/12/02/blog_featured_8_7040.jpg', 'Kegiatan Tahfidz Al-Quran untuk Santri', 'Program tahfidz Al-Quran menjadi salah satu program unggulan di pondok pesantren kami. Program ini diikuti oleh santri yang memiliki minat dan kemampuan menghafal Al-Quran.\n            Setia', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 183, 32, 33, 'published', '2025-09-25 18:37:47.502775', 0, '2025-12-01 18:37:47.508127', '2025-12-01 18:37:47.508127', 1, 4),
(19, 'Kegiatan Bakti Sosial Santri ke Panti Asuhan', 'kegiatan-bakti-sosial-santri-ke-panti-asuhan-9-6290', '<p>Kegiatan bakti sosial santri ke panti asuhan berlangsung dengan penuh kehangatan. Santri membagikan bantuan berupa sembako, pakaian, dan mainan untuk anak-anak panti asuhan.</p>\n            <p>Kegiatan ini diikuti oleh 30 santri yang terpilih. Selain memberikan bantuan, santri juga mengadakan berbagai permainan dan kegiatan edukatif bersama anak-anak panti asuhan.</p>\n            <p>Kegiatan ini mengajarkan santri untuk peduli terhadap sesama dan memiliki jiwa sosial yang tinggi.</p>', 'Kegiatan bakti sosial santri ke panti asuhan berlangsung dengan penuh kehangatan. Santri membagikan bantuan berupa sembako, pakaian, dan mainan untuk anak-anak panti asuhan.\n            Kegi...', 'blog/featured/2025/12/02/blog_featured_9_1172.jpg', 'Kegiatan Bakti Sosial Santri ke Panti Asuhan', 'Kegiatan bakti sosial santri ke panti asuhan berlangsung dengan penuh kehangatan. Santri membagikan bantuan berupa sembako, pakaian, dan mainan untuk anak-anak panti asuhan.\n            Kegi', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 415, 100, 49, 'published', '2025-11-06 18:37:47.524171', 1, '2025-12-01 18:37:47.524659', '2025-12-01 18:37:47.524659', 1, 6),
(20, 'Peringatan Maulid Nabi Muhammad SAW', 'peringatan-maulid-nabi-muhammad-saw-10-4379', '<p>Peringatan Maulid Nabi Muhammad SAW diadakan dengan meriah. Acara ini diikuti oleh seluruh santri, ustadz/ustadzah, dan wali santri.</p>\n            <p>Acara dimulai dengan pembacaan sholawat, dilanjutkan dengan ceramah agama tentang sejarah kelahiran Nabi Muhammad SAW, dan ditutup dengan doa bersama.</p>\n            <p>Peringatan ini menjadi momen penting untuk mengingat kembali perjuangan dan teladan Nabi Muhammad SAW dalam kehidupan sehari-hari.</p>', 'Peringatan Maulid Nabi Muhammad SAW diadakan dengan meriah. Acara ini diikuti oleh seluruh santri, ustadz/ustadzah, dan wali santri.\n            Acara dimulai dengan pembacaan sholawat, dila...', 'blog/featured/2025/12/02/blog_featured_10_6395.jpg', 'Peringatan Maulid Nabi Muhammad SAW', 'Peringatan Maulid Nabi Muhammad SAW diadakan dengan meriah. Acara ini diikuti oleh seluruh santri, ustadz/ustadzah, dan wali santri.\n            Acara dimulai dengan pembacaan sholawat, dila', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 540, 84, 13, 'published', '2025-09-20 18:37:47.561558', 1, '2025-12-01 18:37:47.561558', '2025-12-01 18:37:47.574677', 1, 9),
(21, 'Kegiatan Muhadhoroh (Latihan Pidato) Santri', 'kegiatan-muhadhoroh-latihan-pidato-santri-11-1780', '<p>Ini adalah konten artikel blog ke-11. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.</p>', 'Ini adalah konten artikel blog ke-11. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'blog/featured/2025/12/02/blog_featured_11_3822.jpg', 'Kegiatan Muhadhoroh (Latihan Pidato) Santri', 'Ini adalah konten artikel blog ke-11. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 672, 56, 44, 'published', '2025-07-02 18:37:47.593620', 0, '2025-12-01 18:37:47.593620', '2025-12-01 18:37:47.607534', 1, 6),
(22, 'Prestasi Santri dalam Lomba MTQ', 'prestasi-santri-dalam-lomba-mtq-12-4626', '<p>Ini adalah konten artikel blog ke-12. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.</p>', 'Ini adalah konten artikel blog ke-12. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'blog/featured/2025/12/02/blog_featured_12_2669.jpg', 'Prestasi Santri dalam Lomba MTQ', 'Ini adalah konten artikel blog ke-12. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 155, 14, 22, 'published', '2025-11-07 18:37:47.640845', 0, '2025-12-01 18:37:47.643812', '2025-12-01 18:37:47.643812', 1, 10),
(23, 'Kegiatan Rutin Tadarus Al-Quran', 'kegiatan-rutin-tadarus-al-quran-13-5273', '<p>Ini adalah konten artikel blog ke-13. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.</p>', 'Ini adalah konten artikel blog ke-13. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'blog/featured/2025/12/02/blog_featured_13_3527.jpg', 'Kegiatan Rutin Tadarus Al-Quran', 'Ini adalah konten artikel blog ke-13. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 960, 20, 12, 'draft', '2025-06-07 18:37:47.672743', 0, '2025-12-01 18:37:47.675201', '2025-12-01 18:37:47.675201', 1, 8),
(24, 'Kegiatan Ekstrakurikuler Kaligrafi', 'kegiatan-ekstrakurikuler-kaligrafi-14-9472', '<p>Ini adalah konten artikel blog ke-14. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.</p>', 'Ini adalah konten artikel blog ke-14. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'blog/featured/2025/12/02/blog_featured_14_4404.jpg', 'Kegiatan Ekstrakurikuler Kaligrafi', 'Ini adalah konten artikel blog ke-14. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 738, 32, 9, 'draft', '2025-07-10 18:37:47.708042', 1, '2025-12-01 18:37:47.708042', '2025-12-01 18:37:47.708042', 1, 5),
(25, 'Kunjungan Santri ke Museum Sejarah', 'kunjungan-santri-ke-museum-sejarah-15-5654', '<p>Ini adalah konten artikel blog ke-15. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.</p>', 'Ini adalah konten artikel blog ke-15. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'blog/featured/2025/12/02/blog_featured_15_2701.jpg', 'Kunjungan Santri ke Museum Sejarah', 'Ini adalah konten artikel blog ke-15. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 75, 83, 40, 'draft', NULL, 0, '2025-12-01 18:37:47.743656', '2025-12-01 18:37:47.743656', 1, 6),
(26, 'Kegiatan Rutin Sholat Dhuha Berjamaah', 'kegiatan-rutin-sholat-dhuha-berjamaah-16-7463', '<p>Ini adalah konten artikel blog ke-16. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.</p>', 'Ini adalah konten artikel blog ke-16. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'blog/featured/2025/12/02/blog_featured_16_8853.jpg', 'Kegiatan Rutin Sholat Dhuha Berjamaah', 'Ini adalah konten artikel blog ke-16. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 951, 42, 29, 'published', '2025-09-10 18:37:47.774737', 0, '2025-12-01 18:37:47.774737', '2025-12-01 18:37:47.791456', 1, 8),
(27, 'Prestasi Santri dalam Lomba Cerdas Cermat', 'prestasi-santri-dalam-lomba-cerdas-cermat-17-1928', '<p>Ini adalah konten artikel blog ke-17. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.</p>', 'Ini adalah konten artikel blog ke-17. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'blog/featured/2025/12/02/blog_featured_17_7337.jpg', 'Prestasi Santri dalam Lomba Cerdas Cermat', 'Ini adalah konten artikel blog ke-17. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 721, 70, 35, 'published', '2025-10-22 18:37:47.804955', 0, '2025-12-01 18:37:47.811955', '2025-12-01 18:37:47.813626', 1, 5),
(28, 'Kegiatan Ekstrakurikuler Pencak Silat', 'kegiatan-ekstrakurikuler-pencak-silat-18-6191', '<p>Ini adalah konten artikel blog ke-18. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.</p>', 'Ini adalah konten artikel blog ke-18. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'blog/featured/2025/12/02/blog_featured_18_4998.jpg', 'Kegiatan Ekstrakurikuler Pencak Silat', 'Ini adalah konten artikel blog ke-18. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 470, 51, 39, 'draft', '2025-07-22 18:37:47.825549', 0, '2025-12-01 18:37:47.843955', '2025-12-01 18:37:47.843955', 1, 1),
(29, 'Kegiatan Rutin Sholat Tahajud', 'kegiatan-rutin-sholat-tahajud-19-1560', '<p>Ini adalah konten artikel blog ke-19. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.</p>', 'Ini adalah konten artikel blog ke-19. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'blog/featured/2025/12/02/blog_featured_19_6403.jpg', 'Kegiatan Rutin Sholat Tahajud', 'Ini adalah konten artikel blog ke-19. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 650, 36, 12, 'published', '2025-07-24 18:37:47.885154', 1, '2025-12-01 18:37:47.891388', '2025-12-01 18:37:47.893615', 1, 6),
(30, 'Peringatan Isra Mi\'raj Nabi Muhammad SAW', 'peringatan-isra-miraj-nabi-muhammad-saw-20-5452', '<p>Ini adalah konten artikel blog ke-20. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.</p>', 'Ini adalah konten artikel blog ke-20. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'blog/featured/2025/12/02/blog_featured_20_9134.jpg', 'Peringatan Isra Mi\'raj Nabi Muhammad SAW', 'Ini adalah konten artikel blog ke-20. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 973, 65, 9, 'published', '2025-06-09 18:37:47.907996', 1, '2025-12-01 18:37:47.923495', '2025-12-01 18:37:47.924636', 1, 10),
(31, 'Kegiatan Rutin Sholat Subuh Berjamaah', 'kegiatan-rutin-sholat-subuh-berjamaah-21-5109', '<p>Ini adalah konten artikel blog ke-21. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.</p>', 'Ini adalah konten artikel blog ke-21. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'blog/featured/2025/12/02/blog_featured_21_2125.jpg', 'Kegiatan Rutin Sholat Subuh Berjamaah', 'Ini adalah konten artikel blog ke-21. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 416, 57, 29, 'published', '2025-10-15 18:37:47.944668', 0, '2025-12-01 18:37:47.960056', '2025-12-01 18:37:47.960056', 1, 4),
(32, 'Prestasi Santri dalam Lomba Debat Bahasa Inggris', 'prestasi-santri-dalam-lomba-debat-bahasa-inggris-22-2934', '<p>Ini adalah konten artikel blog ke-22. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.</p>', 'Ini adalah konten artikel blog ke-22. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'blog/featured/2025/12/02/blog_featured_22_4054.jpg', 'Prestasi Santri dalam Lomba Debat Bahasa Inggris', 'Ini adalah konten artikel blog ke-22. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 504, 47, 43, 'published', '2025-06-30 18:37:47.991878', 0, '2025-12-01 18:37:48.000132', '2025-12-01 18:37:48.008125', 1, 6),
(33, 'Kegiatan Ekstrakurikuler Seni Musik Islami', 'kegiatan-ekstrakurikuler-seni-musik-islami-23-7103', '<p>Ini adalah konten artikel blog ke-23. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.</p>', 'Ini adalah konten artikel blog ke-23. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'blog/featured/2025/12/02/blog_featured_23_4740.jpg', 'Kegiatan Ekstrakurikuler Seni Musik Islami', 'Ini adalah konten artikel blog ke-23. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 507, 76, 11, 'published', '2025-06-06 18:37:48.041474', 0, '2025-12-01 18:37:48.041474', '2025-12-01 18:37:48.041474', 1, 10),
(34, 'Kegiatan Rutin Kajian Tafsir Al-Quran', 'kegiatan-rutin-kajian-tafsir-al-quran-24-8668', '<p>Ini adalah konten artikel blog ke-24. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.</p>', 'Ini adalah konten artikel blog ke-24. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'blog/featured/2025/12/02/blog_featured_24_8506.jpg', 'Kegiatan Rutin Kajian Tafsir Al-Quran', 'Ini adalah konten artikel blog ke-24. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 825, 12, 33, 'draft', NULL, 0, '2025-12-01 18:37:48.074711', '2025-12-01 18:37:48.078359', 1, 6),
(35, 'Prestasi Santri dalam Lomba Robotik', 'prestasi-santri-dalam-lomba-robotik-25-9314', '<p>Ini adalah konten artikel blog ke-25. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.</p>', 'Ini adalah konten artikel blog ke-25. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'blog/featured/2025/12/02/blog_featured_25_5713.jpg', 'Prestasi Santri dalam Lomba Robotik', 'Ini adalah konten artikel blog ke-25. Artikel ini membahas tentang berbagai kegiatan dan informasi terkini di pondok pesantren.', 'pondok pesantren, santri, pendidikan islam, kegiatan', '', 50, 76, 24, 'draft', NULL, 0, '2025-12-01 18:37:48.093414', '2025-12-01 18:37:48.093414', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `blog_blogpost_tags`
--

CREATE TABLE `blog_blogpost_tags` (
  `id` bigint(20) NOT NULL,
  `blogpost_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_blogpost_tags`
--

INSERT INTO `blog_blogpost_tags` (`id`, `blogpost_id`, `tag_id`) VALUES
(1, 1, 13),
(3, 2, 1),
(4, 2, 5),
(2, 2, 8),
(5, 2, 14),
(6, 3, 1),
(8, 3, 9),
(7, 3, 13),
(10, 4, 2),
(11, 4, 4),
(9, 4, 8),
(12, 4, 13),
(13, 5, 10),
(14, 5, 12),
(15, 6, 11),
(19, 7, 5),
(16, 7, 8),
(17, 7, 10),
(18, 7, 11),
(20, 8, 14),
(24, 9, 7),
(21, 9, 8),
(22, 9, 10),
(23, 9, 14),
(25, 10, 3),
(26, 10, 6),
(27, 10, 15),
(28, 11, 5),
(29, 11, 15),
(30, 12, 4),
(31, 12, 7),
(32, 13, 3),
(33, 14, 8),
(34, 14, 14),
(35, 14, 15),
(38, 15, 6),
(36, 15, 9),
(37, 15, 13),
(40, 16, 3),
(41, 16, 4),
(42, 16, 5),
(39, 16, 8),
(44, 17, 6),
(43, 17, 11),
(45, 18, 13),
(46, 19, 5),
(47, 19, 6),
(48, 20, 8),
(49, 20, 15),
(51, 21, 6),
(50, 21, 8),
(53, 22, 3),
(52, 22, 10),
(54, 22, 12),
(55, 22, 13),
(56, 23, 8),
(58, 24, 2),
(57, 24, 9),
(59, 25, 3),
(60, 25, 4),
(61, 25, 7),
(62, 26, 6),
(63, 26, 15),
(64, 27, 2),
(67, 27, 7),
(65, 27, 11),
(66, 27, 15),
(70, 28, 1),
(71, 28, 6),
(68, 28, 9),
(69, 28, 10),
(74, 29, 6),
(75, 29, 7),
(72, 29, 11),
(73, 29, 12),
(76, 30, 2),
(77, 31, 3),
(78, 32, 6),
(79, 32, 7),
(80, 33, 14),
(81, 34, 1),
(82, 34, 11),
(83, 34, 14),
(84, 34, 15),
(85, 35, 1),
(86, 35, 5),
(87, 35, 7);

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`id`, `name`, `slug`, `order`, `created_at`) VALUES
(1, 'Pendidikan', 'pendidikan', 1, '2025-12-01 17:44:14.070582'),
(2, 'Kegiatan', 'kegiatan', 2, '2025-12-01 17:44:14.072048'),
(3, 'Prestasi', 'prestasi', 3, '2025-12-01 17:44:14.074355'),
(4, 'Berita', 'berita', 4, '2025-12-01 17:44:14.076550'),
(5, 'Pengumuman', 'pengumuman', 5, '2025-12-01 17:44:14.079879'),
(6, 'Kegiatan Harian', 'kegiatan-harian', 6, '2025-12-01 17:44:14.081226'),
(7, 'Ekstrakurikuler', 'ekstrakurikuler', 7, '2025-12-01 17:44:14.083572'),
(8, 'Kajian', 'kajian', 8, '2025-12-01 17:44:14.084849'),
(9, 'Kegiatan Rutin', 'kegiatan-rutin', 9, '2025-12-01 17:44:14.087254'),
(10, 'Informasi Umum', 'informasi-umum', 10, '2025-12-01 17:44:14.088173');

-- --------------------------------------------------------

--
-- Table structure for table `blog_pengumuman`
--

CREATE TABLE `blog_pengumuman` (
  `id` bigint(20) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `konten` longtext NOT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `is_penting` tinyint(1) NOT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `meta_title` varchar(200) NOT NULL,
  `meta_description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_pengumuman`
--

INSERT INTO `blog_pengumuman` (`id`, `judul`, `slug`, `konten`, `gambar`, `status`, `is_penting`, `published_at`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Pengumuman Penerimaan Santri Baru Tahun Ajaran 2024', 'pengumuman-penerimaan-santri-baru-tahun-ajaran-2024-1-4601', '<p>Dengan hormat, kami sampaikan bahwa Pondok Pesantren membuka pendaftaran santri baru untuk tahun ajaran 2024/2025.</p>\n            <p><strong>Persyaratan:</strong></p>\n            <ul>\n                <li>Usia minimal 7 tahun untuk jenjang SD</li>\n                <li>Membawa fotocopy akta kelahiran</li>\n                <li>Membawa fotocopy KTP orang tua</li>\n                <li>Membawa pas foto 3x4 sebanyak 2 lembar</li>\n            </ul>\n            <p>Pendaftaran dibuka mulai tanggal 1 Januari 2024. Untuk informasi lebih lanjut, silakan hubungi panitia pendaftaran.</p>', '', 'draft', 0, '2025-11-25 17:44:14.168313', 'Pengumuman Penerimaan Santri Baru Tahun Ajaran 2024', 'Dengan hormat, kami sampaikan bahwa Pondok Pesantren membuka pendaftaran santri baru untuk tahun ajaran 2024/2025.\n            Persyaratan:', '2025-12-01 17:44:14.169317', '2025-12-01 17:44:14.169317'),
(2, 'Pengumuman Libur Hari Raya Idul Fitri 1445 H', 'pengumuman-libur-hari-raya-idul-fitri-1445-h-2-8527', '<p>Dengan hormat, kami sampaikan bahwa Pondok Pesantren akan libur dalam rangka menyambut Hari Raya Idul Fitri 1445 H.</p>\n            <p><strong>Jadwal Libur:</strong></p>\n            <ul>\n                <li>Mulai: 8 April 2024</li>\n                <li>Selesai: 15 April 2024</li>\n                <li>Masuk kembali: 16 April 2024</li>\n            </ul>\n            <p>Selama libur, santri diharapkan tetap menjaga ibadah dan tidak lupa mengaji. Selamat Hari Raya Idul Fitri, mohon maaf lahir dan batin.</p>', '', 'draft', 1, NULL, 'Pengumuman Libur Hari Raya Idul Fitri 1445 H', 'Dengan hormat, kami sampaikan bahwa Pondok Pesantren akan libur dalam rangka menyambut Hari Raya Idul Fitri 1445 H.\n            Jadwal Libur:', '2025-12-01 17:44:14.170313', '2025-12-01 17:44:14.170313'),
(3, 'Pengumuman Kegiatan Muhadhoroh Bulan Ini', 'pengumuman-kegiatan-muhadhoroh-bulan-ini-3-9995', '<p>Kepada seluruh santri, kami mengundang untuk mengikuti kegiatan Muhadhoroh (Latihan Pidato) yang akan dilaksanakan:</p>\n            <p><strong>Waktu:</strong> Setiap Sabtu malam<br>\n            <strong>Tempat:</strong> Aula Pondok Pesantren<br>\n            <strong>Peserta:</strong> Semua santri</p>\n            <p>Kegiatan ini bertujuan untuk melatih kemampuan public speaking santri. Diharapkan semua santri dapat mengikuti dengan baik.</p>', '', 'published', 0, '2025-10-21 17:44:14.171322', 'Pengumuman Kegiatan Muhadhoroh Bulan Ini', 'Kepada seluruh santri, kami mengundang untuk mengikuti kegiatan Muhadhoroh (Latihan Pidato) yang akan dilaksanakan:\n            Waktu: Setiap Sabtu malam\n            <st', '2025-12-01 17:44:14.172351', '2025-12-01 17:44:14.172351'),
(4, 'Pengumuman Hasil Seleksi Santri Baru', 'pengumuman-hasil-seleksi-santri-baru-4-3168', '<p>Dengan hormat, kami sampaikan hasil seleksi santri baru tahun ajaran 2024/2025.</p>\n            <p>Hasil seleksi dapat dilihat di papan pengumuman atau melalui website resmi pondok pesantren.</p>\n            <p>Bagi yang dinyatakan lulus, diharapkan segera melakukan daftar ulang sesuai jadwal yang telah ditentukan.</p>\n            <p>Selamat kepada santri yang dinyatakan lulus. Bagi yang belum lulus, jangan berkecil hati dan tetap semangat.</p>', '', 'published', 0, '2025-10-04 17:44:14.172351', 'Pengumuman Hasil Seleksi Santri Baru', 'Dengan hormat, kami sampaikan hasil seleksi santri baru tahun ajaran 2024/2025.\n            Hasil seleksi dapat dilihat di papan pengumuman atau melalui website resmi pondok pesantren.', '2025-12-01 17:44:14.173353', '2025-12-01 17:44:14.173353'),
(5, 'Pengumuman Kegiatan Outbound Santri', 'pengumuman-kegiatan-outbound-santri-5-9329', '<p>Kepada seluruh santri, kami mengundang untuk mengikuti kegiatan outbound yang akan dilaksanakan:</p>\n            <p><strong>Waktu:</strong> 15-17 Maret 2024<br>\n            <strong>Tempat:</strong> Gunung Lawu<br>\n            <strong>Biaya:</strong> Rp 500.000 per santri</p>\n            <p>Kegiatan ini bertujuan untuk melatih kemandirian dan kerja sama tim. Diharapkan semua santri dapat mengikuti.</p>', '', 'draft', 0, '2025-11-15 17:44:14.174422', 'Pengumuman Kegiatan Outbound Santri', 'Kepada seluruh santri, kami mengundang untuk mengikuti kegiatan outbound yang akan dilaksanakan:\n            Waktu: 15-17 Maret 2024\n            Tempat:', '2025-12-01 17:44:14.174422', '2025-12-01 17:44:14.174422'),
(6, 'Pengumuman Libur Semester Ganjil', 'pengumuman-libur-semester-ganjil-6-2840', '<p>Ini adalah konten pengumuman ke-6. Pengumuman ini berisi informasi penting untuk seluruh santri dan wali santri.</p>', '', 'draft', 0, '2025-09-23 17:44:14.175692', 'Pengumuman Libur Semester Ganjil', 'Ini adalah konten pengumuman ke-6. Pengumuman ini berisi informasi penting untuk seluruh santri dan wali santri.', '2025-12-01 17:44:14.175692', '2025-12-01 17:44:14.175692'),
(7, 'Pengumuman Kegiatan Bakti Sosial', 'pengumuman-kegiatan-bakti-sosial-7-4013', '<p>Ini adalah konten pengumuman ke-7. Pengumuman ini berisi informasi penting untuk seluruh santri dan wali santri.</p>', '', 'published', 0, '2025-10-20 17:44:14.177152', 'Pengumuman Kegiatan Bakti Sosial', 'Ini adalah konten pengumuman ke-7. Pengumuman ini berisi informasi penting untuk seluruh santri dan wali santri.', '2025-12-01 17:44:14.178151', '2025-12-01 17:44:14.178151'),
(8, 'Pengumuman Peringatan Maulid Nabi', 'pengumuman-peringatan-maulid-nabi-8-4736', '<p>Ini adalah konten pengumuman ke-8. Pengumuman ini berisi informasi penting untuk seluruh santri dan wali santri.</p>', '', 'published', 1, '2025-11-11 17:44:14.179299', 'Pengumuman Peringatan Maulid Nabi', 'Ini adalah konten pengumuman ke-8. Pengumuman ini berisi informasi penting untuk seluruh santri dan wali santri.', '2025-12-01 17:44:14.179299', '2025-12-01 17:44:14.179299'),
(9, 'Pengumuman Kegiatan Ekstrakurikuler', 'pengumuman-kegiatan-ekstrakurikuler-9-9723', '<p>Ini adalah konten pengumuman ke-9. Pengumuman ini berisi informasi penting untuk seluruh santri dan wali santri.</p>', '', 'draft', 0, NULL, 'Pengumuman Kegiatan Ekstrakurikuler', 'Ini adalah konten pengumuman ke-9. Pengumuman ini berisi informasi penting untuk seluruh santri dan wali santri.', '2025-12-01 17:44:14.180798', '2025-12-01 17:44:14.180798'),
(10, 'Pengumuman Ujian Tengah Semester', 'pengumuman-ujian-tengah-semester-10-5044', '<p>Ini adalah konten pengumuman ke-10. Pengumuman ini berisi informasi penting untuk seluruh santri dan wali santri.</p>', '', 'published', 0, '2025-11-12 17:44:14.182130', 'Pengumuman Ujian Tengah Semester', 'Ini adalah konten pengumuman ke-10. Pengumuman ini berisi informasi penting untuk seluruh santri dan wali santri.', '2025-12-01 17:44:14.182130', '2025-12-01 17:44:14.182130');

-- --------------------------------------------------------

--
-- Table structure for table `blog_tag`
--

CREATE TABLE `blog_tag` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_tag`
--

INSERT INTO `blog_tag` (`id`, `name`, `slug`, `order`, `created_at`) VALUES
(1, 'Pondok Pesantren', 'pondok-pesantren', 1, '2025-12-01 17:44:14.091295'),
(2, 'Santri', 'santri', 2, '2025-12-01 17:44:14.093307'),
(3, 'Pendidikan Islam', 'pendidikan-islam', 3, '2025-12-01 17:44:14.095909'),
(4, 'Kegiatan', 'kegiatan', 4, '2025-12-01 17:44:14.098663'),
(5, 'Prestasi', 'prestasi', 5, '2025-12-01 17:44:14.100665'),
(6, 'Alumni', 'alumni', 6, '2025-12-01 17:44:14.101664'),
(7, 'Kajian', 'kajian', 7, '2025-12-01 17:44:14.104177'),
(8, 'Ekstrakurikuler', 'ekstrakurikuler', 8, '2025-12-01 17:44:14.105389'),
(9, 'Berita', 'berita', 9, '2025-12-01 17:44:14.107730'),
(10, 'Pengumuman', 'pengumuman', 10, '2025-12-01 17:44:14.109154'),
(11, 'Kegiatan Harian', 'kegiatan-harian', 11, '2025-12-01 17:44:14.111767'),
(12, 'Kegiatan Rutin', 'kegiatan-rutin', 12, '2025-12-01 17:44:14.113918'),
(13, 'Informasi', 'informasi', 13, '2025-12-01 17:44:14.116493'),
(14, 'Acara', 'acara', 14, '2025-12-01 17:44:14.117818'),
(15, 'Event', 'event', 15, '2025-12-01 17:44:14.119096');

-- --------------------------------------------------------

--
-- Table structure for table `blog_testimoni`
--

CREATE TABLE `blog_testimoni` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `jabatan` varchar(200) NOT NULL,
  `testimoni` longtext NOT NULL,
  `rating` int(10) UNSIGNED NOT NULL CHECK (`rating` >= 0),
  `is_published` tinyint(1) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_testimoni`
--

INSERT INTO `blog_testimoni` (`id`, `nama`, `foto`, `jabatan`, `testimoni`, `rating`, `is_published`, `order`, `created_at`) VALUES
(1, 'Ahmad Fauzi', '', 'Alumni 2020', 'Pondok pesantren ini memberikan pendidikan yang sangat baik. Anak saya menjadi lebih disiplin dan rajin belajar. Terima kasih kepada semua ustadz dan ustadzah yang telah membimbing.', 5, 1, 1, '2025-12-01 17:44:14.158928'),
(2, 'Siti Nurhaliza', '', 'Alumni 2019', 'Saya sangat puas dengan pendidikan di pondok ini. Anak saya tidak hanya pintar dalam pelajaran agama, tapi juga dalam pelajaran umum. Prestasinya meningkat drastis.', 5, 0, 2, '2025-12-01 17:44:14.160926'),
(3, 'Muhammad Rizki', '', 'Alumni 2021', 'Sebagai alumni, saya sangat bangga dengan pondok pesantren ini. Pendidikan yang saya dapatkan sangat bermanfaat untuk kehidupan saya sekarang.', 5, 1, 3, '2025-12-01 17:44:14.162108'),
(4, 'Fatimah Azzahra', '', 'Alumni 2018', 'Pondok pesantren ini memiliki lingkungan yang sangat kondusif untuk belajar. Anak saya betah dan semangat belajar setiap hari.', 5, 1, 4, '2025-12-01 17:44:14.162108'),
(5, 'Abdullah Hadi', '', 'Alumni 2022', 'Saya merekomendasikan pondok pesantren ini untuk semua orang tua yang ingin memberikan pendidikan terbaik untuk anaknya.', 5, 1, 5, '2025-12-01 17:44:14.163445'),
(6, 'Aisyah Putri', '', 'Wali Santri', 'Pendidikan karakter di pondok ini sangat baik. Anak saya menjadi lebih sopan, disiplin, dan bertanggung jawab.', 5, 1, 6, '2025-12-01 17:44:14.164453'),
(7, 'Umar Faruq', '', 'Alumni 2017', 'Sebagai wali santri, saya sangat senang melihat perkembangan anak saya. Dia menjadi lebih mandiri dan percaya diri.', 5, 1, 7, '2025-12-01 17:44:14.164453'),
(8, 'Khadijah Salsabila', '', 'Alumni 2023', 'Pondok pesantren ini tidak hanya mengajarkan ilmu agama, tapi juga ilmu umum. Anak saya mendapatkan pendidikan yang seimbang.', 5, 1, 8, '2025-12-01 17:44:14.165453'),
(9, 'Ali Akbar', '', 'Alumni 2016', 'Saya sangat berterima kasih kepada semua ustadz dan ustadzah yang telah membimbing anak saya dengan sabar dan telaten.', 5, 1, 9, '2025-12-01 17:44:14.166763'),
(10, 'Maryam Zahra', '', 'Wali Santri', 'Pondok pesantren ini memiliki fasilitas yang lengkap dan modern. Anak saya sangat nyaman belajar di sini.', 5, 1, 10, '2025-12-01 17:44:14.167267');

-- --------------------------------------------------------

--
-- Table structure for table `core_alurpendaftaran`
--

CREATE TABLE `core_alurpendaftaran` (
  `id` bigint(20) NOT NULL,
  `gambar_utama` varchar(100) DEFAULT NULL,
  `alur_pendaftaran` longtext NOT NULL,
  `tahapan_tes` longtext NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_alurpendaftaran`
--

INSERT INTO `core_alurpendaftaran` (`id`, `gambar_utama`, `alur_pendaftaran`, `tahapan_tes`, `updated_at`) VALUES
(1, '', '<ol>\n<li>Calon santri mendaftar secara langsung/online</li>\n<li>Membayar dana formulir/uang pangkal</li>\n<li>Melengkapi formulir pendaftaran</li>\n<li>Menyerahkan persyaratan dokumen ketika validasi di kantor PPSB</li>\n</ol>\n<p><em>*Pendaftaran online melalui admin whatsapp panitia penerimaan santri baru (PPSB)</em></p>', '', '2025-12-01 17:44:13.908735');

-- --------------------------------------------------------

--
-- Table structure for table `core_bagianjabatan`
--

CREATE TABLE `core_bagianjabatan` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_bagianjabatan`
--

INSERT INTO `core_bagianjabatan` (`id`, `nama`, `deskripsi`, `order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Pendiri', 'Pendiri pesantren', 1, 1, '2025-12-01 17:44:13.978693', '2025-12-01 17:44:13.978693'),
(2, 'Pimpinan', 'Pimpinan pesantren', 2, 1, '2025-12-01 17:44:13.980162', '2025-12-01 17:44:13.980162'),
(3, 'Kepala Sekolah', 'Kepala sekolah pesantren', 3, 1, '2025-12-01 17:44:13.982538', '2025-12-01 17:44:13.982538'),
(4, 'Wakil Kepala Sekolah', 'Wakil kepala sekolah', 4, 1, '2025-12-01 17:44:13.983614', '2025-12-01 17:44:13.983614'),
(5, 'Ustadz Senior', 'Ustadz senior dengan pengalaman mengajar lama', 5, 1, '2025-12-01 17:44:13.985976', '2025-12-01 17:44:13.985976'),
(6, 'Ustadzah Senior', 'Ustadzah senior dengan pengalaman mengajar lama', 6, 1, '2025-12-01 17:44:13.987102', '2025-12-01 17:44:13.987102'),
(7, 'Ustadz', 'Tenaga pengajar laki-laki', 7, 1, '2025-12-01 17:44:13.988421', '2025-12-01 17:44:13.988421'),
(8, 'Ustadzah', 'Tenaga pengajar perempuan', 8, 1, '2025-12-01 17:44:13.990825', '2025-12-01 17:44:13.990825'),
(9, 'Guru Agama', 'Guru mata pelajaran agama', 9, 1, '2025-12-01 17:44:13.991864', '2025-12-01 17:44:13.991864'),
(10, 'Guru Umum', 'Guru mata pelajaran umum', 10, 1, '2025-12-01 17:44:13.994533', '2025-12-01 17:44:13.994533');

-- --------------------------------------------------------

--
-- Table structure for table `core_biayapendidikan`
--

CREATE TABLE `core_biayapendidikan` (
  `id` bigint(20) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jumlah` decimal(12,0) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_biayapendidikan`
--

INSERT INTO `core_biayapendidikan` (`id`, `tipe`, `nama`, `jumlah`, `keterangan`, `order`, `created_at`) VALUES
(36, 'tahunan', 'Uang Pangkal', 250000, 'Biaya pendaftaran', 1, '2025-12-01 17:44:13.910863'),
(37, 'tahunan', 'Uang Pembangunan', 1500000, 'Biaya pembangunan', 2, '2025-12-01 17:44:13.912091'),
(38, 'tahunan', 'Uang Kertas', 200000, 'Biaya untuk 1 semester', 3, '2025-12-01 17:44:13.914487'),
(39, 'tahunan', 'Uang Kegiatan', 200000, 'Biaya untuk 1 semester', 4, '2025-12-01 17:44:13.915784'),
(40, 'bulanan', 'Uang SPP', 200000, 'Biaya bulanan', 1, '2025-12-01 17:44:13.918350'),
(41, 'bulanan', 'Iuran Makan', 600000, 'Biaya bulanan', 2, '2025-12-01 17:44:13.919531'),
(42, 'bulanan', 'Iuran Listrik & Air', 50000, 'Biaya bulanan', 3, '2025-12-01 17:44:13.920709');

-- --------------------------------------------------------

--
-- Table structure for table `core_contactperson`
--

CREATE TABLE `core_contactperson` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `no_hp` varchar(20) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_contactperson`
--

INSERT INTO `core_contactperson` (`id`, `nama`, `foto`, `no_hp`, `order`, `is_active`, `created_at`) VALUES
(9, 'Ust. Mohd Hafiz, S.Th.I., M.Pd', '', '081226985992', 1, 1, '2025-12-01 17:44:13.930407'),
(10, 'Ust. Irvan Noordianto, S.Pd.I', '', '081371913190', 2, 1, '2025-12-01 17:44:13.931708');

-- --------------------------------------------------------

--
-- Table structure for table `core_dokumentasi`
--

CREATE TABLE `core_dokumentasi` (
  `id` bigint(20) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `tanggal_kegiatan` date DEFAULT NULL,
  `lokasi` varchar(200) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `is_published` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_dokumentasiimage`
--

CREATE TABLE `core_dokumentasiimage` (
  `id` bigint(20) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `alt_text` varchar(200) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `created_at` datetime(6) NOT NULL,
  `dokumentasi_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_ekstrakurikuler`
--

CREATE TABLE `core_ekstrakurikuler` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_ekstrakurikuler`
--

INSERT INTO `core_ekstrakurikuler` (`id`, `nama`, `icon`, `order`, `created_at`) VALUES
(57, 'Kepramukaan', 'fas fa-campground', 1, '2025-12-01 17:44:13.874921'),
(58, 'Pidato 3 bahasa', 'fas fa-microphone-alt', 2, '2025-12-01 17:44:13.877238'),
(59, 'Kursus MC', 'fas fa-user-tie', 3, '2025-12-01 17:44:13.879409'),
(60, 'Jam\'iyyatu-l-qurra', 'fas fa-book-reader', 4, '2025-12-01 17:44:13.881412'),
(61, 'Jam\'iyyatu-l-khutoba', 'fas fa-bullhorn', 5, '2025-12-01 17:44:13.883413'),
(62, 'Klub sepak bola', 'fas fa-futbol', 6, '2025-12-01 17:44:13.885413'),
(63, 'Menari', 'fas fa-walking', 7, '2025-12-01 17:44:13.886413');

-- --------------------------------------------------------

--
-- Table structure for table `core_ekstrakurikulerimage`
--

CREATE TABLE `core_ekstrakurikulerimage` (
  `id` bigint(20) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `alt_text` varchar(200) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `created_at` datetime(6) NOT NULL,
  `ekstrakurikuler_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_faq`
--

CREATE TABLE `core_faq` (
  `id` bigint(20) NOT NULL,
  `pertanyaan` varchar(500) NOT NULL,
  `jawaban` longtext NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `is_published` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_faq`
--

INSERT INTO `core_faq` (`id`, `pertanyaan`, `jawaban`, `kategori`, `order`, `is_published`, `created_at`) VALUES
(13, 'Apakah ada periode khusus untuk pendaftaran?', 'Pendaftaran santri baru untuk tahun ajaran 2025/2026 dibuka mulai Januari 2025 sampai Juli 2025. Namun, kuota terbatas, jadi disarankan untuk mendaftar lebih awal.', 'Pendaftaran', 1, 1, '2025-12-01 17:44:13.939628'),
(14, 'Apakah ada ujian masuk untuk calon santri?', 'Ya, calon santri akan menjalani ujian seleksi yang meliputi tes kemampuan akademik, tes baca Al-Qur\'an, dan wawancara. Hasil tes akan diinformasikan paling lambat satu minggu setelah pelaksanaan.', 'Pendaftaran', 2, 1, '2025-12-01 17:44:13.941644'),
(15, 'Apakah santri diperbolehkan membawa gadget/HP?', 'Untuk menjaga fokus belajar dan kedisiplinan, santri tidak diperbolehkan membawa gadget atau HP selama di pesantren. Komunikasi dengan orang tua dapat dilakukan melalui telepon pesantren atau pada saat kunjungan.', 'Peraturan', 3, 1, '2025-12-01 17:44:13.943647'),
(16, 'Bagaimana jadwal kunjungan orang tua?', 'Jadwal kunjungan orang tua diadakan setiap bulan pada minggu pertama. Orang tua juga dapat berkunjung di luar jadwal tersebut dengan izin dari pihak pesantren.', 'Kunjungan', 4, 1, '2025-12-01 17:44:13.945665'),
(17, 'Apakah tersedia beasiswa untuk santri berprestasi?', 'Ya, pesantren menyediakan beasiswa untuk santri berprestasi. Persyaratan dan ketentuan beasiswa dapat ditanyakan langsung kepada panitia pendaftaran.', 'Beasiswa', 5, 1, '2025-12-01 17:44:13.946665'),
(18, 'Bagaimana dengan fasilitas kesehatan di pesantren?', 'Pesantren Modern Raudhatussalam memiliki klinik kesehatan dengan tenaga medis yang siap 24 jam. Untuk kasus yang memerlukan penanganan lebih lanjut, santri akan dirujuk ke rumah sakit terdekat dengan persetujuan wali santri.', 'Fasilitas', 6, 1, '2025-12-01 17:44:13.948871');

-- --------------------------------------------------------

--
-- Table structure for table `core_fasilitas`
--

CREATE TABLE `core_fasilitas` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_fasilitas`
--

INSERT INTO `core_fasilitas` (`id`, `nama`, `icon`, `gambar`, `order`, `created_at`) VALUES
(97, 'Masjid', 'fas fa-mosque', '', 1, '2025-12-01 17:44:13.850558'),
(98, 'Ruang Kelas', 'fas fa-chalkboard', '', 2, '2025-12-01 17:44:13.852758'),
(99, 'Asrama', 'fas fa-bed', '', 3, '2025-12-01 17:44:13.854758'),
(100, 'Kamar Mandi', 'fas fa-shower', '', 4, '2025-12-01 17:44:13.855896'),
(101, 'Lab. Komputer', 'fas fa-laptop', '', 5, '2025-12-01 17:44:13.858488'),
(102, 'Lapangan Sepak Bola', 'fas fa-futbol', '', 6, '2025-12-01 17:44:13.860925'),
(103, 'Lapangan Basket', 'fas fa-basketball-ball', '', 7, '2025-12-01 17:44:13.864164'),
(104, 'Lapangan Voli', 'fas fa-volleyball-ball', '', 8, '2025-12-01 17:44:13.865162'),
(105, 'Lapangan Badminton', 'fas fa-table-tennis', '', 9, '2025-12-01 17:44:13.867595'),
(106, 'Lapangan Takraw', 'fas fa-football-ball', '', 10, '2025-12-01 17:44:13.869684'),
(107, 'Klinik Kesehatan', 'fas fa-first-aid', '', 11, '2025-12-01 17:44:13.871979'),
(108, 'Perpustakaan', 'fas fa-book', '', 12, '2025-12-01 17:44:13.873773');

-- --------------------------------------------------------

--
-- Table structure for table `core_herosection`
--

CREATE TABLE `core_herosection` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `subtitle` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_herosection`
--

INSERT INTO `core_herosection` (`id`, `title`, `subtitle`, `image`, `order`, `is_active`, `created_at`) VALUES
(29, 'Gerbang Pesantren', 'Selamat Datang di Pesantren Modern Raudhatussalam', 'img/gerbang.png', 1, 1, '2025-12-01 17:44:13.824895'),
(30, 'Asrama Pesantren', 'Fasilitas Asrama yang Nyaman untuk Santri', 'img/rusunawa.png', 2, 1, '2025-12-01 17:44:13.826778'),
(31, 'Pimpinan Pesantren', 'Kepemimpinan yang Berpengalaman', 'img/pimpinan.png', 3, 1, '2025-12-01 17:44:13.829085');

-- --------------------------------------------------------

--
-- Table structure for table `core_informasitambahan`
--

CREATE TABLE `core_informasitambahan` (
  `id` bigint(20) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `icon` varchar(100) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `is_published` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_jadwalharian`
--

CREATE TABLE `core_jadwalharian` (
  `id` bigint(20) NOT NULL,
  `waktu` varchar(50) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_jadwalharian`
--

INSERT INTO `core_jadwalharian` (`id`, `waktu`, `judul`, `deskripsi`, `kategori`, `order`, `created_at`) VALUES
(71, '04.00-06.00', 'Aktivitas Pagi', 'Sholat subuh berjamaah dilanjutkan dengan tadarus Al-Qur\'an, Muhadatsah dan juga piket kelas/olahraga', 'santri', 1, '2025-12-01 17:44:13.888413'),
(72, '06.00-07.30', 'Persiapan Sekolah', 'Mandi, sarapan pagi dan perisapan untuk berangkat ke sekolah', 'santri', 2, '2025-12-01 17:44:13.890434'),
(73, '07.30-12.15', 'KBM Pagi', 'Kegiatan belajar mengajar (KBM) di ruangan kelas', 'santri', 3, '2025-12-01 17:44:13.892446'),
(74, '12.15-14.15', 'Istirahat Siang', 'Sholat dzuhur berjamaah di kamar, dilanjutkan makan siang di dapur', 'santri', 4, '2025-12-01 17:44:13.894490'),
(75, '14.15-15.00', 'KBM Siang', 'Kegiatan belajar mengajar (KBM) di ruangan kelas', 'santri', 5, '2025-12-01 17:44:13.895896'),
(76, '15.00-16.00', 'Aktivitas Ashar', 'Sholat ashar berjamaah dilanjutkan dengan tadarus Al-Qur\'an', 'santri', 6, '2025-12-01 17:44:13.898477'),
(77, '16.00-17.15', 'Ekstrakurikuler', 'Olahraga atau kegiatan ekstrakurikuler sesuai dengan jadwal', 'santri', 7, '2025-12-01 17:44:13.899881'),
(78, '17.15-17.45', 'Persiapan Magrib', 'Mandi dan persiapan sholat magrib di masjid', 'santri', 8, '2025-12-01 17:44:13.901881'),
(79, '17.45-19.00', 'Aktivitas Magrib', 'Sholat magrib berjamaah di masjid, tadarus Al-Qur\'an dan dilanjutkan dengan makan malam di dapur', 'santri', 9, '2025-12-01 17:44:13.903880'),
(80, '19.00-21.30', 'Belajar Malam', 'Sholat isya berjamaah di kamar, dan dilanjutkan dengan belajar malam terbimbing', 'santri', 10, '2025-12-01 17:44:13.905066');

-- --------------------------------------------------------

--
-- Table structure for table `core_kmi`
--

CREATE TABLE `core_kmi` (
  `id` bigint(20) NOT NULL,
  `visi_kmi` longtext NOT NULL,
  `profil_kmi` longtext NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_kmi`
--

INSERT INTO `core_kmi` (`id`, `visi_kmi`, `profil_kmi`, `updated_at`) VALUES
(1, '<p>Mewujudkan generasi beriman dan berilmu pengetahuan serta mampu menghadapi tantangan global</p>', '<ul>\n<li><strong>Kulliyatu-l-Mu\'allimin wal Mu\'alliat Al-Islamiyah (KMI)</strong> menawarkan program pendidikan 6 tahun untuk lulusan SD/MI, dan 3 tahun untuk lulusan SMP/MTs.</li>\n<li><strong>Kurikulum terpadu.</strong> Mengintegrasikan kurikulum pesantren dengan kurikulum nasional, memberikan pendidikan seimbang dan berkualitas.</li>\n<li><strong>Pengelolaan santri 24 jam.</strong> Dengan sistem pengelolaan santri selama 24 jam, KMI memastikan pendidikan yang menyeluruh, mencakup aspek intelektual, keterampilan, dan spiritualitas.</li>\n<li><strong>Menyiapkan generasi berkualitas.</strong> Kami berkomitmen untuk menyiapkan generasi yang beraqidah shohihah, berakhlak mulia, gemar beribadah, berilmu, dan berjiwa terampil.</li>\n<li><strong>Lulusan siap melanjutkan atau mengabdi.</strong> Lulusan KMI Raudhatussalam diharapkan mampu melanjutkan pendidikan ke perguruan tinggi ataupun aktif berperan di masyarakat dengan ilmu yang telah didapat.</li>\n</ul>', '2025-12-01 17:44:13.848358');

-- --------------------------------------------------------

--
-- Table structure for table `core_kontak`
--

CREATE TABLE `core_kontak` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `subjek` varchar(200) NOT NULL,
  `pesan` longtext NOT NULL,
  `status` varchar(20) NOT NULL,
  `balasan` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_media`
--

CREATE TABLE `core_media` (
  `id` bigint(20) NOT NULL,
  `tipe` varchar(10) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `sub_judul` varchar(300) NOT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `video_file` varchar(100) DEFAULT NULL,
  `featured_image` varchar(100) DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `is_published` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_persyaratan`
--

CREATE TABLE `core_persyaratan` (
  `id` bigint(20) NOT NULL,
  `persyaratan_santri` longtext NOT NULL,
  `persyaratan_santriwati` longtext NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_persyaratan`
--

INSERT INTO `core_persyaratan` (`id`, `persyaratan_santri`, `persyaratan_santriwati`, `updated_at`) VALUES
(1, '<ol>\n<li>Fotokopi kartu keluarga (KK) dan KTP kedua orangtua (dua lembar)</li>\n<li>Fotokopi akte kelahiran (dua lembar)</li>\n<li>Fotokopi ijazah/Surat keterangan lulus (SKL) dua lembar</li>\n<li>Pasfoto 3x4 background merah (tiga lembar)</li>\n<li>Berbadan sehat jasmani dan rohani</li>\n<li>Sanggup bertempat tinggal di asrama yang telah disediakan</li>\n</ol>\n<h4>Mutasi:</h4>\n<ol>\n<li>Surat pindah dari sekolah asal atau Emis/Dapodik</li>\n<li>Raport Negeri Legalisir 1 lembar</li>\n</ol>', '<ol>\n<li>Fotokopi kartu keluarga (KK) dan KTP kedua orangtua (dua lembar)</li>\n<li>Fotokopi akte kelahiran (dua lembar)</li>\n<li>Fotokopi ijazah/Surat keterangan lulus (SKL) dua lembar</li>\n<li>Pasfoto 3x4 background merah (tiga lembar)</li>\n<li>Berbadan sehat jasmani dan rohani</li>\n<li>Sanggup bertempat tinggal di asrama yang telah disediakan</li>\n</ol>\n<h4>Mutasi:</h4>\n<ol>\n<li>Surat pindah dari sekolah asal atau Emis/Dapodik</li>\n<li>Raport Negeri Legalisir 1 lembar</li>\n</ol>', '2025-12-01 17:44:13.906315');

-- --------------------------------------------------------

--
-- Table structure for table `core_program`
--

CREATE TABLE `core_program` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `meta_title` varchar(200) NOT NULL,
  `meta_description` longtext NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_programpendidikan`
--

CREATE TABLE `core_programpendidikan` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `akreditasi` varchar(50) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_programpendidikan`
--

INSERT INTO `core_programpendidikan` (`id`, `nama`, `akreditasi`, `icon`, `gambar`, `order`, `created_at`) VALUES
(41, 'Sekolah Dasar Islam Terpadu (SDIT)', 'B', 'fas fa-school', '', 1, '2025-12-01 17:44:13.838651'),
(42, 'Madrasah Diniyah Takmiliyah Awaliyah (MDTA)', '-', 'fas fa-book', '', 2, '2025-12-01 17:44:13.839698'),
(43, 'Madrasah Tsanawiyah (MTs)', 'B', 'fas fa-graduation-cap', '', 3, '2025-12-01 17:44:13.842099'),
(44, 'Madrasah Aliyah (MA)', 'B', 'fas fa-university', '', 4, '2025-12-01 17:44:13.844489'),
(45, 'Perguruan tinggi (Universitas Darunnajah Jakarta)', '-', 'fas fa-building', '', 5, '2025-12-01 17:44:13.845776');

-- --------------------------------------------------------

--
-- Table structure for table `core_programpendidikanimage`
--

CREATE TABLE `core_programpendidikanimage` (
  `id` bigint(20) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `alt_text` varchar(200) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `created_at` datetime(6) NOT NULL,
  `program_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_sejarahtimeline`
--

CREATE TABLE `core_sejarahtimeline` (
  `id` bigint(20) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_sejarahtimeline`
--

INSERT INTO `core_sejarahtimeline` (`id`, `judul`, `icon`, `deskripsi`, `order`, `created_at`) VALUES
(26, 'Awal Mula', 'fas fa-history', 'Bermula dari kunjungan Pimpinan Pondok Modern Darussalam Gontor Ponorogo Jawa Timur, Dr. K.H. Abdullah Syukry Zarkasyi, M.A. Meninjau langsung keberadaan lembaga-lembaga pendidikan yang ada di Mahato, maka beliau menyampaikan keinginannya akan mendirikan lembaga yang bernuansa islami kepada bapak H. Fajar Nasution.', 1, '2025-12-01 17:44:13.831287'),
(27, 'Pertemuan Bersejarah', 'fas fa-handshake', 'Cita-cita tersebut dimulai dengan pertemuan singkat yang dilaksanakan di masjid As-Salam Gambangan, di depan para jamaah masjid Dr. K.H. Abdullah Syukry Zarkasyi, M.A menyampaikan cita-citanya dan selanjutnya bapak H. Fajar Nasution merealisasikannya dengan mulai membangun gedung dan lingkungan pesantren secara perlahan.', 2, '2025-12-01 17:44:13.832533'),
(28, 'Pendirian Resmi', 'fas fa-flag', 'Pada tanggal 6 Jumadal Ula\' 1428 H bertepatan dengan 10 Juni 2008, bapak H. Fajar Nasution, ibu Hj. Sumiati, Drs. Hajarul Aswad Ritonga, Sukirno, Drs. Syahid Marqum, Drs. Maghfur Abdul Halim, M.Pd., Drs. Junaidi, H. Abdul Wahid Sulaiman, Lc., Drs. Basron Sudarsono, dan Suparwasesa, S.E, M.M menetapkan struktur kepengurusan, nama yayasan dan sekaligus dengan resmi memulai tahun ajaran 2008/2009.', 3, '2025-12-01 17:44:13.835038');

-- --------------------------------------------------------

--
-- Table structure for table `core_sejarahtimelineimage`
--

CREATE TABLE `core_sejarahtimelineimage` (
  `id` bigint(20) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `created_at` datetime(6) NOT NULL,
  `timeline_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_seragam`
--

CREATE TABLE `core_seragam` (
  `id` bigint(20) NOT NULL,
  `hari` varchar(50) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `seragam_putra` varchar(200) NOT NULL,
  `seragam_putri` varchar(200) NOT NULL,
  `seragam` varchar(200) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_seragam`
--

INSERT INTO `core_seragam` (`id`, `hari`, `kategori`, `seragam_putra`, `seragam_putri`, `seragam`, `order`, `created_at`) VALUES
(17, 'Sab - Ahad', 'santri', 'Kemeja biru + celana hitam', 'Hem putih + sakdress biru', '', 1, '2025-12-01 17:44:13.923273'),
(18, 'Sen - Sel', 'santri', 'Kemeja putih + celana hitam', 'Hem putih + sakdress hitam', '', 2, '2025-12-01 17:44:13.924376'),
(19, 'Rab - Kam', 'santri', 'Kemeja hijau + celana hitam', 'Hem putih + sakdress hijau', '', 3, '2025-12-01 17:44:13.926795'),
(20, 'Jum\'at', 'santri', 'Pakaian sehari-hari (rapi & sopan)', 'Pakaian sehari-hari (rapi & sopan)', '', 4, '2025-12-01 17:44:13.928088');

-- --------------------------------------------------------

--
-- Table structure for table `core_socialmedia`
--

CREATE TABLE `core_socialmedia` (
  `id` bigint(20) NOT NULL,
  `platform` varchar(50) NOT NULL,
  `username` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_socialmedia`
--

INSERT INTO `core_socialmedia` (`id`, `platform`, `username`, `url`, `order`, `is_active`, `created_at`) VALUES
(7, 'instagram', 'rds_mahato', 'https://www.instagram.com/rds_mahato?igsh=MTI3N3l1M2swbnFsOA%3D%3D&utm_source=qr', 1, 1, '2025-12-01 17:44:13.933976'),
(8, 'facebook', 'RaudhatussalamMahato', 'https://www.facebook.com/RaudhatussalamMahato?mibextid=wwXIfr', 2, 1, '2025-12-01 17:44:13.936240'),
(9, 'tiktok', '@rds_mahato', 'https://www.tiktok.com/@rds_mahato?_t=ZS-8vYVJeCm3EN&_r=1', 4, 1, '2025-12-01 17:44:13.937242');

-- --------------------------------------------------------

--
-- Table structure for table `core_statistik`
--

CREATE TABLE `core_statistik` (
  `id` bigint(20) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `nilai` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `deskripsi` varchar(300) NOT NULL,
  `warna` varchar(50) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `is_published` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_statistik`
--

INSERT INTO `core_statistik` (`id`, `judul`, `nilai`, `icon`, `deskripsi`, `warna`, `order`, `is_published`, `created_at`) VALUES
(1, 'Total Santri', '500', 'fas fa-users', '', 'green', 1, 1, '2025-12-01 17:44:13.949878'),
(2, 'Tenaga Pengajar', '50', 'fas fa-chalkboard-teacher', '', 'green', 2, 1, '2025-12-01 17:44:13.951489'),
(3, 'Program Pendidikan', '5', 'fas fa-school', '', 'green', 3, 1, '2025-12-01 17:44:13.952997'),
(4, 'Fasilitas', '12', 'fas fa-building', '', 'green', 4, 1, '2025-12-01 17:44:13.954627'),
(5, 'Ekstrakurikuler', '7', 'fas fa-futbol', '', 'green', 5, 1, '2025-12-01 17:44:13.956927'),
(6, 'Tahun Berdiri', '2008', 'fas fa-calendar', '', 'green', 6, 1, '2025-12-01 17:44:13.958001');

-- --------------------------------------------------------

--
-- Table structure for table `core_tenagapengajar`
--

CREATE TABLE `core_tenagapengajar` (
  `id` bigint(20) NOT NULL,
  `nama_lengkap` varchar(200) NOT NULL,
  `nama_panggilan` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` longtext NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `pendidikan_terakhir` varchar(200) NOT NULL,
  `universitas` varchar(200) NOT NULL,
  `tahun_lulus` varchar(4) NOT NULL,
  `bidang_keahlian` varchar(200) NOT NULL,
  `mata_pelajaran` varchar(300) NOT NULL,
  `pengalaman_mengajar` longtext NOT NULL,
  `prestasi` longtext NOT NULL,
  `riwayat_pendidikan` longtext NOT NULL,
  `organisasi` longtext NOT NULL,
  `karya_tulis` longtext NOT NULL,
  `motto` varchar(300) NOT NULL,
  `whatsapp` varchar(20) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `youtube` varchar(200) NOT NULL,
  `tiktok` varchar(200) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `is_published` tinyint(1) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `bagian_jabatan_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_tenagapengajar`
--

INSERT INTO `core_tenagapengajar` (`id`, `nama_lengkap`, `nama_panggilan`, `jenis_kelamin`, `foto`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `no_hp`, `email`, `pendidikan_terakhir`, `universitas`, `tahun_lulus`, `bidang_keahlian`, `mata_pelajaran`, `pengalaman_mengajar`, `prestasi`, `riwayat_pendidikan`, `organisasi`, `karya_tulis`, `motto`, `whatsapp`, `facebook`, `instagram`, `twitter`, `linkedin`, `youtube`, `tiktok`, `order`, `is_published`, `is_featured`, `created_at`, `updated_at`, `bagian_jabatan_id`) VALUES
(1, 'Umar Wibowo', 'Umar', 'L', 'tenaga_pengajar/2025/12/02/Desain_tanpa_judul_1_H3rbjFX.png', 'Palembang', '2025-12-02', 'Jl. Gatot Subroto No. 86, Lampung', '08677420843', 'umar.wibowo@pondok.id', 'S1 Kimia', 'Universitas Indonesia', '2021', 'Aqidah', 'Tafsir Al-Qur\'an, Hadits, Fiqih', 'Pengalaman mengajar selama 15 tahun di berbagai pesantren dan sekolah. Mengajar mata pelajaran Nahwu Shorof dengan dedikasi tinggi.', 'Prestasi: Juara 1 Lomba Tahfidz Nasional tahun 2016', 'SD: SD Islam Nurul Iman (2002-2008)\r\nSMP: SMP Islam Nurul Iman (2008-2011)\r\nSMA: SMA Islam Nurul Iman (2011-2014)\r\nS1: Universitas Islam Negeri Jakarta (2014-2018)', 'Anggota IKADI Kabupaten Makassar', 'Penulis buku \'Metode Belajar Bahasa Arab\' tahun 2020', 'Pendidikan membentuk karakter', '', 'https://facebook.com/umar.wibowo', 'https://instagram.com/umar_wibowo', 'https://twitter.com/umar_wibowo', 'https://linkedin.com/in/umar-wibowo', '', '', 1, 1, 1, '2025-12-01 17:44:13.995824', '2025-12-02 05:25:39.450937', 10),
(2, 'Lina w', 'Lina', 'P', '', 'Medan', '1995-07-01', 'Jl. Sudirman No. 634, Medan', '08882645255', 'lina.w@pondok.id', 'S2 Tafsir', 'Universitas Islam Negeri Bandung', '2016', 'Fisika', 'Pendidikan Agama Islam, Fiqih', 'Pengalaman mengajar selama 17 tahun di berbagai pesantren dan sekolah. Mengajar mata pelajaran Sejarah dengan dedikasi tinggi.', 'Prestasi: Juara 2 Lomba Tahfidz Regional tahun 2013', 'SD: SD Islam Al-Ikhlas (2001-2007)\nSMP: SMP Islam Nurul Iman (2007-2010)\nSMA: SMA Islam Nurul Iman (2010-2013)\nS1: Institut Teknologi Bandung (2013-2017)', 'Anggota MUI Kabupaten Samarinda', 'Penulis buku \'Panduan Tahfidz\' tahun 2015', 'Ilmu adalah cahaya kehidupan', '', 'https://facebook.com/lina.w', 'https://instagram.com/lina_w', '', '', '', '', 2, 1, 0, '2025-12-01 17:44:13.997194', '2025-12-01 17:44:13.997194', 2),
(3, 'Yunus w', 'Yunus', 'L', 'tenaga_pengajar/2025/12/02/Desain_tanpa_judul_1.png', 'Semarang', NULL, 'Jl. Ahmad Yani No. 224, Palembang', '08206998618', 'yunus.w@pondok.id', 'S1 Fisika', 'Universitas Islam Negeri Jakarta', '1995', 'Aqidah', 'Bahasa Indonesia, Bahasa Inggris', 'Pengalaman mengajar selama 28 tahun di berbagai pesantren dan sekolah. Mengajar mata pelajaran Sejarah dengan dedikasi tinggi.', 'Prestasi: Juara 2 Lomba Tahfidz Regional tahun 2018', 'SD: SD Islam Nurul Iman (1978-1984)\r\nSMP: SMP Islam Al-Azhar (1984-1987)\r\nSMA: SMA Islam Nurul Iman (1987-1990)\r\nS1: Universitas Islam Negeri Bandung (1990-1994)', 'Anggota MUI Kota Semarang', 'Penulis buku \'Panduan Tahfidz\' tahun 2024', 'Mengajar adalah amal jariyah', '6280765707592', 'https://facebook.com/yunus.w', 'https://instagram.com/yunus_w', 'https://twitter.com/yunus_w', 'https://linkedin.com/in/yunus-w', '', '', 3, 1, 1, '2025-12-01 17:44:13.998199', '2025-12-02 05:19:47.220797', 3),
(4, 'Abdurrahman w', 'Abdurrahman', 'L', '', 'Banten', '1989-06-17', 'Jl. Ahmad Yani No. 443, Samarinda', '08713555699', 'abdurrahman.w@pondok.id', 'S1 Fiqih', 'Universitas Indonesia', '2010', 'Kimia', 'Pendidikan Agama Islam, Fiqih', 'Pengalaman mengajar selama 30 tahun di berbagai pesantren dan sekolah. Mengajar mata pelajaran Kimia dengan dedikasi tinggi.', 'Prestasi: Juara 2 Lomba Tahfidz Nasional tahun 2012', 'SD: SD Islam Al-Azhar (1995-2001)\nSMP: SMP Islam Al-Azhar (2001-2004)\nSMA: SMA Islam Al-Azhar (2004-2007)\nS1: Universitas Islam Negeri Surabaya (2007-2011)', 'Anggota MUI Kabupaten Surabaya', 'Penulis buku \'Panduan Tahfidz\' tahun 2021', 'Mengajar dengan hati', '6285312213809', 'https://facebook.com/abdurrahman.w', 'https://instagram.com/abdurrahman_w', 'https://twitter.com/abdurrahman_w', 'https://linkedin.com/in/abdurrahman-w', '', '', 4, 1, 1, '2025-12-01 17:44:13.999197', '2025-12-01 17:44:13.999197', 3),
(5, 'Rina w', 'Rina', 'P', '', 'Solo', '1993-03-17', 'Jl. Ahmad Yani No. 97, Medan', '08337863677', 'rina.w@pondok.id', 'S1 Fiqih', 'Universitas Islam Indonesia', '2017', 'Psikologi', 'Bahasa Arab, Nahwu, Shorof', 'Pengalaman mengajar selama 25 tahun di berbagai pesantren dan sekolah. Mengajar mata pelajaran Sejarah dengan dedikasi tinggi.', 'Prestasi: Juara 1 Lomba Tahfidz Nasional tahun 2020', 'SD: SD Islam Al-Ikhlas (1999-2005)\nSMP: SMP Islam Al-Ikhlas (2005-2008)\nSMA: SMA Islam Al-Azhar (2008-2011)\nS1: Universitas Muhammadiyah Jakarta (2011-2015)', 'Anggota IKADI Kota Padang', 'Penulis buku \'Panduan Tahfidz\' tahun 2021', 'Mengajar dengan hati', '', 'https://facebook.com/rina.w', 'https://instagram.com/rina_w', 'https://twitter.com/rina_w', 'https://linkedin.com/in/rina-w', '', 'https://tiktok.com/@rina_w', 5, 1, 0, '2025-12-01 17:44:14.000198', '2025-12-01 17:44:14.000198', 3),
(6, 'Putri w', 'Putri', 'P', '', 'Medan', '1988-07-04', 'Jl. Sudirman No. 456, Palembang', '08111003019', 'putri.w@pondok.id', 'S1 Matematika', 'Pondok Modern Darussalam Mantingan', '2008', 'Tajwid', 'Ekonomi, Sejarah, Geografi', 'Pengalaman mengajar selama 15 tahun di berbagai pesantren dan sekolah. Mengajar mata pelajaran Sosiologi dengan dedikasi tinggi.', 'Prestasi: Juara 1 Lomba Pidato Regional tahun 2024', 'SD: SD Islam Al-Azhar (1994-2000)\nSMP: SMP Islam Al-Azhar (2000-2003)\nSMA: SMA Islam Nurul Iman (2003-2006)\nS1: Universitas Islam Negeri Surabaya (2006-2010)', 'Anggota IKADI Kota Lampung', 'Penulis buku \'Fiqih Praktis\' tahun 2021', 'Belajar sepanjang hayat', '', 'https://facebook.com/putri.w', '', 'https://twitter.com/putri_w', 'https://linkedin.com/in/putri-w', '', 'https://tiktok.com/@putri_w', 6, 1, 0, '2025-12-01 17:44:14.001198', '2025-12-01 17:44:14.001198', 10),
(7, 'Sinta w', 'Sinta', 'P', '', 'Samarinda', '1967-02-16', 'Jl. Merdeka No. 25, Pekanbaru', '08422406107', 'sinta.w@pondok.id', 'S1 Hadits', 'Universitas Islam Negeri Yogyakarta', '1989', 'Aqidah', 'Pendidikan Agama Islam, Fiqih', 'Pengalaman mengajar selama 13 tahun di berbagai pesantren dan sekolah. Mengajar mata pelajaran Fisika dengan dedikasi tinggi.', 'Prestasi: Juara 2 Lomba Tahfidz Nasional tahun 2024', 'SD: SD Islam Al-Ikhlas (1973-1979)\nSMP: SMP Islam Al-Ikhlas (1979-1982)\nSMA: SMA Islam Al-Ikhlas (1982-1985)\nS1: Universitas Muhammadiyah Jakarta (1985-1989)', 'Anggota IKADI Kota Solo', 'Penulis buku \'Fiqih Praktis\' tahun 2017', 'Mengajar dengan hati', '', 'https://facebook.com/sinta.w', '', '', 'https://linkedin.com/in/sinta-w', '', 'https://tiktok.com/@sinta_w', 7, 1, 0, '2025-12-01 17:44:14.002198', '2025-12-01 17:44:14.002198', 3),
(8, 'Sinta w', 'Sinta', 'P', '', 'Pontianak', '1975-12-13', 'Jl. Sudirman No. 12, Denpasar', '08665876994', 'sinta.w@pondok.id', 'S1 Bahasa Arab', 'Universitas Islam Negeri Medan', '1998', 'Kimia', 'Matematika, Fisika, Kimia', 'Pengalaman mengajar selama 29 tahun di berbagai pesantren dan sekolah. Mengajar mata pelajaran Bahasa Arab dengan dedikasi tinggi.', 'Prestasi: Juara 2 Lomba Tahfidz Nasional tahun 2016', 'SD: SD Islam Al-Azhar (1981-1987)\nSMP: SMP Islam Al-Ikhlas (1987-1990)\nSMA: SMA Islam Al-Ikhlas (1990-1993)\nS1: Universitas Islam Negeri Surabaya (1993-1997)', 'Anggota IKADI Kota Malang', 'Penulis buku \'Panduan Tahfidz\' tahun 2018', 'Pendidikan membentuk karakter', '6285119228722', '', 'https://instagram.com/sinta_w', '', 'https://linkedin.com/in/sinta-w', '', '', 8, 0, 0, '2025-12-01 17:44:14.003198', '2025-12-01 17:44:14.003198', 9),
(9, 'Pratama w', 'Pratama', 'L', '', 'Banten', '1968-08-02', 'Jl. Merdeka No. 485, Solo', '08735536993', 'pratama.w@pondok.id', 'S1 Tafsir Al-Qur\'an', 'Universitas Islam Negeri Jakarta', '1990', 'Pendidikan Agama Islam', 'Matematika, Fisika, Kimia', 'Pengalaman mengajar selama 7 tahun di berbagai pesantren dan sekolah. Mengajar mata pelajaran Kimia dengan dedikasi tinggi.', 'Prestasi: Juara 2 Lomba Tahfidz Nasional tahun 2024', 'SD: SD Islam Nurul Iman (1974-1980)\nSMP: SMP Islam Nurul Iman (1980-1983)\nSMA: SMA Islam Al-Ikhlas (1983-1986)\nS1: Universitas Islam Negeri Surabaya (1986-1990)', 'Anggota IKADI Kabupaten Lampung', 'Penulis buku \'Panduan Tahfidz\' tahun 2023', 'Pendidikan adalah investasi terbaik', '6289216230210', 'https://facebook.com/pratama.w', 'https://instagram.com/pratama_w', '', '', 'https://youtube.com/@pratamaw', 'https://tiktok.com/@pratama_w', 9, 1, 0, '2025-12-01 17:44:14.004198', '2025-12-01 17:44:14.004198', 1),
(10, 'Mariam w', 'Mariam', 'P', '', 'Pekanbaru', '1980-11-22', 'Jl. Merdeka No. 341, Palembang', '08596730806', 'mariam.w@pondok.id', 'S1 Hadits', 'Pondok Modern Darussalam Mantingan', '2002', 'Ekonomi', 'Ekonomi, Sejarah, Geografi', 'Pengalaman mengajar selama 7 tahun di berbagai pesantren dan sekolah. Mengajar mata pelajaran Tafsir Al-Qur\'an dengan dedikasi tinggi.', 'Prestasi: Juara 2 Lomba Pidato Regional tahun 2024', 'SD: SD Islam Al-Azhar (1986-1992)\nSMP: SMP Islam Al-Ikhlas (1992-1995)\nSMA: SMA Islam Al-Ikhlas (1995-1998)\nS1: Universitas Islam Negeri Jakarta (1998-2002)', 'Anggota MUI Kabupaten Samarinda', 'Penulis buku \'Metode Belajar Bahasa Arab\' tahun 2022', 'Mengajar adalah amal jariyah', '6282315373877', '', 'https://instagram.com/mariam_w', '', '', 'https://youtube.com/@mariamw', '', 10, 1, 0, '2025-12-01 17:44:14.005198', '2025-12-01 17:44:14.005198', 3),
(11, 'Lina w', 'Lina', 'P', '', 'Yogyakarta', '1977-05-01', 'Jl. Ahmad Yani No. 667, Yogyakarta', '08910130163', 'lina.w@pondok.id', 'S1 Fiqih', 'Universitas Islam Indonesia', '1997', 'Tajwid', 'Tajwid, Tahfidz Al-Qur\'an', 'Pengalaman mengajar selama 15 tahun di berbagai pesantren dan sekolah. Mengajar mata pelajaran Bahasa Inggris dengan dedikasi tinggi.', 'Prestasi: Juara 2 Lomba Tahfidz Nasional tahun 2012', 'SD: SD Islam Al-Azhar (1983-1989)\nSMP: SMP Islam Nurul Iman (1989-1992)\nSMA: SMA Islam Nurul Iman (1992-1995)\nS1: Universitas Islam Negeri Yogyakarta (1995-1999)', 'Anggota MUI Kabupaten Pontianak', 'Penulis buku \'Metode Belajar Bahasa Arab\' tahun 2016', 'Mengajar adalah amal jariyah', '', 'https://facebook.com/lina.w', 'https://instagram.com/lina_w', '', 'https://linkedin.com/in/lina-w', '', '', 11, 1, 0, '2025-12-01 17:44:14.007198', '2025-12-01 17:44:14.007198', 6),
(12, 'Harahap w', 'Harahap', 'L', '', 'Medan', '1973-09-18', 'Jl. Sudirman No. 600, Solo', '08366341813', 'harahap.w@pondok.id', 'S1 Pendidikan Agama Islam', 'Institut Agama Islam Negeri', '1994', 'Bahasa Indonesia', 'Ekonomi, Sejarah, Geografi', 'Pengalaman mengajar selama 27 tahun di berbagai pesantren dan sekolah. Mengajar mata pelajaran Geografi dengan dedikasi tinggi.', 'Prestasi: Juara 2 Lomba Tahfidz Regional tahun 2015', 'SD: SD Islam Al-Azhar (1979-1985)\nSMP: SMP Islam Al-Ikhlas (1985-1988)\nSMA: SMA Islam Nurul Iman (1988-1991)\nS1: Universitas Muhammadiyah Jakarta (1991-1995)', 'Anggota MUI Kabupaten Surabaya', 'Penulis buku \'Panduan Tahfidz\' tahun 2016', 'Pendidikan adalah investasi terbaik', '', '', 'https://instagram.com/harahap_w', 'https://twitter.com/harahap_w', '', '', 'https://tiktok.com/@harahap_w', 12, 1, 0, '2025-12-01 17:44:14.007198', '2025-12-01 17:44:14.008198', 3),
(13, 'Kurniawan w', 'Kurniawan', 'L', '', 'Bengkulu', '1986-09-25', 'Jl. Gatot Subroto No. 21, Pontianak', '08126018748', 'kurniawan.w@pondok.id', 'S1 Tafsir Al-Qur\'an', 'Universitas Indonesia', '2009', 'Bahasa Arab', 'Ekonomi, Sejarah, Geografi', 'Pengalaman mengajar selama 10 tahun di berbagai pesantren dan sekolah. Mengajar mata pelajaran Fiqih dengan dedikasi tinggi.', 'Prestasi: Juara 1 Lomba Tahfidz Regional tahun 2019', 'SD: SD Islam Al-Ikhlas (1992-1998)\nSMP: SMP Islam Al-Azhar (1998-2001)\nSMA: SMA Islam Nurul Iman (2001-2004)\nS1: Universitas Islam Indonesia (2004-2008)', 'Anggota IKADI Kabupaten Samarinda', 'Penulis buku \'Metode Belajar Bahasa Arab\' tahun 2022', 'Mengajar dengan hati', '6286388275937', '', '', 'https://twitter.com/kurniawan_w', '', '', 'https://tiktok.com/@kurniawan_w', 13, 1, 0, '2025-12-01 17:44:14.008198', '2025-12-01 17:44:14.008198', 4),
(14, 'Hafizah w', 'Hafizah', 'P', '', 'Padang', '2000-09-20', 'Jl. Gatot Subroto No. 872, Medan', '08797382488', 'hafizah.w@pondok.id', 'S1 Pendidikan Agama Islam', 'Universitas Islam Negeri Jakarta', '2025', 'Bahasa Inggris', 'Tajwid, Tahfidz Al-Qur\'an', 'Pengalaman mengajar selama 15 tahun di berbagai pesantren dan sekolah. Mengajar mata pelajaran Sosiologi dengan dedikasi tinggi.', 'Prestasi: Juara 2 Lomba Tahfidz Nasional tahun 2014', 'SD: SD Islam Al-Azhar (2006-2012)\nSMP: SMP Islam Nurul Iman (2012-2015)\nSMA: SMA Islam Al-Ikhlas (2015-2018)\nS1: Universitas Islam Negeri Surabaya (2018-2022)', 'Anggota IKADI Kota Jambi', 'Penulis buku \'Tafsir Juz Amma\' tahun 2019', 'Belajar sepanjang hayat', '6283745230442', 'https://facebook.com/hafizah.w', 'https://instagram.com/hafizah_w', '', 'https://linkedin.com/in/hafizah-w', '', '', 14, 1, 0, '2025-12-01 17:44:14.009198', '2025-12-01 17:44:14.009198', 6),
(15, 'Fauzi w', 'Fauzi', 'L', '', 'Makassar', '1989-10-02', 'Jl. Diponegoro No. 360, Pekanbaru', '08884187693', 'fauzi.w@pondok.id', 'S1 Hadits', 'Universitas Gadjah Mada', '2009', 'Pendidikan Agama Islam', 'Bahasa Indonesia, Bahasa Inggris', 'Pengalaman mengajar selama 24 tahun di berbagai pesantren dan sekolah. Mengajar mata pelajaran Psikologi dengan dedikasi tinggi.', 'Prestasi: Juara 1 Lomba Pidato Regional tahun 2015', 'SD: SD Islam Al-Azhar (1995-2001)\nSMP: SMP Islam Nurul Iman (2001-2004)\nSMA: SMA Islam Al-Ikhlas (2004-2007)\nS1: Universitas Islam Indonesia (2007-2011)', 'Anggota MUI Kabupaten Makassar', 'Penulis buku \'Tafsir Juz Amma\' tahun 2017', 'Menuntut ilmu adalah ibadah', '6283414287960', '', 'https://instagram.com/fauzi_w', '', '', '', '', 15, 0, 0, '2025-12-01 17:44:14.011756', '2025-12-01 17:44:14.011756', 9),
(16, 'Harahap w', 'Harahap', 'L', '', 'Denpasar', '1993-11-19', 'Jl. Gatot Subroto No. 473, Palembang', '08120698726', 'harahap.w@pondok.id', 'S1 Kimia', 'Institut Teknologi Bandung', '2016', 'Ekonomi', 'Aqidah, Akhlak, Sejarah Islam', 'Pengalaman mengajar selama 6 tahun di berbagai pesantren dan sekolah. Mengajar mata pelajaran Geografi dengan dedikasi tinggi.', 'Prestasi: Juara 2 Lomba Tahfidz Regional tahun 2021', 'SD: SD Islam Al-Azhar (1999-2005)\nSMP: SMP Islam Al-Azhar (2005-2008)\nSMA: SMA Islam Nurul Iman (2008-2011)\nS1: Universitas Islam Negeri Yogyakarta (2011-2015)', 'Anggota MUI Kabupaten Yogyakarta', 'Penulis buku \'Metode Belajar Bahasa Arab\' tahun 2022', 'Belajar sepanjang hayat', '6287572204029', '', 'https://instagram.com/harahap_w', '', 'https://linkedin.com/in/harahap-w', 'https://youtube.com/@harahapw', '', 16, 1, 0, '2025-12-01 17:44:14.012765', '2025-12-01 17:44:14.012765', 5),
(17, 'Fatimah w', 'Fatimah', 'P', '', 'Semarang', '1995-01-06', 'Jl. Diponegoro No. 460, Pekanbaru', '08278398188', 'fatimah.w@pondok.id', 'S1 Fiqih', 'Universitas Indonesia', '2016', 'Pendidikan Agama Islam', 'Bahasa Arab, Tafsir, Hadits', 'Pengalaman mengajar selama 26 tahun di berbagai pesantren dan sekolah. Mengajar mata pelajaran Biologi dengan dedikasi tinggi.', 'Prestasi: Juara 2 Lomba Pidato Regional tahun 2013', 'SD: SD Islam Al-Azhar (2001-2007)\nSMP: SMP Islam Al-Ikhlas (2007-2010)\nSMA: SMA Islam Al-Azhar (2010-2013)\nS1: Universitas Islam Negeri Jakarta (2013-2017)', 'Anggota IKADI Kota Malang', 'Penulis buku \'Tafsir Juz Amma\' tahun 2021', 'Ilmu tanpa amal bagaikan pohon tanpa buah', '6283232928743', 'https://facebook.com/fatimah.w', '', 'https://twitter.com/fatimah_w', '', '', '', 17, 0, 0, '2025-12-01 17:44:14.014259', '2025-12-01 17:44:14.014259', 3),
(18, 'Aulia w', 'Aulia', 'P', '', 'Malang', '1971-12-27', 'Jl. Ahmad Yani No. 233, Solo', '08285265740', 'aulia.w@pondok.id', 'S1 Bahasa Arab', 'Universitas Islam Negeri Surabaya', '1991', 'Geografi', 'Tajwid, Tahfidz Al-Qur\'an', 'Pengalaman mengajar selama 22 tahun di berbagai pesantren dan sekolah. Mengajar mata pelajaran Tafsir Al-Qur\'an dengan dedikasi tinggi.', 'Prestasi: Juara 2 Lomba Pidato Nasional tahun 2011', 'SD: SD Islam Al-Ikhlas (1977-1983)\nSMP: SMP Islam Al-Azhar (1983-1986)\nSMA: SMA Islam Al-Ikhlas (1986-1989)\nS1: Institut Teknologi Bandung (1989-1993)', 'Anggota IKADI Kota Solo', 'Penulis buku \'Panduan Tahfidz\' tahun 2019', 'Mengajar dengan hati', '6287150914966', 'https://facebook.com/aulia.w', '', 'https://twitter.com/aulia_w', 'https://linkedin.com/in/aulia-w', '', '', 18, 1, 0, '2025-12-01 17:44:14.014832', '2025-12-01 17:44:14.014832', 8),
(19, 'Yunus w', 'Yunus', 'L', '', 'Yogyakarta', '1984-07-09', 'Jl. Gatot Subroto No. 584, Lampung', '08753196624', 'yunus.w@pondok.id', 'S2 Pendidikan Islam', 'Institut Agama Islam Negeri', '2005', 'Hadits', 'Ekonomi, Sejarah, Geografi', 'Pengalaman mengajar selama 16 tahun di berbagai pesantren dan sekolah. Mengajar mata pelajaran Biologi dengan dedikasi tinggi.', 'Prestasi: Juara 2 Lomba Tahfidz Regional tahun 2023', 'SD: SD Islam Nurul Iman (1990-1996)\nSMP: SMP Islam Al-Ikhlas (1996-1999)\nSMA: SMA Islam Nurul Iman (1999-2002)\nS1: Universitas Islam Negeri Surabaya (2002-2006)', 'Anggota IKADI Kota Yogyakarta', 'Penulis buku \'Tafsir Juz Amma\' tahun 2015', 'Pendidikan membentuk karakter', '', 'https://facebook.com/yunus.w', '', '', '', '', '', 19, 1, 0, '2025-12-01 17:44:14.015943', '2025-12-01 17:44:14.015943', 2),
(20, 'Aulia w', 'Aulia', 'P', '', 'Jambi', '1971-10-27', 'Jl. Gatot Subroto No. 875, Solo', '08444723601', 'aulia.w@pondok.id', 'S1 Pendidikan Agama Islam', 'Universitas Muhammadiyah Yogyakarta', '1996', 'Fiqih', 'Bahasa Arab, Tafsir, Hadits', 'Pengalaman mengajar selama 14 tahun di berbagai pesantren dan sekolah. Mengajar mata pelajaran Fiqih dengan dedikasi tinggi.', 'Prestasi: Juara 1 Lomba Tahfidz Nasional tahun 2012', 'SD: SD Islam Nurul Iman (1977-1983)\nSMP: SMP Islam Al-Azhar (1983-1986)\nSMA: SMA Islam Al-Ikhlas (1986-1989)\nS1: Universitas Islam Negeri Yogyakarta (1989-1993)', 'Anggota IKADI Kabupaten Yogyakarta', 'Penulis buku \'Tafsir Juz Amma\' tahun 2018', 'Mengajar adalah amal jariyah', '6288553536294', '', 'https://instagram.com/aulia_w', 'https://twitter.com/aulia_w', '', '', '', 20, 1, 0, '2025-12-01 17:44:14.017022', '2025-12-01 17:44:14.017022', 6),
(21, 'Fauzan w', 'Fauzan', 'L', '', 'Denpasar', '1985-11-21', 'Jl. Ahmad Yani No. 63, Jambi', '08265136944', 'fauzan.w@pondok.id', 'S1 Fiqih', 'Universitas Islam Indonesia', '2005', 'Bahasa Indonesia', 'Matematika, Fisika, Kimia', 'Pengalaman mengajar selama 19 tahun di berbagai pesantren dan sekolah. Mengajar mata pelajaran Geografi dengan dedikasi tinggi.', 'Prestasi: Juara 2 Lomba Pidato Regional tahun 2013', 'SD: SD Islam Nurul Iman (1991-1997)\nSMP: SMP Islam Nurul Iman (1997-2000)\nSMA: SMA Islam Nurul Iman (2000-2003)\nS1: Universitas Islam Indonesia (2003-2007)', 'Anggota IKADI Kota Solo', 'Penulis buku \'Panduan Tahfidz\' tahun 2022', 'Ilmu tanpa amal bagaikan pohon tanpa buah', '6284176335637', 'https://facebook.com/fauzan.w', 'https://instagram.com/fauzan_w', '', 'https://linkedin.com/in/fauzan-w', '', '', 21, 1, 0, '2025-12-01 17:44:14.019444', '2025-12-01 17:44:14.019444', 3),
(22, 'Rahma w', 'Rahma', 'P', '', 'Semarang', '1990-05-22', 'Jl. Ahmad Yani No. 554, Medan', '08880780631', 'rahma.w@pondok.id', 'S1 Kimia', 'Universitas Islam Indonesia', '2011', 'Fisika', 'Bahasa Indonesia, Bahasa Inggris', 'Pengalaman mengajar selama 19 tahun di berbagai pesantren dan sekolah. Mengajar mata pelajaran Biologi dengan dedikasi tinggi.', 'Prestasi: Juara 2 Lomba Pidato Regional tahun 2021', 'SD: SD Islam Al-Azhar (1996-2002)\nSMP: SMP Islam Al-Ikhlas (2002-2005)\nSMA: SMA Islam Al-Azhar (2005-2008)\nS1: Pondok Modern Darussalam Mantingan (2008-2012)', 'Anggota IKADI Kota Padang', 'Penulis buku \'Fiqih Praktis\' tahun 2024', 'Ilmu tanpa amal bagaikan pohon tanpa buah', '6284348657230', 'https://facebook.com/rahma.w', '', '', '', '', '', 22, 1, 0, '2025-12-01 17:44:14.019444', '2025-12-01 17:44:14.019444', 6),
(23, 'Rina w', 'Rina', 'P', '', 'Bandung', '1970-10-04', 'Jl. Merdeka No. 495, Palembang', '08417208778', 'rina.w@pondok.id', 'S2 Pendidikan Islam', 'Universitas Islam Negeri Bandung', '1990', 'Bahasa Indonesia', 'Bahasa Arab, Tafsir, Hadits', 'Pengalaman mengajar selama 28 tahun di berbagai pesantren dan sekolah. Mengajar mata pelajaran Tajwid dengan dedikasi tinggi.', 'Prestasi: Juara 1 Lomba Pidato Regional tahun 2013', 'SD: SD Islam Al-Ikhlas (1976-1982)\nSMP: SMP Islam Al-Ikhlas (1982-1985)\nSMA: SMA Islam Nurul Iman (1985-1988)\nS1: Institut Agama Islam Negeri (1988-1992)', 'Anggota IKADI Kota Malang', 'Penulis buku \'Fiqih Praktis\' tahun 2019', 'Belajar sepanjang hayat', '6286116366159', 'https://facebook.com/rina.w', '', '', 'https://linkedin.com/in/rina-w', 'https://youtube.com/@rinaw', '', 23, 1, 0, '2025-12-01 17:44:14.020682', '2025-12-01 17:44:14.020682', 10),
(24, 'Indah w', 'Indah', 'P', '', 'Surabaya', '1977-03-08', 'Jl. Diponegoro No. 3, Balikpapan', '08311336396', 'indah.w@pondok.id', 'S1 Tafsir Al-Qur\'an', 'Universitas Muhammadiyah Yogyakarta', '2000', 'Sosiologi', 'Pendidikan Agama Islam, Fiqih', 'Pengalaman mengajar selama 17 tahun di berbagai pesantren dan sekolah. Mengajar mata pelajaran Bahasa Indonesia dengan dedikasi tinggi.', 'Prestasi: Juara 2 Lomba Pidato Nasional tahun 2015', 'SD: SD Islam Al-Ikhlas (1983-1989)\nSMP: SMP Islam Nurul Iman (1989-1992)\nSMA: SMA Islam Al-Azhar (1992-1995)\nS1: Institut Agama Islam Negeri (1995-1999)', 'Anggota IKADI Kabupaten Palembang', 'Penulis buku \'Fiqih Praktis\' tahun 2016', 'Ilmu yang bermanfaat adalah ilmu yang diamalkan', '', 'https://facebook.com/indah.w', 'https://instagram.com/indah_w', '', '', '', '', 24, 1, 0, '2025-12-01 17:44:14.021809', '2025-12-01 17:44:14.021809', 9),
(25, 'Rizki w', 'Rizki', 'L', '', 'Bengkulu', '1978-01-13', 'Jl. Merdeka No. 503, Yogyakarta', '08315900563', 'rizki.w@pondok.id', 'S1 Fisika', 'Institut Teknologi Bandung', '2002', 'Sosiologi', 'Matematika, Fisika, Kimia', 'Pengalaman mengajar selama 22 tahun di berbagai pesantren dan sekolah. Mengajar mata pelajaran Aqidah dengan dedikasi tinggi.', 'Prestasi: Juara 1 Lomba Pidato Nasional tahun 2011', 'SD: SD Islam Nurul Iman (1984-1990)\nSMP: SMP Islam Nurul Iman (1990-1993)\nSMA: SMA Islam Al-Azhar (1993-1996)\nS1: Pondok Modern Darussalam Mantingan (1996-2000)', 'Anggota IKADI Kota Pekanbaru', 'Penulis buku \'Tafsir Juz Amma\' tahun 2024', 'Ilmu yang bermanfaat adalah ilmu yang diamalkan', '6284652221894', '', '', 'https://twitter.com/rizki_w', 'https://linkedin.com/in/rizki-w', '', '', 25, 1, 0, '2025-12-01 17:44:14.022895', '2025-12-01 17:44:14.022895', 2);

-- --------------------------------------------------------

--
-- Table structure for table `core_visimisi`
--

CREATE TABLE `core_visimisi` (
  `id` bigint(20) NOT NULL,
  `visi` longtext NOT NULL,
  `misi` longtext NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_visimisi`
--

INSERT INTO `core_visimisi` (`id`, `visi`, `misi`, `updated_at`) VALUES
(1, '<p>Sebagai lembaga pendidikan pencetak kader-kader pemimpin umat, menjadi tempat ibadah talabul \'ilmi dan pengetahuan islam, bahasa Al-Qur\'an dan pengetahuan umum, dengan jiwa tetap berjiwa pondok.</p>', '<ul>\n<li>Mempersiapkan pribadi umat yang berilmu pengetahuan, berakhlak mulia dan berkhidmat kepada agama, masyarakat, dan negara.</li>\n<li>Mendidik dan mengembangkan generasi mu\'min muslimin yang berbudi tinggi, berbadan sehat, berpengetahuan luas, dan berfikiran bebas, serta berkhidmat kepada masyarakat.</li>\n<li>Mengajarkan ilmu pengetahuan agama dan umum secara seimbang menuju terbentuknya ulama yang intelek</li>\n<li>Mewujudkan warga negara Indonesia yang berkepribadian Indonesia dan bertaqwa kepada Allah SWT</li>\n</ul>', '2025-12-01 17:44:13.836077');

-- --------------------------------------------------------

--
-- Table structure for table `core_websitesettings`
--

CREATE TABLE `core_websitesettings` (
  `id` bigint(20) NOT NULL,
  `nama_pondok` varchar(200) NOT NULL,
  `arabic_name` varchar(500) NOT NULL,
  `alamat` longtext NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `website` varchar(200) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `tiktok` varchar(200) NOT NULL,
  `hero_title` varchar(200) NOT NULL,
  `hero_subtitle` varchar(200) NOT NULL,
  `hero_tagline` varchar(300) NOT NULL,
  `hero_cta_primary_text` varchar(100) NOT NULL,
  `hero_cta_primary_link` varchar(200) NOT NULL,
  `hero_cta_secondary_text` varchar(100) NOT NULL,
  `hero_cta_secondary_link` varchar(200) NOT NULL,
  `lokasi_pendaftaran` longtext NOT NULL,
  `google_maps_link` varchar(200) NOT NULL,
  `google_maps_embed_code` longtext NOT NULL,
  `qr_code_image` varchar(100) DEFAULT NULL,
  `deskripsi` longtext NOT NULL,
  `favicon` varchar(100) DEFAULT NULL,
  `meta_title` varchar(200) NOT NULL,
  `meta_description` longtext NOT NULL,
  `meta_keywords` varchar(500) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `header_mobile_image` varchar(100) DEFAULT NULL,
  `header_mobile_height` int(10) UNSIGNED NOT NULL CHECK (`header_mobile_height` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_websitesettings`
--

INSERT INTO `core_websitesettings` (`id`, `nama_pondok`, `arabic_name`, `alamat`, `logo`, `no_telepon`, `email`, `website`, `facebook`, `instagram`, `twitter`, `tiktok`, `hero_title`, `hero_subtitle`, `hero_tagline`, `hero_cta_primary_text`, `hero_cta_primary_link`, `hero_cta_secondary_text`, `hero_cta_secondary_link`, `lokasi_pendaftaran`, `google_maps_link`, `google_maps_embed_code`, `qr_code_image`, `deskripsi`, `favicon`, `meta_title`, `meta_description`, `meta_keywords`, `updated_at`, `header_mobile_image`, `header_mobile_height`) VALUES
(1, 'PESANTREN MODERN RAUDHATUSSALAM', 'معهد روضة السلام للتربية الإسلامية الحديثة', 'Jalan Lintas Mahato-Cikampak Km. 24, Gambangan, Mahato, Tambusai Utara, Rokan Hulu, Riau, 28558', '', '+62 852 6999 7007', 'info@raudhatussalam.sch.id', '', '', '', '', '', 'Pendaftaran Santri Baru', '2025/2026', 'Membentuk Generasi Unggul yang Berkarakter Islami', 'DAFTAR SEKARANG!', 'https://forms.gle/bsW2G2iGXJ4eduiV8', 'ALUR PENDAFTARAN', '/PENGUMUMAN ALUR PENDAFTARAN.pdf', 'Kantor Penerimaan Santri Baru (PSB)\r\nPesantren Modern Raudhatussalam, Gambangan, Mahato Km. 24, Tambusai Utara,\r\nRokan Hulu, Riau', 'https://maps.app.goo.gl/kaeDPb4p3irrRwSn8', '', '', 'Pesantren Modern Raudhatussalam adalah lembaga pendidikan Islam terpadu yang mengintegrasikan pendidikan agama dan umum dengan sistem asrama.', 'settings/Desain_tanpa_judul.png', 'Pendaftaran Santri Baru - Pesantren Modern Raudhatussalam', 'Pendaftaran santri baru tahun ajaran 2025/2026. Pesantren Modern Raudhatussalam membentuk generasi Qur\'ani yang berkarakter Islami.', 'pendaftaran santri, pesantren modern, raudhatussalam, mahato, rokan hulu, riau', '2025-12-02 05:27:53.147901', 'settings/Gemini_Generated_Image_9i56409i56409i56.png', 80);

-- --------------------------------------------------------

--
-- Table structure for table `core_whatsapptemplate`
--

CREATE TABLE `core_whatsapptemplate` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `tipe` varchar(20) NOT NULL,
  `pesan` longtext NOT NULL,
  `variabel` varchar(500) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `kategori_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_whatsapptemplatekategori`
--

CREATE TABLE `core_whatsapptemplatekategori` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(43, 'admin_panel', 'convertedimage'),
(39, 'admissions', 'santri'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(50, 'axes', 'accessattempt'),
(52, 'axes', 'accessfailurelog'),
(51, 'axes', 'accesslog'),
(44, 'blog', 'blogimage'),
(45, 'blog', 'blogpost'),
(46, 'blog', 'category'),
(47, 'blog', 'pengumuman'),
(48, 'blog', 'tag'),
(49, 'blog', 'testimoni'),
(4, 'contenttypes', 'contenttype'),
(7, 'core', 'alurpendaftaran'),
(8, 'core', 'bagianjabatan'),
(9, 'core', 'biayapendidikan'),
(10, 'core', 'contactperson'),
(11, 'core', 'dokumentasi'),
(30, 'core', 'dokumentasiimage'),
(12, 'core', 'ekstrakurikuler'),
(31, 'core', 'ekstrakurikulerimage'),
(13, 'core', 'faq'),
(14, 'core', 'fasilitas'),
(15, 'core', 'herosection'),
(36, 'core', 'informasitambahan'),
(16, 'core', 'jadwalharian'),
(17, 'core', 'kmi'),
(18, 'core', 'kontak'),
(19, 'core', 'media'),
(20, 'core', 'persyaratan'),
(21, 'core', 'program'),
(22, 'core', 'programpendidikan'),
(32, 'core', 'programpendidikanimage'),
(23, 'core', 'sejarahtimeline'),
(33, 'core', 'sejarahtimelineimage'),
(24, 'core', 'seragam'),
(25, 'core', 'socialmedia'),
(26, 'core', 'statistik'),
(34, 'core', 'tenagapengajar'),
(27, 'core', 'visimisi'),
(28, 'core', 'websitesettings'),
(35, 'core', 'whatsapptemplate'),
(29, 'core', 'whatsapptemplatekategori'),
(6, 'django_summernote', 'attachment'),
(40, 'documents', 'documenttemplate'),
(41, 'payments', 'bankaccount'),
(42, 'payments', 'payment'),
(5, 'sessions', 'session'),
(38, 'users', 'loginhistory'),
(37, 'users', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-12-01 17:25:31.220163'),
(2, 'contenttypes', '0002_remove_content_type_name', '2025-12-01 17:25:31.256597'),
(3, 'auth', '0001_initial', '2025-12-01 17:25:31.419612'),
(4, 'auth', '0002_alter_permission_name_max_length', '2025-12-01 17:25:31.456279'),
(5, 'auth', '0003_alter_user_email_max_length', '2025-12-01 17:25:31.461283'),
(6, 'auth', '0004_alter_user_username_opts', '2025-12-01 17:25:31.466486'),
(7, 'auth', '0005_alter_user_last_login_null', '2025-12-01 17:25:31.471824'),
(8, 'auth', '0006_require_contenttypes_0002', '2025-12-01 17:25:31.473825'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2025-12-01 17:25:31.478826'),
(10, 'auth', '0008_alter_user_username_max_length', '2025-12-01 17:25:31.484159'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2025-12-01 17:25:31.489157'),
(12, 'auth', '0010_alter_group_name_max_length', '2025-12-01 17:25:31.498157'),
(13, 'auth', '0011_update_proxy_permissions', '2025-12-01 17:25:31.504211'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2025-12-01 17:25:31.508216'),
(15, 'users', '0001_initial', '2025-12-01 17:25:31.728691'),
(16, 'admin', '0001_initial', '2025-12-01 17:25:31.819819'),
(17, 'admin', '0002_logentry_remove_auto_add', '2025-12-01 17:25:31.827465'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2025-12-01 17:25:31.833464'),
(19, 'admin_panel', '0001_initial', '2025-12-01 17:25:31.843407'),
(20, 'admin_panel', '0002_initial', '2025-12-01 17:25:31.909463'),
(21, 'admissions', '0001_initial', '2025-12-01 17:25:31.929642'),
(22, 'admissions', '0002_add_pdf_fields', '2025-12-01 17:25:32.125545'),
(23, 'blog', '0001_initial', '2025-12-01 17:25:32.214124'),
(24, 'blog', '0002_initial', '2025-12-01 17:25:32.533794'),
(25, 'core', '0001_initial', '2025-12-01 17:25:32.969114'),
(26, 'core', '0002_add_header_mobile_image', '2025-12-01 17:25:32.976894'),
(27, 'core', '0003_add_header_mobile_height', '2025-12-01 17:25:32.990041'),
(28, 'core', '0004_informasitambahan', '2025-12-01 17:25:32.997883'),
(29, 'django_summernote', '0001_initial', '2025-12-01 17:25:33.019292'),
(30, 'django_summernote', '0002_update-help_text', '2025-12-01 17:25:33.023296'),
(31, 'django_summernote', '0003_alter_attachment_id', '2025-12-01 17:25:33.044662'),
(32, 'documents', '0001_initial', '2025-12-01 17:25:33.069948'),
(33, 'payments', '0001_initial', '2025-12-01 17:25:33.134669'),
(34, 'payments', '0002_initial', '2025-12-01 17:25:33.209981'),
(35, 'sessions', '0001_initial', '2025-12-01 17:25:33.236534'),
(36, 'users', '0002_add_user_role', '2025-12-01 17:25:33.245533'),
(37, 'axes', '0001_initial', '2025-12-01 18:00:01.463264'),
(38, 'axes', '0002_auto_20151217_2044', '2025-12-01 18:00:01.628471'),
(39, 'axes', '0003_auto_20160322_0929', '2025-12-01 18:00:01.651321'),
(40, 'axes', '0004_auto_20181024_1538', '2025-12-01 18:00:01.666877'),
(41, 'axes', '0005_remove_accessattempt_trusted', '2025-12-01 18:00:01.689208'),
(42, 'axes', '0006_remove_accesslog_trusted', '2025-12-01 18:00:01.716906'),
(43, 'axes', '0007_alter_accessattempt_unique_together', '2025-12-01 18:00:01.764980'),
(44, 'axes', '0008_accessfailurelog', '2025-12-01 18:00:01.843786'),
(45, 'axes', '0009_add_session_hash', '2025-12-01 18:00:01.866144');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1g8x4846rflbyq8xbnucfz5lyd5aqvo0', '.eJxVjMsOwiAUBf-FtSFQLm1x6d5vINwHUjU0Ke3K-O_apAvdnpk5LxXTtpa4NVnixOqsrDr9bpjoIXUHfE_1Nmua67pMqHdFH7Tp68zyvBzu30FJrXzrgAgkOUFGDgbBGztwRwN0XjjImEXEWUvZOxQyHgyF0QD1rmdJTtT7AxJPOO0:1vQ8iT:lDomEYENp52uZ76ArMCkNu9NbKmDJ8ZsIVAx1Lcxl9A', '2025-12-01 19:33:41.578665'),
('9sbjg5x6bdgah1im5gh72prxb6b1mjtg', '.eJxVjMsOwiAUBf-FtSFQLm1x6d5vINwHUjU0Ke3K-O_apAvdnpk5LxXTtpa4NVnixOqsrDr9bpjoIXUHfE_1Nmua67pMqHdFH7Tp68zyvBzu30FJrXzrgAgkOUFGDgbBGztwRwN0XjjImEXEWUvZOxQyHgyF0QD1rmdJTtT7AxJPOO0:1vQP8A:OGHYAnrqzCNfIenv9jqiGIaR3znCFF6vN73zTv_omoM', '2025-12-02 13:05:18.430919'),
('dkbog13bgkf73bj63t0swxmlvislaa51', '.eJxVjMsOwiAUBf-FtSFQLm1x6d5vINwHUjU0Ke3K-O_apAvdnpk5LxXTtpa4NVnixOqsrDr9bpjoIXUHfE_1Nmua67pMqHdFH7Tp68zyvBzu30FJrXzrgAgkOUFGDgbBGztwRwN0XjjImEXEWUvZOxQyHgyF0QD1rmdJTtT7AxJPOO0:1vQLOS:ybPSfKrcIK-EMieuyy3-E0kzMJw5ndzd9OFR1G6vleY', '2025-12-02 09:05:52.872720');

-- --------------------------------------------------------

--
-- Table structure for table `django_summernote_attachment`
--

CREATE TABLE `django_summernote_attachment` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `uploaded` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents_documenttemplate`
--

CREATE TABLE `documents_documenttemplate` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `html_template` longtext NOT NULL,
  `css_template` longtext NOT NULL,
  `ukuran_kertas` varchar(20) NOT NULL,
  `orientasi` varchar(20) NOT NULL,
  `margin_top` varchar(20) NOT NULL,
  `margin_right` varchar(20) NOT NULL,
  `margin_bottom` varchar(20) NOT NULL,
  `margin_left` varchar(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments_bankaccount`
--

CREATE TABLE `payments_bankaccount` (
  `id` bigint(20) NOT NULL,
  `nama_bank` varchar(100) NOT NULL,
  `nama_bank_custom` varchar(100) NOT NULL,
  `nomor_rekening` varchar(50) NOT NULL,
  `nama_pemilik_rekening` varchar(200) NOT NULL,
  `biaya_pendaftaran` decimal(10,0) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `keterangan` longtext NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0),
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments_bankaccount`
--

INSERT INTO `payments_bankaccount` (`id`, `nama_bank`, `nama_bank_custom`, `nomor_rekening`, `nama_pemilik_rekening`, `biaya_pendaftaran`, `is_active`, `keterangan`, `order`, `created_at`, `updated_at`) VALUES
(1, 'BCA', '', '1234567890', 'Pondok Pesantren Al-Hikmah', 500000, 1, 'Rekening utama untuk pembayaran pendaftaran', 1, '2025-12-01 17:44:14.040973', '2025-12-01 17:44:14.040973'),
(2, 'BNI', '', '9876543210', 'Pondok Pesantren Al-Hikmah', 500000, 1, 'Rekening alternatif untuk pembayaran pendaftaran', 2, '2025-12-01 17:44:14.043485', '2025-12-01 17:44:14.043485'),
(3, 'BRI', '', '1122334455', 'Pondok Pesantren Al-Hikmah', 500000, 1, 'Rekening alternatif untuk pembayaran pendaftaran', 3, '2025-12-01 17:44:14.045484', '2025-12-01 17:44:14.045484'),
(4, 'Mandiri', '', '5566778899', 'Pondok Pesantren Al-Hikmah', 500000, 1, 'Rekening alternatif untuk pembayaran pendaftaran', 4, '2025-12-01 17:44:14.047470', '2025-12-01 17:44:14.047470'),
(5, 'BSI', '', '6677889900', 'Pondok Pesantren Al-Hikmah', 500000, 1, 'Rekening syariah untuk pembayaran pendaftaran', 5, '2025-12-01 17:44:14.049470', '2025-12-01 17:44:14.049470');

-- --------------------------------------------------------

--
-- Table structure for table `payments_payment`
--

CREATE TABLE `payments_payment` (
  `id` bigint(20) NOT NULL,
  `bank_pengirim` varchar(50) NOT NULL,
  `no_rekening_pengirim` varchar(50) NOT NULL,
  `nama_pemilik_rekening` varchar(200) NOT NULL,
  `rekening_tujuan` varchar(50) NOT NULL,
  `jumlah_transfer` decimal(12,2) NOT NULL,
  `bukti_transfer` varchar(100) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `catatan` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `verified_at` datetime(6) DEFAULT NULL,
  `santri_id` bigint(20) NOT NULL,
  `verified_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_loginhistory`
--

CREATE TABLE `users_loginhistory` (
  `id` bigint(20) NOT NULL,
  `username` varchar(150) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `user_agent` longtext NOT NULL,
  `status` varchar(10) NOT NULL,
  `error_message` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_loginhistory`
--

INSERT INTO `users_loginhistory` (`id`, `username`, `ip_address`, `user_agent`, `status`, `error_message`, `created_at`, `user_id`) VALUES
(1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'success', '', '2025-12-01 17:49:48.473920', 1),
(2, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'success', '', '2025-12-01 17:50:33.277506', 1),
(3, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'success', '', '2025-12-02 04:39:36.497883', 1),
(4, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'success', '', '2025-12-02 04:45:50.174540', 1),
(5, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'success', '', '2025-12-02 11:57:35.336827', 1),
(6, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'success', '', '2025-12-02 12:00:14.703145', 1),
(7, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'success', '', '2025-12-02 12:04:02.397074', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_user`
--

CREATE TABLE `users_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `role` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_user`
--

INSERT INTO `users_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `role`, `phone`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'pbkdf2_sha256$1000000$D95eHS37GjfPfKkr6vTrrP$C7uzM0yGRbirTfA8f/ckR9ka9LXr/qtYi99J9mv8Ej8=', '2025-12-02 12:04:02.380710', 1, 'admin', 'Administrator', 'Pondok', 'admin@pondok.id', 1, 1, '2025-12-01 17:38:39.095944', 'superadmin', '', 'avatars/2025/12/02/desain-tanpa-judul-1.png', '2025-12-01 17:38:39.095944', '2025-12-02 04:53:35.217867'),
(2, 'pbkdf2_sha256$1000000$Ly74qmIILRxBLz8u5XTMl3$cv7hZTfDnMlnthTP/I2sThew2hn70lGNe++iUZ+D+YA=', NULL, 0, 'petugas', 'Petugas', 'Pendaftaran', 'petugas@pondok.id', 1, 1, '2025-12-01 17:38:39.394440', 'petugaspendaftaran', '', '', '2025-12-01 17:38:39.394440', '2025-12-01 17:38:39.661374'),
(3, 'pbkdf2_sha256$1000000$K0gGR280rEuvB6TQTcAPNI$WU3uQfR+RSlgGt3MxqV3eqDB3xYql4MpGp/fQDgY+mI=', NULL, 0, 'demo', 'Demo', 'User', 'demo@pondok.id', 0, 1, '2025-12-01 17:38:39.673224', 'user', '', '', '2025-12-01 17:38:39.673224', '2025-12-01 17:38:39.940361');

-- --------------------------------------------------------

--
-- Table structure for table `users_user_groups`
--

CREATE TABLE `users_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_user_user_permissions`
--

CREATE TABLE `users_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_panel_convertedimage`
--
ALTER TABLE `admin_panel_convertedimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_panel_converte_created_by_id_1e6b68aa_fk_users_use` (`created_by_id`);

--
-- Indexes for table `admissions_santri`
--
ALTER TABLE `admissions_santri`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nisn` (`nisn`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `axes_accessattempt`
--
ALTER TABLE `axes_accessattempt`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `axes_accessattempt_username_ip_address_user_agent_8ea22282_uniq` (`username`,`ip_address`,`user_agent`),
  ADD KEY `axes_accessattempt_ip_address_10922d9c` (`ip_address`),
  ADD KEY `axes_accessattempt_user_agent_ad89678b` (`user_agent`),
  ADD KEY `axes_accessattempt_username_3f2d4ca0` (`username`);

--
-- Indexes for table `axes_accessfailurelog`
--
ALTER TABLE `axes_accessfailurelog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `axes_accessfailurelog_user_agent_ea145dda` (`user_agent`),
  ADD KEY `axes_accessfailurelog_ip_address_2e9f5a7f` (`ip_address`),
  ADD KEY `axes_accessfailurelog_username_a8b7e8a4` (`username`);

--
-- Indexes for table `axes_accesslog`
--
ALTER TABLE `axes_accesslog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `axes_accesslog_ip_address_86b417e5` (`ip_address`),
  ADD KEY `axes_accesslog_user_agent_0e659004` (`user_agent`),
  ADD KEY `axes_accesslog_username_df93064b` (`username`);

--
-- Indexes for table `blog_blogimage`
--
ALTER TABLE `blog_blogimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_blogimage_blog_post_id_8193e676_fk_blog_blogpost_id` (`blog_post_id`);

--
-- Indexes for table `blog_blogpost`
--
ALTER TABLE `blog_blogpost`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `blog_blogpost_author_id_ffcc150f_fk_users_user_id` (`author_id`),
  ADD KEY `blog_blogpost_category_id_0e9835dd_fk_blog_category_id` (`category_id`),
  ADD KEY `blog_blogpo_publish_2530e0_idx` (`published_at`,`status`),
  ADD KEY `blog_blogpo_slug_361555_idx` (`slug`);

--
-- Indexes for table `blog_blogpost_tags`
--
ALTER TABLE `blog_blogpost_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_blogpost_tags_blogpost_id_tag_id_657ed214_uniq` (`blogpost_id`,`tag_id`),
  ADD KEY `blog_blogpost_tags_tag_id_680e7081_fk_blog_tag_id` (`tag_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `blog_pengumuman`
--
ALTER TABLE `blog_pengumuman`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `blog_tag`
--
ALTER TABLE `blog_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `blog_testimoni`
--
ALTER TABLE `blog_testimoni`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_alurpendaftaran`
--
ALTER TABLE `core_alurpendaftaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_bagianjabatan`
--
ALTER TABLE `core_bagianjabatan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `core_biayapendidikan`
--
ALTER TABLE `core_biayapendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_contactperson`
--
ALTER TABLE `core_contactperson`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_dokumentasi`
--
ALTER TABLE `core_dokumentasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_dokumentasiimage`
--
ALTER TABLE `core_dokumentasiimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_dokumentasiimag_dokumentasi_id_ca656bf8_fk_core_doku` (`dokumentasi_id`);

--
-- Indexes for table `core_ekstrakurikuler`
--
ALTER TABLE `core_ekstrakurikuler`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_ekstrakurikulerimage`
--
ALTER TABLE `core_ekstrakurikulerimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_ekstrakurikuler_ekstrakurikuler_id_13e26d0d_fk_core_ekst` (`ekstrakurikuler_id`);

--
-- Indexes for table `core_faq`
--
ALTER TABLE `core_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_fasilitas`
--
ALTER TABLE `core_fasilitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_herosection`
--
ALTER TABLE `core_herosection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_informasitambahan`
--
ALTER TABLE `core_informasitambahan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_jadwalharian`
--
ALTER TABLE `core_jadwalharian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_kmi`
--
ALTER TABLE `core_kmi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_kontak`
--
ALTER TABLE `core_kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_media`
--
ALTER TABLE `core_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_persyaratan`
--
ALTER TABLE `core_persyaratan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_program`
--
ALTER TABLE `core_program`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `core_programpendidikan`
--
ALTER TABLE `core_programpendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_programpendidikanimage`
--
ALTER TABLE `core_programpendidikanimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_programpendidik_program_id_85dde9ce_fk_core_prog` (`program_id`);

--
-- Indexes for table `core_sejarahtimeline`
--
ALTER TABLE `core_sejarahtimeline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_sejarahtimelineimage`
--
ALTER TABLE `core_sejarahtimelineimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_sejarahtimeline_timeline_id_9fd40b07_fk_core_seja` (`timeline_id`);

--
-- Indexes for table `core_seragam`
--
ALTER TABLE `core_seragam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_socialmedia`
--
ALTER TABLE `core_socialmedia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_statistik`
--
ALTER TABLE `core_statistik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_tenagapengajar`
--
ALTER TABLE `core_tenagapengajar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_tenagapengajar_bagian_jabatan_id_39bcc0a1_fk_core_bagi` (`bagian_jabatan_id`);

--
-- Indexes for table `core_visimisi`
--
ALTER TABLE `core_visimisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_websitesettings`
--
ALTER TABLE `core_websitesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_whatsapptemplate`
--
ALTER TABLE `core_whatsapptemplate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_whatsapptemplat_kategori_id_3f511673_fk_core_what` (`kategori_id`);

--
-- Indexes for table `core_whatsapptemplatekategori`
--
ALTER TABLE `core_whatsapptemplatekategori`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_users_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `django_summernote_attachment`
--
ALTER TABLE `django_summernote_attachment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents_documenttemplate`
--
ALTER TABLE `documents_documenttemplate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `payments_bankaccount`
--
ALTER TABLE `payments_bankaccount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments_payment`
--
ALTER TABLE `payments_payment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `santri_id` (`santri_id`),
  ADD KEY `payments_payment_verified_by_id_d4a4b387_fk_users_user_id` (`verified_by_id`);

--
-- Indexes for table `users_loginhistory`
--
ALTER TABLE `users_loginhistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_login_usernam_33d3fe_idx` (`username`,`created_at`),
  ADD KEY `users_login_user_id_fe6b3a_idx` (`user_id`,`created_at`);

--
-- Indexes for table `users_user`
--
ALTER TABLE `users_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users_user_groups`
--
ALTER TABLE `users_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_groups_user_id_group_id_b88eab82_uniq` (`user_id`,`group_id`),
  ADD KEY `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `users_user_user_permissions`
--
ALTER TABLE `users_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_user_permissions_user_id_permission_id_43338c45_uniq` (`user_id`,`permission_id`),
  ADD KEY `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` (`permission_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_panel_convertedimage`
--
ALTER TABLE `admin_panel_convertedimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admissions_santri`
--
ALTER TABLE `admissions_santri`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `axes_accessattempt`
--
ALTER TABLE `axes_accessattempt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `axes_accessfailurelog`
--
ALTER TABLE `axes_accessfailurelog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `axes_accesslog`
--
ALTER TABLE `axes_accesslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blog_blogimage`
--
ALTER TABLE `blog_blogimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `blog_blogpost`
--
ALTER TABLE `blog_blogpost`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `blog_blogpost_tags`
--
ALTER TABLE `blog_blogpost_tags`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blog_pengumuman`
--
ALTER TABLE `blog_pengumuman`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blog_tag`
--
ALTER TABLE `blog_tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `blog_testimoni`
--
ALTER TABLE `blog_testimoni`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `core_alurpendaftaran`
--
ALTER TABLE `core_alurpendaftaran`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_bagianjabatan`
--
ALTER TABLE `core_bagianjabatan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `core_biayapendidikan`
--
ALTER TABLE `core_biayapendidikan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `core_contactperson`
--
ALTER TABLE `core_contactperson`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `core_dokumentasi`
--
ALTER TABLE `core_dokumentasi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_dokumentasiimage`
--
ALTER TABLE `core_dokumentasiimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_ekstrakurikuler`
--
ALTER TABLE `core_ekstrakurikuler`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `core_ekstrakurikulerimage`
--
ALTER TABLE `core_ekstrakurikulerimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_faq`
--
ALTER TABLE `core_faq`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `core_fasilitas`
--
ALTER TABLE `core_fasilitas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `core_herosection`
--
ALTER TABLE `core_herosection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `core_informasitambahan`
--
ALTER TABLE `core_informasitambahan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_jadwalharian`
--
ALTER TABLE `core_jadwalharian`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `core_kmi`
--
ALTER TABLE `core_kmi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_kontak`
--
ALTER TABLE `core_kontak`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_media`
--
ALTER TABLE `core_media`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_persyaratan`
--
ALTER TABLE `core_persyaratan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_program`
--
ALTER TABLE `core_program`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_programpendidikan`
--
ALTER TABLE `core_programpendidikan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `core_programpendidikanimage`
--
ALTER TABLE `core_programpendidikanimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_sejarahtimeline`
--
ALTER TABLE `core_sejarahtimeline`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `core_sejarahtimelineimage`
--
ALTER TABLE `core_sejarahtimelineimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_seragam`
--
ALTER TABLE `core_seragam`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `core_socialmedia`
--
ALTER TABLE `core_socialmedia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `core_statistik`
--
ALTER TABLE `core_statistik`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core_tenagapengajar`
--
ALTER TABLE `core_tenagapengajar`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `core_visimisi`
--
ALTER TABLE `core_visimisi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_websitesettings`
--
ALTER TABLE `core_websitesettings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_whatsapptemplate`
--
ALTER TABLE `core_whatsapptemplate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_whatsapptemplatekategori`
--
ALTER TABLE `core_whatsapptemplatekategori`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `django_summernote_attachment`
--
ALTER TABLE `django_summernote_attachment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents_documenttemplate`
--
ALTER TABLE `documents_documenttemplate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments_bankaccount`
--
ALTER TABLE `payments_bankaccount`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments_payment`
--
ALTER TABLE `payments_payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users_loginhistory`
--
ALTER TABLE `users_loginhistory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users_user`
--
ALTER TABLE `users_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_user_groups`
--
ALTER TABLE `users_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_user_user_permissions`
--
ALTER TABLE `users_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_panel_convertedimage`
--
ALTER TABLE `admin_panel_convertedimage`
  ADD CONSTRAINT `admin_panel_converte_created_by_id_1e6b68aa_fk_users_use` FOREIGN KEY (`created_by_id`) REFERENCES `users_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `blog_blogimage`
--
ALTER TABLE `blog_blogimage`
  ADD CONSTRAINT `blog_blogimage_blog_post_id_8193e676_fk_blog_blogpost_id` FOREIGN KEY (`blog_post_id`) REFERENCES `blog_blogpost` (`id`);

--
-- Constraints for table `blog_blogpost`
--
ALTER TABLE `blog_blogpost`
  ADD CONSTRAINT `blog_blogpost_author_id_ffcc150f_fk_users_user_id` FOREIGN KEY (`author_id`) REFERENCES `users_user` (`id`),
  ADD CONSTRAINT `blog_blogpost_category_id_0e9835dd_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`);

--
-- Constraints for table `blog_blogpost_tags`
--
ALTER TABLE `blog_blogpost_tags`
  ADD CONSTRAINT `blog_blogpost_tags_blogpost_id_cdcddf6c_fk_blog_blogpost_id` FOREIGN KEY (`blogpost_id`) REFERENCES `blog_blogpost` (`id`),
  ADD CONSTRAINT `blog_blogpost_tags_tag_id_680e7081_fk_blog_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `blog_tag` (`id`);

--
-- Constraints for table `core_dokumentasiimage`
--
ALTER TABLE `core_dokumentasiimage`
  ADD CONSTRAINT `core_dokumentasiimag_dokumentasi_id_ca656bf8_fk_core_doku` FOREIGN KEY (`dokumentasi_id`) REFERENCES `core_dokumentasi` (`id`);

--
-- Constraints for table `core_ekstrakurikulerimage`
--
ALTER TABLE `core_ekstrakurikulerimage`
  ADD CONSTRAINT `core_ekstrakurikuler_ekstrakurikuler_id_13e26d0d_fk_core_ekst` FOREIGN KEY (`ekstrakurikuler_id`) REFERENCES `core_ekstrakurikuler` (`id`);

--
-- Constraints for table `core_programpendidikanimage`
--
ALTER TABLE `core_programpendidikanimage`
  ADD CONSTRAINT `core_programpendidik_program_id_85dde9ce_fk_core_prog` FOREIGN KEY (`program_id`) REFERENCES `core_programpendidikan` (`id`);

--
-- Constraints for table `core_sejarahtimelineimage`
--
ALTER TABLE `core_sejarahtimelineimage`
  ADD CONSTRAINT `core_sejarahtimeline_timeline_id_9fd40b07_fk_core_seja` FOREIGN KEY (`timeline_id`) REFERENCES `core_sejarahtimeline` (`id`);

--
-- Constraints for table `core_tenagapengajar`
--
ALTER TABLE `core_tenagapengajar`
  ADD CONSTRAINT `core_tenagapengajar_bagian_jabatan_id_39bcc0a1_fk_core_bagi` FOREIGN KEY (`bagian_jabatan_id`) REFERENCES `core_bagianjabatan` (`id`);

--
-- Constraints for table `core_whatsapptemplate`
--
ALTER TABLE `core_whatsapptemplate`
  ADD CONSTRAINT `core_whatsapptemplat_kategori_id_3f511673_fk_core_what` FOREIGN KEY (`kategori_id`) REFERENCES `core_whatsapptemplatekategori` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);

--
-- Constraints for table `payments_payment`
--
ALTER TABLE `payments_payment`
  ADD CONSTRAINT `payments_payment_santri_id_0776525e_fk_admissions_santri_id` FOREIGN KEY (`santri_id`) REFERENCES `admissions_santri` (`id`),
  ADD CONSTRAINT `payments_payment_verified_by_id_d4a4b387_fk_users_user_id` FOREIGN KEY (`verified_by_id`) REFERENCES `users_user` (`id`);

--
-- Constraints for table `users_loginhistory`
--
ALTER TABLE `users_loginhistory`
  ADD CONSTRAINT `users_loginhistory_user_id_9e68879b_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);

--
-- Constraints for table `users_user_groups`
--
ALTER TABLE `users_user_groups`
  ADD CONSTRAINT `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `users_user_groups_user_id_5f6f5a90_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);

--
-- Constraints for table `users_user_user_permissions`
--
ALTER TABLE `users_user_user_permissions`
  ADD CONSTRAINT `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `users_user_user_permissions_user_id_20aca447_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
