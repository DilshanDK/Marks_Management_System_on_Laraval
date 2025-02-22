-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2025 at 05:23 PM
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
-- Database: `mark_ms`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrators`
--

CREATE TABLE `administrators` (
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `administrators`
--

INSERT INTO `administrators` (`admin_id`, `name`, `email`, `password`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'kumara', 'kumara@gmail.com', '$2y$12$pff7RVvYu/UgfPb4..y5qerlNyI7RTx3O677vxpzIBTrcPfTN7ECu', 0, '2025-02-11 13:35:25', '2025-02-11 13:35:25');

-- --------------------------------------------------------

--
-- Table structure for table `attempt_marks`
--

CREATE TABLE `attempt_marks` (
  `attemptmark_id` bigint(20) UNSIGNED NOT NULL,
  `st_id` varchar(255) NOT NULL,
  `sub_id` varchar(255) NOT NULL,
  `attempt` enum('1','2','3') NOT NULL,
  `a_year` year(4) NOT NULL,
  `mark` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attempt_marks`
--

INSERT INTO `attempt_marks` (`attemptmark_id`, `st_id`, `sub_id`, `attempt`, `a_year`, `mark`, `created_at`, `updated_at`) VALUES
(1, 'kan/it/2022/f/088', 'hndit1012', '1', '2020', '49', '2025-02-14 10:37:53', '2025-02-14 10:37:53'),
(2, 'kan/it/2022/f/088', 'hndit1012', '2', '2021', '87', '2025-02-14 10:38:26', '2025-02-14 10:38:26'),
(3, 'kan/it/2022/f/088', 'hndit1014', '2', '2020', '56', '2025-02-14 10:39:02', '2025-02-14 10:39:02'),
(4, 'kan/it/2022/f/088', 'hndit1015', '2', '2021', '56', '2025-02-15 00:53:24', '2025-02-15 00:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `dep_id` varchar(255) NOT NULL,
  `dep_dec` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`dep_id`, `dep_dec`, `created_at`, `updated_at`) VALUES
('ac', 'Higher National Diploma in Accounting', '2025-02-10 06:18:18', '2025-02-10 06:18:18'),
('ba', 'Higher National Diploma in Business Administration', '2025-02-10 06:18:18', '2025-02-10 06:18:18'),
('en', 'Higher National Diploma in English', '2025-02-10 06:18:18', '2025-02-10 06:18:18'),
('it', 'Higher National Diploma in Information Technology', '2025-02-10 06:18:18', '2025-02-10 06:18:18'),
('mg', 'Higher National Diploma in Management', '2025-02-10 06:18:18', '2025-02-10 06:18:18'),
('th', 'Higher National Diploma in Tourism & Hospitality Management', '2025-02-10 06:18:18', '2025-02-10 06:18:18');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `institutes`
--

