-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jan 2025 pada 12.27
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sumbersari_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` int(11) NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `operation` enum('INSERT','UPDATE','DELETE') NOT NULL,
  `record_id` int(11) NOT NULL,
  `changes` text DEFAULT NULL,
  `performed_by` varchar(255) DEFAULT NULL,
  `performed_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `table_name`, `operation`, `record_id`, `changes`, `performed_by`, `performed_at`) VALUES
(1, 'discounts', 'UPDATE', 14, 'Before: {\"customer_id\": 9, \"product_id\": 21, \"discount_price\": 213312.00, \"discount_date\": \"2024-12-17 14:18:10\"} | After: {\"customer_id\": 9, \"product_id\": 21, \"discount_price\": 2134.00, \"discount_date\": \"2024-12-17 14:18:10\"}', 'root@localhost', '2024-12-23 22:24:05'),
(2, 'discounts', 'DELETE', 14, 'Deleted: {\"customer_id\": 9, \"product_id\": 21, \"discount_price\": 2134.00, \"discount_date\": \"2024-12-17 14:18:10\"}', 'root@localhost', '2024-12-23 22:24:09'),
(3, 'customers', 'UPDATE', 9, 'Before: {\"customer_name\": \"saddddddddddddddddddddddddddddddddddddd\", \"phone_number\": \"08213167452\"} | After: {\"customer_name\": \"asd\", \"phone_number\": \"08213167452\"}', 'root@localhost', '2024-12-23 22:26:48'),
(4, 'customers', 'INSERT', 102, 'Inserted: {\"customer_name\": \"ferdynand\", \"phone_number\": \"08123456\"}', 'root@localhost', '2024-12-23 22:50:13'),
(5, 'customers', 'INSERT', 102, 'New Record:\n{\"customer_name\": \"ferdynand\", \"phone_number\": \"08123456\"}', 'root@localhost', '2024-12-23 22:50:13'),
(6, 'customers', 'INSERT', 103, 'New Record:\n{\"customer_name\": \"saverine\", \"phone_number\": \"08123456\"}', 'root@localhost', '2024-12-23 23:08:56'),
(7, 'customers', 'UPDATE', 9, 'Before:\n{\n    \"customer_name\": \"asd\",\n    \"phone_number\": \"08213167452\"\n}\nAfter:\n{\n    \"customer_name\": \"love\",\n    \"phone_number\": \"08213167452\"\n}', 'root@localhost', '2024-12-23 23:15:07'),
(8, 'discounts', 'UPDATE', 17, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 9,\n    \"discount_price\": 123124.00,\n    \"discount_date\": \"2024-12-17 14:25:26\",\n    \"last_updated\": \"2024-12-23 22:07:41\",\n    \"last_edited_by\": \"Nina\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 9,\n    \"discount_price\": 123124.00,\n    \"discount_date\": \"2024-12-17 14:25:26\",\n    \"last_updated\": \"2024-12-24 05:46:21\",\n    \"last_edited_by\": \"Nina\"\n}', 'root@localhost', '2024-12-24 05:46:21'),
(9, 'customers', 'UPDATE', 9, 'Before:\n{\n    \"customer_name\": \"love\",\n    \"phone_number\": \"08213167452\"\n}\nAfter:\n{\n    \"customer_name\": \"asdddddddddddddddd\",\n    \"phone_number\": \"08213167452\"\n}', 'root@localhost', '2024-12-24 05:53:40'),
(10, 'customers', 'DELETE', 10, 'Deleted Record:\n{\"customer_name\": \"asdddddddddddddddd\", \"phone_number\": \"08213167452\"}', 'root@localhost', '2024-12-24 10:47:57'),
(11, 'discounts', 'UPDATE', 21, 'Before:\n{\n    \"customer_id\": 20,\n    \"product_id\": 9,\n    \"discount_price\": 7777.00,\n    \"discount_date\": \"2024-12-17 14:29:44\",\n    \"last_updated\": \"2024-12-21 09:46:26\",\n    \"last_edited_by\": \"ferdynand\"\n}\nAfter:\n{\n    \"customer_id\": 20,\n    \"product_id\": 9,\n    \"discount_price\": 7777.00,\n    \"discount_date\": \"2024-12-17 14:29:44\",\n    \"last_updated\": \"2024-12-24 10:50:04\",\n    \"last_edited_by\": \"Nina\"\n}', 'root@localhost', '2024-12-24 10:50:04'),
(12, 'discounts', 'INSERT', 37, 'New Record:\n{\"customer_id\": 12, \"product_id\": 21, \"discount_price\": 124.00, \"discount_date\": \"2024-12-25 10:28:40\", \"last_updated\": \"2024-12-25 10:28:40\", \"last_edited_by\": null}', 'root@localhost', '2024-12-25 10:28:40'),
(13, 'discounts', 'INSERT', 38, 'New Record:\n{\"customer_id\": 83, \"product_id\": 56, \"discount_price\": 1234.00, \"discount_date\": \"2024-12-25 20:21:29\", \"last_updated\": \"2024-12-25 20:21:29\", \"last_edited_by\": null}', 'root@localhost', '2024-12-25 20:21:29'),
(14, 'discounts', 'DELETE', 16, 'Deleted Record:\n{\"customer_id\": 20, \"product_id\": 10, \"discount_price\": 123124.00, \"discount_date\": \"2024-12-17 14:20:39\", \"last_updated\": \"2024-12-22 21:59:16\", \"last_edited_by\": \"Herry\"}', 'root@localhost', '2024-12-27 19:39:04'),
(15, 'discounts', 'UPDATE', 17, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 9,\n    \"discount_price\": 123124.00,\n    \"discount_date\": \"2024-12-17 14:25:26\",\n    \"last_updated\": \"2024-12-24 05:46:21\",\n    \"last_edited_by\": \"Nina\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 9,\n    \"discount_price\": 214.00,\n    \"discount_date\": \"2024-12-17 14:25:26\",\n    \"last_updated\": \"2024-12-27 19:39:08\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 19:39:08'),
(16, 'discounts', 'INSERT', 39, 'New Record:\n{\"customer_id\": 9, \"product_id\": 13, \"discount_price\": 2134.00, \"discount_date\": \"2024-12-27 19:41:42\", \"last_updated\": \"2024-12-27 19:41:42\", \"last_edited_by\": null}', 'root@localhost', '2024-12-27 19:41:42'),
(17, 'discounts', 'INSERT', 40, 'New Record:\n{\"customer_id\": 83, \"product_id\": 11, \"discount_price\": 213.00, \"discount_date\": \"2024-12-27 19:57:46\", \"last_updated\": \"2024-12-27 19:57:46\", \"last_edited_by\": null}', 'root@localhost', '2024-12-27 19:57:46'),
(18, 'discounts', 'INSERT', 41, 'New Record:\n{\"customer_id\": 20, \"product_id\": 68, \"discount_price\": 213.00, \"discount_date\": \"2024-12-27 20:01:38\", \"last_updated\": \"2024-12-27 20:01:38\", \"last_edited_by\": null}', 'root@localhost', '2024-12-27 20:01:38'),
(19, 'discounts', 'INSERT', 42, 'New Record:\n{\"customer_id\": 90, \"product_id\": 68, \"discount_price\": 1243.00, \"discount_date\": \"2024-12-27 20:04:09\", \"last_updated\": \"2024-12-27 20:04:09\", \"last_edited_by\": null}', 'root@localhost', '2024-12-27 20:04:09'),
(20, 'discounts', 'INSERT', 43, 'New Record:\n{\"customer_id\": 83, \"product_id\": 9, \"discount_price\": 213.00, \"discount_date\": \"2024-12-27 20:12:13\", \"last_updated\": \"2024-12-27 20:12:13\", \"last_edited_by\": null}', 'root@localhost', '2024-12-27 20:12:13'),
(21, 'discounts', 'UPDATE', 43, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:12:13\",\n    \"last_updated\": \"2024-12-27 20:12:13\",\n    \"last_edited_by\": null\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 21300123.00,\n    \"discount_date\": \"2024-12-27 20:12:13\",\n    \"last_updated\": \"2024-12-27 20:17:02\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:17:02'),
(22, 'discounts', 'INSERT', 44, 'New Record:\n{\"customer_id\": 83, \"product_id\": 9, \"discount_price\": 213.00, \"discount_date\": \"2024-12-27 20:17:39\", \"last_updated\": \"2024-12-27 20:17:39\", \"last_edited_by\": null}', 'root@localhost', '2024-12-27 20:17:39'),
(23, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:17:39\",\n    \"last_edited_by\": null\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:17:48\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:17:48'),
(24, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:17:48\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:28:22\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:28:22'),
(25, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:28:22\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 21300213.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:33:11\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:33:11'),
(26, 'discounts', 'UPDATE', 43, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 21300123.00,\n    \"discount_date\": \"2024-12-27 20:12:13\",\n    \"last_updated\": \"2024-12-27 20:17:02\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2024-12-27 20:12:13\",\n    \"last_updated\": \"2024-12-27 20:33:18\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:33:18'),
(27, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 21300213.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:33:11\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 21300213.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:36:22\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:36:22'),
(28, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 21300213.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:36:22\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 21300213.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:36:23\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:36:23'),
(29, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 21300213.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:36:23\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 21300213.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:36:44\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:36:44'),
(30, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 21300213.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:36:44\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 21300213.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:36:47\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:36:47'),
(31, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 21300213.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:36:47\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 99999999.99,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:38:14\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:38:14'),
(32, 'discounts', 'UPDATE', 43, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2024-12-27 20:12:13\",\n    \"last_updated\": \"2024-12-27 20:33:18\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2024-12-27 20:12:13\",\n    \"last_updated\": \"2024-12-27 20:38:21\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:38:21'),
(33, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 99999999.99,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:38:14\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 0.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:43:52\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:43:52'),
(34, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 0.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:43:52\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:43:56\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:43:56'),
(35, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:43:56\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:44:08\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:44:08'),
(36, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:44:08\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:44:27\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:44:27'),
(37, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:44:27\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:44:30\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:44:30'),
(38, 'discounts', 'INSERT', 45, 'New Record:\n{\"customer_id\": 83, \"product_id\": 11, \"discount_price\": 213.00, \"discount_date\": \"2024-12-27 20:45:03\", \"last_updated\": \"2024-12-27 20:45:03\", \"last_edited_by\": null}', 'root@localhost', '2024-12-27 20:45:03'),
(39, 'discounts', 'INSERT', 46, 'New Record:\n{\"customer_id\": 9, \"product_id\": 11, \"discount_price\": 24.00, \"discount_date\": \"2024-12-27 20:45:23\", \"last_updated\": \"2024-12-27 20:45:23\", \"last_edited_by\": null}', 'root@localhost', '2024-12-27 20:45:23'),
(40, 'discounts', 'UPDATE', 46, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 24.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:45:23\",\n    \"last_edited_by\": null\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 24.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:46:41\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:46:41'),
(41, 'discounts', 'UPDATE', 46, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 24.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:46:41\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 2400213.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:46:46\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:46:46'),
(42, 'discounts', 'UPDATE', 46, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 2400213.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:46:46\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 2400213.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:50:07\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:50:07'),
(43, 'discounts', 'UPDATE', 46, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 2400213.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:50:07\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 2400213.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:50:08\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:50:08'),
(44, 'discounts', 'UPDATE', 46, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 2400213.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:50:08\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:50:18\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:50:18'),
(45, 'discounts', 'UPDATE', 45, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:03\",\n    \"last_updated\": \"2024-12-27 20:45:03\",\n    \"last_edited_by\": null\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:03\",\n    \"last_updated\": \"2024-12-27 20:50:29\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:50:29'),
(46, 'discounts', 'UPDATE', 46, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:50:18\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:50:38\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:50:38'),
(47, 'discounts', 'UPDATE', 45, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:03\",\n    \"last_updated\": \"2024-12-27 20:50:29\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:03\",\n    \"last_updated\": \"2024-12-27 20:50:38\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:50:38'),
(48, 'discounts', 'UPDATE', 41, 'Before:\n{\n    \"customer_id\": 20,\n    \"product_id\": 68,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:01:38\",\n    \"last_updated\": \"2024-12-27 20:01:38\",\n    \"last_edited_by\": null\n}\nAfter:\n{\n    \"customer_id\": 20,\n    \"product_id\": 68,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:01:38\",\n    \"last_updated\": \"2024-12-27 20:50:43\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:50:43'),
(49, 'discounts', 'UPDATE', 46, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:50:38\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:50:51\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:50:51'),
(50, 'products', 'UPDATE', 9, 'Before:\n{\n    \"name\": \"assssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss\",\n    \"description\": \"\",\n    \"price\": 1222.00\n}\nAfter:\n{\n    \"name\": \"assssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss\",\n    \"description\": \"\",\n    \"price\": 1222.00\n}', 'root@localhost', '2024-12-27 20:51:06'),
(51, 'products', 'UPDATE', 9, 'Before:\n{\n    \"name\": \"assssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss\",\n    \"description\": \"\",\n    \"price\": 1222.00\n}\nAfter:\n{\n    \"name\": \"\",\n    \"description\": \"\",\n    \"price\": 1222.00\n}', 'root@localhost', '2024-12-27 20:51:12'),
(52, 'products', 'UPDATE', 9, 'Before:\n{\n    \"name\": \"\",\n    \"description\": \"\",\n    \"price\": 1222.00\n}\nAfter:\n{\n    \"name\": \"\",\n    \"description\": \"\",\n    \"price\": 0.00\n}', 'root@localhost', '2024-12-27 20:51:23'),
(53, 'products', 'UPDATE', 9, 'Before:\n{\n    \"name\": \"\",\n    \"description\": \"\",\n    \"price\": 0.00\n}\nAfter:\n{\n    \"name\": \"1213\",\n    \"description\": \"123\",\n    \"price\": 123.00\n}', 'root@localhost', '2024-12-27 20:51:31'),
(54, 'discounts', 'UPDATE', 46, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:50:51\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:52:08\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:52:08'),
(55, 'discounts', 'UPDATE', 46, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:52:08\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 99999999.99,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:52:11\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:52:11'),
(56, 'discounts', 'DELETE', 46, 'Deleted Record:\n{\"customer_id\": 9, \"product_id\": 11, \"discount_price\": 99999999.99, \"discount_date\": \"2024-12-27 20:45:23\", \"last_updated\": \"2024-12-27 20:52:11\", \"last_edited_by\": \"Herry\"}', 'root@localhost', '2024-12-27 20:52:22'),
(57, 'discounts', 'DELETE', 41, 'Deleted Record:\n{\"customer_id\": 20, \"product_id\": 68, \"discount_price\": 213.00, \"discount_date\": \"2024-12-27 20:01:38\", \"last_updated\": \"2024-12-27 20:50:43\", \"last_edited_by\": \"Herry\"}', 'root@localhost', '2024-12-27 20:52:25'),
(58, 'discounts', 'INSERT', 47, 'New Record:\n{\"customer_id\": 12, \"product_id\": 68, \"discount_price\": 21.00, \"discount_date\": \"2024-12-27 20:52:53\", \"last_updated\": \"2024-12-27 20:52:53\", \"last_edited_by\": null}', 'root@localhost', '2024-12-27 20:52:53'),
(59, 'discounts', 'UPDATE', 47, 'Before:\n{\n    \"customer_id\": 12,\n    \"product_id\": 68,\n    \"discount_price\": 21.00,\n    \"discount_date\": \"2024-12-27 20:52:53\",\n    \"last_updated\": \"2024-12-27 20:52:53\",\n    \"last_edited_by\": null\n}\nAfter:\n{\n    \"customer_id\": 12,\n    \"product_id\": 68,\n    \"discount_price\": 21.00,\n    \"discount_date\": \"2024-12-27 20:52:53\",\n    \"last_updated\": \"2024-12-28 06:31:37\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 06:31:37'),
(60, 'discounts', 'UPDATE', 47, 'Before:\n{\n    \"customer_id\": 12,\n    \"product_id\": 68,\n    \"discount_price\": 21.00,\n    \"discount_date\": \"2024-12-27 20:52:53\",\n    \"last_updated\": \"2024-12-28 06:31:37\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 12,\n    \"product_id\": 68,\n    \"discount_price\": 21001.00,\n    \"discount_date\": \"2024-12-27 20:52:53\",\n    \"last_updated\": \"2024-12-28 06:31:49\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 06:31:49'),
(61, 'discounts', 'UPDATE', 47, 'Before:\n{\n    \"customer_id\": 12,\n    \"product_id\": 68,\n    \"discount_price\": 21001.00,\n    \"discount_date\": \"2024-12-27 20:52:53\",\n    \"last_updated\": \"2024-12-28 06:31:49\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 12,\n    \"product_id\": 68,\n    \"discount_price\": 1.00,\n    \"discount_date\": \"2024-12-27 20:52:53\",\n    \"last_updated\": \"2024-12-28 06:38:15\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 06:38:15'),
(62, 'discounts', 'UPDATE', 47, 'Before:\n{\n    \"customer_id\": 12,\n    \"product_id\": 68,\n    \"discount_price\": 1.00,\n    \"discount_date\": \"2024-12-27 20:52:53\",\n    \"last_updated\": \"2024-12-28 06:38:15\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 12,\n    \"product_id\": 68,\n    \"discount_price\": 10021.00,\n    \"discount_date\": \"2024-12-27 20:52:53\",\n    \"last_updated\": \"2024-12-28 07:49:57\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:49:57'),
(63, 'discounts', 'DELETE', 47, 'Deleted Record:\n{\"customer_id\": 12, \"product_id\": 68, \"discount_price\": 10021.00, \"discount_date\": \"2024-12-27 20:52:53\", \"last_updated\": \"2024-12-28 07:49:57\", \"last_edited_by\": \"Herry\"}', 'root@localhost', '2024-12-28 07:50:00'),
(64, 'discounts', 'UPDATE', 45, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:03\",\n    \"last_updated\": \"2024-12-27 20:50:38\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:03\",\n    \"last_updated\": \"2024-12-28 07:50:11\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:50:11'),
(65, 'discounts', 'UPDATE', 45, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:03\",\n    \"last_updated\": \"2024-12-28 07:50:11\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:03\",\n    \"last_updated\": \"2024-12-28 07:50:15\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:50:15'),
(66, 'discounts', 'UPDATE', 45, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:03\",\n    \"last_updated\": \"2024-12-28 07:50:15\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:03\",\n    \"last_updated\": \"2024-12-28 07:50:19\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:50:19'),
(67, 'discounts', 'UPDATE', 39, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 13,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 19:41:42\",\n    \"last_updated\": \"2024-12-27 19:41:42\",\n    \"last_edited_by\": null\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 13,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 19:41:42\",\n    \"last_updated\": \"2024-12-28 07:50:36\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:50:36'),
(68, 'discounts', 'UPDATE', 45, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:03\",\n    \"last_updated\": \"2024-12-28 07:50:19\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:03\",\n    \"last_updated\": \"2024-12-28 07:50:48\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:50:48'),
(69, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:44:30\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-28 07:50:51\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:50:51'),
(70, 'discounts', 'UPDATE', 43, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2024-12-27 20:12:13\",\n    \"last_updated\": \"2024-12-27 20:38:21\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2024-12-27 20:12:13\",\n    \"last_updated\": \"2024-12-28 07:50:54\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:50:54'),
(71, 'discounts', 'UPDATE', 45, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:03\",\n    \"last_updated\": \"2024-12-28 07:50:48\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:03\",\n    \"last_updated\": \"2024-12-28 07:50:56\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:50:56'),
(72, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-28 07:50:51\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-28 07:50:58\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:50:58'),
(73, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-28 07:50:58\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-28 07:50:59\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:50:59'),
(74, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-28 07:50:59\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-28 07:51:04\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:51:04'),
(75, 'discounts', 'UPDATE', 39, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 13,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 19:41:42\",\n    \"last_updated\": \"2024-12-28 07:50:36\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 13,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 19:41:42\",\n    \"last_updated\": \"2024-12-28 07:51:06\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:51:06'),
(76, 'discounts', 'UPDATE', 43, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2024-12-27 20:12:13\",\n    \"last_updated\": \"2024-12-28 07:50:54\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2024-12-27 20:12:13\",\n    \"last_updated\": \"2024-12-28 07:51:08\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:51:08'),
(77, 'discounts', 'UPDATE', 43, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2024-12-27 20:12:13\",\n    \"last_updated\": \"2024-12-28 07:51:08\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2024-12-27 20:12:13\",\n    \"last_updated\": \"2024-12-28 07:52:48\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:52:48'),
(78, 'discounts', 'UPDATE', 39, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 13,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 19:41:42\",\n    \"last_updated\": \"2024-12-28 07:51:06\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 13,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 19:41:42\",\n    \"last_updated\": \"2024-12-28 07:52:51\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:52:51'),
(79, 'discounts', 'UPDATE', 39, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 13,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 19:41:42\",\n    \"last_updated\": \"2024-12-28 07:52:51\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 13,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 19:41:42\",\n    \"last_updated\": \"2024-12-28 07:52:54\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:52:54'),
(80, 'discounts', 'UPDATE', 39, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 13,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 19:41:42\",\n    \"last_updated\": \"2024-12-28 07:52:54\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 13,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 19:41:42\",\n    \"last_updated\": \"2024-12-28 07:52:59\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:52:59'),
(81, 'discounts', 'UPDATE', 17, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 9,\n    \"discount_price\": 214.00,\n    \"discount_date\": \"2024-12-17 14:25:26\",\n    \"last_updated\": \"2024-12-27 19:39:08\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 9,\n    \"discount_price\": 214.00,\n    \"discount_date\": \"2024-12-17 14:25:26\",\n    \"last_updated\": \"2024-12-28 07:53:06\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:53:06'),
(82, 'discounts', 'UPDATE', 17, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 9,\n    \"discount_price\": 214.00,\n    \"discount_date\": \"2024-12-17 14:25:26\",\n    \"last_updated\": \"2024-12-28 07:53:06\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 9,\n    \"discount_price\": 1.00,\n    \"discount_date\": \"2024-12-17 14:25:26\",\n    \"last_updated\": \"2024-12-28 07:56:38\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:56:38'),
(83, 'discounts', 'UPDATE', 17, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 9,\n    \"discount_price\": 1.00,\n    \"discount_date\": \"2024-12-17 14:25:26\",\n    \"last_updated\": \"2024-12-28 07:56:38\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 9,\n    \"discount_price\": 1.00,\n    \"discount_date\": \"2024-12-17 14:25:26\",\n    \"last_updated\": \"2024-12-28 07:56:39\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:56:39'),
(84, 'discounts', 'DELETE', 17, 'Deleted Record:\n{\"customer_id\": 9, \"product_id\": 9, \"discount_price\": 1.00, \"discount_date\": \"2024-12-17 14:25:26\", \"last_updated\": \"2024-12-28 07:56:39\", \"last_edited_by\": \"Herry\"}', 'root@localhost', '2024-12-28 07:56:41'),
(85, 'products', 'INSERT', 74, 'New Record:\n{\"name\": \"sad\", \"description\": \"sad\", \"price\": 123.00}', 'root@localhost', '2024-12-28 08:13:33'),
(86, 'products', 'INSERT', 75, 'New Record:\n{\"name\": \"asd\", \"description\": \"edfas\", \"price\": 123.00}', 'root@localhost', '2024-12-28 08:14:39'),
(87, 'products', 'INSERT', 76, 'New Record:\n{\"name\": \"kacau\", \"description\": \"asdcd\", \"price\": 213.00}', 'root@localhost', '2024-12-28 08:14:53'),
(88, 'products', 'UPDATE', 76, 'Before:\n{\n    \"name\": \"kacau\",\n    \"description\": \"asdcd\",\n    \"price\": 213.00\n}\nAfter:\n{\n    \"name\": \"kacau\",\n    \"description\": \"asdcd\",\n    \"price\": 213.00\n}', 'root@localhost', '2024-12-28 08:15:03'),
(89, 'products', 'UPDATE', 76, 'Before:\n{\n    \"name\": \"kacau\",\n    \"description\": \"asdcd\",\n    \"price\": 213.00\n}\nAfter:\n{\n    \"name\": \"\",\n    \"description\": \"asdcd\",\n    \"price\": 213.00\n}', 'root@localhost', '2024-12-28 08:15:07'),
(90, 'products', 'UPDATE', 76, 'Before:\n{\n    \"name\": \"\",\n    \"description\": \"asdcd\",\n    \"price\": 213.00\n}\nAfter:\n{\n    \"name\": \"\",\n    \"description\": \"\",\n    \"price\": 0.00\n}', 'root@localhost', '2024-12-28 08:15:16'),
(91, 'discounts', 'INSERT', 48, 'New Record:\n{\"customer_id\": 9, \"product_id\": 11, \"discount_price\": 231.00, \"discount_date\": \"2024-12-28 08:19:22\", \"last_updated\": \"2024-12-28 08:19:22\", \"last_edited_by\": null}', 'root@localhost', '2024-12-28 08:19:22'),
(92, 'discounts', 'UPDATE', 48, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 231.00,\n    \"discount_date\": \"2024-12-28 08:19:22\",\n    \"last_updated\": \"2024-12-28 08:19:22\",\n    \"last_edited_by\": null\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 213123.00,\n    \"discount_date\": \"2024-12-28 08:19:22\",\n    \"last_updated\": \"2024-12-28 08:19:43\",\n    \"last_edited_by\": \"Nina\"\n}', 'root@localhost', '2024-12-28 08:19:43'),
(93, 'products', 'UPDATE', 11, 'Before:\n{\n    \"name\": \"asd\",\n    \"description\": \"asd\",\n    \"price\": 22222222.00\n}\nAfter:\n{\n    \"name\": \"asds\",\n    \"description\": \"asds\",\n    \"price\": 22222222.00\n}', 'root@localhost', '2024-12-28 08:22:35'),
(94, 'products', 'UPDATE', 11, 'Before:\n{\n    \"name\": \"asds\",\n    \"description\": \"asds\",\n    \"price\": 22222222.00\n}\nAfter:\n{\n    \"name\": \"1\",\n    \"description\": \"\",\n    \"price\": 1.00\n}', 'root@localhost', '2024-12-28 08:23:17'),
(95, 'products', 'UPDATE', 11, 'Before:\n{\n    \"name\": \"1\",\n    \"description\": \"\",\n    \"price\": 1.00\n}\nAfter:\n{\n    \"name\": \"1\",\n    \"description\": \"\",\n    \"price\": 1.00\n}', 'root@localhost', '2024-12-28 08:23:21'),
(96, 'customers', 'DELETE', 103, 'Deleted Record:\n{\"customer_name\": \"saverine\", \"phone_number\": \"08123456\"}', 'root@localhost', '2024-12-29 17:16:49'),
(97, 'customers', 'DELETE', 101, 'Deleted Record:\n{\"customer_name\": \"asd\", \"phone_number\": \"08123456\"}', 'root@localhost', '2024-12-29 17:16:51'),
(98, 'customers', 'DELETE', 100, 'Deleted Record:\n{\"customer_name\": \"asdasd\", \"phone_number\": \"08123123123123\"}', 'root@localhost', '2024-12-29 17:16:53'),
(99, 'discounts', 'UPDATE', 48, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 213123.00,\n    \"discount_date\": \"2024-12-28 08:19:22\",\n    \"last_updated\": \"2024-12-28 08:19:43\",\n    \"last_edited_by\": \"Nina\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 213123.00,\n    \"discount_date\": \"2024-12-28 08:19:22\",\n    \"last_updated\": \"2024-12-30 12:22:54\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-30 12:22:54'),
(100, 'discounts', 'UPDATE', 37, 'Before:\n{\n    \"customer_id\": 12,\n    \"product_id\": 21,\n    \"discount_price\": 124.00,\n    \"discount_date\": \"2024-12-25 10:28:40\",\n    \"last_updated\": \"2024-12-25 10:28:40\",\n    \"last_edited_by\": null\n}\nAfter:\n{\n    \"customer_id\": 12,\n    \"product_id\": 21,\n    \"discount_price\": 124.00,\n    \"discount_date\": \"2024-12-25 10:28:40\",\n    \"last_updated\": \"2024-12-30 12:22:56\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-30 12:22:56'),
(101, 'discounts', 'UPDATE', 40, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 19:57:46\",\n    \"last_updated\": \"2024-12-27 19:57:46\",\n    \"last_edited_by\": null\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 19:57:46\",\n    \"last_updated\": \"2025-01-01 18:57:10\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2025-01-01 18:57:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `updatedAt` datetime NOT NULL,
  `createdAt` datetime NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `updatedAt`, `createdAt`, `phone_number`) VALUES
(9, 'asdddddddddddddddd', '2024-12-24 05:53:40', '2024-12-15 15:38:41', '08213167452'),
(12, 'ferdynand', '2024-12-15 17:07:01', '2024-12-15 17:07:01', '081211'),
(13, 'Brina', '2024-12-21 21:40:23', '2024-12-15 17:12:10', '0856454654'),
(19, 'Brina', '2024-12-16 07:35:01', '2024-12-16 07:35:01', '0854'),
(20, 'tasos', '2024-12-16 10:57:03', '2024-12-16 10:57:03', '0854'),
(77, 'Brinna', '2024-12-18 19:02:14', '2024-12-18 19:02:14', '08123456'),
(78, 'brissila', '2024-12-18 19:02:23', '2024-12-18 19:02:23', '08123456'),
(81, 'qweqw', '2024-12-20 05:52:29', '2024-12-20 05:52:29', '0854'),
(82, '123123', '2024-12-20 05:52:32', '2024-12-20 05:52:32', '08123456'),
(83, 'asdasd', '2024-12-20 05:52:35', '2024-12-20 05:52:35', '0854'),
(84, '123', '2024-12-20 05:52:38', '2024-12-20 05:52:38', '08123456'),
(85, '123123', '2024-12-20 05:52:42', '2024-12-20 05:52:42', '08123456'),
(86, '123123', '2024-12-20 05:52:45', '2024-12-20 05:52:45', '0854'),
(87, 'wqe', '2024-12-20 05:52:53', '2024-12-20 05:52:53', '0854'),
(88, '123213', '2024-12-20 05:52:56', '2024-12-20 05:52:56', '08123456'),
(89, '121212', '2024-12-20 05:53:00', '2024-12-20 05:53:00', '08123456'),
(90, 'saverine', '2024-12-20 05:53:04', '2024-12-20 05:53:04', '08123456'),
(91, '1212', '2024-12-20 06:32:17', '2024-12-20 05:53:07', '08123123123123'),
(92, 'qweeqwweq', '2024-12-20 06:31:29', '2024-12-20 05:53:15', '08123123123123'),
(93, 'qweeqwweq', '2024-12-20 06:37:12', '2024-12-20 06:31:56', '08123123123123'),
(94, 'adz', '2024-12-20 06:39:42', '2024-12-20 06:37:23', '08123123123123'),
(95, 'Lovely', '2024-12-20 06:39:50', '2024-12-20 06:39:50', '08123456'),
(97, 'saverine', '2024-12-20 06:43:05', '2024-12-20 06:43:05', '08123456'),
(102, 'ferdynand', '2024-12-23 22:50:13', '2024-12-23 22:50:13', '08123456');

--
-- Trigger `customers`
--
DELIMITER $$
CREATE TRIGGER `log_customers_delete` AFTER DELETE ON `customers` FOR EACH ROW BEGIN
    DECLARE changes TEXT;

    SET changes = CONCAT(
        "Deleted Record:\n",
        JSON_OBJECT(
            'customer_name', OLD.customer_name,
            'phone_number', OLD.phone_number
        )
    );

    INSERT INTO audit_logs (
        table_name, operation, record_id, changes, performed_by
    ) VALUES (
        'customers', 'DELETE', OLD.id, changes, CURRENT_USER()
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `log_customers_insert` AFTER INSERT ON `customers` FOR EACH ROW BEGIN
    DECLARE changes TEXT;

    SET changes = CONCAT(
        "New Record:\n",
        JSON_OBJECT(
            'customer_name', NEW.customer_name,
            'phone_number', NEW.phone_number
        )
    );

    INSERT INTO audit_logs (
        table_name, operation, record_id, changes, performed_by
    ) VALUES (
        'customers', 'INSERT', NEW.id, changes, CURRENT_USER()
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `log_customers_update` AFTER UPDATE ON `customers` FOR EACH ROW BEGIN
    DECLARE before_values JSON;
    DECLARE after_values JSON;
    DECLARE changes TEXT;

    SET before_values = JSON_OBJECT(
        'customer_name', OLD.customer_name,
        'phone_number', OLD.phone_number
    );
    SET after_values = JSON_OBJECT(
        'customer_name', NEW.customer_name,
        'phone_number', NEW.phone_number
    );

    SET changes = CONCAT(
        "Before:\n", JSON_PRETTY(before_values),
        "\nAfter:\n", JSON_PRETTY(after_values)
    );

    INSERT INTO audit_logs (
        table_name, operation, record_id, changes, performed_by
    ) VALUES (
        'customers', 'UPDATE', NEW.id, changes, CURRENT_USER()
    );
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `discounts`
--

CREATE TABLE `discounts` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `discount_price` decimal(10,2) NOT NULL,
  `discount_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated` datetime DEFAULT current_timestamp(),
  `last_edited_by` varchar(255) DEFAULT NULL,
  `minimum_order_quantity` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `discounts`
--

INSERT INTO `discounts` (`id`, `customer_id`, `product_id`, `discount_price`, `discount_date`, `last_updated`, `last_edited_by`, `minimum_order_quantity`) VALUES
(18, 9, 9, 24134.00, '2024-12-17 14:26:41', '2024-12-22 07:06:07', 'Herry', NULL),
(19, 20, 9, 2143412.00, '2024-12-17 14:26:49', '2024-12-21 09:46:26', 'ferdynand', NULL),
(20, 20, 9, 111111.00, '2024-12-17 14:27:37', '2024-12-21 21:12:35', 'ferfy', NULL),
(21, 20, 9, 7777.00, '2024-12-17 14:29:44', '2024-12-24 10:50:04', 'Nina', NULL),
(22, 12, 54, 20000.00, '2024-12-18 09:35:11', '2024-12-21 09:46:27', 'ferdynand', NULL),
(23, 19, 54, 19000.00, '2024-12-18 09:38:13', '2024-12-21 09:46:28', 'ferdynand', NULL),
(24, 12, 9, 2222.00, '2024-12-18 15:22:59', '2024-12-21 09:46:29', 'ferdynand', NULL),
(25, 12, 9, 12411424.00, '2024-12-18 16:18:32', '2024-12-21 09:46:30', 'ferdynand', NULL),
(26, 19, 56, 213213.00, '2024-12-18 18:54:49', '2024-12-21 09:46:31', 'ferdynand', NULL),
(27, 77, 54, 3.00, '2024-12-18 19:02:33', '2024-12-21 09:46:33', 'ferdynand', NULL),
(28, 78, 9, 2.00, '2024-12-18 19:02:42', '2024-12-21 09:46:34', 'ferdynand', NULL),
(29, 19, 10, 123231.00, '2024-12-18 19:15:47', '2024-12-21 09:46:35', 'ferdynand', NULL),
(32, 82, 11, 213123.00, '2024-12-21 07:39:14', '2024-12-21 09:46:36', 'ferdynand', NULL),
(33, 12, 54, 324.00, '2024-12-21 09:29:24', '2024-12-21 16:06:04', 'celine', NULL),
(34, 9, 9, 213.00, '2024-12-21 16:06:25', '2024-12-21 16:06:25', NULL, NULL),
(35, 9, 13, 123.00, '2024-12-21 21:50:21', '2024-12-21 21:50:28', 'Nina', NULL),
(36, 12, 73, 213.00, '2024-12-22 21:57:08', '2024-12-22 21:57:08', NULL, NULL),
(37, 12, 21, 124.00, '2024-12-25 10:28:40', '2024-12-30 12:22:56', 'Herry', NULL),
(38, 83, 56, 1234.00, '2024-12-25 20:21:29', '2024-12-25 20:21:29', NULL, NULL),
(39, 9, 13, 2134.00, '2024-12-27 19:41:42', '2024-12-28 07:52:59', 'Herry', 'sd213'),
(40, 83, 11, 213.00, '2024-12-27 19:57:46', '2025-01-01 18:57:10', 'Herry', '132'),
(42, 90, 68, 1243.00, '2024-12-27 20:04:09', '2024-12-27 20:04:09', NULL, '123'),
(43, 83, 9, 123.00, '2024-12-27 20:12:13', '2024-12-28 07:52:48', 'Herry', 'asd'),
(44, 83, 9, 2134.00, '2024-12-27 20:17:39', '2024-12-28 07:51:04', 'Herry', '21'),
(45, 83, 11, 213.00, '2024-12-27 20:45:03', '2024-12-28 07:50:56', 'Herry', '12'),
(48, 9, 11, 213123.00, '2024-12-28 08:19:22', '2024-12-30 12:22:54', 'Herry', 'asdasd');

--
-- Trigger `discounts`
--
DELIMITER $$
CREATE TRIGGER `log_discounts_delete` AFTER DELETE ON `discounts` FOR EACH ROW BEGIN
    DECLARE changes TEXT;

    SET changes = CONCAT(
        "Deleted Record:\n",
        JSON_OBJECT(
            'customer_id', OLD.customer_id,
            'product_id', OLD.product_id,
            'discount_price', OLD.discount_price,
            'discount_date', OLD.discount_date,
            'last_updated', OLD.last_updated,
            'last_edited_by', OLD.last_edited_by
        )
    );

    INSERT INTO audit_logs (
        table_name, operation, record_id, changes, performed_by
    ) VALUES (
        'discounts', 'DELETE', OLD.id, changes, CURRENT_USER()
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `log_discounts_insert` AFTER INSERT ON `discounts` FOR EACH ROW BEGIN
    DECLARE changes TEXT;

    SET changes = CONCAT(
        "New Record:\n",
        JSON_OBJECT(
            'customer_id', NEW.customer_id,
            'product_id', NEW.product_id,
            'discount_price', NEW.discount_price,
            'discount_date', NEW.discount_date,
            'last_updated', NEW.last_updated,
            'last_edited_by', NEW.last_edited_by
        )
    );

    INSERT INTO audit_logs (
        table_name, operation, record_id, changes, performed_by
    ) VALUES (
        'discounts', 'INSERT', NEW.id, changes, CURRENT_USER()
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `log_discounts_update` AFTER UPDATE ON `discounts` FOR EACH ROW BEGIN
    DECLARE before_values JSON;
    DECLARE after_values JSON;
    DECLARE changes TEXT;

    SET before_values = JSON_OBJECT(
        'customer_id', OLD.customer_id,
        'product_id', OLD.product_id,
        'discount_price', OLD.discount_price,
        'discount_date', OLD.discount_date,
        'last_updated', OLD.last_updated,
        'last_edited_by', OLD.last_edited_by
    );
    SET after_values = JSON_OBJECT(
        'customer_id', NEW.customer_id,
        'product_id', NEW.product_id,
        'discount_price', NEW.discount_price,
        'discount_date', NEW.discount_date,
        'last_updated', NEW.last_updated,
        'last_edited_by', NEW.last_edited_by
    );

    SET changes = CONCAT(
        "Before:\n", JSON_PRETTY(before_values),
        "\nAfter:\n", JSON_PRETTY(after_values)
    );

    INSERT INTO audit_logs (
        table_name, operation, record_id, changes, performed_by
    ) VALUES (
        'discounts', 'UPDATE', NEW.id, changes, CURRENT_USER()
    );
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(31, 'Herry', '$2b$10$9yBo.fFKcOfJpW8p2qDl8u9h3oGcxThrgpPf6Cl.99U4u3x72FKJG', 'owner', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Saverine', '$2b$10$69zPuNLX4kjojfbPlIDlNexKkJH6Nk45De5O6UEMz6OyvaYQD4Cge', 'owner', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Herrys', '$2b$10$CZIkyGYZ5p1FDZ1zIwvVt.37dVyaIP6qOJUHOtr0S9NiJMx1sNCxq', 'owner', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Trigger `login`
--
DELIMITER $$
CREATE TRIGGER `prevent_owner_deletion` BEFORE DELETE ON `login` FOR EACH ROW BEGIN
    -- Cek jika user yang akan dihapus adalah 'owner'
    IF OLD.role = 'owner' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Owner cannot be deleted.';
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `createdAt`, `updatedAt`) VALUES
(9, '1213', '123', 123.00, '2024-12-15 17:50:56', '2024-12-27 20:51:31'),
(10, 'ada', 'dad', 22222200.00, '2024-12-15 17:51:55', '2024-12-21 14:10:08'),
(11, '1', '', 1.00, '2024-12-15 17:55:10', '2024-12-28 08:23:21'),
(13, 'adsada', 'sdasdas', 22222200.00, '2024-12-15 18:03:25', '2024-12-18 09:45:48'),
(14, 'sada', 'dsaasd', 99999999.99, '2024-12-15 18:10:03', '2024-12-18 09:45:44'),
(21, 'dsadasdasd', 'asdasdas', 39999.00, '2024-12-15 18:39:30', '2024-12-15 18:43:22'),
(28, 'salet', 'wwwww', 20000.00, '2024-12-16 04:39:40', '2024-12-16 04:39:40'),
(44, 'a', 'A', 0.00, '2024-12-16 11:24:21', '2024-12-18 09:42:27'),
(54, 'ROKOKss', '3', 100.00, '2024-12-17 13:54:33', '2024-12-20 09:05:40'),
(56, 'ayam bawang23', '2213', 123.00, '2024-12-18 18:54:33', '2024-12-20 09:28:21'),
(67, 'asd', 'qe', 2.00, '2024-12-20 09:32:03', '2024-12-20 09:32:03'),
(68, '123123', '132', 123123.00, '2024-12-20 16:13:55', '2024-12-20 16:14:10'),
(69, 'ads', '213', 2333333.00, '2024-12-21 06:53:29', '2024-12-21 06:53:29'),
(70, 'asd', 'v', 22221.00, '2024-12-21 06:54:50', '2024-12-21 06:56:45'),
(71, 'qqwwee', '222', 2220.00, '2024-12-21 06:55:01', '2024-12-21 06:55:08'),
(73, 'Alice', 'wqe', 1234.00, '2024-12-22 21:56:06', '2024-12-22 21:56:06'),
(74, 'sad', 'sad', 123.00, '2024-12-28 08:13:32', '2024-12-28 08:13:32'),
(75, 'asd', 'edfas', 123.00, '2024-12-28 08:14:38', '2024-12-28 08:14:38'),
(76, '', '', 0.00, '2024-12-28 08:14:53', '2024-12-28 08:15:16');

--
-- Trigger `products`
--
DELIMITER $$
CREATE TRIGGER `log_products_delete` AFTER DELETE ON `products` FOR EACH ROW BEGIN
    DECLARE changes TEXT;

    SET changes = CONCAT(
        "Deleted Record:\n",
        JSON_OBJECT(
            'name', OLD.name,
            'description', OLD.description,
            'price', OLD.price
        )
    );

    INSERT INTO audit_logs (
        table_name, operation, record_id, changes, performed_by
    ) VALUES (
        'products', 'DELETE', OLD.id, changes, CURRENT_USER()
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `log_products_insert` AFTER INSERT ON `products` FOR EACH ROW BEGIN
    DECLARE changes TEXT;

    SET changes = CONCAT(
        "New Record:\n",
        JSON_OBJECT(
            'name', NEW.name,
            'description', NEW.description,
            'price', NEW.price
        )
    );

    INSERT INTO audit_logs (
        table_name, operation, record_id, changes, performed_by
    ) VALUES (
        'products', 'INSERT', NEW.id, changes, CURRENT_USER()
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `log_products_update` AFTER UPDATE ON `products` FOR EACH ROW BEGIN
    DECLARE before_values JSON;
    DECLARE after_values JSON;
    DECLARE changes TEXT;

    SET before_values = JSON_OBJECT(
        'name', OLD.name,
        'description', OLD.description,
        'price', OLD.price
    );
    SET after_values = JSON_OBJECT(
        'name', NEW.name,
        'description', NEW.description,
        'price', NEW.price
    );

    SET changes = CONCAT(
        "Before:\n", JSON_PRETTY(before_values),
        "\nAfter:\n", JSON_PRETTY(after_values)
    );

    INSERT INTO audit_logs (
        table_name, operation, record_id, changes, performed_by
    ) VALUES (
        'products', 'UPDATE', NEW.id, changes, CURRENT_USER()
    );
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_performed_at` (`performed_at`);

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_customer_id` (`customer_id`),
  ADD KEY `fk_product_id` (`product_id`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT untuk tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT untuk tabel `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `discounts`
--
ALTER TABLE `discounts`
  ADD CONSTRAINT `discounts_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `discounts_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `fk_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

DELIMITER $$
--
-- Event
--
CREATE DEFINER=`root`@`localhost` EVENT `purge_old_audit_logs` ON SCHEDULE EVERY 1 DAY STARTS '2024-12-24 06:13:29' ON COMPLETION NOT PRESERVE ENABLE DO DELETE FROM audit_logs
  WHERE id NOT IN (
    SELECT id
    FROM (SELECT id FROM audit_logs ORDER BY performed_at DESC LIMIT 10000) AS subquery
  )$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
