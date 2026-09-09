-- phpMyAdmin SQL Dump
-- https://www.phpmyadmin.net/


-- no auto counting if 0 is inserted
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

-- tells the database what character encoding to use so that name with special characters are saved correctly
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- Database: `payroll_mdb`


-- Table structure for table `wy_admin`

CREATE TABLE `wy_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_code` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping data for table `wy_admin`


INSERT INTO `wy_admin` (`admin_id`, `admin_code`, `admin_name`, `admin_email`, `admin_password`, `admin_time`) VALUES
(1, 'WY00', 'Admin', 'admin@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2024-04-18 02:22:37');



-- Table structure for table `wy_attendance`

CREATE TABLE `wy_attendance` (
  `attendance_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `attendance_date` date NOT NULL,
  `action_name` enum('punchin','punchout') NOT NULL,
  `action_time` time NOT NULL,
  `emp_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping data for table `wy_attendance`


INSERT INTO `wy_attendance` (`attendance_id`, `emp_code`, `attendance_date`, `action_name`, `action_time`, `emp_desc`) VALUES
(2, 'WY01', '2026-04-13', 'punchin', '10:41:27', '21'),
(3, 'WY01', '2026-04-13', 'punchout', '17:37:36', '220'),
(4, 'WY02', '2026-04-14', 'punchin', '15:05:42', 'D114'),
(5, 'WY02', '2026-04-14', 'punchout', '22:19:14', 'out-144'),
(6, 'WY03', '2026-04-14', 'punchin', '10:30:30', 'IN'),
(7, 'WY03', '2026-04-14', 'punchout', '17:30:52', 'OUT'),
(8, 'WY04', '2026-04-14', 'punchin', '10:00:59', 'IS1'),
(9, 'WY04', '2026-04-14', 'punchout', '14:31:27', 'IS1'),
(10, 'WY05', '2026-04-14', 'punchin', '19:11:29', 'In'),
(11, 'WY05', '2026-04-14', 'punchout', '19:13:02', 'Outt');



-- Table structure for table `wy_employees`


CREATE TABLE `wy_employees` (
  `emp_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `emp_password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `gender` enum('male','female') NOT NULL DEFAULT 'male',
  `merital_status` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(255) NOT NULL,

  `country` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  
  `identity_doc` varchar(255) NOT NULL,
  `identity_no` varchar(255) NOT NULL,
  `emp_type` varchar(255) NOT NULL,
  `joining_date` varchar(255) NOT NULL,
 
  `photo` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  
  `bank_name` varchar(255) NOT NULL,
  `account_no` varchar(255) NOT NULL,
  
 
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- Dumping data for table `wy_employees`

INSERT INTO `wy_employees` (`emp_id`, `emp_code`, `emp_password`, `first_name`, `last_name`, `dob`, `gender`, `merital_status`, `nationality`, `address`, `city`, `country`, `email`, `mobile`,  `identity_doc`, `identity_no`, `emp_type`, `joining_date`, `photo`, `designation`, `department`,  `bank_name`, `account_no`,  `created`) VALUES
(6, 'WY01', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Will', 'Williams', '04/01/1995', 'male', 'Single', 'Kenyan', 'Muthaiga', 'Nairobi', 'Kenya', 'williams@gmail.com', '0724578785',  'Passport', '012345678', 'Permanent position', '01/29/2019',  'WY01.jpg', 'Developer', 'WEB', 'Demo Bank', '012457854512',  '2026-04-12 13:54:49'),
(7, 'WY02', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Leo', 'Allen', '04/01/1993', 'male', 'Married', 'Kenyan', 'Langata', 'Nairobi', 'Kenya', 'leoallen06905@gmail.com', '07245015769',  'Passport', '914575421', 'Permanent position', '04/01/2020',  'WY02.jpg', 'Chief Marketing Officer', 'Marketing', 'Grand Summit Bank Inc.', '69529712540',  '2026-04-14 13:18:32'),
(8, 'WY03', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Christen', 'Moore', '04/20/1995', 'female', 'Single', 'Kenyan', 'Westlands', 'Nairobi', 'Kenya', 'moorechristen@gmail.com', '0745785455',  'Passport', '100035420', 'Part-time employee', '04/01/2021',  'WY03.jpg', 'Executive Assistant', 'General', 'Crest Bank', '87529722555',  '2026-04-14 14:23:30'),
(9, 'WY04', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Stephen', 'Denn', '10/12/1992', 'male', 'Married', 'Kenyan', 'Kasarani', 'Nairobi', 'Kenya', 'stephen@gmail.com', '0734578569',  'Passport', '321457852', 'Intern', '04/14/2021',  'WY04.jpg', 'Internship Period', 'IT', 'Federal Bank', '273794443158', '2026-04-14 15:49:34'),
(10, 'WY05', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Agnes', 'Miller', '07/29/1993', 'female', 'Single', 'Kenyan', 'Parklands', 'Nairobi', 'Kenya', 'agnesm88d@gmail.com', '0732475488',  'Passport', '245785000', 'Permanent position', '10/15/2020',  'WY05.jpg', 'Chief Technology Officer', 'IT', 'Centreville Bank', '4201483626',  '2026-04-14 19:22:17');



-- Table structure for table `wy_holidays`

CREATE TABLE `wy_holidays` (
  `holiday_id` int(11) NOT NULL,
  `holiday_title` varchar(255) NOT NULL,
  `holiday_desc` varchar(255) NOT NULL,
  `holiday_date` varchar(50) NOT NULL,
  `holiday_type` enum('compulsory','restricted') NOT NULL DEFAULT 'compulsory'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping data for table `wy_holidays`

INSERT INTO `wy_holidays` (`holiday_id`, `holiday_title`, `holiday_desc`, `holiday_date`, `holiday_type`) VALUES
(1, 'Labor Day', 'Labor Day 2025', '05/01/2025', 'compulsory'),
(2, 'Madaraka Day', 'Madaraka Day 2025', '06/01/2025', 'compulsory'),
(3, 'Mazingira Day', 'Independence Day 2025', '10/10/2025', 'compulsory'),
(4, 'Good Friday', 'Good Friday 2025', '04/18/2025', 'restricted'),
(6, 'Christmas Day', 'Christmas Day 2025', '12/25/2025', 'compulsory'),
(7, 'New Year', 'New Year 2021', '01/01/2026', 'compulsory');



-- Table structure for table `wy_leaves`

CREATE TABLE `wy_leaves` (
  `leave_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `leave_subject` varchar(255) NOT NULL,
  `leave_dates` varchar(255) NOT NULL,
  `leave_message` longtext NOT NULL,
  `leave_type` varchar(255) NOT NULL,
  `leave_status` enum('pending','approve','reject') NOT NULL DEFAULT 'pending',
  `apply_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping data for table `wy_leaves`


INSERT INTO `wy_leaves` (`leave_id`, `emp_code`, `leave_subject`, `leave_dates`, `leave_message`, `leave_type`, `leave_status`, `apply_date`) VALUES
(1, 'WY01', 'Requesting for leave days', '04/13/2026', 'demo leave message', 'Sick Leave', 'approve', '2026-04-13 10:09:02'),
(3, 'WY03', 'Leave for 2 days', '04/15/2021,04/17/2026', 'Dear admin, i\'d like to apply leave for 2 days as i\'ve been a regular employee since my first day at office. And now, i finally got to rest and spend some time with my family too!', 'Casual Leave', 'reject', '2026-04-14 15:47:06'),
(4, 'WY05', 'Leave for a week', '04/15/2021,04/23/2026', 'i wont be able to join office as i\'ve been suffering from a rough common cold and fever. so, i\'d like to request a leave for week', 'Sick Leave', 'approve', '2026-04-14 19:15:11');


-- Table structure for table `wy_payheads`

CREATE TABLE `wy_payheads` (
  `payhead_id` int(11) NOT NULL,
  `payhead_name` varchar(255) NOT NULL,
  `payhead_desc` varchar(255) NOT NULL,
  `payhead_type` enum('earnings','deductions') NOT NULL DEFAULT 'earnings'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping data for table `wy_payheads`

INSERT INTO `wy_payheads` (`payhead_id`, `payhead_name`, `payhead_desc`, `payhead_type`) VALUES
(1, 'Basic Salary', 'Basic Salary', 'earnings'),
(2, 'Transport Allowance', 'Transport/commuter Allowance', 'earnings'),
(3, 'House Allowance', 'House Allowance', 'earnings'),
(4, 'Communication Allowance', 'Communication/Airtime Allowance', 'earnings'),
(5, 'Medical Allowance', 'Medical Allowance', 'deductions'),
(6, 'Overtime', 'Overtime', 'earnings'),
(7, 'Pension/Sacco', 'pension or sacco deductions', 'deductions'),
(8, 'NSSF', 'NSSF employee contribution', 'deductions'),
(9, 'Other Allowance', 'Other Allowance', 'earnings'),
(10, 'PAYE', 'Pay as you earn', 'deductions'),
(11, 'HELB', 'HELB repayment', 'deductions'),
(12, 'Affordable Housing levy', 'Affordable Housing levy', 'deductions'),
(13, 'SHIF', 'Social health insurance fund', 'deductions'),
(14, 'Other Deductions', 'Other Deductions', 'deductions');



-- Table structure for table `wy_pay_structure`

CREATE TABLE `wy_pay_structure` (
  `salary_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `payhead_id` int(11) NOT NULL,
  `default_salary` float(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping data for table `wy_pay_structure`


INSERT INTO `wy_pay_structure` (`salary_id`, `emp_code`, `payhead_id`, `default_salary`) VALUES
(10, 'WY01', 1, 45000.00),
(11, 'WY01', 10, 5000.00),
(12, 'WY03', 6, 5500.00),
(13, 'WY03', 1, 21000.00),
(14, 'WY05', 1, 51500.00),
(15, 'WY05', 6, 6500.00),
(16, 'WY05', 12, 5510.00),
(17, 'WY04', 1, 39000.00),
(18, 'WY04', 6, 5600.00),
(19, 'WY04', 12, 4250.00),
(20, 'WY02', 1, 21000.00),
(21, 'WY02', 6, 6500.00);



-- Table structure for table `wy_salaries`


CREATE TABLE `wy_salaries` (
  `salary_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `payhead_name` varchar(255) NOT NULL,
  `pay_amount` float(11,2) NOT NULL,
  `earning_total` float(11,2) NOT NULL,
  `deduction_total` float(11,2) NOT NULL,
  `net_salary` float(11,2) NOT NULL,
  `pay_type` enum('earnings','deductions') NOT NULL,
  `pay_month` varchar(255) NOT NULL,
  `generate_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping data for table `wy_salaries`





-- Indexes for dumped tables



-- Indexes for table `wy_admin`

ALTER TABLE `wy_admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_email` (`admin_email`),
  ADD UNIQUE KEY `admin_code` (`admin_code`);

-- Indexes for table `wy_attendance`

ALTER TABLE `wy_attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `emp_code` (`emp_code`);


-- Indexes for table `wy_employees`

ALTER TABLE `wy_employees`
  ADD PRIMARY KEY (`emp_id`),
  ADD UNIQUE KEY `emp_code` (`emp_code`);


-- Indexes for table `wy_holidays`

ALTER TABLE `wy_holidays`
  ADD PRIMARY KEY (`holiday_id`);


-- Indexes for table `wy_leaves`

ALTER TABLE `wy_leaves`
  ADD PRIMARY KEY (`leave_id`);


-- Indexes for table `wy_payheads`

ALTER TABLE `wy_payheads`
  ADD PRIMARY KEY (`payhead_id`);


-- Indexes for table `wy_pay_structure`

ALTER TABLE `wy_pay_structure`
  ADD PRIMARY KEY (`salary_id`),
  ADD KEY `emp_code` (`emp_code`),
  ADD KEY `payhead_id` (`payhead_id`);


-- Indexes for table `wy_salaries`

ALTER TABLE `wy_salaries`
  ADD PRIMARY KEY (`salary_id`),
  ADD KEY `emp_code` (`emp_code`);


-- AUTO_INCREMENT for dumped tables

-- AUTO_INCREMENT for table `wy_admin`

ALTER TABLE `wy_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

-- AUTO_INCREMENT for table `wy_attendance`

ALTER TABLE `wy_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

-- AUTO_INCREMENT for table `wy_employees`

ALTER TABLE `wy_employees`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

-- AUTO_INCREMENT for table `wy_holidays`

ALTER TABLE `wy_holidays`
  MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

-- AUTO_INCREMENT for table `wy_leaves`

ALTER TABLE `wy_leaves`
  MODIFY `leave_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

-- AUTO_INCREMENT for table `wy_payheads`

ALTER TABLE `wy_payheads`
  MODIFY `payhead_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

-- AUTO_INCREMENT for table `wy_pay_structure`

ALTER TABLE `wy_pay_structure`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

-- AUTO_INCREMENT for table `wy_salaries`

ALTER TABLE `wy_salaries`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
