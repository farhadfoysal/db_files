-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2022 at 02:41 PM
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
-- Database: `o6u_onlineq`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `generateInstructorInvites` (IN `count` INT)   BEGIN
  DECLARE i INT DEFAULT 0;
  WHILE i < count DO
    INSERT INTO instructor_invitations(`code`) VALUES (
      CRC32(CONCAT(NOW(), RAND()))
    );
    SET i = i + 1;
  END WHILE;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getStudentTests` (IN `studID` INT)   BEGIN
			SET @ct :=  convert_tz(now(),@@session.time_zone,'+02:00');
			SELECT t.id,t.name,g.name groupName,i.name instructor,ts.endTime,ts.id settingID,
			CASE WHEN (@ct BETWEEN ts.startTime AND ts.endTime) THEN 'Available'
			WHEN @ct < ts.startTime THEN 'Not Started Yet'
			when @ct > ts.endTime THEN 'Finished'
			ELSE 'Not Available'
			END AS status
			from groups g
      inner join groups_has_students gs
      on gs.studentID = studID and g.id = gs.groupID
      inner join test t
      on t.id = g.assignedTest
      inner join test_settings ts
      on ts.id = g.settingID
      inner join instructor i
      on i.id = t.instructorID
			WHERE t.id NOT IN (SELECT testID from result where studentID = gs.studentID);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getTestByCode` (IN `code` VARCHAR(100))   BEGIN
	SELECT t.id,t.name,c.name category,i.name instructor,ts.endTime,ti.settingID,ts.passPercent,ts.duration,ts.random,ts.startTime,ts.sendToStudent,getQuestionsInTest(t.id) questions from test_invitations ti
      inner join test t 
      on t.id = ti.testID
      LEFT join test_settings ts
      on ts.id = ti.settingID
      inner join category c
      on c.id = t.categoryID
      inner join instructor i
      on i.id = t.instructorID
			where ti.id = AES_DECRYPT(UNHEX(code), 'O6U');

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getTestById` (IN `studID` INT, IN `tID` INT)   BEGIN
      SELECT t.id,t.name,c.name category,i.name instructor,getQuestionsInTest(t.id) questions,ts.startTime,ts.duration,ts.passPercent,ts.endTime,ts.id settingID,ts.random from groups g
      inner join groups_has_students gs
      on gs.studentID = studID and g.id = gs.groupID
      inner join test t
      on t.id = g.assignedTest
      inner join test_settings ts
      on ts.id = g.settingID
      inner join category c
      on c.id = t.categoryID
      inner join instructor i
      on i.id = t.instructorID
      where (convert_tz(now(),@@session.time_zone,'+02:00') BETWEEN ts.startTime AND ts.endTime)
      AND t.id NOT IN (SELECT testID from result where studentID = gs.studentID) AND t.id = tID;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertRandomRules` (IN `studID` INT, IN `tID` INT, IN `cid` INT, IN `diff` INT, IN `lim` INT)   INSERT INTO tempquestions(resultID, questionID,rand)
