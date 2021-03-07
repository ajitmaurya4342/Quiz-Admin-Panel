-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 07, 2021 at 03:57 PM
-- Server version: 8.0.23-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `knex_migrations`
--

CREATE TABLE `knex_migrations` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `batch` int DEFAULT NULL,
  `migration_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `knex_migrations`
--

INSERT INTO `knex_migrations` (`id`, `name`, `batch`, `migration_time`) VALUES
(1, '20210206210306_user_table.js', 1, '2021-02-22 23:53:06'),
(2, '20210206223759_game_table.js', 1, '2021-02-22 23:53:06'),
(3, '20210206224317_question_table.js', 1, '2021-02-22 23:53:06'),
(4, '20210206224642_level_table.js', 1, '2021-02-22 23:53:06'),
(5, '20210206225607_level_link_question.js', 1, '2021-02-22 23:53:06'),
(6, '20210206230018_user_score.js', 1, '2021-02-22 23:53:06'),
(7, '20210206230507_settings.js', 1, '2021-02-22 23:53:06'),
(8, '20210214193931_insert_game_level.js', 1, '2021-02-22 23:53:06'),
(9, '20210223230347_update_token.js', 2, '2021-02-23 23:05:12'),
(12, '20210304015102_transaction_detail.js', 3, '2021-03-04 02:11:36');

-- --------------------------------------------------------

--
-- Table structure for table `knex_migrations_lock`
--

CREATE TABLE `knex_migrations_lock` (
  `index` int UNSIGNED NOT NULL,
  `is_locked` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `knex_migrations_lock`
--

INSERT INTO `knex_migrations_lock` (`index`, `is_locked`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `m_game`
--

CREATE TABLE `m_game` (
  `game_id` int UNSIGNED NOT NULL,
  `game_name` varchar(45) DEFAULT NULL,
  `game_logo` text,
  `game_is_active` enum('0','1') DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `m_game`
--

INSERT INTO `m_game` (`game_id`, `game_name`, `game_logo`, `game_is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Logo Quiz', 'image', '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(2, 'Image Quiz', 'image', '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(3, 'Maths Quiz', 'image', '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(4, 'Tic Tac Toe', 'image', '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08');

-- --------------------------------------------------------

--
-- Table structure for table `m_level`
--

CREATE TABLE `m_level` (
  `level_id` int UNSIGNED NOT NULL,
  `game_id` int DEFAULT NULL,
  `level_name` varchar(45) DEFAULT NULL,
  `level` int DEFAULT NULL,
  `level_is_active` enum('0','1') DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `m_level`
--

INSERT INTO `m_level` (`level_id`, `game_id`, `level_name`, `level`, `level_is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Level 1', 1, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(2, 1, 'Level 2', 2, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(3, 1, 'Level 3', 3, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(4, 1, 'Level4', 4, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(5, 1, 'Level5', 5, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(6, 1, 'Level6', 6, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(7, 1, 'Level7', 7, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(8, 1, 'Level8', 8, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(9, 1, 'Level9', 9, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(10, 1, 'Level10', 10, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(11, 1, 'Level11', 11, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(12, 1, 'Level12', 12, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(13, 1, 'Level13', 13, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(14, 1, 'Level14', 14, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(15, 1, 'Level15', 15, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(16, 1, 'Level16', 16, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(17, 1, 'Level17', 17, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(18, 1, 'Level18', 18, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(19, 1, 'Level19', 19, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(20, 1, 'Level20', 20, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(21, 1, 'Level21', 21, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(22, 1, 'Level22', 22, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(23, 1, 'Level23', 23, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(24, 1, 'Level24', 24, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(25, 1, 'Level25', 25, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(26, 1, 'Level26', 26, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(27, 1, 'Level27', 27, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(28, 1, 'Level28', 28, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(29, 1, 'Level29', 29, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(30, 1, 'Level30', 30, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(31, 1, 'Level31', 31, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(32, 1, 'Level32', 32, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(33, 1, 'Level33', 33, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(34, 1, 'Level34', 34, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(35, 1, 'Level35', 35, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(36, 1, 'Level36', 36, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(37, 1, 'Level37', 37, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(38, 1, 'Level38', 38, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(39, 1, 'Level39', 39, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(40, 1, 'Level40', 40, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(41, 1, 'Level41', 41, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(42, 1, 'Level42', 42, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(43, 1, 'Level43', 43, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(44, 1, 'Level44', 44, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(45, 1, 'Level45', 45, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(46, 1, 'Level46', 46, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(47, 1, 'Level47', 47, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(48, 1, 'Level48', 48, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(49, 1, 'Level49', 49, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(50, 1, 'Level50', 50, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(51, 2, 'Level1', 1, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(52, 2, 'Level2', 2, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(53, 2, 'Level3', 3, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(54, 2, 'Level4', 4, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(55, 2, 'Level5', 5, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(56, 2, 'Level6', 6, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(57, 2, 'Level7', 7, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(58, 2, 'Level8', 8, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(59, 2, 'Level9', 9, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(60, 2, 'Level10', 10, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(61, 2, 'Level11', 11, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(62, 2, 'Level12', 12, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(63, 2, 'Level13', 13, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(64, 2, 'Level14', 14, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(65, 2, 'Level15', 15, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(66, 2, 'Level16', 16, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(67, 2, 'Level17', 17, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(68, 2, 'Level18', 18, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(69, 2, 'Level19', 19, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(70, 2, 'Level20', 20, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(71, 2, 'Level21', 21, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(72, 2, 'Level22', 22, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(73, 2, 'Level23', 23, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(74, 2, 'Level24', 24, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(75, 2, 'Level25', 25, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(76, 2, 'Level26', 26, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(77, 2, 'Level27', 27, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(78, 2, 'Level28', 28, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(79, 2, 'Level29', 29, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(80, 2, 'Level30', 30, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(81, 2, 'Level31', 31, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(82, 2, 'Level32', 32, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(83, 2, 'Level33', 33, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(84, 2, 'Level34', 34, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(85, 2, 'Level35', 35, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(86, 2, 'Level36', 36, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(87, 2, 'Level37', 37, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(88, 2, 'Level38', 38, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(89, 2, 'Level39', 39, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(90, 2, 'Level40', 40, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(91, 2, 'Level41', 41, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(92, 2, 'Level42', 42, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(93, 2, 'Level43', 43, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(94, 2, 'Level44', 44, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(95, 2, 'Level45', 45, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(96, 2, 'Level46', 46, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(97, 2, 'Level47', 47, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(98, 2, 'Level48', 48, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(99, 2, 'Level49', 49, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(100, 2, 'Level50', 50, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(101, 3, 'Level1', 1, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(102, 3, 'Level2', 2, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(103, 3, 'Level3', 3, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(104, 3, 'Level4', 4, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(105, 3, 'Level5', 5, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(106, 3, 'Level6', 6, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(107, 3, 'Level7', 7, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(108, 3, 'Level8', 8, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(109, 3, 'Level9', 9, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(110, 3, 'Level10', 10, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(111, 3, 'Level11', 11, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(112, 3, 'Level12', 12, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(113, 3, 'Level13', 13, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(114, 3, 'Level14', 14, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(115, 3, 'Level15', 15, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(116, 3, 'Level16', 16, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(117, 3, 'Level17', 17, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(118, 3, 'Level18', 18, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(119, 3, 'Level19', 19, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(120, 3, 'Level20', 20, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(121, 3, 'Level21', 21, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(122, 3, 'Level22', 22, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(123, 3, 'Level23', 23, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(124, 3, 'Level24', 24, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(125, 3, 'Level25', 25, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(126, 3, 'Level26', 26, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(127, 3, 'Level27', 27, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(128, 3, 'Level28', 28, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(129, 3, 'Level29', 29, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(130, 3, 'Level30', 30, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(131, 3, 'Level31', 31, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(132, 3, 'Level32', 32, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(133, 3, 'Level33', 33, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(134, 3, 'Level34', 34, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(135, 3, 'Level35', 35, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(136, 3, 'Level36', 36, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(137, 3, 'Level37', 37, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(138, 3, 'Level38', 38, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(139, 3, 'Level39', 39, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(140, 3, 'Level40', 40, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(141, 3, 'Level41', 41, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(142, 3, 'Level42', 42, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(143, 3, 'Level43', 43, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(144, 3, 'Level44', 44, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(145, 3, 'Level45', 45, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(146, 3, 'Level46', 46, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(147, 3, 'Level47', 47, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(148, 3, 'Level48', 48, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(149, 3, 'Level49', 49, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(150, 3, 'Level50', 50, '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08');

-- --------------------------------------------------------

--
-- Table structure for table `m_level_link_question`
--

CREATE TABLE `m_level_link_question` (
  `level_q_id` int UNSIGNED NOT NULL,
  `level_id` int DEFAULT NULL,
  `question_id` int DEFAULT NULL,
  `level_q_is_active` enum('0','1') DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `m_level_link_question`
--

INSERT INTO `m_level_link_question` (`level_q_id`, `level_id`, `question_id`, `level_q_is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(84, 2, 17, '1', NULL, NULL, '2021-02-25 19:20:25', '2021-02-25 19:20:25'),
(85, 2, 19, '1', NULL, NULL, '2021-02-25 19:20:25', '2021-02-25 19:20:25'),
(86, 2, 16, '1', NULL, NULL, '2021-02-25 19:20:25', '2021-02-25 19:20:25'),
(87, 2, 20, '1', NULL, NULL, '2021-02-25 19:20:25', '2021-02-25 19:20:25'),
(88, 2, 21, '1', NULL, NULL, '2021-02-25 19:20:25', '2021-02-25 19:20:25'),
(89, 2, 18, '1', NULL, NULL, '2021-02-25 19:20:25', '2021-02-25 19:20:25'),
(90, 2, 24, '1', NULL, NULL, '2021-02-25 19:20:25', '2021-02-25 19:20:25'),
(91, 2, 26, '1', NULL, NULL, '2021-02-25 19:20:25', '2021-02-25 19:20:25'),
(92, 2, 28, '1', NULL, NULL, '2021-02-25 19:20:25', '2021-02-25 19:20:25'),
(93, 2, 25, '1', NULL, NULL, '2021-02-25 19:20:25', '2021-02-25 19:20:25'),
(94, 2, 29, '1', NULL, NULL, '2021-02-25 19:20:25', '2021-02-25 19:20:25'),
(95, 2, 32, '1', NULL, NULL, '2021-02-25 19:20:25', '2021-02-25 19:20:25'),
(96, 2, 31, '1', NULL, NULL, '2021-02-25 19:20:25', '2021-02-25 19:20:25'),
(97, 2, 23, '1', NULL, NULL, '2021-02-25 19:20:25', '2021-02-25 19:20:25'),
(98, 2, 22, '1', NULL, NULL, '2021-02-25 19:20:25', '2021-02-25 19:20:25'),
(99, 1, 1, '1', NULL, NULL, '2021-02-25 21:51:53', '2021-02-25 21:51:53'),
(100, 1, 3, '1', NULL, NULL, '2021-02-25 21:51:53', '2021-02-25 21:51:53'),
(101, 1, 8, '1', NULL, NULL, '2021-02-25 21:51:53', '2021-02-25 21:51:53'),
(102, 1, 11, '1', NULL, NULL, '2021-02-25 21:51:53', '2021-02-25 21:51:53'),
(103, 1, 5, '1', NULL, NULL, '2021-02-25 21:51:53', '2021-02-25 21:51:53'),
(104, 1, 9, '1', NULL, NULL, '2021-02-25 21:51:53', '2021-02-25 21:51:53'),
(105, 1, 12, '1', NULL, NULL, '2021-02-25 21:51:53', '2021-02-25 21:51:53'),
(106, 1, 14, '1', NULL, NULL, '2021-02-25 21:51:53', '2021-02-25 21:51:53'),
(107, 1, 13, '1', NULL, NULL, '2021-02-25 21:51:53', '2021-02-25 21:51:53'),
(108, 1, 2, '1', NULL, NULL, '2021-02-25 21:51:53', '2021-02-25 21:51:53'),
(109, 1, 7, '1', NULL, NULL, '2021-02-25 21:51:53', '2021-02-25 21:51:53'),
(110, 1, 6, '1', NULL, NULL, '2021-02-25 21:51:53', '2021-02-25 21:51:53'),
(111, 1, 15, '1', NULL, NULL, '2021-02-25 21:51:53', '2021-02-25 21:51:53'),
(112, 1, 10, '1', NULL, NULL, '2021-02-25 21:51:53', '2021-02-25 21:51:53'),
(113, 1, 112, '1', NULL, NULL, '2021-02-25 21:51:53', '2021-02-25 21:51:53'),
(115, 3, 141, '1', NULL, NULL, '2021-03-07 13:52:32', '2021-03-07 13:52:32'),
(116, 3, 139, '1', NULL, NULL, '2021-03-07 13:52:32', '2021-03-07 13:52:32');

-- --------------------------------------------------------

--
-- Table structure for table `m_questions`
--

CREATE TABLE `m_questions` (
  `question_id` int UNSIGNED NOT NULL,
  `question_new` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `question_type` varchar(45) DEFAULT NULL,
  `options` text,
  `correct_options` text,
  `question_is_active` enum('0','1') DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `m_questions`
--

INSERT INTO `m_questions` (`question_id`, `question_new`, `question`, `question_type`, `options`, `correct_options`, `question_is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'https://drive.google.com/thumbnail?id=1jE2wgFdvYRa1nYXLKKNA8Hee4F9hocHB', 'https://drive.google.com/file/d/1jE2wgFdvYRa1nYXLKKNA8Hee4F9hocHB/preview?usp=drive_web', '2', 'Volkswagen,BMW,Mercedes,Chevrolet', '1', '1', NULL, NULL, '2021-02-25 17:32:00', '2021-02-25 17:32:00'),
(2, 'https://drive.google.com/thumbnail?id=1KR5OWoOugHvNaWHEWqOLBxtEUINe43rV', 'https://drive.google.com/file/d/1KR5OWoOugHvNaWHEWqOLBxtEUINe43rV/preview?usp=drive_web', '2', 'Motorola,Maruti,Maruti Suzuki,Suzuki', '2', '1', NULL, NULL, '2021-02-25 17:32:59', '2021-02-25 17:32:59'),
(3, 'https://drive.google.com/thumbnail?id=1xBHllTWvqUIFA7oke9-Q3mk-tUf_gMqq', 'https://drive.google.com/file/d/1xBHllTWvqUIFA7oke9-Q3mk-tUf_gMqq/preview?usp=drive_web', '2', 'Fire Fox,Internet Explorer,Chrome,Microsoft Word', '1', '1', NULL, NULL, '2021-02-25 17:33:28', '2021-02-25 17:33:28'),
(4, 'https://drive.google.com/thumbnail?id=17bvAfenchE7g4npGkhv8YS6lgJt2VzDG', 'https://drive.google.com/file/d/17bvAfenchE7g4npGkhv8YS6lgJt2VzDG/preview?usp=drive_web', '2', 'Bank of America,Royal Bank of Scotland,ICICI Bank,Scotland Bank', '1', '1', NULL, NULL, '2021-02-25 17:35:10', '2021-02-25 17:35:10'),
(5, 'https://drive.google.com/thumbnail?id=1GDpKIJDdg0Y2DZ0SIENTVx8HxI3j4-3b', 'https://drive.google.com/file/d/1GDpKIJDdg0Y2DZ0SIENTVx8HxI3j4-3b/preview?usp=drive_web', '2', 'Girish,Syska,Philips,Havells', '2', '1', NULL, NULL, '2021-02-25 17:37:04', '2021-02-25 17:37:04'),
(6, 'https://drive.google.com/thumbnail?id=1DZnf3ENRAywu__RQP4LNgBwtykyiy6Ko', 'https://drive.google.com/file/d/1DZnf3ENRAywu__RQP4LNgBwtykyiy6Ko/preview?usp=drive_web', '2', 'Bank of India,Uco Bank,United Bank of India,City Union Bank', '0', '1', NULL, NULL, '2021-02-25 17:37:13', '2021-02-25 17:37:13'),
(7, 'https://drive.google.com/thumbnail?id=1t_T2xewSBadooEX6ZkOzedhVVGo9gA1d', 'https://drive.google.com/file/d/1t_T2xewSBadooEX6ZkOzedhVVGo9gA1d/preview?usp=drive_web', '2', 'Safari,Netscape Navigator,Lynx,Torch', '0', '1', NULL, NULL, '2021-02-25 17:38:37', '2021-02-25 17:38:37'),
(8, 'https://drive.google.com/thumbnail?id=1Genr75KZO8PrQP4veZJqcJ4dB3WyqL_p', 'https://drive.google.com/file/d/1Genr75KZO8PrQP4veZJqcJ4dB3WyqL_p/preview?usp=drive_web', '2', 'Corporation Bank,Indonesia Bank,IDBI Bank,ICICI Bank', '3', '1', NULL, NULL, '2021-02-25 17:39:21', '2021-02-25 17:39:21'),
(9, 'https://drive.google.com/thumbnail?id=1sywiuZhX7gLG0iEKqL-dy4Iv7oOZ1atu', 'https://drive.google.com/file/d/1sywiuZhX7gLG0iEKqL-dy4Iv7oOZ1atu/preview?usp=drive_web', '2', 'BNP Paribas,Four Star,None,Green Star', '0', '1', NULL, NULL, '2021-02-25 17:41:08', '2021-02-25 17:41:08'),
(10, 'https://drive.google.com/thumbnail?id=1NQNiDllIYTVBUWVb-HqW8pzwS3QBwf0y', 'https://drive.google.com/file/d/1NQNiDllIYTVBUWVb-HqW8pzwS3QBwf0y/preview?usp=drive_web', '2', 'HSBC Bank,J&K Bank,ICICI Bank,HDFC Bank', '3', '1', NULL, NULL, '2021-02-25 17:41:21', '2021-02-25 17:41:21'),
(11, 'https://drive.google.com/thumbnail?id=1M6RBg-YUbLieP7x83NdHQ61ARmUTnXzt', 'https://drive.google.com/file/d/1M6RBg-YUbLieP7x83NdHQ61ARmUTnXzt/preview?usp=drive_web', '2', 'Arrow,Parker,Luxor,Raymond', '1', '1', NULL, NULL, '2021-02-25 17:42:47', '2021-02-25 17:42:47'),
(12, 'https://drive.google.com/thumbnail?id=11xBSiJxwI9qFxTgG0pVtbdSqsRVvPnIE', 'https://drive.google.com/file/d/11xBSiJxwI9qFxTgG0pVtbdSqsRVvPnIE/preview?usp=drive_web', '2', 'Indian Bank,IFSC Bank,Karur Bank,Canara Bank', '0', '1', NULL, NULL, '2021-02-25 17:42:59', '2021-02-25 17:42:59'),
(13, 'https://drive.google.com/thumbnail?id=1lIMZJfIzOTnVm-lpz-kAQDe1OEqq_nRp', 'https://drive.google.com/file/d/1lIMZJfIzOTnVm-lpz-kAQDe1OEqq_nRp/preview?usp=drive_web', '2', 'Dena Bank,IDBI Bank,Vijaya Bank,Union Bank of India', '2', '1', NULL, NULL, '2021-02-25 17:44:04', '2021-02-25 17:44:04'),
(14, 'https://drive.google.com/thumbnail?id=1ewuKztlzBBCumZgaDQYcrZ6oldXwKncb', 'https://drive.google.com/file/d/1ewuKztlzBBCumZgaDQYcrZ6oldXwKncb/preview?usp=drive_web', '2', 'Tourch,Internet Explorer,UC Browser,Mozilla Firefox', '3', '1', NULL, NULL, '2021-02-25 17:45:08', '2021-02-25 17:45:08'),
(15, 'https://drive.google.com/thumbnail?id=1AcIO89_xnL9WGgn2JkcBiwhfifWzMCHX', 'https://drive.google.com/file/d/1AcIO89_xnL9WGgn2JkcBiwhfifWzMCHX/preview?usp=drive_web', '2', 'Hazard,Honda,Hyundai,None', '2', '1', NULL, NULL, '2021-02-25 17:46:43', '2021-02-25 17:46:43'),
(16, 'https://drive.google.com/thumbnail?id=1VpKvsyiVk0kvq0aUBL8TIaKIuKzG0puT', 'https://drive.google.com/file/d/1VpKvsyiVk0kvq0aUBL8TIaKIuKzG0puT/preview?usp=drive_web', '2', 'Agricultural Bank,Allahabad Bank,None of the above,ABN AMRO Bank', '1', '1', NULL, NULL, '2021-02-25 17:46:56', '2021-02-25 17:46:56'),
(17, 'https://drive.google.com/thumbnail?id=15i_lqUDMRQTXO8OZOipLcHFgfKuUQOqf', 'https://drive.google.com/file/d/15i_lqUDMRQTXO8OZOipLcHFgfKuUQOqf/preview?usp=drive_web', '2', 'Citi Bank,Deutsche Bank,Yes Bank,SBI', '2', '1', NULL, NULL, '2021-02-25 17:48:28', '2021-02-25 17:48:28'),
(18, 'https://drive.google.com/thumbnail?id=1Vb6Gu4cYRW7PNSX47p-8zmQEO-WQjeNs', 'https://drive.google.com/file/d/1Vb6Gu4cYRW7PNSX47p-8zmQEO-WQjeNs/preview?usp=drive_web', '2', 'Royal Bank,Syndicate Bank,Housing Development Finance Corporation,Hongkong and Shanghai Banking Corporation', '3', '1', NULL, NULL, '2021-02-25 17:50:26', '2021-02-25 17:50:26'),
(19, 'https://drive.google.com/thumbnail?id=1QbQELj-s60trjHeY-dd6mEY2MHrsjaKt', 'https://drive.google.com/file/d/1QbQELj-s60trjHeY-dd6mEY2MHrsjaKt/preview?usp=drive_web', '2', 'Ubuntu OS,Rad Hat OS,Suse OS,Fadero OS', '2', '1', NULL, NULL, '2021-02-25 17:50:41', '2021-02-25 17:50:41'),
(20, 'https://drive.google.com/thumbnail?id=1koZhekfY81Y9NzwegTwsrNuWxxsKUcTi', 'https://drive.google.com/file/d/1koZhekfY81Y9NzwegTwsrNuWxxsKUcTi/preview?usp=drive_web', '2', 'Orient,Havells,Surya,None', '1', '1', NULL, NULL, '2021-02-25 17:52:15', '2021-02-25 17:52:15'),
(21, 'https://drive.google.com/thumbnail?id=1rJEHqixgUmTahXFYeqHzTEvpRfFRNtIN', 'https://drive.google.com/file/d/1rJEHqixgUmTahXFYeqHzTEvpRfFRNtIN/preview?usp=drive_web', '2', 'Mahalaxmi Bank,Dhanalaxmi Bank,Grameen Bank,Dena Bank', '1', '1', NULL, NULL, '2021-02-25 17:53:10', '2021-02-25 17:53:10'),
(22, 'https://drive.google.com/thumbnail?id=1Wdx2NOZHod4zGjGnLUSpWYKl2pCgryxE', 'https://drive.google.com/file/d/1Wdx2NOZHod4zGjGnLUSpWYKl2pCgryxE/preview?usp=drive_web', '2', 'Karoor Vysya Bank,Ing Vysya Bank,Corporation Bank,None', '1', '1', NULL, NULL, '2021-02-25 17:54:13', '2021-02-25 17:54:13'),
(23, 'https://drive.google.com/thumbnail?id=10e6TnjPEKNEW1IArSH9FBHOVNML-B06T', 'https://drive.google.com/file/d/10e6TnjPEKNEW1IArSH9FBHOVNML-B06T/preview?usp=drive_web', '2', 'Yamaha,Bajaj,Yashki,Lambretta', '0', '1', NULL, NULL, '2021-02-25 17:54:25', '2021-02-25 17:54:25'),
(24, 'https://drive.google.com/thumbnail?id=1TP0kqr1AoI_lWvl5J6K5MYJ6Sx55TYLp', 'https://drive.google.com/file/d/1TP0kqr1AoI_lWvl5J6K5MYJ6Sx55TYLp/preview?usp=drive_web', '2', 'Nissan,Leylan,jaguar,Ninza', '0', '1', NULL, NULL, '2021-02-25 17:55:31', '2021-02-25 17:55:31'),
(25, 'https://drive.google.com/thumbnail?id=1NIZFBAYDY8L7hv3-3pl4DvOddk5szOLR', 'https://drive.google.com/file/d/1NIZFBAYDY8L7hv3-3pl4DvOddk5szOLR/preview?usp=drive_web', '2', 'Oriental Bank Of Commerce,Bank Of Commerce,Bank Of Chamboor,None of the above', '0', '1', NULL, NULL, '2021-02-25 17:55:46', '2021-02-25 17:55:46'),
(26, 'https://drive.google.com/thumbnail?id=1oyslUMEnv2g_1KroHTV2ykjOXT_Lmwc2', 'https://drive.google.com/file/d/1oyslUMEnv2g_1KroHTV2ykjOXT_Lmwc2/preview?usp=drive_web', '2', 'Mazda,Mastro,Mitsubishi,None of the above', '1', '1', NULL, NULL, '2021-02-25 17:56:51', '2021-02-25 17:56:51'),
(27, 'https://drive.google.com/thumbnail?id=19tbS4IujzE7yfi3JeXJ7vTteW9wxpO0s', 'https://drive.google.com/file/d/19tbS4IujzE7yfi3JeXJ7vTteW9wxpO0s/preview?usp=drive_web', '2', 'Union Bank,Indian Bank,IDBI Bank,Indian Overseas Bank', '3', '1', NULL, NULL, '2021-02-25 17:57:49', '2021-02-25 17:57:49'),
(28, 'https://drive.google.com/thumbnail?id=1Qur2iQ45oscv8Q7m8R-tSgihgpGC553N', 'https://drive.google.com/file/d/1Qur2iQ45oscv8Q7m8R-tSgihgpGC553N/preview?usp=drive_web', '2', 'Opel,Gypsy,Ouster,Renault', '0', '1', NULL, NULL, '2021-02-25 17:58:30', '2021-02-25 17:58:30'),
(29, 'https://drive.google.com/thumbnail?id=1qMd8R3qIdjFWmIWKJyvSNGxCyFBRe6rz', 'https://drive.google.com/file/d/1qMd8R3qIdjFWmIWKJyvSNGxCyFBRe6rz/preview?usp=drive_web', '2', 'Essar,Virgin,Tata Docomo,Hutch', '1', '1', NULL, NULL, '2021-02-25 17:59:14', '2021-02-25 17:59:14'),
(30, 'https://drive.google.com/thumbnail?id=1OAq4KWcEwvuipxshY6FDOImrSEJlH5h6', 'https://drive.google.com/file/d/1OAq4KWcEwvuipxshY6FDOImrSEJlH5h6/preview?usp=drive_web', '2', 'World Bank,Bank of America,American Council,J and K Bank', '1', '1', NULL, NULL, '2021-02-25 18:00:14', '2021-02-25 18:00:14'),
(31, 'https://drive.google.com/thumbnail?id=1bDeu2h8XPEryC5Cra4OlqLGRUFRPDrZw', 'https://drive.google.com/file/d/1bDeu2h8XPEryC5Cra4OlqLGRUFRPDrZw/preview?usp=drive_web', '2', 'Volvo,WonderVan,Volkswagen,None', '2', '1', NULL, NULL, '2021-02-25 18:00:52', '2021-02-25 18:00:52'),
(32, 'https://drive.google.com/thumbnail?id=1H4sowMxj9PkozNfg1WpWKFRvXF0D07ZG', 'https://drive.google.com/file/d/1H4sowMxj9PkozNfg1WpWKFRvXF0D07ZG/preview?usp=drive_web', '2', 'Canara Bank,Yes Bank,Olympic Council,City Union Bank', '0', '1', NULL, NULL, '2021-02-25 18:01:21', '2021-02-25 18:01:21'),
(33, 'https://drive.google.com/thumbnail?id=1vDe4Q0cUgP7XW_KnTJ5n-nVosTk9vCjz', 'https://drive.google.com/file/d/1vDe4Q0cUgP7XW_KnTJ5n-nVosTk9vCjz/preview?usp=drive_web', '2', 'Dena Bank,Pigeon India,Procter and gamble,Jammu and Kashmir Bank', '3', '1', NULL, NULL, '2021-02-25 18:02:06', '2021-02-25 18:02:06'),
(34, 'https://drive.google.com/thumbnail?id=1An3juSr0RTL2urwQEwU0tCNFMf3c5j2I', 'https://drive.google.com/file/d/1An3juSr0RTL2urwQEwU0tCNFMf3c5j2I/preview?usp=drive_web', '2', 'Uco Bank,IFFCO,Universal Bank,United Bank of India', '3', '1', NULL, NULL, '2021-02-25 18:02:48', '2021-02-25 18:02:48'),
(35, 'https://drive.google.com/thumbnail?id=11z7gYzS8pZQJt2TOOOIhYJtBUF5ae02U', 'https://drive.google.com/file/d/11z7gYzS8pZQJt2TOOOIhYJtBUF5ae02U/preview?usp=drive_web', '2', 'BMW,Porsche,Yamaha,Force Moters', '1', '1', NULL, NULL, '2021-02-25 18:03:50', '2021-02-25 18:03:50'),
(36, 'https://drive.google.com/thumbnail?id=1B8768CpbzF4oX0WQDJtUfnzmNMaIISQd', 'https://drive.google.com/file/d/1B8768CpbzF4oX0WQDJtUfnzmNMaIISQd/preview?usp=drive_web', '2', 'KFC,Papa John\'s,Pizza Hut,Dominos', '3', '1', NULL, NULL, '2021-02-25 18:04:26', '2021-02-25 18:04:26'),
(37, 'https://drive.google.com/thumbnail?id=1MYXunY7Td6gslw61odo2kQnHymiYXYF7', 'https://drive.google.com/file/d/1MYXunY7Td6gslw61odo2kQnHymiYXYF7/preview?usp=drive_web', '2', 'Uninor,Hutch Essar,Idea,Vodafone', '2', '1', NULL, NULL, '2021-02-25 18:05:58', '2021-02-25 18:05:58'),
(38, 'https://drive.google.com/thumbnail?id=1fP0IyKbdtQBQCGxDFfSmArHYy0RXC6LM', 'https://drive.google.com/file/d/1fP0IyKbdtQBQCGxDFfSmArHYy0RXC6LM/preview?usp=drive_web', '2', 'Delhi Metro Rail Corporation,Kolkata Metro,Jaipur Metro,All of the above', '0', '1', NULL, NULL, '2021-02-25 18:07:18', '2021-02-25 18:07:18'),
(39, 'https://drive.google.com/thumbnail?id=1_sbTfuMqfKF2snARWr4UOhOXHgNXIQ4B', 'https://drive.google.com/file/d/1_sbTfuMqfKF2snARWr4UOhOXHgNXIQ4B/preview?usp=drive_web', '2', 'International Cricket Council,The Board Of Control For Cricket In India,Sri Lanka Cricket,Cricket Australia', '0', '1', NULL, NULL, '2021-02-25 18:12:10', '2021-02-25 18:12:10'),
(40, 'https://drive.google.com/thumbnail?id=1o7L_XwoeRESaNdSFNnWxKtYZ-7-9yJZ_', 'https://drive.google.com/file/d/1o7L_XwoeRESaNdSFNnWxKtYZ-7-9yJZ_/preview?usp=drive_web', '2', 'WHO,MTS,Tri Sky,Uninor', '3', '1', NULL, NULL, '2021-02-25 18:13:05', '2021-02-25 18:13:05'),
(41, 'https://drive.google.com/thumbnail?id=1xs3Hf0eUIeK_3ibeEc2UW1ulM29macew', 'https://drive.google.com/file/d/1xs3Hf0eUIeK_3ibeEc2UW1ulM29macew/preview?usp=drive_web', '2', 'Green Gas,General Moters,GAIL,Global India', '2', '1', NULL, NULL, '2021-02-25 18:13:53', '2021-02-25 18:13:53'),
(42, 'https://drive.google.com/thumbnail?id=1eJU8vhORqrCactRFiLlJ_ugfQ3gZHyjT', 'https://drive.google.com/file/d/1eJU8vhORqrCactRFiLlJ_ugfQ3gZHyjT/preview?usp=drive_web', '2', 'Tele Communication,BSNL,MTNL,None of the above', '2', '1', NULL, NULL, '2021-02-25 18:13:58', '2021-02-25 18:13:58'),
(43, 'https://drive.google.com/thumbnail?id=1KwClg_rbtP5r5CZYS6Go8CKuogxIpsjv', 'https://drive.google.com/file/d/1KwClg_rbtP5r5CZYS6Go8CKuogxIpsjv/preview?usp=drive_web', '2', 'BlackBerry,Movers,Black Dots,BlueBerry', '0', '1', NULL, NULL, '2021-02-25 18:15:06', '2021-02-25 18:15:06'),
(44, 'https://drive.google.com/thumbnail?id=10bvYjkfTuo6YjNChbDh0t3IZ-ERYTgn7', 'https://drive.google.com/file/d/10bvYjkfTuo6YjNChbDh0t3IZ-ERYTgn7/preview?usp=drive_web', '2', 'Bank of Madurai,Bank of Maharashtra,Madurai Bank,Madras Bank', '1', '1', NULL, NULL, '2021-02-25 18:15:16', '2021-02-25 18:15:16'),
(45, 'https://drive.google.com/thumbnail?id=1wbkD6OO3hxGU7cub2QkjfSpaZKSf1K7F', 'https://drive.google.com/file/d/1wbkD6OO3hxGU7cub2QkjfSpaZKSf1K7F/preview?usp=drive_web', '2', 'IFSCI Bank,IDBI Bank,Indian Bank,Overseas Bank', '1', '1', NULL, NULL, '2021-02-25 18:15:59', '2021-02-25 18:15:59'),
(46, 'https://drive.google.com/thumbnail?id=12jQKor3ZxlAO-5_m3HI8mgeBgRyugR_s', 'https://drive.google.com/file/d/12jQKor3ZxlAO-5_m3HI8mgeBgRyugR_s/preview?usp=drive_web', '2', 'Rajasthan Bank,WHO,Reserve Bank of India,Indian Tourism', '2', '1', NULL, NULL, '2021-02-25 18:17:29', '2021-02-25 18:17:29'),
(47, 'https://drive.google.com/thumbnail?id=1wERDfUKlqzbc3y-bHHw1iEajfsisVZ3y', 'https://drive.google.com/file/d/1wERDfUKlqzbc3y-bHHw1iEajfsisVZ3y/preview?usp=drive_web', '2', 'Mercedes-Benz,Audi,Olympic Game,Volvo', '1', '1', NULL, NULL, '2021-02-25 18:17:32', '2021-02-25 18:17:32'),
(48, 'https://drive.google.com/thumbnail?id=1oAyKoQGtAiVhy_sBoI6qh0fOA51XRITr', 'https://drive.google.com/file/d/1oAyKoQGtAiVhy_sBoI6qh0fOA51XRITr/preview?usp=drive_web', '2', 'Canara Bank,Catholic Syrian Bank,Central Bank of India,United Bank', '1', '1', NULL, NULL, '2021-02-25 18:18:59', '2021-02-25 18:18:59'),
(49, 'https://drive.google.com/thumbnail?id=1yVOhMVh44I_c22btCN6OdjiGwSafFFWn', 'https://drive.google.com/file/d/1yVOhMVh44I_c22btCN6OdjiGwSafFFWn/preview?usp=drive_web', '2', 'Indian Medical Association,Indian Army,Indian Navy,Income Tax', '0', '1', NULL, NULL, '2021-02-25 18:19:46', '2021-02-25 18:19:46'),
(50, 'https://drive.google.com/thumbnail?id=1IcGp5_SaRRYaafPF1OwklgjSUGF5GIPf', 'https://drive.google.com/file/d/1IcGp5_SaRRYaafPF1OwklgjSUGF5GIPf/preview?usp=drive_web', '2', 'Mahindra,Kotak Mahindra,Eight Eyes,None of the above', '1', '1', NULL, NULL, '2021-02-25 18:20:28', '2021-02-25 18:20:28'),
(51, 'https://drive.google.com/thumbnail?id=1TFEEVPDH6P6DPKQEzr95VuLDzF58k_c3', 'https://drive.google.com/file/d/1TFEEVPDH6P6DPKQEzr95VuLDzF58k_c3/preview?usp=drive_web', '2', 'BHEL,Nalco,Sail,Coal India', '3', '1', NULL, NULL, '2021-02-25 18:20:58', '2021-02-25 18:20:58'),
(52, 'https://drive.google.com/thumbnail?id=1G7VhFhpT_ptOI2dezKRD-GUwWR5hhGkn', 'https://drive.google.com/file/d/1G7VhFhpT_ptOI2dezKRD-GUwWR5hhGkn/preview?usp=drive_web', '2', 'Union Bank,Overseas Bank,Central Bank Of India,Sarswat Bank', '0', '1', NULL, NULL, '2021-02-25 18:21:19', '2021-02-25 18:21:19'),
(53, 'https://drive.google.com/thumbnail?id=1LuYuxd2fqHGF1EeoIDzoid33t_cAUfkr', 'https://drive.google.com/file/d/1LuYuxd2fqHGF1EeoIDzoid33t_cAUfkr/preview?usp=drive_web', '2', 'Corporation Bank,City Union Bak,DSB Bank,Deutsche Bank', '3', '1', NULL, NULL, '2021-02-25 18:22:21', '2021-02-25 18:22:21'),
(54, 'https://drive.google.com/thumbnail?id=1Iy6BtL-8bZs9teuU2wjIWhZvJ0a-fAEZ', 'https://drive.google.com/file/d/1Iy6BtL-8bZs9teuU2wjIWhZvJ0a-fAEZ/preview?usp=drive_web', '2', 'BPCL,Bharat Petroleum,None,Hindusthan Petroleum', '1', '1', NULL, NULL, '2021-02-25 18:22:34', '2021-02-25 18:22:34'),
(55, 'https://drive.google.com/thumbnail?id=1WLBb89VRyVgVUSOzr2jVqo06xEZ3vJXm', 'https://drive.google.com/file/d/1WLBb89VRyVgVUSOzr2jVqo06xEZ3vJXm/preview?usp=drive_web', '2', 'Skoda,Renault,Volvo,Porsche', '2', '1', NULL, NULL, '2021-02-25 18:23:19', '2021-02-25 18:23:19'),
(56, 'https://drive.google.com/thumbnail?id=1O_gZa5cVFKDmMx7ORvPEVV2ykAi93VZM', 'https://drive.google.com/file/d/1O_gZa5cVFKDmMx7ORvPEVV2ykAi93VZM/preview?usp=drive_web', '2', 'Allen Cooper,Lacoste,Vhansari,Crocodile', '1', '1', NULL, NULL, '2021-02-25 18:23:47', '2021-02-25 18:23:47'),
(57, 'https://drive.google.com/thumbnail?id=1tXGx3B5aKUehLxybYUhaiofbxfL4OX7e', 'https://drive.google.com/file/d/1tXGx3B5aKUehLxybYUhaiofbxfL4OX7e/preview?usp=drive_web', '2', 'Eicher Moters,Horse Moters,Mazada,None of the above', '0', '1', NULL, NULL, '2021-02-25 18:24:30', '2021-02-25 18:24:30'),
(58, 'https://drive.google.com/thumbnail?id=1TA-1-3UV1X3bVqkk_wmSIIRU4iXrsh8s', 'https://drive.google.com/file/d/1TA-1-3UV1X3bVqkk_wmSIIRU4iXrsh8s/preview?usp=drive_web', '2', 'United Colors of Benetton,Park Avenue,Spyker,Allen Solly', '0', '1', NULL, NULL, '2021-02-25 18:25:06', '2021-02-25 18:25:06'),
(59, 'https://drive.google.com/thumbnail?id=1-CJ-kDK0bBQXWbbCJlGaqjzPm8psw2oQ', 'https://drive.google.com/file/d/1-CJ-kDK0bBQXWbbCJlGaqjzPm8psw2oQ/preview?usp=drive_web', '2', 'Goodland,Save Tree,Woodland,Green Earth', '2', '1', NULL, NULL, '2021-02-25 18:25:24', '2021-02-25 18:25:24'),
(60, 'https://drive.google.com/thumbnail?id=16C9OhdvLYfOAYhC1CczV5bHtbA-izxJg', 'https://drive.google.com/file/d/16C9OhdvLYfOAYhC1CczV5bHtbA-izxJg/preview?usp=drive_web', '2', 'IRCTC,Indina Tourism,Indian Railway,Jaipur Rail', '0', '1', NULL, NULL, '2021-02-25 18:26:22', '2021-02-25 18:26:22'),
(61, 'https://drive.google.com/thumbnail?id=1iWrx7zua4Kz6HmTrKYDaR9taldBGg6HV', 'https://drive.google.com/file/d/1iWrx7zua4Kz6HmTrKYDaR9taldBGg6HV/preview?usp=drive_web', '2', 'Firefox,Opera,Chrome,Tor', '1', '1', NULL, NULL, '2021-02-25 18:27:03', '2021-02-25 18:27:03'),
(62, 'https://drive.google.com/thumbnail?id=1PwMGg14YMilHlhoNhPKIRIvx6LPaPnLc', 'https://drive.google.com/file/d/1PwMGg14YMilHlhoNhPKIRIvx6LPaPnLc/preview?usp=drive_web', '2', 'Renault,Honda,Skoda,Mercedes', '2', '1', NULL, NULL, '2021-02-25 18:27:15', '2021-02-25 18:27:15'),
(63, 'https://drive.google.com/thumbnail?id=1F0xe5871XUW8PjXTkpl6OanSoMdZkpbo', 'https://drive.google.com/file/d/1F0xe5871XUW8PjXTkpl6OanSoMdZkpbo/preview?usp=drive_web', '2', 'Bull Fighting,Golden Bull,Lamborghini,Jaguar', '2', '1', NULL, NULL, '2021-02-25 18:29:11', '2021-02-25 18:29:11'),
(64, 'https://drive.google.com/thumbnail?id=1q0jWk6JCxd0HJjCt-ruyZ5H_tsEuUR0Z', 'https://drive.google.com/file/d/1q0jWk6JCxd0HJjCt-ruyZ5H_tsEuUR0Z/preview?usp=drive_web', '2', 'Videocon,Airtel,Vodafone,Idea', '2', '1', NULL, NULL, '2021-02-25 18:29:33', '2021-02-25 18:29:33'),
(65, 'https://drive.google.com/thumbnail?id=13y8WCulugRauEe_dDljff1PJnTaky_PH', 'https://drive.google.com/file/d/13y8WCulugRauEe_dDljff1PJnTaky_PH/preview?usp=drive_web', '2', 'Lambretta,Larsen and Turbo,Ashok Leyland,None of the above', '2', '1', NULL, NULL, '2021-02-25 18:30:48', '2021-02-25 18:30:48'),
(66, 'https://drive.google.com/thumbnail?id=1FFrscqDH1usTMJSJ3M0peEj5EHsw7oTJ', 'https://drive.google.com/file/d/1FFrscqDH1usTMJSJ3M0peEj5EHsw7oTJ/preview?usp=drive_web', '2', 'Kotak Mahindra Bank,HSBC,Standard Chartered Bank,ISRO', '2', '1', NULL, NULL, '2021-02-25 18:31:42', '2021-02-25 18:31:42'),
(67, 'https://drive.google.com/thumbnail?id=1eT5fsWZ8D6RinXrRfRSdtuyMEmsnBHln', 'https://drive.google.com/file/d/1eT5fsWZ8D6RinXrRfRSdtuyMEmsnBHln/preview?usp=drive_web', '2', 'Reebok,Pillars,Nike,Adidas', '3', '1', NULL, NULL, '2021-02-25 18:31:43', '2021-02-25 18:31:43'),
(68, 'https://drive.google.com/thumbnail?id=1-3joFoDjMzmf2CngJiQioXDuPvcEtUBw', 'https://drive.google.com/file/d/1-3joFoDjMzmf2CngJiQioXDuPvcEtUBw/preview?usp=drive_web', '2', 'Yamaha,Mitsubishi,Toyota,Jaguar', '3', '1', NULL, NULL, '2021-02-25 18:33:08', '2021-02-25 18:33:08'),
(69, 'https://drive.google.com/thumbnail?id=1_fz14e7DbaY2ex_4qPLmQz8grwx3KyJ0', 'https://drive.google.com/file/d/1_fz14e7DbaY2ex_4qPLmQz8grwx3KyJ0/preview?usp=drive_web', '2', 'Beetel,BSNL,MTNL,World Vision', '1', '1', NULL, NULL, '2021-02-25 18:33:23', '2021-02-25 18:33:23'),
(70, 'https://drive.google.com/thumbnail?id=1U3p16hsTsey5DK9z9w_7XaYORXnSZY8O', 'https://drive.google.com/file/d/1U3p16hsTsey5DK9z9w_7XaYORXnSZY8O/preview?usp=drive_web', '2', 'Mercedes-Benz,Volkswagen,Honda,Opel', '0', '1', NULL, NULL, '2021-02-25 18:34:12', '2021-02-25 18:34:12'),
(71, 'https://drive.google.com/thumbnail?id=1tqciVLeQUdoWGoY9oEmVoia2yqus-wrf', 'https://drive.google.com/file/d/1tqciVLeQUdoWGoY9oEmVoia2yqus-wrf/preview?usp=drive_web', '2', 'Red Label,Save River,Aircel,Power Life', '2', '1', NULL, NULL, '2021-02-25 18:34:39', '2021-02-25 18:34:39'),
(72, 'https://drive.google.com/thumbnail?id=1LJCLhMf_WfJL_-6rVmfgFX80yoZwmgPZ', 'https://drive.google.com/file/d/1LJCLhMf_WfJL_-6rVmfgFX80yoZwmgPZ/preview?usp=drive_web', '2', 'United Limited,Unilever Limited,Hindustan United Limited,None of the above', '1', '1', NULL, NULL, '2021-02-25 18:35:48', '2021-02-25 18:35:48'),
(73, 'https://drive.google.com/thumbnail?id=1bN2vRvLA-GWtzEezBzIfopwwteIPnxrI', 'https://drive.google.com/file/d/1bN2vRvLA-GWtzEezBzIfopwwteIPnxrI/preview?usp=drive_web', '2', 'Chevrolet,Golden Point,Volkswagen,None', '0', '1', NULL, NULL, '2021-02-25 18:36:08', '2021-02-25 18:36:08'),
(74, 'https://drive.google.com/thumbnail?id=1IyhEGboBtHOpdKoA85yLQnxM-4z2SskK', 'https://drive.google.com/file/d/1IyhEGboBtHOpdKoA85yLQnxM-4z2SskK/preview?usp=drive_web', '2', 'Indian Aerospace,Indian Airlines,Airways India,None of the above', '1', '1', NULL, NULL, '2021-02-25 18:37:04', '2021-02-25 18:37:04'),
(75, 'https://drive.google.com/thumbnail?id=1hORP-H4wrDOHiZlCd4_m6xl6QvbfWzm6', 'https://drive.google.com/file/d/1hORP-H4wrDOHiZlCd4_m6xl6QvbfWzm6/preview?usp=drive_web', '2', 'Global Health,Globe Entertainment,World Bank,Globe Bank', '2', '1', NULL, NULL, '2021-02-25 18:38:02', '2021-02-25 18:38:02'),
(76, 'https://drive.google.com/thumbnail?id=1E6FfeIaaVnwc2v4YNUp8AtUdu1cqPn8a', 'https://drive.google.com/file/d/1E6FfeIaaVnwc2v4YNUp8AtUdu1cqPn8a/preview?usp=drive_web', '2', 'Rad Had,Eight Drop,Fedora,Blue Pipes', '2', '1', NULL, NULL, '2021-02-25 18:38:24', '2021-02-25 18:38:24'),
(77, 'https://drive.google.com/thumbnail?id=1prZK31qmPw8RgPHBWPsS0sRkoleFTRCv', 'https://drive.google.com/file/d/1prZK31qmPw8RgPHBWPsS0sRkoleFTRCv/preview?usp=drive_web', '2', 'RTO,Income Tax,EPFO,Delhi Police', '1', '1', NULL, NULL, '2021-02-25 18:39:20', '2021-02-25 18:39:20'),
(78, 'https://drive.google.com/thumbnail?id=122U4Mlmy_GOsTyq7GoyE1oACr2W5YQCg', 'https://drive.google.com/file/d/122U4Mlmy_GOsTyq7GoyE1oACr2W5YQCg/preview?usp=drive_web', '2', 'Bharat Heavy Electricals Ltd.,National Thermal Power Corporation,GAIL,Steel Authority of India', '3', '1', NULL, NULL, '2021-02-25 18:39:50', '2021-02-25 18:39:50'),
(79, 'https://drive.google.com/thumbnail?id=1U7Qu_-6jnVzERY1wQXiLLDZgZkmjw6xN', 'https://drive.google.com/file/d/1U7Qu_-6jnVzERY1wQXiLLDZgZkmjw6xN/preview?usp=drive_web', '2', 'Hot Beverage,Cafe Coffee Day,Java,Coffee Day', '2', '1', NULL, NULL, '2021-02-25 18:40:50', '2021-02-25 18:40:50'),
(80, 'https://drive.google.com/thumbnail?id=1x0wdVV3paFquWuKFEb4r-iYLMK15Irhh', 'https://drive.google.com/file/d/1x0wdVV3paFquWuKFEb4r-iYLMK15Irhh/preview?usp=drive_web', '2', 'Unix,Linux,Cent OS,Suse OS', '1', '1', NULL, NULL, '2021-02-25 18:41:59', '2021-02-25 18:41:59'),
(81, 'https://drive.google.com/thumbnail?id=190wLChdWNsPr_QJM-mT1WztjozNordmH', 'https://drive.google.com/file/d/190wLChdWNsPr_QJM-mT1WztjozNordmH/preview?usp=drive_web', '2', 'CCNA,CISCO,Delloite,BPTP', '1', '1', NULL, NULL, '2021-02-25 18:42:10', '2021-02-25 18:42:10'),
(82, 'https://drive.google.com/thumbnail?id=1fDSE4lwiPlb1KO1y_hzfxa7ZPdFj_Qg3', 'https://drive.google.com/file/d/1fDSE4lwiPlb1KO1y_hzfxa7ZPdFj_Qg3/preview?usp=drive_web', '2', 'Larsen & Toubro,Lithuanian Toubro,LaDainian Tomlinson,None of the above', '0', '1', NULL, NULL, '2021-02-25 18:42:50', '2021-02-25 18:42:50'),
(83, 'https://drive.google.com/thumbnail?id=13eegrgAA28JzyEjhPB5FVjihWVg_ZUHg', 'https://drive.google.com/file/d/13eegrgAA28JzyEjhPB5FVjihWVg_ZUHg/preview?usp=drive_web', '2', 'None,Hindustan Petroleum,Bharat Petroleum,Relience Petrolium', '1', '1', NULL, NULL, '2021-02-25 18:44:35', '2021-02-25 18:44:35'),
(84, 'https://drive.google.com/thumbnail?id=1UNWDBLSnC3DP3rYxLfWnV8saJ9E4P9p3', 'https://drive.google.com/file/d/1UNWDBLSnC3DP3rYxLfWnV8saJ9E4P9p3/preview?usp=drive_web', '2', 'Lacoste,Cuma,Puma,Jaguar', '2', '1', NULL, NULL, '2021-02-25 18:44:38', '2021-02-25 18:44:38'),
(85, 'https://drive.google.com/thumbnail?id=1j3HGhKpdqX7u_rKPnQjZPehCcPCeoxbA', 'https://drive.google.com/file/d/1j3HGhKpdqX7u_rKPnQjZPehCcPCeoxbA/preview?usp=drive_web', '2', 'Dominos,Pizza Hut,McDonald,Food Panda', '1', '1', NULL, NULL, '2021-02-25 18:45:29', '2021-02-25 18:45:29'),
(86, 'https://drive.google.com/thumbnail?id=1PUoKxxK3kJ1WwcA-kUOjExXq0k4upznO', 'https://drive.google.com/file/d/1PUoKxxK3kJ1WwcA-kUOjExXq0k4upznO/preview?usp=drive_web', '2', 'Uninor,Airtel,Idea,Virgin', '1', '1', NULL, NULL, '2021-02-25 18:46:26', '2021-02-25 18:46:26'),
(87, 'https://drive.google.com/thumbnail?id=14886LjZ1l9GRBsQ09KgDm6lQm_KGTYrS', 'https://drive.google.com/file/d/14886LjZ1l9GRBsQ09KgDm6lQm_KGTYrS/preview?usp=drive_web', '2', 'Speed Post,India Post,Indian Post,None of the above', '1', '1', NULL, NULL, '2021-02-25 18:47:24', '2021-02-25 18:47:24'),
(88, 'https://drive.google.com/thumbnail?id=15JBmQt7souvjs7jw8Gjsim5GWmI1aLx-', 'https://drive.google.com/file/d/15JBmQt7souvjs7jw8Gjsim5GWmI1aLx-/preview?usp=drive_web', '2', 'Chevrolet,Mazda,Renault,Hyundai', '2', '1', NULL, NULL, '2021-02-25 18:47:46', '2021-02-25 18:47:46'),
(89, 'https://drive.google.com/thumbnail?id=1VWONXdzlddgRRPa0HTRnz2pJKQg6AQzN', 'https://drive.google.com/file/d/1VWONXdzlddgRRPa0HTRnz2pJKQg6AQzN/preview?usp=drive_web', '2', 'DRDO,ISRO,CDMO,SDOC', '1', '1', NULL, NULL, '2021-02-25 18:48:18', '2021-02-25 18:48:18'),
(90, 'https://drive.google.com/thumbnail?id=1q1C-naB0Cx80W41PfBDIyprcuQMilCtu', 'https://drive.google.com/file/d/1q1C-naB0Cx80W41PfBDIyprcuQMilCtu/preview?usp=drive_web', '2', 'Reebok,Addidas,FILA,NIKE', '3', '1', NULL, NULL, '2021-02-25 18:49:19', '2021-02-25 18:49:19'),
(91, 'https://drive.google.com/thumbnail?id=1RbymA7x7HEfmwoW7p3pPJOAUF1OMB67X', 'https://drive.google.com/file/d/1RbymA7x7HEfmwoW7p3pPJOAUF1OMB67X/preview?usp=drive_web', '2', 'ONGC,Cisco,Coal India,SAIL', '0', '1', NULL, NULL, '2021-02-25 18:50:11', '2021-02-25 18:50:11'),
(92, 'https://drive.google.com/thumbnail?id=1zRC3I2wKlMzPFDQ8cidnyOen6Rj54Zm0', 'https://drive.google.com/file/d/1zRC3I2wKlMzPFDQ8cidnyOen6Rj54Zm0/preview?usp=drive_web', '2', 'Axis Bank,Anglo Bank,American Bank,None of the above', '0', '1', NULL, NULL, '2021-02-25 18:51:11', '2021-02-25 18:51:11'),
(93, 'https://drive.google.com/thumbnail?id=1U9CvYhYiJVMkl97iz6GoENU2EtH7zuGE', 'https://drive.google.com/file/d/1U9CvYhYiJVMkl97iz6GoENU2EtH7zuGE/preview?usp=drive_web', '2', 'Ctholic Bank,Corporation Bank,Coperative Bank,DBS Bank', '1', '1', NULL, NULL, '2021-02-25 18:52:16', '2021-02-25 18:52:16'),
(94, 'https://drive.google.com/thumbnail?id=1LHZ8_TWe7IVN4dSncDz8TxtO2bnuwu7F', 'https://drive.google.com/file/d/1LHZ8_TWe7IVN4dSncDz8TxtO2bnuwu7F/preview?usp=drive_web', '2', 'Mac,Ubuntu,Suse,Red Hat', '3', '1', NULL, NULL, '2021-02-25 18:52:30', '2021-02-25 18:52:30'),
(95, 'https://drive.google.com/thumbnail?id=1esK8dD4lQkpm-vGZRUCz5y-IXq9SZDxl', 'https://drive.google.com/file/d/1esK8dD4lQkpm-vGZRUCz5y-IXq9SZDxl/preview?usp=drive_web', '2', 'Toshiba,Tota,Toyota,None of the above', '2', '1', NULL, NULL, '2021-02-25 18:53:09', '2021-02-25 18:53:09'),
(96, 'https://drive.google.com/thumbnail?id=1SpnJtUIdD-OMBDqllTWi3Fnqj-g0OUH9', 'https://drive.google.com/file/d/1SpnJtUIdD-OMBDqllTWi3Fnqj-g0OUH9/preview?usp=drive_web', '2', 'Red Chief,Woodland,Bata,Action', '0', '1', NULL, NULL, '2021-02-25 18:53:46', '2021-02-25 18:53:46'),
(97, 'https://drive.google.com/thumbnail?id=1iGLg7ClAABLWgoUcmftjW3rpRMUtb4Op', 'https://drive.google.com/file/d/1iGLg7ClAABLWgoUcmftjW3rpRMUtb4Op/preview?usp=drive_web', '2', 'Mazda,Manza,Mood,Silver Eagle', '0', '1', NULL, NULL, '2021-02-25 18:54:41', '2021-02-25 18:54:41'),
(98, 'https://drive.google.com/thumbnail?id=1BU2AI--J1bkup7pPenTtW4jX7DwU2zL7', 'https://drive.google.com/file/d/1BU2AI--J1bkup7pPenTtW4jX7DwU2zL7/preview?usp=drive_web', '2', 'NALCO,Coal India,DRDO,SAIL', '0', '1', NULL, NULL, '2021-02-25 18:55:07', '2021-02-25 18:55:07'),
(99, 'https://drive.google.com/thumbnail?id=14Rf8_MONBDLJUP6NTibbeW6I3kQB7jEN', 'https://drive.google.com/file/d/14Rf8_MONBDLJUP6NTibbeW6I3kQB7jEN/preview?usp=drive_web', '2', 'Loop,Telenor,E-Power,MTS', '3', '1', NULL, NULL, '2021-02-25 18:55:59', '2021-02-25 18:55:59'),
(100, 'https://drive.google.com/thumbnail?id=1IFHv3KoMTTo5NR_iCfKnkuB1Uo9c4i3v', 'https://drive.google.com/file/d/1IFHv3KoMTTo5NR_iCfKnkuB1Uo9c4i3v/preview?usp=drive_web', '2', 'BPL,LG,Videocon,Sansui', '3', '1', NULL, NULL, '2021-02-25 18:56:07', '2021-02-25 18:56:07'),
(101, 'https://drive.google.com/thumbnail?id=1XNWCIh0IcjZz0ubPSHhLJl4k-ol8tXyi', 'https://drive.google.com/file/d/1XNWCIh0IcjZz0ubPSHhLJl4k-ol8tXyi/preview?usp=drive_web', '2', 'Peter England,Levis,Lee Cooper,Kutons', '1', '1', NULL, NULL, '2021-02-25 18:57:40', '2021-02-25 18:57:40'),
(102, 'https://drive.google.com/thumbnail?id=1m8WWnQwEKeRd751IX0J2DbfCCashigmR', 'https://drive.google.com/file/d/1m8WWnQwEKeRd751IX0J2DbfCCashigmR/preview?usp=drive_web', '2', 'Vasudha,Videocon,Vatika,None of the above', '1', '1', NULL, NULL, '2021-02-25 18:58:13', '2021-02-25 18:58:13'),
(103, 'https://drive.google.com/thumbnail?id=1Cae7fG32XpRaXAREUo82T8JMrJ6ber_a', 'https://drive.google.com/file/d/1Cae7fG32XpRaXAREUo82T8JMrJ6ber_a/preview?usp=drive_web', '2', 'Auston,Ashoka Leyland,Mahindra,Bajaj', '2', '1', NULL, NULL, '2021-02-25 18:58:56', '2021-02-25 18:58:56'),
(104, 'https://drive.google.com/thumbnail?id=1S7S7WGjStRtYkCm-o7LgkxSdhkqfcqq1', 'https://drive.google.com/file/d/1S7S7WGjStRtYkCm-o7LgkxSdhkqfcqq1/preview?usp=drive_web', '2', 'Indian Oil,Hind Petrolium,Bharat Petrolium,None of the above', '0', '1', NULL, NULL, '2021-02-25 18:59:09', '2021-02-25 18:59:09'),
(105, 'https://drive.google.com/thumbnail?id=1zaPF6mMhZqwn-BW0Iz89JWXD8XDcgJ2g', 'https://drive.google.com/file/d/1zaPF6mMhZqwn-BW0Iz89JWXD8XDcgJ2g/preview?usp=drive_web', '2', 'Bank of Bhusawar,Reserve Bank of India,Bank of Baroda,Bank of Bikanare', '2', '1', NULL, NULL, '2021-02-25 19:00:34', '2021-02-25 19:00:34'),
(106, 'https://drive.google.com/thumbnail?id=1DROq_L0t2nz_oyE06JcJWx1wdU3YUhJH', 'https://drive.google.com/file/d/1DROq_L0t2nz_oyE06JcJWx1wdU3YUhJH/preview?usp=drive_web', '2', 'DRDO,Indian Army,Indian Navy,Indian Airforce', '0', '1', NULL, NULL, '2021-02-25 19:01:28', '2021-02-25 19:01:28'),
(107, 'https://drive.google.com/thumbnail?id=1_0VtvVfkLsQY07JDZkRSBsat_7rUbWJy', 'https://drive.google.com/file/d/1_0VtvVfkLsQY07JDZkRSBsat_7rUbWJy/preview?usp=drive_web', '2', 'BBM,BMW,Browni,Bajaj', '3', '1', NULL, NULL, '2021-02-25 19:01:58', '2021-02-25 19:01:58'),
(108, 'https://drive.google.com/thumbnail?id=1RbjBky1yVDTGMzaJCVvsfoTGLcnacjVL', 'https://drive.google.com/file/d/1RbjBky1yVDTGMzaJCVvsfoTGLcnacjVL/preview?usp=drive_web', '2', 'Honda,Herculis,Host Gator,Honda', '0', '1', NULL, NULL, '2021-02-25 19:02:41', '2021-02-25 19:02:41'),
(109, 'https://drive.google.com/thumbnail?id=1tM_Fbhi5SM2pFLyXKaYkU_3q4dsaX4wG', 'https://drive.google.com/file/d/1tM_Fbhi5SM2pFLyXKaYkU_3q4dsaX4wG/preview?usp=drive_web', '2', 'Standard Chartered,Oriental Bank Of Commerce,Dena Bank,None', '2', '1', NULL, NULL, '2021-02-25 19:02:50', '2021-02-25 19:02:50'),
(110, 'https://drive.google.com/thumbnail?id=1am_2v5HGr2QNKupdildQJ0H5FMS1wURy', 'https://drive.google.com/file/d/1am_2v5HGr2QNKupdildQJ0H5FMS1wURy/preview?usp=drive_web', '2', 'Greaves Crompton,Crompton Greaves,Company Good,None', '1', '1', NULL, NULL, '2021-02-25 19:04:00', '2021-02-25 19:04:00'),
(111, 'https://drive.google.com/thumbnail?id=1_Byv9J1FgaNUeKVsyMoO7ma8ksLb3PrU', 'https://drive.google.com/file/d/1_Byv9J1FgaNUeKVsyMoO7ma8ksLb3PrU/preview?usp=drive_web', '2', 'Woodland,Reebok,Nike,Adidas', '1', '1', NULL, NULL, '2021-02-25 19:04:18', '2021-02-25 19:04:18'),
(112, 'https://drive.google.com/thumbnail?id=16CepXFMDC4nh4i6ES47NIVykvx4-3vUD', 'https://drive.google.com/file/d/16CepXFMDC4nh4i6ES47NIVykvx4-3vUD/preview?usp=drive_web', '2', 'Dairy Milk,Galaxy Ripple,Oreo,Aero', '3', '1', NULL, NULL, '2021-02-25 21:49:33', '2021-02-25 21:49:33'),
(113, 'https://drive.google.com/thumbnail?id=1Ir6q0JvummYMt7IbLP_vVsaLXKqiE506', 'https://drive.google.com/file/d/1Ir6q0JvummYMt7IbLP_vVsaLXKqiE506/preview?usp=drive_web', '2', 'Bueno,Dairy Milk,Maltesers,Galaxy Ripple', '0', '1', NULL, NULL, '2021-03-06 17:32:59', '2021-03-06 17:32:59'),
(114, 'https://drive.google.com/thumbnail?id=1g_w6I-QwknqtMP6MjXEhyfpnHGpk0nFt', 'https://drive.google.com/file/d/1g_w6I-QwknqtMP6MjXEhyfpnHGpk0nFt/preview?usp=drive_web', '2', 'Dairy Milk,Creme Egg,Kinder Egg,Galaxy Ripple', '1', '1', NULL, NULL, '2021-03-06 17:34:34', '2021-03-06 17:34:34'),
(115, 'https://drive.google.com/thumbnail?id=1LTkAchZ8ccX6UzJP1Bs6Bu9BCb3eQJLL', 'https://drive.google.com/file/d/1LTkAchZ8ccX6UzJP1Bs6Bu9BCb3eQJLL/preview?usp=drive_web', '2', 'Maltesers,Green & Blacks,Mars,BlacksMaltesersOreoMars', '1', '1', NULL, NULL, '2021-03-06 17:35:48', '2021-03-06 17:35:48'),
(116, 'https://drive.google.com/thumbnail?id=1snC4Oy8rsBtqfBazbQ-QX35uzhCt6m3D', 'https://drive.google.com/file/d/1snC4Oy8rsBtqfBazbQ-QX35uzhCt6m3D/preview?usp=drive_web', '2', 'Maltesers,Dairy Milk,KitKat,Galaxy Caramel', '2', '1', NULL, NULL, '2021-03-06 17:36:58', '2021-03-06 17:36:58'),
(117, 'https://drive.google.com/thumbnail?id=1yDP1u2YKvV-EFklqLLKn8Gtmal3pC67r', 'https://drive.google.com/file/d/1yDP1u2YKvV-EFklqLLKn8Gtmal3pC67r/preview?usp=drive_web', '2', 'Dairy Milk,Galaxy Ripple,Oreo,Maltesers', '3', '1', NULL, NULL, '2021-03-06 17:38:13', '2021-03-06 17:38:13'),
(118, 'https://drive.google.com/thumbnail?id=13UCj-FP7WHQnmakuTyVfthGePN4t8TOU', 'https://drive.google.com/file/d/13UCj-FP7WHQnmakuTyVfthGePN4t8TOU/preview?usp=drive_web', '2', 'Marvellous Creations,Galaxy Caramel,Maltesers,Toblerone', '0', '1', NULL, NULL, '2021-03-06 17:40:00', '2021-03-06 17:40:00'),
(119, 'https://drive.google.com/thumbnail?id=16lyT0T4r96BJX0yPJnh6oszT_zcNVhpB', 'https://drive.google.com/file/d/16lyT0T4r96BJX0yPJnh6oszT_zcNVhpB/preview?usp=drive_web', '2', 'Galaxy Ripple,Galaxy Caramel,Maltesers,Mars', '0', '1', NULL, NULL, '2021-03-06 17:41:33', '2021-03-06 17:41:33'),
(120, 'https://drive.google.com/thumbnail?id=16EUE1nv6mVboT6_RBjsgj8pHJrQ3qg_R', 'https://drive.google.com/file/d/16EUE1nv6mVboT6_RBjsgj8pHJrQ3qg_R/preview?usp=drive_web', '2', 'Maltesers,Dairy Milk,Snickers,Mars', '2', '1', NULL, NULL, '2021-03-06 17:42:46', '2021-03-06 17:42:46'),
(121, 'https://drive.google.com/thumbnail?id=1bwQa71IF6x3j7orWWYACdcaBR8xMo73M', 'https://drive.google.com/file/d/1bwQa71IF6x3j7orWWYACdcaBR8xMo73M/preview?usp=drive_web', '2', 'Dairy Milk,Choco Cream,Cadbury Chunky,Galaxy Ripple', '0', '1', NULL, NULL, '2021-03-06 17:44:36', '2021-03-06 17:44:36'),
(122, 'https://drive.google.com/thumbnail?id=15x4JgtrW5QIg_gdHDXU_h4UAraMPT0R5', 'https://drive.google.com/file/d/15x4JgtrW5QIg_gdHDXU_h4UAraMPT0R5/preview?usp=drive_web', '2', 'Sony,Motorola,LG,Ericsson', '1', '1', NULL, NULL, '2021-03-06 17:50:12', '2021-03-06 17:50:12'),
(123, 'https://drive.google.com/thumbnail?id=1PtcYbr6SwkNoki1TJX_OAzfzqqBVC_EX', 'https://drive.google.com/file/d/1PtcYbr6SwkNoki1TJX_OAzfzqqBVC_EX/preview?usp=drive_web', '2', '7UP,7-Seven,7,Target', '0', '1', NULL, NULL, '2021-03-06 17:51:33', '2021-03-06 17:51:33'),
(124, 'https://drive.google.com/thumbnail?id=1jZQtYk85LZY6aYI0xH4VZ4VExG-XHova', 'https://drive.google.com/file/d/1jZQtYk85LZY6aYI0xH4VZ4VExG-XHova/preview?usp=drive_web', '2', 'Illy,Disney,Qdoba,Coca-COla', '1', '1', NULL, NULL, '2021-03-06 17:53:21', '2021-03-06 17:53:21'),
(125, 'https://drive.google.com/thumbnail?id=12VNZKLnmpi1VOJDDsLhiW9WUvIjnfS2a', 'https://drive.google.com/file/d/12VNZKLnmpi1VOJDDsLhiW9WUvIjnfS2a/preview?usp=drive_web', '2', 'British Airways,Boeing,Delta,Lufthansa', '0', '1', NULL, NULL, '2021-03-06 17:54:50', '2021-03-06 17:54:50'),
(126, 'https://drive.google.com/thumbnail?id=1KXNh2LvBSlN2GnT_5NlcjqCP9qO00C8V', 'https://drive.google.com/file/d/1KXNh2LvBSlN2GnT_5NlcjqCP9qO00C8V/preview?usp=drive_web', '2', 'American Greetings,Crown RoyaLe,Rolex,allmark', '2', '1', NULL, NULL, '2021-03-06 17:56:36', '2021-03-06 17:56:36'),
(127, 'https://drive.google.com/thumbnail?id=1nQrcHCFakD9ev72tqkqAhir8kY6DO5p7', 'https://drive.google.com/file/d/1nQrcHCFakD9ev72tqkqAhir8kY6DO5p7/preview?usp=drive_web', '2', 'Google,NBC,Microsoft,MSN', '3', '1', NULL, NULL, '2021-03-06 17:57:54', '2021-03-06 17:57:54'),
(128, 'https://drive.google.com/thumbnail?id=1LXdu1GlIV7JJdDe3q0VmzvkdiZlO2WTx', 'https://drive.google.com/file/d/1LXdu1GlIV7JJdDe3q0VmzvkdiZlO2WTx/preview?usp=drive_web', '2', 'BBC,TNT,CBS,ABC', '0', '1', NULL, NULL, '2021-03-06 17:59:15', '2021-03-06 17:59:15'),
(129, 'https://drive.google.com/thumbnail?id=1cSV8udRjNmPYJ5-xgudb2T_x6Nx9XDxC', 'https://drive.google.com/file/d/1cSV8udRjNmPYJ5-xgudb2T_x6Nx9XDxC/preview?usp=drive_web', '2', 'Mercedes,Red Bull,Ferrari,Puma', '1', '1', NULL, NULL, '2021-03-06 18:00:34', '2021-03-06 18:00:34'),
(130, 'https://drive.google.com/thumbnail?id=110d7lU23qmZsMp8fdIDoOPFnhqyJX22g', 'https://drive.google.com/file/d/110d7lU23qmZsMp8fdIDoOPFnhqyJX22g/preview?usp=drive_web', '2', 'Better Made,Lay\'s,Doritos,Pringles', '3', '1', NULL, NULL, '2021-03-06 18:02:46', '2021-03-06 18:02:46'),
(131, 'https://drive.google.com/thumbnail?id=1IewgwqQkytwr-zyn_6IUV5fXbYLIIJXN', 'https://drive.google.com/file/d/1IewgwqQkytwr-zyn_6IUV5fXbYLIIJXN/preview?usp=drive_web', '2', 'Subaru,LG,Sony,None of the above', '0', '1', NULL, NULL, '2021-03-06 18:04:54', '2021-03-06 18:04:54'),
(132, 'https://drive.google.com/thumbnail?id=11y4lVTSNJaSi5PD4r92fnVmz3qzKlYe2', 'https://drive.google.com/file/d/11y4lVTSNJaSi5PD4r92fnVmz3qzKlYe2/preview?usp=drive_web', '2', 'HP,Dell,AMD,Intel', '2', '1', NULL, NULL, '2021-03-06 18:06:21', '2021-03-06 18:06:21'),
(133, 'https://drive.google.com/thumbnail?id=1JMquVeKbozYAX4LsL_eM2E-QLVjivyFZ', 'https://drive.google.com/file/d/1JMquVeKbozYAX4LsL_eM2E-QLVjivyFZ/preview?usp=drive_web', '2', '7UP,Sprite,Pepsi,Cocacola', '2', '1', NULL, NULL, '2021-03-06 18:07:36', '2021-03-06 18:07:36'),
(134, 'https://drive.google.com/thumbnail?id=1etsx1bs0TbjXzv-k35GxXNsf6QA18MO_', 'https://drive.google.com/file/d/1etsx1bs0TbjXzv-k35GxXNsf6QA18MO_/preview?usp=drive_web', '2', 'Sony,LG,RCA,Sharp', '1', '1', NULL, NULL, '2021-03-06 18:09:05', '2021-03-06 18:09:05'),
(135, 'https://drive.google.com/thumbnail?id=1SF1eK1T9Rbg9vYb65dHo5FmyddDbvcQF', 'https://drive.google.com/file/d/1SF1eK1T9Rbg9vYb65dHo5FmyddDbvcQF/preview?usp=drive_web', '2', 'US Mint,Ameriocan Express,Bank of America,MasterCard', '1', '1', NULL, NULL, '2021-03-06 18:10:26', '2021-03-06 18:10:26'),
(136, 'https://drive.google.com/thumbnail?id=1r2Pz4EFR0I7Xmgw8ISluXYSHjE9BdvfQ', 'https://drive.google.com/file/d/1r2Pz4EFR0I7Xmgw8ISluXYSHjE9BdvfQ/preview?usp=drive_web', '2', 'Ferrari,Peugeot,Citroen,Alfa Romeo', '1', '1', NULL, NULL, '2021-03-07 13:38:50', '2021-03-07 13:38:50'),
(137, 'https://drive.google.com/thumbnail?id=1G5aDHIQSoazyc-Hdx_FLEmmetl2_GpF8', 'https://drive.google.com/file/d/1G5aDHIQSoazyc-Hdx_FLEmmetl2_GpF8/preview?usp=drive_web', '2', 'Sega,Adobe,CNN,Sears', '0', '1', NULL, NULL, '2021-03-07 13:40:21', '2021-03-07 13:40:21'),
(138, 'https://drive.google.com/thumbnail?id=1zskqeLWWVty2C54B-6xQUWfcLjZ8E23Q', 'https://drive.google.com/file/d/1zskqeLWWVty2C54B-6xQUWfcLjZ8E23Q/preview?usp=drive_web', '2', 'Adidas,Delta,British Airways,Fila', '3', '1', NULL, NULL, '2021-03-07 13:41:41', '2021-03-07 13:41:41'),
(139, 'https://drive.google.com/thumbnail?id=1PbL-u1RuJ4BvoLq18FPi4SSneslBrKTi', 'https://drive.google.com/file/d/1PbL-u1RuJ4BvoLq18FPi4SSneslBrKTi/preview?usp=drive_web', '2', 'Nintendo 64,Playstation,XBox,Sega', '0', '1', NULL, NULL, '2021-03-07 13:43:05', '2021-03-07 13:43:05'),
(140, 'https://drive.google.com/thumbnail?id=1YqRv4KyQm2QtfQdF_77ClGa6sBVARUBf', 'https://drive.google.com/file/d/1YqRv4KyQm2QtfQdF_77ClGa6sBVARUBf/preview?usp=drive_web', '2', 'NBC,CBC,CNS,None of the above', '0', '1', NULL, NULL, '2021-03-07 13:46:11', '2021-03-07 13:46:11'),
(141, 'https://drive.google.com/thumbnail?id=1GuxTLeTWoIyU00qaVXu_jcRW3DKjwyp0', 'https://drive.google.com/file/d/1GuxTLeTWoIyU00qaVXu_jcRW3DKjwyp0/preview?usp=drive_web', '2', 'New Line Cinema,Paramount,Dreamworks,Metro-Goldwyn-Mayer', '0', '1', NULL, NULL, '2021-03-07 13:48:41', '2021-03-07 13:48:41'),
(142, 'https://drive.google.com/thumbnail?id=13v-GlzD2n7G8Cdamy6rc__p1tkXXuXEr', 'https://drive.google.com/file/d/13v-GlzD2n7G8Cdamy6rc__p1tkXXuXEr/preview?usp=drive_web', '2', 'Citgo,BP,Shell,Mobil', '1', '1', NULL, NULL, '2021-03-07 13:55:05', '2021-03-07 13:55:05'),
(143, 'https://drive.google.com/thumbnail?id=1dMaaKLd_Ifpn6NQM0FlY8Hq8zMdxn4DH', 'https://drive.google.com/file/d/1dMaaKLd_Ifpn6NQM0FlY8Hq8zMdxn4DH/preview?usp=drive_web', '2', 'Atari,XBOX,Playstation,Nintendo', '0', '1', NULL, NULL, '2021-03-07 13:56:00', '2021-03-07 13:56:00'),
(144, 'https://drive.google.com/thumbnail?id=1T2rmqwMR0FgTbakT8GXLFdbO291h5muT', 'https://drive.google.com/file/d/1T2rmqwMR0FgTbakT8GXLFdbO291h5muT/preview?usp=drive_web', '2', 'DC Shoes,Champion,Starter,Wilson', '1', '1', NULL, NULL, '2021-03-07 13:57:02', '2021-03-07 13:57:02'),
(145, 'https://drive.google.com/thumbnail?id=13_6DfNIb6CHDcjbnZTpCkIGAlackxxNQ', 'https://drive.google.com/file/d/13_6DfNIb6CHDcjbnZTpCkIGAlackxxNQ/preview?usp=drive_web', '2', 'Sprint,MCI Wireless,Verizon,ATT', '3', '1', NULL, NULL, '2021-03-07 13:59:28', '2021-03-07 13:59:28');

-- --------------------------------------------------------

--
-- Table structure for table `m_user`
--

CREATE TABLE `m_user` (
  `user_id` int UNSIGNED NOT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `user_image` text,
  `user_points` int DEFAULT NULL,
  `uuid` text,
  `token` text,
  `user_type` enum('0','1') DEFAULT NULL,
  `user_is_active` enum('0','1') DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `m_user`
--

INSERT INTO `m_user` (`user_id`, `user_name`, `user_image`, `user_points`, `uuid`, `token`, `user_type`, `user_is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'admin3216', NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, '2021-02-22 18:23:08', '2021-02-22 18:23:08'),
(5, 'Jitu', 'https://bootdey.com/img/Content/avatar/avatar4.png', 9050, 'd1713b979d20cda5', 'f9zkR-p3SnajNCtb8Fc6pN:APA91bHhl9HSh7-hs6TtuBdGfdpUBuBZb54rt00tiWK8QKNx1yE11jTNUG_gs6nNTEDc8czX63WZ5_t1DAKplWG4JU1WGTBnRNFTN8exER7fLVmyI2S_z4WDLXDvGAnREB7CxCm_mH98', '0', '1', NULL, NULL, '2021-02-23 16:30:15', '2021-02-23 16:30:15'),
(6, 'fddf', 'https://bootdey.com/img/Content/avatar/avatar2.png', 108200, '6cee81d7346684a1', 'fkNL7rmbRoyEsVlkd9RX19:APA91bGHk6yYa3vrihvlU_J0vcrvM3TLW_NRbyPvHuX6x9cAIRBCKyqCV3wr1xyWWift-D4pJN_7_LLcpx_iXyUp6JxmsXnkjJ2KUic8RfjONQE82RKycAxkoSHk8ALgFyGQpgqlvo3J', '0', '1', NULL, NULL, '2021-02-23 17:23:09', '2021-02-23 17:23:09'),
(7, 'SAHIL', 'https://bootdey.com/img/Content/avatar/avatar7.png', 9000, '54aab4681ff5d89d', 'fwPz2YodTMK4cUuS2v9EQr:APA91bGIiCfREnuQLCgW4VJd-5o3hT-ICq9PZV1k-V6RBu5Qwl7RL42_NuArK1RM0uwy-ATErk4MTsiAAEWgGA021MmN196hdTQA6RoYwSYob1j6T8p2QdV701A0R7xD1RWw_qarZqDk', '0', '1', NULL, NULL, '2021-02-24 05:37:16', '2021-02-24 05:37:16'),
(8, 'Ajit333', 'https://bootdey.com/img/Content/avatar/avatar7.png', 9600, '437aad749bf34956', 'eT9SbQBhSEWN0QDAVeV04h:APA91bH-FNKSunaChVBNChVxbYLMtXPUxKvDPJZ2sY39r_rv5fJwSEcC5mLI4qBL3pgYuqYZrpj-1pmEo9c2lbeSq14cnHJKdYwQAnk4ZFlS3O0bP0eOi6nuwShm7c8BaUxnuL2TiIJs', '0', '1', NULL, NULL, '2021-02-24 11:44:13', '2021-02-24 11:44:13'),
(9, 'Darshan', 'https://bootdey.com/img/Content/avatar/avatar8.png', 9000, '8493ed138b2a2313', 'ey7ptERaTUS-Q-qtcni6BD:APA91bE3Um1K9ujRBdinROMvVGAwIitSNCVC-MD_Y358HIH4EzvlGyA-h7aTN4qmNKoTutqVPb43XxB81qKWl4_mNLBNob_9btTrhsZxMVFiKEjyniurFc42DvxpcIMozB4HKbnojEOK', '0', '1', NULL, NULL, '2021-02-25 06:04:09', '2021-02-25 06:04:09'),
(10, 'Pratz', 'https://bootdey.com/img/Content/avatar/avatar7.png', 14600, '9d3e9f9b24739fc8', 'dpjGEZ4xTBGw1XceyxXL93:APA91bF0WSoderM1uZSOn0YssFKA7haGy9ktuYpIDnQ9mK_WbU-AtmZNZDBXgogrRYZtFu7YTyeguUnEmN4L1zCfi5GRdm6tMGtK9GYenSRYmk73zo-AcGHS-79U7PUwdl-v6Hjn7P6z', '0', '1', NULL, NULL, '2021-02-25 06:11:42', '2021-02-25 06:11:42'),
(11, 'Zeba', 'https://bootdey.com/img/Content/avatar/avatar3.png', 8600, '7e33edca004b322a', 'euTF5IO0TUyCV3AnuUwb9h:APA91bEXi7rjbF_vTzePXbo54MBPYel_eDZJLsQj5E3l8jhoHK-Wugup47UBoR9bI-UCm91uhV6WtoDNGEyq9GhmRbeeRYOJN1iisQWofpCg9xyvK45tQuDhdwW9KXf52DJQ-VS1aTdz', '0', '1', NULL, NULL, '2021-02-25 09:48:07', '2021-02-25 09:48:07'),
(12, 'DJ', 'https://bootdey.com/img/Content/avatar/avatar1.png', 8900, '83fddd2289a23ba4', 'dQc8DlOcRWK3J2fnnp77Gp:APA91bEuRA4sZHLwRZD5lKMfy8biI7ofsGNnTO5y4c_KQN4pWCj_z49vrlg-zcKMXQTJjZ12HSFywXpAXulKjENhMuxE_eyl1Qpi0Z9qJa_m0FHCFEeb3foLYW3G5l_e2NyHO_EMmyg7', '0', '1', NULL, NULL, '2021-02-25 11:39:15', '2021-02-25 11:39:15'),
(13, 'Ajit Maurya', 'https://bootdey.com/img/Content/avatar/avatar1.png', 3050, 'cfc493275a86cc93', 'f98M4MXWTzOhbwWI4WysFH:APA91bHQHWIdNdwPLLiZpIf55JohfVCHMqgCzvuKelXXbXkHIxgHKKHTNd5zvz6WcQh4RCnNGwAkedMOUYP0QbgPRNcHAne0SomO77vqiiWnbxUZAEjM6Qjwkgp781w33rF3u29Znbt6', '0', '1', NULL, NULL, '2021-02-25 11:47:47', '2021-02-25 11:47:47'),
(14, 'Sandeep', 'https://bootdey.com/img/Content/avatar/avatar7.png', 2500, '316cc4287cb310d9', 'c7Kbdq-nRXSHLgZN_1GOeH:APA91bH1j-HWXiQY-mt9kmL435USZMupjESeyMoSm0jPn6wz45bfGSVr5umW5PywfNxRSnC15SbDQa-x1MD_NZMC5v9y_zxZEPUIalpizZQB2LN5inO6DE9A8KCq1gX8kgwo6Q-C0LRa', '0', '1', NULL, NULL, '2021-03-03 04:12:07', '2021-03-03 04:12:07'),
(15, 'Raj', 'https://bootdey.com/img/Content/avatar/avatar3.png', 1100, 'd1069d65c4a66dd6', 'dh8LjHYMRKiOVUMQZ_ajQr:APA91bGuJNcrOkBZGw3MJg3uRGecf0TR6SRGIT434qL7W7NVlat-b8Q9gHfj42rbRvQlU6H_-zxclQDYlpp4VJ7zCvHs6C_Iu7jWuCyo0qCjdqCP4TMtEqg3aY3GysCHoU6e9Lqpnuve', '0', '1', NULL, NULL, '2021-03-04 17:44:22', '2021-03-04 17:44:22'),
(16, 'iam_amitmaurya', 'https://bootdey.com/img/Content/avatar/avatar1.png', 4300, 'c72ef1c5f86338ca', 'ch3gElkPQXaoSlYgQ6Dgsw:APA91bER4Kw7zCJPmq6svg8l32rQ48XXDCOSzfJHUDRQz4GQU4Apr5HA_jLZ98FTc1iRXWBPUN5sJWDWvfs6wv-8r-ucHAVZ0AP-YcykceCla4_Wioe2d4e93nifrKgBP93lXG1AEZfp', '0', '1', NULL, NULL, '2021-03-04 17:49:57', '2021-03-04 17:49:57');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `setting_id` int UNSIGNED NOT NULL,
  `app_logo` text,
  `app_name` text,
  `base_url_backend` text,
  `playstore_url` text,
  `passing_score` text,
  `level_fail_dedution_point` text,
  `credit_pass_points` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`setting_id`, `app_logo`, `app_name`, `base_url_backend`, `playstore_url`, `passing_score`, `level_fail_dedution_point`, `credit_pass_points`) VALUES
(1, 'any', 'Quiz', 'https', 'https', '10', '100', '50');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_detail`
--

CREATE TABLE `transaction_detail` (
  `tr_id` int UNSIGNED NOT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `amount` bigint DEFAULT NULL,
  `point` text,
  `payment_detail` text,
  `payment_id` text,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaction_detail`
--

INSERT INTO `transaction_detail` (`tr_id`, `user_id`, `amount`, `point`, `payment_detail`, `payment_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(12, '8', 10, '500', '{\"checkout_logo\":\"https://dashboard-activation.s3.amazonaws.com/org_100000razorpay/checkout_logo/phpnHMpJe\",\"org_logo\":\"\",\"org_name\":\"Razorpay Software Private Ltd\",\"razorpay_payment_id\":\"pay_GiKh4r0WYgC0my\"}', 'pay_GiKh4r0WYgC0my', NULL, NULL, '2021-03-03 21:40:31', '2021-03-03 21:40:31'),
(13, '8', 10, '500', '{\"checkout_logo\":\"https://dashboard-activation.s3.amazonaws.com/org_100000razorpay/checkout_logo/phpnHMpJe\",\"org_logo\":\"\",\"org_name\":\"Razorpay Software Private Ltd\",\"razorpay_payment_id\":\"pay_GiKjc6FM6BKS8w\"}', 'pay_GiKjc6FM6BKS8w', NULL, NULL, '2021-03-03 21:43:01', '2021-03-03 21:43:01'),
(14, '8', 20, '1000', '{\"checkout_logo\":\"https://dashboard-activation.s3.amazonaws.com/org_100000razorpay/checkout_logo/phpnHMpJe\",\"org_logo\":\"\",\"org_name\":\"Razorpay Software Private Ltd\",\"razorpay_payment_id\":\"pay_GiKoLH4Z3FNAB7\"}', 'pay_GiKoLH4Z3FNAB7', NULL, NULL, '2021-03-03 21:47:25', '2021-03-03 21:47:25'),
(15, '8', 20, '1000', '{\"checkout_logo\":\"https://dashboard-activation.s3.amazonaws.com/org_100000razorpay/checkout_logo/phpnHMpJe\",\"org_logo\":\"\",\"org_name\":\"Razorpay Software Private Ltd\",\"razorpay_payment_id\":\"pay_GiTnCRGSr6Kkdn\"}', 'pay_GiTnCRGSr6Kkdn', NULL, NULL, '2021-03-04 06:34:36', '2021-03-04 06:34:36'),
(16, '13', 10, '500', '{\"checkout_logo\":\"https://dashboard-activation.s3.amazonaws.com/org_100000razorpay/checkout_logo/phpnHMpJe\",\"org_name\":\"Razorpay Software Private Ltd\",\"org_logo\":\"\",\"razorpay_payment_id\":\"pay_GidjzmrbbGpfp4\"}', 'pay_GidjzmrbbGpfp4', NULL, NULL, '2021-03-04 16:18:28', '2021-03-04 16:18:28'),
(17, '8', 10, '500', '{\"checkout_logo\":\"https://dashboard-activation.s3.amazonaws.com/org_100000razorpay/checkout_logo/phpnHMpJe\",\"org_logo\":\"\",\"org_name\":\"Razorpay Software Private Ltd\",\"razorpay_payment_id\":\"pay_Gieh7FlbO4fD1C\"}', 'pay_Gieh7FlbO4fD1C', NULL, NULL, '2021-03-04 17:14:28', '2021-03-04 17:14:28'),
(18, '8', 40, '3000', '{\"checkout_logo\":\"https://dashboard-activation.s3.amazonaws.com/org_100000razorpay/checkout_logo/phpnHMpJe\",\"org_logo\":\"\",\"org_name\":\"Razorpay Software Private Ltd\",\"razorpay_payment_id\":\"pay_GieiQTYymRniaB\"}', 'pay_GieiQTYymRniaB', NULL, NULL, '2021-03-04 17:15:42', '2021-03-04 17:15:42'),
(19, '8', 40, '3000', '{\"checkout_logo\":\"https://dashboard-activation.s3.amazonaws.com/org_100000razorpay/checkout_logo/phpnHMpJe\",\"org_logo\":\"\",\"org_name\":\"Razorpay Software Private Ltd\",\"razorpay_payment_id\":\"pay_GiejQSPDvtAAH2\"}', 'pay_GiejQSPDvtAAH2', NULL, NULL, '2021-03-04 17:16:39', '2021-03-04 17:16:39'),
(20, '8', 30, '2000', '{\"checkout_logo\":\"https://dashboard-activation.s3.amazonaws.com/org_100000razorpay/checkout_logo/phpnHMpJe\",\"org_logo\":\"\",\"org_name\":\"Razorpay Software Private Ltd\",\"razorpay_payment_id\":\"pay_Giel8IWZVbBXao\"}', 'pay_Giel8IWZVbBXao', NULL, NULL, '2021-03-04 17:18:16', '2021-03-04 17:18:16'),
(21, '13', 10, '500', '{\"checkout_logo\":\"https://dashboard-activation.s3.amazonaws.com/org_100000razorpay/checkout_logo/phpnHMpJe\",\"org_name\":\"Razorpay Software Private Ltd\",\"org_logo\":\"\",\"razorpay_payment_id\":\"pay_Gif8tDVn3AdG0m\"}', 'pay_Gif8tDVn3AdG0m', NULL, NULL, '2021-03-04 17:40:44', '2021-03-04 17:40:44'),
(22, '16', 40, '3000', '{\"checkout_logo\":\"https://dashboard-activation.s3.amazonaws.com/org_100000razorpay/checkout_logo/phpnHMpJe\",\"org_name\":\"Razorpay Software Private Ltd\",\"org_logo\":\"\",\"razorpay_payment_id\":\"pay_GifUHnr1cZY8Sd\"}', 'pay_GifUHnr1cZY8Sd', NULL, NULL, '2021-03-04 18:01:01', '2021-03-04 18:01:01'),
(23, '13', 20, '1000', '{\"checkout_logo\":\"https://dashboard-activation.s3.amazonaws.com/org_100000razorpay/checkout_logo/phpnHMpJe\",\"org_name\":\"Razorpay Software Private Ltd\",\"org_logo\":\"\",\"razorpay_payment_id\":\"pay_Giri7b52t5CtAr\"}', 'pay_Giri7b52t5CtAr', NULL, NULL, '2021-03-05 05:58:24', '2021-03-05 05:58:24'),
(24, '13', 10, '500', '{\"checkout_logo\":\"https://dashboard-activation.s3.amazonaws.com/org_100000razorpay/checkout_logo/phpnHMpJe\",\"org_name\":\"Razorpay Software Private Ltd\",\"org_logo\":\"\",\"razorpay_payment_id\":\"pay_GjbanZwAdxDGXU\"}', 'pay_GjbanZwAdxDGXU', NULL, NULL, '2021-03-07 02:51:22', '2021-03-07 02:51:22');

-- --------------------------------------------------------

--
-- Table structure for table `user_level_score`
--

CREATE TABLE `user_level_score` (
  `user_ls_id` int UNSIGNED NOT NULL,
  `level_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `level_score` int DEFAULT NULL,
  `level_out_of` int DEFAULT NULL,
  `score_is_active` enum('0','1') DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_level_score`
--

INSERT INTO `user_level_score` (`user_ls_id`, `level_id`, `user_id`, `level_score`, `level_out_of`, `score_is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 1, 1, '0', NULL, NULL, '2021-02-23 13:45:40', '2021-02-23 13:45:40'),
(2, 1, 4, 1, 1, '0', NULL, NULL, '2021-02-23 13:47:04', '2021-02-23 13:47:04'),
(3, 1, 4, 1, 1, '0', NULL, NULL, '2021-02-23 13:47:21', '2021-02-23 13:47:21'),
(4, 1, 4, 1, 1, '0', NULL, NULL, '2021-02-23 13:47:30', '2021-02-23 13:47:30'),
(5, 1, 4, 1, 1, '0', NULL, NULL, '2021-02-23 13:47:40', '2021-02-23 13:47:40'),
(6, 1, 4, 0, 1, '0', NULL, NULL, '2021-02-23 13:48:58', '2021-02-23 13:48:58'),
(7, 1, 4, 1, 1, '0', NULL, NULL, '2021-02-23 13:51:20', '2021-02-23 13:51:20'),
(8, 1, 4, 0, 1, '0', NULL, NULL, '2021-02-23 13:51:24', '2021-02-23 13:51:24'),
(9, 1, 4, 0, 1, '0', NULL, NULL, '2021-02-23 13:51:28', '2021-02-23 13:51:28'),
(10, 1, 4, 1, 1, '0', NULL, NULL, '2021-02-23 13:52:07', '2021-02-23 13:52:07'),
(11, 1, 4, 1, 1, '0', NULL, NULL, '2021-02-23 15:04:25', '2021-02-23 15:04:25'),
(12, 1, 5, 0, 1, '0', NULL, NULL, '2021-02-23 17:03:02', '2021-02-23 17:03:02'),
(13, 1, 5, 1, 1, '0', NULL, NULL, '2021-02-23 17:03:08', '2021-02-23 17:03:08'),
(14, 1, 5, 0, 1, '0', NULL, NULL, '2021-02-23 17:03:14', '2021-02-23 17:03:14'),
(15, 1, 5, 0, 1, '0', NULL, NULL, '2021-02-23 17:03:17', '2021-02-23 17:03:17'),
(16, 1, 5, 1, 1, '0', NULL, NULL, '2021-02-23 17:03:23', '2021-02-23 17:03:23'),
(17, 1, 5, 0, 1, '0', NULL, NULL, '2021-02-23 17:03:33', '2021-02-23 17:03:33'),
(18, 1, 5, 1, 1, '0', NULL, NULL, '2021-02-23 17:03:39', '2021-02-23 17:03:39'),
(19, 1, 5, 0, 1, '0', NULL, NULL, '2021-02-23 17:04:00', '2021-02-23 17:04:00'),
(20, 1, 5, 1, 1, '0', NULL, NULL, '2021-02-23 17:04:25', '2021-02-23 17:04:25'),
(21, 1, 5, 1, 1, '0', NULL, NULL, '2021-02-23 17:05:46', '2021-02-23 17:05:46'),
(22, 1, 5, 1, 1, '0', NULL, NULL, '2021-02-23 17:16:21', '2021-02-23 17:16:21'),
(23, 1, 5, 0, 1, '0', NULL, NULL, '2021-02-23 17:16:24', '2021-02-23 17:16:24'),
(24, 1, 5, 0, 1, '0', NULL, NULL, '2021-02-23 17:16:34', '2021-02-23 17:16:34'),
(25, 1, 4, 1, 1, '0', NULL, NULL, '2021-02-23 17:26:59', '2021-02-23 17:26:59'),
(26, 1, 4, 0, 1, '0', NULL, NULL, '2021-02-23 17:27:17', '2021-02-23 17:27:17'),
(27, 1, 5, 1, 1, '0', NULL, NULL, '2021-02-23 17:35:34', '2021-02-23 17:35:34'),
(28, 1, 4, 1, 1, '0', NULL, NULL, '2021-02-23 20:18:30', '2021-02-23 20:18:30'),
(29, 1, 4, 1, 1, '0', NULL, NULL, '2021-02-23 20:18:38', '2021-02-23 20:18:38'),
(30, 1, 4, 1, 1, '0', NULL, NULL, '2021-02-23 20:18:46', '2021-02-23 20:18:46'),
(31, 1, 4, 1, 1, '0', NULL, NULL, '2021-02-23 20:19:24', '2021-02-23 20:19:24'),
(32, 1, 7, 0, 1, '0', NULL, NULL, '2021-02-24 05:49:20', '2021-02-24 05:49:20'),
(33, 1, 4, 1, 1, '0', NULL, NULL, '2021-02-24 17:25:04', '2021-02-24 17:25:04'),
(34, 1, 4, 1, 1, '0', NULL, NULL, '2021-02-24 17:25:28', '2021-02-24 17:25:28'),
(35, 1, 4, 1, 1, '0', NULL, NULL, '2021-02-24 17:27:59', '2021-02-24 17:27:59'),
(36, 1, 4, 0, 1, '0', NULL, NULL, '2021-02-24 17:32:45', '2021-02-24 17:32:45'),
(37, 1, 4, 1, 1, '0', NULL, NULL, '2021-02-24 17:35:46', '2021-02-24 17:35:46'),
(38, 1, 4, 1, 1, '0', NULL, NULL, '2021-02-24 17:35:52', '2021-02-24 17:35:52'),
(39, 1, 4, 1, 1, '0', NULL, NULL, '2021-02-24 17:57:14', '2021-02-24 17:57:14'),
(40, 1, 4, 1, 1, '0', NULL, NULL, '2021-02-24 17:57:33', '2021-02-24 17:57:33'),
(41, 1, 4, 1, 1, '0', NULL, NULL, '2021-02-24 17:57:46', '2021-02-24 17:57:46'),
(42, 1, 4, 1, 1, '0', NULL, NULL, '2021-02-24 18:52:49', '2021-02-24 18:52:49'),
(43, 1, 4, 1, 1, '0', NULL, NULL, '2021-02-24 19:24:05', '2021-02-24 19:24:05'),
(44, 1, 4, 1, 1, '0', NULL, NULL, '2021-02-24 19:24:11', '2021-02-24 19:24:11'),
(45, 1, 4, 1, 1, '0', NULL, NULL, '2021-02-25 05:43:49', '2021-02-25 05:43:49'),
(46, 1, 4, 1, 1, '0', NULL, NULL, '2021-02-25 05:43:56', '2021-02-25 05:43:56'),
(47, 1, 4, 1, 1, '0', NULL, NULL, '2021-02-25 05:44:02', '2021-02-25 05:44:02'),
(48, 1, 4, 1, 1, '0', NULL, NULL, '2021-02-25 05:44:07', '2021-02-25 05:44:07'),
(49, 1, 7, 0, 1, '0', NULL, NULL, '2021-02-25 05:59:42', '2021-02-25 05:59:42'),
(50, 1, 9, 1, 1, '0', NULL, NULL, '2021-02-25 06:06:32', '2021-02-25 06:06:32'),
(51, 1, 9, 0, 1, '0', NULL, NULL, '2021-02-25 06:06:39', '2021-02-25 06:06:39'),
(52, 1, 9, 1, 1, '0', NULL, NULL, '2021-02-25 06:06:46', '2021-02-25 06:06:46'),
(53, 1, 9, 1, 1, '0', NULL, NULL, '2021-02-25 06:06:55', '2021-02-25 06:06:55'),
(54, 1, 9, 1, 1, '0', NULL, NULL, '2021-02-25 06:07:02', '2021-02-25 06:07:02'),
(55, 1, 11, 1, 1, '0', NULL, NULL, '2021-02-25 09:51:31', '2021-02-25 09:51:31'),
(56, 1, 11, 1, 1, '0', NULL, NULL, '2021-02-25 09:51:42', '2021-02-25 09:51:42'),
(57, 1, 11, 1, 1, '0', NULL, NULL, '2021-02-25 09:51:49', '2021-02-25 09:51:49'),
(58, 1, 11, 0, 1, '0', NULL, NULL, '2021-02-25 09:51:56', '2021-02-25 09:51:56'),
(59, 1, 11, 1, 1, '0', NULL, NULL, '2021-02-25 09:52:03', '2021-02-25 09:52:03'),
(60, 1, 4, 0, 1, '0', NULL, NULL, '2021-02-25 10:48:51', '2021-02-25 10:48:51'),
(61, 1, 10, 1, 1, '0', NULL, NULL, '2021-02-25 10:53:35', '2021-02-25 10:53:35'),
(62, 1, 10, 0, 1, '0', NULL, NULL, '2021-02-25 10:53:40', '2021-02-25 10:53:40'),
(63, 1, 10, 1, 1, '0', NULL, NULL, '2021-02-25 10:53:49', '2021-02-25 10:53:49'),
(64, 1, 4, 1, 1, '0', NULL, NULL, '2021-02-25 11:08:10', '2021-02-25 11:08:10'),
(65, 1, 4, 1, 1, '0', NULL, NULL, '2021-02-25 11:08:17', '2021-02-25 11:08:17'),
(66, 1, 4, 2, 2, '0', NULL, NULL, '2021-02-25 11:11:48', '2021-02-25 11:11:48'),
(67, 1, 11, 0, 2, '0', NULL, NULL, '2021-02-25 15:59:46', '2021-02-25 15:59:46'),
(68, 1, 6, 0, 15, '0', NULL, NULL, '2021-02-25 19:25:33', '2021-02-25 19:25:33'),
(69, 1, 6, 5, 15, '0', NULL, NULL, '2021-02-25 19:27:45', '2021-02-25 19:27:45'),
(70, 1, 6, 0, 15, '0', NULL, NULL, '2021-02-25 19:34:28', '2021-02-25 19:34:28'),
(71, 1, 6, 3, 15, '0', NULL, NULL, '2021-02-25 19:37:18', '2021-02-25 19:37:18'),
(72, 1, 6, 2, 15, '0', NULL, NULL, '2021-02-25 19:45:31', '2021-02-25 19:45:31'),
(73, 1, 6, 1, 15, '0', NULL, NULL, '2021-02-25 19:53:08', '2021-02-25 19:53:08'),
(74, 1, 6, 1, 15, '0', NULL, NULL, '2021-02-25 19:53:08', '2021-02-25 19:53:08'),
(75, 1, 6, 1, 15, '0', NULL, NULL, '2021-02-25 19:53:08', '2021-02-25 19:53:08'),
(76, 1, 6, 7, 15, '0', NULL, NULL, '2021-02-25 19:55:57', '2021-02-25 19:55:57'),
(77, 1, 13, 0, 15, '0', NULL, NULL, '2021-02-25 20:36:41', '2021-02-25 20:36:41'),
(78, 1, 13, 1, 15, '0', NULL, NULL, '2021-02-25 21:14:18', '2021-02-25 21:14:18'),
(79, 1, 13, 5, 15, '0', NULL, NULL, '2021-02-25 22:01:18', '2021-02-25 22:01:18'),
(80, 1, 13, 7, 15, '0', NULL, NULL, '2021-02-25 22:20:39', '2021-02-25 22:20:39'),
(81, 1, 13, 11, 15, '0', NULL, NULL, '2021-02-25 22:22:28', '2021-02-25 22:22:28'),
(82, 1, 9, 11, 15, '1', NULL, NULL, '2021-02-26 09:20:07', '2021-02-26 09:20:07'),
(83, 2, 9, 7, 15, '0', NULL, NULL, '2021-02-26 09:22:04', '2021-02-26 09:22:04'),
(84, 1, 9, 11, 15, '0', NULL, NULL, '2021-02-26 09:22:59', '2021-02-26 09:22:59'),
(85, 2, 9, 12, 15, '1', NULL, NULL, '2021-02-26 09:23:57', '2021-02-26 09:23:57'),
(86, 1, 12, 3, 15, '0', NULL, NULL, '2021-02-26 14:09:17', '2021-02-26 14:09:17'),
(87, 1, 12, 3, 15, '0', NULL, NULL, '2021-02-26 14:09:17', '2021-02-26 14:09:17'),
(88, 1, 11, 3, 15, '0', NULL, NULL, '2021-02-27 16:04:40', '2021-02-27 16:04:40'),
(89, 1, 5, 11, 15, '1', NULL, NULL, '2021-02-28 07:00:59', '2021-02-28 07:00:59'),
(90, 1, 14, 11, 15, '0', NULL, NULL, '2021-03-03 04:13:55', '2021-03-03 04:13:55'),
(91, 2, 14, 9, 15, '0', NULL, NULL, '2021-03-03 04:15:09', '2021-03-03 04:15:09'),
(92, 2, 14, 11, 15, '0', NULL, NULL, '2021-03-03 04:16:01', '2021-03-03 04:16:01'),
(93, 2, 14, 11, 15, '0', NULL, NULL, '2021-03-03 04:22:28', '2021-03-03 04:22:28'),
(94, 2, 14, 11, 15, '0', NULL, NULL, '2021-03-03 04:23:11', '2021-03-03 04:23:11'),
(95, 2, 14, 11, 15, '0', NULL, NULL, '2021-03-03 04:24:13', '2021-03-03 04:24:13'),
(96, 2, 14, 11, 15, '0', NULL, NULL, '2021-03-03 04:25:02', '2021-03-03 04:25:02'),
(97, 2, 14, 14, 15, '0', NULL, NULL, '2021-03-03 04:25:54', '2021-03-03 04:25:54'),
(98, 2, 14, 13, 15, '0', NULL, NULL, '2021-03-03 04:26:35', '2021-03-03 04:26:35'),
(99, 2, 14, 14, 15, '0', NULL, NULL, '2021-03-03 04:27:05', '2021-03-03 04:27:05'),
(100, 2, 14, 15, 15, '1', NULL, NULL, '2021-03-03 04:27:40', '2021-03-03 04:27:40'),
(101, 1, 13, 8, 15, '0', NULL, NULL, '2021-03-04 16:47:04', '2021-03-04 16:47:04'),
(102, 1, 15, 5, 15, '0', NULL, NULL, '2021-03-04 17:45:47', '2021-03-04 17:45:47'),
(103, 1, 15, 8, 15, '0', NULL, NULL, '2021-03-04 17:47:49', '2021-03-04 17:47:49'),
(104, 1, 16, 8, 15, '0', NULL, NULL, '2021-03-04 17:52:25', '2021-03-04 17:52:25'),
(105, 1, 16, 8, 15, '0', NULL, NULL, '2021-03-04 17:53:28', '2021-03-04 17:53:28'),
(106, 1, 16, 9, 15, '0', NULL, NULL, '2021-03-04 17:54:41', '2021-03-04 17:54:41'),
(107, 1, 16, 13, 15, '0', NULL, NULL, '2021-03-04 17:55:51', '2021-03-04 17:55:51'),
(108, 2, 16, 14, 15, '0', NULL, NULL, '2021-03-04 17:57:24', '2021-03-04 17:57:24'),
(109, 2, 16, 15, 15, '1', NULL, NULL, '2021-03-04 17:58:50', '2021-03-04 17:58:50'),
(110, 1, 13, 15, 15, '1', NULL, NULL, '2021-03-04 18:25:17', '2021-03-04 18:25:17'),
(111, 1, 5, 11, 15, '0', NULL, NULL, '2021-03-05 03:12:09', '2021-03-05 03:12:09'),
(112, 1, 14, 15, 15, '0', NULL, NULL, '2021-03-05 13:23:48', '2021-03-05 13:23:48'),
(113, 1, 14, 16, 15, '1', NULL, NULL, '2021-03-05 13:23:48', '2021-03-05 13:23:48'),
(114, 2, 14, 15, 15, '0', NULL, NULL, '2021-03-05 13:24:30', '2021-03-05 13:24:30'),
(115, 1, 16, 14, 15, '1', NULL, NULL, '2021-03-06 11:26:03', '2021-03-06 11:26:03'),
(116, 2, 16, 12, 15, '0', NULL, NULL, '2021-03-06 11:28:05', '2021-03-06 11:28:05'),
(117, 1, 15, 6, 15, '0', NULL, NULL, '2021-03-06 12:01:10', '2021-03-06 12:01:10'),
(118, 1, 15, 9, 15, '0', NULL, NULL, '2021-03-06 12:02:15', '2021-03-06 12:02:15'),
(119, 1, 15, 14, 15, '0', NULL, NULL, '2021-03-06 12:02:56', '2021-03-06 12:02:56'),
(120, 2, 15, 7, 15, '0', NULL, NULL, '2021-03-06 12:04:48', '2021-03-06 12:04:48'),
(121, 1, 15, 15, 15, '1', NULL, NULL, '2021-03-06 12:07:24', '2021-03-06 12:07:24'),
(122, 2, 15, 15, 15, '1', NULL, NULL, '2021-03-06 12:08:57', '2021-03-06 12:08:57'),
(123, 1, 8, 0, 15, '0', NULL, NULL, '2021-03-06 17:30:58', '2021-03-06 17:30:58'),
(124, 2, 13, 5, 15, '0', NULL, NULL, '2021-03-07 02:53:03', '2021-03-07 02:53:03'),
(125, 2, 13, 5, 15, '0', NULL, NULL, '2021-03-07 02:53:04', '2021-03-07 02:53:04'),
(126, 1, 13, 4, 15, '0', NULL, NULL, '2021-03-07 02:53:12', '2021-03-07 02:53:12'),
(127, 1, 13, 4, 15, '0', NULL, NULL, '2021-03-07 02:53:12', '2021-03-07 02:53:12'),
(128, 2, 13, 5, 15, '0', NULL, NULL, '2021-03-07 02:53:22', '2021-03-07 02:53:22'),
(129, 2, 13, 6, 15, '0', NULL, NULL, '2021-03-07 02:53:22', '2021-03-07 02:53:22'),
(130, 2, 13, 4, 15, '0', NULL, NULL, '2021-03-07 02:53:32', '2021-03-07 02:53:32'),
(131, 2, 13, 5, 15, '0', NULL, NULL, '2021-03-07 02:53:32', '2021-03-07 02:53:32'),
(132, 2, 13, 14, 15, '1', NULL, NULL, '2021-03-07 13:52:09', '2021-03-07 13:52:09'),
(133, 3, 13, 1, 1, '0', NULL, NULL, '2021-03-07 13:52:36', '2021-03-07 13:52:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `knex_migrations`
--
ALTER TABLE `knex_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `knex_migrations_lock`
--
ALTER TABLE `knex_migrations_lock`
  ADD PRIMARY KEY (`index`);

--
-- Indexes for table `m_game`
--
ALTER TABLE `m_game`
  ADD PRIMARY KEY (`game_id`);

--
-- Indexes for table `m_level`
--
ALTER TABLE `m_level`
  ADD PRIMARY KEY (`level_id`);

--
-- Indexes for table `m_level_link_question`
--
ALTER TABLE `m_level_link_question`
  ADD PRIMARY KEY (`level_q_id`);

--
-- Indexes for table `m_questions`
--
ALTER TABLE `m_questions`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `m_user`
--
ALTER TABLE `m_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD PRIMARY KEY (`tr_id`);

--
-- Indexes for table `user_level_score`
--
ALTER TABLE `user_level_score`
  ADD PRIMARY KEY (`user_ls_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `knex_migrations`
--
ALTER TABLE `knex_migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `knex_migrations_lock`
--
ALTER TABLE `knex_migrations_lock`
  MODIFY `index` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `m_game`
--
ALTER TABLE `m_game`
  MODIFY `game_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `m_level`
--
ALTER TABLE `m_level`
  MODIFY `level_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `m_level_link_question`
--
ALTER TABLE `m_level_link_question`
  MODIFY `level_q_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `m_questions`
--
ALTER TABLE `m_questions`
  MODIFY `question_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `m_user`
--
ALTER TABLE `m_user`
  MODIFY `user_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `setting_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  MODIFY `tr_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user_level_score`
--
ALTER TABLE `user_level_score`
  MODIFY `user_ls_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
