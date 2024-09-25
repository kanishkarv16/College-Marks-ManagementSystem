-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2022 at 06:43 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srms1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `userid` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`userid`, `password`) VALUES
('admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `name` varchar(30) NOT NULL,
  `id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`name`, `id`) VALUES
('CSE-A', 1),
('CSE-B', 2),
('CSE-C', 3),
('CSE-D', 4);

-- --------------------------------------------------------

--
-- Table structure for table `performance`
--

CREATE TABLE `performance` (
  `Subject` varchar(42) DEFAULT NULL,
  `code` varchar(9) NOT NULL,
  `Og` varchar(6) DEFAULT NULL,
  `aa` varchar(2) DEFAULT NULL,
  `a` varchar(2) DEFAULT NULL,
  `bb` varchar(2) DEFAULT NULL,
  `b` varchar(2) DEFAULT NULL,
  `c` varchar(1) DEFAULT NULL,
  `pass` varchar(4) DEFAULT NULL,
  `fail` varchar(4) DEFAULT NULL,
  `class` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `performance`
--

INSERT INTO `performance` (`Subject`, `code`, `Og`, `aa`, `a`, `bb`, `b`, `c`, `pass`, `fail`, `class`) VALUES
('Probability, Statistics and Queuing Theory', '19BS1MT11', '24', '27', '9', '4', '2', '0', '66', '0', 'CSE-D'),
('Engineering Economics and Accountancy', '19HS1MG02', '0', '7', '33', '21', '4', '1', '66', '0', 'CSE-D'),
('Formal Languages and Automata Theory', '19PC1CS05', '5', '16', '21', '11', '10', '2', '65', '1', 'CSE-D'),
('Software Engineering', '19PC1CS06', '1', '16', '23', '21', '4', '1', '66', '0', 'CSE-D'),
('Java Programming', '19PC1IT02', '1', '34', '22', '4', '5', '0', '66', '0', 'CSE-D'),
('Computer Organization', '19PC1IT03', '0', '5', '21', '26', '10', '4', '66', '0', 'CSE-D');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `name` varchar(30) NOT NULL,
  `rno` varchar(10) NOT NULL,
  `class` varchar(30) NOT NULL,
  `p1` int(3) NOT NULL,
  `p2` int(3) NOT NULL,
  `p3` int(3) NOT NULL,
  `p4` int(3) NOT NULL,
  `p5` int(3) NOT NULL,
  `marks` int(3) NOT NULL,
  `percentage` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`name`, `rno`, `class`, `p1`, `p2`, `p3`, `p4`, `p5`, `marks`, `percentage`) VALUES
('Apoorva Yarlagadda', '20071A05J1', 'CSE-4', 95, 95, 95, 95, 100, 480, 96);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `SNO` int(3) NOT NULL,
  `name` varchar(35) DEFAULT NULL,
  `rno` varchar(10) NOT NULL,
  `class` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `p1` int(2) DEFAULT NULL,
  `p2` int(2) DEFAULT NULL,
  `p3` int(2) DEFAULT NULL,
  `p4` int(2) DEFAULT NULL,
  `p5` int(2) DEFAULT NULL,
  `p6` int(2) DEFAULT NULL,
  `sgpa` decimal(4,2) DEFAULT NULL,
  `Img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`SNO`, `name`, `rno`, `class`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`, `sgpa`, `Img`) VALUES
(1, 'APOORVA YARLAGADDA', '20071A05J1', 'CSE-D', 8, 8, 9, 9, 9, 9, '8.86', 'images/Apoorva.jpg'),
(2, 'ARETLA PRANEETH', '20071A05J2', 'CSE-D', 7, 8, 7, 8, 9, 8, '8.08', ''),
(3, 'AULUGALA VINAY KUMAR', '20071A05J3', 'CSE-D', 8, 7, 7, 8, 10, 8, '8.22', ''),
(4, 'B NEHA REDDY', '20071A05J4', 'CSE-D', 9, 9, 9, 9, 10, 9, '9.29', 'images/Neha.jpg'),
(5, 'BANDARU SIRI', '20071A05J5', 'CSE-D', 9, 8, 9, 9, 10, 9, '9.15', ''),
(6, 'BELIDE PRASANNA LAXMI', '20071A05J6', 'CSE-D', 5, 7, 7, 7, 7, 8, '7.29', ''),
(7, 'BHANU TEJA CHAPALA', '20071A05J7', 'CSE-D', 8, 8, 8, 8, 9, 7, '8.29', ''),
(8, 'BUSSA SUMUKHI', '20071A05J8', 'CSE-D', 7, 7, 7, 8, 9, 8, '8.00', ''),
(9, 'BUTALI RAMESH', '20071A05J9', 'CSE-D', 7, 7, 8, 8, 9, 7, '7.93', ''),
(10, 'C S N V RAM SREE SANTHOSH', '20071A05K0', 'CSE-D', 7, 7, 7, 9, 9, 9, '8.29', ''),
(11, 'CHINDAM POOJITHA', '20071A05K1', 'CSE-D', 8, 8, 8, 8, 10, 9, '8.72', ''),
(12, 'CHINTAKUNTLA HARSHAVARDHAN REDDY', '20071A05K2', 'CSE-D', 7, 7, 8, 8, 9, 8, '8.08', ''),
(13, 'CHIRANJIVA RAO ATLURI', '20071A05K3', 'CSE-D', 7, 7, 9, 6, 7, 7, '7.50', ''),
(14, 'DURGAM SRIDHAR', '20071A05K4', 'CSE-D', 5, 6, 6, 6, 9, 7, '6.72', ''),
(15, 'GADDAM SAITEJA REDDY', '20071A05K5', 'CSE-D', 7, 8, 6, 7, 7, 9, '7.43', ''),
(16, 'GADDAM SHIVA KUMAR REDDY', '20071A05K6', 'CSE-D', 9, 8, 10, 9, 10, 9, '9.29', ''),
(17, 'GAVINI SREYA', '20071A05K7', 'CSE-D', 8, 8, 9, 9, 9, 9, '8.86', ''),
(18, 'GORUGANTULA V S J KARTHIK', '20071A05K8', 'CSE-D', 8, 8, 10, 9, 10, 9, '9.15', ''),
(19, 'GUJJU PAVAN TEJA', '20071A05K9', 'CSE-D', 6, 7, 7, 7, 8, 8, '7.29', ''),
(20, 'IREDDY SAIPRAKASH REDDY', '20071A05M0', 'CSE-D', 6, 7, 8, 8, 8, 7, '7.58', ''),
(21, 'JUHEE VARMA', '20071A05M1', 'CSE-D', 9, 8, 9, 9, 10, 9, '9.15', ''),
(22, 'KADARLA ANUSREE', '20071A05M2', 'CSE-D', 8, 8, 10, 9, 10, 10, '9.29', ''),
(23, 'KAMBHAMPATI KODANDA SAI HARSHITHA', '20071A05M3', 'CSE-D', 8, 8, 10, 10, 10, 8, '9.15', ''),
(24, 'KANDULA JAYAKAR', '20071A05M4', 'CSE-D', 7, 8, 6, 8, 8, 7, '7.58', ''),
(25, 'KARRE HANISH', '20071A05M5', 'CSE-D', 6, 7, 9, 9, 10, 7, '8.15', ''),
(26, 'KATAKAM ASHRITHA', '20071A05M6', 'CSE-D', 8, 9, 9, 9, 10, 8, '9.00', ''),
(27, 'KOPILA ANURAG', '20071A05M7', 'CSE-D', 7, 7, 8, 8, 8, 7, '7.65', ''),
(28, 'KULURU SUDEEP REDDY', '20071A05M8', 'CSE-D', 6, 8, 7, 8, 9, 8, '7.86', ''),
(29, 'KUMMARI SHASHIDHAR', '20071A05M9', 'CSE-D', 7, 7, 9, 9, 9, 7, '8.15', ''),
(30, 'KURVA AKHILESH KUMAR', '20071A05N0', 'CSE-D', 6, 7, 0, 7, 8, 6, '0.00', ''),
(31, 'MANGINAPALLY SHIVA PRASAD', '20071A05N1', 'CSE-D', 8, 8, 7, 9, 9, 7, '8.15', ''),
(32, 'MANIKARAO VENKATA SAHITH', '20071A05N2', 'CSE-D', 5, 5, 5, 6, 7, 6, '6.00', ''),
(33, 'MEDIPALLY ABINAY', '20071A05N3', 'CSE-D', 8, 9, 8, 8, 10, 8, '8.58', ''),
(34, 'MOOLA SAI SUDHA', '20071A05N4', 'CSE-D', 7, 8, 8, 8, 10, 7, '8.22', ''),
(35, 'MOVVA NAVATHA', '20071A05N5', 'CSE-D', 7, 8, 9, 9, 9, 8, '8.43', ''),
(36, 'PANDIRI SAI DUSHYANTH', '20071A05N6', 'CSE-D', 6, 8, 8, 8, 9, 7, '7.86', ''),
(37, 'PASHAM NARENDRA KUMAR', '20071A05N7', 'CSE-D', 6, 8, 9, 9, 9, 7, '8.22', ''),
(38, 'PASHAM NITHEESH REDDY', '20071A05N8', 'CSE-D', 7, 9, 7, 9, 9, 8, '8.22', ''),
(39, 'PATHA SRIJA', '20071A05N9', 'CSE-D', 8, 8, 8, 9, 10, 8, '8.65', ''),
(40, 'PENDYALA DIVYA TEJA', '20071A05P0', 'CSE-D', 8, 9, 10, 9, 10, 9, '9.29', ''),
(41, 'PULIPAKA PAUL SANDEEP', '20071A05P1', 'CSE-D', 7, 8, 6, 9, 10, 8, '8.15', ''),
(42, 'RASHMITHA NAYAK', '20071A05P2', 'CSE-D', 8, 9, 8, 9, 9, 9, '8.79', ''),
(43, 'REDDYSHETTY SAMPREETH', '20071A05P3', 'CSE-D', 7, 7, 9, 8, 10, 9, '8.43', ''),
(44, 'RISHIKA REDDY BADDAM', '20071A05P4', 'CSE-D', 7, 8, 8, 8, 9, 8, '8.29', ''),
(45, 'S DURGA PRASAD', '20071A05P5', 'CSE-D', 8, 8, 8, 9, 10, 8, '8.58', ''),
(46, 'S V SAI SRIKAR', '20071A05P6', 'CSE-D', 7, 8, 8, 9, 8, 8, '8.15', ''),
(47, 'SAI AKHIL KAKUMANU', '20071A05P7', 'CSE-D', 8, 8, 8, 9, 10, 9, '8.72', ''),
(48, 'SAMA SARTHAN', '20071A05P8', 'CSE-D', 7, 6, 6, 8, 9, 7, '7.36', ''),
(49, 'SHAIK JNAVED', '20071A05P9', 'CSE-D', 6, 7, 8, 9, 10, 8, '8.29', ''),
(50, 'SHAIK SABEEHA KOUSER', '20071A05Q0', 'CSE-D', 7, 8, 8, 9, 9, 8, '8.36', ''),
(51, 'SHIVANI VISHLAVATH', '20071A05Q1', 'CSE-D', 8, 8, 9, 8, 8, 8, '8.29', ''),
(52, 'SRIRANGAM SREEJA', '20071A05Q2', 'CSE-D', 8, 8, 9, 8, 10, 7, '8.43', ''),
(53, 'SRISTI KRISHNA KIRAN', '20071A05Q3', 'CSE-D', 8, 7, 9, 8, 10, 8, '8.50', ''),
(54, 'SURE PRAVALIKA', '20071A05Q4', 'CSE-D', 7, 8, 9, 9, 9, 8, '8.43', ''),
(55, 'THOKALA AKSHITH REDDY', '20071A05Q5', 'CSE-D', 7, 7, 6, 9, 10, 7, '7.86', ''),
(56, 'TUMU SAI PRANAV', '20071A05Q6', 'CSE-D', 7, 7, 7, 9, 9, 7, '7.93', ''),
(57, 'VADTHYA DEEPAK', '20071A05Q7', 'CSE-D', 7, 7, 6, 9, 9, 6, '7.58', ''),
(58, 'VARAKANTHAM DILIP KUMAR', '20071A05Q8', 'CSE-D', 6, 8, 6, 6, 9, 7, '7.29', ''),
(59, 'YASWANTH SAI YADLAPALLI', '20071A05Q9', 'CSE-D', 7, 7, 6, 8, 8, 7, '7.36', ''),
(60, 'YELALA CHINNOLA KRUTHIK REDDY', '20071A05R0', 'CSE-D', 5, 6, 5, 6, 6, 5, '5.79', ''),
(61, 'ADUPA MANIDEEPAK', '21075A0519', 'CSE-D', 7, 8, 8, 9, 9, 7, '8.22', ''),
(62, 'KUNDARAM SHIVA KUMAR', '21075A0520', 'CSE-D', 7, 8, 6, 9, 9, 7, '8.00', ''),
(63, 'MEDA AJAY KUMAR', '21075A0521', 'CSE-D', 6, 6, 7, 8, 6, 6, '6.79', ''),
(64, 'MIRZA IRFAN BAIG', '21075A0522', 'CSE-D', 8, 9, 8, 9, 9, 9, '8.86', ''),
(65, 'NERELLAKUNTA DIVYA', '21075A0523', 'CSE-D', 8, 7, 8, 9, 8, 8, '8.15', ''),
(66, 'U VIJITHA', '21075A0524', 'CSE-D', 9, 8, 8, 9, 10, 9, '9.00', '');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `name` varchar(30) NOT NULL,
  `rno` varchar(10) NOT NULL,
  `class_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`name`, `rno`, `class_name`) VALUES
