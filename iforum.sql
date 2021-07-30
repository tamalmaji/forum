-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2021 at 03:44 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iforum`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(8) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_description`, `created`) VALUES
(1, 'python', 'Python is an interpreted high-level general-purpose programming language. Python\'s design philosophy emphasizes code readability with its notable use of significant indentation.', '2021-06-28 13:38:26'),
(2, 'JavaScript', 'JavaScript, often abbreviated as JS, is a programming language that conforms to the ECMAScript specification. JavaScript is high-level, often just-in-time compiled, and multi-paradigm. It has curly-bracket syntax, dynamic typing, prototype-based object-or', '2021-06-28 13:39:28'),
(3, 'Bootstrap', 'Bootstrap is a free and open-source CSS framework directed at responsive, mobile-first front-end web development. It contains CSS- and JavaScript-based design templates for typography, forms, buttons, navigation, and other interface components.', '2021-06-28 13:41:01');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(8) NOT NULL,
  `comment_content` text NOT NULL,
  `thread_id` int(8) NOT NULL,
  `ccomment_by` int(8) NOT NULL,
  `comment_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_content`, `thread_id`, `ccomment_by`, `comment_time`) VALUES
(1, 'This is a comment', 1, 1, '2021-06-28 20:39:57'),
(2, 'This is a another Comment', 1, 2, '2021-06-28 21:08:43'),
(3, 'hi', 1, 1, '2021-06-28 21:10:02'),
(4, 'hie', 5, 2, '2021-06-28 21:14:57'),
(5, 'hie', 5, 1, '2021-06-28 21:15:49'),
(6, 'hoo\r\n', 1, 0, '2021-06-30 20:05:26'),
(7, 'ww', 1, 0, '2021-06-30 20:07:15'),
(8, 'ww', 1, 0, '2021-06-30 20:13:05'),
(9, 'ww', 1, 0, '2021-06-30 20:15:20'),
(10, 'w', 1, 3, '2021-06-30 20:15:24'),
(11, 'x', 1, 3, '2021-06-30 20:16:08'),
(12, 'hi\r\n', 8, 3, '2021-06-30 20:17:35'),
(13, '&lt;', 5, 3, '2021-07-03 19:37:02'),
(14, '&gt;', 5, 3, '2021-07-03 19:38:56'),
(15, '&gt;', 5, 3, '2021-07-03 19:39:10'),
(16, '&gt;', 5, 3, '2021-07-03 19:39:49'),
(17, '&lt;h1&gt;tamal&lt;/h1&gt;', 5, 3, '2021-07-03 19:44:16');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_sno` int(8) NOT NULL,
  `contact_name` varchar(30) NOT NULL,
  `contact_email` varchar(30) NOT NULL,
  `contact_message` text NOT NULL,
  `contact_user_id` int(8) NOT NULL,
  `contact_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_sno`, `contact_name`, `contact_email`, `contact_message`, `contact_user_id`, `contact_time`) VALUES
(1, 'tamal', 't2@t.com', 'Hi, I am Tamal.', 8, '2021-07-05 21:02:48'),
(2, 't', 't@t.com', '', 0, '2021-07-05 21:06:48'),
(3, '3', 't@t.com', '', 0, '2021-07-05 21:08:45'),
(4, 't', 't@2.com', '', 0, '2021-07-05 21:10:32'),
(5, 't', 't@2.com', 'sss', 0, '2021-07-05 21:10:48'),
(6, 't', 't2@g.com', 'ttttttt', 0, '2021-07-05 21:16:00'),
(7, 'ta', 'ta@g.com', '11122', 0, '2021-07-05 21:53:44'),
(8, 't', '22', '22', 0, '2021-07-05 22:00:26'),
(9, '4', '4', '4', 0, '2021-07-05 22:02:38'),
(10, '4', '4', '4', 0, '2021-07-05 22:03:25'),
(11, '4', '4', '4', 0, '2021-07-05 22:03:51'),
(12, 'r', 'r', 'r', 0, '2021-07-05 22:03:58'),
(13, '2', '2', '2', 0, '2021-07-05 22:07:29'),
(14, 'w', 'ww', 'www', 0, '2021-07-05 22:08:21'),
(15, 'w', 'www', 'www', 0, '2021-07-05 22:09:52'),
(16, 'xx', 'xx', 'xx', 0, '2021-07-05 22:11:00');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `thread_id` int(7) NOT NULL,
  `thread_title` varchar(255) NOT NULL,
  `thread_desc` text NOT NULL,
  `thread_cat_id` int(7) NOT NULL,
  `thread_user_id` int(7) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`thread_id`, `thread_title`, `thread_desc`, `thread_cat_id`, `thread_user_id`, `timestamp`) VALUES
(1, 'Unable to install pyaudio', 'I am not able to install pyaudio', 1, 3, '2021-06-28 17:57:47'),
(2, 'Not able to use python', 'please help me', 1, 2, '2021-06-28 18:24:21'),
(3, 'new', 'new 2', 1, 1, '2021-06-28 20:18:47'),
(4, 'new 2', 'new 3', 1, 1, '2021-06-28 20:23:42'),
(5, 'Hi I am tamal', 'heeeeee....', 2, 3, '2021-06-28 21:09:53'),
(6, 't', '1', 1, 2, '2021-06-30 14:34:30'),
(7, 't', '1', 1, 1, '2021-06-30 14:41:13'),
(8, 't', '1', 1, 2, '2021-06-30 19:34:35'),
(9, 'hi', '111', 1, 0, '2021-06-30 20:18:00'),
(10, 'wwwwx', 'x', 1, 0, '2021-06-30 20:19:23'),
(11, 'wwwwx', 'x', 1, 0, '2021-06-30 20:20:41'),
(12, '44', '44', 1, 3, '2021-06-30 20:20:51'),
(13, '&lt;h1&gt;', '&lt;h6&gt;', 2, 3, '2021-07-03 19:51:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(8) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `user_email`, `user_pass`, `timestamp`) VALUES
(1, 'w', '$2y$10$BTxo3.IIiyYAWoYOOFAS0.m8WMo5H1qRquQ8aUPyCyv0mfBnbKQre', '2021-06-28 22:12:10'),
(2, '2', '$2y$10$efMrz4JjAfgUzgY9fYWzsuL1SY6FeaOZ9Bs5Me.I9u/Ow9pz/xdvq', '2021-06-28 22:13:14'),
(3, 'tamal', '$2y$10$.HgyjFl5fDDnnGEYjL/WH.4lNu8UeV1MJSykWfvkK6n1esKGllukS', '2021-06-30 14:04:10'),
(4, 't', '$2y$10$QXDLt3bXZmT6CnaPPTRwW.09pMadcQTjYi0r41xvElOJZTVhDCHui', '2021-07-01 11:39:35'),
(5, 'm', '$2y$10$vnk4QlC0ergv9bPb0z7Yd.3C0kBHkUS4FsMpIuDFe0yxwu80Zp4g.', '2021-07-02 18:19:11'),
(6, 'c', '$2y$10$iDSExKtIuEZO3VTsJnt8fe187gaoMgQ1eu4Rv1PWA/EH4xB90wdMq', '2021-07-03 21:09:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_sno`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`thread_id`);
ALTER TABLE `threads` ADD FULLTEXT KEY `thread_title` (`thread_title`,`thread_desc`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_sno` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `thread_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
