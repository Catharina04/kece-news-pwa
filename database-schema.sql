-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 14, 2026 at 06:26 AM
-- Server version: 8.0.46-0ubuntu0.24.04.2
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kece-news`
--
CREATE DATABASE IF NOT EXISTS `kece-news` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `kece-news`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int NOT NULL,
  `nama_kategori` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_general_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `nama_kategori`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Politik', 'Berita seputar politik dalam dan luar negeri', '2026-01-15 07:15:47', '2026-01-15 07:15:47'),
(2, 'Ekonomi', 'Berita ekonomi, bisnis, dan keuangan', '2026-01-15 07:15:47', '2026-01-15 07:15:47'),
(3, 'Teknologi', 'Berita teknologi, gadget, dan inovasi', '2026-01-15 07:15:47', '2026-01-15 07:15:47'),
(4, 'Olahraga', 'Berita olahraga dan pertandingan', '2026-01-15 07:15:47', '2026-01-15 07:15:47'),
(5, 'Hiburan', 'Berita hiburan, selebriti, dan lifestyle', '2026-01-15 07:15:47', '2026-01-15 07:15:47'),
(6, 'Pendidikan', 'Berita pendidikan dan akademik', '2026-01-15 07:15:47', '2026-01-15 07:15:47'),
(7, 'Kesehatan', 'Berita kesehatan dan medis', '2026-01-15 07:15:47', '2026-01-15 07:15:47'),
(8, 'Lingkungan', 'Berita lingkungan dan iklim', '2026-01-15 07:15:47', '2026-01-15 07:15:47'),
(9, 'Internasional', 'Peristiwa global dan diplomasi', '2026-01-15 07:15:47', '2026-01-15 07:15:47'),
(10, 'Sains', 'Riset ilmiah dan penemuan terbaru', '2026-01-15 07:15:47', '2026-01-15 07:15:47');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int NOT NULL,
  `news_id` int NOT NULL,
  `user_id` int NOT NULL,
  `parent_comment_id` int DEFAULT NULL,
  `comment_text` text COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `news_id`, `user_id`, `parent_comment_id`, `comment_text`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, 'Ini terobosan luar biasa! Apakah sudah tersedia untuk umum?', '2026-01-15 07:15:47', '2026-01-15 07:15:47'),
(2, 1, 1, 1, 'Belum, masih dalam tahap uji coba di 3 rumah sakit besar.', '2026-01-15 07:15:47', '2026-01-15 07:15:47'),
(3, 3, 3, NULL, 'Akhirnya! Generasi kita bisa melihat emas di sepak bola.', '2026-01-15 07:15:47', '2026-01-15 07:15:47'),
(4, 3, 2, 3, 'Semoga prestasi ini berlanjut ke level Asia!', '2026-01-15 07:15:47', '2026-01-15 07:15:47'),
(5, 5, 1, NULL, 'Filmnya keren banget, efeknya natural meski budget kecil.', '2026-01-15 07:15:47', '2026-01-15 07:15:47'),
(6, 7, 3, NULL, 'Kapan mulai bisa dipesan? Saya tunggu dari dulu!', '2026-01-15 07:15:47', '2026-01-15 07:15:47'),
(7, 9, 2, NULL, 'Semoga distribusinya merata ke daerah juga ya.', '2026-01-15 07:15:47', '2026-01-15 07:15:47'),
(8, 10, 1, NULL, 'Anak saya sangat antusias! Sekolahnya langsung daftar program ini.', '2026-01-15 07:15:47', '2026-01-15 07:15:47'),
(9, 11, 3, NULL, 'Daerah saya termasuk yang terdampak. Butuh solusi cepat.', '2026-01-15 07:15:47', '2026-01-15 07:15:47'),
(11, 1, 5, 1, 'oalaah', '2026-06-13 13:06:58', '2026-06-13 13:06:58'),
(12, 1, 5, NULL, 'kereennn', '2026-06-13 13:08:05', '2026-06-13 13:08:05');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
CREATE TABLE `favorites` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `news_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `news_id`, `created_at`) VALUES
(1, 1, 1, '2026-01-15 07:15:48'),
(2, 1, 3, '2026-01-15 07:15:48'),
(3, 1, 7, '2026-01-15 07:15:48'),
(4, 1, 10, '2026-01-15 07:15:48'),
(5, 2, 2, '2026-01-15 07:15:48'),
(6, 2, 5, '2026-01-15 07:15:48'),
(7, 2, 8, '2026-01-15 07:15:48'),
(8, 2, 12, '2026-01-15 07:15:48'),
(9, 3, 3, '2026-01-15 07:15:48'),
(10, 3, 6, '2026-01-15 07:15:48'),
(11, 3, 9, '2026-01-15 07:15:48'),
(12, 3, 11, '2026-01-15 07:15:48'),
(14, 5, 1, '2026-06-13 13:08:49');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_general_ci NOT NULL,
  `foto_utama` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `view_count` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `user_id`, `judul`, `deskripsi`, `foto_utama`, `view_count`, `created_at`, `updated_at`) VALUES
