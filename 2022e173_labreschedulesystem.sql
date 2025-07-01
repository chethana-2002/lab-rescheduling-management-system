-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2025 at 08:53 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2022e173_labreschedulesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `Attendance_ID` varchar(10) NOT NULL,
  `Student_ID` varchar(20) DEFAULT NULL,
  `Lab_ID` varchar(10) DEFAULT NULL,
  `Attendance_Status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`Attendance_ID`, `Student_ID`, `Lab_ID`, `Attendance_Status`) VALUES
('A001', '2022/E/173', 'L002', 'Absent'),
('A002', '2022/E/008', 'L001', 'Preseent'),
('A003', '2022/E/167', 'L001', 'Preseent');

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

CREATE TABLE `lab` (
  `Lab_ID` varchar(10) NOT NULL,
  `Lab_Name` varchar(100) DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lab`
--

INSERT INTO `lab` (`Lab_ID`, `Lab_Name`, `Location`) VALUES
('L001', 'phpMyAdmin', 'C02'),
('L002', 'Relational Schema', 'C02'),
('L003', 'MySql workbench', 'C04');

-- --------------------------------------------------------

--
-- Table structure for table `lab_instructor`
--

CREATE TABLE `lab_instructor` (
  `Instructor_ID` varchar(10) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lab_instructor`
--

INSERT INTO `lab_instructor` (`Instructor_ID`, `Name`, `Email`) VALUES
('I001', 'ARTHI V.', 'i001@eng.jfn.ac.lk'),
('I002', 'PERERA W.A.M.', 'i002@eng.jfn.ac.lk'),
('I003', 'JANU M.', 'i003@eng.jfn.ac.lk');

-- --------------------------------------------------------

--
-- Table structure for table `lab_schedule`
--

CREATE TABLE `lab_schedule` (
  `Schedule_ID` varchar(10) NOT NULL,
  `Lab_ID` varchar(10) DEFAULT NULL,
  `Coordinator_ID` varchar(10) DEFAULT NULL,
  `Time_Slot` varchar(50) DEFAULT NULL,
  `Day` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lab_schedule`
--

INSERT INTO `lab_schedule` (`Schedule_ID`, `Lab_ID`, `Coordinator_ID`, `Time_Slot`, `Day`) VALUES
('LS001', 'L001', 'C001', '08.00 a.m.', '2025-06-23'),
('LS002', 'L002', 'C002', '08.00 a.m.', '2025-06-24'),
('LS003', 'L003', 'C003', '08.00 a.m.', '2025-06-25');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `Notification_ID` varchar(10) NOT NULL,
  `Request_ID` varchar(10) DEFAULT NULL,
  `Message_Content` varchar(255) DEFAULT NULL,
  `Timestamp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`Notification_ID`, `Request_ID`, `Message_Content`, `Timestamp`) VALUES
('N001', 'R001', 'Your reschedule request has been accepted', '26-06-2025 10.00a.m.'),
('N6862d0f6b', 'R175130642', 'Your reschedule request (R175130642) has been approved. New date: 2025-06-26, Slot: 08.00 a.m.- 10.00 a.m..', '2025-06-30 20:01:26'),
('N6862d0fa8', 'R175130645', 'Your reschedule request (R175130645) has been rejected.', '2025-06-30 20:01:30'),
('N6862d0fd6', 'R175130646', 'Your reschedule request (R175130646) has been approved. New date: 2025-06-30, Slot: 08.00 a.m.- 10.00 a.m..', '2025-06-30 20:01:33'),
('N6862d1ef4', 'R175130672', 'Your reschedule request (R175130672) has been approved. New date: 2025-06-30, Slot: 08.00 a.m.- 10.00 a.m..', '2025-06-30 20:05:35'),
('N6862d2843', 'R175130687', 'Your reschedule request (R175130687) has been approved. New date: 2025-06-29, Slot: 08.00 a.m.- 10.00 a.m..', '2025-06-30 20:08:04'),
('N6862d2ff2', 'R175130699', 'Your reschedule request (R175130699) has been approved. New date: 2025-06-25, Slot: 08.00 a.m.- 10.00 a.m..', '2025-06-30 20:10:07'),
('N6862d66ad', 'R175130787', 'Your reschedule request (R175130787) has been approved. New date: 2025-06-30, Slot: 08.00 a.m.- 10.00 a.m..', '2025-06-30 20:24:42'),
('N6862d7312', 'R175130807', 'Your reschedule request (R175130807) has been approved. New date: 2025-06-30, Slot: 08.00 a.m.- 10.00 a.m..', '2025-06-30 20:28:01'),
('N6862d7bdb', 'R175130821', 'Your reschedule request (R175130821) has been approved. New date: 2025-07-24, Slot: 08.00 a.m.- 10.00 a.m..', '2025-06-30 20:30:21'),
('N6862d9043', 'R175130853', 'Your reschedule request (R175130853) has been approved. New date: 2025-07-23, Slot: 08.00 a.m.- 10.00 a.m..', '2025-06-30 20:35:48'),
('N6862daf76', 'R175130902', 'Your reschedule request (R175130902) has been approved. New date: 2025-07-01, Slot: 08.00 a.m.- 10.00 a.m..', '2025-06-30 20:44:07'),
('N6862dc4dc', 'R175130937', 'Your reschedule request (R175130937) has been approved. New date: 2025-07-01, Slot: 08.00 a.m.- 10.00 a.m..', '2025-06-30 20:49:49');

-- --------------------------------------------------------

--
-- Table structure for table `notification_recipient`
--

CREATE TABLE `notification_recipient` (
  `Notification_ID` varchar(10) NOT NULL,
  `Recipient_ID` varchar(20) NOT NULL,
  `Recipient_Role` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification_recipient`
--

INSERT INTO `notification_recipient` (`Notification_ID`, `Recipient_ID`, `Recipient_Role`) VALUES
('N001', '2022/E/173', 'Student'),
('N6862d0f6b', '2022/E/090', 'Student'),
('N6862d0fa8', '2022/E/090', 'Student'),
('N6862d0fd6', '2022/E/090', 'Student'),
('N6862d1ef4', '2022/E/173', 'Student'),
('N6862d2843', '2022/E/167', 'Student'),
('N6862d2ff2', '2022/E/120', 'Student'),
('N6862d66ad', '2022/E/167', 'Student'),
('N6862d7312', '2022/E/173', 'Student'),
('N6862d7bdb', '2022/E/173', 'Student'),
('N6862d9043', '2022/E/008', 'Student'),
('N6862daf76', '2022/E/090', 'Student'),
('N6862dc4dc', '2022/E/173', 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `request_forwarded`
--

CREATE TABLE `request_forwarded` (
  `Request_ID` varchar(10) NOT NULL,
  `Instructor_ID` varchar(10) NOT NULL,
  `Forwaded_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request_forwarded`
--

INSERT INTO `request_forwarded` (`Request_ID`, `Instructor_ID`, `Forwaded_Date`) VALUES
('R001', 'I002', '2025-06-26'),
('R6862c69f5', 'I002', '2025-06-30'),
('R6862c6c13', 'I002', '2025-06-30'),
('R736', 'I002', '2025-06-30');

-- --------------------------------------------------------

--
-- Table structure for table `reschedule_requests`
--

CREATE TABLE `reschedule_requests` (
  `Request_ID` varchar(10) NOT NULL,
  `Student_ID` varchar(20) DEFAULT NULL,
  `Original_Schedule_ID` varchar(10) DEFAULT NULL,
  `Requested_Date` date DEFAULT NULL,
  `Requested_Slot` varchar(50) DEFAULT NULL,
  `Reason` varchar(255) DEFAULT NULL,
  `Request_Status` varchar(50) DEFAULT NULL,
  `Evidence_File` varchar(255) DEFAULT NULL,
  `Shown_to_Instructor` tinyint(1) DEFAULT 0,
  `Coordinator_Remark` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reschedule_requests`
--

INSERT INTO `reschedule_requests` (`Request_ID`, `Student_ID`, `Original_Schedule_ID`, `Requested_Date`, `Requested_Slot`, `Reason`, `Request_Status`, `Evidence_File`, `Shown_to_Instructor`, `Coordinator_Remark`) VALUES
('R001', '2022/E/173', 'LS002', '2025-06-27', '08.00 a.m.- 10.00 a.m.', 'Medical', 'Accepted', NULL, 0, NULL),
('R175130642', '2022/E/090', 'LS001', '2025-06-26', '08.00 a.m.- 10.00 a.m.', 'mid', 'Approved', 'letter.png', 0, NULL),
('R175130645', '2022/E/090', 'LS001', '2025-06-30', '08.00 a.m.- 10.00 a.m.', 'mid\r\n', 'Rejected', 'letter.png', 0, NULL),
('R175130646', '2022/E/090', 'LS001', '2025-06-30', '08.00 a.m.- 10.00 a.m.', 'mid\r\n', 'Approved', 'letter.png', 0, NULL),
('R175130672', '2022/E/173', 'LS001', '2025-06-30', '08.00 a.m.- 10.00 a.m.', 'mid\r\n', 'Approved', 'letter.png', 0, NULL),
('R175130687', '2022/E/167', 'LS001', '2025-06-29', '08.00 a.m.- 10.00 a.m.', 'a', 'Approved', 'letter.png', 0, NULL),
('R175130699', '2022/E/120', 'LS002', '2025-06-25', '08.00 a.m.- 10.00 a.m.', 'b', 'Approved', 'letter.png', 0, NULL),
('R175130787', '2022/E/167', 'LS002', '2025-06-30', '08.00 a.m.- 10.00 a.m.', 'ss', 'Approved', 'letter.png', 0, NULL),
('R175130807', '2022/E/173', 'LS003', '2025-06-30', '08.00 a.m.- 10.00 a.m.', 'dd', 'Approved', 'letter.png', 0, NULL),
('R175130821', '2022/E/173', 'LS001', '2025-07-24', '08.00 a.m.- 10.00 a.m.', 'e', 'Approved', 'tables.png', 0, NULL),
('R175130853', '2022/E/008', 'LS002', '2025-07-23', '08.00 a.m.- 10.00 a.m.', 'd', 'Approved', 'letter.png', 0, NULL),
('R175130902', '2022/E/090', 'LS001', '2025-07-01', '08.00 a.m.- 10.00 a.m.', 'mid', 'Approved', 'letter.png', 0, NULL),
('R175130937', '2022/E/173', 'LS003', '2025-07-01', '08.00 a.m.- 10.00 a.m.', 'mid\r\n', 'Approved', 'letter.png', 0, NULL),
('R6862c69f5', '2022/E/173', 'LS002', '2025-06-27', '08.00 a.m.- 10.00 a.m.', 'Mid exam clash', 'Accepted', NULL, 0, NULL),
('R6862c6c13', '2022/E/173', 'LS002', '2025-06-27', '08.00 a.m.- 10.00 a.m.', 'Mid exam clash', 'Rejected', NULL, 0, NULL),
('R736', '2022/E/173', 'LS002', '2025-06-24', '08.00 a.m.- 10.00 a.m.', 'mid exam', 'Accepted', 'letter.png', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `Review_ID` varchar(10) NOT NULL,
  `Request_ID` varchar(10) DEFAULT NULL,
  `Coordinator_ID` varchar(10) DEFAULT NULL,
  `Review_Date` date DEFAULT NULL,
  `Review_Status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`Review_ID`, `Request_ID`, `Coordinator_ID`, `Review_Date`, `Review_Status`) VALUES
('RW001', 'R001', 'C002', '2025-05-26', 'Reviwed');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_ID` varchar(20) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_ID`, `Name`, `Email`, `Phone`) VALUES
('2022/E/008', 'NAWARATHNE A.D.S.', '2022e008@eng.jfn.ac.lk', '760946455'),
('2022/E/090', 'FERNANDO W.S.B.', '2022e090@eng.jfn.ac.lk', '777646271'),
('2022/E/120', 'LOWE W.M.N.', '2022e120@eng.jfn.ac.lk', '776012723'),
('2022/E/167', 'JAYEKUMAR S.', '2022e167@eng.jfn.ac.lk', '710575450'),
('2022/E/173', 'PERERA W.P.C.K.', '2022e173@eng.jfn.ac.lk', '742600894');

-- --------------------------------------------------------

--
-- Table structure for table `subject_coordinator`
--

CREATE TABLE `subject_coordinator` (
  `Coordinator_ID` varchar(10) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject_coordinator`
--

INSERT INTO `subject_coordinator` (`Coordinator_ID`, `Name`, `Email`) VALUES
('C001', 'VASUNTHAR S.', 'c001@eng.jfn.ac.lk'),
('C002', 'JEYA M.', 'c002@eng.jfn.ac.lk'),
('C003', 'PRANISHA R.', 'c003@eng.jfn.ac.lk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`Attendance_ID`),
  ADD KEY `Student_ID` (`Student_ID`),
  ADD KEY `Lab_ID` (`Lab_ID`);

--
-- Indexes for table `lab`
--
ALTER TABLE `lab`
  ADD PRIMARY KEY (`Lab_ID`);

--
-- Indexes for table `lab_instructor`
--
ALTER TABLE `lab_instructor`
  ADD PRIMARY KEY (`Instructor_ID`);

--
-- Indexes for table `lab_schedule`
--
ALTER TABLE `lab_schedule`
  ADD PRIMARY KEY (`Schedule_ID`),
  ADD KEY `Lab_ID` (`Lab_ID`),
  ADD KEY `Coordinator_ID` (`Coordinator_ID`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`Notification_ID`),
  ADD KEY `Request_ID` (`Request_ID`);

--
-- Indexes for table `notification_recipient`
--
ALTER TABLE `notification_recipient`
  ADD PRIMARY KEY (`Notification_ID`,`Recipient_ID`);

--
-- Indexes for table `request_forwarded`
--
ALTER TABLE `request_forwarded`
  ADD PRIMARY KEY (`Request_ID`,`Instructor_ID`),
  ADD KEY `Instructor_ID` (`Instructor_ID`);

--
-- Indexes for table `reschedule_requests`
--
ALTER TABLE `reschedule_requests`
  ADD PRIMARY KEY (`Request_ID`),
  ADD KEY `Student_ID` (`Student_ID`),
  ADD KEY `Original_Schedule_ID` (`Original_Schedule_ID`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`Review_ID`),
  ADD KEY `Request_ID` (`Request_ID`),
  ADD KEY `Coordinator_ID` (`Coordinator_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `subject_coordinator`
--
ALTER TABLE `subject_coordinator`
  ADD PRIMARY KEY (`Coordinator_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_ID`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`Lab_ID`) REFERENCES `lab` (`Lab_ID`);

--
-- Constraints for table `lab_schedule`
--
ALTER TABLE `lab_schedule`
  ADD CONSTRAINT `lab_schedule_ibfk_1` FOREIGN KEY (`Lab_ID`) REFERENCES `lab` (`Lab_ID`),
  ADD CONSTRAINT `lab_schedule_ibfk_2` FOREIGN KEY (`Coordinator_ID`) REFERENCES `subject_coordinator` (`Coordinator_ID`);

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`Request_ID`) REFERENCES `reschedule_requests` (`Request_ID`);

--
-- Constraints for table `notification_recipient`
--
ALTER TABLE `notification_recipient`
  ADD CONSTRAINT `notification_recipient_ibfk_1` FOREIGN KEY (`Notification_ID`) REFERENCES `notification` (`Notification_ID`);

--
-- Constraints for table `request_forwarded`
--
ALTER TABLE `request_forwarded`
  ADD CONSTRAINT `request_forwarded_ibfk_1` FOREIGN KEY (`Request_ID`) REFERENCES `reschedule_requests` (`Request_ID`),
  ADD CONSTRAINT `request_forwarded_ibfk_2` FOREIGN KEY (`Instructor_ID`) REFERENCES `lab_instructor` (`Instructor_ID`);

--
-- Constraints for table `reschedule_requests`
--
ALTER TABLE `reschedule_requests`
  ADD CONSTRAINT `reschedule_requests_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_ID`),
  ADD CONSTRAINT `reschedule_requests_ibfk_2` FOREIGN KEY (`Original_Schedule_ID`) REFERENCES `lab_schedule` (`Schedule_ID`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`Request_ID`) REFERENCES `reschedule_requests` (`Request_ID`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`Coordinator_ID`) REFERENCES `subject_coordinator` (`Coordinator_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
