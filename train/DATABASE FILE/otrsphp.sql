-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2023 at 06:56 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `otrsphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `booked`
--

CREATE TABLE `booked` (
  `id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `class` varchar(10) NOT NULL DEFAULT 'second',
  `no` int(11) NOT NULL DEFAULT 1,
  `seat` varchar(30) NOT NULL,
  `date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booked`
--

INSERT INTO `booked` (`id`, `schedule_id`, `payment_id`, `user_id`, `code`, `class`, `no`, `seat`, `date`) VALUES
(15, 5, 12, 4, '2020/005/1324', 'first', 1, 'F01', 'Tue, 11-Aug-2020 11:52:19 AM'),
(17, 5, 15, 3, '2020/005/2645', 'first', 5, 'F02', 'Tue, 11-Aug-2020 12:48:38 PM'),
(18, 6, 16, 3, '2020/006/1655', 'first', 8, 'F001 -F008', 'Tue, 11-Aug-2020 01:08:20 PM'),
(19, 6, 1, 4, '2020/006/9146', 'second', 1, 'S0001', 'Tue, 11-Aug-2020 01:09:22 PM'),
(20, 8, 18, 4, '2020/008/1144', 'second', 8, 'S0001 -S0008', 'Tue, 11-Aug-2020 01:12:58 PM'),
(21, 18, 19, 1, '2020/018/1671', 'first', 8, 'F01 -F08', 'Tue, 11-Aug-2020 04:10:29 PM'),
(22, 20, 20, 5, '2020/020/126', 'first', 30, 'F01 - F30', 'Mon, 31-Aug-2020 11:36:57 PM'),
(23, 20, 21, 6, '2020/020/31816', 'first', 2, 'F31 - F32', 'Fri, 06-Nov-2020 10:10:44 PM'),
(24, 22, 22, 6, '2020/022/1176', 'second', 1, 'S001', 'Sun, 08-Nov-2020 02:08:07 PM'),
(25, 24, 23, 2, '2020/024/197', 'second', 2, 'S001 - S002', 'Sun, 15-Nov-2020 02:25:27 PM'),
(26, 26, 24, 8, '2021/026/1183', 'first', 4, 'F01 - F04', 'Fri, 17-Sep-2021 04:25:09 PM'),
(27, 98, 25, 7, '2021/098/198', 'first', 2, 'F001 - F002', 'Wed, 13-Oct-2021 05:17:54 AM'),
(28, 99, 26, 7, '2021/099/157', 'second', 1, 'S001', 'Wed, 13-Oct-2021 05:28:54 AM'),
(29, 100, 27, 7, '2021/0100/1134', 'second', 1, 'S001', 'Wed, 13-Oct-2021 05:39:18 AM'),
(30, 101, 39, 7, '2021/0101/1116', 'second', 1, 'S001', 'Wed, 13-Oct-2021 06:15:30 AM'),
(31, 102, 40, 7, '2021/0102/1502', 'first', 1, 'F001', 'Wed, 13-Oct-2021 06:18:10 AM'),
(32, 103, 43, 7, '2021/0103/1792', 'second', 2, 'S001 - S002', 'Wed, 13-Oct-2021 11:02:56 AM'),
(33, 103, 44, 8, '2021/0103/3809', 'second', 1, 'S003', 'Wed, 13-Oct-2021 02:21:40 PM'),
(34, 100, 45, 8, '2021/0104/1526', 'first', 2, 'F001 - F002', 'Wed, 13-Oct-2021 05:22:15 PM');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` varchar(400) NOT NULL,
  `response` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `message`, `response`) VALUES
(1, 3, 'This is a demo test.', NULL),
(3, 6, 'Demo Test - 2', 'Are you sure that this is another test? '),
(8, 4, 'This is a feedback text', NULL),
(9, 6, 'Test Test Test Test Test', NULL),
(11, 8, 'This is a demo test for feedback sections!!!', 'none'),
(12, 9, 'nice service', NULL),
(13, 8, 'aefafdhfgsssf', 'hgkhggbbggbfggg');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(40) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `loc` varchar(40) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`id`, `name`, `email`, `password`, `phone`, `address`, `loc`, `status`) VALUES
(1, 'Passenger One', 'pas1o@mail.com', '1f87051e29a6927b2e6651dfb9b66387', '0780100000', 'No. 20 Aiyeteju Street', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(2, 'Adelabu Simbiat', 'jobowonubi@otrs.com', '1526755d438e395e551f229a484f8a1d', '3000002000', 'No. 30 Tanke Ilorin', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(3, 'Passenger Two', 'pass2@mail.com', 'c3a19571f1271af5f27a9582377b7d4a', '1400000020', 'abrahamjasmine', 'f3fc8566140434f0a3f47303c62d5146.jpg', 0),
(4, 'Passenger Three', 'pass3@mail.com', '1dd76b458af8df200a097c5b061df9b1', '9000001000', 'No. 589 Ilorin', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(5, 'Passenger Four', 'pass4@mail.com', 'd780455a563c7c5dbfb74a51785ad949', '0000010020', 'Shagamu', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(6, 'Test Passenger', 'testpass@mail.com', 'abe1bcf64eb68c39847b962e8caadadf', '0000002000', 'Ilorin', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(7, 'Liam Moore', 'liamoore@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '7000000000', '7014 Allace Road', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(8, 'Demo Account', 'demoaccount@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '7800000000', '100 Demo Address', '404a6378027a553d980b99162a5b4ce8.png', 1),
(9, 'nithyasree', 'nj@m.com', 'e10adc3949ba59abbe56e057f20f883e', '09090909090', 'beml nagar', '6034acc552618441711df0d3f287cc6f.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `ref` varchar(100) NOT NULL,
  `date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `passenger_id`, `schedule_id`, `amount`, `ref`, `date`) VALUES