(1, 1, 'AI Kini Bisa Deteksi Penyakit Jantung Lebih Dini', 'Peneliti mengembangkan model AI yang mampu memprediksi risiko serangan jantung dari data EKG biasa.', 'https://images.unsplash.com/photo-1620712943543-bcc4688e7485?w=800', 1258, '2026-01-15 07:15:47', '2026-06-13 13:07:26'),
(2, 2, 'Startup EduTech Lokal Raih Pendanaan Seri B', 'Platform belajar daring asal Bandung berhasil mengumpulkan dana $15 juta dari investor global.', 'https://images.unsplash.com/photo-1513258496099-48168024aec0?w=800', 994, '2026-01-15 07:15:47', '2026-01-15 09:12:45'),
(3, 3, 'Timnas U-23 Menang Dramatis di Final SEA Games', 'Gol menit akhir membawa Indonesia meraih emas setelah 30 tahun menanti.', 'https://images.unsplash.com/photo-1574629810360-7efbbe195018?w=800', 3216, '2026-01-15 07:15:47', '2026-06-13 13:03:55'),
(4, 1, 'Kebijakan Baru Subsidi Listrik Mulai Berlaku', 'Pemerintah menyesuaikan skema subsidi untuk rumah tangga miskin dan menengah.', 'https://images.unsplash.com/photo-1590283603385-17ffb3a7f29f?w=800', 876, '2026-01-15 07:15:47', '2026-01-15 08:47:44'),
(5, 2, 'Film Horor Lokal Pecahkan Rekor Box Office', 'Dengan budget minim, film ini sukses mengumpulkan 5 juta penonton dalam dua minggu.', 'https://images.unsplash.com/photo-1536440136628-849c177e76a1?w=800', 1565, '2026-01-15 07:15:47', '2026-01-15 07:24:12'),
(6, 3, 'Universitas Indonesia Luncurkan Program Beasiswa Hijau', 'Beasiswa khusus untuk mahasiswa yang fokus pada isu perubahan iklim dan energi terbarukan.', 'https://images.unsplash.com/photo-1434030216411-0b793f4b4173?w=800', 729, '2026-01-15 07:15:47', '2026-01-15 07:24:16'),
(7, 1, 'Mobil Listrik Nasional Siap Diproduksi Massal', 'Pabrikan lokal akan mulai distribusi ke seluruh Indonesia mulai Q3 2026.', 'https://images.unsplash.com/photo-1503376780353-7e6692767b70?w=800', 2106, '2026-01-15 07:15:47', '2026-01-15 07:24:19'),
(8, 2, 'Indonesia Tuan Rumah Konferensi Iklim ASEAN', 'Acara ini dihadiri oleh 10 negara anggota ASEAN dan mitra dialog.', 'https://images.unsplash.com/photo-1559136555-9303baea8ebd?w=800', 645, '2026-01-15 07:15:47', '2026-01-15 07:24:23'),
(9, 3, 'Vaksin Baru untuk Demam Berdarah Disetujui BPOM', 'Vaksin ini menunjukkan efikasi 92% dalam uji klinis fase III.', 'https://images.unsplash.com/photo-1576091160399-112ba8d25d1d?w=800', 1324, '2026-01-15 07:15:47', '2026-01-15 09:37:42'),
(10, 1, 'Esports Resmi Masuk Kurikulum SMK', 'Kemendikbudristek resmi mengakui esports sebagai bidang studi kejuruan.', 'https://images.unsplash.com/photo-1550745165-9bc0b252726f?w=800', 1893, '2026-01-15 07:15:47', '2026-01-15 07:24:30'),
(11, 2, 'Krisis Air Bersih Melanda 5 Kota Besar', 'Musim kemarau panjang dan infrastruktur buruk memperparah kelangkaan air.', 'https://images.unsplash.com/photo-1466692476868-aef1dfb1e735?w=800', 954, '2026-01-15 07:15:47', '2026-01-15 07:24:33'),
(12, 3, 'Robot Pelayan Restoran Hadir di Jakarta', 'Teknologi ini diharapkan meningkatkan efisiensi dan pengalaman pelanggan.', 'https://images.unsplash.com/photo-1677442136019-21780ecad995?w=800', 1056, '2026-01-15 07:15:47', '2026-01-15 07:24:37'),
(14, 5, 'Investasi Energi Hijau Global Cetak Rekor Baru US$ 2 Triliun di Tahun 2026', 'Investasi global dalam transisi energi bersih dilaporkan mencapai rekor tertinggi baru sebesar US$ 2 triliun pada paruh pertama tahun 2026. Laporan terbaru dari Badan Energi Internasional (IEA) menunjukkan bahwa lonjakan ini didorong oleh ekspansi besar-besaran proyek tenaga surya dan angin di Asia dan Eropa.\n\nNegara-negara maju kian mempercepat transisi demi mengurangi ketergantungan pada bahan bakar fosil di tengah ketidakpastian geopolitik global. Sektor transportasi listrik (EV) dan infrastruktur penyimpanan energi baterai menjadi penyumbang pertumbuhan terbesar kedua setelah sektor pembangkit listrik tenaga surya.\n\nPara analis ekonomi memprediksi tren positif ini akan terus berlanjut hingga akhir tahun, memberikan stimulus ekonomi baru serta membuka jutaan lapangan kerja hijau (green jobs) di berbagai belahan dunia. Namun, tantangan integrasi jaringan listrik (grid integration) masih menjadi pekerjaan rumah terbesar bagi banyak negara.', 'https://images.unsplash.com/photo-1473341304170-971dccb5ac1e?w=1200&auto=format&fit=crop&q=80', 4, '2026-06-13 13:15:18', '2026-06-13 13:16:30');

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