SELECT (SELECT MAX(id) FROM result WHERE studentID = studID) AS resultID, id,(select floor(0+ RAND() * 10000)) FROM question q
WHERE NOT EXISTS (SELECT 1 FROM tests_has_questions WHERE testID = tID AND questionID = q.id)
AND !deleted 
AND courseID = cid 
AND difficulty = diff LIMIT lim$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Result_getQuestionsAnswers` (IN `rid` INT)   select 
 DISTINCT q.id,q.question,q.`type`,
getResultGivenAnswers(ra.resultID,ra.questionID) AS GivenAnswers,
getQuestionRightAnswers(q.id) AS CorrectAnswers,
checkAnswer(ra.id,q.id) AS RightQuestion,
q.points * isCorrect AS points

from result_answers ra 
LEFT JOIN question q
on q.id = ra.questionID
where resultID = rid$$

--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `checkAnswer` (`resID` INT, `qID` INT) RETURNS TINYINT(1)  BEGIN
    DECLARE RES INT;
    DECLARE RE INT;
		IF ((select type from question where id = qID) = 0 || (select type from question where id = qID) = 3) THEN
			SET RE = (select count(*) AS RES from (
			SELECT answerID From result_answers RA WHERE resultID = resID AND questionID = qID
			AND answerID IN (SELECT id FROM question_answers where isCorrect and questionID = RA.questionID)
			) as t
			HAVING COUNT(*) = (SELECT COUNT(*) FROM question_answers where questionID = qID AND isCorrect));
			IF RE > 0 THEN
				RETURN TRUE;    
			ELSE
				RETURN FALSE;                           
			END IF;
		ELSEIF ((select type from question where id = qID) = 2) THEN
		   SET RE = (SELECT COUNT(*) AS RES From result_answers RA WHERE resultID = resID AND questionID = qID
			and textAnswer IN (SELECT answer FROM question_answers where questionID = RA.questionID));		
			IF RE > 0 THEN
				RETURN TRUE;    
			ELSE
				RETURN FALSE;                           
			END IF;
		ELSE
			RETURN FALSE;       
		END IF;
	END$$

CREATE DEFINER=`root`@`localhost` FUNCTION `generateGroupInvites` (`groupID` INT, `count` INT, `pf` VARCHAR(50)) RETURNS INT(11)  BEGIN
  DECLARE i INT DEFAULT 0;
  WHILE i < count DO
    INSERT INTO group_invitations(groupID,`code`) VALUES (
      groupID,CONCAT(COALESCE(pf,''),CRC32(CONCAT(NOW(), RAND())))
    );
    SET i = i + 1;
  END WHILE;
	RETURN 0;
END$$

CREATE DEFINER=`root`@`localhost` FUNCTION `getQuestionRightAnswers` (`qid` INT) RETURNS VARCHAR(255) CHARSET utf8  BEGIN
DECLARE C VARCHAR(255);
DECLARE qtype INT;
SET qtype = (select type from question where id = qid);
IF (qtype = 1) THEN
SELECT 'True' INTO C FROM question WHERE id = qID AND isTrue = 1;
	IF C IS NULL THEN
	SET C = 'False';
	END IF;
ELSEIF (qtype = 2) THEN
SELECT GROUP_CONCAT(answer SEPARATOR ', ') into C FROM question_answers
WHERE questionID = qid
GROUP BY questionID;

ELSEIF (qtype = 4) THEN
SELECT GROUP_CONCAT(CONCAT(answer, ' => ', matchAnswer) ORDER BY id SEPARATOR ', ') into C FROM question_answers
WHERE questionID = qid
GROUP BY questionID;
ELSE
SELECT GROUP_CONCAT(answer SEPARATOR ', ') into C FROM question_answers
WHERE questionID = qid AND isCorrect
GROUP BY questionID;
END IF;
RETURN C;

END$$

CREATE DEFINER=`root`@`localhost` FUNCTION `getQuestionsInTest` (`tID` INT) RETURNS INT(11)  BEGIN
DECLARE C INT(11);
SELECT ((SELECT count(*) FROM tests_has_questions WHERE testID = tID) + COALESCE((SELECT SUM(questionsCount) FROM test_random_questions WHERE testID = tID),0)) INTO C;
   IF (C IS NULL) THEN
      SET C = 0;
   END IF;


RETURN C;

END$$

CREATE DEFINER=`root`@`localhost` FUNCTION `getResultGivenAnswers` (`rid` INT, `qid` INT) RETURNS VARCHAR(255) CHARSET utf8  BEGIN
DECLARE C VARCHAR(255);
DECLARE qtype INT;
SET qtype = (select type from question where id = qID);
IF (qtype = 1) THEN
	SELECT "True" INTO C FROM result_answers WHERE questionID = qid AND resultID = rid AND isTrue = 1;

	SELECT "False" INTO C FROM result_answers WHERE questionID = qid AND resultID = rid AND isTrue = 0;
ELSEIF (qtype = 4) THEN 
SELECT GROUP_CONCAT(CONCAT(answer, ' => ', textAnswer) ORDER BY a.id SEPARATOR ', ') INTO C FROM result_answers ra
INNER JOIN question_answers a
ON a.id = ra.answerID
WHERE ra.questionID = qid AND ra.resultID = rid;
ELSEIF (qtype = 2 || qtype = 5) THEN 
SELECT textAnswer INTO C FROM result_answers WHERE questionID = qid AND resultID = rid;
ELSE
SELECT GROUP_CONCAT(answer SEPARATOR ', ') INTO C FROM result_answers ra
INNER JOIN question_answers a
ON a.id = ra.answerID
WHERE ra.questionID = qid AND ra.resultID = rid;
END IF;
RETURN C;

END$$

CREATE DEFINER=`root`@`localhost` FUNCTION `getResultGrade` (`rid` INT) RETURNS INT(11)  BEGIN
DECLARE C INT(11);
SELECT SUM(points) INTO C
FROM (
SELECT CASE (SELECT type from question where id = questionID) WHEN 4 THEN
(SELECT SUM(points) FROM question_answers qa WHERE qa.questionID = ra.questionID) 
ELSE 
(SELECT SUM(points) FROM question q WHERE q.id = ra.questionID) 
END AS points from result_answers ra where resultID = rid and isCorrect GROUP BY questionID) as t;


   IF (C IS NULL) THEN
      SET C = 0;
   END IF;


RETURN C;

END$$

CREATE DEFINER=`root`@`localhost` FUNCTION `getResultMaxGrade` (`rid` INT) RETURNS INT(11)  BEGIN
DECLARE C INT(11);
SELECT SUM(points) INTO C
FROM (SELECT CASE (SELECT type FROM question WHERE id = ra.questionID) 
WHEN 4 THEN
(SELECT SUM(points) FROM question_answers WHERE questionID = ra.questionID) 
ELSE 
(SELECT SUM(points) FROM question q WHERE q.id = ra.questionID) 
END points
FROM result_answers ra
WHERE resultID = rid
GROUP BY questionID) AS T;
   IF (C IS NULL) THEN
      SET C = 0;
   END IF;


RETURN C;

END$$

CREATE DEFINER=`root`@`localhost` FUNCTION `getTestGrade` (`tid` INT) RETURNS INT(11)  BEGIN
DECLARE C INT(11);
SELECT SUM(points) INTO C
FROM (
SELECT 
		CASE (SELECT type FROM question WHERE id = thq.questionID) 
		WHEN 4 THEN
		(SELECT SUM(points) FROM question_answers WHERE questionID = thq.questionID) 
		ELSE 
		(SELECT SUM(points) FROM question q WHERE q.id = thq.questionID) 
		END points
FROM tests_has_questions thq
WHERE testID = tid
GROUP BY questionID) AS T;
   IF (C IS NULL) THEN
      SET C = 0;
   END IF;


RETURN C;

END$$

CREATE DEFINER=`root`@`localhost` FUNCTION `Result_CorrectQuestions` (`rid` INT) RETURNS INT(11)  BEGIN
DECLARE C INT(11);
select count(*) INTO C from (select questionID from result_answers where resultID = rid  GROUP BY questionID 
HAVING CASE (SELECT type from question where id = questionID) WHEN 4 THEN 
MAX(isCorrect) = 1 ELSE MIN(isCorrect) = 1 END) t;
IF (C IS NULL) THEN
      SET C = 0;
   END IF;

RETURN C;

END$$

CREATE DEFINER=`root`@`localhost` FUNCTION `Result_WrongQuestions` (`rid` INT) RETURNS INT(11)  BEGIN
DECLARE C INT(11);
select count(*) INTO C from (
select questionID from result_answers where resultID = rid  GROUP BY questionID 
HAVING CASE (SELECT type from question where id = questionID) WHEN 4 THEN 
MAX(isCorrect) = 0 ELSE MIN(isCorrect) = 0 END) t;
IF (C IS NULL) THEN
      SET C = 0;
   END IF;
RETURN C;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `instructorID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`, `parent`, `instructorID`) VALUES
(62, 'MF1C', NULL, 26),
(63, 'MF1T', 62, 26);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `assignedTest` int(11) DEFAULT NULL,
  `settingID` int(11) DEFAULT NULL,
  `instructorID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `assignedTest`, `settingID`, `instructorID`) VALUES