(12, 4, 5, '520', 'oyki20masb', 'Tue, 11-Aug-2020 11:52:19 AM'),
(14, 4, 6, '23', 'oyki20masb', 'Tue, 11-Aug-2020 11:52:19 AM'),
(15, 3, 5, '1860', '5gtnjnzclw', 'Tue, 11-Aug-2020 12:48:38 PM'),
(16, 3, 6, '680', 'dzwl1488r0', 'Tue, 11-Aug-2020 01:08:20 PM'),
(18, 4, 8, '8080', 'hja9zvtmgk', 'Tue, 11-Aug-2020 01:12:58 PM'),
(19, 1, 18, '1080', '3TVSHVBQII', 'Tue, 11-Aug-2020 04:10:29 PM'),
(20, 5, 20, '120', '84JP4U5LKZ', 'Mon, 31-Aug-2020 11:36:57 PM'),
(21, 6, 20, '8080', 'VXIZSCHMOG', 'Fri, 06-Nov-2020 10:10:44 PM'),
(22, 6, 22, '1410', 'TDHRBZTZOH', 'Sun, 08-Nov-2020 02:08:07 PM'),
(23, 2, 24, '5050', '4TRM9FIFEV', 'Sun, 15-Nov-2020 02:25:27 PM'),
(24, 8, 26, '5260', '1QXPYSUTOI', 'Fri, 17-Sep-2021 04:25:09 PM'),
(25, 7, 98, '303', 'FIPJBLU5LC', 'Wed, 13-Oct-2021 05:17:54 AM'),
(26, 7, 99, '80', 'NKMGVH44QG', 'Wed, 13-Oct-2021 05:28:54 AM'),
(27, 7, 100, '51', 'NS5IEEK1HS', 'Wed, 13-Oct-2021 05:39:18 AM'),
(39, 7, 101, '56', 'OEPPIM6X9H', 'Wed, 13-Oct-2021 06:15:30 AM'),
(40, 7, 102, '107', 'M07FP4QTOV', 'Wed, 13-Oct-2021 06:18:10 AM'),
(43, 7, 103, '152', 'RITK5E5GDM', 'Wed, 13-Oct-2021 11:02:56 AM'),
(44, 8, 103, '76', 'H6CMTHBJUU', 'Wed, 13-Oct-2021 02:21:40 PM'),
(45, 8, 104, '324', 'KH70GOC8KO', 'Wed, 13-Oct-2021 05:22:15 PM');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `id` int(11) NOT NULL,
  `start` varchar(100) NOT NULL,
  `stop` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`id`, `start`, `stop`) VALUES
