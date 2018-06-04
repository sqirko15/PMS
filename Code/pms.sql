-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2018 at 10:25 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pms`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `personal_id` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `birthdate` date NOT NULL,
  `birthplace` varchar(100) NOT NULL,
  `academic_degree` varchar(100) NOT NULL,
  `university` varchar(100) NOT NULL,
  `graduation_date` date NOT NULL,
  `speciality` varchar(100) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `is_director` int(11) NOT NULL,
  `receptionist_name` varchar(100) NOT NULL,
  `receptionist_surname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `photo`, `name`, `father_name`, `surname`, `personal_id`, `gender`, `phone`, `birthdate`, `birthplace`, `academic_degree`, `university`, `graduation_date`, `speciality`, `created_by`, `email`, `username`, `password`, `is_director`, `receptionist_name`, `receptionist_surname`) VALUES
(44, '1527942008.jpg', 'Gentjan', 'Luan', 'Xhelilaj', 'J12345678K', 'M', '0693456777', '1983-07-01', 'Vlore', 'Msc', 'Universiteti i Mjekesise ', '2011-07-13', 'Pediatrician', 1, 'genti@gmail.com', 'genti123', '$2y$10$RuTvW9XA/Ggm1wFP6CZPu.cM/GB.TIWh6sUebknN4.xcNR/j3DPmq', 0, 'Ema', 'Idrizi'),
(45, '1527940687.jpg', 'Majlinda', 'Altin', 'Baka', 'J23456789K', 'F', '0692209120', '1988-02-09', 'Tirane', 'Msc', 'Universiteti i Mjekesise ', '2016-07-15', 'Dermatology', 1, 'majlinda@gmail.com', 'majlinda123', '$2y$10$1a34OgGB.qFOo.reJ0Us6OLgmzOG/wLLyrvYw9xe12UkQEg7uNKVi', 0, 'Ema', 'Idrizi'),
(46, '1527940940.jpg', 'Luan', 'Sokol', 'Xhelili', 'J34567812K', 'M', '0692209120', '1957-01-22', 'Vlore', 'msc', 'Universiteti i Mjekesise ', '1984-07-23', 'Cardiolog', 1, 'luan@gmail.com', 'luan123', '$2y$10$T5xz44lDDpQ0lr4hz6s0dulLGV/DbVWFMrbGX7oT3GnyvLOrzFeNK', 1, 'Ema', 'Idrizi'),
(47, 'default.jpg', 'Dhurata', 'Hysni', 'Tarifa', 'J11145678K', 'F', '0692209120', '1964-06-14', 'Gjirokaster', 'Msc', 'Universiteti i Mjekesise ', '1991-01-06', 'Radiology', 1, 'dhurata@gmail.com', 'dhurata123', '$2y$10$msZYLCx2JpPWhcgrLYcGS./fjY8cVZhnagX7qROEOcXqGIToUv.WS', 0, 'Ema', 'Idrizi');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `id_patient` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `id_patient`, `rate`, `comment`, `date_created`) VALUES
(1, 110, 5, 'Great service.', '2018-06-02'),
(2, 111, 3, 'Good', '2018-06-02'),
(4, 115, 4, 'Very good', '2018-06-02');

-- --------------------------------------------------------

--
-- Table structure for table `medical_record`
--