(9, 'A', 36, 84, 26);

-- --------------------------------------------------------

--
-- Table structure for table `groups_has_students`
--

CREATE TABLE `groups_has_students` (
  `groupID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `joinDate` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `groups_has_students`
--

INSERT INTO `groups_has_students` (`groupID`, `studentID`, `joinDate`) VALUES
(9, 2022100001, '2022-11-18 11:22:14');

-- --------------------------------------------------------

--
-- Table structure for table `group_invitations`
--

CREATE TABLE `group_invitations` (
  `groupID` int(11) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `group_invitations`
--

INSERT INTO `group_invitations` (`groupID`, `code`) VALUES
(9, 'F900044902'),
(9, 'F2537649394');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `password_token` varchar(100) DEFAULT NULL,
  `token_expire` timestamp NULL DEFAULT NULL,
  `suspended` int(11) NOT NULL DEFAULT 0,
  `isAdmin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`id`, `name`, `email`, `password`, `phone`, `password_token`, `token_expire`, `suspended`, `isAdmin`) VALUES
(7, 'System Administrator', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '', NULL, NULL, 0, 1),
(26, 'Farhad Foysal', 'mff585855075@gmail.com', 'db8d53cf1a7471e4b7e5ae20eabd49f6', '01770627875', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `instructor_invitations`
--

CREATE TABLE `instructor_invitations` (
  `code` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `instructor_invitations`
--

INSERT INTO `instructor_invitations` (`code`) VALUES
('2488770397'),
('2959553700'),
('1954092293');

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE `mails` (
  `id` int(11) NOT NULL,
  `resultID` int(11) DEFAULT NULL,
  `studentID` int(11) DEFAULT NULL,
  `instructorID` int(11) DEFAULT NULL,
  `sends_at` timestamp NULL DEFAULT NULL,
  `sent` tinyint(1) DEFAULT 0,
  `type` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `mails`
--

INSERT INTO `mails` (`id`, `resultID`, `studentID`, `instructorID`, `sends_at`, `sent`, `type`) VALUES
(5, 36, NULL, NULL, '2022-11-18 06:25:16', 0, 2),
(6, 36, NULL, NULL, '2022-11-18 06:25:16', 0, 3),
(7, 37, NULL, NULL, '2022-11-18 06:57:16', 0, 2),
(8, 37, NULL, NULL, '2022-11-18 06:57:16', 0, 3),
(9, 38, NULL, NULL, '2022-11-18 07:11:39', 0, 2),
(10, 38, NULL, NULL, '2022-11-18 07:11:40', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `question` varchar(2000) DEFAULT NULL,
  `type` int(1) DEFAULT NULL COMMENT '0 - MCQ / 1 - T/F /2- COMPLETE/',
  `points` int(11) NOT NULL DEFAULT 1,
  `difficulty` tinyint(1) DEFAULT 1,
  `isTrue` tinyint(1) NOT NULL DEFAULT 1,
  `instructorID` int(11) NOT NULL,
  `courseID` int(11) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `question`, `type`, `points`, `difficulty`, `isTrue`, `instructorID`, `courseID`, `deleted`) VALUES
(176, '<p>1</p>', 0, 1, 1, 1, 26, 63, 0),
(177, '<p>2</p>', 3, 2, 2, 1, 26, 63, 0),
(178, '<p>2+2=3</p>', 1, 1, 1, 0, 26, 63, 0),
(179, '<p>3*3</p>', 2, 2, 3, 1, 26, 63, 0),
(180, '<p>match pattern</p>', 4, 1, 2, 1, 26, 63, 0),
(181, '<p>bd</p>', 5, 2, 1, 1, 26, 63, 0),
(182, '<p>true<img src=\"<br />\r\n<b>Warning</b>:  imagejpeg(../../../style/images/uploads/1668769550621205350.jpg): Failed to open stream: No such file or directory in <b>C:\\xampp\\htdocs\\online-exam-system-master\\instructor\\app\\controller\\functions.php</b> on line <b>72</b><br />\r\n../style/images/uploads/1668769550621205350.jpg\" width=\"100%\"></p>', 1, 2, 1, 1, 26, 63, 0);

-- --------------------------------------------------------

--
-- Table structure for table `question_answers`
--

CREATE TABLE `question_answers` (
  `id` int(11) NOT NULL,
  `questionID` int(11) DEFAULT NULL,
  `answer` varchar(2000) DEFAULT NULL,
  `matchAnswer` varchar(255) DEFAULT NULL,
  `isCorrect` tinyint(1) DEFAULT 1,
  `points` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `question_answers`
--

INSERT INTO `question_answers` (`id`, `questionID`, `answer`, `matchAnswer`, `isCorrect`, `points`) VALUES
(904, 176, '<p>1</p>', NULL, 1, 1),
(905, 176, '<p>2</p>', NULL, 0, 1),
(906, 176, '<p>3</p>', NULL, 0, 1),
(907, 176, '<p>4</p>', NULL, 0, 1),
(908, 177, '<p>2</p>', NULL, 1, 1),
(909, 177, '<p>3</p>', NULL, 0, 1),
(910, 177, '<p>2</p>', NULL, 1, 1),
(911, 177, '<p>4</p>', NULL, 0, 1),
(912, 179, '9', NULL, 1, 1),
(913, 179, '3*3=9', NULL, 1, 1),
(914, 179, 'nine', NULL, 1, 1),
(915, 179, 'Nine', NULL, 1, 1),
(916, 180, 'a', 'a', 1, 1),
(917, 180, 'b', 'b', 1, 1),
(918, 180, 'd', 'd', 1, 1),
(919, 180, 'c', 'c', 1, 1),
(920, 180, 'a', 'd', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `testID` int(11) NOT NULL,
  `groupID` int(11) DEFAULT NULL,
  `settingID` int(11) DEFAULT NULL,
  `startTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `endTime` timestamp NULL DEFAULT NULL,
  `isTemp` tinyint(1) NOT NULL DEFAULT 1,
  `hostname` varchar(255) DEFAULT NULL,
  `ipaddr` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `studentID`, `testID`, `groupID`, `settingID`, `startTime`, `endTime`, `isTemp`, `hostname`, `ipaddr`) VALUES
(36, 2022100001, 35, NULL, 80, '2022-11-18 06:22:28', '2022-11-18 06:25:16', 0, 'DESKTOP-77PL9SS', '::1'),
(37, 2022100001, 34, 9, 83, '2022-11-18 06:56:08', '2022-11-18 06:57:15', 0, 'DESKTOP-77PL9SS', '::1'),
(38, 2022100001, 36, 9, 84, '2022-11-18 07:08:30', '2022-11-18 07:11:38', 0, 'DESKTOP-77PL9SS', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `result_answers`
--

CREATE TABLE `result_answers` (
  `id` int(11) NOT NULL,
  `resultID` int(11) NOT NULL,
  `questionID` int(11) NOT NULL,
  `answerID` int(11) DEFAULT NULL,
  `isTrue` tinyint(1) DEFAULT NULL,
  `textAnswer` varchar(2000) DEFAULT NULL,
  `points` int(3) DEFAULT -1,
  `isCorrect` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `result_answers`
--

INSERT INTO `result_answers` (`id`, `resultID`, `questionID`, `answerID`, `isTrue`, `textAnswer`, `points`, `isCorrect`) VALUES
(454, 36, 178, NULL, 0, NULL, 1, 1),
(455, 36, 179, NULL, 0, '9', 2, 1),
(456, 36, 180, 919, 0, 'c', 1, 1),
(457, 36, 180, 916, 0, 'a', 1, 1),
(458, 36, 180, 917, 0, 'b', 1, 1),
(459, 36, 180, 920, 0, 'a', 0, 0),
(460, 36, 180, 918, 0, 'd', 1, 1),
(461, 36, 176, 904, 1, NULL, 1, 1),
(462, 36, 181, NULL, 0, 'Bangladesh', 2, 1),
(463, 37, 178, NULL, 1, NULL, 0, 0),
(464, 37, 179, NULL, 0, '9', 2, 1),
(465, 37, 176, 904, 1, NULL, 1, 1),
(466, 37, 177, 908, 1, NULL, 2, 1),
(467, 37, 177, 910, 1, NULL, 2, 1),
(468, 37, 180, 919, 0, 'c', 1, 1),
(469, 37, 180, 920, 0, 'a', 0, 0),
(470, 37, 180, 918, 0, 'd', 1, 1),
(471, 37, 180, 917, 0, 'b', 1, 1),
(472, 37, 180, 916, 0, 'd', 0, 0),
(473, 37, 181, NULL, 0, NULL, -1, 0),
(474, 38, 179, NULL, 0, '9', 2, 1),
(475, 38, 180, 919, 0, NULL, 0, 0),
(476, 38, 180, 917, 0, NULL, 0, 0),
(477, 38, 180, 920, 0, NULL, 0, 0),
(478, 38, 180, 916, 0, NULL, 0, 0),
(479, 38, 180, 918, 0, NULL, 0, 0),
(480, 38, 181, NULL, 0, NULL, -1, 0);

--
-- Triggers `result_answers`
--
DELIMITER $$
CREATE TRIGGER `as` BEFORE INSERT ON `result_answers` FOR EACH ROW BEGIN
		DECLARE qtype INT;
		DECLARE qpoints INT;
    SET qtype = (SELECT type FROM question where id = NEW.questionID);
		SET qpoints = (SELECT points from question WHERE id = NEW.questionID);
    IF(qtype = 1) THEN
			IF NEW.isTrue = (SELECT isTrue from question where id = NEW.questionID) THEN
			SET NEW.isCorrect = 1;
			SET NEW.points = qpoints;
			ELSE
			SET NEW.isCorrect = 0;
			SET NEW.points = 0;
			END IF;
		ELSEIF(qtype = 5) THEN
			IF NEW.textAnswer = '' THEN
			SET NEW.isCorrect = 0;
			SET NEW.points = 0;
			END IF;
		ELSEIF(qtype = 4) THEN
			IF (NEW.textAnswer = (SELECT matchAnswer from question_answers where id = NEW.answerID)) THEN
				SET NEW.isCorrect = 1;
				SET NEW.points = (SELECT points FROM question_answers where id = NEW.answerID);
			ELSE
				SET NEW.isCorrect = 0;
				SET NEW.points = 0;
			END IF;
    END IF;
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `password_token` varchar(100) DEFAULT NULL,
  `token_expire` timestamp NULL DEFAULT NULL,
  `suspended` tinyint(1) DEFAULT 0,
  `sessionID` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `email`, `phone`, `password`, `password_token`, `token_expire`, `suspended`, `sessionID`) VALUES
(2022100001, '', 'mff@gmail.com', '01585855075', '1c66b9a4964dae8c391a1853e07dd808', NULL, NULL, 0, 'cg4it6ue67nge8hogb2vjslel5');

-- --------------------------------------------------------

--
-- Table structure for table `students_has_tests`
--

CREATE TABLE `students_has_tests` (
  `studentID` int(11) DEFAULT NULL,
  `testID` int(11) DEFAULT NULL,
  `settingID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tempquestions`
--

CREATE TABLE `tempquestions` (
  `resultID` int(11) NOT NULL,
  `questionID` int(11) NOT NULL,
  `rand` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `courseID` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `instructorID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `name`, `courseID`, `deleted`, `instructorID`) VALUES
(34, 'T1', 62, 0, 26),
(35, 'T2', 62, 0, 26),
(36, 'T23', 62, 0, 26);

-- --------------------------------------------------------

--
-- Table structure for table `tests_has_questions`
--

CREATE TABLE `tests_has_questions` (
  `testID` int(11) DEFAULT NULL,
  `questionID` int(11) DEFAULT NULL,
  `rand` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tests_has_questions`
--

INSERT INTO `tests_has_questions` (`testID`, `questionID`, `rand`) VALUES
(34, 176, NULL),
(34, 177, NULL),
(35, 176, NULL),
(35, 177, NULL),
(35, 178, NULL),
(35, 179, NULL),
(35, 180, NULL),
(35, 181, NULL),
(36, 176, NULL),
(36, 177, NULL),
(36, 178, NULL),
(36, 179, NULL),
(36, 180, NULL),
(36, 181, NULL),
(36, 182, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_invitations`
--

CREATE TABLE `test_invitations` (
  `id` int(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `testID` int(11) DEFAULT NULL,
  `settingID` int(11) DEFAULT NULL,
  `used` tinyint(1) DEFAULT 0,
  `useLimit` int(11) DEFAULT NULL,
  `instructorID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `test_invitations`
--

INSERT INTO `test_invitations` (`id`, `name`, `testID`, `settingID`, `used`, `useLimit`, `instructorID`) VALUES
(31, 'far', 35, 80, 0, 2, 26);

-- --------------------------------------------------------

--
-- Table structure for table `test_random_questions`
--

CREATE TABLE `test_random_questions` (
  `testID` int(11) NOT NULL,
  `courseID` int(11) NOT NULL,
  `questionsCount` int(11) NOT NULL,
  `difficulty` int(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `test_random_questions`
--

INSERT INTO `test_random_questions` (`testID`, `courseID`, `questionsCount`, `difficulty`) VALUES
(34, 63, 1, 2),
(34, 63, 2, 1),
(34, 63, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `test_settings`
--

CREATE TABLE `test_settings` (
  `id` int(11) NOT NULL,
  `startTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `duration` int(3) DEFAULT NULL,
  `random` tinyint(255) DEFAULT NULL,
  `prevQuestion` int(1) DEFAULT NULL,
  `viewAnswers` tinyint(1) DEFAULT NULL,
  `releaseResult` int(1) DEFAULT 1,
  `sendToStudent` tinyint(1) DEFAULT NULL,
  `sendToInstructor` tinyint(1) DEFAULT NULL,
  `passPercent` int(3) DEFAULT NULL,
  `instructorID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `test_settings`
--

INSERT INTO `test_settings` (`id`, `startTime`, `endTime`, `duration`, `random`, `prevQuestion`, `viewAnswers`, `releaseResult`, `sendToStudent`, `sendToInstructor`, `passPercent`, `instructorID`) VALUES
(80, '2022-11-18 00:20:00', '2022-11-19 16:20:00', 5, 1, 1, 1, 1, 1, 1, 60, 26),
(83, '2022-11-17 16:55:00', '2022-11-18 16:55:00', 30, 1, 1, 0, 1, 1, 1, 60, 26),
(84, '2022-11-17 16:55:00', '2022-11-18 16:55:00', 30, 1, 0, 0, 1, 1, 1, 60, 26);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `instructorID` (`instructorID`) USING BTREE,
  ADD KEY `parent` (`parent`) USING BTREE;

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `instructorID` (`instructorID`) USING BTREE,
  ADD KEY `settingID` (`settingID`) USING BTREE,
  ADD KEY `groups_ibfk_2` (`assignedTest`) USING BTREE;

--
-- Indexes for table `groups_has_students`
--
ALTER TABLE `groups_has_students`
  ADD UNIQUE KEY `my_unique_key` (`groupID`,`studentID`) USING BTREE,
  ADD KEY `groups_has_students_ibfk_2` (`studentID`) USING BTREE;

--
-- Indexes for table `group_invitations`
--
ALTER TABLE `group_invitations`
  ADD UNIQUE KEY `code` (`code`) USING BTREE,
  ADD KEY `groupID` (`groupID`) USING BTREE;

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `resultID` (`resultID`) USING BTREE,
  ADD KEY `instructorID` (`instructorID`) USING BTREE,
  ADD KEY `studentID` (`studentID`) USING BTREE;

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `question_ibfk_1` (`instructorID`) USING BTREE,
  ADD KEY `question_ibfk_2` (`courseID`) USING BTREE;

--
-- Indexes for table `question_answers`
--
ALTER TABLE `question_answers`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `answers_ibfk_1` (`questionID`) USING BTREE,
  ADD KEY `matchAnswer` (`matchAnswer`) USING BTREE;

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `testID_2` (`testID`,`studentID`) USING BTREE,
  ADD KEY `result_ibfk_2` (`studentID`) USING BTREE,
  ADD KEY `settingID` (`settingID`) USING BTREE,
  ADD KEY `groupID` (`groupID`) USING BTREE;

--
-- Indexes for table `result_answers`
--
ALTER TABLE `result_answers`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `FK_result_answers_result` (`resultID`) USING BTREE,
  ADD KEY `FK_result_answers_question` (`questionID`) USING BTREE,
  ADD KEY `answerID` (`answerID`) USING BTREE;

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `email` (`email`) USING BTREE;

--
-- Indexes for table `students_has_tests`
--
ALTER TABLE `students_has_tests`
  ADD UNIQUE KEY `StudentID` (`studentID`,`testID`) USING BTREE,
  ADD KEY `students_has_tests_ibfk_1` (`studentID`) USING BTREE,
  ADD KEY `students_has_tests_ibfk_2` (`testID`) USING BTREE,
  ADD KEY `students_has_tests_ibfk_3` (`settingID`) USING BTREE;

--
-- Indexes for table `tempquestions`
--
ALTER TABLE `tempquestions`
  ADD UNIQUE KEY `resultID` (`resultID`,`questionID`) USING BTREE,
  ADD KEY `quest` (`questionID`) USING BTREE;

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `instructorID` (`instructorID`) USING BTREE,
  ADD KEY `courseID` (`courseID`) USING BTREE;

--
-- Indexes for table `tests_has_questions`
--
ALTER TABLE `tests_has_questions`
  ADD UNIQUE KEY `my_unique_key` (`testID`,`questionID`) USING BTREE,
  ADD KEY `tests_has_questions_ibfk_2` (`questionID`) USING BTREE;

--
-- Indexes for table `test_invitations`
--
ALTER TABLE `test_invitations`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `instructorID` (`instructorID`) USING BTREE,
  ADD KEY `settingID` (`settingID`) USING BTREE,
  ADD KEY `test_invitations_ibfk_1` (`testID`) USING BTREE;

--
-- Indexes for table `test_random_questions`
--
ALTER TABLE `test_random_questions`
  ADD UNIQUE KEY `testID_2` (`testID`,`courseID`,`difficulty`) USING BTREE,
  ADD KEY `testID` (`testID`) USING BTREE,
  ADD KEY `courseID` (`courseID`) USING BTREE;

--
-- Indexes for table `test_settings`
--
ALTER TABLE `test_settings`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `instructorID` (`instructorID`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `mails`
--
ALTER TABLE `mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `question_answers`
--
ALTER TABLE `question_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=921;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `result_answers`
--
ALTER TABLE `result_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=481;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `test_invitations`
--
ALTER TABLE `test_invitations`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `test_settings`
--
ALTER TABLE `test_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`instructorID`) REFERENCES `instructor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `course_ibfk_2` FOREIGN KEY (`parent`) REFERENCES `course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_ibfk_1` FOREIGN KEY (`instructorID`) REFERENCES `instructor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `groups_ibfk_2` FOREIGN KEY (`assignedTest`) REFERENCES `test` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `groups_ibfk_3` FOREIGN KEY (`settingID`) REFERENCES `test_settings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `groups_has_students`
--
ALTER TABLE `groups_has_students`
  ADD CONSTRAINT `groups_has_students_ibfk_1` FOREIGN KEY (`groupID`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `groups_has_students_ibfk_2` FOREIGN KEY (`studentID`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `group_invitations`
--
ALTER TABLE `group_invitations`
  ADD CONSTRAINT `group_invitations_ibfk_1` FOREIGN KEY (`groupID`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mails`
--
ALTER TABLE `mails`
  ADD CONSTRAINT `mails_ibfk_1` FOREIGN KEY (`resultID`) REFERENCES `result` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mails_ibfk_2` FOREIGN KEY (`instructorID`) REFERENCES `instructor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mails_ibfk_3` FOREIGN KEY (`studentID`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`instructorID`) REFERENCES `instructor` (`id`),
  ADD CONSTRAINT `question_ibfk_2` FOREIGN KEY (`courseID`) REFERENCES `course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `question_answers`
--
ALTER TABLE `question_answers`
  ADD CONSTRAINT `question_answers_ibfk_1` FOREIGN KEY (`questionID`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `result_ibfk_2` FOREIGN KEY (`studentID`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `result_ibfk_3` FOREIGN KEY (`testID`) REFERENCES `test` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `result_ibfk_4` FOREIGN KEY (`settingID`) REFERENCES `test_settings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `result_ibfk_5` FOREIGN KEY (`groupID`) REFERENCES `groups` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `result_answers`
--
ALTER TABLE `result_answers`
  ADD CONSTRAINT `FK_result_answers_result` FOREIGN KEY (`resultID`) REFERENCES `result` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `result_answers_ibfk_1` FOREIGN KEY (`answerID`) REFERENCES `question_answers` (`id`),
  ADD CONSTRAINT `result_answers_ibfk_2` FOREIGN KEY (`questionID`) REFERENCES `question` (`id`);

--
-- Constraints for table `students_has_tests`
--
ALTER TABLE `students_has_tests`
  ADD CONSTRAINT `students_has_tests_ibfk_1` FOREIGN KEY (`studentID`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `students_has_tests_ibfk_2` FOREIGN KEY (`testID`) REFERENCES `test` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `students_has_tests_ibfk_3` FOREIGN KEY (`settingID`) REFERENCES `test_settings` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `tempquestions`
--
ALTER TABLE `tempquestions`
  ADD CONSTRAINT `tempquestions_ibfk_1` FOREIGN KEY (`resultID`) REFERENCES `result` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `test_ibfk_1` FOREIGN KEY (`instructorID`) REFERENCES `instructor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `test_ibfk_2` FOREIGN KEY (`courseID`) REFERENCES `course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tests_has_questions`
--
ALTER TABLE `tests_has_questions`
  ADD CONSTRAINT `tests_has_questions_ibfk_1` FOREIGN KEY (`testID`) REFERENCES `test` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tests_has_questions_ibfk_2` FOREIGN KEY (`questionID`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `test_invitations`
--
ALTER TABLE `test_invitations`
  ADD CONSTRAINT `test_invitations_ibfk_1` FOREIGN KEY (`testID`) REFERENCES `test` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `test_invitations_ibfk_3` FOREIGN KEY (`instructorID`) REFERENCES `instructor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `test_invitations_ibfk_4` FOREIGN KEY (`settingID`) REFERENCES `test_settings` (`id`);

--
-- Constraints for table `test_random_questions`
--
ALTER TABLE `test_random_questions`
  ADD CONSTRAINT `test_random_questions_ibfk_1` FOREIGN KEY (`courseID`) REFERENCES `course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `test_random_questions_ibfk_2` FOREIGN KEY (`testID`) REFERENCES `test` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `test_settings`
--
ALTER TABLE `test_settings`
  ADD CONSTRAINT `test_settings_ibfk_1` FOREIGN KEY (`instructorID`) REFERENCES `instructor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
