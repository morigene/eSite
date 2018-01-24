-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2018 at 12:03 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esite_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `Employee_idNo` varchar(255) NOT NULL,
  `time_in` datetime NOT NULL,
  `time_out` datetime NOT NULL,
  `umubyizi` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `Employee_idNo`, `time_in`, `time_out`, `umubyizi`) VALUES
(1, 'UWAMARIYA59350d5a30a94', '2018-01-18 12:05:33', '2018-01-18 12:07:31', 0.5),
(2, 'UWAMARIYA59350d5a30a94', '2018-01-18 12:05:57', '2018-01-18 12:07:31', 0.5);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `employee_idNo` varchar(255) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `employee_type` varchar(40) NOT NULL,
  `payment_category` varchar(40) NOT NULL,
  `identity` int(16) NOT NULL,
  `phone_no` int(25) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `employee_idNo`, `firstname`, `lastname`, `employee_type`, `payment_category`, `identity`, `phone_no`, `email`) VALUES
(1, 'MUTUYIMANA5a61fd6c6bf93', 'Origene', 'MUTUYIMANA', 'Site Engineer', 'Daily', 2147483647, 788612932, 'ircarline@gmail.com'),
(2, 'HITIMANA5a65cd2c58a86', 'Eric', 'HITIMANA', 'Site Engineer', 'per hour', 2147483647, 2147483647, 'eric@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `equipment_id` int(11) NOT NULL,
  `equipment_name` varchar(40) NOT NULL,
  `equipment_type` varchar(40) NOT NULL,
  `equipment_quantity` varchar(40) NOT NULL,
  `cost_per_unit` double NOT NULL,
  `total_cost` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`equipment_id`, `equipment_name`, `equipment_type`, `equipment_quantity`, `cost_per_unit`, `total_cost`) VALUES
(1, 'Umwiko', 'small', '10', 1000, 1000),
(2, '', '', '45', 1000, 45000),
(3, 'Umwiko', '012', '20', 100, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `material_id` int(11) NOT NULL,
  `material_name` varchar(40) NOT NULL,
  `material_code` varchar(255) NOT NULL,
  `material_type` varchar(40) NOT NULL,
  `quantity` double NOT NULL,
  `unit` varchar(4) NOT NULL,
  `operator` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`material_id`, `material_name`, `material_code`, `material_type`, `quantity`, `unit`, `operator`) VALUES
(1, 'Cement', 'Kilimadjaro5a60aed618d44', 'Kilimadjaro', 1070, 'kg', 'IRAKOZE Carline'),
(2, 'Cement', 'Twigger5a615b4b229b9', 'Twigger', 10200, 'kg', 'IRAKOZE Carline');

-- --------------------------------------------------------

--
-- Table structure for table `material_history`
--