CREATE TABLE `institutes` (
  `inst_id` varchar(255) NOT NULL,
  `inst_dec` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `institutes`
--

INSERT INTO `institutes` (`inst_id`, `inst_dec`, `created_at`, `updated_at`) VALUES
('dab', 'Dabawela', '2025-02-10 06:20:28', '2025-02-10 06:20:28'),
('kan', 'Kandy', '2025-02-10 06:20:28', '2025-02-10 06:20:28'),
('naw', 'Nawalapitiya', '2025-02-10 06:20:28', '2025-02-10 06:20:28');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lecturers`
--

CREATE TABLE `lecturers` (
  `lec_id` int(11) NOT NULL,
  `lec_name` varchar(255) NOT NULL,
  `lec_email` varchar(255) NOT NULL,
  `lec_pass` varchar(255) NOT NULL,
  `lec_is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lecturers`
--

INSERT INTO `lecturers` (`lec_id`, `lec_name`, `lec_email`, `lec_pass`, `lec_is_delete`, `created_at`, `updated_at`) VALUES
(100, 'dilshan', 'dilshan@gmail.com', '$2y$12$mZUsFxa4.irlxrNHib7itu3Cov9qUFGEplsx8Mz4i6du98usrh.VO', 0, '2025-02-10 01:30:45', '2025-02-10 09:07:28'),
(101, 'pathum', 'pathum@gmail.com', '$2y$12$5hXgBE20ntMWHkm3Km1T9.AaOqtLIChgvxzjUTtcqAJuCbMz0vRWa', 0, '2025-02-10 01:31:32', '2025-02-10 01:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` varchar(255) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `sub_id` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `sent_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `receiver_id`, `sub_id`, `message`, `sent_at`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 'KAN/IT/2022/F/088', 100, 'hndit1012', 'hghfhgfhg', '2025-02-15 01:49:08', 1, '2025-02-15 01:49:08', '2025-02-15 10:19:40'),
(2, 'KAN/IT/2022/F/088', 100, 'hndit1012', 'hjhgj', '2025-02-15 01:57:23', 0, '2025-02-15 01:57:23', '2025-02-15 01:57:23'),
(3, 'KAN/IT/2022/F/088', 100, 'hndit1012', 'bnb', '2025-02-15 01:58:39', 0, '2025-02-15 01:58:39', '2025-02-15 01:58:39'),
(4, 'KAN/IT/2022/F/088', 100, 'hndit1012', 'bnb', '2025-02-15 01:59:06', 0, '2025-02-15 01:59:06', '2025-02-15 01:59:06'),
(5, 'KAN/IT/2022/F/088', 101, 'hndit1015', 'n', '2025-02-15 02:01:19', 0, '2025-02-15 02:01:19', '2025-02-15 02:01:19'),
(6, 'KAN/IT/2022/F/088', 101, 'hndit1015', 'nmm', '2025-02-15 02:01:45', 0, '2025-02-15 02:01:45', '2025-02-15 02:01:45'),
(7, 'KAN/IT/2022/F/088', 100, 'hndit1014', 'h', '2025-02-15 02:02:37', 0, '2025-02-15 02:02:37', '2025-02-15 02:02:37'),
(8, 'KAN/IT/2022/F/088', 101, 'hndit1015', 'hjh', '2025-02-15 02:03:02', 0, '2025-02-15 02:03:02', '2025-02-15 02:03:02'),
(9, 'KAN/IT/2022/F/088', 100, 'hndit1014', 'hjhj', '2025-02-15 02:03:13', 1, '2025-02-15 02:03:13', '2025-02-15 10:26:47'),
(10, 'KAN/IT/2022/F/088', 101, 'hndit1015', 'ujuiu', '2025-02-15 02:07:34', 0, '2025-02-15 02:07:34', '2025-02-15 02:07:34'),
(11, 'KAN/IT/2022/F/088', 100, 'hndit1014', 'gh', '2025-02-15 02:09:47', 1, '2025-02-15 02:09:47', '2025-02-15 10:19:37'),
(12, 'KAN/IT/2022/F/088', 100, 'hndit1014', 'hj', '2025-02-15 02:11:40', 1, '2025-02-15 02:11:40', '2025-02-15 10:19:34'),
(13, 'KAN/IT/2022/F/088', 100, 'hndit1014', 'j', '2025-02-15 02:13:39', 1, '2025-02-15 02:13:39', '2025-02-15 10:16:45');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_02_04_070949_create_departments_table', 1),
(5, '2025_02_04_071042_create_institutes_table', 1),
(6, '2025_02_04_112628_create_lecturers_table', 1),
(7, '2025_02_04_152316_create_periods_table', 1),
(8, '2025_02_04_155111_create_subjects_table', 1),
(9, '2025_02_04_161243_create_subject_lecturers_table', 1),
(10, '2025_02_08_112142_create_students_table', 1),
(11, '2025_02_08_113239_create_attempt_marks_table', 1),
(12, '2025_02_11_184737_create_administrators_table', 1),
(13, '2025_02_14_155148_create_messages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `periods`
--

CREATE TABLE `periods` (
  `per_id` bigint(20) UNSIGNED NOT NULL,
  `per_year` int(11) NOT NULL,
  `per_sem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `periods`
--

INSERT INTO `periods` (`per_id`, `per_year`, `per_sem`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 3, 1),
(6, 3, 2),
(7, 4, 1),
(8, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('aqPpSzco2ppRAnJVbQMbfylYYviQ2w6GM59Rur7h', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoicHNXeW9Ic3JTT2EzU2xpeXpOVzBIeHRZaWF3TkRISHpDem81YUtBSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sZWN0dXJlci9tZXNzYWdlcy8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1NToibG9naW5fbGVjdHVyZXJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMDA7czoxMToibGVjdHVyZXJfaWQiO2k6MTAwO30=', 1739636629);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `st_id` varchar(255) NOT NULL,
  `st_name` varchar(255) NOT NULL,
  `st_email` varchar(255) NOT NULL,
  `st_inst` varchar(255) NOT NULL,
  `st_dep` varchar(255) NOT NULL,
  `st_reg_year` year(4) NOT NULL,
  `st_pass` varchar(255) NOT NULL,
  `st_is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`st_id`, `st_name`, `st_email`, `st_inst`, `st_dep`, `st_reg_year`, `st_pass`, `st_is_delete`, `created_at`, `updated_at`) VALUES
('dab/ac/2022/f/001', 'student dab ac 2022 1', 'dabac20221@example.com', 'dab', 'ac', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/ac/2022/f/002', 'student dab ac 2022 2', 'dabac20222@example.com', 'dab', 'ac', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/ac/2022/f/003', 'student dab ac 2022 3', 'dabac20223@example.com', 'dab', 'ac', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/ac/2022/f/004', 'student dab ac 2022 4', 'dabac20224@example.com', 'dab', 'ac', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/ac/2022/f/005', 'student dab ac 2022 5', 'dabac20225@example.com', 'dab', 'ac', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/ac/2023/f/001', 'student dab ac 2023 1', 'dabac20231@example.com', 'dab', 'ac', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/ac/2023/f/002', 'student dab ac 2023 2', 'dabac20232@example.com', 'dab', 'ac', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/ac/2023/f/003', 'student dab ac 2023 3', 'dabac20233@example.com', 'dab', 'ac', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/ac/2023/f/004', 'student dab ac 2023 4', 'dabac20234@example.com', 'dab', 'ac', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/ac/2023/f/005', 'student dab ac 2023 5', 'dabac20235@example.com', 'dab', 'ac', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/ac/2025/f/001', 'student dab ac 2025 1', 'dabac20251@example.com', 'dab', 'ac', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/ac/2025/f/002', 'student dab ac 2025 2', 'dabac20252@example.com', 'dab', 'ac', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/ac/2025/f/003', 'student dab ac 2025 3', 'dabac20253@example.com', 'dab', 'ac', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/ac/2025/f/004', 'student dab ac 2025 4', 'dabac20254@example.com', 'dab', 'ac', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/ac/2025/f/005', 'student dab ac 2025 5', 'dabac20255@example.com', 'dab', 'ac', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/ba/2022/f/001', 'student dab ba 2022 1', 'dabba20221@example.com', 'dab', 'ba', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/ba/2022/f/002', 'student dab ba 2022 2', 'dabba20222@example.com', 'dab', 'ba', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/ba/2022/f/003', 'student dab ba 2022 3', 'dabba20223@example.com', 'dab', 'ba', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/ba/2022/f/004', 'student dab ba 2022 4', 'dabba20224@example.com', 'dab', 'ba', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/ba/2022/f/005', 'student dab ba 2022 5', 'dabba20225@example.com', 'dab', 'ba', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/ba/2023/f/001', 'student dab ba 2023 1', 'dabba20231@example.com', 'dab', 'ba', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/ba/2023/f/002', 'student dab ba 2023 2', 'dabba20232@example.com', 'dab', 'ba', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/ba/2023/f/003', 'student dab ba 2023 3', 'dabba20233@example.com', 'dab', 'ba', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/ba/2023/f/004', 'student dab ba 2023 4', 'dabba20234@example.com', 'dab', 'ba', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/ba/2023/f/005', 'student dab ba 2023 5', 'dabba20235@example.com', 'dab', 'ba', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/ba/2025/f/001', 'student dab ba 2025 1', 'dabba20251@example.com', 'dab', 'ba', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/ba/2025/f/002', 'student dab ba 2025 2', 'dabba20252@example.com', 'dab', 'ba', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/ba/2025/f/003', 'student dab ba 2025 3', 'dabba20253@example.com', 'dab', 'ba', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/ba/2025/f/004', 'student dab ba 2025 4', 'dabba20254@example.com', 'dab', 'ba', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/ba/2025/f/005', 'student dab ba 2025 5', 'dabba20255@example.com', 'dab', 'ba', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/en/2022/f/001', 'student dab en 2022 1', 'daben20221@example.com', 'dab', 'en', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/en/2022/f/002', 'student dab en 2022 2', 'daben20222@example.com', 'dab', 'en', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/en/2022/f/003', 'student dab en 2022 3', 'daben20223@example.com', 'dab', 'en', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/en/2022/f/004', 'student dab en 2022 4', 'daben20224@example.com', 'dab', 'en', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/en/2022/f/005', 'student dab en 2022 5', 'daben20225@example.com', 'dab', 'en', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/en/2023/f/001', 'student dab en 2023 1', 'daben20231@example.com', 'dab', 'en', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/en/2023/f/002', 'student dab en 2023 2', 'daben20232@example.com', 'dab', 'en', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/en/2023/f/003', 'student dab en 2023 3', 'daben20233@example.com', 'dab', 'en', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/en/2023/f/004', 'student dab en 2023 4', 'daben20234@example.com', 'dab', 'en', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/en/2023/f/005', 'student dab en 2023 5', 'daben20235@example.com', 'dab', 'en', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/en/2025/f/001', 'student dab en 2025 1', 'daben20251@example.com', 'dab', 'en', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/en/2025/f/002', 'student dab en 2025 2', 'daben20252@example.com', 'dab', 'en', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/en/2025/f/003', 'student dab en 2025 3', 'daben20253@example.com', 'dab', 'en', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/en/2025/f/004', 'student dab en 2025 4', 'daben20254@example.com', 'dab', 'en', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/en/2025/f/005', 'student dab en 2025 5', 'daben20255@example.com', 'dab', 'en', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/it/2022/f/001', 'student dab it 2022 1', 'dabit20221@example.com', 'dab', 'it', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/it/2022/f/002', 'student dab it 2022 2', 'dabit20222@example.com', 'dab', 'it', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/it/2022/f/003', 'student dab it 2022 3', 'dabit20223@example.com', 'dab', 'it', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/it/2022/f/004', 'student dab it 2022 4', 'dabit20224@example.com', 'dab', 'it', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/it/2022/f/005', 'student dab it 2022 5', 'dabit20225@example.com', 'dab', 'it', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/it/2023/f/001', 'student dab it 2023 1', 'dabit20231@example.com', 'dab', 'it', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/it/2023/f/002', 'student dab it 2023 2', 'dabit20232@example.com', 'dab', 'it', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/it/2023/f/003', 'student dab it 2023 3', 'dabit20233@example.com', 'dab', 'it', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/it/2023/f/004', 'student dab it 2023 4', 'dabit20234@example.com', 'dab', 'it', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/it/2023/f/005', 'student dab it 2023 5', 'dabit20235@example.com', 'dab', 'it', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/it/2025/f/001', 'student dab it 2025 1', 'dabit20251@example.com', 'dab', 'it', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/it/2025/f/002', 'student dab it 2025 2', 'dabit20252@example.com', 'dab', 'it', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/it/2025/f/003', 'student dab it 2025 3', 'dabit20253@example.com', 'dab', 'it', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/it/2025/f/004', 'student dab it 2025 4', 'dabit20254@example.com', 'dab', 'it', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/it/2025/f/005', 'student dab it 2025 5', 'dabit20255@example.com', 'dab', 'it', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/mg/2022/f/001', 'student dab mg 2022 1', 'dabmg20221@example.com', 'dab', 'mg', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/mg/2022/f/002', 'student dab mg 2022 2', 'dabmg20222@example.com', 'dab', 'mg', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/mg/2022/f/003', 'student dab mg 2022 3', 'dabmg20223@example.com', 'dab', 'mg', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/mg/2022/f/004', 'student dab mg 2022 4', 'dabmg20224@example.com', 'dab', 'mg', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/mg/2022/f/005', 'student dab mg 2022 5', 'dabmg20225@example.com', 'dab', 'mg', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/mg/2023/f/001', 'student dab mg 2023 1', 'dabmg20231@example.com', 'dab', 'mg', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/mg/2023/f/002', 'student dab mg 2023 2', 'dabmg20232@example.com', 'dab', 'mg', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/mg/2023/f/003', 'student dab mg 2023 3', 'dabmg20233@example.com', 'dab', 'mg', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/mg/2023/f/004', 'student dab mg 2023 4', 'dabmg20234@example.com', 'dab', 'mg', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/mg/2023/f/005', 'student dab mg 2023 5', 'dabmg20235@example.com', 'dab', 'mg', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/mg/2025/f/001', 'student dab mg 2025 1', 'dabmg20251@example.com', 'dab', 'mg', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/mg/2025/f/002', 'student dab mg 2025 2', 'dabmg20252@example.com', 'dab', 'mg', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/mg/2025/f/003', 'student dab mg 2025 3', 'dabmg20253@example.com', 'dab', 'mg', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/mg/2025/f/004', 'student dab mg 2025 4', 'dabmg20254@example.com', 'dab', 'mg', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/mg/2025/f/005', 'student dab mg 2025 5', 'dabmg20255@example.com', 'dab', 'mg', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/th/2022/f/001', 'student dab th 2022 1', 'dabth20221@example.com', 'dab', 'th', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/th/2022/f/002', 'student dab th 2022 2', 'dabth20222@example.com', 'dab', 'th', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/th/2022/f/003', 'student dab th 2022 3', 'dabth20223@example.com', 'dab', 'th', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/th/2022/f/004', 'student dab th 2022 4', 'dabth20224@example.com', 'dab', 'th', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/th/2022/f/005', 'student dab th 2022 5', 'dabth20225@example.com', 'dab', 'th', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/th/2023/f/001', 'student dab th 2023 1', 'dabth20231@example.com', 'dab', 'th', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/th/2023/f/002', 'student dab th 2023 2', 'dabth20232@example.com', 'dab', 'th', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/th/2023/f/003', 'student dab th 2023 3', 'dabth20233@example.com', 'dab', 'th', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/th/2023/f/004', 'student dab th 2023 4', 'dabth20234@example.com', 'dab', 'th', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/th/2023/f/005', 'student dab th 2023 5', 'dabth20235@example.com', 'dab', 'th', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/th/2025/f/001', 'student dab th 2025 1', 'dabth20251@example.com', 'dab', 'th', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/th/2025/f/002', 'student dab th 2025 2', 'dabth20252@example.com', 'dab', 'th', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/th/2025/f/003', 'student dab th 2025 3', 'dabth20253@example.com', 'dab', 'th', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/th/2025/f/004', 'student dab th 2025 4', 'dabth20254@example.com', 'dab', 'th', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('dab/th/2025/f/005', 'student dab th 2025 5', 'dabth20255@example.com', 'dab', 'th', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/ac/2022/f/001', 'student kan ac 2022 1', 'kanac20221@example.com', 'kan', 'ac', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/ac/2022/f/002', 'student kan ac 2022 2', 'kanac20222@example.com', 'kan', 'ac', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/ac/2022/f/003', 'student kan ac 2022 3', 'kanac20223@example.com', 'kan', 'ac', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/ac/2022/f/004', 'student kan ac 2022 4', 'kanac20224@example.com', 'kan', 'ac', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/ac/2022/f/005', 'student kan ac 2022 5', 'kanac20225@example.com', 'kan', 'ac', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/ac/2023/f/001', 'student kan ac 2023 1', 'kanac20231@example.com', 'kan', 'ac', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/ac/2023/f/002', 'student kan ac 2023 2', 'kanac20232@example.com', 'kan', 'ac', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/ac/2023/f/003', 'student kan ac 2023 3', 'kanac20233@example.com', 'kan', 'ac', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/ac/2023/f/004', 'student kan ac 2023 4', 'kanac20234@example.com', 'kan', 'ac', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/ac/2023/f/005', 'student kan ac 2023 5', 'kanac20235@example.com', 'kan', 'ac', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/ac/2025/f/001', 'student kan ac 2025 1', 'kanac20251@example.com', 'kan', 'ac', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/ac/2025/f/002', 'student kan ac 2025 2', 'kanac20252@example.com', 'kan', 'ac', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/ac/2025/f/003', 'student kan ac 2025 3', 'kanac20253@example.com', 'kan', 'ac', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/ac/2025/f/004', 'student kan ac 2025 4', 'kanac20254@example.com', 'kan', 'ac', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/ac/2025/f/005', 'student kan ac 2025 5', 'kanac20255@example.com', 'kan', 'ac', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/ba/2022/f/001', 'student kan ba 2022 1', 'kanba20221@example.com', 'kan', 'ba', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/ba/2022/f/002', 'student kan ba 2022 2', 'kanba20222@example.com', 'kan', 'ba', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/ba/2022/f/003', 'student kan ba 2022 3', 'kanba20223@example.com', 'kan', 'ba', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/ba/2022/f/004', 'student kan ba 2022 4', 'kanba20224@example.com', 'kan', 'ba', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/ba/2022/f/005', 'student kan ba 2022 5', 'kanba20225@example.com', 'kan', 'ba', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/ba/2023/f/001', 'student kan ba 2023 1', 'kanba20231@example.com', 'kan', 'ba', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/ba/2023/f/002', 'student kan ba 2023 2', 'kanba20232@example.com', 'kan', 'ba', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/ba/2023/f/003', 'student kan ba 2023 3', 'kanba20233@example.com', 'kan', 'ba', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/ba/2023/f/004', 'student kan ba 2023 4', 'kanba20234@example.com', 'kan', 'ba', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/ba/2023/f/005', 'student kan ba 2023 5', 'kanba20235@example.com', 'kan', 'ba', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/ba/2025/f/001', 'student kan ba 2025 1', 'kanba20251@example.com', 'kan', 'ba', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/ba/2025/f/002', 'student kan ba 2025 2', 'kanba20252@example.com', 'kan', 'ba', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/ba/2025/f/003', 'student kan ba 2025 3', 'kanba20253@example.com', 'kan', 'ba', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/ba/2025/f/004', 'student kan ba 2025 4', 'kanba20254@example.com', 'kan', 'ba', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/ba/2025/f/005', 'student kan ba 2025 5', 'kanba20255@example.com', 'kan', 'ba', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/en/2022/f/001', 'student kan en 2022 1', 'kanen20221@example.com', 'kan', 'en', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/en/2022/f/002', 'student kan en 2022 2', 'kanen20222@example.com', 'kan', 'en', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/en/2022/f/003', 'student kan en 2022 3', 'kanen20223@example.com', 'kan', 'en', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/en/2022/f/004', 'student kan en 2022 4', 'kanen20224@example.com', 'kan', 'en', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/en/2022/f/005', 'student kan en 2022 5', 'kanen20225@example.com', 'kan', 'en', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/en/2023/f/001', 'student kan en 2023 1', 'kanen20231@example.com', 'kan', 'en', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/en/2023/f/002', 'student kan en 2023 2', 'kanen20232@example.com', 'kan', 'en', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/en/2023/f/003', 'student kan en 2023 3', 'kanen20233@example.com', 'kan', 'en', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/en/2023/f/004', 'student kan en 2023 4', 'kanen20234@example.com', 'kan', 'en', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/en/2023/f/005', 'student kan en 2023 5', 'kanen20235@example.com', 'kan', 'en', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/en/2025/f/001', 'student kan en 2025 1', 'kanen20251@example.com', 'kan', 'en', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/en/2025/f/002', 'student kan en 2025 2', 'kanen20252@example.com', 'kan', 'en', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/en/2025/f/003', 'student kan en 2025 3', 'kanen20253@example.com', 'kan', 'en', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/en/2025/f/004', 'student kan en 2025 4', 'kanen20254@example.com', 'kan', 'en', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/en/2025/f/005', 'student kan en 2025 5', 'kanen20255@example.com', 'kan', 'en', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/it/2022/f/001', 'student kan it 2022 1', 'kanit20221@example.com', 'kan', 'it', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/it/2022/f/002', 'student kan it 2022 2', 'kanit20222@example.com', 'kan', 'it', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/it/2022/f/003', 'student kan it 2022 3', 'kanit20223@example.com', 'kan', 'it', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/it/2022/f/004', 'student kan it 2022 4', 'kanit20224@example.com', 'kan', 'it', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/it/2022/f/005', 'student kan it 2022 5', 'kanit20225@example.com', 'kan', 'it', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('KAN/IT/2022/F/088', 'sachira', 'sachira@gmail.com', 'kan', 'it', '2022', '$2y$12$e58WbA9KjfOG4jFdkB01WuwSyhtwdkwo8PY0Lhi.VJOPI23PwfVB2', 0, '2025-02-13 04:34:49', '2025-02-13 06:52:19'),
('kan/it/2023/f/001', 'student kan it 2023 1', 'kanit20231@example.com', 'kan', 'it', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/it/2023/f/002', 'student kan it 2023 2', 'kanit20232@example.com', 'kan', 'it', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/it/2023/f/003', 'student kan it 2023 3', 'kanit20233@example.com', 'kan', 'it', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/it/2023/f/004', 'student kan it 2023 4', 'kanit20234@example.com', 'kan', 'it', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/it/2023/f/005', 'student kan it 2023 5', 'kanit20235@example.com', 'kan', 'it', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/it/2025/f/001', 'student kan it 2025 1', 'kanit20251@example.com', 'kan', 'it', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/it/2025/f/002', 'student kan it 2025 2', 'kanit20252@example.com', 'kan', 'it', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/it/2025/f/003', 'student kan it 2025 3', 'kanit20253@example.com', 'kan', 'it', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/it/2025/f/004', 'student kan it 2025 4', 'kanit20254@example.com', 'kan', 'it', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/it/2025/f/005', 'student kan it 2025 5', 'kanit20255@example.com', 'kan', 'it', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/mg/2022/f/001', 'student kan mg 2022 1', 'kanmg20221@example.com', 'kan', 'mg', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/mg/2022/f/002', 'student kan mg 2022 2', 'kanmg20222@example.com', 'kan', 'mg', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/mg/2022/f/003', 'student kan mg 2022 3', 'kanmg20223@example.com', 'kan', 'mg', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/mg/2022/f/004', 'student kan mg 2022 4', 'kanmg20224@example.com', 'kan', 'mg', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/mg/2022/f/005', 'student kan mg 2022 5', 'kanmg20225@example.com', 'kan', 'mg', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/mg/2023/f/001', 'student kan mg 2023 1', 'kanmg20231@example.com', 'kan', 'mg', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/mg/2023/f/002', 'student kan mg 2023 2', 'kanmg20232@example.com', 'kan', 'mg', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/mg/2023/f/003', 'student kan mg 2023 3', 'kanmg20233@example.com', 'kan', 'mg', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/mg/2023/f/004', 'student kan mg 2023 4', 'kanmg20234@example.com', 'kan', 'mg', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/mg/2023/f/005', 'student kan mg 2023 5', 'kanmg20235@example.com', 'kan', 'mg', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/mg/2025/f/001', 'student kan mg 2025 1', 'kanmg20251@example.com', 'kan', 'mg', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/mg/2025/f/002', 'student kan mg 2025 2', 'kanmg20252@example.com', 'kan', 'mg', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/mg/2025/f/003', 'student kan mg 2025 3', 'kanmg20253@example.com', 'kan', 'mg', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/mg/2025/f/004', 'student kan mg 2025 4', 'kanmg20254@example.com', 'kan', 'mg', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/mg/2025/f/005', 'student kan mg 2025 5', 'kanmg20255@example.com', 'kan', 'mg', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/th/2022/f/001', 'student kan th 2022 1', 'kanth20221@example.com', 'kan', 'th', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/th/2022/f/002', 'student kan th 2022 2', 'kanth20222@example.com', 'kan', 'th', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/th/2022/f/003', 'student kan th 2022 3', 'kanth20223@example.com', 'kan', 'th', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/th/2022/f/004', 'student kan th 2022 4', 'kanth20224@example.com', 'kan', 'th', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/th/2022/f/005', 'student kan th 2022 5', 'kanth20225@example.com', 'kan', 'th', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/th/2023/f/001', 'student kan th 2023 1', 'kanth20231@example.com', 'kan', 'th', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/th/2023/f/002', 'student kan th 2023 2', 'kanth20232@example.com', 'kan', 'th', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/th/2023/f/003', 'student kan th 2023 3', 'kanth20233@example.com', 'kan', 'th', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/th/2023/f/004', 'student kan th 2023 4', 'kanth20234@example.com', 'kan', 'th', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/th/2023/f/005', 'student kan th 2023 5', 'kanth20235@example.com', 'kan', 'th', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/th/2025/f/001', 'student kan th 2025 1', 'kanth20251@example.com', 'kan', 'th', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/th/2025/f/002', 'student kan th 2025 2', 'kanth20252@example.com', 'kan', 'th', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/th/2025/f/003', 'student kan th 2025 3', 'kanth20253@example.com', 'kan', 'th', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/th/2025/f/004', 'student kan th 2025 4', 'kanth20254@example.com', 'kan', 'th', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('kan/th/2025/f/005', 'student kan th 2025 5', 'kanth20255@example.com', 'kan', 'th', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/ac/2022/f/001', 'student naw ac 2022 1', 'nawac20221@example.com', 'naw', 'ac', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/ac/2022/f/002', 'student naw ac 2022 2', 'nawac20222@example.com', 'naw', 'ac', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/ac/2022/f/003', 'student naw ac 2022 3', 'nawac20223@example.com', 'naw', 'ac', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/ac/2022/f/004', 'student naw ac 2022 4', 'nawac20224@example.com', 'naw', 'ac', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/ac/2022/f/005', 'student naw ac 2022 5', 'nawac20225@example.com', 'naw', 'ac', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/ac/2023/f/001', 'student naw ac 2023 1', 'nawac20231@example.com', 'naw', 'ac', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/ac/2023/f/002', 'student naw ac 2023 2', 'nawac20232@example.com', 'naw', 'ac', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/ac/2023/f/003', 'student naw ac 2023 3', 'nawac20233@example.com', 'naw', 'ac', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/ac/2023/f/004', 'student naw ac 2023 4', 'nawac20234@example.com', 'naw', 'ac', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/ac/2023/f/005', 'student naw ac 2023 5', 'nawac20235@example.com', 'naw', 'ac', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/ac/2025/f/001', 'student naw ac 2025 1', 'nawac20251@example.com', 'naw', 'ac', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/ac/2025/f/002', 'student naw ac 2025 2', 'nawac20252@example.com', 'naw', 'ac', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/ac/2025/f/003', 'student naw ac 2025 3', 'nawac20253@example.com', 'naw', 'ac', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/ac/2025/f/004', 'student naw ac 2025 4', 'nawac20254@example.com', 'naw', 'ac', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/ac/2025/f/005', 'student naw ac 2025 5', 'nawac20255@example.com', 'naw', 'ac', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/ba/2022/f/001', 'student naw ba 2022 1', 'nawba20221@example.com', 'naw', 'ba', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/ba/2022/f/002', 'student naw ba 2022 2', 'nawba20222@example.com', 'naw', 'ba', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/ba/2022/f/003', 'student naw ba 2022 3', 'nawba20223@example.com', 'naw', 'ba', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/ba/2022/f/004', 'student naw ba 2022 4', 'nawba20224@example.com', 'naw', 'ba', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/ba/2022/f/005', 'student naw ba 2022 5', 'nawba20225@example.com', 'naw', 'ba', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/ba/2023/f/001', 'student naw ba 2023 1', 'nawba20231@example.com', 'naw', 'ba', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/ba/2023/f/002', 'student naw ba 2023 2', 'nawba20232@example.com', 'naw', 'ba', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/ba/2023/f/003', 'student naw ba 2023 3', 'nawba20233@example.com', 'naw', 'ba', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/ba/2023/f/004', 'student naw ba 2023 4', 'nawba20234@example.com', 'naw', 'ba', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/ba/2023/f/005', 'student naw ba 2023 5', 'nawba20235@example.com', 'naw', 'ba', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/ba/2025/f/001', 'student naw ba 2025 1', 'nawba20251@example.com', 'naw', 'ba', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/ba/2025/f/002', 'student naw ba 2025 2', 'nawba20252@example.com', 'naw', 'ba', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/ba/2025/f/003', 'student naw ba 2025 3', 'nawba20253@example.com', 'naw', 'ba', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/ba/2025/f/004', 'student naw ba 2025 4', 'nawba20254@example.com', 'naw', 'ba', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/ba/2025/f/005', 'student naw ba 2025 5', 'nawba20255@example.com', 'naw', 'ba', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/en/2022/f/001', 'student naw en 2022 1', 'nawen20221@example.com', 'naw', 'en', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/en/2022/f/002', 'student naw en 2022 2', 'nawen20222@example.com', 'naw', 'en', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/en/2022/f/003', 'student naw en 2022 3', 'nawen20223@example.com', 'naw', 'en', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/en/2022/f/004', 'student naw en 2022 4', 'nawen20224@example.com', 'naw', 'en', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/en/2022/f/005', 'student naw en 2022 5', 'nawen20225@example.com', 'naw', 'en', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/en/2023/f/001', 'student naw en 2023 1', 'nawen20231@example.com', 'naw', 'en', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/en/2023/f/002', 'student naw en 2023 2', 'nawen20232@example.com', 'naw', 'en', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/en/2023/f/003', 'student naw en 2023 3', 'nawen20233@example.com', 'naw', 'en', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/en/2023/f/004', 'student naw en 2023 4', 'nawen20234@example.com', 'naw', 'en', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/en/2023/f/005', 'student naw en 2023 5', 'nawen20235@example.com', 'naw', 'en', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/en/2025/f/001', 'student naw en 2025 1', 'nawen20251@example.com', 'naw', 'en', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/en/2025/f/002', 'student naw en 2025 2', 'nawen20252@example.com', 'naw', 'en', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/en/2025/f/003', 'student naw en 2025 3', 'nawen20253@example.com', 'naw', 'en', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/en/2025/f/004', 'student naw en 2025 4', 'nawen20254@example.com', 'naw', 'en', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/en/2025/f/005', 'student naw en 2025 5', 'nawen20255@example.com', 'naw', 'en', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/it/2022/f/001', 'student naw it 2022 1', 'nawit20221@example.com', 'naw', 'it', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/it/2022/f/002', 'student naw it 2022 2', 'nawit20222@example.com', 'naw', 'it', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/it/2022/f/003', 'student naw it 2022 3', 'nawit20223@example.com', 'naw', 'it', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/it/2022/f/004', 'student naw it 2022 4', 'nawit20224@example.com', 'naw', 'it', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/it/2022/f/005', 'student naw it 2022 5', 'nawit20225@example.com', 'naw', 'it', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/it/2023/f/001', 'student naw it 2023 1', 'nawit20231@example.com', 'naw', 'it', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/it/2023/f/002', 'student naw it 2023 2', 'nawit20232@example.com', 'naw', 'it', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/it/2023/f/003', 'student naw it 2023 3', 'nawit20233@example.com', 'naw', 'it', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/it/2023/f/004', 'student naw it 2023 4', 'nawit20234@example.com', 'naw', 'it', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/it/2023/f/005', 'student naw it 2023 5', 'nawit20235@example.com', 'naw', 'it', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/it/2025/f/001', 'student naw it 2025 1', 'nawit20251@example.com', 'naw', 'it', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/it/2025/f/002', 'student naw it 2025 2', 'nawit20252@example.com', 'naw', 'it', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/it/2025/f/003', 'student naw it 2025 3', 'nawit20253@example.com', 'naw', 'it', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/it/2025/f/004', 'student naw it 2025 4', 'nawit20254@example.com', 'naw', 'it', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/it/2025/f/005', 'student naw it 2025 5', 'nawit20255@example.com', 'naw', 'it', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/mg/2022/f/001', 'student naw mg 2022 1', 'nawmg20221@example.com', 'naw', 'mg', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/mg/2022/f/002', 'student naw mg 2022 2', 'nawmg20222@example.com', 'naw', 'mg', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/mg/2022/f/003', 'student naw mg 2022 3', 'nawmg20223@example.com', 'naw', 'mg', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/mg/2022/f/004', 'student naw mg 2022 4', 'nawmg20224@example.com', 'naw', 'mg', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/mg/2022/f/005', 'student naw mg 2022 5', 'nawmg20225@example.com', 'naw', 'mg', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/mg/2023/f/001', 'student naw mg 2023 1', 'nawmg20231@example.com', 'naw', 'mg', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/mg/2023/f/002', 'student naw mg 2023 2', 'nawmg20232@example.com', 'naw', 'mg', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/mg/2023/f/003', 'student naw mg 2023 3', 'nawmg20233@example.com', 'naw', 'mg', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/mg/2023/f/004', 'student naw mg 2023 4', 'nawmg20234@example.com', 'naw', 'mg', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/mg/2023/f/005', 'student naw mg 2023 5', 'nawmg20235@example.com', 'naw', 'mg', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/mg/2025/f/001', 'student naw mg 2025 1', 'nawmg20251@example.com', 'naw', 'mg', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/mg/2025/f/002', 'student naw mg 2025 2', 'nawmg20252@example.com', 'naw', 'mg', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/mg/2025/f/003', 'student naw mg 2025 3', 'nawmg20253@example.com', 'naw', 'mg', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/mg/2025/f/004', 'student naw mg 2025 4', 'nawmg20254@example.com', 'naw', 'mg', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/mg/2025/f/005', 'student naw mg 2025 5', 'nawmg20255@example.com', 'naw', 'mg', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/th/2022/f/001', 'student naw th 2022 1', 'nawth20221@example.com', 'naw', 'th', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/th/2022/f/002', 'student naw th 2022 2', 'nawth20222@example.com', 'naw', 'th', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/th/2022/f/003', 'student naw th 2022 3', 'nawth20223@example.com', 'naw', 'th', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/th/2022/f/004', 'student naw th 2022 4', 'nawth20224@example.com', 'naw', 'th', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/th/2022/f/005', 'student naw th 2022 5', 'nawth20225@example.com', 'naw', 'th', '2022', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/th/2023/f/001', 'student naw th 2023 1', 'nawth20231@example.com', 'naw', 'th', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/th/2023/f/002', 'student naw th 2023 2', 'nawth20232@example.com', 'naw', 'th', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/th/2023/f/003', 'student naw th 2023 3', 'nawth20233@example.com', 'naw', 'th', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/th/2023/f/004', 'student naw th 2023 4', 'nawth20234@example.com', 'naw', 'th', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/th/2023/f/005', 'student naw th 2023 5', 'nawth20235@example.com', 'naw', 'th', '2023', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/th/2025/f/001', 'student naw th 2025 1', 'nawth20251@example.com', 'naw', 'th', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/th/2025/f/002', 'student naw th 2025 2', 'nawth20252@example.com', 'naw', 'th', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/th/2025/f/003', 'student naw th 2025 3', 'nawth20253@example.com', 'naw', 'th', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/th/2025/f/004', 'student naw th 2025 4', 'nawth20254@example.com', 'naw', 'th', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49'),
('naw/th/2025/f/005', 'student naw th 2025 5', 'nawth20255@example.com', 'naw', 'th', '2025', '@SliateMarks', 0, '2025-02-12 07:56:49', '2025-02-12 07:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `sub_id` varchar(255) NOT NULL,
  `sub_name` varchar(255) NOT NULL,
  `dep_id` varchar(255) NOT NULL,
  `per_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`sub_id`, `sub_name`, `dep_id`, `per_id`) VALUES
('hndac1012', 'Operating Systems', 'ac', 2),
('hnden1013', 'Database Management Systems', 'en', 2),
('hndit1012', 'Programming Fundamentals', 'it', 1),
('hndit1014', 'Computer Networks', 'it', 2),
('hndit1015', 'Software Engineering', 'it', 1),
('hndmg1012', 'Web Development', 'mg', 1),
('hndth1012', 'Machine Learning Basics', 'th', 2),
('hndth1016', 'Cyber Security', 'th', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subject_lecturers`
--

CREATE TABLE `subject_lecturers` (
  `lec_id` int(11) NOT NULL,
  `inst_id` varchar(255) NOT NULL,
  `dep_id` varchar(255) NOT NULL,
  `sub_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subject_lecturers`
--

INSERT INTO `subject_lecturers` (`lec_id`, `inst_id`, `dep_id`, `sub_id`, `created_at`, `updated_at`) VALUES
(100, 'kan', 'it', 'hndit1012', '2025-02-13 08:33:40', '2025-02-13 08:33:40'),
(100, 'kan', 'it', 'hndit1014', '2025-02-13 08:33:29', '2025-02-13 08:33:29'),
(101, 'kan', 'it', 'hndit1015', '2025-02-13 08:34:20', '2025-02-13 08:34:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `administrators_email_unique` (`email`);

--
-- Indexes for table `attempt_marks`
--
ALTER TABLE `attempt_marks`
  ADD PRIMARY KEY (`attemptmark_id`),
  ADD UNIQUE KEY `attempt_marks_st_id_sub_id_attempt_unique` (`st_id`,`sub_id`,`attempt`),
  ADD KEY `attempt_marks_sub_id_foreign` (`sub_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`dep_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `institutes`
--
ALTER TABLE `institutes`
  ADD PRIMARY KEY (`inst_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lecturers`
--
ALTER TABLE `lecturers`
  ADD PRIMARY KEY (`lec_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_sender_id_foreign` (`sender_id`),
  ADD KEY `messages_receiver_id_foreign` (`receiver_id`),
  ADD KEY `messages_sub_id_foreign` (`sub_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `periods`
--
ALTER TABLE `periods`
  ADD PRIMARY KEY (`per_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`st_id`),
  ADD KEY `students_st_dep_foreign` (`st_dep`),
  ADD KEY `students_st_inst_foreign` (`st_inst`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`sub_id`),
  ADD KEY `subjects_dep_id_foreign` (`dep_id`),
  ADD KEY `subjects_per_id_foreign` (`per_id`);

--
-- Indexes for table `subject_lecturers`
--
ALTER TABLE `subject_lecturers`
  ADD PRIMARY KEY (`sub_id`,`inst_id`,`dep_id`),
  ADD KEY `subject_lecturers_lec_id_foreign` (`lec_id`),
  ADD KEY `subject_lecturers_inst_id_foreign` (`inst_id`),
  ADD KEY `subject_lecturers_dep_id_foreign` (`dep_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrators`
--
ALTER TABLE `administrators`
  MODIFY `admin_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attempt_marks`
--
ALTER TABLE `attempt_marks`
  MODIFY `attemptmark_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lecturers`
--
ALTER TABLE `lecturers`
  MODIFY `lec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `periods`
--
ALTER TABLE `periods`
  MODIFY `per_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attempt_marks`
--
ALTER TABLE `attempt_marks`
  ADD CONSTRAINT `attempt_marks_st_id_foreign` FOREIGN KEY (`st_id`) REFERENCES `students` (`st_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attempt_marks_sub_id_foreign` FOREIGN KEY (`sub_id`) REFERENCES `subjects` (`sub_id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `lecturers` (`lec_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `messages_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `students` (`st_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `messages_sub_id_foreign` FOREIGN KEY (`sub_id`) REFERENCES `subjects` (`sub_id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_st_dep_foreign` FOREIGN KEY (`st_dep`) REFERENCES `departments` (`dep_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_st_inst_foreign` FOREIGN KEY (`st_inst`) REFERENCES `institutes` (`inst_id`) ON DELETE CASCADE;

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_dep_id_foreign` FOREIGN KEY (`dep_id`) REFERENCES `departments` (`dep_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subjects_per_id_foreign` FOREIGN KEY (`per_id`) REFERENCES `periods` (`per_id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_lecturers`
--
ALTER TABLE `subject_lecturers`
  ADD CONSTRAINT `subject_lecturers_dep_id_foreign` FOREIGN KEY (`dep_id`) REFERENCES `departments` (`dep_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_lecturers_inst_id_foreign` FOREIGN KEY (`inst_id`) REFERENCES `institutes` (`inst_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_lecturers_lec_id_foreign` FOREIGN KEY (`lec_id`) REFERENCES `lecturers` (`lec_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_lecturers_sub_id_foreign` FOREIGN KEY (`sub_id`) REFERENCES `subjects` (`sub_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