CREATE TABLE `medical_record` (
  `id` int(11) NOT NULL,
  `health_insurance_nr` varchar(100) NOT NULL,
  `polyclinic_nr` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `id_doctor` int(11) DEFAULT NULL,
  `id_patient` int(11) NOT NULL,
  `blood_type` varchar(5) NOT NULL,
  `rh_factor` varchar(3) NOT NULL,
  `allergies` varchar(1500) NOT NULL,
  `anamnesis` varchar(2000) NOT NULL,
  `doctor_name` varchar(100) NOT NULL,
  `doctor_surname` varchar(100) NOT NULL,
  `receptionist_name` varchar(100) NOT NULL,
  `receptionist_surname` varchar(100) NOT NULL,
  `in_waiting` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_record`
--

INSERT INTO `medical_record` (`id`, `health_insurance_nr`, `polyclinic_nr`, `date_created`, `created_by`, `id_doctor`, `id_patient`, `blood_type`, `rh_factor`, `allergies`, `anamnesis`, `doctor_name`, `doctor_surname`, `receptionist_name`, `receptionist_surname`, `in_waiting`) VALUES
(55, '12345678', 5, '2018-06-02', 1, 46, 110, 'O', 'Rh+', 'None', 'This is the anamnesis of Sara Qirko.', 'Luan', 'Xhelili', 'Ema', 'Idrizi', 1),
(56, '12345689', 5, '2018-06-02', 1, 44, 111, 'A', 'Rh+', 'None', 'This is the anamnesis of Klea Doka.', 'Gentjan', 'Xhelilaj', 'Ema', 'Idrizi', 0),
(60, '12345578', 5, '2018-06-02', 1, NULL, 115, 'B', 'Rh-', 'None', 'This is the anamnesis of Ilir Doka.', 'Luan', 'Xhelili', 'Ema', 'Idrizi', 0);

-- --------------------------------------------------------

--
-- Table structure for table `medical_visit`
--

CREATE TABLE `medical_visit` (
  `id` int(11) NOT NULL,
  `id_medical_record` int(11) DEFAULT NULL,
  `id_doctor` int(11) DEFAULT NULL,
  `allowed_by` int(11) DEFAULT NULL,
  `date_created` date NOT NULL,
  `complaints` varchar(2000) NOT NULL,
  `diagnosis` varchar(2000) NOT NULL,
  `medicines` varchar(2000) NOT NULL,
  `days_off` int(11) NOT NULL,
  `is_infectious` int(11) NOT NULL,
  `doctor_name` varchar(100) NOT NULL,
  `doctor_surname` varchar(100) NOT NULL,
  `receptionist_name` varchar(100) NOT NULL,
  `receptionist_surname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_visit`
--

INSERT INTO `medical_visit` (`id`, `id_medical_record`, `id_doctor`, `allowed_by`, `date_created`, `complaints`, `diagnosis`, `medicines`, `days_off`, `is_infectious`, `doctor_name`, `doctor_surname`, `receptionist_name`, `receptionist_surname`) VALUES
(34, 55, 46, 1, '2018-06-02', 'Headache', 'Flu', 'Paracetamol', 0, 0, 'Luan', 'Xhelili', 'Ema', 'Idrizi'),
(35, 55, 46, 1, '2018-06-02', 'Headache', 'Stress', 'None', 0, 0, 'Luan', 'Xhelili', 'Ema', 'Idrizi'),
(36, 55, 46, 1, '2018-06-02', 'Headache', 'Flu season', 'Paracetamol and healthy food', 1, 0, 'Luan', 'Xhelili', 'Ema', 'Idrizi');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `personal_id` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `profession` varchar(100) NOT NULL,
  `job` varchar(100) NOT NULL,
  `guardian` varchar(100) NOT NULL,
  `birthdate` date NOT NULL,
  `birthplace` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `photo`, `name`, `father_name`, `surname`, `personal_id`, `gender`, `phone`, `address`, `profession`, `job`, `guardian`, `birthdate`, `birthplace`, `email`, `username`, `password`) VALUES
(110, '1527942657.jpg', 'Sara', 'Jorgo', 'Qirko', 'J45678123K', 'F', '0692209120', 'Rr.Irfan Tomini', 'Engineer', 'None', 'none', '1996-12-12', 'Gjirokaster', 'sara@gmail.com', 'sara123', '$2y$10$qhNGpcQFqaPbAr/xrV.n9uD1cfoOmZzQ/8wo8bwL15Z4dlDHCnbbu'),
(111, '1527942189.jpg', 'Klea', 'Miri', 'Doka', 'J67812345K', 'F', '0692209120', 'Rr.Irfan Tomini', 'Student', 'None', 'Mira Doka', '2011-07-22', 'Gjirokaster', 'klea@gmail.com', 'klea123', '$2y$10$ooHKNXPSsX98ksAjK8.eHOx1mEveG9AxzoRTDnGgKW6Xmg/.sJJX.'),
(115, 'default.jpg', 'Ilir', 'Robert', 'Alia', 'J12245678K', 'M', '0692209120', 'Rr.Irfan Tomini', 'Mathematician', 'Professor', 'none', '1956-05-01', 'Tirane', 'ilir@gmail.com', 'ilir123', '$2y$10$XQkfSj0HlRvhBWWP8.ps2OIa7rkqNA3OZGdNFpVL29UBy7bstlMwq');

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `personal_id` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `birthdate` date NOT NULL,
  `birthplace` varchar(100) NOT NULL,
  `academic_degree` varchar(100) NOT NULL,
  `university` varchar(100) NOT NULL,
  `graduation_date` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`id`, `photo`, `name`, `father_name`, `surname`, `personal_id`, `gender`, `birthdate`, `birthplace`, `academic_degree`, `university`, `graduation_date`, `email`, `username`, `password`) VALUES
(1, 'default.jpg', 'Ema', 'Elton', 'Idrizi', 'B12345678X', 'F', '1975-10-10', 'Shkoder', 'Phd', 'Universiteti UFO', '2001-07-02', 'ema123@gmail.com', 'ema123', '$2y$10$KpVM2aPG4rgFQDO27UCsNeSWSwuTqNFOAymQlaBGJNGLI3AX/.hJ6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_patient` (`id_patient`);

--
-- Indexes for table `medical_record`
--
ALTER TABLE `medical_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_patient` (`id_patient`),
  ADD KEY `id_doctor` (`id_doctor`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `medical_visit`
--
ALTER TABLE `medical_visit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_medical_record` (`id_medical_record`),
  ADD KEY `id_doctor` (`id_doctor`),
  ADD KEY `allowed_by` (`allowed_by`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `medical_record`
--
ALTER TABLE `medical_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `medical_visit`
--
ALTER TABLE `medical_visit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `receptionist`
--
ALTER TABLE `receptionist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `receptionist` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`id_patient`) REFERENCES `patient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medical_record`
--
ALTER TABLE `medical_record`
  ADD CONSTRAINT `medical_record_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `receptionist` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `medical_record_ibfk_4` FOREIGN KEY (`id_doctor`) REFERENCES `doctor` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `medical_record_ibfk_5` FOREIGN KEY (`id_patient`) REFERENCES `patient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medical_visit`
--
ALTER TABLE `medical_visit`
  ADD CONSTRAINT `medical_visit_ibfk_1` FOREIGN KEY (`id_doctor`) REFERENCES `doctor` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `medical_visit_ibfk_2` FOREIGN KEY (`id_medical_record`) REFERENCES `medical_record` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `medical_visit_ibfk_3` FOREIGN KEY (`allowed_by`) REFERENCES `receptionist` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
