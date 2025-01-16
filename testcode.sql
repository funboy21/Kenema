-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2025 at 06:38 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmabill`
--
CREATE DATABASE IF NOT EXISTS `testcode` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `testcode`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `userId` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `firstname` varchar(15) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`userId`, `username`, `firstname`, `lastname`, `email`, `phone`, `password`, `date_added`) VALUES
('PB45721', 'testpharma2', 'Jim', 'Insane', 'day@email.com', 2147483647, '23343253', '2025-01-07 08:53:00'),
('PB73156', 'testpharma', 'John', 'Pharma', 'jpharma@email.com', 789897655, '78787878', '2025-01-07 08:51:33'),
('PB65312', 'testadmin3', 'Monana', 'Tester', 'mtest@email.com', 42532135, '36765432', '2025-01-07 11:55:55'),
('uid', 'admin', 'firstname', 'lastname', 'user@email.com', 256789, 'root', '2025-01-07 16:24:11');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `billID` varchar(10) NOT NULL,
  `patientID` varchar(10) NOT NULL,
  `medCategory` varchar(100) NOT NULL,
  `medName` varchar(100) NOT NULL,
  `medQuantity` int(11) NOT NULL,
  `medPrice` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`billID`, `patientID`, `medCategory`, `medName`, `medQuantity`, `medPrice`, `Total`, `date_added`) VALUES
('123', '321', 'aeds', 'fred', 2, 5, 10, '2025-01-06 20:01:04'),
('B12679', '12345676', 'ANAESTHETICS', ' Paracetamol', 78, 7, 546, '2025-01-07 14:21:24'),
('B14394', '56577788', 'Hormones and antihormones', 'Amphotericin B', 5, 250, 1250, '2025-01-07 11:28:49'),
('B17425', '23234566', 'ANAESTHETICS', ' Atropine sulphate', 10, 1000, 10000, '2025-01-07 06:10:04'),
('B23489', '56577788', 'ANAESTHETICS', ' Atropine sulphate', 10, 20, 200, '2025-01-07 11:28:11'),
('B33328', '453352', 'Antifungals', 'Amphotericin B', 45, 3, 135, '2025-01-07 12:09:24'),
('B50878', '56577788', 'ANTIALLERGICS and ANAPHYLAXIS', 'Aspirin', 6, 10, 60, '2025-01-07 11:34:11'),
('B60502', '986', 'PAIN and PALLIATIVE CARE', 'Benzathine benzylpenicillin', 2, 6, 12, '2025-01-07 12:16:56'),
('B75348', '12345676', 'Pain Releaver', 'Activated charcoal', 23, 2, 46, '2025-01-07 15:24:28'),
('B81466', '2344553', 'ANAESTHETICS', ' Atropine sulphate', 10, 12, 120, '2025-01-07 06:08:05'),
('B89400', '986', 'Antivirals', 'Azithromycin', 50, 4, 200, '2025-01-07 12:11:56');

-- --------------------------------------------------------

--


--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `medID` int(11) NOT NULL,
  `medCategory` varchar(100) NOT NULL,
  `medName` varchar(100) NOT NULL,
  `medQuantity` int(11) NOT NULL,
  `medPrice` int(11) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`medID`, `medCategory`, `medName`, `medQuantity`, `medPrice`, `date_added`) VALUES
(2, 'ANAESTHETICS', 'Isoflurane', 0, 0, '2025-01-01 11:31:05'),
(3, 'ANAESTHETICS', 'Medical air', 0, 0, '2025-01-01 11:31:05'),
(4, 'ANAESTHETICS', 'Nitrous oxide', 0, 0, '2025-01-01 11:31:05'),
(5, 'ANAESTHETICS', 'Oxygen', 0, 0, '2025-01-01 11:31:05'),
(6, 'ANAESTHETICS', 'Ketamine hydrochloride', 20, 15, '2025-01-06 20:04:05'),
(7, 'ANAESTHETICS', 'Propofol26', 0, 0, '2025-01-01 11:31:05'),
(8, 'ANAESTHETICS', 'Thiopental sodium', 0, 0, '2025-01-01 11:31:05'),
(9, 'ANAESTHETICS', 'Bupivacaine HCl', 0, 0, '2025-01-01 11:31:05'),
(10, 'ANAESTHETICS', 'Lidocaine HCl', 0, 0, '2025-01-01 11:31:05'),
(11, 'ANAESTHETICS', 'Lidocaine HCl + epinephrine (adrenaline)', 0, 0, '2025-01-01 11:31:05'),
(12, 'ANAESTHETICS', 'Atropine sulphate', 0, 0, '2025-01-01 11:31:05'),
(13, 'ANAESTHETICS', 'Midazolam', 0, 0, '2025-01-01 11:31:05'),
(14, 'ANAESTHETICS', 'Morphine', 0, 0, '2025-01-01 11:31:05'),
(15, 'PAIN and PALLIATIVE CARE', 'Aspirin', 0, 0, '2025-01-01 11:31:05'),
(16, 'PAIN and PALLIATIVE CARE', 'Ibuprofen', 0, 0, '2025-01-01 11:31:05'),
(17, 'PAIN and PALLIATIVE CARE', ' Paracetamol', 0, 0, '2025-01-01 11:31:05'),
(18, 'PAIN and PALLIATIVE CARE', 'Codeine phosphate', 0, 0, '2025-01-01 11:31:05'),
(19, 'PAIN and PALLIATIVE CARE', 'Morphine', 0, 0, '2025-01-01 11:31:05'),
(20, 'PAIN and PALLIATIVE CARE', 'Amitriptyline', 0, 0, '2025-01-01 11:31:05'),
(21, 'PAIN and PALLIATIVE CARE', 'Bisacodyl', 0, 0, '2025-01-01 11:31:05'),
(22, 'PAIN and PALLIATIVE CARE', 'Dexamethasone', 0, 0, '2025-01-01 11:31:05'),
(23, 'PAIN and PALLIATIVE CARE', 'Diazepam', 0, 0, '2025-01-01 11:31:05'),
(24, 'PAIN and PALLIATIVE CARE', 'Diazepam', 0, 0, '2025-01-01 11:31:05'),
(25, 'PAIN and PALLIATIVE CARE', 'Gabapentin', 0, 0, '2025-01-01 11:31:05'),
(26, 'PAIN and PALLIATIVE CARE', 'Haloperidol', 0, 0, '2025-01-01 11:31:05'),
(27, 'PAIN and PALLIATIVE CARE', 'Metoclopramide', 0, 0, '2025-01-01 11:31:05'),
(28, 'ANTIALLERGICS and ANAPHYLAXIS', 'Cetirizine HCl', 0, 0, '2025-01-01 11:31:05'),
(29, 'ANTIALLERGICS and ANAPHYLAXIS', 'Dexamethasone', 0, 0, '2025-01-01 11:31:05'),
(30, 'ANTIALLERGICS and ANAPHYLAXIS', 'Epinephrine (adrenaline)', 0, 0, '2025-01-01 11:31:05'),
(31, 'ANTIALLERGICS and ANAPHYLAXIS', 'Prednisolone', 0, 0, '2025-01-01 11:31:05'),
(32, 'ANTIDOTES and  POISONING', 'Activated charcoal', 0, 0, '2025-01-01 11:31:05'),
(33, 'ANTIDOTES and POISONING', 'Acetylcysteine', 0, 0, '2025-01-01 11:31:05'),
(34, 'ANTIDOTES and POISONING', ' Atropine sulphate', 0, 0, '2025-01-01 11:31:05'),
(35, 'ANTIDOTES and POISONING', 'Deferasirox', 0, 0, '2025-01-01 11:31:05'),
(36, 'ANTIDOTES and POISONING', 'Flumazenil', 0, 0, '2025-01-01 11:31:05'),
(37, 'ANTIDOTES and POISONING', 'Flumazenil', 0, 0, '2025-01-01 11:31:05'),
(38, 'ANTIDOTES and POISONING', 'Naloxone hydrochloride', 0, 0, '2025-01-01 11:31:05'),
(39, 'ANTIDOTES and POISONING', 'Fomepizole sulphate', 0, 0, '2025-01-01 11:31:05'),
(40, 'ANTIDOTES and POISONING', 'Penicillamine', 0, 0, '2025-01-01 11:31:05'),
(41, 'ANTIDOTES and POISONING', 'Sodium calcium edetate', 0, 0, '2025-01-01 11:31:05'),
(42, 'ANTIDOTES and POISONING', 'Sodium nitrite', 0, 0, '2025-01-01 11:31:05'),
(43, 'ANTIDOTES and POISONING', 'Succimer', 0, 0, '2025-01-01 11:31:05'),
(44, 'ANTIDOTES and POISONING', 'Carbamazepine', 0, 0, '2025-01-01 11:31:05'),
(45, 'ANTIDOTES and POISONING', 'Diazepam', 0, 0, '2025-01-01 11:31:05'),
(46, 'ANTIDOTES and POISONING', ' Phenytoin sodium', 0, 0, '2025-01-01 11:31:05'),
(47, 'Antibacterials', 'Amoxicillin', 0, 0, '2025-01-01 11:31:05'),
(48, 'Antibacterials', 'Benzathine benzylpenicillin', 0, 0, '2025-01-01 11:31:05'),
(49, 'Antibacterials', 'Cefixime', 0, 0, '2025-01-01 11:31:05'),
(50, 'Antibacterials', 'Cefazolin', 0, 0, '2025-01-01 11:31:05'),
(51, 'Antibacterials', 'Ceftriaxone62  (as sodium salt)', 0, 0, '2025-01-01 11:31:05'),
(52, 'Antibacterials', 'Flucloxacillin (as sodium salt)', 0, 0, '2025-01-01 11:31:05'),
(53, 'Antibacterials', 'Azithromycin', 0, 0, '2025-01-01 11:31:05'),
(54, 'Antibacterials', 'Ciprofloxacin', 0, 0, '2025-01-01 11:31:05'),
(55, 'Antibacterials', 'Clarithromycin', 0, 0, '2025-01-01 11:31:05'),
(56, 'Antibacterials', 'Gentamicin', 0, 0, '2025-01-01 11:31:05'),
(57, 'Antibacterials', 'Metronidazole', 0, 0, '2025-01-01 11:31:05'),
(58, 'Antibacterials', 'Clindamycin', 0, 0, '2025-01-01 11:31:05'),
(59, 'Antibacterials', 'Vancomycin', 0, 0, '2025-01-01 11:31:05'),
(60, 'Antifungals', 'Amphotericin B', 0, 0, '2025-01-01 11:31:05'),
(61, 'Antifungals', 'Clotrimazole79', 0, 0, '2025-01-01 11:31:05'),
(62, 'Antifungals', 'Fluconazole', 0, 0, '2025-01-01 11:31:05'),
(63, 'Antifungals', 'Griseofulvin', 0, 0, '2025-01-01 11:31:05'),
(64, 'Antifungals', 'Nystatin', 0, 0, '2025-01-01 11:31:05'),
(65, 'Antivirals', 'Aciclovir', 0, 0, '2025-01-01 11:31:05'),
(66, 'Antivirals', 'Abacavir (ABC)', 0, 0, '2025-01-01 11:31:05'),
(67, 'Antivirals', 'Lamivudine (3TC)', 0, 0, '2025-01-01 11:31:05'),
(68, 'Antivirals', 'Stavudine (d4T)', 0, 0, '2025-01-01 11:31:05'),
(69, 'Antiprotozoals', 'Metronidazole', 0, 0, '2025-01-01 11:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `patient_id` varchar(100) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `patient_email` varchar(100) NOT NULL,
  `patient_phone` varchar(20) NOT NULL,
  `id_number` int(11) NOT NULL,
  `patient_age` int(100) NOT NULL,
  `patient_dob` varchar(100) NOT NULL,
  `patient_gender` varchar(20) NOT NULL,
  `patient_city` varchar(50) NOT NULL,
  `patient_address` varchar(100) NOT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`patient_id`, `first_name`, `last_name`, `patient_email`, `patient_phone`, `id_number`, `patient_age`, `patient_dob`, `patient_gender`, `patient_city`, `patient_address`, `registration_date`) VALUES
('N-15937', 'buy', 'med', 'golal75962@xjiiiij.com', '67897', 986, -1, '2025-01-10', 'Male', 'koko', '', '2025-01-07 12:11:03'),
('N-20929', 'Jim', 'Carrey', 'jim@emajil.com', '098787878', 2344553, 0, '2024-05-08', 'Male', 'mombasa', '', '2025-01-06 14:10:46'),
('N-23404', 'Wanni', 'Doe', 'jim@email.com', '07123456789', 123456783, 7, '2017-06-15', 'Female', 'mombasa', '', '2025-01-06 14:10:52'),
('N-25220', 'patient', 'last', 'patient@email.com', '98754367', 34125688, 56, '2019-09-18', 'Male', 'Nairobi', '56 Ave.', '2019-06-13 10:31:39'),
('N-47589', 'John', 'Doe', 'jdoe@email.com', '0712345678', 12345676, 26, '2001-01-01', 'Male', 'Eldoret', '74000', '2025-01-07 13:38:30'),
('N-72536', 'New Test', 'Patient', 'ntp@email.com', '078965432', 56577788, 21, '2003-10-16', 'Female', 'Addis', '', '2025-01-07 11:27:38'),
('N-79713', 'John', 'Doe', 'notchcom.solutions@gmail.com', '0712345678', 12345678, 0, '2025-01-21', 'Female', 'naikuru', '', '2025-01-06 14:01:44'),
('N-81889', 'Any', 'Name', 'namedoe@email.com', '3465346536', 453352, 0, '2025-01-22', 'Male', 'Select City*', '', '2025-01-07 10:12:58'),
('N19371', 'Walter', 'Insane', 'day@email.com', '0789895643', 23234566, 7, '2018-01-01', 'Male', 'Nairobi', '', '2025-01-06 18:43:47');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacists`
--