('Apoorva Yarlagadda', '20071A05J1', 'CSE-4'),
('B Neha Reddy', '20071A05J4', 'CSE-4'),
('Gavini Sreya', '20071A05K7', 'CSE-4'),
('Manideepak Adupa', '21075A0519', 'CSE-4'),
('Rishika Reddy Baddam', '20071A05P4', 'CSE-4');

-- --------------------------------------------------------

--
-- Table structure for table `student_1`
--

CREATE TABLE `student_1` (
  `sno` int(3) DEFAULT NULL,
  `name` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `rno` varchar(10) CHARACTER SET latin1 NOT NULL,
  `class_name` varchar(30) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_1`
--

INSERT INTO `student_1` (`sno`, `name`, `rno`, `class_name`) VALUES
(NULL, 'Anirudh', '20071A05J0', 'CSE-D'),
(1, 'APOORVA YARLAGADDA', '20071A05J1', 'CSE-D'),
(2, 'ARETLA PRANEETH', '20071A05J2', 'CSE-D'),
(3, 'AULUGALA VINAY KUMAR', '20071A05J3', 'CSE-D'),
(4, 'B NEHA REDDY', '20071A05J4', 'CSE-D'),
(5, 'BANDARU SIRI', '20071A05J5', 'CSE-D'),
(6, 'BELIDE PRASANNA LAXMI', '20071A05J6', 'CSE-D'),
(7, 'BHANU TEJA CHAPALA', '20071A05J7', 'CSE-D'),
(8, 'BUSSA SUMUKHI', '20071A05J8', 'CSE-D'),
(9, 'BUTALI RAMESH', '20071A05J9', 'CSE-D'),
(10, 'C S N V RAM SREE SANTHOSH', '20071A05K0', 'CSE-D'),
(11, 'CHINDAM POOJITHA', '20071A05K1', 'CSE-D'),
(12, 'CHINTAKUNTLA HARSHAVARDHAN RED', '20071A05K2', 'CSE-D'),
(13, 'CHIRANJIVA RAO ATLURI', '20071A05K3', 'CSE-D'),
(14, 'DURGAM SRIDHAR', '20071A05K4', 'CSE-D'),
(15, 'GADDAM SAITEJA REDDY', '20071A05K5', 'CSE-D'),
(16, 'GADDAM SHIVA KUMAR REDDY', '20071A05K6', 'CSE-D'),
(17, 'GAVINI SREYA', '20071A05K7', 'CSE-D'),
(18, 'GORUGANTULA V S J KARTHIK', '20071A05K8', 'CSE-D'),
(19, 'GUJJU PAVAN TEJA', '20071A05K9', 'CSE-D'),
(20, 'IREDDY SAIPRAKASH REDDY', '20071A05M0', 'CSE-D'),
(21, 'JUHEE VARMA', '20071A05M1', 'CSE-D'),
(22, 'KADARLA ANUSREE', '20071A05M2', 'CSE-D'),
(23, 'KAMBHAMPATI KODANDA SAI HARSHI', '20071A05M3', 'CSE-D'),
(24, 'KANDULA JAYAKAR', '20071A05M4', 'CSE-D'),
(25, 'KARRE HANISH', '20071A05M5', 'CSE-D'),
(26, 'KATAKAM ASHRITHA', '20071A05M6', 'CSE-D'),
(27, 'KOPILA ANURAG', '20071A05M7', 'CSE-D'),
(28, 'KULURU SUDEEP REDDY', '20071A05M8', 'CSE-D'),
(29, 'KUMMARI SHASHIDHAR', '20071A05M9', 'CSE-D'),
(30, 'KURVA AKHILESH KUMAR', '20071A05N0', 'CSE-D'),
(31, 'MANGINAPALLY SHIVA PRASAD', '20071A05N1', 'CSE-D'),
(32, 'MANIKARAO VENKATA SAHITH', '20071A05N2', 'CSE-D'),
(33, 'MEDIPALLY ABINAY', '20071A05N3', 'CSE-D'),
(34, 'MOOLA SAI SUDHA', '20071A05N4', 'CSE-D'),
(35, 'MOVVA NAVATHA', '20071A05N5', 'CSE-D'),
(36, 'PANDIRI SAI DUSHYANTH', '20071A05N6', 'CSE-D'),
(37, 'PASHAM NARENDRA KUMAR', '20071A05N7', 'CSE-D'),
(38, 'PASHAM NITHEESH REDDY', '20071A05N8', 'CSE-D'),
(39, 'PATHA SRIJA', '20071A05N9', 'CSE-D'),
(40, 'PENDYALA DIVYA TEJA', '20071A05P0', 'CSE-D'),
(41, 'PULIPAKA PAUL SANDEEP', '20071A05P1', 'CSE-D'),
(42, 'RASHMITHA NAYAK', '20071A05P2', 'CSE-D'),
(43, 'REDDYSHETTY SAMPREETH', '20071A05P3', 'CSE-D'),
(44, 'RISHIKA REDDY BADDAM', '20071A05P4', 'CSE-D'),
(45, 'S DURGA PRASAD', '20071A05P5', 'CSE-D'),
(46, 'S V SAI SRIKAR', '20071A05P6', 'CSE-D'),
(47, 'SAI AKHIL KAKUMANU', '20071A05P7', 'CSE-D'),
(48, 'SAMA SARTHAN', '20071A05P8', 'CSE-D'),
(49, 'SHAIK JNAVED', '20071A05P9', 'CSE-D'),
(50, 'SHAIK SABEEHA KOUSER', '20071A05Q0', 'CSE-D'),
(51, 'SHIVANI VISHLAVATH', '20071A05Q1', 'CSE-D'),
(52, 'SRIRANGAM SREEJA', '20071A05Q2', 'CSE-D'),
(53, 'SRISTI KRISHNA KIRAN', '20071A05Q3', 'CSE-D'),
(54, 'SURE PRAVALIKA', '20071A05Q4', 'CSE-D'),
(55, 'THOKALA AKSHITH REDDY', '20071A05Q5', 'CSE-D'),
(56, 'TUMU SAI PRANAV', '20071A05Q6', 'CSE-D'),
(57, 'VADTHYA DEEPAK', '20071A05Q7', 'CSE-D'),
(58, 'VARAKANTHAM DILIP KUMAR', '20071A05Q8', 'CSE-D'),
(59, 'YASWANTH SAI YADLAPALLI', '20071A05Q9', 'CSE-D'),
(60, 'YELALA CHINNOLA KRUTHIK REDDY', '20071A05R0', 'CSE-D'),
(61, 'ADUPA MANIDEEPAK', '21075A0519', 'CSE-D'),
(62, 'KUNDARAM SHIVA KUMAR', '21075A0520', 'CSE-D'),
(63, 'MEDA AJAY KUMAR', '21075A0521', 'CSE-D'),
(64, 'MIRZA IRFAN BAIG', '21075A0522', 'CSE-D'),
(65, 'NERELLAKUNTA DIVYA', '21075A0523', 'CSE-D'),
(66, 'U VIJITHA', '21075A0524', 'CSE-D');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `performance`
--
ALTER TABLE `performance`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD KEY `class` (`class`),
  ADD KEY `name` (`name`,`rno`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`name`,`rno`),
  ADD KEY `class_name` (`class_name`);

--
-- Indexes for table `student_1`
--
ALTER TABLE `student_1`
  ADD PRIMARY KEY (`rno`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `result_ibfk_2` FOREIGN KEY (`name`,`rno`) REFERENCES `students` (`name`, `rno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
