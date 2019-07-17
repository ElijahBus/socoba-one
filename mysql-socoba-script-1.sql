-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2019 at 06:27 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9
--
--


/* 
 * Authors: Elijah Busanga.(elijahbus.ny@gmail.com) ,
 		Christian Kananda. (kanandachristian@gmail.com)
 * Description: Socoba first script, setting up tables structure
 * Vendor:
 * 
*/



SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socoba`
--
USE socoba;

-- --------------------------------------------------------

--
-- Table structure for table `academic_years`
--

CREATE TABLE `academic_years` (
  `academic_y` varchar(50) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `beds`
--

CREATE TABLE `beds` (
  `Bed_id` varchar(50) NOT NULL,
  `Room_id` varchar(50) NOT NULL,
  `Allocated` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `Class_id` varchar(50) NOT NULL,
  `Class_name` varchar(50) DEFAULT NULL,
  `Dep_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `Dep_id` varchar(50) NOT NULL,
  `Dep_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dorms`
--

CREATE TABLE `dorms` (
  `Dorm_id` varchar(50) NOT NULL,
  `Dorm_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `Fac_id` varchar(50) NOT NULL,
  `Fac_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `out_students`
--

CREATE TABLE `out_students` (
  `id_number` varchar(50) NOT NULL,
  `names` varchar(50) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `Amount` double NOT NULL,
  `Time_subscription` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `Pay_id` varchar(50) NOT NULL,
  `Fees` double NOT NULL,
  `ac_year` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `Room_id` varchar(50) NOT NULL,
  `Room_name` varchar(50) NOT NULL,
  `Dorm_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Student_id` varchar(50) NOT NULL,
  `names` varchar(50) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `Phone_number` varchar(50) NOT NULL,
  `Class_id` varchar(50) NOT NULL,
  `Bed_id` varchar(50) NOT NULL,
  `Date_registration` date NOT NULL,
  `Image_url` varchar(50) NOT NULL,
  `Date_out` date NOT NULL,
  `Is_followed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_payments`
--

CREATE TABLE `student_payments` (
  `payment_id` varchar(50) NOT NULL,
  `Student_id` varchar(50) NOT NULL,
  `Pay_id` varchar(50) NOT NULL,
  `september` varchar(50) NOT NULL,
  `october` varchar(50) NOT NULL,
  `november` varchar(50) NOT NULL,
  `december` varchar(50) NOT NULL,
  `january` varchar(50) NOT NULL,
  `february` varchar(50) NOT NULL,
  `march` varchar(50) NOT NULL,
  `april` varchar(50) NOT NULL,
  `may` varchar(50) NOT NULL,
  `june` varchar(50) NOT NULL,
  `july` varchar(50) NOT NULL,
  `aout` varchar(50) NOT NULL,
  `academic_year` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Function` varchar(50) NOT NULL,
  `names` varchar(50) NOT NULL,
  `sex` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_years`
--
ALTER TABLE `academic_years`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`Class_id`);

--
-- Indexes for table `dorms`
--
ALTER TABLE `dorms`
  ADD PRIMARY KEY (`Dorm_id`);
 
--
-- Indexes for table `beds`
--
ALTER TABLE `beds`
  ADD PRIMARY KEY (`Bed_id`);
 
--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`Dep_id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`Fac_id`);

--
-- Indexes for table `out_students`
--
ALTER TABLE `out_students`
  ADD PRIMARY KEY (`id_number`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`Pay_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`Room_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Student_id`);

--
-- Indexes for table `student_payments`
--
ALTER TABLE `student_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_years`
--
ALTER TABLE `academic_years`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