CREATE TABLE `pharmacists` (
  `userId` varchar(15) NOT NULL,
  `username` varchar(15) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pharmacists`
--

INSERT INTO `pharmacists` (`userId`, `username`, `firstname`, `lastname`, `email`, `phone`, `password`, `date_added`) VALUES
('uid', 'uname', 'fname', 'lname', 'mail@email.com', 2422424, 'josilook', '2025-01-07 17:38:23'),
('PB5656', 'pharmauser', 'Walter', 'White', 'white@email.com', 345654434, 'white123', '2025-01-07 16:26:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `title` varchar(20) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`title`, `firstname`, `lastname`, `email`, `phone_number`, `password`, `date_added`) VALUES
('mr', 'Abebe', 'Abebe', 'abebe@ab.com', '1717', 'abebe', '2025-01-07 13:42:04'),
('ms', 'Daisy', 'Hao', 'hao@email.com', '12345678', '123', '2025-01-07 11:10:25'),
('mrs', 'wade', 'wade', 'wade@email.com', '345677', '123', '2025-01-07 11:10:25'),
('ms', 'Wendy', 'Williams', 'ww@email.com', '0789895677', 'password', '2025-01-07 12:01:54');

-- --------------------------------------------------------

--
-- Table structure for table `user_comment`
--

CREATE TABLE `user_comment` (
  `message` varchar(300) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_comment`
--

INSERT INTO `user_comment` (`message`, `name`, `email`, `subject`, `post_date`) VALUES
('Message area: if post to database (success)', 'test', 'test@email.com', 'test comment section', '2019-06-13 10:46:37'),
('kjhvuiehi', 'abebe', 'sh@gfkne.com', 'get down', '2025-01-07 07:03:25'),
('When is the website launching.', 'Wendy Vibes', 'wv@email.com', 'Launch', '2025-01-07 12:07:13'),
('This is another trest', 'tester x', 'tx@email.com', 'Tester Test', '2025-01-07 12:09:02'),
('Thank you', 'Jsghe', 'hshe@he.com', 'Uehe', '2025-01-07 15:06:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `Username` (`username`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`billID`);

-
--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`medID`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`patient_id`),
  ADD UNIQUE KEY `id_number` (`id_number`),
  ADD UNIQUE KEY `patient_email` (`patient_email`);

--
-- Indexes for table `pharmacists`
--
ALTER TABLE `pharmacists`
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_number` (`phone_number`);

--
-- AUTO_INCREMENT for dumped tables
--




--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `medID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- Constraints for dumped tables
--



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