(3, 'Chennai', 'Coimbatore'),
(4, 'Chennai', 'Treeblooms'),
(5, 'Cape Onbac', 'Ringkya'),
(6, 'Treeblooms', 'Bridghamgascon'),
(7, 'trichy', 'Chennai'),
(8, 'Chennai', 'Pondicherry'),
(9, 'Hyderabad', 'Chennai'),
(10, 'Chennai', 'Mumbai'),
(11, 'Rameswaram', 'Chennai'),
(12, 'Chennai', 'Tirupathi'),
(13, 'Thiruvananthapuram', 'Chennai'),
(14, 'Urmkirkey', 'Longdale'),
(15, 'Vlinginia', 'Onaginia'),
(16, 'Onaginia', 'Epleburgh'),
(17, 'Epleburgh', 'Kapwood'),
(18, 'Vlinginia', 'Oroville'),
(19, 'Vlinginia', 'Inaschester');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `train_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(10) NOT NULL,
  `first_fee` float NOT NULL,
  `second_fee` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `train_id`, `route_id`, `date`, `time`, `first_fee`, `second_fee`) VALUES
(5, 7, 7, '11-05-2023', '18:30', 180, 80),
(6, 11, 6, '11-08-2023', '18:30', 200, 85),
(7, 11, 5, '12-05-2023', '18:30', 130, 45),
(8, 11, 4, '13-08-2023', '18:30', 130, 60),
(9, 11, 3, '14-05-2023', '18:30', 100, 40),
(10, 7, 5, '15-08-2023', '18:30', 160, 100),
(11, 9, 7, '16-05-2023', '18:30', 180, 100),
(12, 10, 5, '17-08-2023', '18:30', 310, 150),
(16, 2, 7, '16-05-2023', '11:00', 265, 180),
(17, 9, 3, '23-08-2023', '11:00', 180, 115),
(18, 10, 4, '30-08-2023', '11:00', 180, 100),
(20, 8, 4, '07-11-2023', '22:24', 165, 100),
(22, 8, 3, '08-11-2023', '15:13', 130, 70),
(23, 3, 3, '07-11-2023', '15:10', 100, 85),
(24, 2, 3, '15-11-2023', '15:22', 130, 95),
(25, 1, 3, '11-06-2023', '05:37', 65, 55),
(26, 2, 3, '18-09-2023', '09:00', 130, 90),
(97, 11, 8, '11-10-2023', '11:05', 185, 90),
(98, 10, 14, '12-10-2023', '09:00', 150, 85),
(99, 8, 11, '12-10-2023', '11:10', 166, 79),
(100, 9, 12, '12-10-2023', '12:20', 100, 50),
(101, 2, 10, '12-10-2023', '22:59', 105, 55),
(102, 7, 4, '12-10-2023', '11:02', 105, 65),
(103, 9, 11, '12-10-2023', '04:45', 120, 75),
(104, 12, 15, '14-10-2023', '10:00', 160, 72),
(105, 2, 14, '15-05-2023', '21:10', 1000, 750),
(106, 7, 8, '16-05-2023', '17:00', 500, 150),
(107, 7, 8, '17-05-2023', '17:00', 500, 150),
(108, 7, 8, '18-05-2023', '17:00', 500, 150),
(109, 7, 8, '19-05-2023', '17:00', 500, 150),
(110, 7, 8, '20-05-2023', '17:00', 500, 150),
(111, 7, 8, '21-05-2023', '17:00', 500, 150),
(112, 7, 8, '22-05-2023', '17:00', 500, 150),
(113, 7, 8, '23-05-2023', '17:00', 500, 150),
(114, 7, 8, '24-05-2023', '17:00', 500, 150),
(115, 7, 8, '25-05-2023', '17:00', 500, 150),
(116, 7, 8, '26-05-2023', '17:00', 500, 150),
(117, 7, 8, '27-05-2023', '17:00', 500, 150),
(118, 7, 8, '28-05-2023', '17:00', 500, 150),
(119, 7, 8, '29-05-2023', '17:00', 500, 150),
(120, 7, 8, '30-05-2023', '17:00', 500, 150),
(121, 7, 8, '31-05-2023', '17:00', 500, 150),
(122, 7, 8, '01-06-2023', '17:00', 500, 150),
(123, 7, 8, '02-06-2023', '17:00', 500, 150),
(124, 7, 8, '03-06-2023', '17:00', 500, 150),
(125, 7, 8, '04-06-2023', '17:00', 500, 150),
(126, 7, 8, '05-06-2023', '17:00', 500, 150),
(127, 7, 8, '06-06-2023', '17:00', 500, 150),
(128, 7, 8, '07-06-2023', '17:00', 500, 150),
(129, 7, 8, '08-06-2023', '17:00', 500, 150),
(130, 7, 8, '09-06-2023', '17:00', 500, 150),
(131, 7, 8, '10-06-2023', '17:00', 500, 150),
(132, 7, 8, '11-06-2023', '17:00', 500, 150),
(133, 7, 8, '12-06-2023', '17:00', 500, 150),
(134, 7, 8, '13-06-2023', '17:00', 500, 150),
(135, 7, 8, '14-06-2023', '17:00', 500, 150),
(136, 7, 8, '15-06-2023', '17:00', 500, 150),
(137, 7, 8, '16-06-2023', '17:00', 500, 150),
(138, 7, 8, '17-06-2023', '17:00', 500, 150),
(139, 7, 8, '18-06-2023', '17:00', 500, 150),
(140, 7, 8, '19-06-2023', '17:00', 500, 150),
(141, 7, 8, '20-06-2023', '17:00', 500, 150),
(142, 7, 8, '21-06-2023', '17:00', 500, 150),
(143, 7, 8, '22-06-2023', '17:00', 500, 150),
(144, 7, 8, '23-06-2023', '17:00', 500, 150),
(145, 7, 8, '24-06-2023', '17:00', 500, 150),
(146, 7, 8, '25-06-2023', '17:00', 500, 150),
(147, 7, 8, '26-06-2023', '17:00', 500, 150),
(148, 7, 8, '27-06-2023', '17:00', 500, 150),
(149, 7, 8, '28-06-2023', '17:00', 500, 150),
(150, 7, 8, '29-06-2023', '17:00', 500, 150),
(151, 7, 8, '30-06-2023', '17:00', 500, 150);

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `first_seat` int(11) NOT NULL,
  `second_seat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`id`, `name`, `first_seat`, `second_seat`) VALUES
