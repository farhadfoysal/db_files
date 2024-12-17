-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 17, 2024 at 06:21 AM
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
-- Database: `edu`
--

-- --------------------------------------------------------

--
-- Table structure for table `allsubjects`
--

CREATE TABLE `allsubjects` (
  `id` int(11) NOT NULL,
  `subName` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `credit` varchar(255) DEFAULT NULL,
  `subCode` varchar(255) DEFAULT NULL,
  `subId` varchar(255) DEFAULT NULL,
  `depId` int(11) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `subFee` varchar(255) DEFAULT NULL,
  `status` enum('0','1') DEFAULT '1',
  `sId` varchar(255) DEFAULT NULL,
  `semester` text DEFAULT NULL,
  `program` int(11) DEFAULT NULL,
  `departmentId` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendancesheet`
--

CREATE TABLE `attendancesheet` (
  `id` int(11) NOT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `stdId` varchar(255) DEFAULT NULL,
  `subId` int(11) DEFAULT NULL,
  `subjectId` varchar(255) DEFAULT NULL,
  `secId` int(11) DEFAULT NULL,
  `sectionId` varchar(255) DEFAULT NULL,
  `clsId` varchar(255) DEFAULT NULL,
  `teacherId` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `attendance` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ayear`
--

CREATE TABLE `ayear` (
  `id` int(11) NOT NULL,
  `uId` varchar(255) DEFAULT NULL,
  `aYname` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `sYear` varchar(255) DEFAULT NULL,
  `sMonth` varchar(255) DEFAULT NULL,
  `eYear` varchar(255) DEFAULT NULL,
  `eMonth` varchar(255) DEFAULT NULL,
  `aStatus` enum('0','1') DEFAULT '1',
  `sId` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `id` int(11) NOT NULL,
  `task_name` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `scheduleId` varchar(255) DEFAULT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `stdId` varchar(255) DEFAULT NULL,
  `uId` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `aStatus` enum('0','1') DEFAULT '1',
  `task_details` text DEFAULT NULL,
  `task_location` varchar(255) DEFAULT NULL,
  `task_id` varchar(255) DEFAULT NULL,
  `task_code` varchar(255) DEFAULT NULL,
  `calendar` timestamp NULL DEFAULT NULL,
  `time` time DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `dateTime` timestamp NULL DEFAULT NULL,
  `done` enum('0','1') DEFAULT '0',
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `clsId` varchar(255) DEFAULT NULL,
  `maxSec` int(11) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `clsName` varchar(255) DEFAULT NULL,
  `clsCode` varchar(255) DEFAULT NULL,
  `aYear` varchar(255) DEFAULT NULL,
  `aStatus` int(11) DEFAULT NULL,
  `aYearId` int(11) DEFAULT NULL,
  `sessionId` varchar(255) DEFAULT NULL,
  `depId` int(11) DEFAULT NULL,
  `program` int(11) DEFAULT NULL,
  `departmentId` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classschedule`
--

CREATE TABLE `classschedule` (
  `id` int(11) NOT NULL,
  `temp_code` varchar(255) DEFAULT NULL,
  `min` int(11) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `stdId` varchar(255) DEFAULT NULL,
  `temp_num` varchar(255) DEFAULT NULL,
  `tId` varchar(255) DEFAULT NULL,
  `aStatus` int(11) DEFAULT NULL,
  `sub_name` varchar(255) DEFAULT NULL,
  `sub_code` varchar(255) DEFAULT NULL,
  `t_id` varchar(255) DEFAULT NULL,
  `t_name` varchar(255) DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  `campus` varchar(255) DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `dateTime` varchar(255) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_room`
--

CREATE TABLE `exam_room` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `exam_id` varchar(255) NOT NULL,
  `room_id` varchar(255) NOT NULL,
  `room_code` varchar(255) NOT NULL,
  `sub_num_column` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_routine`
--

CREATE TABLE `exam_routine` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `day` varchar(255) NOT NULL,
  `sub_id` varchar(255) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `exam_time` time NOT NULL,
  `class_id` varchar(255) NOT NULL,
  `class_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE `fee` (
  `id` int(11) NOT NULL,
  `fee_type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `scholarshipStatus` int(11) DEFAULT NULL,
  `payStatus` int(11) DEFAULT NULL,
  `sessionId` int(11) DEFAULT NULL,
  `depId` int(11) DEFAULT NULL,
  `clsId` int(11) DEFAULT NULL,
  `secId` int(11) DEFAULT NULL,
  `subId` int(11) DEFAULT NULL,
  `discountStatus` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `payMethod` varchar(255) DEFAULT NULL,
  `feeId` varchar(255) DEFAULT NULL,
  `feeDetails` varchar(255) DEFAULT NULL,
  `fee` varchar(255) DEFAULT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `trxId` varchar(255) DEFAULT NULL,
  `disAmount` varchar(255) DEFAULT NULL,
  `stdId` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feetype`
--

CREATE TABLE `feetype` (
  `id` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sessionId` int(11) DEFAULT NULL,
  `sessionTextId` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `depId` int(11) DEFAULT NULL,
  `subId` int(11) DEFAULT NULL,
  `secId` int(11) DEFAULT NULL,
  `clsId` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `typeName` varchar(255) DEFAULT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `Amount` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `id` int(11) NOT NULL,
  `sendId` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `sendMail` varchar(255) DEFAULT NULL,
  `recId` varchar(255) DEFAULT NULL,
  `recMail` varchar(255) DEFAULT NULL,
  `sendDate` varchar(255) DEFAULT NULL,
  `sendTime` varchar(255) DEFAULT NULL,
  `deliverDate` varchar(255) DEFAULT NULL,
  `deliverTime` varchar(255) DEFAULT NULL,
  `recDate` varchar(255) DEFAULT NULL,
  `recTime` varchar(255) DEFAULT NULL,
  `sub` varchar(255) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE `major` (
  `id` int(11) NOT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `deanId` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `mName` varchar(255) DEFAULT NULL,
  `mStart` varchar(255) DEFAULT NULL,
  `mEnd` varchar(255) DEFAULT NULL,
  `mStatus` enum('0','1') DEFAULT '1',
  `currentId` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `id` int(11) NOT NULL,
  `task_name` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `scheduleId` varchar(255) DEFAULT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `stdId` varchar(255) DEFAULT NULL,
  `uId` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `aStatus` enum('0','1') DEFAULT '1',
  `task_details` text DEFAULT NULL,
  `task_location` varchar(255) DEFAULT NULL,
  `task_id` varchar(255) DEFAULT NULL,
  `task_code` varchar(255) DEFAULT NULL,
  `calendar` timestamp NULL DEFAULT NULL,
  `time` time DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `dateTime` timestamp NULL DEFAULT NULL,
  `done` enum('0','1') DEFAULT '0',
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `paymentId` int(11) DEFAULT NULL,
  `sessionId` int(11) DEFAULT NULL,
  `sessionTextId` varchar(255) DEFAULT NULL,
  `fId` int(11) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `payMethodType` int(11) DEFAULT NULL,
  `feeType` int(11) DEFAULT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `stdId` varchar(255) DEFAULT NULL,
  `feeId` varchar(255) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `time` timestamp NULL DEFAULT NULL,
  `trxId` varchar(255) DEFAULT NULL,
  `payAmount` varchar(255) DEFAULT NULL,
  `payMethod` varchar(255) DEFAULT NULL,
  `register` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `onlinePhone` varchar(255) DEFAULT NULL,
  `onlineTrxId` varchar(255) DEFAULT NULL,
  `bankA` varchar(255) DEFAULT NULL,
  `bankName` varchar(255) DEFAULT NULL,
  `depositer` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `room_name` int(11) NOT NULL,
  `room_code` int(11) NOT NULL,
  `campus` int(11) NOT NULL,
  `invigilator` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `num_column` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roome_column`
--

CREATE TABLE `roome_column` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `room_id` varchar(255) NOT NULL,
  `room_code` varchar(255) NOT NULL,
  `num_column` int(11) NOT NULL,
  `exam_room_id` varchar(255) NOT NULL,
  `std_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `routine`
--

CREATE TABLE `routine` (
  `id` int(11) NOT NULL,
  `temp_name` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `stdId` varchar(255) DEFAULT NULL,
  `uId` varchar(255) DEFAULT NULL,
  `aStatus` int(11) DEFAULT NULL,
  `temp_details` text DEFAULT NULL,
  `temp_code` varchar(255) DEFAULT NULL,
  `tId` varchar(255) DEFAULT NULL,
  `temp_num` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `temp_code` varchar(255) DEFAULT NULL,
  `min` int(11) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `stdId` varchar(255) DEFAULT NULL,
  `temp_num` varchar(255) DEFAULT NULL,
  `tId` varchar(255) DEFAULT NULL,
  `aStatus` int(11) DEFAULT NULL,
  `sub_name` varchar(255) DEFAULT NULL,
  `sub_code` varchar(255) DEFAULT NULL,
  `t_id` varchar(255) DEFAULT NULL,
  `t_name` varchar(255) DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  `campus` varchar(255) DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `dateTime` varchar(255) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `id` int(11) NOT NULL,
  `sName` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `currSessId` varchar(255) DEFAULT NULL,
  `sPhone` varchar(255) DEFAULT NULL,
  `sPass` varchar(255) DEFAULT NULL,
  `sEmail` varchar(255) DEFAULT NULL,
  `sLogo` varchar(255) DEFAULT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `sAdrs` varchar(255) DEFAULT NULL,
  `sEiin` varchar(255) DEFAULT NULL,
  `sStudent` int(11) DEFAULT NULL,
  `sTeacher` int(11) DEFAULT NULL,
  `sCourse` int(11) DEFAULT NULL,
  `sSec` int(11) DEFAULT NULL,
  `sUser` int(11) DEFAULT NULL,
  `sClass` int(11) DEFAULT NULL,
  `sItp1` varchar(255) DEFAULT NULL,
  `sItp2` varchar(255) DEFAULT NULL,
  `sItEmail` varchar(255) DEFAULT NULL,
  `sWeb` varchar(255) DEFAULT NULL,
  `sFundsBal` varchar(255) DEFAULT NULL,
  `sFundsBank` varchar(255) DEFAULT NULL,
  `sFundsAN` varchar(255) DEFAULT NULL,
  `sActivate` int(11) DEFAULT NULL,
  `sVerification` varchar(255) DEFAULT NULL,
  `sEmpl` int(11) DEFAULT NULL,
  `proPic` blob DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seat_distribution`
--

CREATE TABLE `seat_distribution` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `exam_id` varchar(255) NOT NULL,
  `column_id` varchar(255) NOT NULL,
  `room_id` varchar(255) NOT NULL,
  `room_code` varchar(255) NOT NULL,
  `std_id` varchar(255) NOT NULL,
  `column_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `secassigned`
--

CREATE TABLE `secassigned` (
  `id` int(11) NOT NULL,
  `secId` int(11) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `clsId` int(11) DEFAULT NULL,
  `stdId` varchar(255) DEFAULT NULL,
  `sectionId` varchar(255) DEFAULT NULL,
  `sessionId` varchar(255) DEFAULT NULL,
  `classId` varchar(255) DEFAULT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `aYear` int(11) DEFAULT NULL,
  `aStatus` enum('0','1') DEFAULT '1',
  `feeTk` varchar(255) DEFAULT NULL,
  `secAId` varchar(255) DEFAULT NULL,
  `aYearId` int(11) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `subId` varchar(255) DEFAULT NULL,
  `sessionId` varchar(255) DEFAULT NULL,
  `clsId` varchar(255) DEFAULT NULL,
  `secName` varchar(255) DEFAULT NULL,
  `secCode` varchar(255) DEFAULT NULL,
  `secFee` varchar(255) DEFAULT NULL,
  `secNumStd` int(11) DEFAULT NULL,
  `secTeaId` varchar(255) DEFAULT NULL,
  `aStatus` enum('0','1') DEFAULT '1',
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `studentId` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `currSessId` varchar(255) DEFAULT NULL,
  `stdId` varchar(255) DEFAULT NULL,
  `uId` varchar(255) DEFAULT NULL,
  `stdName` varchar(255) DEFAULT NULL,
  `nidBirth` varchar(255) DEFAULT NULL,
  `stdPhone` varchar(255) DEFAULT NULL,
  `stdEmail` varchar(255) DEFAULT NULL,
  `homePhone` varchar(255) DEFAULT NULL,
  `stdReligion` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `UnionWord` varchar(255) DEFAULT NULL,
  `aStatus` enum('0','1') DEFAULT '1',
  `fatherName` varchar(255) DEFAULT NULL,
  `motherName` varchar(255) DEFAULT NULL,
  `fNid` varchar(255) DEFAULT NULL,
  `mNid` varchar(255) DEFAULT NULL,
  `gName` varchar(255) DEFAULT NULL,
  `gAddress` varchar(255) DEFAULT NULL,
  `gPhone` varchar(255) DEFAULT NULL,
  `gEmail` varchar(255) DEFAULT NULL,
  `stdImg` varchar(255) DEFAULT NULL,
  `sMajor` varchar(255) DEFAULT NULL,
  `stdPass` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `addDate` varchar(255) DEFAULT NULL,
  `proPic` blob DEFAULT NULL,
  `lastlogin` varchar(255) DEFAULT NULL,
  `sMajorId` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `program` int(11) DEFAULT NULL,
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subassigned`
--

CREATE TABLE `subassigned` (
  `id` int(11) NOT NULL,
  `subId` int(11) DEFAULT NULL,
  `subjectId` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `secId` int(11) DEFAULT NULL,
  `sectionId` varchar(255) DEFAULT NULL,
  `clsId` int(11) DEFAULT NULL,
  `classId` varchar(255) DEFAULT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `stdId` varchar(255) DEFAULT NULL,
  `feeTk` varchar(255) DEFAULT NULL,
  `aStatus` enum('0','1') DEFAULT '1',
  `subAId` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `subName` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `credit` varchar(255) DEFAULT NULL,
  `subCode` varchar(255) DEFAULT NULL,
  `subId` varchar(255) DEFAULT NULL,
  `depId` int(11) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `subFee` varchar(255) DEFAULT NULL,
  `status` enum('0','1') DEFAULT '1',
  `sId` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `program` int(11) DEFAULT NULL,
  `departmentId` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subonsec`
--

CREATE TABLE `subonsec` (
  `id` int(11) NOT NULL,
  `subAId` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `subId` int(11) DEFAULT NULL,
  `subjectId` varchar(255) DEFAULT NULL,
  `sectionId` varchar(255) DEFAULT NULL,
  `secId` int(11) DEFAULT NULL,
  `aStatus` enum('0','1') DEFAULT '1',
  `subFee` varchar(255) DEFAULT NULL,
  `secFee` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `task_name` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `scheduleId` varchar(255) DEFAULT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `stdId` varchar(255) DEFAULT NULL,
  `uId` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `aStatus` int(11) DEFAULT NULL,
  `task_details` text DEFAULT NULL,
  `task_location` varchar(255) DEFAULT NULL,
  `task_id` varchar(255) DEFAULT NULL,
  `task_code` varchar(255) DEFAULT NULL,
  `calendar` timestamp NULL DEFAULT NULL,
  `time` time DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `dateTime` timestamp NULL DEFAULT NULL,
  `done` enum('0','1') DEFAULT '0',
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `tName` varchar(255) DEFAULT NULL,
  `tPhone` varchar(255) DEFAULT NULL,
  `tPass` varchar(255) DEFAULT NULL,
  `tEmail` varchar(255) DEFAULT NULL,
  `tAddress` varchar(255) DEFAULT NULL,
  `aStatus` enum('0','1') DEFAULT '1',
  `tMajor` varchar(255) DEFAULT NULL,
  `tBal` varchar(255) DEFAULT NULL,
  `tLogo` varchar(255) DEFAULT NULL,
  `tId` varchar(255) DEFAULT NULL,
  `uType` int(11) DEFAULT NULL,
  `proPic` blob DEFAULT NULL,
  `nidBirth` varchar(255) DEFAULT NULL,
  `uId` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `u_id` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `currSessId` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `bal` varchar(255) DEFAULT NULL,
  `u_type` int(11) DEFAULT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `photo` blob DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `fingerData` blob DEFAULT NULL,
  `stdId` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `status` enum('0','1') DEFAULT '1',
  `address` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allsubjects`
--
ALTER TABLE `allsubjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendancesheet`
--
ALTER TABLE `attendancesheet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ayear`
--
ALTER TABLE `ayear`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classschedule`
--
ALTER TABLE `classschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_room`
--
ALTER TABLE `exam_room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_routine`
--
ALTER TABLE `exam_routine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee`
--
ALTER TABLE `fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feetype`
--
ALTER TABLE `feetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roome_column`
--
ALTER TABLE `roome_column`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routine`
--
ALTER TABLE `routine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seat_distribution`
--
ALTER TABLE `seat_distribution`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `secassigned`
--
ALTER TABLE `secassigned`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subassigned`
--
ALTER TABLE `subassigned`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subonsec`
--
ALTER TABLE `subonsec`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
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
-- AUTO_INCREMENT for table `allsubjects`
--
ALTER TABLE `allsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendancesheet`
--
ALTER TABLE `attendancesheet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ayear`
--
ALTER TABLE `ayear`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classschedule`
--
ALTER TABLE `classschedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_room`
--
ALTER TABLE `exam_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_routine`
--
ALTER TABLE `exam_routine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee`
--
ALTER TABLE `fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feetype`
--
ALTER TABLE `feetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `major`
--
ALTER TABLE `major`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roome_column`
--
ALTER TABLE `roome_column`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `routine`
--
ALTER TABLE `routine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seat_distribution`
--
ALTER TABLE `seat_distribution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `secassigned`
--
ALTER TABLE `secassigned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subassigned`
--
ALTER TABLE `subassigned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subonsec`
--
ALTER TABLE `subonsec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