DROP TABLE IF EXISTS `news_categories`;
CREATE TABLE `news_categories` (
  `id` int NOT NULL,
  `news_id` int NOT NULL,
  `category_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news_categories`
--

INSERT INTO `news_categories` (`id`, `news_id`, `category_id`, `created_at`) VALUES
(1, 1, 3, '2026-01-15 07:15:47'),
(2, 1, 7, '2026-01-15 07:15:47'),
(3, 1, 10, '2026-01-15 07:15:47'),
(4, 2, 6, '2026-01-15 07:15:47'),
(5, 2, 2, '2026-01-15 07:15:47'),
(6, 3, 4, '2026-01-15 07:15:47'),
(7, 3, 1, '2026-01-15 07:15:47'),
(8, 4, 2, '2026-01-15 07:15:47'),
(9, 4, 1, '2026-01-15 07:15:47'),
(10, 5, 5, '2026-01-15 07:15:47'),
(11, 5, 6, '2026-01-15 07:15:47'),
(12, 6, 6, '2026-01-15 07:15:47'),
(13, 6, 8, '2026-01-15 07:15:47'),
(14, 7, 2, '2026-01-15 07:15:47'),
(15, 7, 3, '2026-01-15 07:15:47'),
(16, 7, 10, '2026-01-15 07:15:47'),
(17, 8, 8, '2026-01-15 07:15:47'),
(18, 8, 1, '2026-01-15 07:15:47'),
(19, 8, 9, '2026-01-15 07:15:47'),
(20, 9, 7, '2026-01-15 07:15:47'),
(21, 9, 10, '2026-01-15 07:15:47'),
(22, 10, 3, '2026-01-15 07:15:47'),
(23, 10, 6, '2026-01-15 07:15:47'),
(24, 11, 8, '2026-01-15 07:15:47'),
(25, 11, 2, '2026-01-15 07:15:47'),
(26, 12, 3, '2026-01-15 07:15:47'),
(27, 12, 5, '2026-01-15 07:15:47'),
(30, 8, 4, '2026-01-15 08:44:19'),
(31, 12, 9, '2026-01-15 08:44:33'),
(34, 14, 2, '2026-06-13 13:15:18'),
(35, 14, 9, '2026-06-13 13:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `news_images`
--

DROP TABLE IF EXISTS `news_images`;
CREATE TABLE `news_images` (
  `id` int NOT NULL,
  `news_id` int NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `urutan` int DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news_images`
--

INSERT INTO `news_images` (`id`, `news_id`, `image_path`, `urutan`, `created_at`) VALUES
(1, 1, 'https://images.unsplash.com/photo-1620712943543-bcc4688e7485?w=800', 1, '2026-01-15 07:15:47'),
(2, 1, 'https://images.unsplash.com/photo-1582408921715-18e7806365c1?w=800', 2, '2026-01-15 07:15:47'),
(3, 1, 'https://images.unsplash.com/photo-1576091160550-2173dba999ef?w=800', 3, '2026-01-15 07:15:47'),
(4, 1, 'https://images.unsplash.com/photo-1530497610245-94d3c16cda28?w=800', 4, '2026-01-15 07:15:47'),
(5, 2, 'https://images.unsplash.com/photo-1574629810360-7efbbe195018?w=800', 1, '2026-01-15 07:15:47'),
(6, 2, 'https://images.unsplash.com/photo-1522202176988-66273c2fd55f?w=800', 2, '2026-01-15 07:15:47'),
(7, 2, 'https://images.unsplash.com/photo-1524178232363-1fb2b075b655?w=800', 3, '2026-01-15 07:15:47'),
(8, 3, 'https://images.unsplash.com/photo-1590283603385-17ffb3a7f29f?w=800', 1, '2026-01-15 07:15:47'),
(9, 3, 'https://images.unsplash.com/photo-1524178232363-1fb2b075b655?w=800', 2, '2026-01-15 07:15:47'),
(10, 3, 'https://images.unsplash.com/photo-1576091160550-2173dba999ef?w=800', 3, '2026-01-15 07:15:47'),
(11, 3, 'https://images.unsplash.com/photo-1489944440615-453fc2b6a9a9?w=800', 4, '2026-01-15 07:15:47'),
(12, 4, 'https://images.unsplash.com/photo-1536440136628-849c177e76a1?w=800', 1, '2026-01-15 07:15:47'),
(13, 4, 'https://images.unsplash.com/photo-1473341304170-971dccb5ac1e?w=800', 2, '2026-01-15 07:15:47'),
(14, 4, 'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=800', 3, '2026-01-15 07:15:47'),
(15, 5, 'https://images.unsplash.com/photo-1434030216411-0b793f4b4173?w=800a', 1, '2026-01-15 07:15:47'),
(16, 5, 'https://images.unsplash.com/photo-1478720568477-152d9b164e26?w=800', 2, '2026-01-15 07:15:47'),
(17, 5, 'https://images.unsplash.com/photo-1440404653325-ab127d49abc1?w=800', 3, '2026-01-15 07:15:47'),
(18, 5, 'https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?w=800', 4, '2026-01-15 07:15:47'),
(19, 6, 'https://images.unsplash.com/photo-1503376780353-7e6692767b70?w=800', 1, '2026-01-15 07:15:47'),
(20, 6, 'https://images.unsplash.com/photo-1593941707882-a5bba14938c7?w=800', 2, '2026-01-15 07:15:47'),
(21, 6, 'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=800', 3, '2026-01-15 07:15:47'),
(22, 7, 'https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?w=800', 1, '2026-01-15 07:15:47'),
(23, 7, 'https://images.unsplash.com/photo-1593941707882-a5bba14938c7?w=800', 2, '2026-01-15 07:15:47'),
(24, 7, 'https://images.unsplash.com/photo-1552519507-da3b142c6e3d?w=800', 3, '2026-01-15 07:15:47'),
(25, 7, 'https://images.unsplash.com/photo-1617788138017-80ad40651399?w=800', 4, '2026-01-15 07:15:47'),
(26, 8, 'https://images.unsplash.com/photo-1593941707882-a5bba14938c7?w=800', 1, '2026-01-15 07:15:47'),
(27, 8, 'https://images.unsplash.com/photo-1587825140708-dfaf72ae4b04?w=800', 2, '2026-01-15 07:15:47'),
(28, 8, 'https://images.unsplash.com/photo-1464207687429-7505649dae38?w=800', 3, '2026-01-15 07:15:47'),
(29, 9, 'https://images.unsplash.com/photo-1464207687429-7505649dae38?w=800', 1, '2026-01-15 07:15:47'),
(30, 9, 'https://images.unsplash.com/photo-1587854692152-cbe660dbde88?w=800', 2, '2026-01-15 07:15:47'),
(31, 9, 'https://images.unsplash.com/photo-1532938911079-1b06ac7ceec7?w=800', 3, '2026-01-15 07:15:47'),
(32, 9, 'https://images.unsplash.com/photo-1631549916768-4119b2e5f926?w=800', 4, '2026-01-15 07:15:47'),
(33, 10, 'https://images.unsplash.com/photo-1550745165-9bc0b252726f?w=800', 1, '2026-01-15 07:15:47'),
(34, 10, 'https://images.unsplash.com/photo-1542751371-adc38448a05e?w=800', 2, '2026-01-15 07:15:47'),
(35, 10, 'https://images.unsplash.com/photo-1511512578047-dfb367046420?w=800', 3, '2026-01-15 07:15:47'),
(36, 11, 'https://images.unsplash.com/photo-1677442136019-21780ecad995?w=800', 1, '2026-01-15 07:15:47'),
(37, 11, 'https://images.unsplash.com/photo-1510414842594-a61c69b5ae57?w=800', 2, '2026-01-15 07:15:47'),
(38, 11, 'https://images.unsplash.com/photo-1541781774459-bb2af2f05b55?w=800', 3, '2026-01-15 07:15:47'),
(39, 11, 'https://images.unsplash.com/photo-1582408921715-18e7806365c1?w=800', 4, '2026-01-15 07:15:47'),
(40, 12, 'https://images.unsplash.com/photo-1582408921715-18e7806365c1?w=800', 1, '2026-01-15 07:15:47'),
(41, 12, 'https://images.unsplash.com/photo-1563207153-f403bf289096?w=800', 2, '2026-01-15 07:15:47'),
(42, 12, 'https://images.unsplash.com/photo-1485827404703-89b55fcc595e?w=800', 3, '2026-01-15 07:15:47'),
(46, 14, 'https://images.unsplash.com/photo-1509391366360-2e959784a276?w=400&auto=format&fit=crop&q=80', 1, '2026-06-13 13:15:18'),
(47, 14, 'https://images.unsplash.com/photo-1466611653911-95081537e5b7?w=400&auto=format&fit=crop&q=80', 2, '2026-06-13 13:15:18'),
(48, 14, 'https://images.unsplash.com/photo-1569003339405-ea396a5a8a90?w=400&auto=format&fit=crop&q=80', 3, '2026-06-13 13:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
CREATE TABLE `ratings` (
  `id` int NOT NULL,
  `news_id` int NOT NULL,
  `user_id` int NOT NULL,
  `rating` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `news_id`, `user_id`, `rating`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 5, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(2, 1, 2, 4, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(3, 1, 3, 5, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(4, 2, 1, 4, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(5, 2, 2, 5, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(6, 2, 3, 4, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(7, 3, 1, 5, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(8, 3, 2, 5, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(9, 3, 3, 5, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(10, 4, 1, 3, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(11, 4, 2, 4, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(12, 4, 3, 4, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(13, 5, 1, 5, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(14, 5, 2, 4, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(15, 5, 3, 4, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(16, 6, 1, 4, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(17, 6, 2, 5, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(18, 6, 3, 5, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(19, 7, 1, 5, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(20, 7, 2, 5, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(21, 7, 3, 4, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(22, 8, 1, 4, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(23, 8, 2, 4, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(24, 8, 3, 5, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(25, 9, 1, 5, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(26, 9, 2, 4, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(27, 9, 3, 5, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(28, 10, 1, 5, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(29, 10, 2, 4, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(30, 10, 3, 5, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(31, 11, 1, 3, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(32, 11, 2, 4, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(33, 11, 3, 4, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(34, 12, 1, 4, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(35, 12, 2, 5, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(36, 12, 3, 4, '2026-01-15 07:15:48', '2026-01-15 07:15:48'),
(38, 1, 5, 5, '2026-06-13 13:07:24', '2026-06-13 13:07:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Rachel', 'chel@gmail.com', 'chel', '5081c373d0b7e9c30667db1c929dcca86ea51b1bf67b3471f9e328c525391ed0', '2026-01-04 16:53:08', '2026-01-04 16:53:08'),
(2, 'jenni', 'jen@gmail.com', 'jen', '3082d2e1e7917e164c21081b620289dbebb8d2b4fe5b16f82322300f9e5f6f2a', '2026-01-14 06:16:16', '2026-01-14 06:16:16'),
(3, 'cath', 'cath@gmail.com', 'dev', 'c01e6e42436df02fb5d6d728da1d4b9a26b71163002fdd5700628d1b2112e7f4', '2026-01-14 09:54:00', '2026-01-14 09:54:00'),
(4, 'CMT', 'c@gmail.com', 'cath', 'b6fcc05955a6bd53384c1dd17b9fbfb0db2a5a2f1e1cf831a80ea37937295254', '2026-01-15 09:00:02', '2026-01-15 09:00:02'),
(5, 'Jennifer Sutjiadi', 'jenni@gmail.com', 'jenni', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '2026-06-13 10:59:58', '2026-06-13 10:59:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_news_id` (`news_id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_parent_comment` (`parent_comment_id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_news_favorite` (`user_id`,`news_id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_news_id` (`news_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `judul` (`judul`),
  ADD KEY `idx_judul` (`judul`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_view_count` (`view_count`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_news_category` (`news_id`,`category_id`),
  ADD KEY `idx_news_id` (`news_id`),
  ADD KEY `idx_category_id` (`category_id`);

--
-- Indexes for table `news_images`
--
ALTER TABLE `news_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_news_id` (`news_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_news_rating` (`user_id`,`news_id`),
  ADD KEY `idx_news_id` (`news_id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `unique_username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `news_images`
--
ALTER TABLE `news_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_ibfk_3` FOREIGN KEY (`parent_comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD CONSTRAINT `news_categories_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `news_categories_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news_images`
--
ALTER TABLE `news_images`
  ADD CONSTRAINT `news_images_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
