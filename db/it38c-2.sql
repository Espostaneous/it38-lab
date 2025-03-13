-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2025 at 08:27 AM
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
-- Database: `it38c-2`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_logs`
--

CREATE TABLE `login_logs` (
  `login_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `login_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_logs`
--

INSERT INTO `login_logs` (`login_id`, `user_id`, `login_time`) VALUES
(1, 1, '2025-02-13 14:58:18'),
(2, 2, '2025-02-13 14:59:00'),
(3, 1, '2025-02-13 15:00:29'),
(4, 1, '2025-03-13 14:52:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `attendance_id` varchar(50) NOT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`attendance_id`, `user_id`, `attendance_date`, `created_at`) VALUES
('attendance_001', 'user_1001', '2025-03-01', '2025-03-13 07:25:18'),
('attendance_002', 'user_1002', '2025-03-01', '2025-03-13 07:25:18'),
('attendance_003', 'user_1003', '2025-03-01', '2025-03-13 07:25:18'),
('attendance_004', 'user_1001', '2025-03-02', '2025-03-13 07:25:18'),
('attendance_005', 'user_1002', '2025-03-02', '2025-03-13 07:25:18'),
('attendance_006', 'user_1004', '2025-03-03', '2025-03-13 07:25:18'),
('attendance_007', 'user_1005', '2025-03-03', '2025-03-13 07:25:18'),
('attendance_008', 'user_1003', '2025-03-04', '2025-03-13 07:25:18'),
('attendance_009', 'user_1001', '2025-03-04', '2025-03-13 07:25:18'),
('attendance_010', 'user_1005', '2025-03-05', '2025-03-13 07:25:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` enum('admin','user') NOT NULL DEFAULT 'user',
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `user_type`, `last_login`, `created_at`) VALUES
(1, 'admin', '$2y$10$LARyJPyQdXHFC9Bnkwob5emYh8yk8szyHJkVTqmxoAblSOR4tkbcK', 'admin', '2025-03-13 14:52:36', '2025-02-13 06:58:10'),
(2, 'user', '$2y$10$FsYYraSFCv3bT05fxvl8LupnL6BwHYl/NdISwIfzSY5uouYGmshFy', 'user', '2025-02-13 14:59:00', '2025-02-13 06:58:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