CREATE TABLE `material_history` (
  `material_history_id` int(11) NOT NULL,
  `material_name` varchar(20) NOT NULL,
  `material_code` varchar(20) NOT NULL,
  `status` enum('in','out') NOT NULL,
  `quantity` double NOT NULL,
  `operation_date` datetime NOT NULL,
  `operator` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material_history`
--

INSERT INTO `material_history` (`material_history_id`, `material_name`, `material_code`, `status`, `quantity`, `operation_date`, `operator`) VALUES
(1, 'Cement', 'Kilimadjaro5a60aed61', 'in', 1000, '2018-01-18 15:27:00', 'IRAKOZE Carline'),
(2, 'Cement', 'Kilimadjaro5a60aed61', 'in', 200, '2018-01-18 15:27:00', 'IRAKOZE Carline'),
(3, 'Cement', 'Kilimadjaro5a60aed61', 'in', 60, '2018-01-18 15:36:00', 'IRAKOZE Carline'),
(4, 'Cement', 'Kilimadjaro5a60aed61', 'in', 30, '2018-01-18 15:36:00', 'IRAKOZE Carline'),
(5, 'Cement', 'Kilimadjaro5a60aed61', 'out', 100, '2018-01-18 15:38:00', 'IRAKOZE Carline'),
(6, 'Cement', 'Kilimadjaro5a60aed61', 'out', 50, '2018-01-18 15:39:00', 'IRAKOZE Carline'),
(7, 'Cement', 'Kilimadjaro5a60aed61', 'out', 70, '2018-01-18 15:41:00', 'IRAKOZE Carline'),
(8, 'Cement', 'Twigger5a615b4b229b9', 'in', 10000, '2018-01-19 03:43:00', 'IRAKOZE Carline'),
(9, 'Cement', 'Twigger5a615b4b229b9', 'in', 200, '2018-01-19 16:39:00', 'IRAKOZE Carline');

-- --------------------------------------------------------

--
-- Table structure for table `meeting`
--

CREATE TABLE `meeting` (
  `meeting_id` int(11) NOT NULL,
  `meeting_date` date NOT NULL,
  `meeting_moderator` varchar(40) NOT NULL,
  `moderator_type` varchar(40) NOT NULL,
  `meeting_agenda` text NOT NULL,
  `meeting_summary_orDetails` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meeting`
--

INSERT INTO `meeting` (`meeting_id`, `meeting_date`, `meeting_moderator`, `moderator_type`, `meeting_agenda`, `meeting_summary_orDetails`) VALUES
(4, '2117-02-01', 'Eng.MUREGO Donatien', 'Director', 'Material Recovery  of the company', '<p>Hello &nbsp;team,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;The meating actually was good even if the people came late.</p>\r\n\r\n<p>Focus on next meeting and Sam try to bring back your materials.</p>\r\n'),
(5, '2117-05-07', 'Eng TAVA Potien', 'Site Engineer', 'Salary of workers', '<p>Talking about salary.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Regard ,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Eng KABASINGA Daniel</p>\r\n'),
(6, '2017-07-03', 'Eng MUNKUNDIRE Samuel', 'Site Engineer', 'Scheduling working time on fiel', '<p>Dear Team,</p>\r\n\r\n<p>This meeting is important &nbsp;.Be on time and come all.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Thank you,</p>\r\n\r\n<p>Site coordinator:Eng.HABAKUBAHO Emmanuel</p>\r\n\r\n<p>&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `meeting_schedule`
--

CREATE TABLE `meeting_schedule` (
  `meeting_id` int(11) NOT NULL,
  `meeting_date` date NOT NULL,
  `meeting_hour` time NOT NULL,
  `meeting_agenda` text NOT NULL,
  `meeting_moderator` varchar(40) NOT NULL,
  `moderator_type` varchar(40) NOT NULL,
  `Meeting_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meeting_schedule`
--

INSERT INTO `meeting_schedule` (`meeting_id`, `meeting_date`, `meeting_hour`, `meeting_agenda`, `meeting_moderator`, `moderator_type`, `Meeting_status`) VALUES
(1, '2017-02-03', '14:34:00', '', 'Eng.MUREGO Donatien', 'Director', 0),
(2, '2117-07-08', '15:05:00', 'Salary of workers', 'Eng TAVA Potien', 'Site Engineer', 0),
(3, '2017-01-03', '13:00:00', 'thhhhhj', 'jules', 'Director', 0);

-- --------------------------------------------------------

--
-- Table structure for table `plant`
--

CREATE TABLE `plant` (
  `plant_id` int(11) NOT NULL,
  `plant_name` varchar(40) NOT NULL,
  `plant_model` varchar(40) NOT NULL,
  `plant_owner` varchar(40) NOT NULL,
  `task` varchar(40) NOT NULL,
  `fuel_type` int(16) NOT NULL,
  `fuel_cost` int(25) NOT NULL,
  `operator_cost` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plant`
--

INSERT INTO `plant` (`plant_id`, `plant_name`, `plant_model`, `plant_owner`, `task`, `fuel_type`, `fuel_cost`, `operator_cost`) VALUES
(1, 'Catepilor', 'CATO2', 'MUNYEMARI INNOCENT', 'digging', 0, 100000, '50000'),
(2, 'Cat2P', 'CATO21', 'MUNYEMARI INNOCENT', 'digging', 0, 100000, '50000'),
(3, 'Catepillar', 'RAD072', 'ISHIMWE Aimable', 'road', 0, 1100, '10000'),
(4, 'Rotipillar', 'RAD080', 'MUREGO Donatien', 'Digging', 0, 800, '20000');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `salary_id` int(11) NOT NULL,
  `dateOfsalary` datetime NOT NULL,
  `employee_idNo` varchar(255) NOT NULL,
  `money_perday` double NOT NULL,
  `money_perWorkingDays` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`salary_id`, `dateOfsalary`, `employee_idNo`, `money_perday`, `money_perWorkingDays`) VALUES
(1, '2017-06-05 11:39:31', 'UWAMARIYA59350d5a30a94', 2000, 50000),
(2, '2018-01-11 21:24:13', 'MUKABARANGA59350db470c07', 2000, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`, `type`) VALUES
(1, 'fidele', 'fidele@gmail.com', 'fidele123', 'design'),
(2, 'IRAKOZE Carline', 'carline@gmail.com', 'carline123', 'staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`),
  ADD UNIQUE KEY `employee_idNo_2` (`employee_idNo`),
  ADD KEY `employee_idNo` (`employee_idNo`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`equipment_id`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`material_id`),
  ADD UNIQUE KEY `material_code` (`material_code`);

--
-- Indexes for table `material_history`
--
ALTER TABLE `material_history`
  ADD PRIMARY KEY (`material_history_id`);

--
-- Indexes for table `meeting`
--
ALTER TABLE `meeting`
  ADD PRIMARY KEY (`meeting_id`);

--
-- Indexes for table `meeting_schedule`
--
ALTER TABLE `meeting_schedule`
  ADD PRIMARY KEY (`meeting_id`);

--
-- Indexes for table `plant`
--
ALTER TABLE `plant`
  ADD PRIMARY KEY (`plant_id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`salary_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `password` (`password`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `equipment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `material_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `material_history`
--
ALTER TABLE `material_history`
  MODIFY `material_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `meeting`
--
ALTER TABLE `meeting`
  MODIFY `meeting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `meeting_schedule`
--
ALTER TABLE `meeting_schedule`
  MODIFY `meeting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `plant`
--
ALTER TABLE `plant`
  MODIFY `plant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