(1, 'Lalbagh SF Express', 120, 800),
(2, 'Madurai Tejas Express', 75, 350),
(3, 'Shatabdi Express', 105, 600),
(7, 'Guruvayur Express', 400, 1000),
(8, 'Puducherry SF Express', 95, 450),
(9, 'Kacheguda Express', 550, 1150),
(10, 'Mumbai CSMT SF Mai', 650, 1200),
(11, 'Rameswaram Express', 450, 900),
(12, 'Saptagiri Express', 250, 600),
(13, 'Thiruvananthapuram Central Mail\n', 600, 1200);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'admin@admin.com', 'D00F5D5217896FB7FD601412CB890830');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booked`
--
ALTER TABLE `booked`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `schedule_id` (`schedule_id`,`user_id`,`payment_id`) USING BTREE,
  ADD KEY `schedule_id_2` (`schedule_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `passenger_id` (`passenger_id`,`schedule_id`),
  ADD KEY `passenger_id_2` (`passenger_id`) USING BTREE,
  ADD KEY `schedule_id` (`schedule_id`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `train_id` (`train_id`),
  ADD KEY `route_id` (`route_id`);

--
-- Indexes for table `train`
--
ALTER TABLE `train`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booked`
--
ALTER TABLE `booked`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `train`
--
ALTER TABLE `train`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booked`
--
ALTER TABLE `booked`
  ADD CONSTRAINT `booked_ibfk_1` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`),
  ADD CONSTRAINT `booked_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `passenger` (`id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passenger` (`id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`);

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`train_id`) REFERENCES `train` (`id`),
  ADD CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`route_id`) REFERENCES `route` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
