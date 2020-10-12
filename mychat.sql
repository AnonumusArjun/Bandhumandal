-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2020 at 09:30 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mychat`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_profile` varchar(255) NOT NULL,
  `user_country` text NOT NULL,
  `user_gender` text NOT NULL,
  `forgotten_answer` varchar(255) NOT NULL,
  `log_in` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_pass`, `user_email`, `user_profile`, `user_country`, `user_gender`, `forgotten_answer`, `log_in`) VALUES
(1, 'Arjun', '123456789', 'vankaniarjun@gmail.com', 'images/pr1.jpg', 'India', 'Male', 'dattu', 0),
(2, 'Vankani', '123123123', 'v@gmail.com', 'images/img.jpg.4', 'INDIA', 'MALE', 'dattu', 0),
(3, 'khushi', '012301230123', 'k@gmail.com', 'images/pr3.jpg', 'India', 'Female', '', 0),
(4, 'meet', '789456123', 'meet@gmail.com', 'images/pr3.jpg', 'India', 'Male', 'meet', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_chat`
--

CREATE TABLE `users_chat` (
  `msg_id` int(11) NOT NULL,
  `sender_username` varchar(255) NOT NULL,
  `receiver_username` varchar(255) NOT NULL,
  `msg_content` varchar(255) NOT NULL,
  `msg_status` text NOT NULL,
  `msg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_chat`
--

INSERT INTO `users_chat` (`msg_id`, `sender_username`, `receiver_username`, `msg_content`, `msg_status`, `msg_date`) VALUES
(13, 'Arjun', 'Arjun', 'hello', 'read', '2020-09-29 16:45:49'),
(14, 'Arjun', 'v', 'hello', 'read', '2020-09-29 17:36:36'),
(15, 'Arjun', 'v', 'who are you ? v', 'read', '2020-09-29 17:36:36'),
(16, 'v', 'Arjun', 'hello', 'read', '2020-09-29 17:37:38'),
(17, 'v', 'Arjun', 'yess i am V ', 'read', '2020-09-29 17:37:38'),
(18, 'v', 'Arjun', 'Who are you??', 'read', '2020-09-29 17:37:38'),
(19, 'Arjun', 'v', 'okiee', 'read', '2020-09-29 18:10:26'),
(20, 'Arjun', 'v', 'yes', 'read', '2020-09-29 18:10:26'),
(21, 'khushi', 'Arjun', 'hello', 'unread', '2020-09-29 17:45:17'),
(22, 'khushi', 'Arjun', 'hello', 'unread', '2020-09-29 17:45:20'),
(23, 'khushi', 'khushi', 'yes', 'read', '2020-09-29 17:45:37'),
(24, 'khushi', 'Arjun', 'hello', 'unread', '2020-09-29 17:45:43'),
(25, 'khushi', 'khushi', 'acha', 'read', '2020-09-29 17:46:39'),
(26, 'khushi', 'khushi', 'acha', 'read', '2020-09-29 17:46:47'),
(27, 'khushi', 'v', '1', 'read', '2020-09-29 19:10:35'),
(28, 'khushi', 'khushi', '132', 'read', '2020-09-29 18:15:13'),
(29, 'khushi', 'khushi', '123', 'read', '2020-09-29 18:15:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_chat`
--
ALTER TABLE `users_chat`
  ADD PRIMARY KEY (`msg_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users_chat`
--
ALTER TABLE `users_chat`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
