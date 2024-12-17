-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 17, 2024 at 06:22 AM
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
-- Database: `mess`
--

-- --------------------------------------------------------

--
-- Table structure for table `activated`
--

CREATE TABLE `activated` (
  `id` int(11) NOT NULL,
  `std_id` varchar(255) NOT NULL,
  `tutor_id` varchar(255) NOT NULL,
  `post_id` varchar(255) NOT NULL,
  `status` enum('Available','Pending','Not-available','Confirm','Hide') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `activated`
--

INSERT INTO `activated` (`id`, `std_id`, `tutor_id`, `post_id`, `status`) VALUES
(12, '787579835', '837706146', '658502', 'Confirm');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'suryaprasadtripathy8@gmail.com', 'pinkylove');

-- --------------------------------------------------------

--
-- Table structure for table `all_student`
--

CREATE TABLE `all_student` (
  `id` int(11) NOT NULL,
  `std_id` varchar(255) NOT NULL,
  `std_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `std_class` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `sec` varchar(255) NOT NULL,
  `roll` varchar(255) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `active` enum('0','1') NOT NULL DEFAULT '0',
  `phoneId` varchar(255) NOT NULL,
  `p_of_class` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `all_student`
--

INSERT INTO `all_student` (`id`, `std_id`, `std_name`, `phone`, `std_class`, `class`, `sec`, `roll`, `unique_id`, `dob`, `active`, `phoneId`, `p_of_class`) VALUES
(1, 'U-FF-0000001-01585855075', 'Farhad Foysal', '01690175881', '', '', '', '', '837706146', '', '0', '0169017588154', '13'),
(2, '01770627875', 'Farhad Foysal', '01770627875', '', '', '', '', '', '', '0', '0177062787537', '');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `aid` int(255) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `ans_id` int(250) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`aid`, `answer`, `ans_id`, `course_name`) VALUES
(1, 'Home Tool Markup Language', 1, 'html'),
(2, 'Hyperlinks and Text Markup Language', 1, 'html'),
(3, ' Hyper Text Markup Language', 1, 'html'),
(4, ' Hyper Train Markup Language', 1, 'html'),
(5, '  Mozilla', 2, 'html'),
(6, '  Google', 2, 'html'),
(7, 'Microsoft', 2, 'html'),
(8, 'W3C', 2, 'html'),
(9, '<head>', 3, 'html'),
(10, '<heading>', 3, 'html'),
(11, '<h6>', 3, 'html'),
(12, '<h1>', 3, 'html'),
(13, '<lb>', 4, 'html'),
(14, '<br>', 4, 'html'),
(15, '<break>', 4, 'html'),
(16, '<bk>', 4, 'html'),
(17, 'programming language', 5, 'java'),
(18, 'web designing language', 5, 'java'),
(19, 'OOPS language', 5, 'java'),
(20, 'general purpose language', 5, 'java');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `catname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `catname`) VALUES
(4, 'BREAKFAST'),
(5, 'LUNCH'),
(6, 'DINNER'),
(7, 'AFFTERNOON'),
(9, 'IT'),
(10, 'ICT'),
(11, 'মসলা সামগ্রী');

-- --------------------------------------------------------

--
-- Table structure for table `category_f`
--

CREATE TABLE `category_f` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `category_f`
--

INSERT INTO `category_f` (`id`, `cat_name`, `status`) VALUES
(1, 'php', ''),
(2, 'java', ''),
(3, 'python', ''),
(4, 'android', ''),
(5, 'jQuery', ''),
(6, 'IR', ''),
(7, 'hadoop', ''),
(8, 'Graphic Design', ''),
(9, 'hadoop', ''),
(10, 'css', ''),
(11, 'comedy nights', '');

-- --------------------------------------------------------

--
-- Table structure for table `class_section`
--

CREATE TABLE `class_section` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `class_code` varchar(255) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `active` enum('1','0') NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `p_of_class` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_section`
--

INSERT INTO `class_section` (`id`, `unique_id`, `class_code`, `class_name`, `active`, `date`, `p_of_class`) VALUES
(1, '837706146', '83770614620220001', 'Hons(1st)', '0', '2022-04-29 16:24:25', '13');

-- --------------------------------------------------------

--
-- Table structure for table `class_soes`
--

CREATE TABLE `class_soes` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(250) NOT NULL,
  `class_code` varchar(100) NOT NULL,
  `class_status` enum('Enable','Disable') NOT NULL,
  `class_created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `class_soes`
--

INSERT INTO `class_soes` (`class_id`, `class_name`, `class_code`, `class_status`, `class_created_on`) VALUES
(1, 'GD', 'd12ad1941324a3378bf82045e066b280', 'Enable', '2021-07-19 15:17:48'),
(2, 'mf1', '3b6861f4fc42baac82a30399b4ab028a', 'Enable', '2021-08-10 16:25:04');

-- --------------------------------------------------------

--
-- Table structure for table `commentsection`
--

CREATE TABLE `commentsection` (
  `cid` int(11) NOT NULL,
  `uid` varchar(120) NOT NULL,
  `date` datetime NOT NULL,
  `message` mediumtext NOT NULL,
  `video_id` int(255) NOT NULL,
  `video_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `commentsection`
--

INSERT INTO `commentsection` (`cid`, `uid`, `date`, `message`, `video_id`, `video_path`) VALUES
(153, 'sunil yadav', '2019-04-15 19:05:17', '5', 50, 'comedy knights'),
(155, 'sunil', '2021-03-13 15:50:57', 'very helpful', 51, '');

-- --------------------------------------------------------

--
-- Table structure for table `comment_box`
--

CREATE TABLE `comment_box` (
  `id` int(11) NOT NULL,
  `post_id` varchar(255) NOT NULL,
  `parent_id` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `post_user` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `love_count` int(255) NOT NULL,
  `like_count` int(255) NOT NULL,
  `dislike_count` int(255) NOT NULL,
  `view_reply` int(255) NOT NULL,
  `mode` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `comment_box`
--

INSERT INTO `comment_box` (`id`, `post_id`, `parent_id`, `comment`, `user`, `post_user`, `date`, `time`, `love_count`, `like_count`, `dislike_count`, `view_reply`, `mode`) VALUES
(1, '16', '0', 'nice post MahsaAllah', '837706146', '837706146', '2021-12-05 18:00:00', '2021-12-06 07:02:38', 0, 0, 0, 0, 'p'),
(30, '22', '0', '\r\nAsslamualaikum', '837706146', '837706146', '2021-12-05 18:00:00', '2021-12-06 12:06:40', 10, 2, 3, 2, 'p'),
(88, '22', '30', 'walaikumassalam', '787579833', '837706146', '2021-12-18 18:00:00', '2021-12-19 15:34:36', 3, 1, 1, 1, 'p'),
(92, '22', '0', '\r\nAsslamualaikum', '837706146', '837706146', '2021-12-05 18:00:00', '2021-12-06 12:06:40', 16, 2, 3, 1, 'p'),
(93, '22', '0', 'hi', '787579833', '837706146', '2022-01-12 16:06:35', '2022-01-12 16:06:35', 0, 0, 0, 3, 'p'),
(94, '22', '30', '@najifa, hmmmmmm', '787579833', '837706146', '2022-01-12 16:14:27', '2022-01-12 16:14:27', 0, 0, 0, 0, 'p'),
(95, '22', '93', 'hlw', '787579833', '837706146', '2022-01-12 16:16:26', '2022-01-12 16:16:26', 0, 0, 0, 1, 'p'),
(96, '22', '93', '@najifa, ji', '787579833', '837706146', '2022-01-12 16:17:16', '2022-01-12 16:17:16', 0, 0, 0, 0, 'p'),
(97, '3', '0', 'Alhamdulillah', '1213154382', '1213154382', '2022-01-12 17:34:08', '2022-01-12 17:34:08', 2, 0, 0, 0, 'q');

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `id` int(255) NOT NULL,
  `coupon` varchar(255) NOT NULL,
  `coupon_value` varchar(255) NOT NULL,
  `min_price` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL,
  `ad_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`id`, `coupon`, `coupon_value`, `min_price`, `status`, `ad_name`) VALUES
(1, 'FMNF369', '0.2', '1500', '1', 'mffoysal'),
(2, 'MF', '0.2', '1500', '1', 'mffoysal'),
(3, 'farha', '0.017', '500', '1', 'farhad foysal');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `topic_name` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `course_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `topic_name`, `description`, `course_name`) VALUES
(1, 'JAVA_HOME', '<h1 style=\"margin-left:200px\"><span style=\"color:#3498db\"><strong>Java Tutorial</strong></span></h1>\r\n\r\n<p>Java is a high-level programming language originally developed by Sun Microsystems and released in 1995. Java runs on a variety of platforms, such as Windows, Mac OS, and the various versions of UNIX. This tutorial gives a complete understanding of Java. This reference will take you through simple and practical approaches while learning Java Programming language.</p>\r\n\r\n<h1>Audience</h1>\r\n\r\n<p>This tutorial has been prepared for the beginners to help them understand the basic to advanced concepts related to Java Programming language.</p>\r\n\r\n<h1>Prerequisites</h1>\r\n\r\n<p>Before you start practicing various types of examples given in this reference, we assume that you are already aware about computer programs and computer programming languages.</p>\r\n', 'java'),
(2, 'Java - Overview', '<h1 style=\"margin-left:160px\"><span style=\"color:#3498db\"><strong>Java - Overview</strong></span></h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Java programming language was originally developed by Sun Microsystems which was initiated by James Gosling and released in 1995 as core component of Sun Microsystems&#39; Java platform (Java 1.0 [J2SE]).</p>\r\n\r\n<p>The latest release of the Java Standard Edition is Java SE 8. With the advancement of Java and its widespread popularity, multiple configurations were built to suit various types of platforms. For example: J2EE for Enterprise Applications, J2ME for Mobile Applications.</p>\r\n\r\n<p>The new J2 versions were renamed as Java SE, Java EE, and Java ME respectively. Java is guaranteed to be&nbsp;<strong>Write Once, Run Anywhere.</strong></p>\r\n\r\n<p>Java is &minus;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Object Oriented</strong>&nbsp;&minus; In Java, everything is an Object. Java can be easily extended since it is based on the Object model.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Platform Independent</strong>&nbsp;&minus; Unlike many other programming languages including C and C++, when Java is compiled, it is not compiled into platform specific machine, rather into platform independent byte code. This byte code is distributed over the web and interpreted by the Virtual Machine (JVM) on whichever platform it is being run on.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Simple</strong>&nbsp;&minus; Java is designed to be easy to learn. If you understand the basic concept of OOP Java, it would be easy to master.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Secure</strong>&nbsp;&minus; With Java&#39;s secure feature it enables to develop virus-free, tamper-free systems. Authentication techniques are based on public-key encryption.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Architecture-neutral</strong>&nbsp;&minus; Java compiler generates an architecture-neutral object file format, which makes the compiled code executable on many processors, with the presence of Java runtime system.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Portable</strong>&nbsp;&minus; Being architecture-neutral and having no implementation dependent aspects of the specification makes Java portable. Compiler in Java is written in ANSI C with a clean portability boundary, which is a POSIX subset.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Robust</strong>&nbsp;&minus; Java makes an effort to eliminate error prone situations by emphasizing mainly on compile time error checking and runtime checking.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Multithreaded</strong>&nbsp;&minus; With Java&#39;s multithreaded feature it is possible to write programs that can perform many tasks simultaneously. This design feature allows the developers to construct interactive applications that can run smoothly.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Interpreted</strong>&nbsp;&minus; Java byte code is translated on the fly to native machine instructions and is not stored anywhere. The development process is more rapid and analytical since the linking is an incremental and light-weight process.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>High Performance</strong>&nbsp;&minus; With the use of Just-In-Time compilers, Java enables high performance.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Distributed</strong>&nbsp;&minus; Java is designed for the distributed environment of the internet.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Dynamic</strong>&nbsp;&minus; Java is considered to be more dynamic than C or C++ since it is designed to adapt to an evolving environment. Java programs can carry extensive amount of run-time information that can be used to verify and resolve accesses to objects on run-time.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>History of Java</h2>\r\n\r\n<p>James Gosling initiated Java language project in June 1991 for use in one of his many set-top box projects. The language, initially called &lsquo;Oak&rsquo; after an oak tree that stood outside Gosling&#39;s office, also went by the name &lsquo;Green&rsquo; and ended up later being renamed as Java, from a list of random words.</p>\r\n\r\n<p>Sun released the first public implementation as Java 1.0 in 1995. It promised&nbsp;<strong>Write Once, Run Anywhere</strong>&nbsp;(WORA), providing no-cost run-times on popular platforms.</p>\r\n\r\n<p>On 13 November, 2006, Sun released much of Java as free and open source software under the terms of the GNU General Public License (GPL).</p>\r\n\r\n<p>On 8 May, 2007, Sun finished the process, making all of Java&#39;s core code free and open-source, aside from a small portion of code to which Sun did not hold the copyright.</p>\r\n\r\n<h2>Tools You Will Need</h2>\r\n\r\n<p>For performing the examples discussed in this tutorial, you will need a Pentium 200-MHz computer with a minimum of 64 MB of RAM (128 MB of RAM recommended).</p>\r\n\r\n<p>You will also need the following softwares &minus;</p>\r\n\r\n<ul>\r\n	<li>Linux 7.1 or Windows xp/7/8 operating system</li>\r\n	<li>Java JDK 8</li>\r\n	<li>Microsoft Notepad or any other text editor</li>\r\n</ul>\r\n\r\n<p>This tutorial will provide the necessary skills to create GUI, networking, and web applications using Java.</p>\r\n\r\n<h2>What is Next?</h2>\r\n\r\n<p>The next chapter will guide you to how you can obtain Java and its documentation. Finally, it instructs you on how to install Java and prepare an environment to develop Java applications.</p>\r\n', 'java'),
(33, 'Java - Environment Setup', '<h1 style=\"margin-left:120px\"><span style=\"font-size:24px\"><span style=\"color:#3498db\"><strong>Java - Environment Setup</strong></span></span></h1>\r\n\r\n<p>In this chapter, we will discuss on the different aspects of setting up a congenial environment for Java.</p>\r\n\r\n<h2>Local Environment Setup</h2>\r\n\r\n<p>If you are still willing to set up your environment for Java programming language, then this section guides you on how to download and set up Java on your machine. Following are the steps to set up the environment.</p>\r\n\r\n<p>Java SE is freely available from the link&nbsp;<a href=\"https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html\" rel=\"nofollow\" target=\"_blank\">Download Java</a>. You can download a version based on your operating system.</p>\r\n\r\n<p>Follow the instructions to download Java and run the&nbsp;<strong>.exe</strong>&nbsp;to install Java on your machine. Once you installed Java on your machine, you will need to set environment variables to point to correct installation directories &minus;</p>\r\n\r\n<h3>Setting Up the Path for Windows</h3>\r\n\r\n<p>Assuming you have installed Java in&nbsp;<em>c:Program Filesjavajdk</em>&nbsp;directory &minus;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Right-click on &#39;My Computer&#39; and select &#39;Properties&#39;.</p>\r\n	</li>\r\n	<li>\r\n	<p>Click the &#39;Environment variables&#39; button under the &#39;Advanced&#39; tab.</p>\r\n	</li>\r\n	<li>\r\n	<p>Now, alter the &#39;Path&#39; variable so that it also contains the path to the Java executable. Example, if the path is currently set to &#39;C:WINDOWSSYSTEM32&#39;, then change your path to read &#39;C:WINDOWSSYSTEM32;c:Program Filesjavajdkin&#39;.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Setting Up the Path for Linux, UNIX, Solaris, FreeBSD</h3>\r\n\r\n<p>Environment variable PATH should be set to point to where the Java binaries have been installed. Refer to your shell documentation, if you have trouble doing this.</p>\r\n\r\n<p>Example, if you use&nbsp;<em>bash</em>&nbsp;as your shell, then you would add the following line to the end of your &#39;.bashrc: export PATH = /path/to/java:$PATH&#39;</p>\r\n\r\n<h2>Popular Java Editors</h2>\r\n\r\n<p>To write your Java programs, you will need a text editor. There are even more sophisticated IDEs available in the market. But for now, you can consider one of the following &minus;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Notepad</strong>&nbsp;&minus; On Windows machine, you can use any simple text editor like Notepad (Recommended for this tutorial), TextPad.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Netbeans</strong>&nbsp;&minus; A Java IDE that is open-source and free which can be downloaded from&nbsp;<a href=\"https://www.netbeans.org/index.html\" rel=\"nofollow\" target=\"_blank\">https://www.netbeans.org/index.html</a>.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Eclipse</strong>&nbsp;&minus; A Java IDE developed by the eclipse open-source community and can be downloaded from&nbsp;<a href=\"https://www.eclipse.org/\" rel=\"nofollow\" target=\"_blank\">https://www.eclipse.org/</a>.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>What is Next?</h2>\r\n\r\n<p>Next chapter will teach you how to write and run your first Java program and some of the important basic syntaxes in Java needed for developing applications.</p>\r\n', 'java'),
(34, 'Java - Basic Syntax', '<h1 style=\"margin-left:80px\"><span style=\"color:#3498db\"><span style=\"font-size:24px\">Java - Basic Syntax</span></span></h1>\r\n\r\n<p>When we consider a Java program, it can be defined as a collection of objects that communicate via invoking each other&#39;s methods. Let us now briefly look into what do class, object, methods, and instance variables mean.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Object</strong>&nbsp;&minus; Objects have states and behaviors. Example: A dog has states - color, name, breed as well as behavior such as wagging their tail, barking, eating. An object is an instance of a class.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Class</strong>&nbsp;&minus; A class can be defined as a template/blueprint that describes the behavior/state that the object of its type supports.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Methods</strong>&nbsp;&minus; A method is basically a behavior. A class can contain many methods. It is in methods where the logics are written, data is manipulated and all the actions are executed.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Instance Variables</strong>&nbsp;&minus; Each object has its unique set of instance variables. An object&#39;s state is created by the values assigned to these instance variables.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>First Java Program</h2>\r\n\r\n<p>Let us look at a simple code that will print the words&nbsp;<strong><em>Hello World</em></strong>.</p>\r\n\r\n<h3>Example</h3>\r\n\r\n<p><a href=\"http://tpcg.io/tv5b2l\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\npublic class MyFirstJavaProgram {\r\n\r\n   /* This is my first java program.\r\n    * This will print &#39;Hello World&#39; as the output\r\n    */\r\n\r\n   public static void main(String []args) {\r\n      System.out.println(&quot;Hello World&quot;); // prints Hello World\r\n   }\r\n}</pre>\r\n\r\n<p>Let&#39;s look at how to save the file, compile, and run the program. Please follow the subsequent steps &minus;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Open notepad and add the code as above.</p>\r\n	</li>\r\n	<li>\r\n	<p>Save the file as: MyFirstJavaProgram.java.</p>\r\n	</li>\r\n	<li>\r\n	<p>Open a command prompt window and go to the directory where you saved the class. Assume it&#39;s C:.</p>\r\n	</li>\r\n	<li>\r\n	<p>Type &#39;javac MyFirstJavaProgram.java&#39; and press enter to compile your code. If there are no errors in your code, the command prompt will take you to the next line (Assumption : The path variable is set).</p>\r\n	</li>\r\n	<li>\r\n	<p>Now, type &#39; java MyFirstJavaProgram &#39; to run your program.</p>\r\n	</li>\r\n	<li>\r\n	<p>You will be able to see &#39; Hello World &#39; printed on the window.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Output</h3>\r\n\r\n<pre>\r\nC:&gt; javac MyFirstJavaProgram.java\r\nC:&gt; java MyFirstJavaProgram \r\nHello World\r\n</pre>\r\n\r\n<h2>Basic Syntax</h2>\r\n\r\n<p>About Java programs, it is very important to keep in mind the following points.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Case Sensitivity</strong>&nbsp;&minus; Java is case sensitive, which means identifier&nbsp;<strong>Hello</strong>&nbsp;and&nbsp;<strong>hello</strong>&nbsp;would have different meaning in Java.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Class Names</strong>&nbsp;&minus; For all class names the first letter should be in Upper Case. If several words are used to form a name of the class, each inner word&#39;s first letter should be in Upper Case.</p>\r\n\r\n	<p><strong>Example:</strong>&nbsp;<em>class MyFirstJavaClass</em></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Method Names</strong>&nbsp;&minus; All method names should start with a Lower Case letter. If several words are used to form the name of the method, then each inner word&#39;s first letter should be in Upper Case.</p>\r\n\r\n	<p><strong>Example:</strong>&nbsp;<em>public void myMethodName()</em></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Program File Name</strong>&nbsp;&minus; Name of the program file should exactly match the class name.</p>\r\n\r\n	<p>When saving the file, you should save it using the class name (Remember Java is case sensitive) and append &#39;.java&#39; to the end of the name (if the file name and the class name do not match, your program will not compile).</p>\r\n\r\n	<p>But please make a note that in case you do not have a public class present in the file then file name can be different than class name. It is also not mandatory to have a public class in the file.</p>\r\n\r\n	<p><strong>Example:</strong>&nbsp;Assume &#39;MyFirstJavaProgram&#39; is the class name. Then the file should be saved as&nbsp;<em>&#39;MyFirstJavaProgram.java&#39;</em></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>public static void main(String args[])</strong>&nbsp;&minus; Java program processing starts from the main() method which is a mandatory part of every Java program.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Java Identifiers</h2>\r\n\r\n<p>All Java components require names. Names used for classes, variables, and methods are called&nbsp;<strong>identifiers</strong>.</p>\r\n\r\n<p>In Java, there are several points to remember about identifiers. They are as follows &minus;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>All identifiers should begin with a letter (A to Z or a to z), currency character ($) or an underscore (_).</p>\r\n	</li>\r\n	<li>\r\n	<p>After the first character, identifiers can have any combination of characters.</p>\r\n	</li>\r\n	<li>\r\n	<p>A key word cannot be used as an identifier.</p>\r\n	</li>\r\n	<li>\r\n	<p>Most importantly, identifiers are case sensitive.</p>\r\n	</li>\r\n	<li>\r\n	<p>Examples of legal identifiers: age, $salary, _value, __1_value.</p>\r\n	</li>\r\n	<li>\r\n	<p>Examples of illegal identifiers: 123abc, -salary.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Java Modifiers</h2>\r\n\r\n<p>Like other languages, it is possible to modify classes, methods, etc., by using modifiers. There are two categories of modifiers &minus;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Access Modifiers</strong>&nbsp;&minus; default, public , protected, private</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Non-access Modifiers</strong>&nbsp;&minus; final, abstract, strictfp</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>We will be looking into more details about modifiers in the next section.</p>\r\n\r\n<h2>Java Variables</h2>\r\n\r\n<p>Following are the types of variables in Java &minus;</p>\r\n\r\n<ul>\r\n	<li>Local Variables</li>\r\n	<li>Class Variables (Static Variables)</li>\r\n	<li>Instance Variables (Non-static Variables)</li>\r\n</ul>\r\n\r\n<h2>Java Arrays</h2>\r\n\r\n<p>Arrays are objects that store multiple variables of the same type. However, an array itself is an object on the heap. We will look into how to declare, construct, and initialize in the upcoming chapters.</p>\r\n\r\n<h2>Java Enums</h2>\r\n\r\n<p>Enums were introduced in Java 5.0. Enums restrict a variable to have one of only a few predefined values. The values in this enumerated list are called enums.</p>\r\n\r\n<p>With the use of enums it is possible to reduce the number of bugs in your code.</p>\r\n\r\n<p>For example, if we consider an application for a fresh juice shop, it would be possible to restrict the glass size to small, medium, and large. This would make sure that it would not allow anyone to order any size other than small, medium, or large.</p>\r\n\r\n<h3>Example</h3>\r\n\r\n<p><a href=\"http://tpcg.io/VNJ9DE\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\nclass FreshJuice {\r\n   enum FreshJuiceSize{ SMALL, MEDIUM, LARGE }\r\n   FreshJuiceSize size;\r\n}\r\n\r\npublic class FreshJuiceTest {\r\n\r\n   public static void main(String args[]) {\r\n      FreshJuice juice = new FreshJuice();\r\n      juice.size = FreshJuice.FreshJuiceSize.MEDIUM ;\r\n      System.out.println(&quot;Size: &quot; + juice.size);\r\n   }\r\n}</pre>\r\n\r\n<p>The above example will produce the following result &minus;</p>\r\n\r\n<h3>Output</h3>\r\n\r\n<pre>\r\nSize: MEDIUM\r\n</pre>\r\n\r\n<p><strong>Note</strong>&nbsp;&minus; Enums can be declared as their own or inside a class. Methods, variables, constructors can be defined inside enums as well.</p>\r\n\r\n<h2>Java Keywords</h2>\r\n\r\n<p>The following list shows the reserved words in Java. These reserved words may not be used as constant or variable or any other identifier names.</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>abstract</td>\r\n			<td>assert</td>\r\n			<td>boolean</td>\r\n			<td>break</td>\r\n		</tr>\r\n		<tr>\r\n			<td>byte</td>\r\n			<td>case</td>\r\n			<td>catch</td>\r\n			<td>char</td>\r\n		</tr>\r\n		<tr>\r\n			<td>class</td>\r\n			<td>const</td>\r\n			<td>continue</td>\r\n			<td>default</td>\r\n		</tr>\r\n		<tr>\r\n			<td>do</td>\r\n			<td>double</td>\r\n			<td>else</td>\r\n			<td>enum</td>\r\n		</tr>\r\n		<tr>\r\n			<td>extends</td>\r\n			<td>final</td>\r\n			<td>finally</td>\r\n			<td>float</td>\r\n		</tr>\r\n		<tr>\r\n			<td>for</td>\r\n			<td>goto</td>\r\n			<td>if</td>\r\n			<td>implements</td>\r\n		</tr>\r\n		<tr>\r\n			<td>import</td>\r\n			<td>instanceof</td>\r\n			<td>int</td>\r\n			<td>interface</td>\r\n		</tr>\r\n		<tr>\r\n			<td>long</td>\r\n			<td>native</td>\r\n			<td>new</td>\r\n			<td>package</td>\r\n		</tr>\r\n		<tr>\r\n			<td>private</td>\r\n			<td>protected</td>\r\n			<td>public</td>\r\n			<td>return</td>\r\n		</tr>\r\n		<tr>\r\n			<td>short</td>\r\n			<td>static</td>\r\n			<td>strictfp</td>\r\n			<td>super</td>\r\n		</tr>\r\n		<tr>\r\n			<td>switch</td>\r\n			<td>synchronized</td>\r\n			<td>this</td>\r\n			<td>throw</td>\r\n		</tr>\r\n		<tr>\r\n			<td>throws</td>\r\n			<td>transient</td>\r\n			<td>try</td>\r\n			<td>void</td>\r\n		</tr>\r\n		<tr>\r\n			<td>volatile</td>\r\n			<td>while</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Comments in Java</h2>\r\n\r\n<p>Java supports single-line and multi-line comments very similar to C and C++. All characters available inside any comment are ignored by Java compiler.</p>\r\n\r\n<h3>Example</h3>\r\n\r\n<p><a href=\"http://tpcg.io/RVBY2x\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\npublic class MyFirstJavaProgram {\r\n\r\n   /* This is my first java program.\r\n    * This will print &#39;Hello World&#39; as the output\r\n    * This is an example of multi-line comments.\r\n    */\r\n\r\n   public static void main(String []args) {\r\n      // This is an example of single line comment\r\n      /* This is also an example of single line comment. */\r\n      System.out.println(&quot;Hello World&quot;);\r\n   }\r\n}</pre>\r\n\r\n<h3>Output</h3>\r\n\r\n<pre>\r\nHello World\r\n</pre>\r\n\r\n<h2>Using Blank Lines</h2>\r\n\r\n<p>A line containing only white space, possibly with a comment, is known as a blank line, and Java totally ignores it.</p>\r\n\r\n<h2>Inheritance</h2>\r\n\r\n<p>In Java, classes can be derived from classes. Basically, if you need to create a new class and here is already a class that has some of the code you require, then it is possible to derive your new class from the already existing code.</p>\r\n\r\n<p>This concept allows you to reuse the fields and methods of the existing class without having to rewrite the code in a new class. In this scenario, the existing class is called the&nbsp;<strong>superclass</strong>&nbsp;and the derived class is called the&nbsp;<strong>subclass</strong>.</p>\r\n\r\n<h2>Interfaces</h2>\r\n\r\n<p>In Java language, an interface can be defined as a contract between objects on how to communicate with each other. Interfaces play a vital role when it comes to the concept of inheritance.</p>\r\n\r\n<p>An interface defines the methods, a deriving class (subclass) should use. But the implementation of the methods is totally up to the subclass.</p>\r\n\r\n<h2>What is Next?</h2>\r\n\r\n<p>The next section explains about Objects and classes in Java programming. At the end of the session, you will be able to get a clear picture as to what are objects and what are classes in Java.</p>\r\n', 'java'),
(35, 'Java - Object and Classes', '<h1 style=\"margin-left:80px\"><span style=\"color:#3498db\"><strong><span style=\"font-size:24px\">Java - Object and Classes</span></strong></span></h1>\r\n\r\n<p>Java is an Object-Oriented Language. As a language that has the Object-Oriented feature, Java supports the following fundamental concepts &minus;</p>\r\n\r\n<ul>\r\n	<li>Polymorphism</li>\r\n	<li>Inheritance</li>\r\n	<li>Encapsulation</li>\r\n	<li>Abstraction</li>\r\n	<li>Classes</li>\r\n	<li>Objects</li>\r\n	<li>Instance</li>\r\n	<li>Method</li>\r\n	<li>Message Passing</li>\r\n</ul>\r\n\r\n<p>In this chapter, we will look into the concepts - Classes and Objects.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Object</strong>&nbsp;&minus; Objects have states and behaviors. Example: A dog has states - color, name, breed as well as behaviors &ndash; wagging the tail, barking, eating. An object is an instance of a class.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Class</strong>&nbsp;&minus; A class can be defined as a template/blueprint that describes the behavior/state that the object of its type support.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Objects in Java</h2>\r\n\r\n<p>Let us now look deep into what are objects. If we consider the real-world, we can find many objects around us, cars, dogs, humans, etc. All these objects have a state and a behavior.</p>\r\n\r\n<p>If we consider a dog, then its state is - name, breed, color, and the behavior is - barking, wagging the tail, running.</p>\r\n\r\n<p>If you compare the software object with a real-world object, they have very similar characteristics.</p>\r\n\r\n<p>Software objects also have a state and a behavior. A software object&#39;s state is stored in fields and behavior is shown via methods.</p>\r\n\r\n<p>So in software development, methods operate on the internal state of an object and the object-to-object communication is done via methods.</p>\r\n\r\n<h2>Classes in Java</h2>\r\n\r\n<p>A class is a blueprint from which individual objects are created.</p>\r\n\r\n<p>Following is a sample of a class.</p>\r\n\r\n<h3>Example</h3>\r\n\r\n<pre>\r\npublic class Dog {\r\n   String breed;\r\n   int age;\r\n   String color;\r\n\r\n   void barking() {\r\n   }\r\n\r\n   void hungry() {\r\n   }\r\n\r\n   void sleeping() {\r\n   }\r\n}</pre>\r\n\r\n<p>A class can contain any of the following variable types.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Local variables</strong>&nbsp;&minus; Variables defined inside methods, constructors or blocks are called local variables. The variable will be declared and initialized within the method and the variable will be destroyed when the method has completed.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Instance variables</strong>&nbsp;&minus; Instance variables are variables within a class but outside any method. These variables are initialized when the class is instantiated. Instance variables can be accessed from inside any method, constructor or blocks of that particular class.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Class variables</strong>&nbsp;&minus; Class variables are variables declared within a class, outside any method, with the static keyword.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>A class can have any number of methods to access the value of various kinds of methods. In the above example, barking(), hungry() and sleeping() are methods.</p>\r\n\r\n<p>Following are some of the important topics that need to be discussed when looking into classes of the Java Language.</p>\r\n\r\n<h2>Constructors</h2>\r\n\r\n<p>When discussing about classes, one of the most important sub topic would be constructors. Every class has a constructor. If we do not explicitly write a constructor for a class, the Java compiler builds a default constructor for that class.</p>\r\n\r\n<p>Each time a new object is created, at least one constructor will be invoked. The main rule of constructors is that they should have the same name as the class. A class can have more than one constructor.</p>\r\n\r\n<p>Following is an example of a constructor &minus;</p>\r\n\r\n<h3>Example</h3>\r\n\r\n<pre>\r\npublic class Puppy {\r\n   public Puppy() {\r\n   }\r\n\r\n   public Puppy(String name) {\r\n      // This constructor has one parameter, <em>name</em>.\r\n   }\r\n}</pre>\r\n\r\n<p>Java also supports&nbsp;<a href=\"https://www.tutorialspoint.com/java/java_using_singleton.htm\">Singleton Classes</a>&nbsp;where you would be able to create only one instance of a class.</p>\r\n\r\n<p><strong>Note</strong>&nbsp;&minus; We have two different types of constructors. We are going to discuss constructors in detail in the subsequent chapters.</p>\r\n\r\n<h2>Creating an Object</h2>\r\n\r\n<p>As mentioned previously, a class provides the blueprints for objects. So basically, an object is created from a class. In Java, the new keyword is used to create new objects.</p>\r\n\r\n<p>There are three steps when creating an object from a class &minus;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Declaration</strong>&nbsp;&minus; A variable declaration with a variable name with an object type.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Instantiation</strong>&nbsp;&minus; The &#39;new&#39; keyword is used to create the object.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Initialization</strong>&nbsp;&minus; The &#39;new&#39; keyword is followed by a call to a constructor. This call initializes the new object.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Following is an example of creating an object &minus;</p>\r\n\r\n<h3>Example</h3>\r\n\r\n<p><a href=\"http://tpcg.io/gQv0gO\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\npublic class Puppy {\r\n   public Puppy(String name) {\r\n      // This constructor has one parameter, <em>name</em>.\r\n      System.out.println(&quot;Passed Name is :&quot; + name );\r\n   }\r\n\r\n   public static void main(String []args) {\r\n      // Following statement would create an object myPuppy\r\n      Puppy myPuppy = new Puppy( &quot;tommy&quot; );\r\n   }\r\n}</pre>\r\n\r\n<p>If we compile and run the above program, then it will produce the following result &minus;</p>\r\n\r\n<h3>Output</h3>\r\n\r\n<pre>\r\nPassed Name is :tommy\r\n</pre>\r\n\r\n<h2>Accessing Instance Variables and Methods</h2>\r\n\r\n<p>Instance variables and methods are accessed via created objects. To access an instance variable, following is the fully qualified path &minus;</p>\r\n\r\n<pre>\r\n/* First create an object */\r\nObjectReference = new Constructor();\r\n\r\n/* Now call a variable as follows */\r\nObjectReference.variableName;\r\n\r\n/* Now you can call a class method as follows */\r\nObjectReference.MethodName();\r\n</pre>\r\n\r\n<h3>Example</h3>\r\n\r\n<p>This example explains how to access instance variables and methods of a class.</p>\r\n\r\n<p><a href=\"http://tpcg.io/VnuprO\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\npublic class Puppy {\r\n   int puppyAge;\r\n\r\n   public Puppy(String name) {\r\n      // This constructor has one parameter, <em>name</em>.\r\n      System.out.println(&quot;Name chosen is :&quot; + name );\r\n   }\r\n\r\n   public void setAge( int age ) {\r\n      puppyAge = age;\r\n   }\r\n\r\n   public int getAge( ) {\r\n      System.out.println(&quot;Puppy&#39;s age is :&quot; + puppyAge );\r\n      return puppyAge;\r\n   }\r\n\r\n   public static void main(String []args) {\r\n      /* Object creation */\r\n      Puppy myPuppy = new Puppy( &quot;tommy&quot; );\r\n\r\n      /* Call class method to set puppy&#39;s age */\r\n      myPuppy.setAge( 2 );\r\n\r\n      /* Call another class method to get puppy&#39;s age */\r\n      myPuppy.getAge( );\r\n\r\n      /* You can access instance variable as follows as well */\r\n      System.out.println(&quot;Variable Value :&quot; + myPuppy.puppyAge );\r\n   }\r\n}</pre>\r\n\r\n<p>If we compile and run the above program, then it will produce the following result &minus;</p>\r\n\r\n<h3>Output</h3>\r\n\r\n<pre>\r\nName chosen is :tommy\r\nPuppy&#39;s age is :2\r\nVariable Value :2\r\n</pre>\r\n\r\n<h2>Source File Declaration Rules</h2>\r\n\r\n<p>As the last part of this section, let&#39;s now look into the source file declaration rules. These rules are essential when declaring classes,&nbsp;<em>import</em>&nbsp;statements and&nbsp;<em>package</em>&nbsp;statements in a source file.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>There can be only one public class per source file.</p>\r\n	</li>\r\n	<li>\r\n	<p>A source file can have multiple non-public classes.</p>\r\n	</li>\r\n	<li>\r\n	<p>The public class name should be the name of the source file as well which should be appended by&nbsp;<strong>.java</strong>&nbsp;at the end. For example: the class name is&nbsp;<em>public class Employee{}</em>&nbsp;then the source file should be as Employee.java.</p>\r\n	</li>\r\n	<li>\r\n	<p>If the class is defined inside a package, then the package statement should be the first statement in the source file.</p>\r\n	</li>\r\n	<li>\r\n	<p>If import statements are present, then they must be written between the package statement and the class declaration. If there are no package statements, then the import statement should be the first line in the source file.</p>\r\n	</li>\r\n	<li>\r\n	<p>Import and package statements will imply to all the classes present in the source file. It is not possible to declare different import and/or package statements to different classes in the source file.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Classes have several access levels and there are different types of classes; abstract classes, final classes, etc. We will be explaining about all these in the access modifiers chapter.</p>\r\n\r\n<p>Apart from the above mentioned types of classes, Java also has some special classes called Inner classes and Anonymous classes.</p>\r\n\r\n<h2>Java Package</h2>\r\n\r\n<p>In simple words, it is a way of categorizing the classes and interfaces. When developing applications in Java, hundreds of classes and interfaces will be written, therefore categorizing these classes is a must as well as makes life much easier.</p>\r\n\r\n<h2>Import Statements</h2>\r\n\r\n<p>In Java if a fully qualified name, which includes the package and the class name is given, then the compiler can easily locate the source code or classes. Import statement is a way of giving the proper location for the compiler to find that particular class.</p>\r\n\r\n<p>For example, the following line would ask the compiler to load all the classes available in directory java_installation/java/io &minus;</p>\r\n\r\n<pre>\r\nimport java.io.*;\r\n</pre>\r\n\r\n<h2>A Simple Case Study</h2>\r\n\r\n<p>For our case study, we will be creating two classes. They are Employee and EmployeeTest.</p>\r\n\r\n<p>First open notepad and add the following code. Remember this is the Employee class and the class is a public class. Now, save this source file with the name Employee.java.</p>\r\n\r\n<p>The Employee class has four instance variables - name, age, designation and salary. The class has one explicitly defined constructor, which takes a parameter.</p>\r\n\r\n<h3>Example</h3>\r\n\r\n<pre>\r\nimport java.io.*;\r\npublic class Employee {\r\n\r\n   String name;\r\n   int age;\r\n   String designation;\r\n   double salary;\r\n\r\n   // This is the constructor of the class Employee\r\n   public Employee(String name) {\r\n      this.name = name;\r\n   }\r\n\r\n   // Assign the age of the Employee  to the variable age.\r\n   public void empAge(int empAge) {\r\n      age = empAge;\r\n   }\r\n\r\n   /* Assign the designation to the variable designation.*/\r\n   public void empDesignation(String empDesig) {\r\n      designation = empDesig;\r\n   }\r\n\r\n   /* Assign the salary to the variable	salary.*/\r\n   public void empSalary(double empSalary) {\r\n      salary = empSalary;\r\n   }\r\n\r\n   /* Print the Employee details */\r\n   public void printEmployee() {\r\n      System.out.println(&quot;Name:&quot;+ name );\r\n      System.out.println(&quot;Age:&quot; + age );\r\n      System.out.println(&quot;Designation:&quot; + designation );\r\n      System.out.println(&quot;Salary:&quot; + salary);\r\n   }\r\n}</pre>\r\n\r\n<p>As mentioned previously in this tutorial, processing starts from the main method. Therefore, in order for us to run this Employee class there should be a main method and objects should be created. We will be creating a separate class for these tasks.</p>\r\n\r\n<p>Following is the&nbsp;<em>EmployeeTest</em>&nbsp;class, which creates two instances of the class Employee and invokes the methods for each object to assign values for each variable.</p>\r\n\r\n<p>Save the following code in EmployeeTest.java file.</p>\r\n\r\n<pre>\r\nimport java.io.*;\r\npublic class EmployeeTest {\r\n\r\n   public static void main(String args[]) {\r\n      /* Create two objects using constructor */\r\n      Employee empOne = new Employee(&quot;James Smith&quot;);\r\n      Employee empTwo = new Employee(&quot;Mary Anne&quot;);\r\n\r\n      // Invoking methods for each object created\r\n      empOne.empAge(26);\r\n      empOne.empDesignation(&quot;Senior Software Engineer&quot;);\r\n      empOne.empSalary(1000);\r\n      empOne.printEmployee();\r\n\r\n      empTwo.empAge(21);\r\n      empTwo.empDesignation(&quot;Software Engineer&quot;);\r\n      empTwo.empSalary(500);\r\n      empTwo.printEmployee();\r\n   }\r\n}</pre>\r\n\r\n<p>Now, compile both the classes and then run&nbsp;<em>EmployeeTest</em>&nbsp;to see the result as follows &minus;</p>\r\n\r\n<h3>Output</h3>\r\n\r\n<pre>\r\nC:&gt; javac Employee.java\r\nC:&gt; javac EmployeeTest.java\r\nC:&gt; java EmployeeTest\r\nName:James Smith\r\nAge:26\r\nDesignation:Senior Software Engineer\r\nSalary:1000.0\r\nName:Mary Anne\r\nAge:21\r\nDesignation:Software Engineer\r\nSalary:500.0\r\n</pre>\r\n\r\n<h2>What is Next?</h2>\r\n\r\n<p>In the next session, we will discuss the basic data types in Java and how they can be used when developing Java applications.</p>\r\n', 'java'),
(36, 'Java - Constructors', '<p style=\"margin-left:120px\"><span style=\"color:#3498db\"><span style=\"font-size:24px\"><strong>Java - Constructors</strong></span></span></p>\r\n\r\n<p>A constructor initializes an object when it is created. It has the same name as its class and is syntactically similar to a method. However, constructors have no explicit return type.</p>\r\n\r\n<p>Typically, you will use a constructor to give initial values to the instance variables defined by the class, or to perform any other start-up procedures required to create a fully formed object.</p>\r\n\r\n<p>All classes have constructors, whether you define one or not, because Java automatically provides a default constructor that initializes all member variables to zero. However, once you define your own constructor, the default constructor is no longer used.</p>\r\n\r\n<h2>Syntax</h2>\r\n\r\n<p>Following is the syntax of a constructor &minus;</p>\r\n\r\n<pre>\r\nclass ClassName {\r\n   ClassName() {\r\n   }\r\n}</pre>\r\n\r\n<p>Java allows two types of constructors namely &minus;</p>\r\n\r\n<ul>\r\n	<li>No argument Constructors</li>\r\n	<li>Parameterized Constructors</li>\r\n</ul>\r\n\r\n<h2>No argument Constructors</h2>\r\n\r\n<p>As the name specifies the no argument constructors of Java does not accept any parameters instead, using these constructors the instance variables of a method will be initialized with fixed values for all objects.</p>\r\n\r\n<h2>Example</h2>\r\n\r\n<pre>\r\nPublic class MyClass {\r\n   Int num;\r\n   MyClass() {\r\n      num = 100;\r\n   }\r\n}</pre>\r\n\r\n<p>You would call constructor to initialize objects as follows</p>\r\n\r\n<pre>\r\npublic class ConsDemo {\r\n   public static void main(String args[]) {\r\n      MyClass t1 = new MyClass();\r\n      MyClass t2 = new MyClass();\r\n      System.out.println(t1.num + &quot; &quot; + t2.num);\r\n   }\r\n}</pre>\r\n\r\n<p>This would produce the following result</p>\r\n\r\n<pre>\r\n100 100\r\n</pre>\r\n\r\n<h2>Parameterized Constructors</h2>\r\n\r\n<p>Most often, you will need a constructor that accepts one or more parameters. Parameters are added to a constructor in the same way that they are added to a method, just declare them inside the parentheses after the constructor&#39;s name.</p>\r\n\r\n<h2>Example</h2>\r\n\r\n<p>Here is a simple example that uses a constructor &minus;</p>\r\n\r\n<pre>\r\n// A simple constructor.\r\nclass MyClass {\r\n   int x;\r\n   \r\n   // Following is the constructor\r\n   MyClass(int i ) {\r\n      x = i;\r\n   }\r\n}</pre>\r\n\r\n<p>You would call constructor to initialize objects as follows &minus;</p>\r\n\r\n<pre>\r\npublic class ConsDemo {\r\n   public static void main(String args[]) {\r\n      MyClass t1 = new MyClass( 10 );\r\n      MyClass t2 = new MyClass( 20 );\r\n      System.out.println(t1.x + &quot; &quot; + t2.x);\r\n   }\r\n}</pre>\r\n\r\n<p>This would produce the following result &minus;</p>\r\n', 'java'),
(37, 'Java - Basic Datatypes', '<p style=\"margin-left:120px\"><span style=\"color:#3498db\"><span style=\"font-size:24px\"><strong>Java - Basic Datatypes</strong></span></span></p>\r\n\r\n<p>Based on the data type of a variable, the operating system allocates memory and decides what can be stored in the reserved memory. Therefore, by assigning different data types to variables, you can store integers, decimals, or characters in these variables.</p>\r\n\r\n<p>There are two data types available in Java &minus;</p>\r\n\r\n<ul>\r\n	<li>Primitive Data Types</li>\r\n	<li>Reference/Object Data Types</li>\r\n</ul>\r\n\r\n<h2>Primitive Data Types</h2>\r\n\r\n<p>There are eight primitive datatypes supported by Java. Primitive datatypes are predefined by the language and named by a keyword. Let us now look into the eight primitive data types in detail.</p>\r\n\r\n<h3>byte</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Byte data type is an 8-bit signed two&#39;s complement integer</p>\r\n	</li>\r\n	<li>\r\n	<p>Minimum value is -128 (-2^7)</p>\r\n	</li>\r\n	<li>\r\n	<p>Maximum value is 127 (inclusive)(2^7 -1)</p>\r\n	</li>\r\n	<li>\r\n	<p>Default value is 0</p>\r\n	</li>\r\n	<li>\r\n	<p>Byte data type is used to save space in large arrays, mainly in place of integers, since a byte is four times smaller than an integer.</p>\r\n	</li>\r\n	<li>\r\n	<p>Example: byte a = 100, byte b = -50</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>short</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Short data type is a 16-bit signed two&#39;s complement integer</p>\r\n	</li>\r\n	<li>\r\n	<p>Minimum value is -32,768 (-2^15)</p>\r\n	</li>\r\n	<li>\r\n	<p>Maximum value is 32,767 (inclusive) (2^15 -1)</p>\r\n	</li>\r\n	<li>\r\n	<p>Short data type can also be used to save memory as byte data type. A short is 2 times smaller than an integer</p>\r\n	</li>\r\n	<li>\r\n	<p>Default value is 0.</p>\r\n	</li>\r\n	<li>\r\n	<p>Example: short s = 10000, short r = -20000</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>int</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Int data type is a 32-bit signed two&#39;s complement integer.</p>\r\n	</li>\r\n	<li>\r\n	<p>Minimum value is - 2,147,483,648 (-2^31)</p>\r\n	</li>\r\n	<li>\r\n	<p>Maximum value is 2,147,483,647(inclusive) (2^31 -1)</p>\r\n	</li>\r\n	<li>\r\n	<p>Integer is generally used as the default data type for integral values unless there is a concern about memory.</p>\r\n	</li>\r\n	<li>\r\n	<p>The default value is 0</p>\r\n	</li>\r\n	<li>\r\n	<p>Example: int a = 100000, int b = -200000</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>long</h3>\r\n\r\n<ul>\r\n	<li>Long data type is a 64-bit signed two&#39;s complement integer</li>\r\n	<li>Minimum value is -9,223,372,036,854,775,808(-2^63)</li>\r\n	<li>Maximum value is 9,223,372,036,854,775,807 (inclusive)(2^63 -1)</li>\r\n	<li>This type is used when a wider range than int is needed</li>\r\n	<li>Default value is 0L</li>\r\n	<li>Example: long a = 100000L, long b = -200000L</li>\r\n</ul>\r\n\r\n<h3>float</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Float data type is a single-precision 32-bit IEEE 754 floating point</p>\r\n	</li>\r\n	<li>\r\n	<p>Float is mainly used to save memory in large arrays of floating point numbers</p>\r\n	</li>\r\n	<li>\r\n	<p>Default value is 0.0f</p>\r\n	</li>\r\n	<li>\r\n	<p>Float data type is never used for precise values such as currency</p>\r\n	</li>\r\n	<li>\r\n	<p>Example: float f1 = 234.5f</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>double</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>double data type is a double-precision 64-bit IEEE 754 floating point</p>\r\n	</li>\r\n	<li>\r\n	<p>This data type is generally used as the default data type for decimal values, generally the default choice</p>\r\n	</li>\r\n	<li>\r\n	<p>Double data type should never be used for precise values such as currency</p>\r\n	</li>\r\n	<li>\r\n	<p>Default value is 0.0d</p>\r\n	</li>\r\n	<li>\r\n	<p>Example: double d1 = 123.4</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>boolean</h3>\r\n\r\n<ul>\r\n	<li>boolean data type represents one bit of information</li>\r\n	<li>There are only two possible values: true and false</li>\r\n	<li>This data type is used for simple flags that track true/false conditions</li>\r\n	<li>Default value is false</li>\r\n	<li>Example: boolean one = true</li>\r\n</ul>\r\n\r\n<h3>char</h3>\r\n\r\n<ul>\r\n	<li>char data type is a single 16-bit Unicode character</li>\r\n	<li>Minimum value is &#39;u0000&#39; (or 0)</li>\r\n	<li>Maximum value is &#39;uffff&#39; (or 65,535 inclusive)</li>\r\n	<li>Char data type is used to store any character</li>\r\n	<li>Example: char letterA = &#39;A&#39;</li>\r\n</ul>\r\n\r\n<h2>Reference Datatypes</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Reference variables are created using defined constructors of the classes. They are used to access objects. These variables are declared to be of a specific type that cannot be changed. For example, Employee, Puppy, etc.</p>\r\n	</li>\r\n	<li>\r\n	<p>Class objects and various type of array variables come under reference datatype.</p>\r\n	</li>\r\n	<li>\r\n	<p>Default value of any reference variable is null.</p>\r\n	</li>\r\n	<li>\r\n	<p>A reference variable can be used to refer any object of the declared type or any compatible type.</p>\r\n	</li>\r\n	<li>\r\n	<p>Example: Animal animal = new Animal(&quot;giraffe&quot;);</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Java Literals</h2>\r\n\r\n<p>A literal is a source code representation of a fixed value. They are represented directly in the code without any computation.</p>\r\n\r\n<p>Literals can be assigned to any primitive type variable. For example &minus;</p>\r\n\r\n<pre>\r\nbyte a = 68;\r\nchar a = &#39;A&#39;;</pre>\r\n\r\n<p>byte, int, long, and short can be expressed in decimal(base 10), hexadecimal(base 16) or octal(base 8) number systems as well.</p>\r\n\r\n<p>Prefix 0 is used to indicate octal, and prefix 0x indicates hexadecimal when using these number systems for literals. For example &minus;</p>\r\n\r\n<pre>\r\nint decimal = 100;\r\nint octal = 0144;\r\nint hexa =  0x64;</pre>\r\n\r\n<p>String literals in Java are specified like they are in most other languages by enclosing a sequence of characters between a pair of double quotes. Examples of string literals are &minus;</p>\r\n\r\n<h3>Example</h3>\r\n\r\n<pre>\r\n&quot;Hello World&quot;\r\n&quot;two\nlines&quot;\r\n&quot;&quot;This is in quotes&quot;&quot;</pre>\r\n\r\n<p>String and char types of literals can contain any Unicode characters. For example &minus;</p>\r\n\r\n<pre>\r\nchar a = &#39;u0001&#39;;\r\nString a = &quot;u0001&quot;;</pre>\r\n\r\n<p>Java language supports few special escape sequences for String and char literals as well. They are &minus;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Notation</th>\r\n			<th>Character represented</th>\r\n		</tr>\r\n		<tr>\r\n			<td>\n</td>\r\n			<td>Newline (0x0a)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r</td>\r\n			<td>Carriage return (0x0d)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>f</td>\r\n			<td>Formfeed (0x0c)</td>\r\n		</tr>\r\n		<tr>\r\n			<td></td>\r\n			<td>Backspace (0x08)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>s</td>\r\n			<td>Space (0x20)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>	</td>\r\n			<td>tab</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&quot;</td>\r\n			<td>Double quote</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&#39;</td>\r\n			<td>Single quote</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\\</td>\r\n			<td>backslash</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ddd</td>\r\n			<td>Octal character (ddd)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>uxxxx</td>\r\n			<td>Hexadecimal UNICODE character (xxxx)</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>What is Next?</h2>\r\n\r\n<p>This chapter explained the various data types. The next topic explains different variable types and their usage. This will give you a good understanding on how they can be used in the Java classes, interfaces, etc.</p>\r\n', 'java');
INSERT INTO `courses` (`id`, `topic_name`, `description`, `course_name`) VALUES
(38, 'Java - Variable Types', '<h1 style=\"margin-left:120px\"><span style=\"color:#3498db\"><span style=\"font-size:24px\"><strong>Java - Variable Types</strong></span></span></h1>\r\n\r\n<p>A variable provides us with named storage that our programs can manipulate. Each variable in Java has a specific type, which determines the size and layout of the variable&#39;s memory; the range of values that can be stored within that memory; and the set of operations that can be applied to the variable.</p>\r\n\r\n<p>You must declare all variables before they can be used. Following is the basic form of a variable declaration &minus;</p>\r\n\r\n<pre>\r\ndata type variable [ = value][, variable [ = value] ...] ;\r\n</pre>\r\n\r\n<p>Here&nbsp;<em>data type</em>&nbsp;is one of Java&#39;s datatypes and&nbsp;<em>variable</em>&nbsp;is the name of the variable. To declare more than one variable of the specified type, you can use a comma-separated list.</p>\r\n\r\n<p>Following are valid examples of variable declaration and initialization in Java &minus;</p>\r\n\r\n<h2>Example</h2>\r\n\r\n<pre>\r\nint a, b, c;         // Declares three ints, a, b, and c.\r\nint a = 10, b = 10;  // Example of initialization\r\nbyte B = 22;         // initializes a byte type variable B.\r\ndouble pi = 3.14159; // declares and assigns a value of PI.\r\nchar a = &#39;a&#39;;        // the char variable a iis initialized with value &#39;a&#39;</pre>\r\n\r\n<p>This chapter will explain various variable types available in Java Language. There are three kinds of variables in Java &minus;</p>\r\n\r\n<ul>\r\n	<li>Local variables</li>\r\n	<li>Instance variables</li>\r\n	<li>Class/Static variables</li>\r\n</ul>\r\n\r\n<h2>Local Variables</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Local variables are declared in methods, constructors, or blocks.</p>\r\n	</li>\r\n	<li>\r\n	<p>Local variables are created when the method, constructor or block is entered and the variable will be destroyed once it exits the method, constructor, or block.</p>\r\n	</li>\r\n	<li>\r\n	<p>Access modifiers cannot be used for local variables.</p>\r\n	</li>\r\n	<li>\r\n	<p>Local variables are visible only within the declared method, constructor, or block.</p>\r\n	</li>\r\n	<li>\r\n	<p>Local variables are implemented at stack level internally.</p>\r\n	</li>\r\n	<li>\r\n	<p>There is no default value for local variables, so local variables should be declared and an initial value should be assigned before the first use.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Example</h3>\r\n\r\n<p>Here,&nbsp;<em>age</em>&nbsp;is a local variable. This is defined inside&nbsp;<em>pupAge()</em>&nbsp;method and its scope is limited to only this method.</p>\r\n\r\n<p><a href=\"http://tpcg.io/07heJ9\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\npublic class Test {\r\n   public void pupAge() {\r\n      int age = 0;\r\n      age = age + 7;\r\n      System.out.println(&quot;Puppy age is : &quot; + age);\r\n   }\r\n\r\n   public static void main(String args[]) {\r\n      Test test = new Test();\r\n      test.pupAge();\r\n   }\r\n}</pre>\r\n\r\n<p>This will produce the following result &minus;</p>\r\n\r\n<h3>Output</h3>\r\n\r\n<pre>\r\nPuppy age is: 7\r\n</pre>\r\n\r\n<h3>Example</h3>\r\n\r\n<p>Following example uses&nbsp;<em>age</em>&nbsp;without initializing it, so it would give an error at the time of compilation.</p>\r\n\r\n<p><a href=\"http://tpcg.io/kv9gf6\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\npublic class Test {\r\n   public void pupAge() {\r\n      int age;\r\n      age = age + 7;\r\n      System.out.println(&quot;Puppy age is : &quot; + age);\r\n   }\r\n\r\n   public static void main(String args[]) {\r\n      Test test = new Test();\r\n      test.pupAge();\r\n   }\r\n}</pre>\r\n\r\n<p>This will produce the following error while compiling it &minus;</p>\r\n\r\n<h3>Output</h3>\r\n\r\n<pre>\r\nTest.java:4:variable number might not have been initialized\r\nage = age + 7;\r\n         ^\r\n1 error\r\n</pre>\r\n\r\n<h2>Instance Variables</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Instance variables are declared in a class, but outside a method, constructor or any block.</p>\r\n	</li>\r\n	<li>\r\n	<p>When a space is allocated for an object in the heap, a slot for each instance variable value is created.</p>\r\n	</li>\r\n	<li>\r\n	<p>Instance variables are created when an object is created with the use of the keyword &#39;new&#39; and destroyed when the object is destroyed.</p>\r\n	</li>\r\n	<li>\r\n	<p>Instance variables hold values that must be referenced by more than one method, constructor or block, or essential parts of an object&#39;s state that must be present throughout the class.</p>\r\n	</li>\r\n	<li>\r\n	<p>Instance variables can be declared in class level before or after use.</p>\r\n	</li>\r\n	<li>\r\n	<p>Access modifiers can be given for instance variables.</p>\r\n	</li>\r\n	<li>\r\n	<p>The instance variables are visible for all methods, constructors and block in the class. Normally, it is recommended to make these variables private (access level). However, visibility for subclasses can be given for these variables with the use of access modifiers.</p>\r\n	</li>\r\n	<li>\r\n	<p>Instance variables have default values. For numbers, the default value is 0, for Booleans it is false, and for object references it is null. Values can be assigned during the declaration or within the constructor.</p>\r\n	</li>\r\n	<li>\r\n	<p>Instance variables can be accessed directly by calling the variable name inside the class. However, within static methods (when instance variables are given accessibility), they should be called using the fully qualified name.&nbsp;<em>ObjectReference.VariableName</em>.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Example</h3>\r\n\r\n<p><a href=\"http://tpcg.io/mULkxL\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\nimport java.io.*;\r\npublic class Employee {\r\n\r\n   // this instance variable is visible for any child class.\r\n   public String name;\r\n\r\n   // salary  variable is visible in Employee class only.\r\n   private double salary;\r\n\r\n   // The name variable is assigned in the constructor.\r\n   public Employee (String empName) {\r\n      name = empName;\r\n   }\r\n\r\n   // The salary variable is assigned a value.\r\n   public void setSalary(double empSal) {\r\n      salary = empSal;\r\n   }\r\n\r\n   // This method prints the employee details.\r\n   public void printEmp() {\r\n      System.out.println(&quot;name  : &quot; + name );\r\n      System.out.println(&quot;salary :&quot; + salary);\r\n   }\r\n\r\n   public static void main(String args[]) {\r\n      Employee empOne = new Employee(&quot;Ransika&quot;);\r\n      empOne.setSalary(1000);\r\n      empOne.printEmp();\r\n   }\r\n}</pre>\r\n\r\n<p>This will produce the following result &minus;</p>\r\n\r\n<h3>Output</h3>\r\n\r\n<pre>\r\nname  : Ransika\r\nsalary :1000.0\r\n</pre>\r\n\r\n<h2>Class/Static Variables</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Class variables also known as static variables are declared with the static keyword in a class, but outside a method, constructor or a block.</p>\r\n	</li>\r\n	<li>\r\n	<p>There would only be one copy of each class variable per class, regardless of how many objects are created from it.</p>\r\n	</li>\r\n	<li>\r\n	<p>Static variables are rarely used other than being declared as constants. Constants are variables that are declared as public/private, final, and static. Constant variables never change from their initial value.</p>\r\n	</li>\r\n	<li>\r\n	<p>Static variables are stored in the static memory. It is rare to use static variables other than declared final and used as either public or private constants.</p>\r\n	</li>\r\n	<li>\r\n	<p>Static variables are created when the program starts and destroyed when the program stops.</p>\r\n	</li>\r\n	<li>\r\n	<p>Visibility is similar to instance variables. However, most static variables are declared public since they must be available for users of the class.</p>\r\n	</li>\r\n	<li>\r\n	<p>Default values are same as instance variables. For numbers, the default value is 0; for Booleans, it is false; and for object references, it is null. Values can be assigned during the declaration or within the constructor. Additionally, values can be assigned in special static initializer blocks.</p>\r\n	</li>\r\n	<li>\r\n	<p>Static variables can be accessed by calling with the class name&nbsp;<em>ClassName.VariableName</em>.</p>\r\n	</li>\r\n	<li>\r\n	<p>When declaring class variables as public static final, then variable names (constants) are all in upper case. If the static variables are not public and final, the naming syntax is the same as instance and local variables.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Example</h3>\r\n\r\n<p><a href=\"http://tpcg.io/NHe4EU\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\nimport java.io.*;\r\npublic class Employee {\r\n\r\n   // salary  variable is a private static variable\r\n   private static double salary;\r\n\r\n   // DEPARTMENT is a constant\r\n   public static final String DEPARTMENT = &quot;Development &quot;;\r\n\r\n   public static void main(String args[]) {\r\n      salary = 1000;\r\n      System.out.println(DEPARTMENT + &quot;average salary:&quot; + salary);\r\n   }\r\n}</pre>\r\n\r\n<p>This will produce the following result &minus;</p>\r\n\r\n<h3>Output</h3>\r\n\r\n<pre>\r\nDevelopment average salary:1000\r\n</pre>\r\n\r\n<p><strong>Note</strong>&nbsp;&minus; If the variables are accessed from an outside class, the constant should be accessed as Employee.DEPARTMENT</p>\r\n\r\n<h2>What is Next?</h2>\r\n\r\n<p>You already have used access modifiers (public &amp; private) in this chapter. The next chapter will explain Access Modifiers and Non-Access Modifiers in detail.</p>\r\n', 'java'),
(39, 'Java - Modifier Types', '<h1 style=\"margin-left:120px\"><span style=\"color:#3498db\"><span style=\"font-size:24px\"><strong>Java - Modifier Types</strong></span></span></h1>\r\n\r\n<p>Modifiers are keywords that you add to those definitions to change their meanings. Java language has a wide variety of modifiers, including the following &minus;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><a href=\"https://www.tutorialspoint.com/java/java_access_modifiers.htm\">Java Access Modifiers</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.tutorialspoint.com/java/java_nonaccess_modifiers.htm\">Non Access Modifiers</a></p>\r\n	</li>\r\n</ul>\r\n\r\n<p>To use a modifier, you include its keyword in the definition of a class, method, or variable. The modifier precedes the rest of the statement, as in the following example.</p>\r\n\r\n<h3>Example</h3>\r\n\r\n<pre>\r\n<em>public</em> class className {\r\n   // ...\r\n}\r\n\r\n<em>private</em> boolean myFlag;\r\n<em>static final</em> double weeks = 9.5;\r\n<em>protected static final</em> int BOXWIDTH = 42;\r\n\r\n<em>public static</em> void main(String[] arguments) {\r\n   // body of method\r\n}</pre>\r\n\r\n<h2>Access Control Modifiers</h2>\r\n\r\n<p>Java provides a number of access modifiers to set access levels for classes, variables, methods and constructors. The four access levels are &minus;</p>\r\n\r\n<ul>\r\n	<li>Visible to the package, the default. No modifiers are needed.</li>\r\n	<li>Visible to the class only (private).</li>\r\n	<li>Visible to the world (public).</li>\r\n	<li>Visible to the package and all subclasses (protected).</li>\r\n</ul>\r\n\r\n<h2>Non-Access Modifiers</h2>\r\n\r\n<p>Java provides a number of non-access modifiers to achieve many other functionality.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>The&nbsp;<em>static</em>&nbsp;modifier for creating class methods and variables.</p>\r\n	</li>\r\n	<li>\r\n	<p>The&nbsp;<em>final</em>&nbsp;modifier for finalizing the implementations of classes, methods, and variables.</p>\r\n	</li>\r\n	<li>\r\n	<p>The&nbsp;<em>abstract</em>&nbsp;modifier for creating abstract classes and methods.</p>\r\n	</li>\r\n	<li>\r\n	<p>The&nbsp;<em>synchronized</em>&nbsp;and&nbsp;<em>volatile</em>&nbsp;modifiers, which are used for threads.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>What is Next?</h2>\r\n\r\n<p>In the next section, we will be discussing about Basic Operators used in Java Language. The chapter will give you an overview of how these operators can be used during application development.</p>\r\n', 'java'),
(40, 'Java - Basic Operators', '<h1 style=\"margin-left:120px\"><span style=\"font-size:24px\"><span style=\"color:#3498db\"><strong>Java - Basic Operators</strong></span></span></h1>\r\n\r\n<p>Java provides a rich set of operators to manipulate variables. We can divide all the Java operators into the following groups &minus;</p>\r\n\r\n<ul>\r\n	<li>Arithmetic Operators</li>\r\n	<li>Relational Operators</li>\r\n	<li>Bitwise Operators</li>\r\n	<li>Logical Operators</li>\r\n	<li>Assignment Operators</li>\r\n	<li>Misc Operators</li>\r\n</ul>\r\n\r\n<h2>The Arithmetic Operators</h2>\r\n\r\n<p>Arithmetic operators are used in mathematical expressions in the same way that they are used in algebra. The following table lists the arithmetic operators &minus;</p>\r\n\r\n<p>Assume integer variable A holds 10 and variable B holds 20, then &minus;</p>\r\n\r\n<p><a href=\"https://www.tutorialspoint.com/java/java_arithmatic_operators_examples.htm\">Show Examples</a></p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Operator</th>\r\n			<th>Description</th>\r\n			<th>Example</th>\r\n		</tr>\r\n		<tr>\r\n			<td>+ (Addition)</td>\r\n			<td>Adds values on either side of the operator.</td>\r\n			<td>A + B will give 30</td>\r\n		</tr>\r\n		<tr>\r\n			<td>- (Subtraction)</td>\r\n			<td>Subtracts right-hand operand from left-hand operand.</td>\r\n			<td>A - B will give -10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>* (Multiplication)</td>\r\n			<td>Multiplies values on either side of the operator.</td>\r\n			<td>A * B will give 200</td>\r\n		</tr>\r\n		<tr>\r\n			<td>/ (Division)</td>\r\n			<td>Divides left-hand operand by right-hand operand.</td>\r\n			<td>B / A will give 2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>% (Modulus)</td>\r\n			<td>Divides left-hand operand by right-hand operand and returns remainder.</td>\r\n			<td>B % A will give 0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>++ (Increment)</td>\r\n			<td>Increases the value of operand by 1.</td>\r\n			<td>B++ gives 21</td>\r\n		</tr>\r\n		<tr>\r\n			<td>-- (Decrement)</td>\r\n			<td>Decreases the value of operand by 1.</td>\r\n			<td>B-- gives 19</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>The Relational Operators</h2>\r\n\r\n<p>There are following relational operators supported by Java language.</p>\r\n\r\n<p>Assume variable A holds 10 and variable B holds 20, then &minus;</p>\r\n\r\n<p><a href=\"https://www.tutorialspoint.com/java/java_relational_operators_examples.htm\">Show Examples</a></p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Operator</th>\r\n			<th>Description</th>\r\n			<th>Example</th>\r\n		</tr>\r\n		<tr>\r\n			<td>== (equal to)</td>\r\n			<td>Checks if the values of two operands are equal or not, if yes then condition becomes true.</td>\r\n			<td>(A == B) is not true.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>!= (not equal to)</td>\r\n			<td>Checks if the values of two operands are equal or not, if values are not equal then condition becomes true.</td>\r\n			<td>(A != B) is true.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&gt; (greater than)</td>\r\n			<td>Checks if the value of left operand is greater than the value of right operand, if yes then condition becomes true.</td>\r\n			<td>(A &gt; B) is not true.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&lt; (less than)</td>\r\n			<td>Checks if the value of left operand is less than the value of right operand, if yes then condition becomes true.</td>\r\n			<td>(A &lt; B) is true.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&gt;= (greater than or equal to)</td>\r\n			<td>Checks if the value of left operand is greater than or equal to the value of right operand, if yes then condition becomes true.</td>\r\n			<td>(A &gt;= B) is not true.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&lt;= (less than or equal to)</td>\r\n			<td>Checks if the value of left operand is less than or equal to the value of right operand, if yes then condition becomes true.</td>\r\n			<td>(A &lt;= B) is true.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>The Bitwise Operators</h2>\r\n\r\n<p>Java defines several bitwise operators, which can be applied to the integer types, long, int, short, char, and byte.</p>\r\n\r\n<p>Bitwise operator works on bits and performs bit-by-bit operation. Assume if a = 60 and b = 13; now in binary format they will be as follows &minus;</p>\r\n\r\n<p>a = 0011 1100</p>\r\n\r\n<p>b = 0000 1101</p>\r\n\r\n<p>-----------------</p>\r\n\r\n<p>a&amp;b = 0000 1100</p>\r\n\r\n<p>a|b = 0011 1101</p>\r\n\r\n<p>a^b = 0011 0001</p>\r\n\r\n<p>~a&nbsp; = 1100 0011</p>\r\n\r\n<p>The following table lists the bitwise operators &minus;</p>\r\n\r\n<p>Assume integer variable A holds 60 and variable B holds 13 then &minus;</p>\r\n\r\n<p><a href=\"https://www.tutorialspoint.com/java/java_bitwise_operators_examples.htm\">Show Examples</a></p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Operator</th>\r\n			<th>Description</th>\r\n			<th>Example</th>\r\n		</tr>\r\n		<tr>\r\n			<td>&amp; (bitwise and)</td>\r\n			<td>Binary AND Operator copies a bit to the result if it exists in both operands.</td>\r\n			<td>(A &amp; B) will give 12 which is 0000 1100</td>\r\n		</tr>\r\n		<tr>\r\n			<td>| (bitwise or)</td>\r\n			<td>Binary OR Operator copies a bit if it exists in either operand.</td>\r\n			<td>(A | B) will give 61 which is 0011 1101</td>\r\n		</tr>\r\n		<tr>\r\n			<td>^ (bitwise XOR)</td>\r\n			<td>Binary XOR Operator copies the bit if it is set in one operand but not both.</td>\r\n			<td>(A ^ B) will give 49 which is 0011 0001</td>\r\n		</tr>\r\n		<tr>\r\n			<td>~ (bitwise compliment)</td>\r\n			<td>Binary Ones Complement Operator is unary and has the effect of &#39;flipping&#39; bits.</td>\r\n			<td>(~A ) will give -61 which is 1100 0011 in 2&#39;s complement form due to a signed binary number.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&lt;&lt; (left shift)</td>\r\n			<td>Binary Left Shift Operator. The left operands value is moved left by the number of bits specified by the right operand.</td>\r\n			<td>A &lt;&lt; 2 will give 240 which is 1111 0000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&gt;&gt; (right shift)</td>\r\n			<td>Binary Right Shift Operator. The left operands value is moved right by the number of bits specified by the right operand.</td>\r\n			<td>A &gt;&gt; 2 will give 15 which is 1111</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&gt;&gt;&gt; (zero fill right shift)</td>\r\n			<td>Shift right zero fill operator. The left operands value is moved right by the number of bits specified by the right operand and shifted values are filled up with zeros.</td>\r\n			<td>A &gt;&gt;&gt;2 will give 15 which is 0000 1111</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>The Logical Operators</h2>\r\n\r\n<p>The following table lists the logical operators &minus;</p>\r\n\r\n<p>Assume Boolean variables A holds true and variable B holds false, then &minus;</p>\r\n\r\n<p><a href=\"https://www.tutorialspoint.com/java/java_logical_operators_examples.htm\">Show Examples</a></p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Operator</th>\r\n			<th>Description</th>\r\n			<th>Example</th>\r\n		</tr>\r\n		<tr>\r\n			<td>&amp;&amp; (logical and)</td>\r\n			<td>Called Logical AND operator. If both the operands are non-zero, then the condition becomes true.</td>\r\n			<td>(A &amp;&amp; B) is false</td>\r\n		</tr>\r\n		<tr>\r\n			<td>|| (logical or)</td>\r\n			<td>Called Logical OR Operator. If any of the two operands are non-zero, then the condition becomes true.</td>\r\n			<td>(A || B) is true</td>\r\n		</tr>\r\n		<tr>\r\n			<td>! (logical not)</td>\r\n			<td>Called Logical NOT Operator. Use to reverses the logical state of its operand. If a condition is true then Logical NOT operator will make false.</td>\r\n			<td>!(A &amp;&amp; B) is true</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>The Assignment Operators</h2>\r\n\r\n<p>Following are the assignment operators supported by Java language &minus;</p>\r\n\r\n<p><a href=\"https://www.tutorialspoint.com/java/java_assignment_operators_examples.htm\">Show Examples</a></p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Operator</th>\r\n			<th>Description</th>\r\n			<th>Example</th>\r\n		</tr>\r\n		<tr>\r\n			<td>=</td>\r\n			<td>Simple assignment operator. Assigns values from right side operands to left side operand.</td>\r\n			<td>C = A + B will assign value of A + B into C</td>\r\n		</tr>\r\n		<tr>\r\n			<td>+=</td>\r\n			<td>Add AND assignment operator. It adds right operand to the left operand and assign the result to left operand.</td>\r\n			<td>C += A is equivalent to C = C + A</td>\r\n		</tr>\r\n		<tr>\r\n			<td>-=</td>\r\n			<td>Subtract AND assignment operator. It subtracts right operand from the left operand and assign the result to left operand.</td>\r\n			<td>C -= A is equivalent to C = C &ndash; A</td>\r\n		</tr>\r\n		<tr>\r\n			<td>*=</td>\r\n			<td>Multiply AND assignment operator. It multiplies right operand with the left operand and assign the result to left operand.</td>\r\n			<td>C *= A is equivalent to C = C * A</td>\r\n		</tr>\r\n		<tr>\r\n			<td>/=</td>\r\n			<td>Divide AND assignment operator. It divides left operand with the right operand and assign the result to left operand.</td>\r\n			<td>C /= A is equivalent to C = C / A</td>\r\n		</tr>\r\n		<tr>\r\n			<td>%=</td>\r\n			<td>Modulus AND assignment operator. It takes modulus using two operands and assign the result to left operand.</td>\r\n			<td>C %= A is equivalent to C = C % A</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&lt;&lt;=</td>\r\n			<td>Left shift AND assignment operator.</td>\r\n			<td>C &lt;&lt;= 2 is same as C = C &lt;&lt; 2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&gt;&gt;=</td>\r\n			<td>Right shift AND assignment operator.</td>\r\n			<td>C &gt;&gt;= 2 is same as C = C &gt;&gt; 2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&amp;=</td>\r\n			<td>Bitwise AND assignment operator.</td>\r\n			<td>C &amp;= 2 is same as C = C &amp; 2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>^=</td>\r\n			<td>bitwise exclusive OR and assignment operator.</td>\r\n			<td>C ^= 2 is same as C = C ^ 2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>|=</td>\r\n			<td>bitwise inclusive OR and assignment operator.</td>\r\n			<td>C |= 2 is same as C = C | 2</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Miscellaneous Operators</h2>\r\n\r\n<p>There are few other operators supported by Java Language.</p>\r\n\r\n<h3>Conditional Operator ( ? : )</h3>\r\n\r\n<p>Conditional operator is also known as the&nbsp;<strong>ternary operator</strong>. This operator consists of three operands and is used to evaluate Boolean expressions. The goal of the operator is to decide, which value should be assigned to the variable. The operator is written as &minus;</p>\r\n\r\n<pre>\r\nvariable x = (expression) ? value if true : value if false\r\n</pre>\r\n\r\n<p>Following is an example &minus;</p>\r\n\r\n<p><strong>Example</strong></p>\r\n\r\n<p><a href=\"http://tpcg.io/xJJ2kP\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\npublic class Test {\r\n\r\n   public static void main(String args[]) {\r\n      int a, b;\r\n      a = 10;\r\n      b = (a == 1) ? 20: 30;\r\n      System.out.println( &quot;Value of b is : &quot; +  b );\r\n\r\n      b = (a == 10) ? 20: 30;\r\n      System.out.println( &quot;Value of b is : &quot; + b );\r\n   }\r\n}</pre>\r\n\r\n<p>This will produce the following result &minus;</p>\r\n\r\n<p><strong>Output</strong></p>\r\n\r\n<pre>\r\nValue of b is : 30\r\nValue of b is : 20\r\n</pre>\r\n\r\n<h3>instanceof Operator</h3>\r\n\r\n<p>This operator is used only for object reference variables. The operator checks whether the object is of a particular type (class type or interface type). instanceof operator is written as &minus;</p>\r\n\r\n<pre>\r\n( Object reference variable ) instanceof  (class/interface type)\r\n</pre>\r\n\r\n<p>If the object referred by the variable on the left side of the operator passes the IS-A check for the class/interface type on the right side, then the result will be true. Following is an example &minus;</p>\r\n\r\n<p><strong>Example</strong></p>\r\n\r\n<p><a href=\"http://tpcg.io/P7OE1d\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\npublic class Test {\r\n\r\n   public static void main(String args[]) {\r\n\r\n      String name = &quot;James&quot;;\r\n\r\n      // following will return true since name is type of String\r\n      boolean result = name instanceof String;\r\n      System.out.println( result );\r\n   }\r\n}</pre>\r\n\r\n<p>This will produce the following result &minus;</p>\r\n\r\n<p><strong>Output</strong></p>\r\n\r\n<pre>\r\ntrue\r\n</pre>\r\n\r\n<p>This operator will still return true, if the object being compared is the assignment compatible with the type on the right. Following is one more example &minus;</p>\r\n\r\n<p><strong>Example</strong></p>\r\n\r\n<p><a href=\"http://tpcg.io/TWlS7d\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\nclass Vehicle {}\r\n\r\npublic class Car extends Vehicle {\r\n\r\n   public static void main(String args[]) {\r\n\r\n      Vehicle a = new Car();\r\n      boolean result =  a instanceof Car;\r\n      System.out.println( result );\r\n   }\r\n}</pre>\r\n\r\n<p>This will produce the following result &minus;</p>\r\n\r\n<p><strong>Output</strong></p>\r\n\r\n<pre>\r\ntrue\r\n</pre>\r\n\r\n<h2>Precedence of Java Operators</h2>\r\n\r\n<p>Operator precedence determines the grouping of terms in an expression. This affects how an expression is evaluated. Certain operators have higher precedence than others; for example, the multiplication operator has higher precedence than the addition operator &minus;</p>\r\n\r\n<p>For example, x = 7 + 3 * 2; here x is assigned 13, not 20 because operator * has higher precedence than +, so it first gets multiplied with 3 * 2 and then adds into 7.</p>\r\n\r\n<p>Here, operators with the highest precedence appear at the top of the table, those with the lowest appear at the bottom. Within an expression, higher precedence operators will be evaluated first.</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Category</th>\r\n			<th>Operator</th>\r\n			<th>Associativity</th>\r\n		</tr>\r\n		<tr>\r\n			<td>Postfix</td>\r\n			<td>expression++ expression--</td>\r\n			<td>Left to right</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Unary</td>\r\n			<td>++expression &ndash;-expression +expression &ndash;expression ~ !</td>\r\n			<td>Right to left</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Multiplicative</td>\r\n			<td>* / %</td>\r\n			<td>Left to right</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Additive</td>\r\n			<td>+ -</td>\r\n			<td>Left to right</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Shift</td>\r\n			<td>&lt;&lt; &gt;&gt; &gt;&gt;&gt;</td>\r\n			<td>Left to right</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Relational</td>\r\n			<td>&lt; &gt; &lt;= &gt;= instanceof</td>\r\n			<td>Left to right</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Equality</td>\r\n			<td>== !=</td>\r\n			<td>Left to right</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bitwise AND</td>\r\n			<td>&amp;</td>\r\n			<td>Left to right</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bitwise XOR</td>\r\n			<td>^</td>\r\n			<td>Left to right</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bitwise OR</td>\r\n			<td>|</td>\r\n			<td>Left to right</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Logical AND</td>\r\n			<td>&amp;&amp;</td>\r\n			<td>Left to right</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Logical OR</td>\r\n			<td>||</td>\r\n			<td>Left to right</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Conditional</td>\r\n			<td>?:</td>\r\n			<td>Right to left</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Assignment</td>\r\n			<td>= += -= *= /= %= ^= |= &lt;&lt;= &gt;&gt;= &gt;&gt;&gt;=</td>\r\n			<td>Right to left</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>What is Next?</h2>\r\n\r\n<p>The next chapter will explain about loop control in Java programming. The chapter will describe various types of loops and how these loops can be used in Java program development and for what purposes they are being used.</p>\r\n', 'java'),
(41, 'Java - Loop Control', '<h1 style=\"margin-left:120px\"><span style=\"color:#3498db\"><span style=\"font-size:24px\"><strong>Java - Loop Control</strong></span></span></h1>\r\n\r\n<p>There may be a situation when you need to execute a block of code several number of times. In general, statements are executed sequentially: The first statement in a function is executed first, followed by the second, and so on.</p>\r\n\r\n<p>Programming languages provide various control structures that allow for more complicated execution paths.</p>\r\n\r\n<p>A&nbsp;<strong>loop</strong>&nbsp;statement allows us to execute a statement or group of statements multiple times and following is the general form of a loop statement in most of the programming languages &minus;</p>\r\n\r\n<p><img alt=\"Loop Architecture\" src=\"https://www.tutorialspoint.com/java/images/loop_architecture.jpg\" /></p>\r\n\r\n<p>Java programming language provides the following types of loop to handle looping requirements. Click the following links to check their detail.</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Sr.No.</th>\r\n			<th>Loop &amp; Description</th>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/java_while_loop.htm\">while loop</a>\r\n			<p>Repeats a statement or group of statements while a given condition is true. It tests the condition before executing the loop body.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/java_for_loop.htm\">for loop</a>\r\n			<p>Execute a sequence of statements multiple times and abbreviates the code that manages the loop variable.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/java_do_while_loop.htm\">do...while loop</a>\r\n			<p>Like a while statement, except that it tests the condition at the end of the loop body.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Loop Control Statements</h2>\r\n\r\n<p>Loop control statements change execution from its normal sequence. When execution leaves a scope, all automatic objects that were created in that scope are destroyed.</p>\r\n\r\n<p>Java supports the following control statements. Click the following links to check their detail.</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Sr.No.</th>\r\n			<th>Control Statement &amp; Description</th>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/java_break_statement.htm\">break statement</a>\r\n			<p>Terminates the&nbsp;<strong>loop</strong>&nbsp;or&nbsp;<strong>switch</strong>&nbsp;statement and transfers execution to the statement immediately following the loop or switch.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/java_continue_statement.htm\">continue statement</a>\r\n			<p>Causes the loop to skip the remainder of its body and immediately retest its condition prior to reiterating.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Enhanced for loop in Java</h2>\r\n\r\n<p>As of Java 5, the enhanced for loop was introduced. This is mainly used to traverse collection of elements including arrays.</p>\r\n\r\n<h3>Syntax</h3>\r\n\r\n<p>Following is the syntax of enhanced for loop &minus;</p>\r\n\r\n<pre>\r\nfor(declaration : expression) {\r\n   // Statements\r\n}\r\n</pre>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Declaration</strong>&nbsp;&minus; The newly declared block variable, is of a type compatible with the elements of the array you are accessing. The variable will be available within the for block and its value would be the same as the current array element.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Expression</strong>&nbsp;&minus; This evaluates to the array you need to loop through. The expression can be an array variable or method call that returns an array.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Example</h3>\r\n\r\n<p><a href=\"http://tpcg.io/4R5ayk\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\npublic class Test {\r\n\r\n   public static void main(String args[]) {\r\n      int [] numbers = {10, 20, 30, 40, 50};\r\n\r\n      for(int x : numbers ) {\r\n         System.out.print( x );\r\n         System.out.print(&quot;,&quot;);\r\n      }\r\n      System.out.print(&quot;\n&quot;);\r\n      String [] names = {&quot;James&quot;, &quot;Larry&quot;, &quot;Tom&quot;, &quot;Lacy&quot;};\r\n\r\n      for( String name : names ) {\r\n         System.out.print( name );\r\n         System.out.print(&quot;,&quot;);\r\n      }\r\n   }\r\n}</pre>\r\n\r\n<p>This will produce the following result &minus;</p>\r\n\r\n<h3>Output</h3>\r\n\r\n<pre>\r\n10, 20, 30, 40, 50,\r\nJames, Larry, Tom, Lacy,\r\n</pre>\r\n\r\n<h2>What is Next?</h2>\r\n\r\n<p>In the following chapter, we will be learning about decision making statements in Java programming.</p>\r\n', 'java'),
(42, 'Java - Decision Making', '<h1 style=\"margin-left:120px\"><span style=\"color:#ffffff\"><span style=\"font-size:24px\"><strong><span style=\"background-color:#3498db\">Java - Decision Making</span></strong></span></span></h1>\r\n\r\n<p>Decision making structures have one or more conditions to be evaluated or tested by the program, along with a statement or statements that are to be executed if the condition is determined to be true, and optionally, other statements to be executed if the condition is determined to be false.</p>\r\n\r\n<p>Following is the general form of a typical decision making structure found in most of the programming languages &minus;</p>\r\n\r\n<p><img alt=\"Decision Making\" src=\"https://www.tutorialspoint.com/java/images/decision_making.jpg\" /></p>\r\n\r\n<p>Java programming language provides following types of decision making statements. Click the following links to check their detail.</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Sr.No.</th>\r\n			<th>Statement &amp; Description</th>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/if_statement_in_java.htm\">if statement</a>\r\n			<p>An&nbsp;<strong>if statement</strong>&nbsp;consists of a boolean expression followed by one or more statements.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/if_else_statement_in_java.htm\">if...else statement</a>\r\n			<p>An&nbsp;<strong>if statement</strong>&nbsp;can be followed by an optional&nbsp;<strong>else statement</strong>, which executes when the boolean expression is false.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/nested_if_statements_in_java.htm\">nested if statement</a>\r\n			<p>You can use one&nbsp;<strong>if</strong>&nbsp;or&nbsp;<strong>else if</strong>&nbsp;statement inside another&nbsp;<strong>if</strong>&nbsp;or&nbsp;<strong>else if</strong>statement(s).</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/switch_statement_in_java.htm\">switch statement</a>\r\n			<p>A&nbsp;<strong>switch</strong>&nbsp;statement allows a variable to be tested for equality against a list of values.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>The ? : Operator</h2>\r\n\r\n<p>We have covered&nbsp;<strong>conditional operator ? :</strong>&nbsp;in the previous chapter which can be used to replace&nbsp;<strong>if...else</strong>&nbsp;statements. It has the following general form &minus;</p>\r\n\r\n<pre>\r\nExp1 ? Exp2 : Exp3;\r\n</pre>\r\n\r\n<p>Where Exp1, Exp2, and Exp3 are expressions. Notice the use and placement of the colon.</p>\r\n\r\n<p>To determine the value of the whole expression, initially exp1 is evaluated.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>If the value of exp1 is true, then the value of Exp2 will be the value of the whole expression.</p>\r\n	</li>\r\n	<li>\r\n	<p>If the value of exp1 is false, then Exp3 is evaluated and its value becomes the value of the entire expression.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>What is Next?</h2>\r\n\r\n<p>In the next chapter, we will discuss about Number class (in the java.lang package) and its subclasses in Java Language.</p>\r\n\r\n<p>We will be looking into some of the situations where you will use instantiations of these classes rather than the primitive data types, as well as classes such as formatting, mathematical functions that you need to know about when working with Numbers.</p>\r\n', 'java'),
(43, 'Java - Numbers Class', '<h1 style=\"margin-left:120px\"><span style=\"color:#3498db\"><span style=\"font-size:24px\"><strong>Java - Numbers Class</strong></span></span></h1>\r\n\r\n<p>Normally, when we work with Numbers, we use primitive data types such as byte, int, long, double, etc.</p>\r\n\r\n<h3>Example</h3>\r\n\r\n<pre>\r\nint i = 5000;\r\nfloat gpa = 13.65;\r\ndouble mask = 0xaf;</pre>\r\n\r\n<p>However, in development, we come across situations where we need to use objects instead of primitive data types. In order to achieve this, Java provides&nbsp;<strong>wrapper classes</strong>.</p>\r\n\r\n<p>All the wrapper classes (Integer, Long, Byte, Double, Float, Short) are subclasses of the abstract class Number.</p>\r\n\r\n<p><img alt=\"Number Classes\" src=\"https://www.tutorialspoint.com/java/images/number_classes.jpg\" /></p>\r\n\r\n<p>The object of the wrapper class contains or wraps its respective primitive data type. Converting primitive data types into object is called&nbsp;<strong>boxing</strong>, and this is taken care by the compiler. Therefore, while using a wrapper class you just need to pass the value of the primitive data type to the constructor of the Wrapper class.</p>\r\n\r\n<p>And the Wrapper object will be converted back to a primitive data type, and this process is called unboxing. The&nbsp;<strong>Number</strong>&nbsp;class is part of the java.lang package.</p>\r\n\r\n<p>Following is an example of boxing and unboxing &minus;</p>\r\n\r\n<h3>Example</h3>\r\n\r\n<p><a href=\"http://tpcg.io/rNELk1\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\npublic class Test {\r\n\r\n   public static void main(String args[]) {\r\n      Integer x = 5; // boxes int to an Integer object\r\n      x =  x + 10;   // unboxes the Integer to a int\r\n      System.out.println(x); \r\n   }\r\n}</pre>\r\n\r\n<p>This will produce the following result &minus;</p>\r\n\r\n<h3>Output</h3>\r\n\r\n<pre>\r\n15\r\n</pre>\r\n\r\n<p>When x is assigned an integer value, the compiler boxes the integer because x is integer object. Later, x is unboxed so that they can be added as an integer.</p>\r\n\r\n<h2>Number Methods</h2>\r\n\r\n<p>Following is the list of the instance methods that all the subclasses of the Number class implements &minus;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Sr.No.</th>\r\n			<th>Method &amp; Description</th>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/number_xxxvalue.htm\">xxxValue()</a>\r\n			<p>Converts the value of&nbsp;<em>this</em>&nbsp;Number object to the xxx data type and returns it.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/number_compareto.htm\">compareTo()</a>\r\n			<p>Compares&nbsp;<em>this</em>&nbsp;Number object to the argument.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/number_equals.htm\">equals()</a>\r\n			<p>Determines whether&nbsp;<em>this</em>&nbsp;number object is equal to the argument.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/number_valueof.htm\">valueOf()</a>\r\n			<p>Returns an Integer object holding the value of the specified primitive.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/number_tostring.htm\">toString()</a>\r\n			<p>Returns a String object representing the value of a specified int or Integer.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/number_parseint.htm\">parseInt()</a>\r\n			<p>This method is used to get the primitive data type of a certain String.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/number_abs.htm\">abs()</a>\r\n			<p>Returns the absolute value of the argument.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/number_ceil.htm\">ceil()</a>\r\n			<p>Returns the smallest integer that is greater than or equal to the argument. Returned as a double.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/number_floor.htm\">floor()</a>\r\n			<p>Returns the largest integer that is less than or equal to the argument. Returned as a double.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/number_rint.htm\">rint()</a>\r\n			<p>Returns the integer that is closest in value to the argument. Returned as a double.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/number_round.htm\">round()</a>\r\n			<p>Returns the closest long or int, as indicated by the method&#39;s return type to the argument.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/number_min.htm\">min()</a>\r\n			<p>Returns the smaller of the two arguments.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/number_max.htm\">max()</a>\r\n			<p>Returns the larger of the two arguments.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>14</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/number_exp.htm\">exp()</a>\r\n			<p>Returns the base of the natural logarithms, e, to the power of the argument.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>15</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/number_log.htm\">log()</a>\r\n			<p>Returns the natural logarithm of the argument.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>16</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/number_pow.htm\">pow()</a>\r\n			<p>Returns the value of the first argument raised to the power of the second argument.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>17</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/number_sqrt.htm\">sqrt()</a>\r\n			<p>Returns the square root of the argument.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>18</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/number_sin.htm\">sin()</a>\r\n			<p>Returns the sine of the specified double value.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>19</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/number_cos.htm\">cos()</a>\r\n			<p>Returns the cosine of the specified double value.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>20</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/number_tan.htm\">tan()</a>\r\n			<p>Returns the tangent of the specified double value.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>21</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/number_asin.htm\">asin()</a>\r\n			<p>Returns the arcsine of the specified double value.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>22</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/number_acos.htm\">acos()</a>\r\n			<p>Returns the arccosine of the specified double value.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>23</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/number_atan.htm\">atan()</a>\r\n			<p>Returns the arctangent of the specified double value.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>24</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/number_atan2.htm\">atan2()</a>\r\n			<p>Converts rectangular coordinates (x, y) to polar coordinate (r, theta) and returns theta.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>25</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/number_todegrees.htm\">toDegrees()</a>\r\n			<p>Converts the argument to degrees.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>26</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/number_toradians.htm\">toRadians()</a>\r\n			<p>Converts the argument to radians.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>27</td>\r\n			<td><a href=\"https://www.tutorialspoint.com/java/number_random.htm\">random()</a>\r\n			<p>Returns a random number.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>What is Next?</h2>\r\n\r\n<p>In the next section, we will be going through the Character class in Java. You will be learning how to use object Characters and primitive data type char in Java.</p>\r\n', 'java'),
(44, 'Python - Tutorial', '<h1 style=\"margin-left:160px\"><span style=\"color:#3498db\"><span style=\"font-size:24px\"><strong>Python - Tutorial</strong></span></span></h1>\r\n\r\n<p>Python is a general-purpose interpreted, interactive, object-oriented, and high-level programming language. It was created by Guido van Rossum during 1985- 1990. Like Perl, Python source code is also available under the GNU General Public License (GPL). This tutorial gives enough understanding on Python programming language.</p>\r\n\r\n<h1>Audience</h1>\r\n\r\n<p>This tutorial is designed for software programmers who need to learn Python programming language from scratch.</p>\r\n\r\n<h1>Prerequisites</h1>\r\n\r\n<p>You should have a basic understanding of Computer Programming terminologies. A basic understanding of any of the programming languages is a plus.</p>\r\n', 'PYTHON');
INSERT INTO `courses` (`id`, `topic_name`, `description`, `course_name`) VALUES
(45, 'Python - Overview', '<p style=\"margin-left:160px\"><span style=\"color:#3498db\"><span style=\"font-size:24px\"><strong>Python - Overview</strong></span></span></p>\r\n\r\n<p>Python is a high-level, interpreted, interactive and object-oriented scripting language. Python is designed to be highly readable. It uses English keywords frequently where as other languages use punctuation, and it has fewer syntactical constructions than other languages.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Python is Interpreted</strong>&nbsp;&minus; Python is processed at runtime by the interpreter. You do not need to compile your program before executing it. This is similar to PERL and PHP.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Python is Interactive</strong>&nbsp;&minus; You can actually sit at a Python prompt and interact with the interpreter directly to write your programs.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Python is Object-Oriented</strong>&nbsp;&minus; Python supports Object-Oriented style or technique of programming that encapsulates code within objects.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Python is a Beginner&#39;s Language</strong>&nbsp;&minus; Python is a great language for the beginner-level programmers and supports the development of a wide range of applications from simple text processing to WWW browsers to games.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>History of Python</h2>\r\n\r\n<p>Python was developed by Guido van Rossum in the late eighties and early nineties at the National Research Institute for Mathematics and Computer Science in the Netherlands.</p>\r\n\r\n<p>Python is derived from many other languages, including ABC, Modula-3, C, C++, Algol-68, SmallTalk, and Unix shell and other scripting languages.</p>\r\n\r\n<p>Python is copyrighted. Like Perl, Python source code is now available under the GNU General Public License (GPL).</p>\r\n\r\n<p>Python is now maintained by a core development team at the institute, although Guido van Rossum still holds a vital role in directing its progress.</p>\r\n\r\n<h2>Python Features</h2>\r\n\r\n<p>Python&#39;s features include &minus;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Easy-to-learn</strong>&nbsp;&minus; Python has few keywords, simple structure, and a clearly defined syntax. This allows the student to pick up the language quickly.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Easy-to-read</strong>&nbsp;&minus; Python code is more clearly defined and visible to the eyes.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Easy-to-maintain</strong>&nbsp;&minus; Python&#39;s source code is fairly easy-to-maintain.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>A broad standard library</strong>&nbsp;&minus; Python&#39;s bulk of the library is very portable and cross-platform compatible on UNIX, Windows, and Macintosh.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Interactive Mode</strong>&nbsp;&minus; Python has support for an interactive mode which allows interactive testing and debugging of snippets of code.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Portable</strong>&nbsp;&minus; Python can run on a wide variety of hardware platforms and has the same interface on all platforms.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Extendable</strong>&nbsp;&minus; You can add low-level modules to the Python interpreter. These modules enable programmers to add to or customize their tools to be more efficient.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Databases</strong>&nbsp;&minus; Python provides interfaces to all major commercial databases.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>GUI Programming</strong>&nbsp;&minus; Python supports GUI applications that can be created and ported to many system calls, libraries and windows systems, such as Windows MFC, Macintosh, and the X Window system of Unix.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Scalable</strong>&nbsp;&minus; Python provides a better structure and support for large programs than shell scripting.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Apart from the above-mentioned features, Python has a big list of good features, few are listed below &minus;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>It supports functional and structured programming methods as well as OOP.</p>\r\n	</li>\r\n	<li>\r\n	<p>It can be used as a scripting language or can be compiled to byte-code for building large applications.</p>\r\n	</li>\r\n	<li>\r\n	<p>It provides very high-level dynamic data types and supports dynamic type checking.</p>\r\n	</li>\r\n	<li>\r\n	<p>It supports automatic garbage collection.</p>\r\n	</li>\r\n	<li>\r\n	<p>It can be easily integrated with C, C++, COM, ActiveX, CORBA, and Java.</p>\r\n	</li>\r\n</ul>\r\n', 'PYTHON'),
(46, 'Python - Environment Setup', '<p style=\"margin-left:120px\"><span style=\"color:#3498db\"><span style=\"font-size:24px\"><strong>Python - Environment Setup</strong></span></span></p>\r\n\r\n<p>Python is available on a wide variety of platforms including Linux and Mac OS X. Let&#39;s understand how to set up our Python environment.</p>\r\n\r\n<h2>Local Environment Setup</h2>\r\n\r\n<p>Open a terminal window and type &quot;python&quot; to find out if it is already installed and which version is installed.</p>\r\n\r\n<ul>\r\n	<li>Unix (Solaris, Linux, FreeBSD, AIX, HP/UX, SunOS, IRIX, etc.)</li>\r\n	<li>Win 9x/NT/2000</li>\r\n	<li>Macintosh (Intel, PPC, 68K)</li>\r\n	<li>OS/2</li>\r\n	<li>DOS (multiple versions)</li>\r\n	<li>PalmOS</li>\r\n	<li>Nokia mobile phones</li>\r\n	<li>Windows CE</li>\r\n	<li>Acorn/RISC OS</li>\r\n	<li>BeOS</li>\r\n	<li>Amiga</li>\r\n	<li>VMS/OpenVMS</li>\r\n	<li>QNX</li>\r\n	<li>VxWorks</li>\r\n	<li>Psion</li>\r\n	<li>Python has also been ported to the Java and .NET virtual machines</li>\r\n</ul>\r\n\r\n<h2>Getting Python</h2>\r\n\r\n<p>The most up-to-date and current source code, binaries, documentation, news, etc., is available on the official website of Python&nbsp;<a href=\"https://www.python.org/\" rel=\"nofollow\" target=\"_blank\">https://www.python.org/</a></p>\r\n\r\n<p>You can download Python documentation from&nbsp;<a href=\"https://www.python.org/doc/\" rel=\"nofollow\" target=\"_blank\">https://www.python.org/doc/</a>. The documentation is available in HTML, PDF, and PostScript formats.</p>\r\n\r\n<h2>Installing Python</h2>\r\n\r\n<p>Python distribution is available for a wide variety of platforms. You need to download only the binary code applicable for your platform and install Python.</p>\r\n\r\n<p>If the binary code for your platform is not available, you need a C compiler to compile the source code manually. Compiling the source code offers more flexibility in terms of choice of features that you require in your installation.</p>\r\n\r\n<p>Here is a quick overview of installing Python on various platforms &minus;</p>\r\n\r\n<h3>Unix and Linux Installation</h3>\r\n\r\n<p>Here are the simple steps to install Python on Unix/Linux machine.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Open a Web browser and go to&nbsp;<a href=\"https://www.python.org/downloads/\" rel=\"nofollow\" target=\"_blank\">https://www.python.org/downloads/</a>.</p>\r\n	</li>\r\n	<li>\r\n	<p>Follow the link to download zipped source code available for Unix/Linux.</p>\r\n	</li>\r\n	<li>\r\n	<p>Download and extract files.</p>\r\n	</li>\r\n	<li>\r\n	<p>Editing the&nbsp;<em>Modules/Setup</em>&nbsp;file if you want to customize some options.</p>\r\n	</li>\r\n	<li>\r\n	<p>run ./configure script</p>\r\n	</li>\r\n	<li>\r\n	<p>make</p>\r\n	</li>\r\n	<li>\r\n	<p>make install</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>This installs Python at standard location&nbsp;<em>/usr/local/bin</em>&nbsp;and its libraries at&nbsp;<em>/usr/local/lib/pythonXX</em>&nbsp;where XX is the version of Python.</p>\r\n\r\n<h3>Windows Installation</h3>\r\n\r\n<p>Here are the steps to install Python on Windows machine.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Open a Web browser and go to&nbsp;<a href=\"https://www.python.org/downloads/\" rel=\"nofollow\" target=\"_blank\">https://www.python.org/downloads/</a>.</p>\r\n	</li>\r\n	<li>\r\n	<p>Follow the link for the Windows installer&nbsp;<em>python-XYZ.msi</em>&nbsp;file where XYZ is the version you need to install.</p>\r\n	</li>\r\n	<li>\r\n	<p>To use this installer&nbsp;<em>python-XYZ.msi</em>, the Windows system must support Microsoft Installer 2.0. Save the installer file to your local machine and then run it to find out if your machine supports MSI.</p>\r\n	</li>\r\n	<li>\r\n	<p>Run the downloaded file. This brings up the Python install wizard, which is really easy to use. Just accept the default settings, wait until the install is finished, and you are done.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Macintosh Installation</h3>\r\n\r\n<p>Recent Macs come with Python installed, but it may be several years out of date. See&nbsp;<a href=\"https://www.python.org/download/mac/\" rel=\"nofollow\" target=\"_blank\">http://www.python.org/download/mac/</a>&nbsp;for instructions on getting the current version along with extra tools to support development on the Mac. For older Mac OS&#39;s before Mac OS X 10.3 (released in 2003), MacPython is available.</p>\r\n\r\n<p>Jack Jansen maintains it and you can have full access to the entire documentation at his website &minus;&nbsp;<a href=\"http://www.cwi.nl/~jack/macpython.html\" rel=\"nofollow\" target=\"_blank\">http://www.cwi.nl/~jack/macpython.html</a>. You can find complete installation details for Mac OS installation.</p>\r\n\r\n<h2>Setting up PATH</h2>\r\n\r\n<p>Programs and other executable files can be in many directories, so operating systems provide a search path that lists the directories that the OS searches for executables.</p>\r\n\r\n<p>The path is stored in an environment variable, which is a named string maintained by the operating system. This variable contains information available to the command shell and other programs.</p>\r\n\r\n<p>The&nbsp;<strong>path</strong>&nbsp;variable is named as PATH in Unix or Path in Windows (Unix is case sensitive; Windows is not).</p>\r\n\r\n<p>In Mac OS, the installer handles the path details. To invoke the Python interpreter from any particular directory, you must add the Python directory to your path.</p>\r\n\r\n<h2>Setting path at Unix/Linux</h2>\r\n\r\n<p>To add the Python directory to the path for a particular session in Unix &minus;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>In the csh shell</strong>&nbsp;&minus; type setenv PATH &quot;$PATH:/usr/local/bin/python&quot; and press Enter.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>In the bash shell (Linux)</strong>&nbsp;&minus; type export PATH=&quot;$PATH:/usr/local/bin/python&quot; and press Enter.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>In the sh or ksh shell</strong>&nbsp;&minus; type PATH=&quot;$PATH:/usr/local/bin/python&quot; and press Enter.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Note</strong>&nbsp;&minus; /usr/local/bin/python is the path of the Python directory</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Setting path at Windows</h2>\r\n\r\n<p>To add the Python directory to the path for a particular session in Windows &minus;</p>\r\n\r\n<p><strong>At the command prompt</strong>&nbsp;&minus; type path %path%;C:Python and press Enter.</p>\r\n\r\n<p><strong>Note</strong>&nbsp;&minus; C:Python is the path of the Python directory</p>\r\n\r\n<h2>Python Environment Variables</h2>\r\n\r\n<p>Here are important environment variables, which can be recognized by Python &minus;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Sr.No.</th>\r\n			<th>Variable &amp; Description</th>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>\r\n			<p><strong>PYTHONPATH</strong></p>\r\n\r\n			<p>It has a role similar to PATH. This variable tells the Python interpreter where to locate the module files imported into a program. It should include the Python source library directory and the directories containing Python source code. PYTHONPATH is sometimes preset by the Python installer.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>\r\n			<p><strong>PYTHONSTARTUP</strong></p>\r\n\r\n			<p>It contains the path of an initialization file containing Python source code. It is executed every time you start the interpreter. It is named as .pythonrc.py in Unix and it contains commands that load utilities or modify PYTHONPATH.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>\r\n			<p><strong>PYTHONCASEOK</strong></p>\r\n\r\n			<p>It is used in Windows to instruct Python to find the first case-insensitive match in an import statement. Set this variable to any value to activate it.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>\r\n			<p><strong>PYTHONHOME</strong></p>\r\n\r\n			<p>It is an alternative module search path. It is usually embedded in the PYTHONSTARTUP or PYTHONPATH directories to make switching module libraries easy.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Running Python</h2>\r\n\r\n<p>There are three different ways to start Python &minus;</p>\r\n\r\n<h3>Interactive Interpreter</h3>\r\n\r\n<p>You can start Python from Unix, DOS, or any other system that provides you a command-line interpreter or shell window.</p>\r\n\r\n<p>Enter&nbsp;<strong>python</strong>&nbsp;the command line.</p>\r\n\r\n<p>Start coding right away in the interactive interpreter.</p>\r\n\r\n<pre>\r\n$python # Unix/Linux\r\nor\r\npython% # Unix/Linux\r\nor\r\nC:&gt; python # Windows/DOS\r\n</pre>\r\n\r\n<p>Here is the list of all the available command line options &minus;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Sr.No.</th>\r\n			<th>Option &amp; Description</th>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>\r\n			<p><strong>-d</strong></p>\r\n\r\n			<p>It provides debug output.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>\r\n			<p><strong>-O</strong></p>\r\n\r\n			<p>It generates optimized bytecode (resulting in .pyo files).</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>\r\n			<p><strong>-S</strong></p>\r\n\r\n			<p>Do not run import site to look for Python paths on startup.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>\r\n			<p><strong>-v</strong></p>\r\n\r\n			<p>verbose output (detailed trace on import statements).</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>\r\n			<p><strong>-X</strong></p>\r\n\r\n			<p>disable class-based built-in exceptions (just use strings); obsolete starting with version 1.6.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>\r\n			<p><strong>-c cmd</strong></p>\r\n\r\n			<p>run Python script sent in as cmd string</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>\r\n			<p><strong>file</strong></p>\r\n\r\n			<p>run Python script from given file</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3>Script from the Command-line</h3>\r\n\r\n<p>A Python script can be executed at command line by invoking the interpreter on your application, as in the following &minus;</p>\r\n\r\n<pre>\r\n$python script.py # Unix/Linux\r\n\r\nor\r\n\r\npython% script.py # Unix/Linux\r\n\r\nor \r\n\r\nC: &gt;python script.py # Windows/DOS\r\n</pre>\r\n\r\n<p><strong>Note</strong>&nbsp;&minus; Be sure the file permission mode allows execution.</p>\r\n\r\n<h3>Integrated Development Environment</h3>\r\n\r\n<p>You can run Python from a Graphical User Interface (GUI) environment as well, if you have a GUI application on your system that supports Python.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Unix</strong>&nbsp;&minus; IDLE is the very first Unix IDE for Python.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Windows</strong>&nbsp;&minus; PythonWin is the first Windows interface for Python and is an IDE with a GUI.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Macintosh</strong>&nbsp;&minus; The Macintosh version of Python along with the IDLE IDE is available from the main website, downloadable as either MacBinary or BinHex&#39;d files.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>If you are not able to set up the environment properly, then you can take help from your system admin. Make sure the Python environment is properly set up and working perfectly fine.</p>\r\n\r\n<p><strong>Note</strong>&nbsp;&minus; All the examples given in subsequent chapters are executed with Python 2.4.3 version available on CentOS flavor of Linux.</p>\r\n\r\n<p>We already have set up Python Programming environment online, so that you can execute all the available examples online at the same time when you are learning theory. Feel free to modify any example and execute it online</p>\r\n', 'PYTHON'),
(47, 'Python - Basic Syntax', '<h1 style=\"margin-left:120px\"><span style=\"color:#3498db\"><span style=\"font-size:24px\"><strong>Python - Basic Syntax</strong></span></span></h1>\r\n\r\n<p>The Python language has many similarities to Perl, C, and Java. However, there are some definite differences between the languages.</p>\r\n\r\n<h2>First Python Program</h2>\r\n\r\n<p>Let us execute programs in different modes of programming.</p>\r\n\r\n<h3>Interactive Mode Programming</h3>\r\n\r\n<p>Invoking the interpreter without passing a script file as a parameter brings up the following prompt &minus;</p>\r\n\r\n<pre>\r\n$ python\r\nPython 2.4.3 (#1, Nov 11 2010, 13:34:43)\r\n[GCC 4.1.2 20080704 (Red Hat 4.1.2-48)] on linux2\r\nType &quot;help&quot;, &quot;copyright&quot;, &quot;credits&quot; or &quot;license&quot; for more information.\r\n&gt;&gt;&gt;</pre>\r\n\r\n<p>Type the following text at the Python prompt and press the Enter &minus;</p>\r\n\r\n<pre>\r\n&gt;&gt;&gt; print &quot;Hello, Python!&quot;</pre>\r\n\r\n<p>If you are running new version of Python, then you would need to use print statement with parenthesis as in&nbsp;<strong>print (&quot;Hello, Python!&quot;);</strong>. However in Python version 2.4.3, this produces the following result &minus;</p>\r\n\r\n<pre>\r\nHello, Python!\r\n</pre>\r\n\r\n<h3>Script Mode Programming</h3>\r\n\r\n<p>Invoking the interpreter with a script parameter begins execution of the script and continues until the script is finished. When the script is finished, the interpreter is no longer active.</p>\r\n\r\n<p>Let us write a simple Python program in a script. Python files have extension&nbsp;<strong>.py</strong>. Type the following source code in a test.py file &minus;</p>\r\n\r\n<p><a href=\"http://tpcg.io/lsYEBf\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\nprint &quot;Hello, Python!&quot;</pre>\r\n\r\n<p>We assume that you have Python interpreter set in PATH variable. Now, try to run this program as follows &minus;</p>\r\n\r\n<pre>\r\n$ python test.py</pre>\r\n\r\n<p>This produces the following result &minus;</p>\r\n\r\n<pre>\r\nHello, Python!\r\n</pre>\r\n\r\n<p>Let us try another way to execute a Python script. Here is the modified test.py file &minus;</p>\r\n\r\n<p><a href=\"http://tpcg.io/2hIf1p\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\n#!/usr/bin/python\r\n\r\nprint &quot;Hello, Python!&quot;</pre>\r\n\r\n<p>We assume that you have Python interpreter available in /usr/bin directory. Now, try to run this program as follows &minus;</p>\r\n\r\n<pre>\r\n$ chmod +x test.py     # This is to make file executable\r\n$./test.py</pre>\r\n\r\n<p>This produces the following result &minus;</p>\r\n\r\n<pre>\r\nHello, Python!\r\n</pre>\r\n\r\n<h2>Python Identifiers</h2>\r\n\r\n<p>A Python identifier is a name used to identify a variable, function, class, module or other object. An identifier starts with a letter A to Z or a to z or an underscore (_) followed by zero or more letters, underscores and digits (0 to 9).</p>\r\n\r\n<p>Python does not allow punctuation characters such as @, $, and % within identifiers. Python is a case sensitive programming language. Thus,&nbsp;<strong>Manpower</strong>&nbsp;and&nbsp;<strong>manpower</strong>&nbsp;are two different identifiers in Python.</p>\r\n\r\n<p>Here are naming conventions for Python identifiers &minus;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Class names start with an uppercase letter. All other identifiers start with a lowercase letter.</p>\r\n	</li>\r\n	<li>\r\n	<p>Starting an identifier with a single leading underscore indicates that the identifier is private.</p>\r\n	</li>\r\n	<li>\r\n	<p>Starting an identifier with two leading underscores indicates a strongly private identifier.</p>\r\n	</li>\r\n	<li>\r\n	<p>If the identifier also ends with two trailing underscores, the identifier is a language-defined special name.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Reserved Words</h2>\r\n\r\n<p>The following list shows the Python keywords. These are reserved words and you cannot use them as constant or variable or any other identifier names. All the Python keywords contain lowercase letters only.</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>and</td>\r\n			<td>exec</td>\r\n			<td>not</td>\r\n		</tr>\r\n		<tr>\r\n			<td>assert</td>\r\n			<td>finally</td>\r\n			<td>or</td>\r\n		</tr>\r\n		<tr>\r\n			<td>break</td>\r\n			<td>for</td>\r\n			<td>pass</td>\r\n		</tr>\r\n		<tr>\r\n			<td>class</td>\r\n			<td>from</td>\r\n			<td>print</td>\r\n		</tr>\r\n		<tr>\r\n			<td>continue</td>\r\n			<td>global</td>\r\n			<td>raise</td>\r\n		</tr>\r\n		<tr>\r\n			<td>def</td>\r\n			<td>if</td>\r\n			<td>return</td>\r\n		</tr>\r\n		<tr>\r\n			<td>del</td>\r\n			<td>import</td>\r\n			<td>try</td>\r\n		</tr>\r\n		<tr>\r\n			<td>elif</td>\r\n			<td>in</td>\r\n			<td>while</td>\r\n		</tr>\r\n		<tr>\r\n			<td>else</td>\r\n			<td>is</td>\r\n			<td>with</td>\r\n		</tr>\r\n		<tr>\r\n			<td>except</td>\r\n			<td>lambda</td>\r\n			<td>yield</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Lines and Indentation</h2>\r\n\r\n<p>Python provides no braces to indicate blocks of code for class and function definitions or flow control. Blocks of code are denoted by line indentation, which is rigidly enforced.</p>\r\n\r\n<p>The number of spaces in the indentation is variable, but all statements within the block must be indented the same amount. For example &minus;</p>\r\n\r\n<pre>\r\nif True:\r\n   print &quot;True&quot;\r\nelse:\r\n   print &quot;False&quot;\r\n</pre>\r\n\r\n<p>However, the following block generates an error &minus;</p>\r\n\r\n<pre>\r\nif True:\r\nprint &quot;Answer&quot;\r\nprint &quot;True&quot;\r\nelse:\r\nprint &quot;Answer&quot;\r\nprint &quot;False&quot;</pre>\r\n\r\n<p>Thus, in Python all the continuous lines indented with same number of spaces would form a block. The following example has various statement blocks &minus;</p>\r\n\r\n<p><strong>Note</strong>&nbsp;&minus; Do not try to understand the logic at this point of time. Just make sure you understood various blocks even if they are without braces.</p>\r\n\r\n<pre>\r\n#!/usr/bin/python\r\n\r\nimport sys\r\n\r\ntry:\r\n   # open file stream\r\n   file = open(file_name, &quot;w&quot;)\r\nexcept IOError:\r\n   print &quot;There was an error writing to&quot;, file_name\r\n   sys.exit()\r\nprint &quot;Enter &#39;&quot;, file_finish,\r\nprint &quot;&#39; When finished&quot;\r\nwhile file_text != file_finish:\r\n   file_text = raw_input(&quot;Enter text: &quot;)\r\n   if file_text == file_finish:\r\n      # close the file\r\n      file.close\r\n      break\r\n   file.write(file_text)\r\n   file.write(&quot;\n&quot;)\r\nfile.close()\r\nfile_name = raw_input(&quot;Enter filename: &quot;)\r\nif len(file_name) == 0:\r\n   print &quot;Next time please enter something&quot;\r\n   sys.exit()\r\ntry:\r\n   file = open(file_name, &quot;r&quot;)\r\nexcept IOError:\r\n   print &quot;There was an error reading file&quot;\r\n   sys.exit()\r\nfile_text = file.read()\r\nfile.close()\r\nprint file_text</pre>\r\n\r\n<h2>Multi-Line Statements</h2>\r\n\r\n<p>Statements in Python typically end with a new line. Python does, however, allow the use of the line continuation character () to denote that the line should continue. For example &minus;</p>\r\n\r\n<pre>\r\ntotal = item_one + \r\n        item_two + \r\n        item_three\r\n</pre>\r\n\r\n<p>Statements contained within the [], {}, or () brackets do not need to use the line continuation character. For example &minus;</p>\r\n\r\n<pre>\r\ndays = [&#39;Monday&#39;, &#39;Tuesday&#39;, &#39;Wednesday&#39;,\r\n        &#39;Thursday&#39;, &#39;Friday&#39;]\r\n</pre>\r\n\r\n<h2>Quotation in Python</h2>\r\n\r\n<p>Python accepts single (&#39;), double (&quot;) and triple (&#39;&#39;&#39; or &quot;&quot;&quot;) quotes to denote string literals, as long as the same type of quote starts and ends the string.</p>\r\n\r\n<p>The triple quotes are used to span the string across multiple lines. For example, all the following are legal &minus;</p>\r\n\r\n<pre>\r\nword = &#39;word&#39;\r\nsentence = &quot;This is a sentence.&quot;\r\nparagraph = &quot;&quot;&quot;This is a paragraph. It is\r\nmade up of multiple lines and sentences.&quot;&quot;&quot;\r\n</pre>\r\n\r\n<h2>Comments in Python</h2>\r\n\r\n<p>A hash sign (#) that is not inside a string literal begins a comment. All characters after the # and up to the end of the physical line are part of the comment and the Python interpreter ignores them.</p>\r\n\r\n<p><a href=\"http://tpcg.io/VgbqMb\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\n#!/usr/bin/python\r\n\r\n# First comment\r\nprint &quot;Hello, Python!&quot; # second comment</pre>\r\n\r\n<p>This produces the following result &minus;</p>\r\n\r\n<pre>\r\nHello, Python!\r\n</pre>\r\n\r\n<p>You can type a comment on the same line after a statement or expression &minus;</p>\r\n\r\n<pre>\r\nname = &quot;Madisetti&quot; # This is again comment\r\n</pre>\r\n\r\n<p>You can comment multiple lines as follows &minus;</p>\r\n\r\n<pre>\r\n# This is a comment.\r\n# This is a comment, too.\r\n# This is a comment, too.\r\n# I said that already.\r\n</pre>\r\n\r\n<p>Following triple-quoted string is also ignored by Python interpreter and can be used as a multiline comments:</p>\r\n\r\n<pre>\r\n&#39;&#39;&#39;\r\nThis is a multiline\r\ncomment.\r\n&#39;&#39;&#39;\r\n</pre>\r\n\r\n<h2>Using Blank Lines</h2>\r\n\r\n<p>A line containing only whitespace, possibly with a comment, is known as a blank line and Python totally ignores it.</p>\r\n\r\n<p>In an interactive interpreter session, you must enter an empty physical line to terminate a multiline statement.</p>\r\n\r\n<h2>Waiting for the User</h2>\r\n\r\n<p>The following line of the program displays the prompt, the statement saying &ldquo;Press the enter key to exit&rdquo;, and waits for the user to take action &minus;</p>\r\n\r\n<pre>\r\n#!/usr/bin/python\r\n\r\nraw_input(&quot;\n\nPress the enter key to exit.&quot;)</pre>\r\n\r\n<p>Here, &quot;\n\n&quot; is used to create two new lines before displaying the actual line. Once the user presses the key, the program ends. This is a nice trick to keep a console window open until the user is done with an application.</p>\r\n\r\n<h2>Multiple Statements on a Single Line</h2>\r\n\r\n<p>The semicolon ( ; ) allows multiple statements on the single line given that neither statement starts a new code block. Here is a sample snip using the semicolon &minus;</p>\r\n\r\n<pre>\r\nimport sys; x = &#39;foo&#39;; sys.stdout.write(x + &#39;\n&#39;)</pre>\r\n\r\n<h2>Multiple Statement Groups as Suites</h2>\r\n\r\n<p>A group of individual statements, which make a single code block are called&nbsp;<strong>suites</strong>&nbsp;in Python. Compound or complex statements, such as if, while, def, and class require a header line and a suite.</p>\r\n\r\n<p>Header lines begin the statement (with the keyword) and terminate with a colon ( : ) and are followed by one or more lines which make up the suite. For example &minus;</p>\r\n\r\n<pre>\r\nif expression : \r\n   suite\r\nelif expression : \r\n   suite \r\nelse : \r\n   suite\r\n</pre>\r\n\r\n<h2>Command Line Arguments</h2>\r\n\r\n<p>Many programs can be run to provide you with some basic information about how they should be run. Python enables you to do this with -h &minus;</p>\r\n\r\n<pre>\r\n$ python -h\r\nusage: python [option] ... [-c cmd | -m mod | file | -] [arg] ...\r\nOptions and arguments (and corresponding environment variables):\r\n-c cmd : program passed in as string (terminates option list)\r\n-d     : debug output from parser (also PYTHONDEBUG=x)\r\n-E     : ignore environment variables (such as PYTHONPATH)\r\n-h     : print this help message and exit\r\n\r\n[ etc. ]</pre>\r\n\r\n<p>You can also program your script in such a way that it should accept various options.&nbsp;<a href=\"https://www.tutorialspoint.com/python/python_command_line_arguments.htm\">Command Line Arguments</a>&nbsp;is an advanced topic and should be studied a bit later once you have gone through rest of the Python concepts.</p>\r\n', 'PYTHON'),
(48, 'Python - Variable Types', '<h1 style=\"margin-left:120px\"><span style=\"color:#3498db\"><span style=\"font-size:24px\"><strong>Python - Variable Types</strong></span></span></h1>\r\n\r\n<p>Variables are nothing but reserved memory locations to store values. This means that when you create a variable you reserve some space in memory.</p>\r\n\r\n<p>Based on the data type of a variable, the interpreter allocates memory and decides what can be stored in the reserved memory. Therefore, by assigning different data types to variables, you can store integers, decimals or characters in these variables.</p>\r\n\r\n<h2>Assigning Values to Variables</h2>\r\n\r\n<p>Python variables do not need explicit declaration to reserve memory space. The declaration happens automatically when you assign a value to a variable. The equal sign (=) is used to assign values to variables.</p>\r\n\r\n<p>The operand to the left of the = operator is the name of the variable and the operand to the right of the = operator is the value stored in the variable. For example &minus;</p>\r\n\r\n<p><a href=\"http://tpcg.io/Eh9FoM\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\n#!/usr/bin/python\r\n\r\ncounter = 100          # An integer assignment\r\nmiles   = 1000.0       # A floating point\r\nname    = &quot;John&quot;       # A string\r\n\r\nprint counter\r\nprint miles\r\nprint name</pre>\r\n\r\n<p>Here, 100, 1000.0 and &quot;John&quot; are the values assigned to&nbsp;<em>counter</em>,&nbsp;<em>miles</em>, and&nbsp;<em>name</em>&nbsp;variables, respectively. This produces the following result &minus;</p>\r\n\r\n<pre>\r\n100\r\n1000.0\r\nJohn\r\n</pre>\r\n\r\n<h2>Multiple Assignment</h2>\r\n\r\n<p>Python allows you to assign a single value to several variables simultaneously. For example &minus;</p>\r\n\r\n<pre>\r\na = b = c = 1\r\n</pre>\r\n\r\n<p>Here, an integer object is created with the value 1, and all three variables are assigned to the same memory location. You can also assign multiple objects to multiple variables. For example &minus;</p>\r\n\r\n<pre>\r\na,b,c = 1,2,&quot;john&quot;\r\n</pre>\r\n\r\n<p>Here, two integer objects with values 1 and 2 are assigned to variables a and b respectively, and one string object with the value &quot;john&quot; is assigned to the variable c.</p>\r\n\r\n<h2>Standard Data Types</h2>\r\n\r\n<p>The data stored in memory can be of many types. For example, a person&#39;s age is stored as a numeric value and his or her address is stored as alphanumeric characters. Python has various standard data types that are used to define the operations possible on them and the storage method for each of them.</p>\r\n\r\n<p>Python has five standard data types &minus;</p>\r\n\r\n<ul>\r\n	<li>Numbers</li>\r\n	<li>String</li>\r\n	<li>List</li>\r\n	<li>Tuple</li>\r\n	<li>Dictionary</li>\r\n</ul>\r\n\r\n<h2>Python Numbers</h2>\r\n\r\n<p>Number data types store numeric values. Number objects are created when you assign a value to them. For example &minus;</p>\r\n\r\n<pre>\r\nvar1 = 1\r\nvar2 = 10\r\n</pre>\r\n\r\n<p>You can also delete the reference to a number object by using the del statement. The syntax of the del statement is &minus;</p>\r\n\r\n<pre>\r\ndel var1[,var2[,var3[....,varN]]]]\r\n</pre>\r\n\r\n<p>You can delete a single object or multiple objects by using the del statement. For example &minus;</p>\r\n\r\n<pre>\r\ndel var\r\ndel var_a, var_b\r\n</pre>\r\n\r\n<p>Python supports four different numerical types &minus;</p>\r\n\r\n<ul>\r\n	<li>int (signed integers)</li>\r\n	<li>long (long integers, they can also be represented in octal and hexadecimal)</li>\r\n	<li>float (floating point real values)</li>\r\n	<li>complex (complex numbers)</li>\r\n</ul>\r\n\r\n<h3>Examples</h3>\r\n\r\n<p>Here are some examples of numbers &minus;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>int</th>\r\n			<th>long</th>\r\n			<th>float</th>\r\n			<th>complex</th>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>51924361L</td>\r\n			<td>0.0</td>\r\n			<td>3.14j</td>\r\n		</tr>\r\n		<tr>\r\n			<td>100</td>\r\n			<td>-0x19323L</td>\r\n			<td>15.20</td>\r\n			<td>45.j</td>\r\n		</tr>\r\n		<tr>\r\n			<td>-786</td>\r\n			<td>0122L</td>\r\n			<td>-21.9</td>\r\n			<td>9.322e-36j</td>\r\n		</tr>\r\n		<tr>\r\n			<td>080</td>\r\n			<td>0xDEFABCECBDAECBFBAEl</td>\r\n			<td>32.3+e18</td>\r\n			<td>.876j</td>\r\n		</tr>\r\n		<tr>\r\n			<td>-0490</td>\r\n			<td>535633629843L</td>\r\n			<td>-90.</td>\r\n			<td>-.6545+0J</td>\r\n		</tr>\r\n		<tr>\r\n			<td>-0x260</td>\r\n			<td>-052318172735L</td>\r\n			<td>-32.54e100</td>\r\n			<td>3e+26J</td>\r\n		</tr>\r\n		<tr>\r\n			<td>0x69</td>\r\n			<td>-4721885298529L</td>\r\n			<td>70.2-E12</td>\r\n			<td>4.53e-7j</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Python allows you to use a lowercase l with long, but it is recommended that you use only an uppercase L to avoid confusion with the number 1. Python displays long integers with an uppercase L.</p>\r\n	</li>\r\n	<li>\r\n	<p>A complex number consists of an ordered pair of real floating-point numbers denoted by x + yj, where x and y are the real numbers and j is the imaginary unit.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Python Strings</h2>\r\n\r\n<p>Strings in Python are identified as a contiguous set of characters represented in the quotation marks. Python allows for either pairs of single or double quotes. Subsets of strings can be taken using the slice operator ([ ] and [:] ) with indexes starting at 0 in the beginning of the string and working their way from -1 at the end.</p>\r\n\r\n<p>The plus (+) sign is the string concatenation operator and the asterisk (*) is the repetition operator. For example &minus;</p>\r\n\r\n<p><a href=\"http://tpcg.io/PsSj6c\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\n#!/usr/bin/python\r\n\r\nstr = &#39;Hello World!&#39;\r\n\r\nprint str          # Prints complete string\r\nprint str[0]       # Prints first character of the string\r\nprint str[2:5]     # Prints characters starting from 3rd to 5th\r\nprint str[2:]      # Prints string starting from 3rd character\r\nprint str * 2      # Prints string two times\r\nprint str + &quot;TEST&quot; # Prints concatenated string</pre>\r\n\r\n<p>This will produce the following result &minus;</p>\r\n\r\n<pre>\r\nHello World!\r\nH\r\nllo\r\nllo World!\r\nHello World!Hello World!\r\nHello World!TEST\r\n</pre>\r\n\r\n<h2>Python Lists</h2>\r\n\r\n<p>Lists are the most versatile of Python&#39;s compound data types. A list contains items separated by commas and enclosed within square brackets ([]). To some extent, lists are similar to arrays in C. One difference between them is that all the items belonging to a list can be of different data type.</p>\r\n\r\n<p>The values stored in a list can be accessed using the slice operator ([ ] and [:]) with indexes starting at 0 in the beginning of the list and working their way to end -1. The plus (+) sign is the list concatenation operator, and the asterisk (*) is the repetition operator. For example &minus;</p>\r\n\r\n<pre>\r\n#!/usr/bin/python\r\n\r\nlist = [ &#39;abcd&#39;, 786 , 2.23, &#39;john&#39;, 70.2 ]\r\ntinylist = [123, &#39;john&#39;]\r\n\r\nprint list          # Prints complete list\r\nprint list[0]       # Prints first element of the list\r\nprint list[1:3]     # Prints elements starting from 2nd till 3rd \r\nprint list[2:]      # Prints elements starting from 3rd element\r\nprint tinylist * 2  # Prints list two times\r\nprint list + tinylist # Prints concatenated lists</pre>\r\n\r\n<p>This produce the following result &minus;</p>\r\n\r\n<pre>\r\n[&#39;abcd&#39;, 786, 2.23, &#39;john&#39;, 70.2]\r\nabcd\r\n[786, 2.23]\r\n[2.23, &#39;john&#39;, 70.2]\r\n[123, &#39;john&#39;, 123, &#39;john&#39;]\r\n[&#39;abcd&#39;, 786, 2.23, &#39;john&#39;, 70.2, 123, &#39;john&#39;]\r\n</pre>\r\n\r\n<h2>Python Tuples</h2>\r\n\r\n<p>A tuple is another sequence data type that is similar to the list. A tuple consists of a number of values separated by commas. Unlike lists, however, tuples are enclosed within parentheses.</p>\r\n\r\n<p>The main differences between lists and tuples are: Lists are enclosed in brackets ( [ ] ) and their elements and size can be changed, while tuples are enclosed in parentheses ( ( ) ) and cannot be updated. Tuples can be thought of as&nbsp;<strong>read-only</strong>&nbsp;lists. For example &minus;</p>\r\n\r\n<p><a href=\"http://tpcg.io/XYBk9k\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\n#!/usr/bin/python\r\n\r\ntuple = ( &#39;abcd&#39;, 786 , 2.23, &#39;john&#39;, 70.2  )\r\ntinytuple = (123, &#39;john&#39;)\r\n\r\nprint tuple           # Prints complete list\r\nprint tuple[0]        # Prints first element of the list\r\nprint tuple[1:3]      # Prints elements starting from 2nd till 3rd \r\nprint tuple[2:]       # Prints elements starting from 3rd element\r\nprint tinytuple * 2   # Prints list two times\r\nprint tuple + tinytuple # Prints concatenated lists</pre>\r\n\r\n<p>This produce the following result &minus;</p>\r\n\r\n<pre>\r\n(&#39;abcd&#39;, 786, 2.23, &#39;john&#39;, 70.2)\r\nabcd\r\n(786, 2.23)\r\n(2.23, &#39;john&#39;, 70.2)\r\n(123, &#39;john&#39;, 123, &#39;john&#39;)\r\n(&#39;abcd&#39;, 786, 2.23, &#39;john&#39;, 70.2, 123, &#39;john&#39;)\r\n</pre>\r\n\r\n<p>The following code is invalid with tuple, because we attempted to update a tuple, which is not allowed. Similar case is possible with lists &minus;</p>\r\n\r\n<pre>\r\n#!/usr/bin/python\r\n\r\ntuple = ( &#39;abcd&#39;, 786 , 2.23, &#39;john&#39;, 70.2  )\r\nlist = [ &#39;abcd&#39;, 786 , 2.23, &#39;john&#39;, 70.2  ]\r\ntuple[2] = 1000    # Invalid syntax with tuple\r\nlist[2] = 1000     # Valid syntax with list</pre>\r\n\r\n<h2>Python Dictionary</h2>\r\n\r\n<p>Python&#39;s dictionaries are kind of hash table type. They work like associative arrays or hashes found in Perl and consist of key-value pairs. A dictionary key can be almost any Python type, but are usually numbers or strings. Values, on the other hand, can be any arbitrary Python object.</p>\r\n\r\n<p>Dictionaries are enclosed by curly braces ({ }) and values can be assigned and accessed using square braces ([]). For example &minus;</p>\r\n\r\n<p><a href=\"http://tpcg.io/DlY1Gc\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\n#!/usr/bin/python\r\n\r\ndict = {}\r\ndict[&#39;one&#39;] = &quot;This is one&quot;\r\ndict[2]     = &quot;This is two&quot;\r\n\r\ntinydict = {&#39;name&#39;: &#39;john&#39;,&#39;code&#39;:6734, &#39;dept&#39;: &#39;sales&#39;}\r\n\r\n\r\nprint dict[&#39;one&#39;]       # Prints value for &#39;one&#39; key\r\nprint dict[2]           # Prints value for 2 key\r\nprint tinydict          # Prints complete dictionary\r\nprint tinydict.keys()   # Prints all the keys\r\nprint tinydict.values() # Prints all the values</pre>\r\n\r\n<p>This produce the following result &minus;</p>\r\n\r\n<pre>\r\nThis is one\r\nThis is two\r\n{&#39;dept&#39;: &#39;sales&#39;, &#39;code&#39;: 6734, &#39;name&#39;: &#39;john&#39;}\r\n[&#39;dept&#39;, &#39;code&#39;, &#39;name&#39;]\r\n[&#39;sales&#39;, 6734, &#39;john&#39;]\r\n</pre>\r\n\r\n<p>Dictionaries have no concept of order among elements. It is incorrect to say that the elements are &quot;out of order&quot;; they are simply unordered.</p>\r\n\r\n<h2>Data Type Conversion</h2>\r\n\r\n<p>Sometimes, you may need to perform conversions between the built-in types. To convert between types, you simply use the type name as a function.</p>\r\n\r\n<p>There are several built-in functions to perform conversion from one data type to another. These functions return a new object representing the converted value.</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Sr.No.</th>\r\n			<th>Function &amp; Description</th>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>\r\n			<p><strong>int(x [,base])</strong></p>\r\n\r\n			<p>Converts x to an integer. base specifies the base if x is a string.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>\r\n			<p><strong>long(x [,base] )</strong></p>\r\n\r\n			<p>Converts x to a long integer. base specifies the base if x is a string.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>\r\n			<p><strong>float(x)</strong></p>\r\n\r\n			<p>Converts x to a floating-point number.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>\r\n			<p><strong>complex(real [,imag])</strong></p>\r\n\r\n			<p>Creates a complex number.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>\r\n			<p><strong>str(x)</strong></p>\r\n\r\n			<p>Converts object x to a string representation.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>\r\n			<p><strong>repr(x)</strong></p>\r\n\r\n			<p>Converts object x to an expression string.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>\r\n			<p><strong>eval(str)</strong></p>\r\n\r\n			<p>Evaluates a string and returns an object.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>\r\n			<p><strong>tuple(s)</strong></p>\r\n\r\n			<p>Converts s to a tuple.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>\r\n			<p><strong>list(s)</strong></p>\r\n\r\n			<p>Converts s to a list.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>\r\n			<p><strong>set(s)</strong></p>\r\n\r\n			<p>Converts s to a set.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>\r\n			<p><strong>dict(d)</strong></p>\r\n\r\n			<p>Creates a dictionary. d must be a sequence of (key,value) tuples.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>\r\n			<p><strong>frozenset(s)</strong></p>\r\n\r\n			<p>Converts s to a frozen set.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>\r\n			<p><strong>chr(x)</strong></p>\r\n\r\n			<p>Converts an integer to a character.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>14</td>\r\n			<td>\r\n			<p><strong>unichr(x)</strong></p>\r\n\r\n			<p>Converts an integer to a Unicode character.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>15</td>\r\n			<td>\r\n			<p><strong>ord(x)</strong></p>\r\n\r\n			<p>Converts a single character to its integer value.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>16</td>\r\n			<td>\r\n			<p><strong>hex(x)</strong></p>\r\n\r\n			<p>Converts an integer to a hexadecimal string.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>17</td>\r\n			<td>\r\n			<p><strong>oct(x)</strong></p>\r\n\r\n			<p>Converts an integer to an octal string.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'PYTHON');
INSERT INTO `courses` (`id`, `topic_name`, `description`, `course_name`) VALUES
(49, 'Python - Basic Operators', '<h1 style=\"margin-left:120px\"><span style=\"font-size:24px\"><span style=\"color:#3498db\"><strong>Python - Basic Operators</strong></span></span></h1>\r\n\r\n<p>Operators are the constructs which can manipulate the value of operands.</p>\r\n\r\n<p>Consider the expression 4 + 5 = 9. Here, 4 and 5 are called operands and + is called operator.</p>\r\n\r\n<h2>Types of Operator</h2>\r\n\r\n<p>Python language supports the following types of operators.</p>\r\n\r\n<ul>\r\n	<li>Arithmetic Operators</li>\r\n	<li>Comparison (Relational) Operators</li>\r\n	<li>Assignment Operators</li>\r\n	<li>Logical Operators</li>\r\n	<li>Bitwise Operators</li>\r\n	<li>Membership Operators</li>\r\n	<li>Identity Operators</li>\r\n</ul>\r\n\r\n<p>Let us have a look on all operators one by one.</p>\r\n\r\n<h2>Python Arithmetic Operators</h2>\r\n\r\n<p>Assume variable a holds 10 and variable b holds 20, then &minus;</p>\r\n\r\n<p>[&nbsp;<a href=\"https://www.tutorialspoint.com/python/arithmetic_operators_example.htm\">Show Example</a>&nbsp;]</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Operator</th>\r\n			<th>Description</th>\r\n			<th>Example</th>\r\n		</tr>\r\n		<tr>\r\n			<td>+ Addition</td>\r\n			<td>Adds values on either side of the operator.</td>\r\n			<td>a + b = 30</td>\r\n		</tr>\r\n		<tr>\r\n			<td>- Subtraction</td>\r\n			<td>Subtracts right hand operand from left hand operand.</td>\r\n			<td>a &ndash; b = -10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>* Multiplication</td>\r\n			<td>Multiplies values on either side of the operator</td>\r\n			<td>a * b = 200</td>\r\n		</tr>\r\n		<tr>\r\n			<td>/ Division</td>\r\n			<td>Divides left hand operand by right hand operand</td>\r\n			<td>b / a = 2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>% Modulus</td>\r\n			<td>Divides left hand operand by right hand operand and returns remainder</td>\r\n			<td>b % a = 0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>** Exponent</td>\r\n			<td>Performs exponential (power) calculation on operators</td>\r\n			<td>a**b =10 to the power 20</td>\r\n		</tr>\r\n		<tr>\r\n			<td>//</td>\r\n			<td>Floor Division - The division of operands where the result is the quotient in which the digits after the decimal point are removed. But if one of the operands is negative, the result is floored, i.e., rounded away from zero (towards negative infinity) &minus;</td>\r\n			<td>9//2 = 4 and 9.0//2.0 = 4.0, -11//3 = -4, -11.0//3 = -4.0</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Python Comparison Operators</h2>\r\n\r\n<p>These operators compare the values on either sides of them and decide the relation among them. They are also called Relational operators.</p>\r\n\r\n<p>Assume variable a holds 10 and variable b holds 20, then &minus;</p>\r\n\r\n<p>[&nbsp;<a href=\"https://www.tutorialspoint.com/python/comparison_operators_example.htm\">Show Example</a>&nbsp;]</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Operator</th>\r\n			<th>Description</th>\r\n			<th>Example</th>\r\n		</tr>\r\n		<tr>\r\n			<td>==</td>\r\n			<td>If the values of two operands are equal, then the condition becomes true.</td>\r\n			<td>(a == b) is not true.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>!=</td>\r\n			<td>If values of two operands are not equal, then condition becomes true.</td>\r\n			<td>(a != b) is true.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&lt;&gt;</td>\r\n			<td>If values of two operands are not equal, then condition becomes true.</td>\r\n			<td>(a &lt;&gt; b) is true. This is similar to != operator.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&gt;</td>\r\n			<td>If the value of left operand is greater than the value of right operand, then condition becomes true.</td>\r\n			<td>(a &gt; b) is not true.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&lt;</td>\r\n			<td>If the value of left operand is less than the value of right operand, then condition becomes true.</td>\r\n			<td>(a &lt; b) is true.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&gt;=</td>\r\n			<td>If the value of left operand is greater than or equal to the value of right operand, then condition becomes true.</td>\r\n			<td>(a &gt;= b) is not true.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&lt;=</td>\r\n			<td>If the value of left operand is less than or equal to the value of right operand, then condition becomes true.</td>\r\n			<td>(a &lt;= b) is true.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Python Assignment Operators</h2>\r\n\r\n<p>Assume variable a holds 10 and variable b holds 20, then &minus;</p>\r\n\r\n<p>[&nbsp;<a href=\"https://www.tutorialspoint.com/python/assignment_operators_example.htm\">Show Example</a>&nbsp;]</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Operator</th>\r\n			<th>Description</th>\r\n			<th>Example</th>\r\n		</tr>\r\n		<tr>\r\n			<td>=</td>\r\n			<td>Assigns values from right side operands to left side operand</td>\r\n			<td>c = a + b assigns value of a + b into c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>+= Add AND</td>\r\n			<td>It adds right operand to the left operand and assign the result to left operand</td>\r\n			<td>c += a is equivalent to c = c + a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>-= Subtract AND</td>\r\n			<td>It subtracts right operand from the left operand and assign the result to left operand</td>\r\n			<td>c -= a is equivalent to c = c - a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>*= Multiply AND</td>\r\n			<td>It multiplies right operand with the left operand and assign the result to left operand</td>\r\n			<td>c *= a is equivalent to c = c * a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>/= Divide AND</td>\r\n			<td>It divides left operand with the right operand and assign the result to left operand</td>\r\n			<td>c /= a is equivalent to c = c / ac /= a is equivalent to c = c / a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>%= Modulus AND</td>\r\n			<td>It takes modulus using two operands and assign the result to left operand</td>\r\n			<td>c %= a is equivalent to c = c % a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>**= Exponent AND</td>\r\n			<td>Performs exponential (power) calculation on operators and assign value to the left operand</td>\r\n			<td>c **= a is equivalent to c = c ** a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>//= Floor Division</td>\r\n			<td>It performs floor division on operators and assign value to the left operand</td>\r\n			<td>c //= a is equivalent to c = c // a</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Python Bitwise Operators</h2>\r\n\r\n<p>Bitwise operator works on bits and performs bit by bit operation. Assume if a = 60; and b = 13; Now in binary format they will be as follows &minus;</p>\r\n\r\n<p>a = 0011 1100</p>\r\n\r\n<p>b = 0000 1101</p>\r\n\r\n<p>-----------------</p>\r\n\r\n<p>a&amp;b = 0000 1100</p>\r\n\r\n<p>a|b = 0011 1101</p>\r\n\r\n<p>a^b = 0011 0001</p>\r\n\r\n<p>~a&nbsp; = 1100 0011</p>\r\n\r\n<p>There are following Bitwise operators supported by Python language</p>\r\n\r\n<p>[&nbsp;<a href=\"https://www.tutorialspoint.com/python/bitwise_operators_example.htm\">Show Example</a>&nbsp;]</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Operator</th>\r\n			<th>Description</th>\r\n			<th>Example</th>\r\n		</tr>\r\n		<tr>\r\n			<td>&amp; Binary AND</td>\r\n			<td>Operator copies a bit to the result if it exists in both operands</td>\r\n			<td>(a &amp; b) (means 0000 1100)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>| Binary OR</td>\r\n			<td>It copies a bit if it exists in either operand.</td>\r\n			<td>(a | b) = 61 (means 0011 1101)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>^ Binary XOR</td>\r\n			<td>It copies the bit if it is set in one operand but not both.</td>\r\n			<td>(a ^ b) = 49 (means 0011 0001)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>~ Binary Ones Complement</td>\r\n			<td>It is unary and has the effect of &#39;flipping&#39; bits.</td>\r\n			<td>(~a ) = -61 (means 1100 0011 in 2&#39;s complement form due to a signed binary number.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&lt;&lt; Binary Left Shift</td>\r\n			<td>The left operands value is moved left by the number of bits specified by the right operand.</td>\r\n			<td>a &lt;&lt; 2 = 240 (means 1111 0000)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&gt;&gt; Binary Right Shift</td>\r\n			<td>The left operands value is moved right by the number of bits specified by the right operand.</td>\r\n			<td>a &gt;&gt; 2 = 15 (means 0000 1111)</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Python Logical Operators</h2>\r\n\r\n<p>There are following logical operators supported by Python language. Assume variable a holds 10 and variable b holds 20 then</p>\r\n\r\n<p>[&nbsp;<a href=\"https://www.tutorialspoint.com/python/logical_operators_example.htm\">Show Example</a>&nbsp;]</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Operator</th>\r\n			<th>Description</th>\r\n			<th>Example</th>\r\n		</tr>\r\n		<tr>\r\n			<td>and Logical AND</td>\r\n			<td>If both the operands are true then condition becomes true.</td>\r\n			<td>(a and b) is true.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>or Logical OR</td>\r\n			<td>If any of the two operands are non-zero then condition becomes true.</td>\r\n			<td>(a or b) is true.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>not Logical NOT</td>\r\n			<td>Used to reverse the logical state of its operand.</td>\r\n			<td>Not(a and b) is false.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Used to reverse the logical state of its operand.</p>\r\n\r\n<h2>Python Membership Operators</h2>\r\n\r\n<p>Python&rsquo;s membership operators test for membership in a sequence, such as strings, lists, or tuples. There are two membership operators as explained below &minus;</p>\r\n\r\n<p>[&nbsp;<a href=\"https://www.tutorialspoint.com/python/membership_operators_example.htm\">Show Example</a>&nbsp;]</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Operator</th>\r\n			<th>Description</th>\r\n			<th>Example</th>\r\n		</tr>\r\n		<tr>\r\n			<td>in</td>\r\n			<td>Evaluates to true if it finds a variable in the specified sequence and false otherwise.</td>\r\n			<td>x in y, here in results in a 1 if x is a member of sequence y.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>not in</td>\r\n			<td>Evaluates to true if it does not finds a variable in the specified sequence and false otherwise.</td>\r\n			<td>x not in y, here not in results in a 1 if x is not a member of sequence y.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Python Identity Operators</h2>\r\n\r\n<p>Identity operators compare the memory locations of two objects. There are two Identity operators explained below &minus;</p>\r\n\r\n<p>[&nbsp;<a href=\"https://www.tutorialspoint.com/python/identity_operators_example.htm\">Show Example</a>&nbsp;]</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Operator</th>\r\n			<th>Description</th>\r\n			<th>Example</th>\r\n		</tr>\r\n		<tr>\r\n			<td>is</td>\r\n			<td>Evaluates to true if the variables on either side of the operator point to the same object and false otherwise.</td>\r\n			<td>x is y, here&nbsp;<strong>is</strong>&nbsp;results in 1 if id(x) equals id(y).</td>\r\n		</tr>\r\n		<tr>\r\n			<td>is not</td>\r\n			<td>Evaluates to false if the variables on either side of the operator point to the same object and true otherwise.</td>\r\n			<td>x is not y, here&nbsp;<strong>is not</strong>&nbsp;results in 1 if id(x) is not equal to id(y).</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Python Operators Precedence</h2>\r\n\r\n<p>The following table lists all operators from highest precedence to lowest.</p>\r\n\r\n<p>[&nbsp;<a href=\"https://www.tutorialspoint.com/python/operators_precedence_example.htm\">Show Example</a>&nbsp;]</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Sr.No.</th>\r\n			<th>Operator &amp; Description</th>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>\r\n			<p><strong>**</strong></p>\r\n\r\n			<p>Exponentiation (raise to the power)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>\r\n			<p><strong>~ + -</strong></p>\r\n\r\n			<p>Complement, unary plus and minus (method names for the last two are +@ and -@)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>\r\n			<p><strong>* / % //</strong></p>\r\n\r\n			<p>Multiply, divide, modulo and floor division</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>\r\n			<p><strong>+ -</strong></p>\r\n\r\n			<p>Addition and subtraction</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>\r\n			<p><strong>&gt;&gt; &lt;&lt;</strong></p>\r\n\r\n			<p>Right and left bitwise shift</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>\r\n			<p><strong>&amp;</strong></p>\r\n\r\n			<p>Bitwise &#39;AND&#39;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>\r\n			<p><strong>^ |</strong></p>\r\n\r\n			<p>Bitwise exclusive `OR&#39; and regular `OR&#39;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>\r\n			<p><strong>&lt;= &lt; &gt; &gt;=</strong></p>\r\n\r\n			<p>Comparison operators</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>\r\n			<p><strong>&lt;&gt; == !=</strong></p>\r\n\r\n			<p>Equality operators</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>\r\n			<p><strong>= %= /= //= -= += *= **=</strong></p>\r\n\r\n			<p>Assignment operators</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>\r\n			<p><strong>is is not</strong></p>\r\n\r\n			<p>Identity operators</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>\r\n			<p><strong>in not in</strong></p>\r\n\r\n			<p>Membership operators</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>\r\n			<p><strong>not or and</strong></p>\r\n\r\n			<p>Logical operators</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'PYTHON'),
(51, 'C-Variable', '<p>vavriab;e</p>\r\n', 'C'),
(52, 'android-variable', '<p>android variables are statically typed</p>\r\n', 'Android'),
(53, 'java-static', '<p>sdfzf</p>\r\n', 'java'),
(54, 'CSS Variable', '<p>CSS VAriabel demo.</p>\r\n', 'css'),
(55, 'CSS style tag', '<p>it is a description</p>\r\n', 'css');

-- --------------------------------------------------------

--
-- Table structure for table `course_tbl`
--

CREATE TABLE `course_tbl` (
  `cou_id` int(11) NOT NULL,
  `cou_name` varchar(1000) NOT NULL,
  `cou_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `mentor_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `course_tbl`
--

INSERT INTO `course_tbl` (`cou_id`, `cou_name`, `cou_created`, `mentor_id`) VALUES
(1, 'SSC_BIO_FF', '2023-04-11 19:43:24', '1213154382'),
(2, 'HSC-TEST', '2023-04-13 19:28:55', '1213154382');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(255) NOT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `details_product`
--

CREATE TABLE `details_product` (
  `details1` varchar(1100) NOT NULL,
  `details2` varchar(1100) NOT NULL,
  `footer_title` varchar(1100) NOT NULL,
  `footer1` varchar(1100) NOT NULL,
  `footer2` varchar(1100) NOT NULL,
  `footer3` varchar(1100) NOT NULL,
  `footer4` varchar(1100) NOT NULL,
  `footer5` varchar(1100) NOT NULL,
  `id` int(255) NOT NULL,
  `pro_id` varchar(255) NOT NULL,
  `pic_title` varchar(255) NOT NULL,
  `orginal_price` varchar(255) NOT NULL,
  `d_title` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `details_product`
--

INSERT INTO `details_product` (`details1`, `details2`, `footer_title`, `footer1`, `footer2`, `footer3`, `footer4`, `footer5`, `id`, `pro_id`, `pic_title`, `orginal_price`, `d_title`, `status`) VALUES
('', '', '', '', '', '', '', '', 1, '12', '', '100', '', ''),
('', '', '', '', '2222', '', '', '', 2, '24', '', '5600', 'Hello........', 'Available । প্রোডাক্ট ফুরিয়ে যাওয়ার আগে অর্ডার করুন');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(2) UNSIGNED NOT NULL,
  `division_id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `bn_name` varchar(50) NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `website` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `bn_name`, `lat`, `lon`, `website`) VALUES
(1, 3, 'Dhaka', 'ঢাকা', 23.7115253, 90.4111451, 'www.dhaka.gov.bd'),
(2, 3, 'Faridpur', 'ফরিদপুর', 23.6070822, 89.8429406, 'www.faridpur.gov.bd'),
(3, 3, 'Gazipur', 'গাজীপুর', 24.0022858, 90.4264283, 'www.gazipur.gov.bd'),
(4, 3, 'Gopalganj', 'গোপালগঞ্জ', 23.0050857, 89.8266059, 'www.gopalganj.gov.bd'),
(5, 8, 'Jamalpur', 'জামালপুর', 24.937533, 89.937775, 'www.jamalpur.gov.bd'),
(6, 3, 'Kishoreganj', 'কিশোরগঞ্জ', 24.444937, 90.776575, 'www.kishoreganj.gov.bd'),
(7, 3, 'Madaripur', 'মাদারীপুর', 23.164102, 90.1896805, 'www.madaripur.gov.bd'),
(8, 3, 'Manikganj', 'মানিকগঞ্জ', 0, 0, 'www.manikganj.gov.bd'),
(9, 3, 'Munshiganj', 'মুন্সিগঞ্জ', 0, 0, 'www.munshiganj.gov.bd'),
(10, 8, 'Mymensingh', 'ময়মনসিংহ', 0, 0, 'www.mymensingh.gov.bd'),
(11, 3, 'Narayanganj', 'নারায়াণগঞ্জ', 23.63366, 90.496482, 'www.narayanganj.gov.bd'),
(12, 3, 'Narsingdi', 'নরসিংদী', 23.932233, 90.71541, 'www.narsingdi.gov.bd'),
(13, 8, 'Netrokona', 'নেত্রকোণা', 24.870955, 90.727887, 'www.netrokona.gov.bd'),
(14, 3, 'Rajbari', 'রাজবাড়ি', 23.7574305, 89.6444665, 'www.rajbari.gov.bd'),
(15, 3, 'Shariatpur', 'শরীয়তপুর', 0, 0, 'www.shariatpur.gov.bd'),
(16, 8, 'Sherpur', 'শেরপুর', 25.0204933, 90.0152966, 'www.sherpur.gov.bd'),
(17, 3, 'Tangail', 'টাঙ্গাইল', 0, 0, 'www.tangail.gov.bd'),
(18, 5, 'Bogra', 'বগুড়া', 24.8465228, 89.377755, 'www.bogra.gov.bd'),
(19, 5, 'Joypurhat', 'জয়পুরহাট', 0, 0, 'www.joypurhat.gov.bd'),
(20, 5, 'Naogaon', 'নওগাঁ', 0, 0, 'www.naogaon.gov.bd'),
(21, 5, 'Natore', 'নাটোর', 24.420556, 89.000282, 'www.natore.gov.bd'),
(22, 5, 'Nawabganj', 'নবাবগঞ্জ', 24.5965034, 88.2775122, 'www.chapainawabganj.gov.bd'),
(23, 5, 'Pabna', 'পাবনা', 23.998524, 89.233645, 'www.pabna.gov.bd'),
(24, 5, 'Rajshahi', 'রাজশাহী', 0, 0, 'www.rajshahi.gov.bd'),
(25, 5, 'Sirajgonj', 'সিরাজগঞ্জ', 24.4533978, 89.7006815, 'www.sirajganj.gov.bd'),
(26, 6, 'Dinajpur', 'দিনাজপুর', 25.6217061, 88.6354504, 'www.dinajpur.gov.bd'),
(27, 6, 'Gaibandha', 'গাইবান্ধা', 25.328751, 89.528088, 'www.gaibandha.gov.bd'),
(28, 6, 'Kurigram', 'কুড়িগ্রাম', 25.805445, 89.636174, 'www.kurigram.gov.bd'),
(29, 6, 'Lalmonirhat', 'লালমনিরহাট', 0, 0, 'www.lalmonirhat.gov.bd'),
(30, 6, 'Nilphamari', 'নীলফামারী', 25.931794, 88.856006, 'www.nilphamari.gov.bd'),
(31, 6, 'Panchagarh', 'পঞ্চগড়', 26.3411, 88.5541606, 'www.panchagarh.gov.bd'),
(32, 6, 'Rangpur', 'রংপুর', 25.7558096, 89.244462, 'www.rangpur.gov.bd'),
(33, 6, 'Thakurgaon', 'ঠাকুরগাঁও', 26.0336945, 88.4616834, 'www.thakurgaon.gov.bd'),
(34, 1, 'Barguna', 'বরগুনা', 0, 0, 'www.barguna.gov.bd'),
(35, 1, 'Barisal', 'বরিশাল', 0, 0, 'www.barisal.gov.bd'),
(36, 1, 'Bhola', 'ভোলা', 22.685923, 90.648179, 'www.bhola.gov.bd'),
(37, 1, 'Jhalokati', 'ঝালকাঠি', 0, 0, 'www.jhalakathi.gov.bd'),
(38, 1, 'Patuakhali', 'পটুয়াখালী', 22.3596316, 90.3298712, 'www.patuakhali.gov.bd'),
(39, 1, 'Pirojpur', 'পিরোজপুর', 0, 0, 'www.pirojpur.gov.bd'),
(40, 2, 'Bandarban', 'বান্দরবান', 22.1953275, 92.2183773, 'www.bandarban.gov.bd'),
(41, 2, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', 23.9570904, 91.1119286, 'www.brahmanbaria.gov.bd'),
(42, 2, 'Chandpur', 'চাঁদপুর', 23.2332585, 90.6712912, 'www.chandpur.gov.bd'),
(43, 2, 'Chittagong', 'চট্টগ্রাম', 22.335109, 91.834073, 'www.chittagong.gov.bd'),
(44, 2, 'Comilla', 'কুমিল্লা', 23.4682747, 91.1788135, 'www.comilla.gov.bd'),
(45, 2, 'Cox\'s Bazar', 'কক্স বাজার', 0, 0, 'www.coxsbazar.gov.bd'),
(46, 2, 'Feni', 'ফেনী', 23.023231, 91.3840844, 'www.feni.gov.bd'),
(47, 2, 'Khagrachari', 'খাগড়াছড়ি', 23.119285, 91.984663, 'www.khagrachhari.gov.bd'),
(48, 2, 'Lakshmipur', 'লক্ষ্মীপুর', 22.942477, 90.841184, 'www.lakshmipur.gov.bd'),
(49, 2, 'Noakhali', 'নোয়াখালী', 22.869563, 91.099398, 'www.noakhali.gov.bd'),
(50, 2, 'Rangamati', 'রাঙ্গামাটি', 0, 0, 'www.rangamati.gov.bd'),
(51, 7, 'Habiganj', 'হবিগঞ্জ', 24.374945, 91.41553, 'www.habiganj.gov.bd'),
(52, 7, 'Maulvibazar', 'মৌলভীবাজার', 24.482934, 91.777417, 'www.moulvibazar.gov.bd'),
(53, 7, 'Sunamganj', 'সুনামগঞ্জ', 25.0658042, 91.3950115, 'www.sunamganj.gov.bd'),
(54, 7, 'Sylhet', 'সিলেট', 24.8897956, 91.8697894, 'www.sylhet.gov.bd'),
(55, 4, 'Bagerhat', 'বাগেরহাট', 22.651568, 89.785938, 'www.bagerhat.gov.bd'),
(56, 4, 'Chuadanga', 'চুয়াডাঙ্গা', 23.6401961, 88.841841, 'www.chuadanga.gov.bd'),
(57, 4, 'Jessore', 'যশোর', 23.16643, 89.2081126, 'www.jessore.gov.bd'),
(58, 4, 'Jhenaidah', 'ঝিনাইদহ', 23.5448176, 89.1539213, 'www.jhenaidah.gov.bd'),
(59, 4, 'Khulna', 'খুলনা', 22.815774, 89.568679, 'www.khulna.gov.bd'),
(60, 4, 'Kushtia', 'কুষ্টিয়া', 23.901258, 89.120482, 'www.kushtia.gov.bd'),
(61, 4, 'Magura', 'মাগুরা', 23.487337, 89.419956, 'www.magura.gov.bd'),
(62, 4, 'Meherpur', 'মেহেরপুর', 23.762213, 88.631821, 'www.meherpur.gov.bd'),
(63, 4, 'Narail', 'নড়াইল', 23.172534, 89.512672, 'www.narail.gov.bd'),
(64, 4, 'Satkhira', 'সাতক্ষীরা', 0, 0, 'www.satkhira.gov.bd');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `bn_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `bn_name`) VALUES
(1, 'Barisal', 'বরিশাল'),
(2, 'Chittagong', 'চট্টগ্রাম'),
(3, 'Dhaka', 'ঢাকা'),
(4, 'Khulna', 'খুলনা'),
(5, 'Rajshahi', 'রাজশাহী'),
(6, 'Rangpur', 'রংপুর'),
(7, 'Sylhet', 'সিলেট'),
(8, 'Mymensingh', 'ময়মনসিংহ');

-- --------------------------------------------------------

--
-- Table structure for table `edu`
--

CREATE TABLE `edu` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `mode` varchar(255) NOT NULL,
  `institute` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `board` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `inst` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `edu`
--

INSERT INTO `edu` (`id`, `unique_id`, `mode`, `institute`, `subject`, `board`, `year`, `result`, `inst`) VALUES
(1, '837706146', 'e', 'BAF shaheen college Jashore', 'Sceince', 'Jashore', '2020', '4.5', 'HSC'),
(2, '837706146', 'e', 'Kishaloya Adarsha Shiksha Niketon', 'Sceince', 'Chattagram', '2018', '4.5', 'SSC');

-- --------------------------------------------------------

--
-- Table structure for table `exam_answers`
--

CREATE TABLE `exam_answers` (
  `exans_id` int(11) NOT NULL,
  `axmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `quest_id` int(11) NOT NULL,
  `exans_answer` varchar(1000) NOT NULL,
  `exans_status` varchar(1000) NOT NULL DEFAULT 'new',
  `exans_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `exam_answers`
--

INSERT INTO `exam_answers` (`exans_id`, `axmne_id`, `exam_id`, `quest_id`, `exans_answer`, `exans_status`, `exans_created`) VALUES
(381, 1585855075, 33, 62, 'farhad foysal', 'new', '2021-10-19 11:10:17'),
(382, 1585855075, 33, 63, '6', 'new', '2021-10-19 11:10:17'),
(385, 1585855075, 35, 66, '1', 'new', '2021-10-19 11:12:40'),
(386, 1585855075, 35, 67, '2', 'new', '2021-10-19 11:12:41'),
(387, 1585855075, 36, 69, '2', 'new', '2023-04-11 15:05:04'),
(388, 1585855075, 36, 68, '2', 'new', '2023-04-11 15:05:04'),
(389, 1585855075, 37, 70, 'a', 'new', '2023-04-11 15:55:55'),
(390, 1770627875, 38, 73, 'অর্ধভেদ্য', 'new', '2023-04-11 22:42:41'),
(391, 1770627875, 38, 72, 'রাইবোজোম', 'new', '2023-04-11 22:42:41'),
(392, 1770627875, 38, 76, 'স্ক্লেরাইড', 'new', '2023-04-11 22:42:41'),
(393, 1770627875, 38, 74, 'সংজ্ঞীকোষ', 'new', '2023-04-11 22:42:41'),
(394, 1770627875, 38, 71, 'ক্লোরেনকাইমা', 'new', '2023-04-11 22:42:41'),
(395, 1770627875, 38, 75, 'প্লাস্টিড', 'new', '2023-04-11 22:42:41'),
(396, 1585855075, 38, 75, 'রাইবোজোম', 'new', '2023-04-13 06:38:57'),
(397, 1585855075, 38, 81, 'মূল', 'new', '2023-04-13 06:38:57'),
(398, 1585855075, 38, 74, 'সংজ্ঞীকোষ', 'new', '2023-04-13 06:38:57'),
(399, 1585855075, 38, 80, 'রাইবোজোম', 'new', '2023-04-13 06:38:57'),
(400, 1585855075, 38, 84, 'অ্যাসিটাইল কো-এ সৃষ্টি', 'new', '2023-04-13 06:38:57'),
(401, 1585855075, 38, 77, 'খ) i, iii', 'new', '2023-04-13 06:38:57'),
(402, 1585855075, 38, 79, 'লিগনিন', 'new', '2023-04-13 06:38:57'),
(403, 1585855075, 38, 72, 'প্লাস্টিড ', 'new', '2023-04-13 06:38:57'),
(404, 1585855075, 38, 78, 'কোলেনকাইমা', 'new', '2023-04-13 06:38:57'),
(405, 1585855075, 38, 85, 'জননকোষ', 'new', '2023-04-13 06:38:57'),
(406, 1585855075, 38, 82, 'i, iii', 'new', '2023-04-13 06:38:57'),
(407, 1585855075, 38, 83, 'আদিকোষ', 'new', '2023-04-13 06:38:57'),
(408, 1585855075, 38, 76, 'ভেসেল', 'new', '2023-04-13 06:38:57'),
(409, 1585855075, 38, 71, 'প্যারেনকাইমা', 'new', '2023-04-13 06:38:57'),
(410, 1585855075, 38, 73, 'অভেদ্য ', 'new', '2023-04-13 06:38:57');

-- --------------------------------------------------------

--
-- Table structure for table `exam_attempt`
--

CREATE TABLE `exam_attempt` (
  `examat_id` int(11) NOT NULL,
  `exmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `examat_status` varchar(1000) NOT NULL DEFAULT 'used'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `exam_attempt`
--

INSERT INTO `exam_attempt` (`examat_id`, `exmne_id`, `exam_id`, `examat_status`) VALUES
(75, 1585855075, 33, 'used'),
(77, 1585855075, 35, 'used'),
(78, 1585855075, 36, 'used'),
(79, 1585855075, 37, 'used'),
(80, 1770627875, 38, 'used'),
(81, 1585855075, 38, 'used');

-- --------------------------------------------------------

--
-- Table structure for table `exam_question_tbl`
--

CREATE TABLE `exam_question_tbl` (
  `eqt_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_question` varchar(1000) NOT NULL,
  `exam_ch1` varchar(1000) NOT NULL,
  `exam_ch2` varchar(1000) NOT NULL,
  `exam_ch3` varchar(1000) NOT NULL,
  `exam_ch4` varchar(1000) NOT NULL,
  `exam_answer` varchar(1000) NOT NULL,
  `exam_status` varchar(1000) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `exam_question_tbl`
--

INSERT INTO `exam_question_tbl` (`eqt_id`, `exam_id`, `exam_question`, `exam_ch1`, `exam_ch2`, `exam_ch3`, `exam_ch4`, `exam_answer`, `exam_status`) VALUES
(38, 0, 'ফরহাদ ফয়সাল', 'ফরহাদ', 'ফয়সাল', '১', '২', 'ফরহাদ', 'active'),
(62, 33, 'farhad foysal', 'farhad', 'foysal', 'farhad foysal', 'farah', 'farhad foysal', 'active'),
(63, 33, '1', '1', '2', '4', '6', '1', 'active'),
(64, 34, '1', '1', '2', '1', '3', '2', 'active'),
(65, 34, '2', '3', '1', '2', '4', '1', 'active'),
(66, 35, '1', '1', '2', '3', '4', '1', 'active'),
(67, 35, '2', '1', '2', '3', '4', '2', 'active'),
(68, 36, '1', '1', '2', '3', '4', '1', 'active'),
(69, 36, '2', '2', '1', '3', '4', '2', 'active'),
(70, 37, 'a', 'a', 'b', 'c', 'd', 'a', 'active'),
(71, 38, 'কোন টিস্যুর প্রাথমিক প্রোটোপ্লাজম পরে বিনষ্ট হয়ে যায়??', 'কোলেনকাইমা', 'স্ক্লেরেনকাইমা', 'ক্লোরেনকাইমা', 'প্যারেনকাইমা', 'স্ক্লেরেনকাইমা', 'active'),
(72, 38, 'আমিষ সংশ্লেষণের স্থান নির্ধারণ কোন অঙ্গাণুর কাজ?', 'মাইটোকন্ড্রিয়া ', 'প্লাস্টিড ', 'রাইবোজোম', 'গলজি বস্তু', 'রাইবোজোম', 'active'),
(73, 38, 'কোষ ঝিল্লিতে কোন ধরনের ভেদ্যতা উপস্তিত?', 'অর্ধভেদ্য', 'অভেদ্য ', 'বৈষম্যভেদ্য', 'ভেদ্য', 'বৈষম্যভেদ্য', 'active'),
(74, 38, 'জাইলেম টিস্যু গঠনের উপাদান কোনটি?', 'কোলেনকাইমা', 'সংজ্ঞীকোষ', 'প্যারেনকাইমা', 'জাইলেম ফাইবার', 'জাইলেম ফাইবার', 'active'),
(75, 38, 'কোনটি জীবের শারীরবৃত্তীয় কাজের সমন্বয়কারী?', 'হরমোন', 'প্লাস্টিড', 'ক্রোমোজোম', 'রাইবোজোম', 'হরমোন', 'active'),
(76, 38, 'গুপ্তবীজী উদ্ভীদের সকল অঙ্গে কোনগুলো দেখা যায়?', 'ফাইবার', 'স্ক্লেরাইড', 'ভেসেল', 'ট্রাকিড', 'ভেসেল', 'active'),
(77, 38, 'প্রোটোপ্লাজমের অংশ হল -  (i) কোষপ্রাচীর  (ii)  কোষঝিল্লি  (iii)  নিউক্লিয়াস', 'ক) i, ii', 'খ) i, iii', 'গ) ii, iii', 'ঘ) i, ii, iii', 'গ) ii, iii', 'active'),
(78, 38, 'দন্ডকলসের কান্ডে কোন টিস্যু দৃঢ়তা প্রদান করে?', 'প্যারেনকাইমা', 'স্ক্লেরেনকাইমা', 'কোলেনকাইমা', 'অ্যারেনকাইমা', 'কোলেনকাইমা', 'active'),
(79, 38, 'প্যারেনকাইমা টিস্যুর কোষগুলোর কোষপ্রাচীর কী দ্বারা নির্মিত হয়?', 'সেলুলোজ', 'লিগনিন', 'পেকটিন', 'সুবেরিন', 'সেলুলোজ', 'active'),
(80, 38, ' কোষে উৎপাদিত পদার্থগুলোর প্রবাহ পথ হিসেবে কাজ করে-', ' লাইসোজোম', 'রাইবোজোম', 'এন্ডোপ্লাজমিক রেটিকুলাম', 'গলজি বস্তু', 'এন্ডোপ্লাজমিক রেটিকুলাম', 'active'),
(81, 38, 'নিচের কোনটিতে লিউকোপ্লাস্ট থাকে না?', 'মূল', 'ভ্রূণ', 'জননকোষ', 'গাজরের মূল', 'জননকোষ', 'active'),
(82, 38, 'কোষকঙ্কাল এর মধ্যে অন্তর্ভুক্ত- (i) মাইক্রোটিউবিউল (ii) মাইক্রোফিলামেন্ট (iii) ইন্টারমিডিয়েট ফিলামেন্ট', 'i, ii', 'i, iii', ' ii, iii', ' i, ii, iii', ' i, ii, iii', 'active'),
(83, 38, ' বৃহৎ কোষগহ্বর কোন কোষের বৈশিষ্ট্য?', 'উদ্ভিদকোষ', 'প্রাণিকোষ', 'আদিকোষ', 'জননকোষ', 'উদ্ভিদকোষ', 'active'),
(84, 38, 'শ্বসনের কোন ধাপে সবচেয়ে বেশি শক্তি উৎপন্ন হয়?', 'গ্লাইকোলাইসিস', 'অ্যাসিটাইল কো-এ সৃষ্টি', 'ক্রেবস চক্র', 'ইলেকট্রন প্রবাহ তন্ত্র', 'ক্রেবস চক্র', 'active'),
(85, 38, 'কাজের ভিত্তিতে প্রকৃত কোষের প্রকারভেদ নয় কোনটি?', 'দেহকোষ', 'জননকোষ', 'সোমাটিক সেল', 'প্রোক্যারিওটিক সেল', 'প্রোক্যারিওটিক সেল', 'active'),
(86, 40, '1', '1', 'A', 'B', 'C', '1', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exam_soes`
--

CREATE TABLE `exam_soes` (
  `exam_id` int(11) NOT NULL,
  `exam_title` varchar(255) NOT NULL,
  `exam_class_id` int(11) NOT NULL,
  `exam_duration` varchar(30) NOT NULL,
  `exam_status` enum('Pending','Created','Started','Completed') NOT NULL,
  `exam_created_on` datetime NOT NULL,
  `exam_code` varchar(100) NOT NULL,
  `exam_result_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `exam_soes`
--

INSERT INTO `exam_soes` (`exam_id`, `exam_title`, `exam_class_id`, `exam_duration`, `exam_status`, `exam_created_on`, `exam_code`, `exam_result_datetime`) VALUES
(1, 'gd', 1, '5', 'Completed', '2021-07-19 15:18:24', 'd2475aa211456c5d685c53b4b7e9ea0e', '2021-08-09 15:20:00'),
(2, 'web', 1, '5', 'Started', '2021-08-10 16:24:03', '77f6387c9f52590de99f0e3fccb0c287', '0000-00-00 00:00:00'),
(3, 'web', 2, '5', 'Completed', '2021-08-10 16:29:57', '6674544ef7f6b9a0d7a81ccaaf3271b9', '2021-08-10 20:25:00'),
(4, '50', 2, '30', 'Completed', '2021-08-10 16:47:35', '4dc3b034fb584825f2defe7ce58e9d59', '2021-08-10 20:20:00'),
(5, 'ফরহাদ', 2, '5', 'Completed', '2021-08-10 20:36:07', '5fb01737181c5462bf2b224f01383614', '2021-08-11 01:40:00'),
(6, 'mf1', 2, '3', 'Completed', '2021-09-23 17:48:22', 'd6983d3607f77c8221dd3cdff9e1a75e', '2021-09-23 17:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `exam_subject_question_answer`
--

CREATE TABLE `exam_subject_question_answer` (
  `answer_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `exam_subject_question_id` int(11) NOT NULL,
  `student_answer_option` enum('0','1','2','3','4') NOT NULL,
  `marks` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `exam_subject_question_answer`
--

INSERT INTO `exam_subject_question_answer` (`answer_id`, `student_id`, `exam_subject_question_id`, `student_answer_option`, `marks`) VALUES
(1, 1, 1, '1', '+1'),
(2, 1, 5, '1', '+2'),
(3, 1, 6, '2', '+2'),
(4, 1, 7, '4', '-1.25'),
(5, 2, 10, '4', '-1.25'),
(6, 2, 9, '2', '+2'),
(7, 2, 8, '1', '+2'),
(8, 180, 11, '1', '+1'),
(9, 180, 12, '2', '+1'),
(10, 180, 13, '3', '+1');

-- --------------------------------------------------------

--
-- Table structure for table `exam_subject_question_soes`
--

CREATE TABLE `exam_subject_question_soes` (
  `exam_subject_question_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_subject_id` int(11) NOT NULL,
  `exam_subject_question_title` text NOT NULL,
  `exam_subject_question_answer` enum('1','2','3','4') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `exam_subject_question_soes`
--

INSERT INTO `exam_subject_question_soes` (`exam_subject_question_id`, `exam_id`, `exam_subject_id`, `exam_subject_question_title`, `exam_subject_question_answer`) VALUES
(1, 1, 1, '1', '1'),
(2, 2, 3, 'hi', '1'),
(3, 2, 3, 'hlw', '2'),
(4, 2, 3, 'hlwhi', '3'),
(5, 4, 5, 'hi', '1'),
(6, 4, 5, 'hlw', '2'),
(7, 4, 5, 'hlwhi', '3'),
(8, 5, 6, 'hi', '1'),
(9, 5, 6, 'hlw', '2'),
(10, 5, 6, 'hlwhi', '3'),
(11, 6, 7, '1', '1'),
(12, 6, 7, '2', '2'),
(13, 6, 7, '3', '3');

-- --------------------------------------------------------

--
-- Table structure for table `exam_tbl`
--

CREATE TABLE `exam_tbl` (
  `ex_id` int(11) NOT NULL,
  `cou_id` int(11) NOT NULL,
  `ex_title` varchar(1000) NOT NULL,
  `ex_time_limit` varchar(1000) NOT NULL,
  `ex_questlimit_display` int(11) NOT NULL,
  `ex_description` varchar(1000) NOT NULL,
  `ex_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `mentor_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `exam_tbl`
--

INSERT INTO `exam_tbl` (`ex_id`, `cou_id`, `ex_title`, `ex_time_limit`, `ex_questlimit_display`, `ex_description`, `ex_created`, `mentor_id`) VALUES
(38, 1, 'SSC-জীব বিজ্ঞান (দ্বিতীয় অধ্যায়)', '12', 15, 'জীব কোষ ও টিস্যু-MCQ-15Marks: 15 & Time: 12 mins', '2023-04-12 15:35:59', '1213154382'),
(39, 1, 'ঊচ্চতর গণিত - (দ্বিপদী বিস্তৃতি এবং ঘণ জ্যামিতি)', '15', 15, 'মোট নম্বরঃ২৫ \r\nসময়ঃ১৫ মি. ', '2023-04-12 15:28:40', '1213154382'),
(40, 2, 'Test-1', '5', 3, 'Testa', '2023-04-13 19:29:54', '1213154382');

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `achievement` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `mode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`id`, `unique_id`, `position`, `location`, `duration`, `achievement`, `company`, `mode`) VALUES
(1, '837706146', 'Deauty sales Manger,', 'Deauty sales Manger, Lorem ipsum dolor sit amet consectetur adipisicing elit. Et, repellat', '2015-2017', ' farha;d Lorem, ipsum dolor. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia ex quas ut soluta, est mollitia quaerat nesciunt tempore excepturi minima rerum perspiciatis illum beatae sint? Voluptate illo eius facere dicta?', 'company1', 'e'),
(2, '837706146', 'Deauty sales Manger,', 'Deauty sales Manger, Lorem ipsum dolor sit amet consectetur adipisicing elit. Et, repellat', '2015-2017', ' farha;d Lorem, ipsum dolor. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia ex quas ut soluta, est mollitia quaerat nesciunt tempore excepturi minima rerum perspiciatis illum beatae sint? Voluptate illo eius facere dicta?', 'company2', 'e');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `user_id`, `subject`, `date_updated`) VALUES
(76, 343251195, 'bangla', '2022-11-21 19:29:35'),
(77, 512078212, 'english', '2022-11-21 19:37:46');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `faq_title`, `faq_description`) VALUES
(1, 'what is your website is about ?', 'this website is a free TV shows ratting website'),
(2, 'How to rate the videos ?', 'Go to view videos section and select your favourite TV show and give ratting there'),
(3, 'how to log in ?', 'goto bingeflix.com/login and from there you can login');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks_tbl`
--

CREATE TABLE `feedbacks_tbl` (
  `fb_id` int(11) NOT NULL,
  `exmne_id` int(11) NOT NULL,
  `fb_exmne_as` varchar(1000) NOT NULL,
  `fb_feedbacks` varchar(1000) NOT NULL,
  `fb_date` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `feedbacks_tbl`
--

INSERT INTO `feedbacks_tbl` (`fb_id`, `exmne_id`, `fb_exmne_as`, `fb_feedbacks`, `fb_date`) VALUES
(4, 6, 'Glenn Duerme', 'Gwapa kay Miss Pam', 'December 05, 2019'),
(5, 6, 'Anonymous', 'Lageh, idol na nako!', 'December 05, 2019'),
(6, 4, 'Rogz Nunezsss', 'Yes', 'December 08, 2019'),
(7, 4, '', '', 'December 08, 2019'),
(8, 4, '', '', 'December 08, 2019'),
(9, 8, 'Anonymous', 'dfsdf', 'January 05, 2020'),
(10, 9, 'warren dalaoyan', 'haah', 'January 12, 2020'),
(11, 837706146, 'mffoysal', 'far', 'October 07, 2021'),
(12, 837706146, '', '', 'October 08, 2021'),
(13, 837706146, '', '', 'October 08, 2021');

-- --------------------------------------------------------

--
-- Table structure for table `fnd`
--

CREATE TABLE `fnd` (
  `id` int(11) NOT NULL,
  `from_id` int(255) NOT NULL,
  `to_id` int(255) NOT NULL,
  `status` enum('Confirm','Pending','Reject') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `fnd`
--

INSERT INTO `fnd` (`id`, `from_id`, `to_id`, `status`) VALUES
(11, 837706146, 837706146, 'Confirm'),
(12, 837706146, 837706146, 'Confirm'),
(13, 837706146, 837706146, 'Confirm'),
(14, 837706146, 837706146, 'Confirm'),
(15, 1213154382, 837706146, 'Confirm'),
(16, 837706146, 1213154382, 'Confirm'),
(17, 290274163, 837706146, 'Confirm'),
(18, 837706146, 290274163, 'Confirm'),
(19, 787579835, 787579833, 'Confirm'),
(20, 787579833, 787579835, 'Confirm'),
(21, 837706146, 787579835, 'Confirm'),
(22, 787579835, 837706146, 'Confirm');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` int(11) NOT NULL,
  `from_id` varchar(255) NOT NULL,
  `to_id` varchar(255) NOT NULL,
  `status` enum('Pending','Confirm','Reject') NOT NULL,
  `image` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(30) NOT NULL,
  `quiz_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `score` int(5) NOT NULL,
  `total_score` int(5) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `quiz_id`, `user_id`, `score`, `total_score`, `date_updated`) VALUES
(1, 2, 1455045245, 2, 2, '2022-11-21 19:48:22');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `img_title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` enum('Enable','Disable') NOT NULL,
  `active` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `img`, `unique_id`, `img_title`, `image`, `status`, `active`) VALUES
(7, '1', '837706146', 'cover Photo 1', '1637905308wallet.png', 'Enable', ''),
(8, '1', '837706146', 'Farhad Foysal Type-Header555', '1638331277wallet.png', 'Enable', ''),
(9, '1', '837706146', 'Farhad Foysal Type-Header6', '1638331277wallet.png', 'Enable', ''),
(10, '1', '1213154382', 'hey.....', '16417320651612264876893.jpg', 'Enable', '');

-- --------------------------------------------------------

--
-- Table structure for table `img`
--

CREATE TABLE `img` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(50) NOT NULL,
  `d_image` varchar(255) NOT NULL,
  `d_name` varchar(255) NOT NULL,
  `d_position` varchar(255) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `twit` varchar(255) NOT NULL,
  `google` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `img`
--

INSERT INTO `img` (`id`, `image`, `title`, `d_image`, `d_name`, `d_position`, `fb`, `twit`, `google`, `status`) VALUES
(1, 'images/work1.png', 'This is sky News....', 'images/pylogo.png', 'Farhad Foysal', 'CEO & Founder', 'https://www.facebook.com/mf.foysal.5', 'https://twitter.com/mffoysal', 'http://mff585855075@gmail.com', '1');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `pro_id` varchar(255) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `name` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `house` varchar(255) NOT NULL,
  `cart_item` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `total_item` varchar(255) NOT NULL,
  `price_sum` varchar(255) NOT NULL,
  `coupon` varchar(255) NOT NULL,
  `subtotal` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_number` varchar(30) NOT NULL,
  `payment_trx` varchar(30) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `email` varchar(255) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `customer_service` varchar(255) NOT NULL,
  `delivery_confirm` enum('Pending','Confirm','Rejected') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`pro_id`, `phone`, `name`, `district`, `address`, `house`, `cart_item`, `item`, `total_item`, `price_sum`, `coupon`, `subtotal`, `payment_method`, `payment_number`, `payment_trx`, `msg`, `email`, `datetime`, `customer_service`, `delivery_confirm`) VALUES
('MF-F-0000001', '01585855075', 'farhad', '', '', '', '1', '(1)Lenovo1*[1], ', '26,999.00৳  +', '1টি', 'FMNF369', '26,999.00৳', 'Cash', '', '', '', '', '2021-08-07 13:51:06', '', ''),
('MF-F-0000002', '01873835887', 'najifa', '4702', 'Islampur, Natun office, Coxs', '155', '2', '(12)BULB*[1], (15)Galaxy Tab A2016*[1], ', '2টি', '42,000.00৳  +15,000.00৳  +', '51300', '51300', 'Cash', '', '', '', 'mff585855075@gmail.com', '2021-09-13 13:10:55', '', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(255) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`) VALUES
(0, 'farhad', 'mff@gmail.com', '370225'),
(1, 'najifa', 'mf@gmail.com', '369725');

-- --------------------------------------------------------

--
-- Table structure for table `make_exam`
--

CREATE TABLE `make_exam` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `ex_code` varchar(255) NOT NULL,
  `class_code` varchar(255) NOT NULL,
  `ex_name` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `active` varchar(2) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marksheet`
--

CREATE TABLE `marksheet` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `std_id` varchar(255) NOT NULL,
  `ex_code` varchar(255) NOT NULL,
  `sub_code` varchar(255) NOT NULL,
  `written` varchar(255) NOT NULL,
  `mcq` varchar(255) NOT NULL,
  `sub_mark` varchar(255) NOT NULL,
  `gp` varchar(255) NOT NULL,
  `gpa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meal_table`
--

CREATE TABLE `meal_table` (
  `id` int(11) NOT NULL,
  `meal_date` date NOT NULL,
  `breakfast` int(11) NOT NULL,
  `launch` int(11) NOT NULL,
  `dinner` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `member_name` varchar(255) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `mess_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `meal_table`
--

INSERT INTO `meal_table` (`id`, `meal_date`, `breakfast`, `launch`, `dinner`, `mid`, `member_name`, `unique_id`, `mess_id`) VALUES
(1, '2022-06-08', 2, 1, 1, 1213154382, 'Farhad Foysal', '1213154382', '4'),
(2, '2022-06-01', 1, 2, 0, 1213154382, 'Farhad Foysal', '1213154382', '4'),
(3, '2022-06-08', 4, 0, 0, 1213154382, 'Farhad Foysal', '1213154382', '4'),
(4, '2022-06-04', 0, 0, 3, 1213154382, 'Farhad Foysal', '1213154382', '4'),
(5, '2023-11-19', 1, 2, 1, 1213154382, 'Farhad Foysal', '1213154382', '4');

-- --------------------------------------------------------

--
-- Table structure for table `mess`
--

CREATE TABLE `mess` (
  `mess_id` int(11) NOT NULL,
  `mess_name` varchar(255) NOT NULL,
  `tutor_id` varchar(255) NOT NULL,
  `status` enum('Available','Hide') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `mess`
--

INSERT INTO `mess` (`mess_id`, `mess_name`, `tutor_id`, `status`) VALUES
(1, 'fmnf', '837706146', 'Available'),
(2, 'fmnf2', '290274163', 'Available'),
(3, 'hello', '837706146', 'Available'),
(4, 'hello2', '1213154382', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` varchar(255) NOT NULL,
  `outgoing_msg_id` varchar(255) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`, `image`, `status`) VALUES
(1, '861942576', '1213154382', 'hi', '', 0),
(2, '1213154382', '861942576', 'yeah\r\n', '', 1),
(3, '290274163', '837706146', 'Hi', '', 1),
(4, '290274163', '837706146', 'kemon acho', '', 1),
(5, '290274163', '837706146', 'hlw\r\n', '', 1),
(6, '290274163', '1213154382', 'assalamualaikum', '', 1),
(7, '837706146', '1213154382', 'assalamualaikum', '', 1),
(8, '1213154382', '837706146', 'Walaikumassalam ', '', 1),
(9, '1213154382', '837706146', 'Kemon achen?', '', 1),
(10, '837706146', '1213154382', 'alhamdulillah\r\n', '', 1),
(11, '1213154382', '837706146', 'Hi', '', 1),
(12, '1213154382', '837706146', 'Hlw', '', 1),
(13, '837706146', '837706146', 'assalamualaikum', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mess_expense`
--

CREATE TABLE `mess_expense` (
  `id` int(11) NOT NULL,
  `expense_date` date NOT NULL,
  `mid` int(11) NOT NULL,
  `member_name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `mess_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `mess_expense`
--

INSERT INTO `mess_expense` (`id`, `expense_date`, `mid`, `member_name`, `amount`, `unique_id`, `mess_id`) VALUES
(1, '2022-06-08', 1213154382, 'Farhad Foysal', 500, '1213154382', '4'),
(2, '2021-10-02', 23, 'farhad', 500, '', ''),
(3, '2021-10-03', 837706146, 'mffoysal', 400, '837706146', '1'),
(4, '2021-10-03', 1213154382, 'Farhad Foysal', 100, '1213154382', '2'),
(5, '2021-10-03', 290274163, 'mffoysal22', 100, '290274163', '1'),
(6, '2021-10-09', 837706146, 'mffoysal', 100, '837706146', '1'),
(7, '2023-11-19', 1213154382, 'Farhad Foysal', 500, '1213154382', '4');

-- --------------------------------------------------------

--
-- Table structure for table `mytable`
--

CREATE TABLE `mytable` (
  `id` int(255) NOT NULL,
  `video_path` varchar(255) NOT NULL,
  `video_name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `mytable`
--

INSERT INTO `mytable` (`id`, `video_path`, `video_name`, `img`) VALUES
(1, 'path1', 'myvideo', 'httpvideo'),
(2, 'path2', 'myvideo2', 'httpvideo2');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `text` longtext NOT NULL,
  `img` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('Enable','Disable') NOT NULL,
  `header` varchar(255) NOT NULL,
  `love_count` int(255) NOT NULL,
  `like_count` int(255) NOT NULL,
  `dislike_count` int(255) NOT NULL,
  `com_count` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `unique_id`, `text`, `img`, `time`, `status`, `header`, `love_count`, `like_count`, `dislike_count`, `com_count`) VALUES
(16, '837706146', '<p>ertretwertergt</p>\r\n', '16320578321612264876893.jpg', '2021-12-06 07:11:28', 'Enable', 'mffoysal Type-Header', 4, 0, 0, 0),
(17, '837706146', '<p><em><strong>Farhd foysal adsjfkds kdfjkjaf&nbsp; adfjkjfk kdkfjksdjfka pore&nbsp; ffepfdf ppkdfepoeipf&nbsp; fskf dskflksdfp djfejuoif f djkfalsdp ldfldkfaepif efodsflekl;ldfk dslkeldf satlpsldkf epde laf ladkfoejsaf lfkoef&nbsp;</strong></em></p>\r\n', '', '2021-12-19 14:32:20', 'Enable', 'mffoysal post/04', 5, 0, 0, 0),
(20, '837706146', '<p>ertretwertergt</p>\r\n', '16320578321612264876893.jpg', '2021-12-04 13:12:37', 'Enable', 'mffoysal Type-Header', 8, 5, 3, 0),
(21, '837706146', '<p>fARAHD FOYSAL</p>\r\n', '16320578321612264876893.jpg', '2021-12-19 14:26:14', 'Enable', 'mffoysal Type-Header', 159, 7, 3, 1),
(22, '837706146', '<p>fARAHD FOYSAL2</p>\r\n', '16320578321612264876893.jpg', '2022-01-12 16:17:17', 'Enable', 'mffoysal Type-Header', 169, 32, 40, 62),
(24, '290274163', '<p>fgdxgdxfgdg</p>\r\n', '16401596371640104218378.jpg', '2021-12-22 07:53:57', 'Enable', 'test FarhadFoysal', 0, 0, 0, 0),
(58, '1213154382', 'hi', '1641451688gdsf.jpg', '2022-01-06 06:49:04', 'Enable', 'Assalamualaikum', 0, 3, 0, 0),
(71, '1213154382', 'Farhad Foysal Type-Header ', '', '2022-01-06 14:27:00', 'Enable', 'Farhad Foysal Type-Header', 0, 0, 0, 0),
(75, '1213154382', 'আসসালামু আলাইকুম। আমি একটি পাবলিক বিশ্ববিদ্যালয়ে অনার্স ৪র্থ বর্ষে অধ্যয়নরত আছি। আমার বয়স ২৫ বছর। ছোটকালে ৫ বছর একটি কওমী মাদ্রাসায় পড়েছিলাম। তারপর স্কুলে ভর্তি হই। জীবনে অনেক উত্থান-পতন আসে। শুরুর দিকে ভালো ছাত্র ছিলাম। এখন ভার্সিটিতে এসে রেজাল্টও ভালোনা। আলেমদের কথা শুনে আবার ইসলাম নিয়ে পড়ালেখার আগ্রহ জন্মেছে। বিশেষত আব্দুল্লাহ জাহাঙ্গীর স্যারের লিখনী আমার অনেক উপকারে এসেছে।  আমার ভাইবোন চাকরী করে। পরিবার আলহামদুলিল্লাহ স্বচ্ছল। আমি পরিবারের সবচেয়ে ছোট। আমার প্রবল ইচ্ছা, একজন আলেম ও দ্বীনের দায়ী হওয়া। আপনাদের কাছে আমার জিজ্ঞাসা হলো, এই বয়সে এসে আলেম হওয়া যায় কিনা বা সেটা যুক্তিসংগত কিনা? আমার জন্য উপযোগী কোন ভালো মাদ্রাসা আছে কিনা? আপনাদের আসসুন্নাহতে এমন কোন ব্যবস্থা আছে?\r\n\r\n\r\n(4868)      \r\n            \r\n            \r\n            \r\n  উত্তর: ওয়া আলাইকুমুস সালাম। যদি আপনার আলেম হওয়ার আগ্রহ থাকে,আর্থিক স্বচ্ছলতা আর পারিবারিক সাপোর্ট থাকে তাহলে আপনার আলেম হওয়ার সুযোগ আছে। আস-সুন্নাহতে সে রকম ব্যবস্থা নেই। তবে ঢাকাতে এমন মাদ্রাসা আছে। দারুর রাশাদ নামে বয়স্কদেরএকটা মাদ্রাসা আছে ঢাকাতে, সেখানেও পড়তে পারেন। ', '16418071091612264876893.jpg', '2022-01-10 09:39:08', 'Enable', 'Assalamualaikum', 0, 0, 0, 0),
(76, '1213154382', '<p><span style=\"color:#f39c12\">Farhad Foysal</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#27ae60\"><span style=\"background-color:#2ecc71\">hi farhad</span></span></p>\r\n ', '', '2022-01-10 09:45:22', 'Enable', 'Assalamualaikum', 0, 0, 0, 0),
(77, '1213154382', '<p><span style=\"color:#f39c12\">Farhad Foysal</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"color:#27ae60\"><span style=\"background-color:#2ecc71\">hi farhad</span></span></p>\r\n ', '1641809066bg.jpg', '2022-01-10 10:04:27', 'Enable', 'Assalamualaikum', 0, 0, 0, 0),
(78, '1213154382', '<p><span style=\"color:#f39c12\">Farhad Foysal</span></p>\r\n<p><span style=\"color:#27ae60\"><span style=\"background-color:#2ecc71\">hi farhad</span></span></p>\r\n ', '1641809138bg.jpg', '2022-01-10 10:05:38', 'Enable', 'Assalamualaikum', 0, 0, 0, 0),
(79, '1213154382', '<p><span style=\"color:#f1c40f\">farha dfoysal flaf adsfei fajf&nbsp;</span></p>\r\n\r\n<p><span style=\"color:#f1c40f\">aflfkl;akf lfk;</span></p>\r\n\r\n<p><span style=\"font-size:20px\">afkl;kfea&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:20px\">afka</span></p>\r\n ', '', '2022-01-10 10:12:15', 'Enable', 'mffoysal FINAL POST', 0, 0, 0, 0),
(80, '1213154382', '<p><span style=\"color:#f1c40f\">farha dfoysal flaf adsfei fajf&nbsp;</span></p>\r\n<p><span style=\"color:#f1c40f\">aflfkl;akf lfk;</span></p>\r\n<p><span style=\"font-size:20px\">afkl;kfea&nbsp;</span></p>\r\n<p><span style=\"font-size:20px\">afka</span></p>\r\n ', '', '2022-01-10 10:12:56', 'Enable', 'mffoysal FINAL POST', 0, 0, 0, 0),
(81, '1213154382', '<p><span style=\"color:#f1c40f\">farha dfoysal flaf adsfei fajf&nbsp;</span></p>\r\n<p><span style=\"color:#f1c40f\">aflfkl;akf lfk;</span></p>\r\n<p><span style=\"font-size:20px\">afkl;kfea&nbsp;</span></p>\r\n<p><span style=\"font-size:20px\">afka</span></p>\r\n<p>dafrr</p>\r\n\r\n<p>affk</p>\r\n\r\n<p>sfklkfl&#39;a</p>\r\n\r\n<p>afkkf</p>\r\n\r\n ', '', '2022-01-10 10:14:01', 'Enable', 'mffoysal FINAL POST', 0, 0, 0, 0),
(82, '1213154382', '<p>আসসালামু আলাইকুম। আমি একটি পাবলিক বিশ্ববিদ্যালয়ে অনার্স ৪র্থ বর্ষে অধ্যয়নরত আছি। আমার বয়স ২৫ বছর। ছোটকালে ৫ বছর একটি কওমী মাদ্রাসায় পড়েছিলাম। তারপর স্কুলে ভর্তি হই। জীবনে অনেক উত্থান-পতন আসে। শুরুর দিকে ভালো ছাত্র ছিলাম। এখন ভার্সিটিতে এসে রেজাল্টও ভালোনা।</p>\r\n\r\n<p>আলেমদের কথা শুনে আবার ইসলাম নিয়ে পড়ালেখার আগ্রহ জন্মেছে। বিশেষত আব্দুল্লাহ জাহাঙ্গীর স্যারের লিখনী আমার অনেক উপকারে এসেছে।</p>\r\n\r\n<p>আমার ভাইবোন চাকরী করে। পরিবার আলহামদুলিল্লাহ স্বচ্ছল। আমি পরিবারের সবচেয়ে ছোট। আমার প্রবল ইচ্ছা, একজন আলেম ও দ্বীনের দায়ী হওয়া। আপনাদের কাছে আমার জিজ্ঞাসা হলো, এই বয়সে এসে আলেম হওয়া যায় কিনা বা সেটা যুক্তিসংগত কিনা? আমার জন্য উপযোগী কোন ভালো মাদ্রাসা আছে কিনা? আপনাদের আসসুন্নাহতে এমন কোন ব্যবস্থা আছে?</p>\r\n ', '', '2022-01-10 10:17:05', 'Enable', 'Assalamualaikum', 0, 0, 0, 0),
(83, '1213154382', '<p>আসসালামু আলাইকুম। আমি একটি পাবলিক বিশ্ববিদ্যালয়ে অনার্স ৪র্থ বর্ষে অধ্যয়নরত আছি। আমার বয়স ২৫ বছর। ছোটকালে ৫ বছর একটি কওমী মাদ্রাসায় পড়েছিলাম। তারপর স্কুলে ভর্তি হই। জীবনে অনেক উত্থান-পতন আসে। শুরুর দিকে ভালো ছাত্র ছিলাম। এখন ভার্সিটিতে এসে রেজাল্টও ভালোনা।</p>\r\n\r\n<p>আলেমদের কথা শুনে আবার ইসলাম নিয়ে পড়ালেখার আগ্রহ জন্মেছে। বিশেষত আব্দুল্লাহ জাহাঙ্গীর স্যারের লিখনী আমার অনেক উপকারে এসেছে।</p>\r\n\r\n<p>আমার ভাইবোন চাকরী করে। পরিবার আলহামদুলিল্লাহ স্বচ্ছল। আমি পরিবারের সবচেয়ে ছোট। আমার প্রবল ইচ্ছা, একজন আলেম ও দ্বীনের দায়ী হওয়া। আপনাদের কাছে আমার জিজ্ঞাসা হলো, এই বয়সে এসে আলেম হওয়া যায় কিনা বা সেটা যুক্তিসংগত কিনা? আমার জন্য উপযোগী কোন ভালো মাদ্রাসা আছে কিনা? আপনাদের আসসুন্নাহতে এমন কোন ব্যবস্থা আছে?</p>\r\n ', '', '2022-01-10 10:17:53', 'Enable', 'Assalamualaikum', 0, 0, 0, 0),
(84, '1213154382', '<p><span style=\"font-size:18px\">আসসালামু আলাইকুম। আমি একটি পাবলিক বিশ্ববিদ্যালয়ে অনার্স ৪র্থ বর্ষে অধ্যয়নরত আছি। আমার বয়স ২৫ বছর। ছোটকালে ৫ বছর একটি কওমী মাদ্রাসায় পড়েছিলাম। তারপর স্কুলে ভর্তি হই। জীবনে অনেক উত্থান-পতন আসে। শুরুর দিকে ভালো ছাত্র ছিলাম। এখন ভার্সিটিতে এসে রেজাল্টও ভালোনা।</span></p>\r\n\r\n<p>আলেমদের কথা শুনে আবার ইসলাম নিয়ে পড়ালেখার আগ্রহ জন্মেছে। বিশেষত আব্দুল্লাহ জাহাঙ্গীর স্যারের লিখনী আমার অনেক উপকারে এসেছে।</p>\r\n\r\n<p>আমার ভাইবোন চাকরী করে। পরিবার আলহামদুলিল্লাহ স্বচ্ছল। আমি পরিবারের সবচেয়ে ছোট। আমার প্রবল ইচ্ছা, একজন আলেম ও দ্বীনের দায়ী হওয়া। আপনাদের কাছে আমার জিজ্ঞাসা হলো, এই বয়সে এসে আলেম হওয়া যায় কিনা বা সেটা যুক্তিসংগত কিনা? আমার জন্য উপযোগী কোন ভালো মাদ্রাসা আছে কিনা? আপনাদের আসসুন্নাহতে এমন কোন ব্যবস্থা আছে?</p>\r\n ', '', '2022-01-10 10:18:04', 'Enable', 'Assalamualaikum', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `categoryid` int(1) NOT NULL,
  `productname` varchar(30) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `categoryid`, `productname`, `price`, `photo`) VALUES
(14, 4, 'Pandesal and hot coffee', 50, ''),
(15, 4, 'Bangusilog', 150, ''),
(16, 5, 'Spicy Ginataang Hipon', 300, ''),
(17, 5, 'Pork Bicol Express', 100, ''),
(18, 7, 'Buko Juice', 50, ''),
(19, 7, 'Pineapple Juice', 50, ''),
(20, 6, 'Chicken Adobo', 250, ''),
(21, 4, 'rd', 1200, ''),
(22, 4, 'fsa', 140000, ''),
(23, 4, 'sdf', 50000, '');

-- --------------------------------------------------------

--
-- Table structure for table `programming_languages`
--

CREATE TABLE `programming_languages` (
  `id` int(255) NOT NULL,
  `language_name` varchar(255) DEFAULT NULL,
  `language_image` varchar(255) DEFAULT NULL,
  `language_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `programming_languages`
--

INSERT INTO `programming_languages` (`id`, `language_name`, `language_image`, `language_description`) VALUES
(0, 'java', 'uploadimg/1.png', ''),
(3, 'Android', 'uploadimg/ANDROID.png', 'its an android course'),
(9, 'python', 'uploadimg/PYTHON.png', ''),
(12, 'Graphic Design', 'uploadimg/mff.jpg', 'Instructeb by MFF');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchaseid` int(11) NOT NULL,
  `customer` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `total` double NOT NULL,
  `date_purchase` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purchaseid`, `customer`, `total`, `date_purchase`) VALUES
(13, 'FArhad Foysal', 1111, '2021-09-13 12:14:57');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_detail`
--

CREATE TABLE `purchase_detail` (
  `pdid` int(11) NOT NULL,
  `purchaseid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `purchase_detail`
--

INSERT INTO `purchase_detail` (`pdid`, `purchaseid`, `productid`, `quantity`) VALUES
(21, 13, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `qanswer`
--

CREATE TABLE `qanswer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `qanswer`
--

INSERT INTO `qanswer` (`qid`, `ansid`) VALUES
('5b13ed3a6e006', '5b13ed3a9436a'),
('5b13ed72489d8', '5b13ed7263d70'),
('5b141d712647f', '5b141d71485b9'),
('5b141d718f873', '5b141d71978be'),
('5b141d71ddb46', '5b141d71e5f43'),
('5b141d721a738', '5b141d7222884'),
('5b141d7260b7d', '5b141d7268b9a'),
('5b141d72a6fa1', '5b141d72aefcb'),
('5b141d72d7a1c', '5b141d72dfa7b'),
('5b141d731429b', '5b141d731c234'),
('5b141d7345176', '5b141d734cd1b'),
('5b141d737ddfc', '5b141d73858df'),
('5b1422651fdde', '5b1422654ab51'),
('5b14226574ed5', '5b1422657d064'),
('5b142265b5d08', '5b142265c09f5'),
('5b1422661d93f', '5b14226635e0d'),
('5b14226663cf4', '5b1422666bf2b'),
('5b1422669481b', '5b1422669c8ea'),
('5b142266c525c', '5b142266cd369'),
('5b14226711d91', '5b14226719fb1'),
('5b1422674286d', '5b1422674a9ee'),
('5b1422677371f', '5b1422677b3fc');

-- --------------------------------------------------------

--
-- Table structure for table `qanswers`
--

CREATE TABLE `qanswers` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `quiz_id` int(30) NOT NULL,
  `question_id` int(30) NOT NULL,
  `option_id` int(30) NOT NULL,
  `is_right` tinyint(1) NOT NULL COMMENT ' 1 = right, 0 = wrong',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qanswers`
--

INSERT INTO `qanswers` (`id`, `user_id`, `quiz_id`, `question_id`, `option_id`, `is_right`, `date_updated`) VALUES
(24, 1455045245, 2, 7, 163, 1, '2022-11-21 19:48:22'),
(25, 1455045245, 2, 8, 157, 1, '2022-11-21 19:48:22');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qid` int(250) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `ans_id` int(255) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qid`, `question`, `ans_id`, `course_name`) VALUES
(1, 'what does html stands for', 1, 'html'),
(2, ' Who is making the Web standards?', 5, 'html'),
(3, ' Choose the correct HTML element for the largest heading:', 9, 'html'),
(4, 'What is the correct HTML element for inserting a line break?', 13, 'html'),
(5, 'what is java ?', 17, 'java');

-- --------------------------------------------------------

--
-- Table structure for table `question_opt`
--

CREATE TABLE `question_opt` (
  `id` int(30) NOT NULL,
  `option_txt` text NOT NULL,
  `question_id` int(30) NOT NULL,
  `is_right` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1= right answer',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question_opt`
--

INSERT INTO `question_opt` (`id`, `option_txt`, `question_id`, `is_right`, `date_updated`) VALUES
(157, '1', 8, 1, '2022-11-21 19:47:07'),
(158, '0', 8, 0, '2022-11-21 19:47:07'),
(159, '2', 8, 0, '2022-11-21 19:47:07'),
(160, '3', 8, 0, '2022-11-21 19:47:07'),
(161, '1', 7, 0, '2022-11-21 19:47:27'),
(162, '0', 7, 0, '2022-11-21 19:47:28'),
(163, '2', 7, 1, '2022-11-21 19:47:28'),
(164, '3', 7, 0, '2022-11-21 19:47:28');

-- --------------------------------------------------------

--
-- Table structure for table `question_option_soes`
--

CREATE TABLE `question_option_soes` (
  `question_option_id` int(11) NOT NULL,
  `exam_subject_question_id` int(11) NOT NULL,
  `question_option_number` int(1) NOT NULL,
  `question_option_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `question_option_soes`
--

INSERT INTO `question_option_soes` (`question_option_id`, `exam_subject_question_id`, `question_option_number`, `question_option_title`) VALUES
(1, 1, 1, '1'),
(2, 1, 2, '3'),
(3, 1, 3, '2'),
(4, 1, 4, '4'),
(5, 2, 1, '1'),
(6, 2, 2, '2'),
(7, 2, 3, '3'),
(8, 2, 4, '4'),
(9, 3, 1, '1'),
(10, 3, 2, '2'),
(11, 3, 3, '3'),
(12, 3, 4, '4'),
(13, 4, 1, '1'),
(14, 4, 2, '2'),
(15, 4, 3, '3'),
(16, 4, 4, '4'),
(17, 5, 1, '1'),
(18, 5, 2, '2'),
(19, 5, 3, '3'),
(20, 5, 4, '4'),
(21, 6, 1, '1'),
(22, 6, 2, '2'),
(23, 6, 3, '3'),
(24, 6, 4, '4'),
(25, 7, 1, '1'),
(26, 7, 2, '2'),
(27, 7, 3, '3'),
(28, 7, 4, '4'),
(29, 8, 1, '1'),
(30, 8, 2, '2'),
(31, 8, 3, '3'),
(32, 8, 4, '4'),
(33, 9, 1, '1'),
(34, 9, 2, '2'),
(35, 9, 3, '3'),
(36, 9, 4, '4'),
(37, 10, 1, '1'),
(38, 10, 2, '2'),
(39, 10, 3, '3'),
(40, 10, 4, '4'),
(41, 11, 1, '1'),
(42, 11, 2, '2'),
(43, 11, 3, '3'),
(44, 11, 4, '4'),
(45, 12, 1, '1'),
(46, 12, 2, '2'),
(47, 12, 3, '3'),
(48, 12, 4, '4'),
(49, 13, 1, '1'),
(50, 13, 2, '2'),
(51, 13, 3, '3'),
(52, 13, 4, '4');

-- --------------------------------------------------------

--
-- Table structure for table `question_test`
--

CREATE TABLE `question_test` (
  `id` int(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `opt1` varchar(255) NOT NULL,
  `opt2` varchar(255) NOT NULL,
  `opt3` varchar(255) NOT NULL,
  `opt4` varchar(255) NOT NULL,
  `answer` int(100) NOT NULL,
  `course_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `question_test`
--

INSERT INTO `question_test` (`id`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `answer`, `course_id`) VALUES
(1, 'What does PHP stand for?', 'PHP: Hypertext Preprocessor', 'Private Home Page', 'Personal Hypertext Processor', 'i dont know', 0, 1),
(2, 'How do you write \"Hello World\" in PHP', ' Document.Write(\"Hello World\")', ' echo \"Hello World\"', '\"Hello World\"', 'i dont know', 1, 1),
(14, 'what is haddop', 'i dont know', 'whatever ', 'bigdata soluntion', 'bigdata', 2, 9),
(15, 'The practice of creating objects based on predefined classes is often referred to as..', ' class creation', 'object creation', 'object instantiation', 'class instantiation', 3, 1),
(19, '', '', '', '', '', 0, 0),
(20, 'question 1', 'option 1', 'option 2', 'option 3', 'option 4 ', 1, 13),
(21, '', '', '', '', '', 0, 0),
(22, 'question 1', 'option 1', 'option 2', 'option 3', 'option 4 ', 1, 14),
(23, '', '', '', '', '', 0, 0),
(24, '', '', '', '', '', 0, 0),
(25, '', '', '', '', '', 0, 0),
(26, '', '', '', '', '', 0, 0),
(27, '', '', '', '', '', 0, 0),
(28, '', '', '', '', '', 0, 0),
(29, '', '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `quizquestions`
--

CREATE TABLE `quizquestions` (
  `id` int(30) NOT NULL,
  `question` text NOT NULL,
  `qid` int(30) NOT NULL,
  `order_by` int(11) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quizquestions`
--

INSERT INTO `quizquestions` (`id`, `question`, `qid`, `order_by`, `date_updated`) VALUES
(7, '2', 2, 0, '2022-11-21 19:47:27'),
(8, '1', 2, 0, '2022-11-21 19:47:07');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_list`
--

CREATE TABLE `quiz_list` (
  `id` int(30) NOT NULL,
  `title` varchar(200) NOT NULL,
  `qpoints` int(11) NOT NULL DEFAULT 1,
  `user_id` int(20) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_list`
--

INSERT INTO `quiz_list` (`id`, `title`, `qpoints`, `user_id`, `date_updated`) VALUES
(2, 'qone', 1, 343251195, '2022-11-21 19:42:41');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_students`
--

CREATE TABLE `quiz_students` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `level_section` varchar(100) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_students`
--

INSERT INTO `quiz_students` (`id`, `user_id`, `level_section`, `date_updated`) VALUES
(3, 1455045245, 'xiii', '2022-11-21 19:38:02');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_student_list`
--

CREATE TABLE `quiz_student_list` (
  `id` int(30) NOT NULL,
  `quiz_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_student_list`
--

INSERT INTO `quiz_student_list` (`id`, `quiz_id`, `user_id`, `date_updated`) VALUES
(20, 2, 1455045245, '2022-11-21 19:46:41');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_users`
--

CREATE TABLE `quiz_users` (
  `unique_id` int(30) NOT NULL,
  `name` varchar(150) NOT NULL,
  `acype` varchar(255) NOT NULL DEFAULT 'student' COMMENT '1 = admin, 2= faculty , 3 = student',
  `phone` varchar(25) NOT NULL,
  `pass` varchar(25) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT ' 0 = incative , 1 = active',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_users`
--

INSERT INTO `quiz_users` (`unique_id`, `name`, `acype`, `phone`, `pass`, `status`, `date_updated`) VALUES
(1, 'Administrator', '1', 'admin', 'admin123', 1, '2020-09-07 09:10:49'),
(18, 'mf1', '2', 'mf1', '369725', 1, '2021-09-26 20:32:19');

-- --------------------------------------------------------

--
-- Table structure for table `qute`
--

CREATE TABLE `qute` (
  `id` int(255) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `like_count` int(11) NOT NULL,
  `dislike_count` int(11) NOT NULL,
  `com_count` int(11) NOT NULL,
  `love_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `qute`
--

INSERT INTO `qute` (`id`, `unique_id`, `img`, `text`, `status`, `name`, `address`, `time`, `like_count`, `dislike_count`, `com_count`, `love_count`) VALUES
(1, '837706146', '1633000052mff585855075.png', 'Farhad Foysa lore dkjf dkjfkfsadr ewrepo fwe[p\' aerpi afl awepr fkapoe skdf', 'q1', 'FArhad foysal', 'cox\'s bazar', '2022-01-07 16:41:56', 5, 0, 0, 0),
(3, '1213154382', '1641571047Untitled-2.jpg', 'Assalamualaikum', 'q1', 'mf', 'ইসলামপুর-০১, ঈঁদ্গাও, কক্স বাজার', '2022-01-12 17:46:40', 6, 2, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `shopping`
--

CREATE TABLE `shopping` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `header` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `footer` varchar(255) NOT NULL,
  `h_f_color` varchar(10) NOT NULL,
  `body_off_color` varchar(10) NOT NULL,
  `off_value` varchar(10) NOT NULL,
  `details_value` varchar(10) NOT NULL,
  `acive_color` varchar(10) NOT NULL,
  `a_not_a` varchar(50) NOT NULL,
  `category` varchar(2) NOT NULL,
  `categoryname` varchar(255) NOT NULL,
  `stylebc` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `img3` varchar(255) NOT NULL,
  `img4` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shopping`
--

INSERT INTO `shopping` (`id`, `title`, `price`, `img`, `details`, `header`, `link`, `time`, `footer`, `h_f_color`, `body_off_color`, `off_value`, `details_value`, `acive_color`, `a_not_a`, `category`, `categoryname`, `stylebc`, `img2`, `img3`, `img4`) VALUES
(4, 'Galaxy', '1111', '/bg.jpg', 'This is a new model samsung galaxy phone...', 'Chose Your Smart Phone', '', '2021-08-31 19:23:12', 'Farhad Foysal', 'success', 'secondary', '20', '29', 'danger', 'Not Available', '1', 'LUNCH', '', '', '', ''),
(5, 'Dell', '42000', '/bg.jpg', 'This is a new model dell laptop...', 'Chose Your Laptop', '', '2021-08-31 19:23:22', 'Dell', 'warning', 'dark', '50', '8', 'success', 'Available', '1', 'LUNCH', '', '', '', ''),
(7, 'BULB', '42000', '/bg.jpg', 'This is a new model dell laptop...', 'Chose Your Laptop', '', '2021-08-31 17:07:36', 'Dell', 'warning', 'secondary', '50', '8', 'success', 'Available', '1', 'LUNCH', '', '', '', ''),
(8, 'hi', '42000', '/bg.jpg', 'This is a new model dell laptop...', 'Chose Your Laptop', '', '2021-08-31 19:23:35', 'Dell', 'warning', 'secondary', '50', '8', 'success', 'Available', '1', 'LUNCH', '', '', '', ''),
(9, 'Lenovo1', '26999', '/bg.jpg', 'this is a new model lenovo phone...', 'Chose Your Smart Phone', '', '2021-08-31 17:07:50', 'Farhad Foysal', 'info', 'warning', '30', '49+', 'success', 'Available', '1', 'IT', '', '', '', ''),
(10, 'Galaxy Tab A2016', '15000', '/bg.jpg', 'This is a new model samsung galaxy phone...', 'Chose Your Smart Phone', '', '2021-08-31 17:07:56', 'Farhad Foysal', 'success', 'secondary', '20', '29', 'danger', 'Not Available', '1', 'IT', '', '', '', ''),
(11, 'Dell Laptop ', '42000', '/bg.jpg', 'This is a new model dell laptop...', 'Chose Your Laptop', '', '2021-08-31 17:08:03', 'Dell', 'warning', 'dark', '50', '8', 'success', 'Available', '1', 'IT', '', '', '', ''),
(12, 'BULB', '42000', '/bg.jpg', 'This is a new model dell laptop...', 'Chose Your Laptop', '5', '2021-08-31 17:08:07', 'Dell', 'warning', '', '50', '8', 'success', 'Available', '1', 'BREAKFAST', 'yellow', '', '', ''),
(13, 'BULB', '42000', '/bg.jpg', 'This is a new model dell laptop...', 'Chose Your Laptop', '', '2021-08-31 17:08:13', 'Dell', 'warning', 'secondary', '50', '8', 'success', 'Available', '1', 'IT', '', '', '', ''),
(14, 'Lenovo1', '26999', '/bg.jpg', 'this is a new model lenovo phone...', 'Chose Your Smart Phone', '', '2021-08-31 17:08:17', 'Farhad Foysal', 'info', 'warning', '30', '49+', 'success', 'Available', '1', 'BREAKFAST', '', '', '', ''),
(15, 'Galaxy Tab A2016', '15000', '/bg.jpg', 'This is a new model samsung galaxy phone...', 'Chose Your Smart Phone', '', '2021-08-31 17:08:22', 'Farhad Foysal', 'success', 'secondary', '20', '29', 'danger', 'Not Available', '1', 'BREAKFAST', '', '', '', ''),
(16, 'Dell Laptop ', '42000', '/bg.jpg', 'This is a new model dell laptop...', 'Chose Your Laptop', '', '2021-08-31 17:08:27', 'Dell', 'warning', 'dark', '50', '8', 'success', 'Available', '1', 'BREAKFAST', '', '', '', ''),
(17, 'BULB', '42000', '/bg.jpg', 'This is a new model dell laptop...', 'Chose Your Laptop', '', '2021-08-31 17:08:32', 'Dell', 'warning', 'secondary', '50', '8', 'success', 'Available', '1', 'BREAKFAST', '', '', '', ''),
(18, 'BULB', '42000', '/bg.jpg', 'This is a new model dell laptop...', 'Chose Your Laptop', '', '2021-08-31 17:08:37', 'Dell', 'warning', 'secondary', '50', '8', 'success', 'Available', '1', 'DINNER', '', '', '', ''),
(19, 'Lenovo1', '26999', '/bg.jpg', 'this is a new model lenovo phone...', 'Chose Your Smart Phone', '', '2021-08-31 17:08:51', 'Farhad Foysal', 'info', 'warning', '30', '49+', 'success', 'Available', '1', 'DINNER', '', '', '', ''),
(20, 'Galaxy Tab A2016', '15000', '/bg.jpg', 'This is a new model samsung galaxy phone...', 'Chose Your Smart Phone', '', '2021-08-31 17:09:03', 'Farhad Foysal', 'success', 'secondary', '20', '29', 'danger', 'Not Available', '1', 'DINNER', '', '', '', ''),
(21, 'Dell Laptop ', '42000', '/bg.jpg', 'This is a new model dell laptop...', 'Chose Your Laptop', '', '2021-08-31 17:09:06', 'Dell', 'warning', 'dark', '50', '8', 'success', 'Available', '1', 'AFFTERNOON', '', '', '', ''),
(22, 'BULB', '42000', '/bg.jpg', 'This is a new model dell laptop...', 'Chose Your Laptop', '', '2021-08-31 17:09:09', 'Dell', 'warning', 'light', '50', '8', 'success', 'Available', '1', 'AFFTERNOON', '', '', '', ''),
(23, 'BULB', '42000', '/bg.jpg', 'This is a new model dell laptop...', 'Chose Your Laptop', '', '2021-08-31 17:09:28', 'Dell', 'warning', 'light', '50', '8', 'success', 'Available', '1', 'AFFTERNOON', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `std_attendance`
--

CREATE TABLE `std_attendance` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `std_id` varchar(255) NOT NULL,
  `std_name` varchar(255) NOT NULL,
  `class_code` varchar(255) NOT NULL,
  `attendance` varchar(2) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `mentor_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `std_mark_distribution`
--

CREATE TABLE `std_mark_distribution` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `ex_code` varchar(255) NOT NULL,
  `class_code` varchar(255) NOT NULL,
  `marks` varchar(255) NOT NULL,
  `mcq` varchar(255) NOT NULL,
  `5h` varchar(255) NOT NULL,
  `5l` varchar(255) NOT NULL,
  `4h` varchar(255) NOT NULL,
  `4l` varchar(255) NOT NULL,
  `3_5h` varchar(255) NOT NULL,
  `3_5l` varchar(255) NOT NULL,
  `3h` varchar(255) NOT NULL,
  `3l` varchar(255) NOT NULL,
  `2h` varchar(255) NOT NULL,
  `2l` varchar(255) NOT NULL,
  `1h` varchar(255) NOT NULL,
  `1l` varchar(255) NOT NULL,
  `active` varchar(2) NOT NULL,
  `sub_code` varchar(255) NOT NULL,
  `sub_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_request_post`
--

CREATE TABLE `student_request_post` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `sub` varchar(255) NOT NULL,
  `status` enum('Available','Pending','Not-available','Confirm','Hide') NOT NULL,
  `phone` varchar(14) NOT NULL,
  `address` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `post_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_result`
--

CREATE TABLE `student_result` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `std_id` varchar(255) NOT NULL,
  `std_name` varchar(255) NOT NULL,
  `class_code` varchar(255) NOT NULL,
  `ex_code` varchar(255) NOT NULL,
  `std_phone` varchar(255) NOT NULL,
  `sum_gp` varchar(255) NOT NULL,
  `gpa` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `sum_sub_num` varchar(255) NOT NULL,
  `show_result` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_result`
--

INSERT INTO `student_result` (`id`, `unique_id`, `std_id`, `std_name`, `class_code`, `ex_code`, `std_phone`, `sum_gp`, `gpa`, `position`, `dob`, `sum_sub_num`, `show_result`) VALUES
(1, '837706146', '83770614601690175881', 'Farhad Foysal', '83770614620220001', '', '01690175881', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_soes`
--

CREATE TABLE `student_soes` (
  `student_id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `reg_id` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_address` tinytext NOT NULL,
  `student_email_id` varchar(255) NOT NULL,
  `student_password` varchar(100) NOT NULL,
  `student_gender` varchar(30) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `education1` varchar(255) NOT NULL,
  `education2` varchar(255) NOT NULL,
  `education3` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `iq` varchar(255) NOT NULL,
  `student_dob` date NOT NULL,
  `pic` varchar(255) NOT NULL,
  `student_image` varchar(255) NOT NULL,
  `student_status` enum('Enable','Disable') NOT NULL,
  `student_email_verification_code` varchar(100) NOT NULL,
  `student_email_verified` enum('No','Yes') NOT NULL,
  `student_added_by` varchar(255) NOT NULL,
  `student_added_on` datetime NOT NULL,
  `actype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `student_soes`
--

INSERT INTO `student_soes` (`student_id`, `unique_id`, `reg_id`, `username`, `password`, `email`, `student_name`, `student_address`, `student_email_id`, `student_password`, `student_gender`, `gender`, `education1`, `education2`, `education3`, `address`, `msg`, `tel`, `iq`, `student_dob`, `pic`, `student_image`, `student_status`, `student_email_verification_code`, `student_email_verified`, `student_added_by`, `student_added_on`, `actype`) VALUES
(1, '', 'MF-GD-0000001', 'admin', '369725', 'mff585855075@gmail.com', 'farhad', 'ilslampur', 'mff585855075@gmail.com', '369725', 'Male', '', '', '', '', '', '', '', '', '0000-00-00', '', '', 'Enable', '', 'Yes', '', '0000-00-00 00:00:00', ''),
(2, '', 'MF-GD-0000002', 'mffoysal', '369725', 'mff585855075@gmail.com', 'farhad foysal', 'ilslampur', 'mff585855075@gmail.com', '369725', 'Male', 'gdmf ', 'ssc', 'hsc', '', '', 'farhad', '01585855075', '65', '0000-00-00', 'Banner_design01', 'images/banner_design-01.png', 'Enable', '', 'Yes', '', '0000-00-00 00:00:00', ''),
(180, '837706146', 'User-F-0000002', '01873835887', '3697', 'User-F-0000002-email update later', 'mffoysal', 'কক্স বাজার', '', '3697', '', '', '', '', '', 'ইসলামপুর-০১', 'ঈঁদ্গাও', '01873835887', '', '0000-00-00', '', '', 'Enable', '', 'Yes', '', '0000-00-00 00:00:00', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `student_to_class_soes`
--

CREATE TABLE `student_to_class_soes` (
  `student_to_class_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_roll_no` varchar(30) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `student_to_class_soes`
--

INSERT INTO `student_to_class_soes` (`student_to_class_id`, `class_id`, `student_id`, `student_roll_no`, `added_on`) VALUES
(2, 1, 158, '1', '2021-08-09 15:23:43'),
(5, 2, 180, '1', '2021-09-23 17:44:13');

-- --------------------------------------------------------

--
-- Table structure for table `subject_soes`
--

CREATE TABLE `subject_soes` (
  `subject_id` int(11) NOT NULL,
  `subject_name` varchar(250) NOT NULL,
  `subject_status` enum('Enable','Disable') NOT NULL,
  `subject_created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `subject_soes`
--

INSERT INTO `subject_soes` (`subject_id`, `subject_name`, `subject_status`, `subject_created_on`) VALUES
(1, 'gd', 'Enable', '2021-07-19 15:17:18'),
(2, 'FArhad1', 'Enable', '2021-08-10 16:25:16');

-- --------------------------------------------------------

--
-- Table structure for table `subject_to_class_soes`
--

CREATE TABLE `subject_to_class_soes` (
  `subject_to_class_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `subject_to_class_soes`
--

INSERT INTO `subject_to_class_soes` (`subject_to_class_id`, `class_id`, `subject_id`, `added_on`) VALUES
(4, 2, 2, '2021-09-23 17:47:22');

-- --------------------------------------------------------

--
-- Table structure for table `subject_wise_exam_detail`
--

CREATE TABLE `subject_wise_exam_detail` (
  `exam_subject_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `subject_total_question` int(5) NOT NULL,
  `marks_per_right_answer` varchar(30) NOT NULL,
  `marks_per_wrong_answer` varchar(30) NOT NULL,
  `subject_exam_datetime` datetime NOT NULL,
  `subject_exam_status` enum('Pending','Started','Completed') NOT NULL,
  `subject_exam_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `subject_wise_exam_detail`
--

INSERT INTO `subject_wise_exam_detail` (`exam_subject_id`, `exam_id`, `subject_id`, `subject_total_question`, `marks_per_right_answer`, `marks_per_wrong_answer`, `subject_exam_datetime`, `subject_exam_status`, `subject_exam_code`) VALUES
(7, 6, 2, 5, '1', '', '2021-09-23 17:55:00', 'Completed', 'e554850ebb56a02eceeb085b70ac3dac');

-- --------------------------------------------------------

--
-- Table structure for table `tutor`
--

CREATE TABLE `tutor` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `sub` varchar(255) NOT NULL,
  `status` enum('Available','Pending','Not-available','Confirm','Hide') NOT NULL,
  `post_id` varchar(255) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `address` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `like_count` int(255) NOT NULL DEFAULT 0,
  `dislike_count` int(255) NOT NULL DEFAULT 0,
  `love_count` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tutor`
--

INSERT INTO `tutor` (`id`, `unique_id`, `class`, `sub`, `status`, `post_id`, `phone`, `address`, `img`, `like_count`, `dislike_count`, `love_count`) VALUES
(11, '787579833', 'Xii', 'ICT', 'Pending', '20D0E3', '01770627875', 'Islqmpur, Coxsbaar', '1632324377USER_SCOPED_TEMP_DATA_orca-image--1532542978.jpeg', 5, 97, 40),
(15, '837706146', 'class 10 (any medium)', 'all subject', 'Confirm', '658502', '01873835887', 'Islampur, Natun office, Coxs', '', 0, 0, 0),
(16, '787579835', 'class 8 (any medium)', 'english', 'Confirm', 'DBD5B0', '01690175881', 'islampur', '', 0, 0, 0),
(17, '1213154382', 'class 10 (any medium)', 'all subject', 'Available', '52E796', '00971558249072', 'Islampur, Natun office, Coxs', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tutor_request`
--

CREATE TABLE `tutor_request` (
  `id` int(11) NOT NULL,
  `std_id` varchar(255) NOT NULL,
  `post_id` varchar(255) NOT NULL,
  `tutor_id` varchar(255) NOT NULL,
  `status` enum('Available','Pending','Not-avail','Confirm') NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tutor_request`
--

INSERT INTO `tutor_request` (`id`, `std_id`, `post_id`, `tutor_id`, `status`, `time`) VALUES
(32, '787579835', '658502', '837706146', 'Confirm', '2021-11-26 10:33:55');

-- --------------------------------------------------------

--
-- Table structure for table `unions`
--

CREATE TABLE `unions` (
  `id` int(2) UNSIGNED NOT NULL,
  `upazila_id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `bn_name` varchar(50) NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `unions`
--

INSERT INTO `unions` (`id`, `upazila_id`, `name`, `bn_name`, `lat`, `lon`) VALUES
(1, 226, NULL, 'আমলাব', 0, 0),
(2, 226, NULL, 'বাজনাব', 0, 0),
(3, 226, NULL, 'বেলাব', 0, 0),
(4, 226, NULL, 'বিন্নাবাইদ', 0, 0),
(5, 226, NULL, 'চরউজিলাব', 0, 0),
(6, 226, NULL, 'নারায়নপুর', 0, 0),
(7, 226, NULL, 'সল্লাবাদ', 0, 0),
(8, 226, NULL, 'পাটুলী', 0, 0),
(9, 226, NULL, 'দেয়ারা', 0, 0),
(10, 227, NULL, 'বড়চাপা', 0, 0),
(11, 227, NULL, 'চালাকচর', 0, 0),
(12, 227, NULL, 'চরমান্দালিয়া', 0, 0),
(13, 227, NULL, 'একদুয়ারিয়া', 0, 0),
(14, 227, NULL, 'গোতাশিয়া', 0, 0),
(15, 227, NULL, 'কাচিকাটা', 0, 0),
(16, 227, NULL, 'খিদিরপুর', 0, 0),
(17, 227, NULL, 'শুকুন্দি', 0, 0),
(18, 227, NULL, 'দৌলতপুর', 0, 0),
(19, 227, NULL, 'কৃষ্ণপুর ইউনিয়ন', 0, 0),
(20, 227, NULL, 'লেবুতলা', 0, 0),
(21, 227, NULL, 'চন্দনবাড়ী', 0, 0),
(22, 228, NULL, 'আলোকবালী', 0, 0),
(23, 228, NULL, 'চরদিঘলদী', 0, 0),
(24, 228, NULL, 'করিমপুর', 0, 0),
(25, 228, NULL, 'কাঠালিয়া', 0, 0),
(26, 228, NULL, 'নূরালাপুর', 0, 0),
(27, 228, NULL, 'মহিষাশুড়া', 0, 0),
(28, 228, NULL, 'মেহেড়পাড়া', 0, 0),
(29, 228, NULL, 'নজরপুর', 0, 0),
(30, 228, NULL, 'পাইকারচর', 0, 0),
(31, 228, NULL, 'পাঁচদোনা', 0, 0),
(32, 228, NULL, 'শিলমান্দী', 0, 0),
(33, 228, NULL, 'আমদিয়া ২', 0, 0),
(34, 229, NULL, 'ডাংঙ্গা', 0, 0),
(35, 229, NULL, 'চরসিন্দুর', 0, 0),
(36, 229, NULL, 'জিনারদী', 0, 0),
(37, 229, NULL, 'গজারিয়া', 0, 0),
(38, 230, NULL, 'চানপুর', 0, 0),
(39, 230, NULL, 'অলিপুরা', 0, 0),
(40, 230, NULL, 'আমিরগঞ্জ', 0, 0),
(41, 230, NULL, 'আদিয়াবাদ', 0, 0),
(42, 230, NULL, 'বাঁশগাড়ী', 0, 0),
(43, 230, NULL, 'চান্দেরকান্দি', 0, 0),
(44, 230, NULL, 'চরআড়ালিয়া', 0, 0),
(45, 230, NULL, 'চরমধুয়া', 0, 0),
(46, 230, NULL, 'চরসুবুদ্দি', 0, 0),
(47, 230, NULL, 'হাইরমারা', 0, 0),
(48, 230, NULL, 'মহেষপুর', 0, 0),
(49, 230, NULL, 'মির্জানগর', 0, 0),
(50, 230, NULL, 'মির্জারচর', 0, 0),
(51, 230, NULL, 'নিলক্ষ্যা', 0, 0),
(52, 230, NULL, 'পলাশতলী', 0, 0),
(53, 230, NULL, 'পাড়াতলী', 0, 0),
(54, 230, NULL, 'শ্রীনগর', 0, 0),
(55, 230, NULL, 'রায়পুরা', 0, 0),
(56, 230, NULL, 'মুছাপুর', 0, 0),
(57, 230, NULL, 'উত্তর বাখরনগর', 0, 0),
(58, 230, NULL, 'মরজাল', 0, 0),
(59, 231, NULL, 'দুলালপুর', 0, 0),
(60, 231, NULL, 'জয়নগর', 0, 0),
(61, 231, NULL, 'সাধারচর', 0, 0),
(62, 231, NULL, 'মাছিমপুর', 0, 0),
(63, 231, NULL, 'চক্রধা', 0, 0),
(64, 231, NULL, 'যোশর', 0, 0),
(65, 231, NULL, 'বাঘাব', 0, 0),
(66, 231, NULL, 'আয়ুবপুর', 0, 0),
(67, 231, NULL, 'পুটিয়া', 0, 0),
(68, 163, NULL, 'বাহাদুরশাদী', 0, 0),
(69, 163, NULL, 'বক্তারপুর', 0, 0),
(70, 163, NULL, 'জামালপুর', 0, 0),
(71, 163, NULL, 'জাঙ্গালিয়া', 0, 0),
(72, 163, NULL, 'মোক্তারপুর', 0, 0),
(73, 163, NULL, 'নাগরী', 0, 0),
(74, 163, NULL, 'তুমুলিয়া', 0, 0),
(75, 160, NULL, 'আটাবহ', 0, 0),
(76, 160, NULL, 'বোয়ালী', 0, 0),
(77, 160, NULL, 'চাপাইর', 0, 0),
(78, 160, NULL, 'ঢালজোড়া', 0, 0),
(79, 160, NULL, 'ফুলবাড়ীয়া', 0, 0),
(80, 160, NULL, 'মধ্যপাড়া', 0, 0),
(81, 160, NULL, 'মৌচাক', 0, 0),
(82, 160, NULL, 'সূত্রাপুর', 0, 0),
(83, 160, NULL, 'শ্রীফলতলী', 0, 0),
(84, 161, NULL, 'বারিষাব', 0, 0),
(85, 161, NULL, 'ঘাগটিয়া', 0, 0),
(86, 161, NULL, 'কাপাসিয়া', 0, 0),
(87, 161, NULL, 'চাঁদপুর', 0, 0),
(88, 161, NULL, 'তরগাঁও', 0, 0),
(89, 161, NULL, 'কড়িহাতা', 0, 0),
(90, 161, NULL, 'টোক', 0, 0),
(91, 161, NULL, 'সিংহশ্রী', 0, 0),
(92, 161, NULL, 'দূর্গাপুর', 0, 0),
(93, 161, NULL, 'সনমানিয়া', 0, 0),
(94, 161, NULL, 'রায়েদ', 0, 0),
(95, 159, NULL, 'বাড়ীয়া', 0, 0),
(96, 159, NULL, 'বাসন', 0, 0),
(97, 159, NULL, 'গাছা', 0, 0),
(98, 159, NULL, 'কাশিমপুর', 0, 0),
(99, 159, NULL, 'কাউলতিয়া', 0, 0),
(100, 159, NULL, 'কোনাবাড়ী', 0, 0),
(101, 159, NULL, 'মির্জাপুর', 0, 0),
(102, 159, NULL, 'পূবাইল', 0, 0),
(103, 162, NULL, 'বরমী', 0, 0),
(104, 162, NULL, 'গাজীপুর', 0, 0),
(105, 162, NULL, 'গোসিংগা', 0, 0),
(106, 162, NULL, 'মাওনা', 0, 0),
(107, 162, NULL, 'কাওরাইদ', 0, 0),
(108, 162, NULL, 'প্রহলাদপুর', 0, 0),
(109, 162, NULL, 'রাজাবাড়ী', 0, 0),
(110, 162, NULL, 'তেলিহাটী', 0, 0),
(111, 247, NULL, 'বিনোদপুর', 0, 0),
(112, 247, NULL, 'তুলাসার', 0, 0),
(113, 247, NULL, 'পালং', 0, 0),
(114, 247, NULL, 'ডোমসার', 0, 0),
(115, 247, NULL, 'রুদ্রকর', 0, 0),
(116, 247, NULL, 'আংগারিয়া', 0, 0),
(117, 247, NULL, 'চিতলয়া', 0, 0),
(118, 247, NULL, 'মাহমুদপুর', 0, 0),
(119, 247, NULL, 'চিকন্দি', 0, 0),
(120, 247, NULL, 'চন্দ্রপুর', 0, 0),
(121, 247, NULL, 'শৌলপাড়া', 0, 0),
(122, 249, NULL, 'কেদারপুর', 0, 0),
(123, 249, NULL, 'ডিংগামানিক', 0, 0),
(124, 249, NULL, 'ঘড়িষার', 0, 0),
(125, 249, NULL, 'নওপাড়া', 0, 0),
(126, 249, NULL, 'মোত্তারেরচর', 0, 0),
(127, 249, NULL, 'চরআত্রা', 0, 0),
(128, 249, NULL, 'রাজনগর', 0, 0),
(129, 249, NULL, 'জপসা', 0, 0),
(130, 249, NULL, 'ভোজেশ্বর', 0, 0),
(131, 249, NULL, 'ফতেজংপুর', 0, 0),
(132, 249, NULL, 'বিঝারি', 0, 0),
(133, 249, NULL, 'ভূমখাড়া', 0, 0),
(134, 249, NULL, 'নশাসন', 0, 0),
(135, 250, NULL, 'জাজিরা সদর', 0, 0),
(136, 250, NULL, 'মূলনা', 0, 0),
(137, 250, NULL, 'বড়কান্দি', 0, 0),
(138, 250, NULL, 'বিলাসপুর', 0, 0),
(139, 250, NULL, 'কুন্ডেরচর', 0, 0),
(140, 250, NULL, 'পালেরচর', 0, 0),
(141, 250, NULL, 'পুর্ব নাওডোবা', 0, 0),
(142, 250, NULL, 'নাওডোবা', 0, 0),
(143, 250, NULL, 'সেনেরচর', 0, 0),
(144, 250, NULL, 'বি. কে. নগর', 0, 0),
(145, 250, NULL, 'বড়গোপালপুর', 0, 0),
(146, 250, NULL, 'জয়নগর', 0, 0),
(147, 252, NULL, 'নাগের পাড়া', 0, 0),
(148, 252, NULL, 'আলাওলপুর', 0, 0),
(149, 252, NULL, 'কোদালপুর', 0, 0),
(150, 252, NULL, 'গোসাইরহাট', 0, 0),
(151, 252, NULL, 'ইদিলপুর', 0, 0),
(152, 252, NULL, 'নলমুড়ি', 0, 0),
(153, 252, NULL, 'সামন্তসার', 0, 0),
(154, 252, NULL, 'কুচাইপট্টি', 0, 0),
(155, 251, NULL, 'রামভদ্রপুর', 0, 0),
(156, 251, NULL, 'মহিষার', 0, 0),
(157, 251, NULL, 'ছয়গাঁও', 0, 0),
(158, 251, NULL, 'নারায়নপুর', 0, 0),
(159, 251, NULL, 'ডি.এম খালি', 0, 0),
(160, 251, NULL, 'চরকুমারিয়া', 0, 0),
(161, 251, NULL, 'সখিপুর', 0, 0),
(162, 251, NULL, 'কাচিকাঁটা', 0, 0),
(163, 251, NULL, 'উত্তর তারাবুনিয়া', 0, 0),
(164, 251, NULL, 'চরভাগা', 0, 0),
(165, 251, NULL, 'আরশিনগর', 0, 0),
(166, 251, NULL, 'দক্ষিন তারাবুনিয়া', 0, 0),
(167, 251, NULL, 'চরসেনসাস', 0, 0),
(168, 248, NULL, 'শিধলকুড়া', 0, 0),
(169, 248, NULL, 'কনেস্বর', 0, 0),
(170, 248, NULL, 'পুর্ব ডামুড্যা', 0, 0),
(171, 248, NULL, 'ইসলামপুর', 0, 0),
(172, 248, NULL, 'ধানকাটি', 0, 0),
(173, 248, NULL, 'সিড্যা', 0, 0),
(174, 248, NULL, 'দারুল আমান', 0, 0),
(175, 220, NULL, 'সাতগ্রাম', 0, 0),
(176, 220, NULL, 'দুপ্তারা', 0, 0),
(177, 220, NULL, 'ব্রা‏হ্মন্দী', 0, 0),
(178, 220, NULL, 'ফতেপুর', 0, 0),
(179, 220, NULL, 'বিশনন্দী', 0, 0),
(180, 220, NULL, 'মাহমুদপুর', 0, 0),
(181, 220, NULL, 'হাইজাদী', 0, 0),
(182, 220, NULL, 'উচিৎপুরা', 0, 0),
(183, 220, NULL, 'কালাপাহাড়িয়া', 0, 0),
(184, 220, NULL, 'খাগকান্দা', 0, 0),
(185, 223, NULL, 'আলিরটেক', 0, 0),
(186, 223, NULL, 'কুতুবপুর', 0, 0),
(187, 223, NULL, 'বক্তাবলী', 0, 0),
(188, 223, NULL, 'এনায়েত নগর', 0, 0),
(189, 224, NULL, 'মুড়াপাড়া', 0, 0),
(190, 224, NULL, 'ভূলতা', 0, 0),
(191, 224, NULL, 'গোলাকান্দাইল', 0, 0),
(192, 224, NULL, 'দাউদপুর', 0, 0),
(193, 224, NULL, 'রূপগঞ্জ', 0, 0),
(194, 224, NULL, 'কায়েতপাড়া', 0, 0),
(195, 224, NULL, 'ভোলাব', 0, 0),
(196, 221, NULL, 'পিরোজপুর ইউনিয়ন', 0, 0),
(197, 221, NULL, 'শম্ভুপুরা ইউনিয়ন', 0, 0),
(198, 221, NULL, 'মোগরাপাড়া ইউনিয়ন', 0, 0),
(199, 221, NULL, 'বৈদ্যেরবাজার ইউনিয়ন', 0, 0),
(200, 221, NULL, 'বারদী ইউনিয়ন', 0, 0),
(201, 221, NULL, 'নোয়াগাঁও ইউনিয়ন', 0, 0),
(202, 221, NULL, 'জামপুর ইউনিয়ন', 0, 0),
(203, 221, NULL, 'সাদীপুর ইউনিয়ন', 0, 0),
(204, 221, NULL, 'সনমান্দি ইউনিয়ন', 0, 0),
(205, 221, NULL, 'কাচপুর ইউনিয়ন', 0, 0),
(206, 260, NULL, 'বাসাইল ইউনিয়ন', 0, 0),
(207, 260, NULL, 'কাঞ্চনপুর ইউনিয়ন', 0, 0),
(208, 260, NULL, 'হাবলা ইউনিয়ন', 0, 0),
(209, 260, NULL, 'কাশিল ইউনিয়ন', 0, 0),
(210, 260, NULL, 'ফুলকি ইউনিয়ন', 0, 0),
(211, 260, NULL, 'কাউলজানী ইউনিয়ন', 0, 0),
(212, 268, NULL, 'অর্জুনা ইউনিয়ন', 0, 0),
(213, 268, NULL, 'গাবসারা ইউনিয়ন', 0, 0),
(214, 268, NULL, 'ফলদা ইউনিয়ন', 0, 0),
(215, 268, NULL, 'গোবিন্দাসী ইউনিয়ন', 0, 0),
(216, 268, NULL, 'আলোয়া ইউনিয়ন', 0, 0),
(217, 268, NULL, 'নিকরাইল ইউনিয়ন', 0, 0),
(218, 267, NULL, 'দেউলী ইউনিয়ন', 0, 0),
(219, 267, NULL, 'লাউহাটি ইউনিয়ন', 0, 0),
(220, 267, NULL, 'পাথরাইল ইউনিয়ন', 0, 0),
(221, 267, NULL, 'দেলদুয়ার ইউনিয়ন', 0, 0),
(222, 267, NULL, 'ফাজিলহাটি ইউনিয়ন', 0, 0),
(223, 267, NULL, 'এলাসিন ইউনিয়ন', 0, 0),
(224, 267, NULL, 'আটিয়া ইউনিয়ন', 0, 0),
(225, 267, NULL, 'ডুবাইল ইউনিয়ন', 0, 0),
(226, 262, NULL, 'দেউলাবাড়ী ইউনিয়ন', 0, 0),
(227, 262, NULL, 'ঘাটাইল ইউনিয়ন', 0, 0),
(228, 262, NULL, 'জামুরিয়া ইউনিয়ন', 0, 0),
(229, 262, NULL, 'লোকেরপাড়া ইউনিয়ন', 0, 0),
(230, 262, NULL, 'আনেহলা ইউনিয়ন', 0, 0),
(231, 262, NULL, 'দিঘলকান্দি ইউনিয়ন', 0, 0),
(232, 262, NULL, 'দিগড় ইউনিয়ন', 0, 0),
(233, 262, NULL, 'দেওপাড়া ইউনিয়ন', 0, 0),
(234, 262, NULL, 'সন্ধানপুর ইউনিয়ন', 0, 0),
(235, 262, NULL, 'রসুলপুর ইউনিয়ন', 0, 0),
(236, 262, NULL, 'ধলাপাড়া ইউনিয়ন', 0, 0),
(237, 266, NULL, 'হাদিরা ইউনিয়ন', 0, 0),
(238, 266, NULL, 'ঝাওয়াইল ইউনিয়ন', 0, 0),
(239, 266, NULL, 'নগদাশিমলা ইউনিয়ন', 0, 0),
(240, 266, NULL, 'ধোপাকান্দি ইউনিয়ন', 0, 0),
(241, 266, NULL, 'আলমনগর ইউনিয়ন', 0, 0),
(242, 266, NULL, 'হেমনগর ইউনিয়ন', 0, 0),
(243, 266, NULL, 'মির্জাপুর ইউনিয়ন', 0, 0),
(244, 261, NULL, 'আলোকদিয়া ইউনিয়ন', 0, 0),
(245, 261, NULL, 'আউশনারা ইউনিয়ন', 0, 0),
(246, 261, NULL, 'অরণখোলা ইউনিয়ন', 0, 0),
(247, 261, NULL, 'শোলাকুড়ি ইউনিয়ন', 0, 0),
(248, 261, NULL, 'গোলাবাড়ী ইউনিয়ন', 0, 0),
(249, 261, NULL, 'মির্জাবাড়ী ইউনিয়ন', 0, 0),
(250, 265, NULL, 'মহেড়া ইউনিয়ন', 0, 0),
(251, 265, NULL, 'জামুর্কী ইউনিয়ন', 0, 0),
(252, 265, NULL, 'ফতেপুর ইউনিয়ন', 0, 0),
(253, 265, NULL, 'বানাইল ইউনিয়ন', 0, 0),
(254, 265, NULL, 'আনাইতারা ইউনিয়ন', 0, 0),
(255, 265, NULL, 'ওয়ার্শী ইউনিয়ন', 0, 0),
(256, 265, NULL, 'ভাতগ্রাম ইউনিয়ন', 0, 0),
(257, 265, NULL, 'বহুরিয়া ইউনিয়ন', 0, 0),
(258, 265, NULL, 'গোড়াই ইউনিয়ন', 0, 0),
(259, 265, NULL, 'আজগানা ইউনিয়ন', 0, 0),
(260, 265, NULL, 'তরফপুর ইউনিয়ন', 0, 0),
(261, 265, NULL, 'বাঁশতৈল ইউনিয়ন', 0, 0),
(262, 265, NULL, 'ভাওড়া ইউনিয়ন', 0, 0),
(263, 265, NULL, 'লতিফপুর ইউনিয়ন', 0, 0),
(264, 264, NULL, 'ভারড়া ইউনিয়ন', 0, 0),
(265, 264, NULL, 'সহবতপুর ইউনিয়ন', 0, 0),
(266, 264, NULL, 'গয়হাটা ইউনিয়ন', 0, 0),
(267, 264, NULL, 'সলিমাবাদ ইউনিয়ন', 0, 0),
(268, 264, NULL, 'নাগরপুর ইউনিয়ন', 0, 0),
(269, 264, NULL, 'মামুদনগর ইউনিয়ন', 0, 0),
(270, 264, NULL, 'মোকনা ইউনিয়ন', 0, 0),
(271, 264, NULL, 'পাকুটিয়া ইউনিয়ন', 0, 0),
(272, 264, NULL, 'বেকরা আটগ্রাম ইউনিয়ন', 0, 0),
(273, 264, NULL, 'ধুবড়িয়া ইউনিয়ন', 0, 0),
(274, 264, NULL, 'ভাদ্রা ইউনিয়ন', 0, 0),
(275, 264, NULL, 'দপ্তিয়র ইউনিয়ন', 0, 0),
(276, 259, NULL, 'কাকড়াজান ইউনিয়ন', 0, 0),
(277, 259, NULL, 'গজারিয়া ইউনিয়ন', 0, 0),
(278, 259, NULL, 'যাদবপুর ইউনিয়ন', 0, 0),
(279, 259, NULL, 'হাতীবান্ধা ইউনিয়ন', 0, 0),
(280, 259, NULL, 'কালিয়া ইউনিয়ন', 0, 0),
(281, 259, NULL, 'দরিয়াপুর ইউনিয়ন', 0, 0),
(282, 259, NULL, 'কালমেঘা ইউনিয়ন', 0, 0),
(283, 259, NULL, 'বহেড়াতৈল ইউনিয়ন', 0, 0),
(284, 258, NULL, 'মগড়া ইউনিয়ন', 0, 0),
(285, 258, NULL, 'গালা ইউনিয়ন', 0, 0),
(286, 258, NULL, 'ঘারিন্দা ইউনিয়ন', 0, 0),
(287, 258, NULL, 'করটিয়া ইউনিয়ন', 0, 0),
(288, 258, NULL, 'ছিলিমপুর ইউনিয়ন', 0, 0),
(289, 258, NULL, 'পোড়াবাড়ী ইউনিয়ন', 0, 0),
(290, 258, NULL, 'দাইন্যা ইউনিয়ন', 0, 0),
(291, 258, NULL, 'বাঘিল ইউনিয়ন', 0, 0),
(292, 258, NULL, 'কাকুয়া ইউনিয়ন', 0, 0),
(293, 258, NULL, 'হুগড়া ইউনিয়ন', 0, 0),
(294, 258, NULL, 'কাতুলী ইউনিয়ন', 0, 0),
(295, 258, NULL, 'মাহমুদনগর ইউনিয়ন', 0, 0),
(296, 263, NULL, 'দুর্গাপুর ইউনিয়ন', 0, 0),
(297, 263, NULL, 'বীরবাসিন্দা ইউনিয়ন', 0, 0),
(298, 263, NULL, 'নারান্দিয়া ইউনিয়ন', 0, 0),
(299, 263, NULL, 'সহদেবপুর ইউনিয়ন', 0, 0),
(300, 263, NULL, 'কোকডহরা ইউনিয়ন', 0, 0),
(301, 263, NULL, 'বল্লা ইউনিয়ন', 0, 0),
(302, 263, NULL, 'সল্লা ইউনিয়ন', 0, 0),
(303, 263, NULL, 'নাগবাড়ী ইউনিয়ন', 0, 0),
(304, 263, NULL, 'বাংড়া ইউনিয়ন', 0, 0),
(305, 263, NULL, 'পাইকড়া ইউনিয়ন', 0, 0),
(306, 263, NULL, 'দশকিয়া ইউনিয়ন', 0, 0),
(307, 263, NULL, 'পারখী ইউনিয়ন', 0, 0),
(308, 263, NULL, 'গোহালিয়াবাড়ী ইউনিয়ন', 0, 0),
(309, 269, NULL, 'ধোপাখালী ইউনিয়ন', 0, 0),
(310, 269, NULL, 'পাইস্কা ইউনিয়ন', 0, 0),
(311, 269, NULL, 'মুশুদ্দি ইউনিয়ন', 0, 0),
(312, 269, NULL, 'বলিভদ্র ইউনিয়ন', 0, 0),
(313, 269, NULL, 'বীরতারা ইউনিয়ন', 0, 0),
(314, 269, NULL, 'বানিয়াজান ইউনিয়ন', 0, 0),
(315, 269, NULL, 'যদুনাথপুর ইউনিয়ন', 0, 0),
(316, 182, NULL, 'চৌগাংগা', 0, 0),
(317, 182, NULL, 'জয়সিদ্ধি', 0, 0),
(318, 182, NULL, 'এলংজুরী', 0, 0),
(319, 182, NULL, 'বাদলা', 0, 0),
(320, 182, NULL, 'বড়িবাড়ি', 0, 0),
(321, 182, NULL, 'ইটনা ইউনিয়ন', 0, 0),
(322, 182, NULL, 'মৃগা', 0, 0),
(323, 182, NULL, 'ধনপুর', 0, 0),
(324, 182, NULL, 'রায়টুটি', 0, 0),
(325, 184, NULL, 'বনগ্রাম', 0, 0),
(326, 184, NULL, 'সহশ্রাম ধুলদিয়া', 0, 0),
(327, 184, NULL, 'কারগাঁও', 0, 0),
(328, 184, NULL, 'চান্দপুর', 0, 0),
(329, 184, NULL, 'মুমুরদিয়া', 0, 0),
(330, 184, NULL, 'আচমিতা', 0, 0),
(331, 184, NULL, 'মসূয়া', 0, 0),
(332, 184, NULL, 'লোহাজুরী', 0, 0),
(333, 184, NULL, 'জালালপুর', 0, 0),
(334, 180, NULL, 'সাদেকপুর', 0, 0),
(335, 180, NULL, 'আগানগর', 0, 0),
(336, 180, NULL, 'শিমুলকান্দি', 0, 0),
(337, 180, NULL, 'গজারিয়া', 0, 0),
(338, 180, NULL, 'কালিকা প্রসাদ', 0, 0),
(339, 180, NULL, 'শ্রীনগর', 0, 0),
(340, 180, NULL, 'শিবপুর', 0, 0),
(341, 190, NULL, 'তালজাঙ্গা', 0, 0),
(342, 190, NULL, 'রাউতি', 0, 0),
(343, 190, NULL, 'ধলা', 0, 0),
(344, 190, NULL, 'জাওয়ার', 0, 0),
(345, 190, NULL, 'দামিহা', 0, 0),
(346, 190, NULL, 'দিগদাইর', 0, 0),
(347, 190, NULL, 'তাড়াইল-সাচাইল', 0, 0),
(348, 181, NULL, 'জিনারী', 0, 0),
(349, 181, NULL, 'গোবিন্দপুর', 0, 0),
(350, 181, NULL, 'সিদলা', 0, 0),
(351, 181, NULL, 'আড়াইবাড়িয়া', 0, 0),
(352, 181, NULL, 'সাহেদল', 0, 0),
(353, 181, NULL, 'পুমদি', 0, 0),
(354, 189, NULL, 'জাঙ্গালিয়া', 0, 0),
(355, 189, NULL, 'হোসেনদি', 0, 0),
(356, 189, NULL, 'নারান্দি', 0, 0),
(357, 189, NULL, 'সুখিয়া', 0, 0),
(358, 189, NULL, 'পটুয়াভাঙ্গা', 0, 0),
(359, 189, NULL, 'চান্দিপাশা', 0, 0),
(360, 189, NULL, 'চারফারাদি', 0, 0),
(361, 189, NULL, 'বুড়ুদিয়া', 0, 0),
(362, 189, NULL, 'ইজারাসিন্দুর', 0, 0),
(363, 189, NULL, 'পাকন্দিয়া', 0, 0),
(364, 186, NULL, 'রামদী', 0, 0),
(365, 186, NULL, 'উছমানপুর', 0, 0),
(366, 186, NULL, 'ছয়সূতী', 0, 0),
(367, 186, NULL, 'সালুয়া', 0, 0),
(368, 186, NULL, 'গোবরিয়া আব্দুল্লাহপুর', 0, 0),
(369, 186, NULL, 'ফরিদপুর', 0, 0),
(370, 185, NULL, 'রশিদাবাদ', 0, 0),
(371, 185, NULL, 'লতিবাবাদ', 0, 0),
(372, 185, NULL, 'মাইজখাপন', 0, 0),
(373, 185, NULL, 'মহিনন্দ', 0, 0),
(374, 185, NULL, 'যশোদল', 0, 0),
(375, 185, NULL, 'বৌলাই', 0, 0),
(376, 185, NULL, 'বিন্নাটি', 0, 0),
(377, 185, NULL, 'মারিয়া', 0, 0),
(378, 185, NULL, 'চৌদ্দশত', 0, 0),
(379, 185, NULL, 'কর্শাকড়িয়াইল', 0, 0),
(380, 185, NULL, 'দানাপাটুলী', 0, 0),
(381, 183, NULL, 'কাদিরজঙ্গল', 0, 0),
(382, 183, NULL, 'গুজাদিয়া', 0, 0),
(383, 183, NULL, 'কিরাটন ইউনিয়ন', 0, 0),
(384, 183, NULL, 'বারঘড়িয়া', 0, 0),
(385, 183, NULL, 'নিয়ামতপুর', 0, 0),
(386, 183, NULL, 'দেহুন্দা', 0, 0),
(387, 183, NULL, 'সুতারপাড়া', 0, 0),
(388, 183, NULL, 'গুনধর', 0, 0),
(389, 183, NULL, 'জয়কা', 0, 0),
(390, 183, NULL, 'জাফরাবাদ', 0, 0),
(391, 183, NULL, 'নোয়াবাদ', 0, 0),
(392, 179, NULL, 'কৈলাগ', 0, 0),
(393, 179, NULL, 'পিরিজপুর', 0, 0),
(394, 179, NULL, 'গাজীরচর', 0, 0),
(395, 179, NULL, 'হিলচিয়া', 0, 0),
(396, 179, NULL, 'মাইজচর', 0, 0),
(397, 179, NULL, 'হুমাইপর', 0, 0),
(398, 179, NULL, 'হালিমপুর', 0, 0),
(399, 179, NULL, 'সরারচর', 0, 0),
(400, 179, NULL, 'দিলালপুর', 0, 0),
(401, 179, NULL, 'দিঘীরপাড়', 0, 0),
(402, 179, NULL, 'বলিয়ার্দী', 0, 0),
(403, 178, NULL, 'দেওঘর', 0, 0),
(404, 178, NULL, 'কাস্তুল', 0, 0),
(405, 178, NULL, 'অষ্টগ্রাম সদর', 0, 0),
(406, 178, NULL, 'বাঙ্গালপাড়া', 0, 0),
(407, 178, NULL, 'কলমা', 0, 0),
(408, 178, NULL, 'আদমপুর', 0, 0),
(409, 178, NULL, 'খয়েরপুর-আব্দুল্লাপুর', 0, 0),
(410, 178, NULL, 'পূর্ব অষ্টগ্রাম', 0, 0),
(411, 187, NULL, 'গোপদিঘী', 0, 0),
(412, 187, NULL, 'মিঠামইন', 0, 0),
(413, 187, NULL, 'ঢাকী', 0, 0),
(414, 187, NULL, 'ঘাগড়া', 0, 0),
(415, 187, NULL, 'কেওয়ারজোর', 0, 0),
(416, 187, NULL, 'কাটখাল', 0, 0),
(417, 187, NULL, 'বৈরাটি', 0, 0),
(418, 188, NULL, 'ছাতিরচর', 0, 0),
(419, 188, NULL, 'গুরই', 0, 0),
(420, 188, NULL, 'জারইতলা', 0, 0),
(421, 188, NULL, 'নিকলী সদর', 0, 0),
(422, 188, NULL, 'কারপাশা', 0, 0),
(423, 188, NULL, 'দামপাড়া', 0, 0),
(424, 188, NULL, 'সিংপুর', 0, 0),
(425, 199, NULL, 'বাল্লা ইউনিয়ন', 0, 0),
(426, 199, NULL, 'গালা ইউনিয়ন', 0, 0),
(427, 199, NULL, 'চালা ইউনিয়ন', 0, 0),
(428, 199, NULL, 'বলড়া', 0, 0),
(429, 199, NULL, 'হারুকান্দি', 0, 0),
(430, 199, NULL, 'বয়রা', 0, 0),
(431, 199, NULL, 'রামকৃঞ্চপুর', 0, 0),
(432, 199, NULL, 'গোপীনাথপুর', 0, 0),
(433, 199, NULL, 'কাঞ্চনপুর', 0, 0),
(434, 199, NULL, 'লেছড়াগঞ্জ', 0, 0),
(435, 199, NULL, 'সুতালড়ী', 0, 0),
(436, 199, NULL, 'ধূলশুড়া', 0, 0),
(437, 199, NULL, 'আজিমনগর', 0, 0),
(438, 198, NULL, 'বরাইদ', 0, 0),
(439, 198, NULL, 'দিঘুলিয়া', 0, 0),
(440, 198, NULL, 'বালিয়াটি', 0, 0),
(441, 198, NULL, 'দড়গ্রাম', 0, 0),
(442, 198, NULL, 'তিল্লী', 0, 0),
(443, 198, NULL, 'হরগজ', 0, 0),
(444, 198, NULL, 'সাটুরিয়া', 0, 0),
(445, 198, NULL, 'ধানকোড়া', 0, 0),
(446, 198, NULL, 'ফুকুরহাটি', 0, 0),
(447, 195, NULL, 'বেতিলা-মিতরা ইউনিয়ন', 0, 0),
(448, 195, NULL, 'জাগীর ইউনিয়ন', 0, 0),
(449, 195, NULL, 'আটিগ্রাম ইউনিয়ন', 0, 0),
(450, 195, NULL, 'দিঘী ইউনিয়ন', 0, 0),
(451, 195, NULL, 'পুটাইল ইউনিয়ন', 0, 0),
(452, 195, NULL, 'হাটিপাড়া ইউনিয়ন', 0, 0),
(453, 195, NULL, 'ভাড়ারিয়া ইউনিয়ন', 0, 0),
(454, 195, NULL, 'নবগ্রাম ইউনিয়ন', 0, 0),
(455, 195, NULL, 'গড়পাড়া ইউনিয়ন', 0, 0),
(456, 195, NULL, 'কৃঞ্চপুর ইউনিয়ন', 0, 0),
(457, 200, NULL, 'পয়লা ইউনিয়ন', 0, 0),
(458, 200, NULL, 'সিংজুড়ী ইউনিয়ন', 0, 0),
(459, 200, NULL, 'বালিয়াখোড়া ইউনিয়ন', 0, 0),
(460, 200, NULL, 'ঘিওর ইউনিয়ন', 0, 0),
(461, 200, NULL, 'বড়টিয়া ইউনিয়ন', 0, 0),
(462, 200, NULL, 'বানিয়াজুড়ী', 0, 0),
(463, 200, NULL, 'নালী', 0, 0),
(464, 197, NULL, 'তেওতা ইউনিয়ন', 0, 0),
(465, 197, NULL, 'উথলী ইউনিয়ন', 0, 0),
(466, 197, NULL, 'শিবালয় ইউনিয়ন', 0, 0),
(467, 197, NULL, 'উলাইল ইউনিয়ন', 0, 0),
(468, 197, NULL, 'আরুয়া ইউনিয়ন', 0, 0),
(469, 197, NULL, 'মহাদেবপুর', 0, 0),
(470, 197, NULL, 'শিমুলিয়া', 0, 0),
(471, 201, NULL, 'চরকাটারী', 0, 0),
(472, 201, NULL, 'বাচামারা', 0, 0),
(473, 201, NULL, 'বাঘুটিয়া', 0, 0),
(474, 201, NULL, 'জিয়নপুর', 0, 0),
(475, 201, NULL, 'খলশী', 0, 0),
(476, 201, NULL, 'চকমিরপুর', 0, 0),
(477, 201, NULL, 'কলিয়া', 0, 0),
(478, 201, NULL, 'ধামশ্বর', 0, 0),
(479, 196, NULL, 'বায়রা', 0, 0),
(480, 196, NULL, 'তালেবপুর', 0, 0),
(481, 196, NULL, 'সিংগাইর', 0, 0),
(482, 196, NULL, 'বলধারা', 0, 0),
(483, 196, NULL, 'জামশা', 0, 0),
(484, 196, NULL, 'চারিগ্রাম', 0, 0),
(485, 196, NULL, 'শায়েস্তা', 0, 0),
(486, 196, NULL, 'জয়মন্টপ', 0, 0),
(487, 196, NULL, 'ধল্লা', 0, 0),
(488, 196, NULL, 'জার্মিতা', 0, 0),
(489, 196, NULL, 'চান্দহর', 0, 0),
(490, 149, NULL, 'সাভার', 0, 0),
(491, 149, NULL, 'বিরুলিয়া', 0, 0),
(492, 149, NULL, 'ধামসোনা', 0, 0),
(493, 149, NULL, 'শিমুলিয়া', 0, 0),
(494, 149, NULL, 'আশুলিয়া', 0, 0),
(495, 149, NULL, 'ইয়ারপুর', 0, 0),
(496, 149, NULL, 'ভাকুর্তা', 0, 0),
(497, 149, NULL, 'পাথালিয়া', 0, 0),
(498, 149, NULL, 'বনগাঁও', 0, 0),
(499, 149, NULL, 'কাউন্দিয়া', 0, 0),
(500, 149, NULL, 'তেঁতুলঝোড়া', 0, 0),
(501, 149, NULL, 'আমিনবাজার', 0, 0),
(502, 145, NULL, 'চৌহাট ইউনিয়ন', 0, 0),
(503, 145, NULL, 'আমতা ইউনিয়ন', 0, 0),
(504, 145, NULL, 'বালিয়া ইউনিয়ন', 0, 0),
(505, 145, NULL, 'যাদবপুর ইউনিয়ন', 0, 0),
(506, 145, NULL, 'বাইশাকান্দা ইউনিয়ন', 0, 0),
(507, 145, NULL, 'কুশুরা', 0, 0),
(508, 145, NULL, 'গাংগুটিয়া', 0, 0),
(509, 145, NULL, 'সানোড়া', 0, 0),
(510, 145, NULL, 'সূতিপাড়া', 0, 0),
(511, 145, NULL, 'সোমভাগ', 0, 0),
(512, 145, NULL, 'ভাড়ারিয়া', 0, 0),
(513, 145, NULL, 'ধামরাই', 0, 0),
(514, 145, NULL, 'কুল্লা', 0, 0),
(515, 145, NULL, 'রোয়াইল', 0, 0),
(516, 145, NULL, 'সুয়াপুর', 0, 0),
(517, 145, NULL, 'নান্নার', 0, 0),
(518, 147, NULL, 'হযরতপুর', 0, 0),
(519, 147, NULL, 'কলাতিয়া ইউনিয়ন', 0, 0),
(520, 147, NULL, 'তারানগর', 0, 0),
(521, 147, NULL, 'শাক্তা', 0, 0),
(522, 147, NULL, 'রোহিতপুর', 0, 0),
(523, 147, NULL, 'বাস্তা', 0, 0),
(524, 147, NULL, 'কালিন্দি', 0, 0),
(525, 147, NULL, 'জিনজিরা', 0, 0),
(526, 147, NULL, 'শুভাঢ্যা ইউনিয়ন', 0, 0),
(527, 147, NULL, 'তেঘরিয়া ইউনিয়ন', 0, 0),
(528, 147, NULL, 'কোন্ডা ইউনিয়ন', 0, 0),
(529, 147, NULL, 'আগানগর ইউনিয়ন', 0, 0),
(530, 148, NULL, 'শিকারীপাড়া ইউনিয়ন', 0, 0),
(531, 148, NULL, 'জয়কৃষ্ণপুর ইউনিয়ন', 0, 0),
(532, 148, NULL, 'বারুয়াখালী ইউনিয়ন', 0, 0),
(533, 148, NULL, 'নয়নশ্রী', 0, 0),
(534, 148, NULL, 'শোল্লা ইউনিয়ন', 0, 0),
(535, 148, NULL, 'যন্ত্রাইল ইউনিয়ন', 0, 0),
(536, 148, NULL, 'বান্দুরা ইউনিয়ন', 0, 0),
(537, 148, NULL, 'কলাকোপা ইউনিয়ন', 0, 0),
(538, 148, NULL, 'বক্সনগর ইউনিয়ন', 0, 0),
(539, 148, NULL, 'বাহ্রা', 0, 0),
(540, 148, NULL, 'কৈলাইল', 0, 0),
(541, 148, NULL, 'আগলা ইউনিয়ন', 0, 0),
(542, 148, NULL, 'গালিমপুর', 0, 0),
(543, 148, NULL, 'চুড়াইন', 0, 0),
(544, 146, NULL, 'নয়াবাড়ী ইউনিয়ন', 0, 0),
(545, 146, NULL, 'কুসুমহাটি ইউনিয়ন', 0, 0),
(546, 146, NULL, 'রাইপাড়া ইউনিয়ন', 0, 0),
(547, 146, NULL, 'সুতারপাড়া ইউনিয়ন', 0, 0),
(548, 146, NULL, 'নারিশা ইউনিয়ন', 0, 0),
(549, 146, NULL, 'মুকসুদপুর ইউনিয়ন', 0, 0),
(550, 146, NULL, 'মাহমুদপুর ইউনিয়ন', 0, 0),
(551, 146, NULL, 'বিলাসপুর ইউনিয়ন', 0, 0),
(552, 204, NULL, 'রামপাল', 0, 0),
(553, 204, NULL, 'পঞ্চসার', 0, 0),
(554, 204, NULL, 'বজ্রযোগিনী', 0, 0),
(555, 204, NULL, 'মহাকালী', 0, 0),
(556, 204, NULL, 'চরকেওয়ার', 0, 0),
(557, 204, NULL, 'মোল্লাকান্দি', 0, 0),
(558, 204, NULL, 'আধারা', 0, 0),
(559, 204, NULL, 'শিলই', 0, 0),
(560, 204, NULL, 'বাংলাবাজার', 0, 0),
(561, 203, NULL, 'বাড়েখাল', 0, 0),
(562, 203, NULL, 'হাসাড়া', 0, 0),
(563, 203, NULL, 'বাড়তারা', 0, 0),
(564, 203, NULL, 'ষোলঘর', 0, 0),
(565, 203, NULL, 'শ্রীনগর', 0, 0),
(566, 203, NULL, 'পাঢাভোগ', 0, 0),
(567, 203, NULL, 'শ্যামসিদ্দি', 0, 0),
(568, 203, NULL, 'কুলাপাড়া', 0, 0),
(569, 203, NULL, 'ভাগ্যকুল', 0, 0),
(570, 203, NULL, 'বাঘড়া', 0, 0),
(571, 203, NULL, 'রাঢ়ীখাল', 0, 0),
(572, 203, NULL, 'কুকুটিয়া', 0, 0),
(573, 203, NULL, 'আটপাড়া', 0, 0),
(574, 203, NULL, 'তন্তর', 0, 0),
(575, 205, NULL, 'চিত্রকোট ইউনিয়ন', 0, 0),
(576, 205, NULL, 'শেখরনগার', 0, 0),
(577, 205, NULL, 'রাজানগর', 0, 0),
(578, 205, NULL, 'কেয়াইন', 0, 0),
(579, 205, NULL, 'বাসাইল', 0, 0),
(580, 205, NULL, 'বালুচর', 0, 0),
(581, 205, NULL, 'লতাব্দী', 0, 0),
(582, 205, NULL, 'রশুনিয়া', 0, 0),
(583, 205, NULL, 'ইছাপুরা', 0, 0),
(584, 205, NULL, 'বয়রাগাদি', 0, 0),
(585, 205, NULL, 'মালখানগর', 0, 0),
(586, 205, NULL, 'মধ্যপাড়া', 0, 0),
(587, 205, NULL, 'কোলা', 0, 0),
(588, 205, NULL, 'জৈনসার', 0, 0),
(589, 202, NULL, 'মেদিনীমন্ডল', 0, 0),
(590, 202, NULL, 'কুমারভোগ', 0, 0),
(591, 202, NULL, 'হলদিয়া', 0, 0),
(592, 202, NULL, 'কনকসার', 0, 0),
(593, 202, NULL, 'লৌহজং-তেওটিয়া', 0, 0),
(594, 202, NULL, 'বেজগাঁও', 0, 0),
(595, 202, NULL, 'বৌলতলী', 0, 0),
(596, 202, NULL, 'খিদিরপাড়া', 0, 0),
(597, 202, NULL, 'গাওদিয়া', 0, 0),
(598, 202, NULL, 'কলমা', 0, 0),
(599, 207, NULL, 'গজারিয়া', 0, 0),
(600, 207, NULL, 'বাউশিয়া', 0, 0),
(601, 207, NULL, 'ভবেরচর', 0, 0),
(602, 207, NULL, 'বালুয়াকান্দী', 0, 0),
(603, 207, NULL, 'টেংগারচর', 0, 0),
(604, 207, NULL, 'হোসেন্দী', 0, 0),
(605, 207, NULL, 'গুয়াগাছিয়া', 0, 0),
(606, 207, NULL, 'ইমামপুর', 0, 0),
(607, 206, NULL, 'বেতকা', 0, 0),
(608, 206, NULL, 'আব্দুল্লাপুর', 0, 0),
(609, 206, NULL, 'সোনারং টংগীবাড়ী', 0, 0),
(610, 206, NULL, 'আউটশাহী', 0, 0),
(611, 206, NULL, 'আড়িয়ল বালিগাঁও', 0, 0),
(612, 206, NULL, 'ধীপুর', 0, 0),
(613, 206, NULL, 'কাঠাদিয়া শিমুলিয়া', 0, 0),
(614, 206, NULL, 'যশলং', 0, 0),
(615, 206, NULL, 'পাঁচগাও', 0, 0),
(616, 206, NULL, 'কামারখাড়া ইউনিয়ন', 0, 0),
(617, 206, NULL, 'হাসাইল বানারী', 0, 0),
(618, 206, NULL, 'দিঘীরপাড়', 0, 0),
(619, 246, NULL, 'মিজানপুর', 0, 0),
(620, 246, NULL, 'বরাট', 0, 0),
(621, 246, NULL, 'চন্দনী', 0, 0),
(622, 246, NULL, 'খানগঞ্জ', 0, 0),
(623, 246, NULL, 'বানীবহ', 0, 0),
(624, 246, NULL, 'দাদশী', 0, 0),
(625, 246, NULL, 'মুলঘর', 0, 0),
(626, 246, NULL, 'বসন্তপুর', 0, 0),
(627, 246, NULL, 'খানখানাপুর', 0, 0),
(628, 246, NULL, 'আলীপুর', 0, 0),
(629, 246, NULL, 'রামকান্তপুর', 0, 0),
(630, 246, NULL, 'শহীদওহাবপুর', 0, 0),
(631, 246, NULL, 'পাঁচুরিয়া', 0, 0),
(632, 246, NULL, 'সুলতানপুর', 0, 0),
(633, 243, NULL, 'দৌলতদিয়া', 0, 0),
(634, 243, NULL, 'দেবগ্রাম', 0, 0),
(635, 243, NULL, 'উজানচর', 0, 0),
(636, 243, NULL, 'ছোটভাকলা', 0, 0),
(637, 244, NULL, 'বাহাদুরপুর', 0, 0),
(638, 244, NULL, 'হাবাসপুর', 0, 0),
(639, 244, NULL, 'যশাই', 0, 0),
(640, 244, NULL, 'বাবুপাড়া', 0, 0),
(641, 244, NULL, 'মৌরাট', 0, 0),
(642, 244, NULL, 'পাট্টা', 0, 0),
(643, 244, NULL, 'সরিষা', 0, 0),
(644, 244, NULL, 'কলিমহর', 0, 0),
(645, 244, NULL, 'কসবামাজাইল', 0, 0),
(646, 244, NULL, 'মাছপাড়া', 0, 0),
(647, 242, NULL, 'ইসলামপুর', 0, 0),
(648, 242, NULL, 'বহরপুর', 0, 0),
(649, 242, NULL, 'নবাবপুর', 0, 0),
(650, 242, NULL, 'নারুয়া', 0, 0),
(651, 242, NULL, 'বালিয়াকান্দি', 0, 0),
(652, 242, NULL, 'জঙ্গল', 0, 0),
(653, 242, NULL, 'জামালপুর', 0, 0),
(654, 245, NULL, 'কালুখালী', 0, 0),
(655, 245, NULL, 'রতনদিয়া', 0, 0),
(656, 245, NULL, 'কালিকাপুর', 0, 0),
(657, 245, NULL, 'বোয়ালিয়া', 0, 0),
(658, 245, NULL, 'মাজবাড়ী', 0, 0),
(659, 245, NULL, 'মদাপুর', 0, 0),
(660, 245, NULL, 'সাওরাইল', 0, 0),
(661, 245, NULL, 'মৃগী', 0, 0),
(662, 191, NULL, 'শিড়খাড়া', 0, 0),
(663, 191, NULL, 'বাহাদুরপুর', 0, 0),
(664, 191, NULL, 'কুনিয়া', 0, 0),
(665, 191, NULL, 'পেয়ারপুর', 0, 0),
(666, 191, NULL, 'কেন্দুয়া', 0, 0),
(667, 191, NULL, 'মস্তফাপুর', 0, 0),
(668, 191, NULL, 'দুধখালী', 0, 0),
(669, 191, NULL, 'কালিকাপুর', 0, 0),
(670, 191, NULL, 'ছিলারচর', 0, 0),
(671, 191, NULL, 'পাঁচখোলা', 0, 0),
(672, 191, NULL, 'ঘটমাঝি', 0, 0),
(673, 191, NULL, 'ঝাউদী', 0, 0),
(674, 191, NULL, 'খোয়াজপুর', 0, 0),
(675, 191, NULL, 'রাস্তি', 0, 0),
(676, 191, NULL, 'ধুরাইল', 0, 0),
(677, 194, NULL, 'শিবচর', 0, 0),
(678, 194, NULL, 'দ্বিতীয়খন্ড', 0, 0),
(679, 194, NULL, 'নিলখি', 0, 0),
(680, 194, NULL, 'বন্দরখোলা', 0, 0),
(681, 194, NULL, 'চরজানাজাত', 0, 0),
(682, 194, NULL, 'মাদবরেরচর', 0, 0),
(683, 194, NULL, 'পাঁচচর', 0, 0),
(684, 194, NULL, 'সন্যাসিরচর', 0, 0),
(685, 194, NULL, 'কাঁঠালবাড়ী', 0, 0),
(686, 194, NULL, 'কুতুবপুর', 0, 0),
(687, 194, NULL, 'কাদিরপুর', 0, 0),
(688, 194, NULL, 'ভান্ডারীকান্দি', 0, 0),
(689, 194, NULL, 'বহেরাতলা দক্ষিণ', 0, 0),
(690, 194, NULL, 'বহেরাতলা উত্তর', 0, 0),
(691, 194, NULL, 'বাঁশকান্দি', 0, 0),
(692, 194, NULL, 'উমেদপুর', 0, 0),
(693, 194, NULL, 'ভদ্রাসন', 0, 0),
(694, 194, NULL, 'শিরুয়াইল', 0, 0),
(695, 194, NULL, 'দত্তপাড়া', 0, 0),
(696, 192, NULL, 'আলীনগর', 0, 0),
(697, 192, NULL, 'বালীগ্রাম', 0, 0),
(698, 192, NULL, 'বাঁশগাড়ী', 0, 0),
(699, 192, NULL, 'চরদৌলতখান', 0, 0),
(700, 192, NULL, 'ডাসার', 0, 0),
(701, 192, NULL, 'এনায়েতনগর', 0, 0),
(702, 192, NULL, 'গোপালপুর', 0, 0),
(703, 192, NULL, 'কয়ারিয়া', 0, 0),
(704, 192, NULL, 'কাজীবাকাই', 0, 0),
(705, 192, NULL, 'লক্ষীপুর', 0, 0),
(706, 192, NULL, 'নবগ্রাম', 0, 0),
(707, 192, NULL, 'রমজানপুর', 0, 0),
(708, 192, NULL, 'সাহেবরামপুর', 0, 0),
(709, 192, NULL, 'শিকারমঙ্গল', 0, 0),
(710, 193, NULL, 'হরিদাসদী-মহেন্দ্রদী', 0, 0),
(711, 193, NULL, 'কদমবাড়ী', 0, 0),
(712, 193, NULL, 'বাজিতপুর', 0, 0),
(713, 193, NULL, 'আমগ্রাম', 0, 0),
(714, 193, NULL, 'রাজৈর', 0, 0),
(715, 193, NULL, 'খালিয়া', 0, 0),
(716, 193, NULL, 'ইশিবপুর', 0, 0),
(717, 193, NULL, 'বদরপাশা', 0, 0),
(718, 193, NULL, 'কবিরাজপুর', 0, 0),
(719, 193, NULL, 'হোসেনপুর', 0, 0),
(720, 193, NULL, 'পাইকপাড়া', 0, 0),
(721, 165, NULL, 'জালালাবাদ', 0, 0),
(722, 165, NULL, 'শুকতাইল', 0, 0),
(723, 165, NULL, 'চন্দ্রদিঘলিয়া', 0, 0),
(724, 165, NULL, 'গোপীনাথপুর', 0, 0),
(725, 165, NULL, 'পাইককান্দি', 0, 0),
(726, 165, NULL, 'উরফি', 0, 0),
(727, 165, NULL, 'লতিফপুর', 0, 0),
(728, 165, NULL, 'সাতপাড় ইউনিয়ন', 0, 0),
(729, 165, NULL, 'সাহাপুর', 0, 0),
(730, 165, NULL, 'হরিদাসপুর', 0, 0),
(731, 165, NULL, 'উলপুর ইউনিয়ন', 0, 0),
(732, 165, NULL, 'নিজড়া', 0, 0),
(733, 165, NULL, 'করপাড়া ইউনিয়ন', 0, 0),
(734, 165, NULL, 'দুর্গাপুর ইউনিয়ন', 0, 0),
(735, 165, NULL, 'কাজুলিয়া', 0, 0),
(736, 165, NULL, 'মাঝিগাতী', 0, 0),
(737, 165, NULL, 'রঘুনাথপুর ইউনিয়ন', 0, 0),
(738, 165, NULL, 'গোবরা ইউনিয়ন', 0, 0),
(739, 165, NULL, 'বোড়াশী ইউনিয়ন', 0, 0),
(740, 165, NULL, 'কাঠি', 0, 0),
(741, 165, NULL, 'বৌলতলী', 0, 0),
(742, 166, NULL, 'কাশিয়ানী', 0, 0),
(743, 166, NULL, 'হাতিয়াড়া', 0, 0),
(744, 166, NULL, 'ফুকরা', 0, 0),
(745, 166, NULL, 'রাজপাট', 0, 0),
(746, 166, NULL, 'বেথুড়ী', 0, 0),
(747, 166, NULL, 'নিজামকান্দি', 0, 0),
(748, 166, NULL, 'সাজাইল', 0, 0),
(749, 166, NULL, 'মাহমুদপুর', 0, 0),
(750, 166, NULL, 'মহেশপুর', 0, 0),
(751, 166, NULL, 'ওড়াকান্দি', 0, 0),
(752, 166, NULL, 'পারুলিয়া', 0, 0),
(753, 166, NULL, 'রাতইল', 0, 0),
(754, 166, NULL, 'পুইশুর', 0, 0),
(755, 166, NULL, 'সিংগা', 0, 0),
(756, 169, NULL, 'কুশলী', 0, 0),
(757, 169, NULL, 'গোপালপুর', 0, 0),
(758, 169, NULL, 'পাটগাতী', 0, 0),
(759, 169, NULL, 'বর্ণি', 0, 0),
(760, 169, NULL, 'ডুমরিয়া', 0, 0),
(761, 167, NULL, 'সাদুল্লাপুর', 0, 0),
(762, 167, NULL, 'রামশীল', 0, 0),
(763, 167, NULL, 'বান্ধাবাড়ী', 0, 0),
(764, 167, NULL, 'কলাবাড়ী', 0, 0),
(765, 167, NULL, 'কুশলা', 0, 0),
(766, 167, NULL, 'আমতলী', 0, 0),
(767, 167, NULL, 'পিঞ্জুরী', 0, 0),
(768, 167, NULL, 'ঘাঘর', 0, 0),
(769, 167, NULL, 'রাধাগঞ্জ', 0, 0),
(770, 167, NULL, 'হিরণ', 0, 0),
(771, 167, NULL, 'কান্দি', 0, 0),
(772, 168, NULL, 'উজানী', 0, 0),
(773, 168, NULL, 'দিগনগর', 0, 0),
(774, 168, NULL, 'পশারগাতি', 0, 0),
(775, 168, NULL, 'গোবিন্দপুর', 0, 0),
(776, 168, NULL, 'খান্দারপাড়া', 0, 0),
(777, 168, NULL, 'বহুগ্রাম', 0, 0),
(778, 168, NULL, 'বাশঁবাড়িয়া', 0, 0),
(779, 168, NULL, 'ভাবড়াশুর', 0, 0),
(780, 168, NULL, 'মহারাজপুর', 0, 0),
(781, 168, NULL, 'বাটিকামারী', 0, 0),
(782, 168, NULL, 'জলিরপাড়', 0, 0),
(783, 168, NULL, 'রাঘদী', 0, 0),
(784, 168, NULL, 'গোহালা', 0, 0),
(785, 168, NULL, 'মোচনা', 0, 0),
(786, 168, NULL, 'কাশালিয়া', 0, 0),
(787, 150, NULL, 'ঈশানগোপালপুর', 0, 0),
(788, 150, NULL, 'চরমাধবদিয়া', 0, 0),
(789, 150, NULL, 'আলিয়াবাদ', 0, 0),
(790, 150, NULL, 'নর্থচ্যানেল', 0, 0),
(791, 150, NULL, 'ডিক্রিরচর', 0, 0),
(792, 150, NULL, 'মাচ্চর', 0, 0),
(793, 150, NULL, 'কৃষ্ণনগর', 0, 0),
(794, 150, NULL, 'অম্বিকাপুর', 0, 0),
(795, 150, NULL, 'কানাইপুর', 0, 0),
(796, 150, NULL, 'কৈজুরী', 0, 0),
(797, 150, NULL, 'গেরদা', 0, 0),
(798, 152, NULL, 'বুড়াইচ', 0, 0),
(799, 152, NULL, 'আলফাডাঙ্গা', 0, 0),
(800, 152, NULL, 'টগরবন্দ', 0, 0),
(801, 152, NULL, 'বানা', 0, 0),
(802, 152, NULL, 'পাঁচুড়িয়া', 0, 0),
(803, 152, NULL, 'গোপালপুর', 0, 0),
(804, 151, NULL, 'বোয়ালমারী', 0, 0),
(805, 151, NULL, 'দাদপুর', 0, 0),
(806, 151, NULL, 'চতুল', 0, 0),
(807, 151, NULL, 'ঘোষপুর', 0, 0),
(808, 151, NULL, 'গুনবহা', 0, 0),
(809, 151, NULL, 'চাঁদপুর', 0, 0),
(810, 151, NULL, 'পরমেশ্বরদী', 0, 0),
(811, 151, NULL, 'সাতৈর', 0, 0),
(812, 151, NULL, 'রূপাপাত', 0, 0),
(813, 151, NULL, 'শেখর', 0, 0),
(814, 151, NULL, 'ময়না', 0, 0),
(815, 157, NULL, 'চর বিষ্ণুপুর', 0, 0),
(816, 157, NULL, 'আকোটের চর', 0, 0),
(817, 157, NULL, 'চর নাসিরপুর', 0, 0),
(818, 157, NULL, 'নারিকেল বাড়িয়া', 0, 0),
(819, 157, NULL, 'ভাষানচর', 0, 0),
(820, 157, NULL, 'কৃষ্ণপুর', 0, 0),
(821, 157, NULL, 'সদরপুর', 0, 0),
(822, 157, NULL, 'চর মানাইর', 0, 0),
(823, 157, NULL, 'ঢেউখালী', 0, 0),
(824, 155, NULL, 'চরযশোরদী', 0, 0),
(825, 155, NULL, 'পুরাপাড়া', 0, 0),
(826, 155, NULL, 'লস্করদিয়া', 0, 0),
(827, 155, NULL, 'রামনগর', 0, 0),
(828, 155, NULL, 'কাইচাইল', 0, 0),
(829, 155, NULL, 'তালমা', 0, 0),
(830, 155, NULL, 'ফুলসুতি', 0, 0),
(831, 155, NULL, 'ডাঙ্গী', 0, 0),
(832, 155, NULL, 'কোদালিয়া', 0, 0),
(833, 154, NULL, 'ঘারুয়া', 0, 0),
(834, 154, NULL, 'নুরুল্যাগঞ্জ', 0, 0),
(835, 154, NULL, 'মানিকদহ', 0, 0),
(836, 154, NULL, 'কাউলিবেড়া', 0, 0),
(837, 154, NULL, 'নাছিরাবাদ', 0, 0),
(838, 154, NULL, 'তুজারপুর', 0, 0),
(839, 154, NULL, 'আলগী', 0, 0),
(840, 154, NULL, 'চুমুরদী', 0, 0),
(841, 154, NULL, 'কালামৃধা', 0, 0),
(842, 154, NULL, 'আজিমনগর', 0, 0),
(843, 154, NULL, 'চান্দ্রা', 0, 0),
(844, 154, NULL, 'হামিরদী', 0, 0),
(845, 156, NULL, 'গাজীরটেক', 0, 0),
(846, 156, NULL, 'চর ভদ্রাসন', 0, 0),
(847, 156, NULL, 'চর হরিরামপুর', 0, 0),
(848, 156, NULL, 'চর ঝাউকান্দা', 0, 0),
(849, 153, NULL, 'মধুখালী', 0, 0),
(850, 153, NULL, 'জাহাপুর', 0, 0),
(851, 153, NULL, 'গাজনা', 0, 0),
(852, 153, NULL, 'মেগচামী', 0, 0),
(853, 153, NULL, 'রায়পুর', 0, 0),
(854, 153, NULL, 'বাগাট', 0, 0),
(855, 153, NULL, 'ডুমাইন', 0, 0),
(856, 153, NULL, 'নওপাড়া', 0, 0),
(857, 153, NULL, 'কামারখালী', 0, 0),
(858, 158, NULL, 'ভাওয়াল', 0, 0),
(859, 158, NULL, 'আটঘর', 0, 0),
(860, 158, NULL, 'মাঝারদিয়া', 0, 0),
(861, 158, NULL, 'বল্লভদী', 0, 0),
(862, 158, NULL, 'গট্টি', 0, 0),
(863, 158, NULL, 'যদুনন্দী', 0, 0),
(864, 158, NULL, 'রামকান্তপুর', 0, 0),
(865, 158, NULL, 'সোনাপুর', 0, 0),
(866, 88, NULL, 'সুবিল', 0, 0),
(867, 88, NULL, 'গুনাইঘর (উত্তর)', 0, 0),
(868, 88, NULL, 'গুনাইঘর (দক্ষিণ)', 0, 0),
(869, 88, NULL, 'বড়শালঘর ইউনিয়ন', 0, 0),
(870, 88, NULL, 'রাজামেহার ইউনিয়ন', 0, 0),
(871, 88, NULL, 'ইউসুফপুর ইউনিয়ন', 0, 0),
(872, 88, NULL, 'রসুলপুর ইউনিয়ন', 0, 0),
(873, 88, NULL, 'ফতেহাবাদ ইউনিয়ন', 0, 0),
(874, 88, NULL, 'এলাহাবাদ ইউনিয়ন', 0, 0),
(875, 88, NULL, 'জাফরগঞ্জ ইউনিয়ন', 0, 0),
(876, 88, NULL, 'ধামতী ইউনিয়ন', 0, 0),
(877, 88, NULL, 'মোহনপুর', 0, 0),
(878, 88, NULL, 'ভানী', 0, 0),
(879, 88, NULL, 'বরকামতা', 0, 0),
(880, 88, NULL, 'সুলতানপুর ইউনিয়ন', 0, 0),
(881, 82, NULL, 'আগানগর', 0, 0),
(882, 82, NULL, 'ভবানীপুর', 0, 0),
(883, 82, NULL, 'খোশবাস (উ:)', 0, 0),
(884, 82, NULL, 'খোশবাস (দ:)', 0, 0),
(885, 82, NULL, 'ঝলম', 0, 0),
(886, 82, NULL, 'চিতড্ডা', 0, 0),
(887, 82, NULL, 'শিলমুড়ি (উ:)', 0, 0),
(888, 82, NULL, 'শিলমুড়ি (দ:)', 0, 0),
(889, 82, NULL, 'গালিমপুর', 0, 0),
(890, 82, NULL, 'শাকপুর', 0, 0),
(891, 82, NULL, 'ভাউকসার', 0, 0),
(892, 82, NULL, 'আড্ডা', 0, 0),
(893, 82, NULL, 'আদ্রা', 0, 0),
(894, 82, NULL, 'পয়ালগাছা', 0, 0),
(895, 82, NULL, 'লক্ষীপুর', 0, 0),
(896, 83, NULL, 'শিদলাই ইউনিয়ন', 0, 0),
(897, 83, NULL, 'চান্দলা ইউনিয়ন', 0, 0),
(898, 83, NULL, 'শশীদল ইউনিয়ন', 0, 0),
(899, 83, NULL, 'দুলালপুর (২) ইউনিয়ন', 0, 0),
(900, 83, NULL, 'ব্রাহ্মনপাড়া সদর ইউনিয়ন', 0, 0),
(901, 83, NULL, 'সাহেবাবাদ ইউনিয়ন', 0, 0),
(902, 83, NULL, 'মালাপাড়া ইউনিয়ন', 0, 0),
(903, 83, NULL, 'মাধবপুর', 0, 0),
(904, 85, NULL, 'সুহিলপুর', 0, 0),
(905, 85, NULL, 'বাতাঘাসি', 0, 0),
(906, 85, NULL, 'জোয়াগ', 0, 0),
(907, 85, NULL, 'বরকরই', 0, 0),
(908, 85, NULL, 'মাধাইয়া', 0, 0),
(909, 85, NULL, 'দোল্লাই নবাবপুর', 0, 0),
(910, 85, NULL, 'মহিচাইল', 0, 0),
(911, 85, NULL, 'গল্লাই', 0, 0),
(912, 85, NULL, 'কেরণখাল', 0, 0),
(913, 85, NULL, 'মাইজখার', 0, 0),
(914, 85, NULL, 'এতবারপুর', 0, 0),
(915, 85, NULL, 'বাড়েরা', 0, 0),
(916, 85, NULL, 'বরকইট', 0, 0),
(917, 86, NULL, 'শ্রীপুর', 0, 0),
(918, 86, NULL, 'কাশিনগর', 0, 0),
(919, 86, NULL, '২নং কালিকাপুর', 0, 0),
(920, 86, NULL, '৪নং শুভপুর', 0, 0),
(921, 86, NULL, '৫নং ঘোলপাশা', 0, 0),
(922, 86, NULL, '৬নং মুন্সীরহাট', 0, 0),
(923, 86, NULL, '৭নং বাতিসা', 0, 0),
(924, 86, NULL, '৮নং কনকাপৈত', 0, 0),
(925, 86, NULL, '৯নং চিওড়া', 0, 0),
(926, 86, NULL, '১০ নং জগন্নাথদিঘী', 0, 0),
(927, 86, NULL, '১১ নং গুনবতী', 0, 0),
(928, 86, NULL, '১২নং আলকরা', 0, 0),
(929, 87, NULL, 'দৌলতপুর', 0, 0),
(930, 87, NULL, 'দাউদকান্দি (উত্তর)', 0, 0),
(931, 87, NULL, 'ইলিয়টগঞ্জ (উত্তর)', 0, 0),
(932, 87, NULL, 'ইলিয়টগঞ্জ (দক্ষিন)', 0, 0),
(933, 87, NULL, 'জিংলাতলী', 0, 0),
(934, 87, NULL, 'সুন্দলপুর', 0, 0),
(935, 87, NULL, 'গৌরীপুর ইউনিয়ন', 0, 0),
(936, 87, NULL, 'মোহাম্মদপুর (পুর্ব) ইউনিয়ন', 0, 0),
(937, 87, NULL, 'মোহাম্মদপুর (পশ্চিম) ইউনিয়ন', 0, 0),
(938, 87, NULL, 'গোয়ালমারী ইউনিয়ন', 0, 0),
(939, 87, NULL, 'মারুকা ইউনিয়ন', 0, 0),
(940, 87, NULL, 'বিটেশ্বর ইউনিয়ন', 0, 0),
(941, 87, NULL, 'পদুয়া ইউনিয়ন', 0, 0),
(942, 87, NULL, 'পাচঁগাছিয়া (পশ্চিম) ইউনিয়ন', 0, 0),
(943, 87, NULL, 'বারপাড়া', 0, 0),
(944, 89, NULL, 'মাথাভাঙ্গা', 0, 0),
(945, 89, NULL, 'ঘাগুটিয়া', 0, 0),
(946, 89, NULL, 'আছাদপুর', 0, 0),
(947, 89, NULL, 'চান্দেরচর', 0, 0),
(948, 89, NULL, 'ভাষানিয়া', 0, 0),
(949, 89, NULL, 'নিলখী ইউনিয়ন', 0, 0),
(950, 89, NULL, 'ঘারমোড়া ইউনিয়ন', 0, 0),
(951, 89, NULL, 'জয়পুর ইউনিয়ন', 0, 0),
(952, 89, NULL, 'দুলালপুর', 0, 0),
(953, 91, NULL, 'বাকই', 0, 0),
(954, 91, NULL, 'মুদাফফর গঞ্জ ইউনিয়ন', 0, 0),
(955, 91, NULL, 'কান্দিরপাড় ইউনিয়ন', 0, 0),
(956, 91, NULL, 'গোবিন্দপুর ইউনিয়ন (2)', 0, 0),
(957, 91, NULL, 'উত্তরদা ইউনিয়ন', 0, 0),
(958, 91, NULL, 'লাকসাম পুর্ব ইউনিয়ন', 0, 0),
(959, 91, NULL, 'আজগরা ইউনিয়ন', 0, 0),
(960, 94, NULL, '১নং শ্রীকাইল', 0, 0),
(961, 94, NULL, '২নং আকুবপুর', 0, 0),
(962, 94, NULL, '৩নং আন্দিকোট', 0, 0),
(963, 94, NULL, '৪নং পুর্বধৈইর (পুর্ব)', 0, 0),
(964, 94, NULL, '৫নং পুর্বধৈইর (পশ্চিম)', 0, 0),
(965, 94, NULL, '৬নং বাঙ্গরা (পূর্ব)', 0, 0),
(966, 94, NULL, '৭নং বাঙ্গরা (পশ্চিম)', 0, 0),
(967, 94, NULL, '৮নং চাপিতলা', 0, 0),
(968, 94, NULL, '৯নং কামাল্লা', 0, 0),
(969, 94, NULL, '১০নং যাত্রাপুর', 0, 0),
(970, 94, NULL, 'রামচন্দ্রপুর উত্তর', 0, 0),
(971, 94, NULL, 'রামচন্দ্রপুর দক্ষিন', 0, 0),
(972, 94, NULL, '১১ নং মুরাদনগর সদর', 0, 0),
(973, 94, NULL, '১২নং নবীপুর (পুর্ব)', 0, 0),
(974, 94, NULL, '১৩নং নবীপুর (পশ্চিম)', 0, 0),
(975, 94, NULL, '১৪নং ধামঘর', 0, 0),
(976, 94, NULL, '১৫নং জাহাপুর', 0, 0),
(977, 94, NULL, '১৬নং ছালিয়াকান্দি', 0, 0),
(978, 94, NULL, '১৭নং দারোরা', 0, 0),
(979, 94, NULL, '১৮নং পাহাড়পুর', 0, 0),
(980, 94, NULL, '২১নং বাবুটিপাড়া', 0, 0),
(981, 94, NULL, '২২নং টনকী', 0, 0),
(982, 95, NULL, 'বাঙ্গড্ডা', 0, 0),
(983, 95, NULL, 'পেরিয়া', 0, 0),
(984, 95, NULL, 'রায়কোট', 0, 0),
(985, 95, NULL, 'মোকরা', 0, 0),
(986, 95, NULL, 'মক্রবপুর', 0, 0),
(987, 95, NULL, 'হেসাখাল', 0, 0),
(988, 95, NULL, 'আদ্রা', 0, 0),
(989, 95, NULL, 'জোড্ডা', 0, 0),
(990, 95, NULL, 'ঢালুয়া', 0, 0),
(991, 95, NULL, 'দৌলখাঁড়', 0, 0),
(992, 95, NULL, 'বক্সগঞ্জ', 0, 0),
(993, 95, NULL, 'সাতবাড়ীয়া ইউনিয়ন', 0, 0),
(994, 90, NULL, 'কালীর বাজার ইউনিয়ন', 0, 0),
(995, 90, NULL, 'দুর্গাপুর (উত্তর) ইউনিয়ন', 0, 0),
(996, 90, NULL, 'দুর্গাপুর (দক্ষিন) ইউনিয়ন', 0, 0),
(997, 90, NULL, 'আমড়াতলী ইউনিয়ন', 0, 0),
(998, 90, NULL, 'পাঁচথুবী ইউনিয়ন', 0, 0),
(999, 90, NULL, 'জগন্নাথপুর ইউনিয়ন', 0, 0),
(1000, 93, NULL, 'চন্দনপুর', 0, 0),
(1001, 93, NULL, '২নং চালিভাঙ্গা', 0, 0),
(1002, 93, NULL, '৩নং রাধানগর', 0, 0),
(1003, 93, NULL, '৪নং মানিকারচর', 0, 0),
(1004, 93, NULL, '৫নং বড়কান্দা', 0, 0),
(1005, 93, NULL, '৬নং গোবিন্দপুর', 0, 0),
(1006, 93, NULL, '৭নং লুটেরচর', 0, 0),
(1007, 93, NULL, '৮নং ভাওরখোলা', 0, 0),
(1008, 92, NULL, 'বাইশগাঁও', 0, 0),
(1009, 92, NULL, 'সরসপুর', 0, 0),
(1010, 92, NULL, 'হাসনাবাদ', 0, 0),
(1011, 92, NULL, '৪নং ঝলম উত্তর ইউনিয়ন', 0, 0),
(1012, 92, NULL, '৫নং ঝলম দক্ষিন', 0, 0),
(1013, 92, NULL, 'মৈশাতুয়া', 0, 0),
(1014, 92, NULL, 'লক্ষনপুর', 0, 0),
(1015, 92, NULL, 'খিলা ইউনিয়ন', 0, 0),
(1016, 92, NULL, 'উত্তর হাওলা', 0, 0),
(1017, 92, NULL, 'নাথেরপেটুয়া', 0, 0),
(1018, 92, NULL, 'বিপুলাসার', 0, 0),
(1019, 96, NULL, 'চৌয়ারা', 0, 0),
(1020, 96, NULL, 'বারপাড়া ইউনিয়ন', 0, 0),
(1021, 96, NULL, 'জোড়কানন (পুর্ব)', 0, 0),
(1022, 96, NULL, 'গলিয়ারা', 0, 0),
(1023, 96, NULL, 'জোড়কানন (পশ্চিম)', 0, 0),
(1024, 96, NULL, 'বাগমারা (উত্তর)', 0, 0),
(1025, 96, NULL, 'বাগমারা (দক্ষিন) ইউনিয়ন', 0, 0),
(1026, 96, NULL, 'ভূলইন (উত্তর) ইউনিয়ন', 0, 0),
(1027, 96, NULL, 'ভূলইন (দক্ষিন)', 0, 0),
(1028, 96, NULL, 'বেলঘর (উত্তর)', 0, 0),
(1029, 96, NULL, 'বেলঘর (দক্ষিন)', 0, 0),
(1030, 96, NULL, 'পেরুল (উত্তর)', 0, 0),
(1031, 96, NULL, 'পেরুল (দক্ষিন)', 0, 0),
(1032, 96, NULL, 'বিজয়পুর', 0, 0),
(1033, 97, NULL, '১নং সাতানী', 0, 0),
(1034, 97, NULL, '২নং জগতপুর', 0, 0),
(1035, 97, NULL, '৩নং বলরামপুর', 0, 0),
(1036, 97, NULL, '৪নং কড়িকান্দি', 0, 0),
(1037, 97, NULL, '৫নং কলাকান্দি', 0, 0),
(1038, 97, NULL, '৬নং ভিটিকান্দি', 0, 0),
(1039, 97, NULL, '৭নং নারান্দিয়া', 0, 0),
(1040, 97, NULL, '৮নং জিয়ারকান্দি', 0, 0),
(1041, 97, NULL, '৯নং মজিদপুর', 0, 0),
(1042, 84, NULL, 'ময়নামতি', 0, 0),
(1043, 84, NULL, 'ভারেল্লা', 0, 0),
(1044, 84, NULL, 'মোকাম', 0, 0),
(1045, 84, NULL, 'বুড়িচং সদর', 0, 0),
(1046, 84, NULL, 'বাকশীমূল', 0, 0),
(1047, 84, NULL, 'পীরযাত্রাপুর', 0, 0),
(1048, 84, NULL, 'ষোলনল', 0, 0),
(1049, 84, NULL, 'রাজাপুর', 0, 0),
(1050, 108, NULL, 'মহামায়া', 0, 0),
(1051, 108, NULL, 'পাঠাননগর', 0, 0),
(1052, 108, NULL, 'শুভপুর', 0, 0),
(1053, 108, NULL, 'রাধানগর', 0, 0),
(1054, 108, NULL, 'ঘোপাল', 0, 0),
(1055, 107, NULL, 'শর্শদি', 0, 0),
(1056, 107, NULL, 'পাঁচগাছিয়া', 0, 0),
(1057, 107, NULL, 'ধর্মপুর', 0, 0),
(1058, 107, NULL, 'কাজিরবাগ', 0, 0),
(1059, 107, NULL, 'কালিদহ', 0, 0),
(1060, 107, NULL, 'বালিগাঁও', 0, 0),
(1061, 107, NULL, 'ধলিয়া', 0, 0),
(1062, 107, NULL, 'লেমুয়া', 0, 0),
(1063, 107, NULL, 'ছনুয়া', 0, 0),
(1064, 107, NULL, 'মোটবী', 0, 0),
(1065, 107, NULL, 'ফাজিলপুর', 0, 0),
(1066, 107, NULL, 'ফরহাদনগর', 0, 0),
(1067, 112, NULL, 'চরমজলিশপুর', 0, 0),
(1068, 112, NULL, 'বগাদানা', 0, 0),
(1069, 112, NULL, 'মতিগঞ্জ', 0, 0),
(1070, 112, NULL, 'মঙ্গলকান্দি', 0, 0),
(1071, 112, NULL, 'চরদরবেশ', 0, 0),
(1072, 112, NULL, 'চরচান্দিয়া', 0, 0),
(1073, 112, NULL, 'সোনাগাজী', 0, 0),
(1074, 112, NULL, 'আমিরাবাদ', 0, 0),
(1075, 112, NULL, 'নবাবপুর', 0, 0),
(1076, 111, NULL, 'ফুলগাজী', 0, 0),
(1077, 111, NULL, 'মুন্সিরহাট', 0, 0),
(1078, 111, NULL, 'দরবারপুর', 0, 0),
(1079, 111, NULL, 'আনন্দপুর', 0, 0),
(1080, 111, NULL, 'আমজাদহাট', 0, 0),
(1081, 111, NULL, 'জি', 0, 0),
(1082, 111, NULL, 'এম', 0, 0),
(1083, 111, NULL, 'হাট', 0, 0),
(1084, 110, NULL, 'মির্জানগর', 0, 0),
(1085, 110, NULL, 'চিথলিয়া', 0, 0),
(1086, 110, NULL, 'বক্সমাহমুদ', 0, 0),
(1087, 109, NULL, 'সিন্দুরপুর', 0, 0),
(1088, 109, NULL, 'রাজাপুর', 0, 0),
(1089, 109, NULL, 'পূর্বচন্দ্রপুর', 0, 0),
(1090, 109, NULL, 'রামনগর', 0, 0),
(1091, 109, NULL, 'ইয়াকুবপুর', 0, 0),
(1092, 109, NULL, 'দাগনভূঞা', 0, 0),
(1093, 109, NULL, 'মাতুভূঞা', 0, 0),
(1094, 109, NULL, 'জায়লস্কর', 0, 0),
(1095, 50, NULL, 'বাসুদেব', 0, 0),
(1096, 50, NULL, 'মাছিহাতা', 0, 0),
(1097, 50, NULL, 'সুলতানপুর', 0, 0),
(1098, 50, NULL, 'রামরাইল ইউনিয়ন', 0, 0),
(1099, 50, NULL, 'সাদেকপুর ইউনিয়ন', 0, 0),
(1100, 50, NULL, 'তালশহর', 0, 0),
(1101, 50, NULL, 'নাটাই (দঃ) ইউনিয়ন', 0, 0),
(1102, 50, NULL, 'নাটাই', 0, 0),
(1103, 50, NULL, 'সুহিলপুর', 0, 0),
(1104, 50, NULL, 'বুধল', 0, 0),
(1105, 50, NULL, 'মজলিশপুর', 0, 0),
(1106, 56, NULL, 'মূলগ্রাম', 0, 0),
(1107, 56, NULL, 'মেহারী', 0, 0),
(1108, 56, NULL, 'বাদৈর', 0, 0),
(1109, 56, NULL, 'খাড়েরা', 0, 0),
(1110, 56, NULL, 'বিনাউটি', 0, 0),
(1111, 56, NULL, 'গোপীনাথপুর', 0, 0),
(1112, 56, NULL, 'কসবা(পঃ)', 0, 0),
(1113, 56, NULL, 'কুটি', 0, 0),
(1114, 56, NULL, 'কাইমপুর', 0, 0),
(1115, 56, NULL, 'বায়েক', 0, 0),
(1116, 52, NULL, 'চাতলপাড়', 0, 0),
(1117, 52, NULL, 'ভলাকুট', 0, 0),
(1118, 52, NULL, 'কুন্ডা', 0, 0),
(1119, 52, NULL, 'গোয়ালনগর ইউনিয়ন', 0, 0),
(1120, 52, NULL, 'নাসিরনগর', 0, 0),
(1121, 52, NULL, 'বুড়িশ্বর', 0, 0),
(1122, 52, NULL, 'ফান্দাউক', 0, 0),
(1123, 52, NULL, 'গুনিয়াউক', 0, 0),
(1124, 52, NULL, 'চাপৈরতলা', 0, 0),
(1125, 52, NULL, 'ধরমন্ডল', 0, 0),
(1126, 52, NULL, 'হরিপুর', 0, 0),
(1127, 52, NULL, 'পূর্বভাগ', 0, 0),
(1128, 52, NULL, 'গোকর্ণ', 0, 0),
(1129, 54, NULL, 'অরুয়াইল', 0, 0),
(1130, 54, NULL, 'পাকশিমুল', 0, 0),
(1131, 54, NULL, 'চুন্টা', 0, 0),
(1132, 54, NULL, 'কালীকচ্ছ', 0, 0),
(1133, 54, NULL, 'পানিশ্বর ইউনিয়ন', 0, 0),
(1134, 54, NULL, 'সরাইল সদর', 0, 0),
(1135, 54, NULL, 'নোয়াগাঁও', 0, 0),
(1136, 54, NULL, 'শাহজাদাপুর', 0, 0),
(1137, 54, NULL, 'শাহবাজপুর', 0, 0),
(1138, 51, NULL, 'আশুগঞ্জ সদর', 0, 0),
(1139, 51, NULL, 'চরচারতলা', 0, 0),
(1140, 51, NULL, 'দুর্গাপুর', 0, 0),
(1141, 51, NULL, 'আড়াইসিধা', 0, 0),
(1142, 51, NULL, 'তালশহর(পঃ)', 0, 0),
(1143, 51, NULL, 'শরীফপুর', 0, 0),
(1144, 51, NULL, 'লালপুর', 0, 0),
(1145, 51, NULL, 'তারুয়া', 0, 0),
(1146, 57, NULL, 'মনিয়ন্দ', 0, 0),
(1147, 57, NULL, 'ধরখার', 0, 0),
(1148, 57, NULL, 'মোগড়া', 0, 0),
(1149, 57, NULL, 'আখাউড়া (উঃ)', 0, 0),
(1150, 57, NULL, 'আখাউড়া (দঃ)', 0, 0),
(1151, 53, NULL, 'বড়াইল', 0, 0),
(1152, 53, NULL, 'বীরগাঁও', 0, 0),
(1153, 53, NULL, 'কৃষ্ণনগর', 0, 0),
(1154, 53, NULL, 'নাটঘর', 0, 0),
(1155, 53, NULL, 'বিদ্যাকুট', 0, 0),
(1156, 53, NULL, 'নবীনগর', 0, 0),
(1157, 53, NULL, 'নবীনগর(পশ্চিম)', 0, 0),
(1158, 53, NULL, 'বিটঘর', 0, 0),
(1159, 53, NULL, 'শিবপুর', 0, 0),
(1160, 53, NULL, 'শ্রীরামপুর', 0, 0),
(1161, 53, NULL, 'জিনোদপুর', 0, 0),
(1162, 53, NULL, 'লাউরফতেপুর', 0, 0),
(1163, 53, NULL, 'ইব্রাহিমপুর', 0, 0),
(1164, 53, NULL, 'সাতমোড়া', 0, 0),
(1165, 53, NULL, 'শ্যামগ্রাম', 0, 0),
(1166, 53, NULL, 'রসুল্লাবাদ', 0, 0),
(1167, 53, NULL, 'বড়িকান্দি', 0, 0),
(1168, 53, NULL, 'ছলিমগঞ্জ', 0, 0),
(1169, 53, NULL, 'রতনপুর', 0, 0),
(1170, 53, NULL, 'কাইতলা (উঃ)', 0, 0),
(1171, 53, NULL, 'কাইতলা', 0, 0),
(1172, 58, NULL, 'তেজখালী', 0, 0),
(1173, 58, NULL, 'পাহাড়িয়া কান্দি', 0, 0),
(1174, 58, NULL, 'দরিয়াদৌলত', 0, 0),
(1175, 58, NULL, 'সোনারামপুর', 0, 0),
(1176, 58, NULL, 'দড়িকান্দি', 0, 0),
(1177, 58, NULL, 'ছয়ফুল্লাকান্দি', 0, 0),
(1178, 58, NULL, 'বাঞ্ছারামপুর', 0, 0),
(1179, 58, NULL, 'আইয়ুবপুর', 0, 0),
(1180, 58, NULL, 'ফরদাবাদ', 0, 0),
(1181, 58, NULL, 'রুপসদী পশ্চিম', 0, 0),
(1182, 58, NULL, 'ছলিমাবাদ', 0, 0),
(1183, 58, NULL, 'উজানচর পূর্ব', 0, 0),
(1184, 58, NULL, 'মানিকপুর', 0, 0),
(1185, 59, NULL, 'বুধন্তি', 0, 0),
(1186, 59, NULL, 'চান্দুরা', 0, 0),
(1187, 59, NULL, 'ইছাপুরা', 0, 0),
(1188, 59, NULL, 'চম্পকনগর', 0, 0),
(1189, 59, NULL, 'হরষপুর', 0, 0),
(1190, 59, NULL, 'পত্তন', 0, 0),
(1191, 59, NULL, 'সিংগারবিল', 0, 0),
(1192, 59, NULL, 'বিষ্ণুপুর', 0, 0),
(1193, 59, NULL, 'চর-ইসলামপুর', 0, 0),
(1194, 59, NULL, 'পাহাড়পুর', 0, 0),
(1195, 135, NULL, '১ নং জীবতলি', 0, 0),
(1196, 135, NULL, '৩ নং সাপছড়ি', 0, 0),
(1197, 135, NULL, '৪ নং কুতুকছড়ি', 0, 0),
(1198, 135, NULL, '৫ নং বন্দুকভাঙ্গা', 0, 0),
(1199, 135, NULL, '৬ নং বালুখালী', 0, 0),
(1200, 135, NULL, '২ নং মগবান', 0, 0),
(1201, 141, NULL, '২ নং রাইখালী', 0, 0),
(1202, 141, NULL, '৪ নং কাপ্তাই', 0, 0),
(1203, 141, NULL, '৫ নং ওয়াজ্ঞা', 0, 0),
(1204, 141, NULL, '১ নং চন্দ্রঘোনা', 0, 0),
(1205, 141, NULL, '৩ নং চিৎমরম', 0, 0),
(1206, 144, NULL, '৩ নং ঘাগড়া', 0, 0),
(1207, 144, NULL, '২ নং ফটিকছড়ি', 0, 0),
(1208, 144, NULL, '১ নং বেতবুনিয়া', 0, 0),
(1209, 144, NULL, '৪ নং কলমপতি', 0, 0),
(1210, 137, NULL, '৩৬ নং সাজেক', 0, 0),
(1211, 137, NULL, '৩৭ নং আমতলী', 0, 0),
(1212, 137, NULL, '৩৫ নং বঙ্গলতলী', 0, 0),
(1213, 137, NULL, '৩৪ নং রুপকারী', 0, 0),
(1214, 137, NULL, '৩৩ নং মারিশ্যা', 0, 0),
(1215, 137, NULL, '৩১ নং খেদারমারা', 0, 0),
(1216, 137, NULL, '৩০ নং সারোয়াতলী', 0, 0),
(1217, 137, NULL, '৩২ নং বাঘাইছড়ি', 0, 0),
(1218, 138, NULL, '১ নং সুবলং', 0, 0),
(1219, 138, NULL, '২ নং বরকল', 0, 0),
(1220, 138, NULL, '৪ নং ভূষনছড়া', 0, 0),
(1221, 138, NULL, '৩ নং আইমাছড়া', 0, 0),
(1222, 138, NULL, '৫ নং বড় হরিণা', 0, 0),
(1223, 142, NULL, 'লংগদু', 0, 0),
(1224, 142, NULL, 'মাইনীমুখ', 0, 0),
(1225, 142, NULL, 'ভাসান্যাদম', 0, 0),
(1226, 142, NULL, 'বগাচতর', 0, 0),
(1227, 142, NULL, 'গুলশাখালী', 0, 0),
(1228, 142, NULL, 'কালাপাকুজ্যা', 0, 0),
(1229, 142, NULL, 'আটারকছড়া', 0, 0),
(1230, 140, NULL, '১ নং ঘিলাছড়ি', 0, 0),
(1231, 140, NULL, '২ নং গাইন্দ্যা', 0, 0),
(1232, 140, NULL, '৩ নং বাঙ্গালহালিয়া', 0, 0),
(1233, 136, NULL, '২ নং কেংড়াছড়ি', 0, 0),
(1234, 136, NULL, '১ নং বিলাইছড়ি', 0, 0),
(1235, 136, NULL, '৩ নং ফারুয়া', 0, 0),
(1236, 139, NULL, 'জুরাছড়ি', 0, 0),
(1237, 139, NULL, 'বনযোগীছড়া', 0, 0),
(1238, 139, NULL, 'মৈদং', 0, 0),
(1239, 139, NULL, 'দুমদুম্যা', 0, 0),
(1240, 143, NULL, 'সাবেক্ষ্যং', 0, 0),
(1241, 143, NULL, 'নানিয়ারচর', 0, 0),
(1242, 143, NULL, 'বুড়িঘাট', 0, 0),
(1243, 143, NULL, 'ঘিলাছড়ি', 0, 0),
(1244, 126, NULL, 'চরমটুয়া', 0, 0),
(1245, 126, NULL, 'দাদপুর', 0, 0),
(1246, 126, NULL, 'নোয়ান্নই', 0, 0),
(1247, 126, NULL, 'কাদির হানিফ', 0, 0),
(1248, 126, NULL, 'বিনোদপুর', 0, 0),
(1249, 126, NULL, 'ধর্মপুর', 0, 0),
(1250, 126, NULL, 'এওজবালিয়া', 0, 0),
(1251, 126, NULL, 'কালাদরপ', 0, 0),
(1252, 126, NULL, 'অশ্বদিয়া', 0, 0),
(1253, 126, NULL, 'নিয়াজপুর', 0, 0),
(1254, 126, NULL, 'পূর্ব চরমটুয়া', 0, 0),
(1255, 126, NULL, 'আন্ডারচর', 0, 0),
(1256, 126, NULL, 'নোয়াখালী', 0, 0),
(1257, 129, NULL, 'সিরাজপুর', 0, 0),
(1258, 129, NULL, 'চরপার্বতী', 0, 0),
(1259, 129, NULL, 'চরহাজারী', 0, 0),
(1260, 129, NULL, 'চরকাঁকড়া', 0, 0),
(1261, 129, NULL, 'চরফকিরা', 0, 0),
(1262, 129, NULL, 'মুসাপুর', 0, 0),
(1263, 129, NULL, 'চরএলাহী', 0, 0),
(1264, 129, NULL, 'রামপুর', 0, 0),
(1265, 127, NULL, 'আমানউল্ল্যাপুর', 0, 0),
(1266, 127, NULL, 'গোপালপুর', 0, 0),
(1267, 127, NULL, 'জিরতলী', 0, 0),
(1268, 127, NULL, 'কুতবপুর', 0, 0),
(1269, 127, NULL, 'আলাইয়ারপুর', 0, 0),
(1270, 127, NULL, 'ছয়ানী', 0, 0),
(1271, 127, NULL, 'রাজগঞ্জ', 0, 0),
(1272, 127, NULL, 'একলাশপুর', 0, 0),
(1273, 127, NULL, 'বেগমগঞ্জ', 0, 0),
(1274, 127, NULL, 'মিরওয়ারিশপুর', 0, 0),
(1275, 127, NULL, 'নরোত্তমপুর', 0, 0),
(1276, 127, NULL, 'দূর্গাপুর', 0, 0),
(1277, 127, NULL, 'রসুলপুর', 0, 0),
(1278, 127, NULL, 'হাজীপুর', 0, 0),
(1279, 127, NULL, 'শরীফপুর', 0, 0),
(1280, 127, NULL, 'কাদিরপুর', 0, 0),
(1281, 131, NULL, 'সুখচর', 0, 0),
(1282, 131, NULL, 'নলচিরা', 0, 0),
(1283, 131, NULL, 'চরঈশ্বর', 0, 0),
(1284, 131, NULL, 'চরকিং', 0, 0),
(1285, 131, NULL, 'তমরদ্দি', 0, 0),
(1286, 131, NULL, 'সোনাদিয়া', 0, 0),
(1287, 131, NULL, 'বুড়িরচর', 0, 0),
(1288, 131, NULL, 'জাহাজমারা', 0, 0),
(1289, 131, NULL, 'নিঝুমদ্বীপ', 0, 0),
(1290, 134, NULL, 'চরজাব্বার', 0, 0),
(1291, 134, NULL, 'চরবাটা', 0, 0),
(1292, 134, NULL, 'চরক্লার্ক', 0, 0),
(1293, 134, NULL, 'চরওয়াপদা', 0, 0),
(1294, 134, NULL, 'চরজুবলী', 0, 0),
(1295, 134, NULL, 'চরআমান', 0, 0),
(1296, 134, NULL, 'পূর্ব চরবাটা', 0, 0),
(1297, 134, NULL, 'মোহাম্মদপুর', 0, 0),
(1298, 132, NULL, 'নরোত্তমপুর', 0, 0),
(1299, 132, NULL, 'ধানসিঁড়ি', 0, 0),
(1300, 132, NULL, 'সুন্দলপুর', 0, 0),
(1301, 132, NULL, 'ঘোষবাগ', 0, 0),
(1302, 132, NULL, 'চাপরাশিরহাট', 0, 0),
(1303, 132, NULL, 'ধানশালিক', 0, 0),
(1304, 132, NULL, 'বাটইয়া', 0, 0),
(1305, 130, NULL, 'ছাতারপাইয়া', 0, 0),
(1306, 130, NULL, 'কেশরপাড়া', 0, 0),
(1307, 130, NULL, 'ডুমুরুয়া', 0, 0),
(1308, 130, NULL, 'কাদরা', 0, 0),
(1309, 130, NULL, 'অর্জুনতলা', 0, 0),
(1310, 130, NULL, 'কাবিলপুর', 0, 0),
(1311, 130, NULL, 'মোহাম্মদপুর', 0, 0),
(1312, 130, NULL, 'নবীপুর', 0, 0),
(1313, 130, NULL, 'বিজবাগ', 0, 0),
(1314, 128, NULL, 'সাহাপুর', 0, 0),
(1315, 128, NULL, 'রামনারায়নপুর', 0, 0),
(1316, 128, NULL, 'পরকোট', 0, 0),
(1317, 128, NULL, 'বাদলকোট', 0, 0),
(1318, 128, NULL, 'পাঁচগাঁও', 0, 0),
(1319, 128, NULL, 'হাট-পুকুরিয়া', 0, 0),
(1320, 128, NULL, 'নোয়াখলা', 0, 0),
(1321, 128, NULL, 'খিলপাড়া', 0, 0),
(1322, 128, NULL, 'মোহাম্মদপুর', 0, 0),
(1323, 133, NULL, 'জয়াগ', 0, 0),
(1324, 133, NULL, 'নদনা', 0, 0),
(1325, 133, NULL, 'চাষীরহাট', 0, 0),
(1326, 133, NULL, 'বারগাঁও', 0, 0),
(1327, 133, NULL, 'অম্বরনগর', 0, 0),
(1328, 133, NULL, 'নাটেশ্বর', 0, 0),
(1329, 133, NULL, 'বজরা', 0, 0),
(1330, 133, NULL, 'সোনাপুর', 0, 0),
(1331, 133, NULL, 'দেওটি', 0, 0),
(1332, 133, NULL, 'আমিশাপাড়া', 0, 0),
(1333, 62, NULL, 'গাজীপুর', 0, 0),
(1334, 62, NULL, 'আলগী দুর্গাপুর', 0, 0),
(1335, 62, NULL, 'আলগী দুর্গাপুরদক্ষিণ', 0, 0),
(1336, 62, NULL, 'নীলকমল', 0, 0),
(1337, 62, NULL, 'হাইমচর', 0, 0),
(1338, 64, NULL, 'পাথৈর', 0, 0),
(1339, 64, NULL, 'বিতারা', 0, 0),
(1340, 64, NULL, 'সহদেবপুর', 0, 0),
(1341, 64, NULL, 'সহদেবপুর', 0, 0),
(1342, 64, NULL, 'কচুয়া', 0, 0),
(1343, 64, NULL, 'কচুয়া', 0, 0),
(1344, 64, NULL, 'গোহাট', 0, 0),
(1345, 64, NULL, 'গোহাট', 0, 0),
(1346, 64, NULL, 'সাচার', 0, 0),
(1347, 67, NULL, 'টামটা দক্ষিণ', 0, 0),
(1348, 67, NULL, 'টামটা উত্তর', 0, 0),
(1349, 67, NULL, 'মেহের', 0, 0),
(1350, 67, NULL, 'মেহের', 0, 0),
(1351, 67, NULL, 'সুচিপাড়া', 0, 0),
(1352, 67, NULL, 'সুচিপাড়া', 0, 0),
(1353, 67, NULL, 'চিতষী', 0, 0),
(1354, 67, NULL, 'রায়শ্রী', 0, 0),
(1355, 67, NULL, 'রায়শ্রী', 0, 0),
(1356, 67, NULL, 'চিতষী', 0, 0),
(1357, 60, NULL, 'বিষ্ণপুর', 0, 0),
(1358, 60, NULL, 'আশিকাটি', 0, 0),
(1359, 60, NULL, 'শাহ্‌', 0, 0),
(1360, 60, NULL, 'কল্যাণপুর', 0, 0),
(1361, 60, NULL, 'রামপুর', 0, 0),
(1362, 60, NULL, 'মৈশাদী', 0, 0),
(1363, 60, NULL, 'তরপুচন্ডী', 0, 0),
(1364, 60, NULL, 'বাগাদী', 0, 0),
(1365, 60, NULL, 'লক্ষীপুর মডেল', 0, 0),
(1366, 60, NULL, 'হানারচর', 0, 0),
(1367, 60, NULL, 'চান্দ্রা', 0, 0),
(1368, 60, NULL, 'রাজরাজেশ্বর', 0, 0),
(1369, 60, NULL, 'ইব্রাহীমপুর', 0, 0),
(1370, 60, NULL, 'বালিয়া', 0, 0),
(1371, 66, NULL, 'নায়েরগাঁও উত্তর', 0, 0),
(1372, 66, NULL, 'নায়েরগাঁও দক্ষিন', 0, 0),
(1373, 66, NULL, 'খাদেরগাঁও', 0, 0),
(1374, 66, NULL, 'নারায়নপুর', 0, 0),
(1375, 66, NULL, 'উপাদী', 0, 0),
(1376, 66, NULL, 'উপাদী', 0, 0),
(1377, 63, NULL, 'রাজারগাঁও', 0, 0),
(1378, 63, NULL, 'বাকিলা', 0, 0),
(1379, 63, NULL, 'কালচোঁ উত্তর', 0, 0),
(1380, 63, NULL, 'হাজীগঞ্জ সদর', 0, 0),
(1381, 63, NULL, 'কালচোঁ', 0, 0),
(1382, 63, NULL, 'বড়কুল', 0, 0),
(1383, 63, NULL, 'বড়কুল', 0, 0),
(1384, 63, NULL, 'হাটিলা', 0, 0),
(1385, 63, NULL, 'হাটিলা', 0, 0),
(1386, 63, NULL, 'গন্ধর্ব্যপুর', 0, 0),
(1387, 63, NULL, 'গন্ধর্ব্যপুর', 0, 0),
(1388, 65, NULL, 'ফতেহপুর', 0, 0),
(1389, 65, NULL, 'ফতেহপুর', 0, 0),
(1390, 61, NULL, 'বালিথুবা পশ্চিম ইউনিয়ন', 0, 0),
(1391, 61, NULL, 'বালিথুবা পূর্ব ইউনিয়ন', 0, 0),
(1392, 61, NULL, 'সুবিদপুর', 0, 0),
(1393, 61, NULL, 'সুবিদপুর', 0, 0),
(1394, 61, NULL, 'গুপ্তি', 0, 0),
(1395, 61, NULL, 'গুপ্তি', 0, 0),
(1396, 61, NULL, 'পাইকপাড়া', 0, 0),
(1397, 61, NULL, 'পাইকপাড়া', 0, 0),
(1398, 61, NULL, 'গবিন্দপুর', 0, 0);
INSERT INTO `unions` (`id`, `upazila_id`, `name`, `bn_name`, `lat`, `lon`) VALUES
(1399, 61, NULL, 'গবিন্দপুর', 0, 0),
(1400, 61, NULL, 'চরদুখিয়া', 0, 0),
(1401, 61, NULL, 'চরদুঃখিয়া', 0, 0),
(1402, 61, NULL, 'ফরিদ্গঞ্জ দক্ষিণ', 0, 0),
(1403, 61, NULL, 'রুপসা', 0, 0),
(1404, 61, NULL, 'রুপসা', 0, 0),
(1405, 121, NULL, 'উত্তর হামছাদী', 0, 0),
(1406, 121, NULL, 'দক্ষিন হামছাদী', 0, 0),
(1407, 121, NULL, 'দালাল বাজার', 0, 0),
(1408, 121, NULL, 'চররুহিতা', 0, 0),
(1409, 121, NULL, 'পার্বতীনগর', 0, 0),
(1410, 121, NULL, 'বাঙ্গাখাঁ', 0, 0),
(1411, 121, NULL, 'দত্তপাড়া', 0, 0),
(1412, 121, NULL, 'বশিকপুর', 0, 0),
(1413, 121, NULL, 'চন্দ্রগঞ্জ', 0, 0),
(1414, 121, NULL, 'উত্তর জয়পুর', 0, 0),
(1415, 121, NULL, 'হাজিরপাড়া', 0, 0),
(1416, 121, NULL, 'চরশাহী', 0, 0),
(1417, 121, NULL, 'দিঘলী', 0, 0),
(1418, 121, NULL, 'লাহারকান্দি', 0, 0),
(1419, 121, NULL, 'ভবানীগঞ্জ', 0, 0),
(1420, 121, NULL, 'কুশাখালী', 0, 0),
(1421, 121, NULL, 'শাকচর', 0, 0),
(1422, 121, NULL, 'তেয়ারীগঞ্জ', 0, 0),
(1423, 121, NULL, 'টুমচর', 0, 0),
(1424, 121, NULL, 'চররমনী মোহন', 0, 0),
(1425, 125, NULL, 'চর কালকিনি', 0, 0),
(1426, 125, NULL, 'সাহেবেরহাট', 0, 0),
(1427, 125, NULL, 'চর মার্টিন', 0, 0),
(1428, 125, NULL, 'চর ফলকন', 0, 0),
(1429, 125, NULL, 'পাটারীরহাট', 0, 0),
(1430, 125, NULL, 'হাজিরহাট', 0, 0),
(1431, 125, NULL, 'চর কাদিরা', 0, 0),
(1432, 125, NULL, 'তোরাবগঞ্জ', 0, 0),
(1433, 125, NULL, 'চর লরেঞ্চ', 0, 0),
(1434, 122, NULL, 'উত্তর চর আবাবিল', 0, 0),
(1435, 122, NULL, 'উত্তর চর বংশী', 0, 0),
(1436, 122, NULL, 'চর মোহনা', 0, 0),
(1437, 122, NULL, 'সোনাপুর', 0, 0),
(1438, 122, NULL, 'চর পাতা', 0, 0),
(1439, 122, NULL, 'বামনী', 0, 0),
(1440, 122, NULL, 'দক্ষিন চর বংশী', 0, 0),
(1441, 122, NULL, 'দক্ষিন চর আবাবিল', 0, 0),
(1442, 122, NULL, 'রায়পুর', 0, 0),
(1443, 122, NULL, 'কেরোয়া', 0, 0),
(1444, 124, NULL, 'চর পোড়াগাছা', 0, 0),
(1445, 124, NULL, 'চর বাদাম', 0, 0),
(1446, 124, NULL, 'চর আবদুল্যাহ', 0, 0),
(1447, 124, NULL, 'আলেকজান্ডার', 0, 0),
(1448, 124, NULL, 'চর আলগী', 0, 0),
(1449, 124, NULL, 'চর রমিজ', 0, 0),
(1450, 124, NULL, 'বড়খেড়ী', 0, 0),
(1451, 124, NULL, 'চরগাজী', 0, 0),
(1452, 123, NULL, 'কাঞ্চনপুর', 0, 0),
(1453, 123, NULL, 'নোয়াগাঁও ইউনিয়ন', 0, 0),
(1454, 123, NULL, 'ভাদুর', 0, 0),
(1455, 123, NULL, 'ইছাপুর', 0, 0),
(1456, 123, NULL, 'চন্ডিপুর', 0, 0),
(1457, 123, NULL, 'লামচর', 0, 0),
(1458, 123, NULL, 'দরবেশপুর', 0, 0),
(1459, 123, NULL, 'করপাড়া', 0, 0),
(1460, 123, NULL, 'ভোলাকোট', 0, 0),
(1461, 123, NULL, 'ভাটরা', 0, 0),
(1462, 77, NULL, 'রাজানগর', 0, 0),
(1463, 77, NULL, 'হোছনাবাদ', 0, 0),
(1464, 77, NULL, 'স্বনির্ভর রাঙ্গুনিয়া', 0, 0),
(1465, 77, NULL, 'মরিয়মনগর', 0, 0),
(1466, 77, NULL, 'পারুয়া', 0, 0),
(1467, 77, NULL, 'পোমরা', 0, 0),
(1468, 77, NULL, 'বেতাগী', 0, 0),
(1469, 77, NULL, 'সরফভাটা', 0, 0),
(1470, 77, NULL, 'শিলক', 0, 0),
(1471, 77, NULL, 'চন্দ্রঘোনা', 0, 0),
(1472, 77, NULL, 'কোদালা', 0, 0),
(1473, 77, NULL, 'ইসলামপুর', 0, 0),
(1474, 77, NULL, 'দক্ষিণ রাজানগর ইউনিয়ন', 0, 0),
(1475, 77, NULL, 'লালানগর', 0, 0),
(1476, 81, NULL, 'কুমিরা', 0, 0),
(1477, 81, NULL, 'বাঁশবারীয়া', 0, 0),
(1478, 81, NULL, 'বারবকুন্ড', 0, 0),
(1479, 81, NULL, 'বাড়িয়াডিয়ালা', 0, 0),
(1480, 81, NULL, 'মুরাদপুর', 0, 0),
(1481, 81, NULL, 'সাঈদপুর', 0, 0),
(1482, 81, NULL, 'সালিমপুর', 0, 0),
(1483, 81, NULL, 'সোনাইছড়ি', 0, 0),
(1484, 81, NULL, 'ভাটিয়ারী', 0, 0),
(1485, 75, NULL, 'করেরহাট', 0, 0),
(1486, 75, NULL, 'হিংগুলি', 0, 0),
(1487, 75, NULL, 'জোরারগঞ্জ', 0, 0),
(1488, 75, NULL, 'ধুম', 0, 0),
(1489, 75, NULL, 'ওসমানপুর', 0, 0),
(1490, 75, NULL, 'ইছাখালী', 0, 0),
(1491, 75, NULL, 'কাটাছরা', 0, 0),
(1492, 75, NULL, 'দূর্গাপুর', 0, 0),
(1493, 75, NULL, 'মীরসরাই', 0, 0),
(1494, 75, NULL, 'মিঠানালা', 0, 0),
(1495, 75, NULL, 'মঘাদিয়া', 0, 0),
(1496, 75, NULL, 'খৈয়াছরা', 0, 0),
(1497, 75, NULL, 'মায়ানী', 0, 0),
(1498, 75, NULL, 'হাইতকান্দি', 0, 0),
(1499, 75, NULL, 'ওয়াহেদপুর', 0, 0),
(1500, 75, NULL, 'সাহেরখালী', 0, 0),
(1501, 76, NULL, 'আশিয়া', 0, 0),
(1502, 76, NULL, 'কাচুয়াই', 0, 0),
(1503, 76, NULL, 'কাশিয়াইশ', 0, 0),
(1504, 76, NULL, 'কুসুমপুরা', 0, 0),
(1505, 76, NULL, 'কেলিশহর', 0, 0),
(1506, 76, NULL, 'কোলাগাঁও', 0, 0),
(1507, 76, NULL, 'খরনা', 0, 0),
(1508, 76, NULL, 'চরপাথরঘাটা', 0, 0),
(1509, 76, NULL, 'চরলক্ষ্যা', 0, 0),
(1510, 76, NULL, 'ছনহরা', 0, 0),
(1511, 76, NULL, 'জঙ্গলখাইন', 0, 0),
(1512, 76, NULL, 'জিরি', 0, 0),
(1513, 76, NULL, 'জুলধা', 0, 0),
(1514, 76, NULL, 'দক্ষিণ ভূর্ষি', 0, 0),
(1515, 76, NULL, 'ধলঘাট', 0, 0),
(1516, 76, NULL, 'বড় উঠান', 0, 0),
(1517, 76, NULL, 'বরলিয়া', 0, 0),
(1518, 76, NULL, 'ভাটিখাইন', 0, 0),
(1519, 76, NULL, 'শিকলবাহা', 0, 0),
(1520, 76, NULL, 'শোভনদন্ডী', 0, 0),
(1521, 76, NULL, 'হাবিলাসদ্বীপ', 0, 0),
(1522, 76, NULL, 'হাইদগাঁও', 0, 0),
(1523, 79, NULL, 'রহমতপুর ইউনিয়ন', 0, 0),
(1524, 79, NULL, 'হরিশপুর', 0, 0),
(1525, 79, NULL, 'কালাপানিয়া', 0, 0),
(1526, 79, NULL, 'আমানউল্যা', 0, 0),
(1527, 79, NULL, 'সন্তোষপুর', 0, 0),
(1528, 79, NULL, 'গাছুয়া', 0, 0),
(1529, 79, NULL, 'বাউরিয়া', 0, 0),
(1530, 79, NULL, 'হারামিয়া', 0, 0),
(1531, 79, NULL, 'মগধরা', 0, 0),
(1532, 79, NULL, 'মাইটভাঙ্গা', 0, 0),
(1533, 79, NULL, 'সারিকাইত', 0, 0),
(1534, 79, NULL, 'মুছাপুর', 0, 0),
(1535, 79, NULL, 'আজিমপুর', 0, 0),
(1536, 79, NULL, 'উড়িরচর', 0, 0),
(1537, 69, NULL, 'পুকুরিয়া', 0, 0),
(1538, 69, NULL, 'সাধনপুর', 0, 0),
(1539, 69, NULL, 'খানখানাবাদ', 0, 0),
(1540, 69, NULL, 'বাহারছড়া', 0, 0),
(1541, 69, NULL, 'কালীপুর', 0, 0),
(1542, 69, NULL, 'বৈলছড়ি', 0, 0),
(1543, 69, NULL, 'কাথরিয়া', 0, 0),
(1544, 69, NULL, 'সরল', 0, 0),
(1545, 69, NULL, 'শীলকুপ', 0, 0),
(1546, 69, NULL, 'চাম্বল', 0, 0),
(1547, 69, NULL, 'গন্ডামারা', 0, 0),
(1548, 69, NULL, 'শেখেরখীল', 0, 0),
(1549, 69, NULL, 'পুঁইছড়ি', 0, 0),
(1550, 69, NULL, 'ছনুয়া', 0, 0),
(1551, 70, NULL, 'কধুরখীল', 0, 0),
(1552, 70, NULL, 'পশ্চিম গোমদন্ডী', 0, 0),
(1553, 70, NULL, 'পুর্ব গোমদন্ডী', 0, 0),
(1554, 70, NULL, 'শাকপুরা ইউনিয়ন', 0, 0),
(1555, 70, NULL, 'সারোয়াতলী', 0, 0),
(1556, 70, NULL, 'পোপাদিয়া ইউনিয়ন', 0, 0),
(1557, 70, NULL, 'চরনদ্বীপ', 0, 0),
(1558, 70, NULL, 'শ্রীপুর-খরন্দীপ', 0, 0),
(1559, 70, NULL, 'আমুচিয়া ইউনিয়ন', 0, 0),
(1560, 70, NULL, 'আহল্লা করলডেঙ্গা', 0, 0),
(1561, 68, NULL, 'বৈরাগ', 0, 0),
(1562, 68, NULL, 'বারশত', 0, 0),
(1563, 68, NULL, 'রায়পুর', 0, 0),
(1564, 68, NULL, 'বটতলী', 0, 0),
(1565, 68, NULL, 'বরম্নমচড়া', 0, 0),
(1566, 68, NULL, 'বারখাইন', 0, 0),
(1567, 68, NULL, 'আনোয়ারা', 0, 0),
(1568, 68, NULL, 'চাতরী', 0, 0),
(1569, 68, NULL, 'পরৈকোড়া', 0, 0),
(1570, 68, NULL, 'হাইলধর', 0, 0),
(1571, 68, NULL, 'জুঁইদন্ডী', 0, 0),
(1572, 71, NULL, 'কাঞ্চনাবাদ', 0, 0),
(1573, 71, NULL, 'জোয়ারা', 0, 0),
(1574, 71, NULL, 'বরকল', 0, 0),
(1575, 71, NULL, 'বরমা', 0, 0),
(1576, 71, NULL, 'বৈলতলী', 0, 0),
(1577, 71, NULL, 'সাতবাড়িয়া', 0, 0),
(1578, 71, NULL, 'হাশিমপুর', 0, 0),
(1579, 71, NULL, 'দোহাজারী', 0, 0),
(1580, 71, NULL, 'ধোপাছড়ী', 0, 0),
(1581, 80, NULL, 'চরতী', 0, 0),
(1582, 80, NULL, 'খাগরিয়া', 0, 0),
(1583, 80, NULL, 'নলুয়া', 0, 0),
(1584, 80, NULL, 'কাঞ্চনা', 0, 0),
(1585, 80, NULL, 'আমিলাইশ', 0, 0),
(1586, 80, NULL, 'এওচিয়া', 0, 0),
(1587, 80, NULL, 'মাদার্শা', 0, 0),
(1588, 80, NULL, 'ঢেমশা', 0, 0),
(1589, 80, NULL, 'পশ্চিম ঢেমশা', 0, 0),
(1590, 80, NULL, 'কেঁওচিয়া', 0, 0),
(1591, 80, NULL, 'কালিয়াইশ', 0, 0),
(1592, 80, NULL, 'বাজালিয়া', 0, 0),
(1593, 80, NULL, 'পুরানগড়', 0, 0),
(1594, 80, NULL, 'ছদাহা', 0, 0),
(1595, 80, NULL, 'সাতকানিয়া', 0, 0),
(1596, 80, NULL, 'সোনাকানিয়া', 0, 0),
(1597, 74, NULL, 'পদুয়া', 0, 0),
(1598, 74, NULL, 'বড়হাতিয়া', 0, 0),
(1599, 74, NULL, 'আমিরাবাদ', 0, 0),
(1600, 74, NULL, 'চরম্বা', 0, 0),
(1601, 74, NULL, 'কলাউজান', 0, 0),
(1602, 74, NULL, 'লোহাগাড়া', 0, 0),
(1603, 74, NULL, 'পুটিবিলা', 0, 0),
(1604, 74, NULL, 'চুনতি', 0, 0),
(1605, 74, NULL, 'আধুনগর', 0, 0),
(1606, 73, NULL, 'ফরহাদাবাদ', 0, 0),
(1607, 73, NULL, 'ধলই', 0, 0),
(1608, 73, NULL, 'মির্জাপুর', 0, 0),
(1609, 73, NULL, 'নাঙ্গলমোরা', 0, 0),
(1610, 73, NULL, 'গুমানমর্দ্দন', 0, 0),
(1611, 73, NULL, 'ছিপাতলী', 0, 0),
(1612, 73, NULL, 'মেখল', 0, 0),
(1613, 73, NULL, 'গড়দুয়ারা', 0, 0),
(1614, 73, NULL, 'ফতেপুর', 0, 0),
(1615, 73, NULL, 'চিকনদন্ডী', 0, 0),
(1616, 73, NULL, 'উত্তর মাদার্শা', 0, 0),
(1617, 73, NULL, 'দক্ষিন মাদার্শা', 0, 0),
(1618, 73, NULL, 'শিকারপুর', 0, 0),
(1619, 73, NULL, 'বুডিরশ্চর', 0, 0),
(1620, 73, NULL, 'হাটহাজারী', 0, 0),
(1621, 72, NULL, 'ধর্মপুর', 0, 0),
(1622, 72, NULL, 'বাগান বাজার', 0, 0),
(1623, 72, NULL, 'দাঁতমারা', 0, 0),
(1624, 72, NULL, 'নারায়নহাট ইউনিয়ন', 0, 0),
(1625, 72, NULL, 'ভূজপুর ইউনিয়ন', 0, 0),
(1626, 72, NULL, 'হারুয়ালছড়ি ইউনিয়ন', 0, 0),
(1627, 72, NULL, 'পাইনদং ইউনিয়ন', 0, 0),
(1628, 72, NULL, 'কাঞ্চনগর ইউনিয়ন', 0, 0),
(1629, 72, NULL, 'সুনদরপুর ইউনিয়ন', 0, 0),
(1630, 72, NULL, 'সুয়াবিল ইউনিয়ন', 0, 0),
(1631, 72, NULL, 'আবদুল্লাপুর ইউনিয়ন', 0, 0),
(1632, 72, NULL, 'সমিতির হাট ইউনিয়ন', 0, 0),
(1633, 72, NULL, 'জাফতনগর ইউনিয়ন', 0, 0),
(1634, 72, NULL, 'বক্তপুর ইউনিয়ন', 0, 0),
(1635, 72, NULL, 'রোসাংগিরী ইউনিয়ন', 0, 0),
(1636, 72, NULL, 'নানুপুর ইউনিয়ন', 0, 0),
(1637, 72, NULL, 'লেলাং ইউনিয়ন', 0, 0),
(1638, 72, NULL, 'দৌলতপুর ইউনিয়ন', 0, 0),
(1639, 78, NULL, 'রাউজান', 0, 0),
(1640, 78, NULL, 'বাগোয়ান', 0, 0),
(1641, 78, NULL, 'বিনাজুরী', 0, 0),
(1642, 78, NULL, 'চিকদাইর', 0, 0),
(1643, 78, NULL, 'ডাবুয়া', 0, 0),
(1644, 78, NULL, 'পূর্ব গুজরা', 0, 0),
(1645, 78, NULL, 'পশ্চিম গুজরা', 0, 0),
(1646, 78, NULL, 'গহিরা', 0, 0),
(1647, 78, NULL, 'হলদিয়া', 0, 0),
(1648, 78, NULL, 'কদলপূর', 0, 0),
(1649, 78, NULL, 'নোয়াপাড়া', 0, 0),
(1650, 78, NULL, 'পাহাড়তলী', 0, 0),
(1651, 78, NULL, 'উড়কিরচর', 0, 0),
(1652, 78, NULL, 'নওয়াজিশপুর', 0, 0),
(1653, 100, NULL, 'ইসলামাবাদ', 0, 0),
(1654, 100, NULL, 'ইসলামপুর', 0, 0),
(1655, 100, NULL, 'পোকখালী', 0, 0),
(1656, 100, NULL, 'ঈদগাঁও', 0, 0),
(1657, 100, NULL, 'জালালাবাদ', 0, 0),
(1658, 100, NULL, 'চৌফলদন্ডী', 0, 0),
(1659, 100, NULL, 'ভারুয়াখালী', 0, 0),
(1660, 100, NULL, 'পিএমখালী', 0, 0),
(1661, 100, NULL, 'খুরুশকুল', 0, 0),
(1662, 100, NULL, 'ঝিলংঝা', 0, 0),
(1663, 98, NULL, 'কাকারা', 0, 0),
(1664, 98, NULL, 'কাইয়ার বিল', 0, 0),
(1665, 98, NULL, 'কোনাখালী', 0, 0),
(1666, 98, NULL, 'খুটাখালী', 0, 0),
(1667, 98, NULL, 'চিরিঙ্গা', 0, 0),
(1668, 98, NULL, 'ঢেমুশিয়া', 0, 0),
(1669, 98, NULL, 'ডুলাহাজারা', 0, 0),
(1670, 98, NULL, 'পশ্চিম বড় ভেওলা', 0, 0),
(1671, 98, NULL, 'বদরখালী', 0, 0),
(1672, 98, NULL, 'বামু বিলছড়ি', 0, 0),
(1673, 98, NULL, 'বড়ইতলী', 0, 0),
(1674, 98, NULL, 'ভেওলা মানিকচর', 0, 0),
(1675, 98, NULL, 'শাহারবিল', 0, 0),
(1676, 98, NULL, 'সুরজপুর মানিকপুর', 0, 0),
(1677, 98, NULL, 'হারবাঙ্গ', 0, 0),
(1678, 98, NULL, 'ফাঁসিয়াখালী', 0, 0),
(1679, 101, NULL, 'আলি আকবর ডেইল', 0, 0),
(1680, 101, NULL, 'উত্তর ধুরুং', 0, 0),
(1681, 101, NULL, 'কৈয়ারবিল', 0, 0),
(1682, 101, NULL, 'দক্ষিণ ধুরুং', 0, 0),
(1683, 101, NULL, 'বড়ঘোপ', 0, 0),
(1684, 101, NULL, 'লেমসিখালী', 0, 0),
(1685, 105, NULL, 'রাজাপালং', 0, 0),
(1686, 105, NULL, 'জালিয়াপালং', 0, 0),
(1687, 105, NULL, 'হলদিয়াপালং', 0, 0),
(1688, 105, NULL, 'রত্নাপালং', 0, 0),
(1689, 105, NULL, 'পালংখালী', 0, 0),
(1690, 102, NULL, 'বড় মহেশখালী', 0, 0),
(1691, 102, NULL, 'ছোট মহেশখালী', 0, 0),
(1692, 102, NULL, 'শাপলাপুর', 0, 0),
(1693, 102, NULL, 'কুতুবজোম', 0, 0),
(1694, 102, NULL, 'হোয়ানক', 0, 0),
(1695, 102, NULL, 'কালারমারছড়া', 0, 0),
(1696, 102, NULL, 'মাতারবাড়ী', 0, 0),
(1697, 102, NULL, 'ধলঘাটা', 0, 0),
(1698, 106, NULL, 'উজানটিয়া', 0, 0),
(1699, 106, NULL, 'টাইটং', 0, 0),
(1700, 106, NULL, 'পেকুয়া', 0, 0),
(1701, 106, NULL, 'বড় বাকিয়া', 0, 0),
(1702, 106, NULL, 'মগনামা', 0, 0),
(1703, 106, NULL, 'রাজাখালী', 0, 0),
(1704, 106, NULL, 'শীলখালী', 0, 0),
(1705, 103, NULL, 'ফতেখাঁরকুল', 0, 0),
(1706, 103, NULL, 'রাজারকুল', 0, 0),
(1707, 103, NULL, 'রশীদনগর', 0, 0),
(1708, 103, NULL, 'খুনিয়াপালং', 0, 0),
(1709, 103, NULL, 'ঈদগড়', 0, 0),
(1710, 103, NULL, 'চাকমারকুল', 0, 0),
(1711, 103, NULL, 'কচ্ছপিয়া', 0, 0),
(1712, 103, NULL, 'কাউয়ারখোপ', 0, 0),
(1713, 103, NULL, 'দক্ষিণ মিঠাছড়ি', 0, 0),
(1714, 103, NULL, 'জোয়ারিয়া নালা', 0, 0),
(1715, 103, NULL, 'গর্জনিয়া', 0, 0),
(1716, 104, NULL, 'সাবরাং', 0, 0),
(1717, 104, NULL, 'বাহারছড়া', 0, 0),
(1718, 104, NULL, 'হ্নীলা', 0, 0),
(1719, 104, NULL, 'হোয়াইক্যং', 0, 0),
(1720, 104, NULL, 'সেন্ট মার্টিন', 0, 0),
(1721, 104, NULL, 'টেকনাফ সদর', 0, 0),
(1722, 114, NULL, 'খাগরাছড়ি সদর', 0, 0),
(1723, 114, NULL, 'গোলাবাড়ী', 0, 0),
(1724, 114, NULL, 'পেরাছড়া', 0, 0),
(1725, 114, NULL, 'কমলছড়ি', 0, 0),
(1726, 113, NULL, 'মেরুং', 0, 0),
(1727, 113, NULL, 'বোয়ালখালী', 0, 0),
(1728, 113, NULL, 'কবাখালী', 0, 0),
(1729, 113, NULL, 'দিঘীনালা', 0, 0),
(1730, 113, NULL, 'বাবুছড়া', 0, 0),
(1731, 119, NULL, 'লোগাং', 0, 0),
(1732, 119, NULL, 'চেংগী', 0, 0),
(1733, 119, NULL, 'পানছড়ি', 0, 0),
(1734, 119, NULL, 'লতিবান', 0, 0),
(1735, 115, NULL, 'দুল্যাতলী', 0, 0),
(1736, 115, NULL, 'বর্মাছড়ি', 0, 0),
(1737, 115, NULL, 'লক্ষীছড়ি', 0, 0),
(1738, 116, NULL, 'ভাইবোনছড়া', 0, 0),
(1739, 116, NULL, 'মহালছড়ি', 0, 0),
(1740, 116, NULL, 'মুবাছড়ি', 0, 0),
(1741, 116, NULL, 'ক্যায়াংঘাট', 0, 0),
(1742, 116, NULL, 'মাইসছড়ি', 0, 0),
(1743, 117, NULL, 'মানিকছড়ি', 0, 0),
(1744, 117, NULL, 'বাটনাতলী', 0, 0),
(1745, 117, NULL, 'যোগ্যছোলা', 0, 0),
(1746, 117, NULL, 'তিনটহরী', 0, 0),
(1747, 120, NULL, 'রামগড়', 0, 0),
(1748, 120, NULL, 'পাতাছড়া', 0, 0),
(1749, 120, NULL, 'হাফছড়ি', 0, 0),
(1750, 118, NULL, 'তাইন্দং', 0, 0),
(1751, 118, NULL, 'তবলছড়ি', 0, 0),
(1752, 118, NULL, 'বর্ণাল', 0, 0),
(1753, 118, NULL, 'গোমতি', 0, 0),
(1754, 118, NULL, 'বেলছড়ি', 0, 0),
(1755, 118, NULL, 'মাটিরাঙ্গা', 0, 0),
(1756, 118, NULL, 'গুইমারা', 0, 0),
(1757, 118, NULL, 'আমতলি', 0, 0),
(1758, 43, NULL, 'রাজবিলা', 0, 0),
(1759, 43, NULL, 'টংকাবতী ইউনিয়ন', 0, 0),
(1760, 43, NULL, 'সুয়ালক ইউনিয়ন', 0, 0),
(1761, 43, NULL, 'বান্দরবান সদর', 0, 0),
(1762, 43, NULL, 'কুহালং', 0, 0),
(1763, 47, NULL, 'আলীকদম সদর ইউনিয়ন', 0, 0),
(1764, 47, NULL, 'চৈক্ষ্যং ইউনিয়ন', 0, 0),
(1765, 46, NULL, 'নাইক্ষ্যংছড়ি সদর ইউনিয়ন', 0, 0),
(1766, 46, NULL, 'ঘুমধুম ইউনিয়ন', 0, 0),
(1767, 46, NULL, 'বাইশারী', 0, 0),
(1768, 46, NULL, 'সোনাইছড়ি', 0, 0),
(1769, 46, NULL, 'দোছড়ি', 0, 0),
(1770, 48, NULL, 'রোয়াংছড়ি সদর', 0, 0),
(1771, 48, NULL, 'তারাছা', 0, 0),
(1772, 48, NULL, 'আলেক্ষ্যং', 0, 0),
(1773, 48, NULL, 'নোয়াপতং', 0, 0),
(1774, 45, NULL, 'গজালিয়া', 0, 0),
(1775, 45, NULL, 'লামা সদর', 0, 0),
(1776, 45, NULL, 'ফাসিয়াখালী', 0, 0),
(1777, 45, NULL, 'ফাইতং', 0, 0),
(1778, 45, NULL, 'রূপসীপাড়া', 0, 0),
(1779, 45, NULL, 'সরই ইউনিয়ন', 0, 0),
(1780, 45, NULL, 'আজিজনগর ইউনিয়ন', 0, 0),
(1781, 49, NULL, 'পাইন্দু ইউনিয়ন', 0, 0),
(1782, 49, NULL, 'রুমা সদর ইউনিয়ন', 0, 0),
(1783, 49, NULL, 'রেমাক্রীপ্রাংসা ইউনিয়ন', 0, 0),
(1784, 49, NULL, 'গ্যালেংগ্যা ইউনিয়ন', 0, 0),
(1785, 44, NULL, 'রেমাক্রী ইউনিয়ন', 0, 0),
(1786, 44, NULL, 'তিন্দু ইউনিয়ন', 0, 0),
(1787, 44, NULL, 'থানচি সদর ইউনিয়ন', 0, 0),
(1788, 44, NULL, 'বলিপাড়া ইউনিয়ন', 0, 0),
(1789, 387, NULL, 'রাজাপুর', 0, 0),
(1790, 387, NULL, 'বড়ধুল', 0, 0),
(1791, 387, NULL, 'বেলকুচি সদর', 0, 0),
(1792, 387, NULL, 'ধুকুরিয়া বেড়া', 0, 0),
(1793, 387, NULL, 'দৌলতপুর', 0, 0),
(1794, 387, NULL, 'ভাঙ্গাবাড়ী', 0, 0),
(1795, 388, NULL, 'বাঘুটিয়া', 0, 0),
(1796, 388, NULL, 'ঘোরজান', 0, 0),
(1797, 388, NULL, 'খাসকাউলিয়া', 0, 0),
(1798, 388, NULL, 'খাসপুকুরিয়া', 0, 0),
(1799, 388, NULL, 'উমারপুর', 0, 0),
(1800, 388, NULL, 'সদিয়া চাঁদপুর', 0, 0),
(1801, 388, NULL, 'স্থল', 0, 0),
(1802, 389, NULL, 'ভদ্রঘাট', 0, 0),
(1803, 389, NULL, 'জামতৈল', 0, 0),
(1804, 389, NULL, 'ঝাঐল', 0, 0),
(1805, 389, NULL, 'রায়দৌলতপুর', 0, 0),
(1806, 390, NULL, 'চালিতাডাঙ্গা', 0, 0),
(1807, 390, NULL, 'চরগিরিশ', 0, 0),
(1808, 390, NULL, 'গান্ধাইল', 0, 0),
(1809, 390, NULL, 'কাজিপুর সদর', 0, 0),
(1810, 390, NULL, 'খাসরাজবাড়ী', 0, 0),
(1811, 390, NULL, 'মাইজবাড়ী', 0, 0),
(1812, 390, NULL, 'মনসুর নগর', 0, 0),
(1813, 390, NULL, 'নাটুয়ারপাড়া', 0, 0),
(1814, 390, NULL, 'নিশ্চিন্তপুর', 0, 0),
(1815, 390, NULL, 'সোনামুখী', 0, 0),
(1816, 390, NULL, 'শুভগাছা', 0, 0),
(1817, 390, NULL, 'তেকানী', 0, 0),
(1818, 391, NULL, 'ব্রহ্মগাছা', 0, 0),
(1819, 391, NULL, 'চান্দাইকোনা', 0, 0),
(1820, 391, NULL, 'ধামাইনগর', 0, 0),
(1821, 391, NULL, 'ধানগড়া', 0, 0),
(1822, 391, NULL, 'ধুবিল', 0, 0),
(1823, 391, NULL, 'ঘুড়কা', 0, 0),
(1824, 391, NULL, 'নলকা', 0, 0),
(1825, 391, NULL, 'পাঙ্গাসী', 0, 0),
(1826, 391, NULL, 'সোনাখাড়া', 0, 0),
(1827, 392, NULL, 'বেলতৈল', 0, 0),
(1828, 392, NULL, 'জালালপুর', 0, 0),
(1829, 392, NULL, 'কায়েমপুর', 0, 0),
(1830, 392, NULL, 'গাড়াদহ', 0, 0),
(1831, 392, NULL, 'পোতাজিয়া', 0, 0),
(1832, 392, NULL, 'রূপবাটি', 0, 0),
(1833, 392, NULL, 'গালা', 0, 0),
(1834, 392, NULL, 'পোরজনা', 0, 0),
(1835, 392, NULL, 'হাবিবুল্লাহ নগর', 0, 0),
(1836, 392, NULL, 'খুকনী', 0, 0),
(1837, 392, NULL, 'কৈজুরী', 0, 0),
(1838, 392, NULL, 'সোনাতনী', 0, 0),
(1839, 392, NULL, 'নরিনা', 0, 0),
(1840, 386, NULL, 'বাগবাটি', 0, 0),
(1841, 386, NULL, 'রতনকান্দি', 0, 0),
(1842, 386, NULL, 'বহুলী', 0, 0),
(1843, 386, NULL, 'শিয়ালকোল', 0, 0),
(1844, 386, NULL, 'খোকশাবাড়ী', 0, 0),
(1845, 386, NULL, 'ছোনগাছা', 0, 0),
(1846, 386, NULL, 'মেছড়া', 0, 0),
(1847, 386, NULL, 'কাওয়াখোলা', 0, 0),
(1848, 386, NULL, 'কালিয়াহরিপুর', 0, 0),
(1849, 386, NULL, 'সয়দাবাদ', 0, 0),
(1850, 393, NULL, 'বারুহাস', 0, 0),
(1851, 393, NULL, 'তালম', 0, 0),
(1852, 393, NULL, 'সগুনা', 0, 0),
(1853, 393, NULL, 'মাগুড়া বিনোদ', 0, 0),
(1854, 393, NULL, 'নওগাঁ', 0, 0),
(1855, 393, NULL, 'তাড়াশ সদর', 0, 0),
(1856, 393, NULL, 'মাধাইনগর', 0, 0),
(1857, 393, NULL, 'দেশীগ্রাম', 0, 0),
(1858, 394, NULL, 'উল্লাপাড়া সদর', 0, 0),
(1859, 394, NULL, 'রামকৃষ্ণপুর', 0, 0),
(1860, 394, NULL, 'বাঙ্গালা', 0, 0),
(1861, 394, NULL, 'উধুনিয়া', 0, 0),
(1862, 394, NULL, 'বড়পাঙ্গাসী', 0, 0),
(1863, 394, NULL, 'দুর্গা নগর', 0, 0),
(1864, 394, NULL, 'পূর্ণিমাগাতী', 0, 0),
(1865, 394, NULL, 'সলঙ্গা', 0, 0),
(1866, 394, NULL, 'হটিকুমরুল', 0, 0),
(1867, 394, NULL, 'বড়হর', 0, 0),
(1868, 394, NULL, 'পঞ্চক্রোশী', 0, 0),
(1869, 394, NULL, 'সলপ', 0, 0),
(1870, 394, NULL, 'মোহনপুর', 0, 0),
(1871, 376, NULL, 'ভায়না', 0, 0),
(1872, 376, NULL, 'তাঁতিবন্দ', 0, 0),
(1873, 376, NULL, 'মানিকহাট', 0, 0),
(1874, 376, NULL, 'দুলাই', 0, 0),
(1875, 376, NULL, 'আহম্মদপুর', 0, 0),
(1876, 376, NULL, 'রাণীনগর', 0, 0),
(1877, 376, NULL, 'সাতবাড়ীয়া', 0, 0),
(1878, 376, NULL, 'হাটখালী', 0, 0),
(1879, 376, NULL, 'নাজিরগঞ্জ', 0, 0),
(1880, 376, NULL, 'সাগরকান্দি', 0, 0),
(1881, 373, NULL, 'সাঁড়া', 0, 0),
(1882, 373, NULL, 'পাকশী', 0, 0),
(1883, 373, NULL, 'মুলাডুলি', 0, 0),
(1884, 373, NULL, 'দাশুরিয়া', 0, 0),
(1885, 373, NULL, 'ছলিমপুর', 0, 0),
(1886, 373, NULL, 'সাহাপুর', 0, 0),
(1887, 373, NULL, 'লক্ষীকুন্ডা', 0, 0),
(1888, 370, NULL, 'ভাঙ্গুড়া', 0, 0),
(1889, 370, NULL, 'খানমরিচ', 0, 0),
(1890, 370, NULL, 'অষ্টমণিষা', 0, 0),
(1891, 370, NULL, 'দিলপাশার', 0, 0),
(1892, 370, NULL, 'পারভাঙ্গুড়া', 0, 0),
(1893, 374, NULL, 'মালিগাছা', 0, 0),
(1894, 374, NULL, 'মালঞ্চি', 0, 0),
(1895, 374, NULL, 'গয়েশপুর', 0, 0),
(1896, 374, NULL, 'আতাইকুলা', 0, 0),
(1897, 374, NULL, 'চরতারাপুর', 0, 0),
(1898, 374, NULL, 'সাদুল্লাপুর', 0, 0),
(1899, 374, NULL, 'ভাঁড়ারা', 0, 0),
(1900, 374, NULL, 'দোগাছী', 0, 0),
(1901, 374, NULL, 'হেমায়েতপুর', 0, 0),
(1902, 374, NULL, 'দাপুনিয়া', 0, 0),
(1903, 369, NULL, 'হাটুরিয়া নাকালিয়া', 0, 0),
(1904, 369, NULL, 'নতুন ভারেঙ্গা', 0, 0),
(1905, 369, NULL, 'কৈটোলা', 0, 0),
(1906, 369, NULL, 'চাকলা', 0, 0),
(1907, 369, NULL, 'জাতসাখিনি', 0, 0),
(1908, 369, NULL, 'পুরান ভারেঙ্গা', 0, 0),
(1909, 369, NULL, 'রূপপুর', 0, 0),
(1910, 369, NULL, 'মাসুমদিয়া', 0, 0),
(1911, 369, NULL, 'ঢালার চর', 0, 0),
(1912, 368, NULL, 'মাজপাড়া', 0, 0),
(1913, 368, NULL, 'চাঁদভা', 0, 0),
(1914, 368, NULL, 'দেবোত্তর', 0, 0),
(1915, 368, NULL, 'একদন্ত', 0, 0),
(1916, 368, NULL, 'লক্ষীপুর', 0, 0),
(1917, 371, NULL, 'হান্ডিয়াল', 0, 0),
(1918, 371, NULL, 'ছাইকোলা', 0, 0),
(1919, 371, NULL, 'নিমাইচড়া', 0, 0),
(1920, 371, NULL, 'গুনাইগাছা', 0, 0),
(1921, 371, NULL, 'পার্শ্বডাঙ্গা', 0, 0),
(1922, 371, NULL, 'ফৈলজানা', 0, 0),
(1923, 371, NULL, 'মুলগ্রাম', 0, 0),
(1924, 371, NULL, 'হরিপুর', 0, 0),
(1925, 371, NULL, 'মথুরাপুর', 0, 0),
(1926, 371, NULL, 'বিলচলন', 0, 0),
(1927, 371, NULL, 'দাতিয়া বামনগ্রাম', 0, 0),
(1928, 375, NULL, 'নাগডেমড়া', 0, 0),
(1929, 375, NULL, 'ধুলাউড়ি', 0, 0),
(1930, 375, NULL, 'ভুলবাড়ীয়া', 0, 0),
(1931, 375, NULL, 'ধোপাদহ', 0, 0),
(1932, 375, NULL, 'করমজা', 0, 0),
(1933, 375, NULL, 'কাশিনাথপুর', 0, 0),
(1934, 375, NULL, 'গৌরীগ্রাম', 0, 0),
(1935, 375, NULL, 'নন্দনপুর', 0, 0),
(1936, 375, NULL, 'ক্ষেতুপাড়া', 0, 0),
(1937, 375, NULL, 'আর-আতাইকুলা', 0, 0),
(1938, 372, NULL, 'বৃলাহিড়ীবাড়ী', 0, 0),
(1939, 372, NULL, 'পুঙ্গুলি', 0, 0),
(1940, 372, NULL, 'ফরিদপুর', 0, 0),
(1941, 372, NULL, 'হাদল', 0, 0),
(1942, 372, NULL, 'বনওয়ারীনগর', 0, 0),
(1943, 372, NULL, 'ডেমড়া', 0, 0),
(1944, 335, NULL, 'বীরকেদার', 0, 0),
(1945, 335, NULL, 'কালাই', 0, 0),
(1946, 335, NULL, 'পাইকড়', 0, 0),
(1947, 335, NULL, 'নারহট্ট', 0, 0),
(1948, 335, NULL, 'মুরইল', 0, 0),
(1949, 335, NULL, 'কাহালু', 0, 0),
(1950, 335, NULL, 'দূর্গাপুর', 0, 0),
(1951, 335, NULL, 'জামগ্রাম', 0, 0),
(1952, 335, NULL, 'মালঞ্চা', 0, 0),
(1953, 330, NULL, 'ফাঁপোর', 0, 0),
(1954, 330, NULL, 'সাবগ্রাম', 0, 0),
(1955, 330, NULL, 'নিশিন্দারা', 0, 0),
(1956, 330, NULL, 'এরুলিয়া', 0, 0),
(1957, 330, NULL, 'রাজাপুর', 0, 0),
(1958, 330, NULL, 'শাখারিয়া', 0, 0),
(1959, 330, NULL, 'শেখেরকোলা', 0, 0),
(1960, 330, NULL, 'গোকুল', 0, 0),
(1961, 330, NULL, 'নুনগোলা', 0, 0),
(1962, 330, NULL, 'লাহিড়ীপাড়া', 0, 0),
(1963, 330, NULL, 'নামুজা', 0, 0),
(1964, 338, NULL, 'সারিয়াকান্দি সদর', 0, 0),
(1965, 338, NULL, 'নারচী', 0, 0),
(1966, 338, NULL, 'বোহাইল', 0, 0),
(1967, 338, NULL, 'চালুয়াবাড়ী', 0, 0),
(1968, 338, NULL, 'চন্দনবাইশা', 0, 0),
(1969, 338, NULL, 'হাটফুলবাড়ী', 0, 0),
(1970, 338, NULL, 'হাটশেরপুর', 0, 0),
(1971, 338, NULL, 'কর্ণিবাড়ী', 0, 0),
(1972, 338, NULL, 'কাজলা', 0, 0),
(1973, 338, NULL, 'কুতুবপুর', 0, 0),
(1974, 338, NULL, 'কামালপুর', 0, 0),
(1975, 338, NULL, 'ভেলাবাড়ী', 0, 0),
(1976, 337, NULL, 'আশেকপুর', 0, 0),
(1977, 337, NULL, 'মাদলা', 0, 0),
(1978, 337, NULL, 'মাঝিড়া', 0, 0),
(1979, 337, NULL, 'আড়িয়া', 0, 0),
(1980, 337, NULL, 'খরনা', 0, 0),
(1981, 337, NULL, 'খোট্টাপাড়া', 0, 0),
(1982, 337, NULL, 'চোপিনগর', 0, 0),
(1983, 337, NULL, 'আমরুল', 0, 0),
(1984, 337, NULL, 'গোহাইল', 0, 0),
(1985, 333, NULL, 'জিয়ানগর', 0, 0),
(1986, 333, NULL, 'চামরুল', 0, 0),
(1987, 333, NULL, 'দুপচাঁচিয়া', 0, 0),
(1988, 333, NULL, 'গুনাহার', 0, 0),
(1989, 333, NULL, 'গোবিন্দপুর', 0, 0),
(1990, 333, NULL, 'তালোড়া', 0, 0),
(1991, 329, NULL, 'ছাতিয়ানগ্রাম', 0, 0),
(1992, 329, NULL, 'নশরতপুর', 0, 0),
(1993, 329, NULL, 'আদমদিঘি', 0, 0),
(1994, 329, NULL, 'কুন্দগ্রাম', 0, 0),
(1995, 329, NULL, 'চাঁপাপুর', 0, 0),
(1996, 329, NULL, 'সান্তাহার', 0, 0),
(1997, 336, NULL, '১নং বুড়ইল', 0, 0),
(1998, 336, NULL, '২নং নন্দিগ্রাম', 0, 0),
(1999, 336, NULL, '৩নং ভাটরা', 0, 0),
(2000, 336, NULL, '৪নং থালতা মাঝগ্রাম', 0, 0),
(2001, 336, NULL, '৫নং ভাটগ্রাম', 0, 0),
(2002, 340, NULL, 'সোনাতলা', 0, 0),
(2003, 340, NULL, 'বালুয়া', 0, 0),
(2004, 340, NULL, 'জোড়গাছা', 0, 0),
(2005, 340, NULL, 'দিগদাইড়', 0, 0),
(2006, 340, NULL, 'মধুপুর', 0, 0),
(2007, 340, NULL, 'পাকুল্ল্যা', 0, 0),
(2008, 340, NULL, 'তেকানী চুকাইনগর', 0, 0),
(2009, 332, NULL, '১নং নিমগাছি', 0, 0),
(2010, 332, NULL, '২নং কালেরপাড়া', 0, 0),
(2011, 332, NULL, '৩নং চিকাশী', 0, 0),
(2012, 332, NULL, '৪নং গোসাইবাড়ী', 0, 0),
(2013, 332, NULL, '৫নং ভান্ডারবাড়ী', 0, 0),
(2014, 332, NULL, '১০নং গোপালনগর', 0, 0),
(2015, 332, NULL, '৯নং মথুরাপুর', 0, 0),
(2016, 332, NULL, '৮নং চৌকিবাড়ী', 0, 0),
(2017, 332, NULL, '৭নং এলাঙ্গী', 0, 0),
(2018, 332, NULL, '৬নং ধুনট সদর', 0, 0),
(2019, 334, NULL, 'বালিয়া দিঘী', 0, 0),
(2020, 334, NULL, 'দক্ষিণপাড়া', 0, 0),
(2021, 334, NULL, 'দুর্গাহাটা', 0, 0),
(2022, 334, NULL, 'কাগইল', 0, 0),
(2023, 334, NULL, 'সোনারায়', 0, 0),
(2024, 334, NULL, 'রামেশ্বরপুর', 0, 0),
(2025, 334, NULL, 'নাড়ুয়ামালা', 0, 0),
(2026, 334, NULL, 'নেপালতলী', 0, 0),
(2027, 334, NULL, 'গাবতলি', 0, 0),
(2028, 334, NULL, 'মহিষাবান', 0, 0),
(2029, 334, NULL, 'নশিপুর', 0, 0),
(2030, 331, NULL, '৫নং মির্জাপুর', 0, 0),
(2031, 331, NULL, '৩নং খামারকান্দি', 0, 0),
(2032, 331, NULL, '২নং গাড়িদহ', 0, 0),
(2033, 331, NULL, '১নং কুসুম্বী', 0, 0),
(2034, 331, NULL, '৬নং বিশালপুর', 0, 0),
(2035, 331, NULL, '৯নং সীমাবাড়ি', 0, 0),
(2036, 331, NULL, '১০নং শাহবন্দেগী', 0, 0),
(2037, 331, NULL, '৮নং সুঘাট', 0, 0),
(2038, 331, NULL, '৪নং খানপুর', 0, 0),
(2039, 331, NULL, '৭নং ভবানীপুর', 0, 0),
(2040, 339, NULL, '১নং ময়দানহাট্টা', 0, 0),
(2041, 339, NULL, '২নং কিচক ইউনিয়ন', 0, 0),
(2042, 339, NULL, '৩নং আটমূল', 0, 0),
(2043, 339, NULL, '৪নং পিরব', 0, 0),
(2044, 339, NULL, '৫নং মাঝিহট্ট', 0, 0),
(2045, 339, NULL, '৬নং বুড়িগঞ্জ', 0, 0),
(2046, 339, NULL, '৭নং বিহার', 0, 0),
(2047, 339, NULL, '৮নং শিবগঞ্জ', 0, 0),
(2048, 339, NULL, '৯নং দেউলি', 0, 0),
(2049, 339, NULL, '১০নং সৈয়দপুর', 0, 0),
(2050, 339, NULL, '১১নং মোকামতলা ইউনিয়ন', 0, 0),
(2051, 339, NULL, '১২নং রায়নগর', 0, 0),
(2052, 383, NULL, '০১ নং দর্শনপাড়া ইউনিয়ন', 0, 0),
(2053, 383, NULL, '০২ নং হুজুরী পাড়া ইউনিয়ন', 0, 0),
(2054, 383, NULL, '০৩ নং দামকুড়া ইউনিয়ন', 0, 0),
(2055, 383, NULL, '০৪ নং হরিপুর ইউনিয়ন', 0, 0),
(2056, 383, NULL, '০৫ নং হড়গ্রাম ইউনিয়ন', 0, 0),
(2057, 383, NULL, '০৬ নং হরিয়ান ইউনিয়ন', 0, 0),
(2058, 383, NULL, '০৭ নং বড়্গাছি ইউনিয়ন', 0, 0),
(2059, 383, NULL, '০৮ নং পারিলা ইউনিয়ন', 0, 0),
(2060, 380, NULL, '০১ নং নওপাড়া ইউনিয়ন', 0, 0),
(2061, 380, NULL, '০২ নং কিসমতগণকৈড় ইউনিয়ন', 0, 0),
(2062, 380, NULL, '০৩ নং পানানগর ইউনিয়ন', 0, 0),
(2063, 380, NULL, '০৪ নং দেলুয়াবাড়ী ইউনিয়ন', 0, 0),
(2064, 380, NULL, '০৫ নং ঝালুকা ইউনিয়ন', 0, 0),
(2065, 380, NULL, '০৬ নং মাড়িয়া ইউনিয়ন', 0, 0),
(2066, 380, NULL, '০৭ নং জয়নগর ইউনিয়ন', 0, 0),
(2067, 382, NULL, '০১ নং ধুরইল ইউনিয়ন', 0, 0),
(2068, 382, NULL, '০২ নং ঘষিগ্রাম ইউনিয়ন', 0, 0),
(2069, 382, NULL, '০৩ নং রায়ঘাটি ইউনিয়ন', 0, 0),
(2070, 382, NULL, '০৪ নং মৌগাছি ইউনিয়ন', 0, 0),
(2071, 382, NULL, '০৫ নং বাকশিমইল ইউনিয়ন', 0, 0),
(2072, 382, NULL, '০৬ নং জাহানাবাদ ইউনিয়ন', 0, 0),
(2073, 379, NULL, '০১ নং ইউসুফপুর ইউনিয়ন', 0, 0),
(2074, 379, NULL, '০২ নং শলুয়া ইউনিয়ন', 0, 0),
(2075, 379, NULL, '০৩ নং সরদহ ইউনিয়ন', 0, 0),
(2076, 379, NULL, '০৪ নং নিমপাড়া ইউনিয়ন', 0, 0),
(2077, 379, NULL, '০৫ নং চারঘাট ইউনিয়ন', 0, 0),
(2078, 379, NULL, '০৬ নং ভায়ালক্ষ্মীপুর ইউনিয়ন', 0, 0),
(2079, 384, NULL, '০১ নং পুঠিয়া ইউনিয়ন', 0, 0),
(2080, 384, NULL, '০২ নং বেলপুকুরিয়া ইউনিয়ন', 0, 0),
(2081, 384, NULL, '০৩ নং বানেশ্বর ইউনিয়ন', 0, 0),
(2082, 384, NULL, '০৪ নং ভালুক গাছি ইউনিয়ন', 0, 0),
(2083, 384, NULL, '০৫ নং শিলমাড়িয়া ইউনিয়ন', 0, 0),
(2084, 384, NULL, '০৬ নং জিউপাড়া ইউনিয়ন', 0, 0),
(2085, 377, NULL, '০১ নং বাজুবাঘা ইউনিয়ন', 0, 0),
(2086, 377, NULL, '০২ নং গড়গড়ি ইউনিয়ন', 0, 0),
(2087, 377, NULL, '০৩ নং পাকুড়িয়া ইউনিয়ন', 0, 0),
(2088, 377, NULL, '০৪ নং মনিগ্রাম ইউনিয়ন', 0, 0),
(2089, 377, NULL, '০৫ নং বাউসা ইউনিয়ন', 0, 0),
(2090, 377, NULL, '০৬ নং আড়ানী', 0, 0),
(2091, 381, NULL, '০১ নং গোদাগাড়ী ইউনিয়ন', 0, 0),
(2092, 381, NULL, '০২ নং মোহনপুর ইউনিয়ন', 0, 0),
(2093, 381, NULL, '০৩ নং পাকড়ী ইউনিয়ন', 0, 0),
(2094, 381, NULL, '০৪ নং রিশিকুল ইউনিয়ন', 0, 0),
(2095, 381, NULL, '০৫ নং গোগ্রাম ইউনিয়ন', 0, 0),
(2096, 381, NULL, '০৬ নং মাটিকাটা ইউনিয়ন', 0, 0),
(2097, 381, NULL, '০৭ নং দেওপাড়া ইউনিয়ন', 0, 0),
(2098, 381, NULL, '০৮ নং বাসুদেবপুর ইউনিয়ন', 0, 0),
(2099, 381, NULL, '০৯ নং আষাড়িয়াদহ ইউনিয়ন', 0, 0),
(2100, 385, NULL, '০১ নং কলমা ইউনিয়ন', 0, 0),
(2101, 385, NULL, '০২ নং বাধাইড় ইউনিয়ন', 0, 0),
(2102, 385, NULL, '০৩ নং পাঁচন্দর ইউনিয়ন', 0, 0),
(2103, 385, NULL, '০৪ নং সরঞ্জাই ইউনিয়ন', 0, 0),
(2104, 385, NULL, '০৫ নং তালন্দ ইউনিয়ন', 0, 0),
(2105, 385, NULL, '০৬ নং কামারগাঁ ইউনিয়ন', 0, 0),
(2106, 385, NULL, '০৭ নং চান্দুড়িয়া ইউনিয়ন', 0, 0),
(2107, 378, NULL, '০১ নং গোবিন্দপাড়া ইউনিয়ন', 0, 0),
(2108, 378, NULL, '০২ নং নরদাস ইউনিয়ন', 0, 0),
(2109, 378, NULL, '০৩ নং দ্বীপপুর ইউনিয়ন', 0, 0),
(2110, 378, NULL, '০৪ নং বড়বিহানলী ইউনিয়ন', 0, 0),
(2111, 378, NULL, '০৫ নং আউচপাড়া ইউনিয়ন', 0, 0),
(2112, 378, NULL, '০৬ নং শ্রীপুর ইউনিয়ন', 0, 0),
(2113, 378, NULL, '০৭ নং বাসুপাড়া ইউনিয়ন', 0, 0),
(2114, 378, NULL, '০৮ নং কাচাড়ী কোয়লিপাড়া ইউনিয়ন', 0, 0),
(2115, 378, NULL, '০৯ নং শুভডাঙ্গা ইউনিয়ন', 0, 0),
(2116, 378, NULL, '১০ নং মাড়িয়া ইউনিয়ন', 0, 0),
(2117, 378, NULL, '১১ নং গণিপুর ইউনিয়ন', 0, 0),
(2118, 378, NULL, '১২ নং ঝিকড়া ইউনিয়ন', 0, 0),
(2119, 378, NULL, '১৩ নং গোয়ালকান্দি ইউনিয়ন', 0, 0),
(2120, 378, NULL, '১৪ নং হামিরকুৎসা ইউনিয়ন', 0, 0),
(2121, 378, NULL, '১৫ নং যোগিপাড়া ইউনিয়ন', 0, 0),
(2122, 378, NULL, '১৬ নং সোনাডাঙ্গা ইউনিয়ন', 0, 0),
(2123, 357, NULL, '১ নং ব্রহ্মপুর ইউনিয়ন', 0, 0),
(2124, 357, NULL, '০২ নং মাধনগর ইউনিয়ন', 0, 0),
(2125, 357, NULL, '০৩ নং খাজুরা ইউনিয়ন', 0, 0),
(2126, 357, NULL, '০৪ নং পিপরুল ইউনিয়ন', 0, 0),
(2127, 357, NULL, '০৫ নং বিপ্রবেলঘড়িয়া ইউনিয়ন', 0, 0),
(2128, 357, NULL, '০৬ নং ছাতনী ইউনিয়ন', 0, 0),
(2129, 357, NULL, '০৭ নং তেবাড়িয়া ইউনিয়ন', 0, 0),
(2130, 357, NULL, '০৮ নং দিঘাপতিয়া ইউনিয়ন', 0, 0),
(2131, 357, NULL, '০৯ নং লক্ষীপুর খোলাবাড়িয়া ইউনিয়ন', 0, 0),
(2132, 357, NULL, '১০ নং বড়হরিশপুর ইউনিয়ন', 0, 0),
(2133, 357, NULL, '১১ নং কাফুরিয়া ইউনিয়ন', 0, 0),
(2134, 357, NULL, '১২ নং হালসা ইউনিয়ন', 0, 0),
(2135, 361, NULL, '০১ নং শুকাশ ইউনিয়ন', 0, 0),
(2136, 361, NULL, '০২ নং ডাহিয়া ইউনিয়ন', 0, 0),
(2137, 361, NULL, '০৩ নং ইটালী ইউনিয়ন', 0, 0),
(2138, 361, NULL, '০৪ নং কলম ইউনিয়ন', 0, 0),
(2139, 361, NULL, '০৫ নং চামারী ইউনিয়ন', 0, 0),
(2140, 361, NULL, '০৬ নং হাতিয়ানদহ ইউনিয়ন', 0, 0),
(2141, 361, NULL, '০৭ নং লালোর ইউনিয়ন', 0, 0),
(2142, 361, NULL, '০৮ নং শেরকোল ইউনিয়ন', 0, 0),
(2143, 361, NULL, '০৯ নং তাজপুর ইউনিয়ন', 0, 0),
(2144, 361, NULL, '১০ নং চৌগ্রাম ইউনিয়ন', 0, 0),
(2145, 361, NULL, '১১ নং ছাতারদিঘী ইউনিয়ন', 0, 0),
(2146, 361, NULL, '১২ নং রামান্দখাজুরা ইউনিয়ন', 0, 0),
(2147, 362, NULL, '০১ নং জোয়াড়ী ইউনিয়ন', 0, 0),
(2148, 362, NULL, '০২ নং বড়াইগ্রাম ইউনিয়ন', 0, 0),
(2149, 362, NULL, '০৩ নং জোনাইল ইউনিয়ন', 0, 0),
(2150, 362, NULL, '০৪ নং নগর ইউনিয়ন', 0, 0),
(2151, 362, NULL, '০৫ নং মাঝগাও ইউনিয়ন', 0, 0),
(2152, 362, NULL, '০৬ নং গোপালপুর ইউনিয়ন', 0, 0),
(2153, 362, NULL, '০৭ নং চান্দাই ইউনিয়ন', 0, 0),
(2154, 359, NULL, '০১ নং পাঁকা ইউনিয়ন', 0, 0),
(2155, 359, NULL, '০২ নং জামনগর ইউনিয়ন', 0, 0),
(2156, 359, NULL, '০৩ নং বাগাতিপাড়া ইউনিয়ন', 0, 0),
(2157, 359, NULL, '০৪ নং দয়ারামপুর ইউনিয়ন', 0, 0),
(2158, 359, NULL, '০৫ নং ফাগুয়ারদিয়াড় ইউনিয়ন', 0, 0),
(2159, 360, NULL, '০১ নং লালপুর ইউনিয়ন', 0, 0),
(2160, 360, NULL, '০২ নং ঈশ্বরদী ইউনিয়ন', 0, 0),
(2161, 360, NULL, '০৩ নং চংধুপইল ইউনিয়ন', 0, 0),
(2162, 360, NULL, '০৪ নং আড়বাব ইউনিয়ন', 0, 0),
(2163, 360, NULL, '০৫ নং বিলমাড়িয়া ইউনিয়ন', 0, 0),
(2164, 360, NULL, '০৬ নং দুয়ারিয়া ইউনিয়ন', 0, 0),
(2165, 360, NULL, '০৭ নং ওয়ালিয়া ইউনিয়ন', 0, 0),
(2166, 360, NULL, '০৮ নং দুড়দুরিয়া ইউনিয়ন', 0, 0),
(2167, 360, NULL, '০৯ নং অর্জুনপুর বরমহাটী ইউনিয়ন', 0, 0),
(2168, 360, NULL, '১০ নং কদিমচিলান ইউনিয়ন', 0, 0),
(2169, 362, NULL, '০১ নং নাজিরপুর ইউনিয়ন', 0, 0),
(2170, 362, NULL, '০২ নং বিয়াঘাট ইউনিয়ন', 0, 0),
(2171, 362, NULL, '০৩ নং খুবজীপুর ইউনিয়ন', 0, 0),
(2172, 362, NULL, '০৫ নং ধারাবারিষা ইউনিয়ন', 0, 0),
(2173, 362, NULL, '০৪ নং মসিন্দা ইউনিয়ন', 0, 0),
(2174, 362, NULL, '০৬ নং চাপিলা ইউনিয়ন', 0, 0),
(2175, 342, NULL, 'রুকিন্দীপুর ইউনিয়ন', 0, 0),
(2176, 342, NULL, 'সোনামূখী ইউনিয়ন', 0, 0),
(2177, 342, NULL, 'তিলকপুর ইউনিয়ন', 0, 0),
(2178, 342, NULL, 'রায়কালী ইউনিয়ন', 0, 0),
(2179, 342, NULL, 'গোপীনাথপুর ইউনিয়ন', 0, 0),
(2180, 343, NULL, 'মাত্রাই ইউনিয়ন', 0, 0),
(2181, 343, NULL, 'আহম্মেদাবাদ ইউনিয়ন', 0, 0),
(2182, 343, NULL, 'পুনট ইউনিয়ন', 0, 0),
(2183, 343, NULL, 'জিন্দারপুর', 0, 0),
(2184, 343, NULL, 'উদয়পুর', 0, 0),
(2185, 344, NULL, 'আলমপুর ইউনিয়ন', 0, 0),
(2186, 344, NULL, 'বড়াইল ইউনিয়ন', 0, 0),
(2187, 344, NULL, 'তুলশীগংগা ইউনিয়ন', 0, 0),
(2188, 344, NULL, 'মামুদপুর ইউনিয়ন', 0, 0),
(2189, 344, NULL, 'বড়তারা ইউনিয়ন', 0, 0),
(2190, 345, NULL, 'বাগজানা ইউনিয়ন', 0, 0),
(2191, 345, NULL, 'ধরঞ্জি', 0, 0),
(2192, 345, NULL, 'আয়মারসুলপুর ইউনিয়ন', 0, 0),
(2193, 345, NULL, 'বালিঘাটা ইউনিয়ন', 0, 0),
(2194, 345, NULL, 'আটাপুর ইউনিয়ন', 0, 0),
(2195, 345, NULL, 'মোহাম্মদপুর ইউনিয়ন', 0, 0),
(2196, 345, NULL, 'আওলাই', 0, 0),
(2197, 345, NULL, 'কুসুম্বা', 0, 0),
(2198, 341, NULL, 'আমদই ইউনিয়ন', 0, 0),
(2199, 341, NULL, 'বম্বু ইউনিয়ন', 0, 0),
(2200, 341, NULL, 'দোগাছি ইউনিয়ন', 0, 0),
(2201, 341, NULL, 'পুরানাপৈল ইউনিয়ন', 0, 0),
(2202, 341, NULL, 'জামালপুর ইউনিয়ন', 0, 0),
(2203, 341, NULL, 'চকবরকত ইউনিয়ন', 0, 0),
(2204, 341, NULL, 'মোহাম্মদাবাদ ইউনিয়ন', 0, 0),
(2205, 341, NULL, 'ধলাহার ইউনিয়ন', 0, 0),
(2206, 341, NULL, 'ভাদসা', 0, 0),
(2207, 366, NULL, 'আলাতুলী', 0, 0),
(2208, 366, NULL, 'বারঘরিয়া', 0, 0),
(2209, 366, NULL, 'মহারাজপুর', 0, 0),
(2210, 366, NULL, 'রানীহাটি', 0, 0),
(2211, 366, NULL, 'বালিয়াডাঙ্গা', 0, 0),
(2212, 366, NULL, 'গোবরাতলা', 0, 0),
(2213, 366, NULL, 'ঝিলিম', 0, 0),
(2214, 366, NULL, 'চরঅনুপনগর', 0, 0),
(2215, 366, NULL, 'দেবীনগর', 0, 0),
(2216, 366, NULL, 'শাহজাহানপুর', 0, 0),
(2217, 366, NULL, 'ইসলামপুর', 0, 0),
(2218, 366, NULL, 'চরবাগডাঙ্গা', 0, 0),
(2219, 366, NULL, 'নারায়নপুর', 0, 0),
(2220, 366, NULL, 'সুন্দরপুর', 0, 0),
(2221, 364, NULL, 'রাধানগর', 0, 0),
(2222, 364, NULL, 'রহনপুর', 0, 0),
(2223, 364, NULL, 'বোয়ালিয়া', 0, 0),
(2224, 364, NULL, 'বাঙ্গাবাড়ী', 0, 0),
(2225, 364, NULL, 'পার্বতীপুর', 0, 0),
(2226, 364, NULL, 'চৌডালা', 0, 0),
(2227, 364, NULL, 'গোমস্তাপুর', 0, 0),
(2228, 364, NULL, 'আলীনগর', 0, 0),
(2229, 365, NULL, 'ফতেপুর', 0, 0),
(2230, 365, NULL, 'কসবা', 0, 0),
(2231, 365, NULL, 'নেজামপুর', 0, 0),
(2232, 365, NULL, 'নাচোল', 0, 0),
(2233, 363, NULL, 'ভোলাহাট', 0, 0),
(2234, 363, NULL, 'জামবাড়িয়া', 0, 0),
(2235, 363, NULL, 'গোহালবাড়ী', 0, 0),
(2236, 363, NULL, 'দলদলী', 0, 0),
(2237, 367, NULL, 'বিনোদপুর', 0, 0),
(2238, 367, NULL, 'চককির্তী', 0, 0),
(2239, 367, NULL, 'দাইপুকুরিয়া', 0, 0),
(2240, 367, NULL, 'ধাইনগর', 0, 0),
(2241, 367, NULL, 'দুর্লভপুর', 0, 0),
(2242, 367, NULL, 'ঘোড়াপাখিয়া', 0, 0),
(2243, 367, NULL, 'মোবারকপুর', 0, 0),
(2244, 367, NULL, 'মনাকষা', 0, 0),
(2245, 367, NULL, 'নয়ালাভাঙ্গা', 0, 0),
(2246, 367, NULL, 'পাঁকা', 0, 0),
(2247, 367, NULL, 'ছত্রাজিতপুর', 0, 0),
(2248, 367, NULL, 'শাহাবাজপুর', 0, 0),
(2249, 367, NULL, 'শ্যামপুর', 0, 0),
(2250, 367, NULL, 'কানসাট', 0, 0),
(2251, 367, NULL, 'উজিরপুর', 0, 0),
(2252, 347, NULL, 'মহাদেবপুর ইউনিয়ন', 0, 0),
(2253, 347, NULL, 'হাতুড়', 0, 0),
(2254, 347, NULL, 'খাজুর ইউনিয়ন', 0, 0),
(2255, 347, NULL, 'চাঁন্দাশ', 0, 0),
(2256, 347, NULL, 'এনায়েতপুর', 0, 0),
(2257, 347, NULL, 'সফাপুর', 0, 0),
(2258, 347, NULL, 'উত্তরগ্রাম', 0, 0),
(2259, 347, NULL, 'চেরাগপুর', 0, 0),
(2260, 347, NULL, 'ভীমপুর', 0, 0),
(2261, 347, NULL, 'রাইগাঁ', 0, 0),
(2262, 356, NULL, 'বদলগাছী ইউনিয়ন', 0, 0),
(2263, 356, NULL, 'মথুরাপুর ইউনিয়ন', 0, 0),
(2264, 356, NULL, 'পাহারপুর ইউনিয়ন', 0, 0),
(2265, 356, NULL, 'মিঠাপুর ইউনিয়ন', 0, 0),
(2266, 356, NULL, 'কোলা ইউনিয়ন', 0, 0),
(2267, 356, NULL, 'বিলাশবাড়ী ইউনিয়ন', 0, 0),
(2268, 356, NULL, 'আধাইপুর ইউনিয়ন', 0, 0),
(2269, 356, NULL, 'বালুভরা ইউনিয়ন', 0, 0),
(2270, 352, NULL, 'পত্নীতলা ইউনিয়ন', 0, 0),
(2271, 352, NULL, 'নিমইল ইউনিয়ন', 0, 0),
(2272, 352, NULL, 'দিবর ইউনিয়ন', 0, 0),
(2273, 352, NULL, 'আকবরপুর ইউনিয়ন', 0, 0),
(2274, 352, NULL, 'মাটিন্দর ইউনিয়ন', 0, 0),
(2275, 352, NULL, 'কৃষ্ণপুর ইউনিয়ন', 0, 0),
(2276, 352, NULL, 'পাটিচড়া ইউনিয়ন', 0, 0),
(2277, 352, NULL, 'নজিপুর ইউনিয়ন', 0, 0),
(2278, 352, NULL, 'ঘষনগর ইউনিয়ন', 0, 0),
(2279, 352, NULL, 'আমাইড় ইউনিয়ন', 0, 0),
(2280, 352, NULL, 'শিহারা ইউনিয়ন', 0, 0),
(2281, 353, NULL, 'ধামইরহাট', 0, 0),
(2282, 353, NULL, 'আলমপুর', 0, 0),
(2283, 353, NULL, 'উমার ইউনিয়ন', 0, 0),
(2284, 353, NULL, 'আড়ানগর', 0, 0),
(2285, 353, NULL, 'জাহানপুর', 0, 0),
(2286, 353, NULL, 'ইসবপুর', 0, 0),
(2287, 353, NULL, 'খেলনা', 0, 0),
(2288, 353, NULL, 'আগ্রাদ্বিগুন', 0, 0),
(2289, 349, NULL, 'হাজীনগর ইউনিয়ন', 0, 0),
(2290, 349, NULL, 'চন্দননগর ইউনিয়ন', 0, 0),
(2291, 349, NULL, 'ভাবিচা ইউনিয়ন', 0, 0),
(2292, 349, NULL, 'নিয়ামতপুর ইউনিয়ন', 0, 0),
(2293, 349, NULL, 'রসুলপুর ইউনিয়ন', 0, 0),
(2294, 349, NULL, 'পাড়ইল ইউনিয়ন', 0, 0),
(2295, 349, NULL, 'শ্রীমন্তপুর', 0, 0),
(2296, 349, NULL, 'বাহাদুরপুর', 0, 0),
(2297, 348, NULL, 'ভারশো', 0, 0),
(2298, 348, NULL, 'ভালাইন', 0, 0),
(2299, 348, NULL, 'পরানপুর', 0, 0),
(2300, 348, NULL, 'মান্দা', 0, 0),
(2301, 348, NULL, 'গনেশপুর', 0, 0),
(2302, 348, NULL, 'মৈনম', 0, 0),
(2303, 348, NULL, 'প্রসাদপুর ইউনিয়ন', 0, 0),
(2304, 348, NULL, 'কুসুম্বা', 0, 0),
(2305, 348, NULL, 'তেঁতুলিয়া', 0, 0),
(2306, 348, NULL, 'নূরুল্যাবাদ', 0, 0),
(2307, 348, NULL, 'কালিকাপুর', 0, 0),
(2308, 348, NULL, 'কাঁশোকাপুর', 0, 0),
(2309, 348, NULL, 'কশব ইউনিয়ন', 0, 0),
(2310, 348, NULL, 'বিষ্ণপুর', 0, 0),
(2311, 350, NULL, 'শাহাগোলা', 0, 0),
(2312, 350, NULL, 'ভোঁপড়া', 0, 0),
(2313, 350, NULL, 'আহসানগঞ্জ', 0, 0),
(2314, 350, NULL, 'পাঁচুপুর', 0, 0),
(2315, 350, NULL, 'বিশা', 0, 0),
(2316, 350, NULL, 'মনিয়ারী', 0, 0),
(2317, 350, NULL, 'কালিকাপুর', 0, 0),
(2318, 350, NULL, 'হাটকালুপাড়া', 0, 0),
(2319, 351, NULL, 'খট্টেশ্বর রাণীনগর', 0, 0),
(2320, 351, NULL, 'কাশিমপুর', 0, 0),
(2321, 351, NULL, 'গোনা', 0, 0),
(2322, 351, NULL, 'পারইল', 0, 0),
(2323, 351, NULL, 'বরগাছা', 0, 0),
(2324, 351, NULL, 'কালিগ্রাম', 0, 0),
(2325, 351, NULL, 'একডালা', 0, 0),
(2326, 351, NULL, 'মিরাট', 0, 0),
(2327, 346, NULL, 'বর্ষাইল', 0, 0),
(2328, 346, NULL, 'কির্ত্তিপুর', 0, 0),
(2329, 346, NULL, 'বক্তারপুর ইউনিয়ন', 0, 0),
(2330, 346, NULL, 'তিলোকপুর', 0, 0),
(2331, 346, NULL, 'হাপানিয়া', 0, 0),
(2332, 346, NULL, 'দুবলহাটী ইউনিয়ন', 0, 0),
(2333, 346, NULL, 'বোয়ালিয়া ইউনিয়ন', 0, 0),
(2334, 346, NULL, 'হাঁসাইগাড়ী', 0, 0),
(2335, 346, NULL, 'চন্ডিপুর', 0, 0),
(2336, 346, NULL, 'বলিহার', 0, 0),
(2337, 346, NULL, 'শিকারপুর', 0, 0),
(2338, 346, NULL, 'শৈলগাছী', 0, 0),
(2339, 355, NULL, 'নিতপুর ইউনিয়ন', 0, 0),
(2340, 355, NULL, 'তেঁতুলিয়া', 0, 0),
(2341, 355, NULL, 'ছাওড়', 0, 0),
(2342, 355, NULL, 'গাঙ্গুরিয়া', 0, 0),
(2343, 355, NULL, 'ঘাটনগর ইউনিয়ন', 0, 0),
(2344, 355, NULL, 'মশিদপুর', 0, 0),
(2345, 354, NULL, 'সাপাহার', 0, 0),
(2346, 354, NULL, 'তিলনা', 0, 0),
(2347, 354, NULL, 'আইহাই', 0, 0),
(2348, 354, NULL, 'শিরন্টী', 0, 0),
(2349, 354, NULL, 'গোয়ালা', 0, 0),
(2350, 354, NULL, 'পাতাড়ী', 0, 0),
(2351, 493, NULL, 'ইসলামপুর-০১', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `upazilas`
--

CREATE TABLE `upazilas` (
  `id` int(2) UNSIGNED NOT NULL,
  `district_id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `bn_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `upazilas`
--

INSERT INTO `upazilas` (`id`, `district_id`, `name`, `bn_name`) VALUES
(1, 34, 'Amtali Upazila', 'আমতলী'),
(2, 34, 'Bamna Upazila', 'বামনা'),
(3, 34, 'Barguna Sadar Upazila', 'বরগুনা সদর'),
(4, 34, 'Betagi Upazila', 'বেতাগি'),
(5, 34, 'Patharghata Upazila', 'পাথরঘাটা'),
(6, 34, 'Taltali Upazila', 'তালতলী'),
(7, 35, 'Muladi Upazila', 'মুলাদি'),
(8, 35, 'Babuganj Upazila', 'বাবুগঞ্জ'),
(9, 35, 'Agailjhara Upazila', 'আগাইলঝরা'),
(10, 35, 'Barisal Sadar Upazila', 'বরিশাল সদর'),
(11, 35, 'Bakerganj Upazila', 'বাকেরগঞ্জ'),
(12, 35, 'Banaripara Upazila', 'বানাড়িপারা'),
(13, 35, 'Gaurnadi Upazila', 'গৌরনদী'),
(14, 35, 'Hizla Upazila', 'হিজলা'),
(15, 35, 'Mehendiganj Upazila', 'মেহেদিগঞ্জ '),
(16, 35, 'Wazirpur Upazila', 'ওয়াজিরপুর'),
(17, 36, 'Bhola Sadar Upazila', 'ভোলা সদর'),
(18, 36, 'Burhanuddin Upazila', 'বুরহানউদ্দিন'),
(19, 36, 'Char Fasson Upazila', 'চর ফ্যাশন'),
(20, 36, 'Daulatkhan Upazila', 'দৌলতখান'),
(21, 36, 'Lalmohan Upazila', 'লালমোহন'),
(22, 36, 'Manpura Upazila', 'মনপুরা'),
(23, 36, 'Tazumuddin Upazila', 'তাজুমুদ্দিন'),
(24, 37, 'Jhalokati Sadar Upazila', 'ঝালকাঠি সদর'),
(25, 37, 'Kathalia Upazila', 'কাঁঠালিয়া'),
(26, 37, 'Nalchity Upazila', 'নালচিতি'),
(27, 37, 'Rajapur Upazila', 'রাজাপুর'),
(28, 38, 'Bauphal Upazila', 'বাউফল'),
(29, 38, 'Dashmina Upazila', 'দশমিনা'),
(30, 38, 'Galachipa Upazila', 'গলাচিপা'),
(31, 38, 'Kalapara Upazila', 'কালাপারা'),
(32, 38, 'Mirzaganj Upazila', 'মির্জাগঞ্জ '),
(33, 38, 'Patuakhali Sadar Upazila', 'পটুয়াখালী সদর'),
(34, 38, 'Dumki Upazila', 'ডুমকি'),
(35, 38, 'Rangabali Upazila', 'রাঙ্গাবালি'),
(36, 39, 'Bhandaria', 'ভ্যান্ডারিয়া'),
(37, 39, 'Kaukhali', 'কাউখালি'),
(38, 39, 'Mathbaria', 'মাঠবাড়িয়া'),
(39, 39, 'Nazirpur', 'নাজিরপুর'),
(40, 39, 'Nesarabad', 'নেসারাবাদ'),
(41, 39, 'Pirojpur Sadar', 'পিরোজপুর সদর'),
(42, 39, 'Zianagar', 'জিয়ানগর'),
(43, 40, 'Bandarban Sadar', 'বান্দরবন সদর'),
(44, 40, 'Thanchi', 'থানচি'),
(45, 40, 'Lama', 'লামা'),
(46, 40, 'Naikhongchhari', 'নাইখংছড়ি '),
(47, 40, 'Ali kadam', 'আলী কদম'),
(48, 40, 'Rowangchhari', 'রউয়াংছড়ি '),
(49, 40, 'Ruma', 'রুমা'),
(50, 41, 'Brahmanbaria Sadar Upazila', 'ব্রাহ্মণবাড়িয়া সদর'),
(51, 41, 'Ashuganj Upazila', 'আশুগঞ্জ'),
(52, 41, 'Nasirnagar Upazila', 'নাসির নগর'),
(53, 41, 'Nabinagar Upazila', 'নবীনগর'),
(54, 41, 'Sarail Upazila', 'সরাইল'),
(55, 41, 'Shahbazpur Town', 'শাহবাজপুর টাউন'),
(56, 41, 'Kasba Upazila', 'কসবা'),
(57, 41, 'Akhaura Upazila', 'আখাউরা'),
(58, 41, 'Bancharampur Upazila', 'বাঞ্ছারামপুর'),
(59, 41, 'Bijoynagar Upazila', 'বিজয় নগর'),
(60, 42, 'Chandpur Sadar', 'চাঁদপুর সদর'),
(61, 42, 'Faridganj', 'ফরিদগঞ্জ'),
(62, 42, 'Haimchar', 'হাইমচর'),
(63, 42, 'Haziganj', 'হাজীগঞ্জ'),
(64, 42, 'Kachua', 'কচুয়া'),
(65, 42, 'Matlab Uttar', 'মতলব উত্তর'),
(66, 42, 'Matlab Dakkhin', 'মতলব দক্ষিণ'),
(67, 42, 'Shahrasti', 'শাহরাস্তি'),
(68, 43, 'Anwara Upazila', 'আনোয়ারা'),
(69, 43, 'Banshkhali Upazila', 'বাশখালি'),
(70, 43, 'Boalkhali Upazila', 'বোয়ালখালি'),
(71, 43, 'Chandanaish Upazila', 'চন্দনাইশ'),
(72, 43, 'Fatikchhari Upazila', 'ফটিকছড়ি'),
(73, 43, 'Hathazari Upazila', 'হাঠহাজারী'),
(74, 43, 'Lohagara Upazila', 'লোহাগারা'),
(75, 43, 'Mirsharai Upazila', 'মিরসরাই'),
(76, 43, 'Patiya Upazila', 'পটিয়া'),
(77, 43, 'Rangunia Upazila', 'রাঙ্গুনিয়া'),
(78, 43, 'Raozan Upazila', 'রাউজান'),
(79, 43, 'Sandwip Upazila', 'সন্দ্বীপ'),
(80, 43, 'Satkania Upazila', 'সাতকানিয়া'),
(81, 43, 'Sitakunda Upazila', 'সীতাকুণ্ড'),
(82, 44, 'Barura Upazila', 'বড়ুরা'),
(83, 44, 'Brahmanpara Upazila', 'ব্রাহ্মণপাড়া'),
(84, 44, 'Burichong Upazila', 'বুড়িচং'),
(85, 44, 'Chandina Upazila', 'চান্দিনা'),
(86, 44, 'Chauddagram Upazila', 'চৌদ্দগ্রাম'),
(87, 44, 'Daudkandi Upazila', 'দাউদকান্দি'),
(88, 44, 'Debidwar Upazila', 'দেবীদ্বার'),
(89, 44, 'Homna Upazila', 'হোমনা'),
(90, 44, 'Comilla Sadar Upazila', 'কুমিল্লা সদর'),
(91, 44, 'Laksam Upazila', 'লাকসাম'),
(92, 44, 'Monohorgonj Upazila', 'মনোহরগঞ্জ'),
(93, 44, 'Meghna Upazila', 'মেঘনা'),
(94, 44, 'Muradnagar Upazila', 'মুরাদনগর'),
(95, 44, 'Nangalkot Upazila', 'নাঙ্গালকোট'),
(96, 44, 'Comilla Sadar South Upazila', 'কুমিল্লা সদর দক্ষিণ'),
(97, 44, 'Titas Upazila', 'তিতাস'),
(98, 45, 'Chakaria Upazila', 'চকরিয়া'),
(100, 45, 'Cox\'s Bazar Sadar Upazila', 'কক্স বাজার সদর'),
(101, 45, 'Kutubdia Upazila', 'কুতুবদিয়া'),
(102, 45, 'Maheshkhali Upazila', 'মহেশখালী'),
(103, 45, 'Ramu Upazila', 'রামু'),
(104, 45, 'Teknaf Upazila', 'টেকনাফ'),
(105, 45, 'Ukhia Upazila', 'উখিয়া'),
(106, 45, 'Pekua Upazila', 'পেকুয়া'),
(107, 46, 'Feni Sadar', 'ফেনী সদর'),
(108, 46, 'Chagalnaiya', 'ছাগল নাইয়া'),
(109, 46, 'Daganbhyan', 'দাগানভিয়া'),
(110, 46, 'Parshuram', 'পরশুরাম'),
(111, 46, 'Fhulgazi', 'ফুলগাজি'),
(112, 46, 'Sonagazi', 'সোনাগাজি'),
(113, 47, 'Dighinala Upazila', 'দিঘিনালা '),
(114, 47, 'Khagrachhari Upazila', 'খাগড়াছড়ি'),
(115, 47, 'Lakshmichhari Upazila', 'লক্ষ্মীছড়ি'),
(116, 47, 'Mahalchhari Upazila', 'মহলছড়ি'),
(117, 47, 'Manikchhari Upazila', 'মানিকছড়ি'),
(118, 47, 'Matiranga Upazila', 'মাটিরাঙ্গা'),
(119, 47, 'Panchhari Upazila', 'পানছড়ি'),
(120, 47, 'Ramgarh Upazila', 'রামগড়'),
(121, 48, 'Lakshmipur Sadar Upazila', 'লক্ষ্মীপুর সদর'),
(122, 48, 'Raipur Upazila', 'রায়পুর'),
(123, 48, 'Ramganj Upazila', 'রামগঞ্জ'),
(124, 48, 'Ramgati Upazila', 'রামগতি'),
(125, 48, 'Komol Nagar Upazila', 'কমল নগর'),
(126, 49, 'Noakhali Sadar Upazila', 'নোয়াখালী সদর'),
(127, 49, 'Begumganj Upazila', 'বেগমগঞ্জ'),
(128, 49, 'Chatkhil Upazila', 'চাটখিল'),
(129, 49, 'Companyganj Upazila', 'কোম্পানীগঞ্জ'),
(130, 49, 'Shenbag Upazila', 'শেনবাগ'),
(131, 49, 'Hatia Upazila', 'হাতিয়া'),
(132, 49, 'Kobirhat Upazila', 'কবিরহাট '),
(133, 49, 'Sonaimuri Upazila', 'সোনাইমুরি'),
(134, 49, 'Suborno Char Upazila', 'সুবর্ণ চর '),
(135, 50, 'Rangamati Sadar Upazila', 'রাঙ্গামাটি সদর'),
(136, 50, 'Belaichhari Upazila', 'বেলাইছড়ি'),
(137, 50, 'Bagaichhari Upazila', 'বাঘাইছড়ি'),
(138, 50, 'Barkal Upazila', 'বরকল'),
(139, 50, 'Juraichhari Upazila', 'জুরাইছড়ি'),
(140, 50, 'Rajasthali Upazila', 'রাজাস্থলি'),
(141, 50, 'Kaptai Upazila', 'কাপ্তাই'),
(142, 50, 'Langadu Upazila', 'লাঙ্গাডু'),
(143, 50, 'Nannerchar Upazila', 'নান্নেরচর '),
(144, 50, 'Kaukhali Upazila', 'কাউখালি'),
(145, 1, 'Dhamrai Upazila', 'ধামরাই'),
(146, 1, 'Dohar Upazila', 'দোহার'),
(147, 1, 'Keraniganj Upazila', 'কেরানীগঞ্জ'),
(148, 1, 'Nawabganj Upazila', 'নবাবগঞ্জ'),
(149, 1, 'Savar Upazila', 'সাভার'),
(150, 2, 'Faridpur Sadar Upazila', 'ফরিদপুর সদর'),
(151, 2, 'Boalmari Upazila', 'বোয়ালমারী'),
(152, 2, 'Alfadanga Upazila', 'আলফাডাঙ্গা'),
(153, 2, 'Madhukhali Upazila', 'মধুখালি'),
(154, 2, 'Bhanga Upazila', 'ভাঙ্গা'),
(155, 2, 'Nagarkanda Upazila', 'নগরকান্ড'),
(156, 2, 'Charbhadrasan Upazila', 'চরভদ্রাসন '),
(157, 2, 'Sadarpur Upazila', 'সদরপুর'),
(158, 2, 'Shaltha Upazila', 'শালথা'),
(159, 3, 'Gazipur Sadar-Joydebpur', 'গাজীপুর সদর'),
(160, 3, 'Kaliakior', 'কালিয়াকৈর'),
(161, 3, 'Kapasia', 'কাপাসিয়া'),
(162, 3, 'Sripur', 'শ্রীপুর'),
(163, 3, 'Kaliganj', 'কালীগঞ্জ'),
(164, 3, 'Tongi', 'টঙ্গি'),
(165, 4, 'Gopalganj Sadar Upazila', 'গোপালগঞ্জ সদর'),
(166, 4, 'Kashiani Upazila', 'কাশিয়ানি'),
(167, 4, 'Kotalipara Upazila', 'কোটালিপাড়া'),
(168, 4, 'Muksudpur Upazila', 'মুকসুদপুর'),
(169, 4, 'Tungipara Upazila', 'টুঙ্গিপাড়া'),
(170, 5, 'Dewanganj Upazila', 'দেওয়ানগঞ্জ'),
(171, 5, 'Baksiganj Upazila', 'বকসিগঞ্জ'),
(172, 5, 'Islampur Upazila', 'ইসলামপুর'),
(173, 5, 'Jamalpur Sadar Upazila', 'জামালপুর সদর'),
(174, 5, 'Madarganj Upazila', 'মাদারগঞ্জ'),
(175, 5, 'Melandaha Upazila', 'মেলানদাহা'),
(176, 5, 'Sarishabari Upazila', 'সরিষাবাড়ি '),
(177, 5, 'Narundi Police I.C', 'নারুন্দি'),
(178, 6, 'Astagram Upazila', 'অষ্টগ্রাম'),
(179, 6, 'Bajitpur Upazila', 'বাজিতপুর'),
(180, 6, 'Bhairab Upazila', 'ভৈরব'),
(181, 6, 'Hossainpur Upazila', 'হোসেনপুর '),
(182, 6, 'Itna Upazila', 'ইটনা'),
(183, 6, 'Karimganj Upazila', 'করিমগঞ্জ'),
(184, 6, 'Katiadi Upazila', 'কতিয়াদি'),
(185, 6, 'Kishoreganj Sadar Upazila', 'কিশোরগঞ্জ সদর'),
(186, 6, 'Kuliarchar Upazila', 'কুলিয়ারচর'),
(187, 6, 'Mithamain Upazila', 'মিঠামাইন'),
(188, 6, 'Nikli Upazila', 'নিকলি'),
(189, 6, 'Pakundia Upazila', 'পাকুন্ডা'),
(190, 6, 'Tarail Upazila', 'তাড়াইল'),
(191, 7, 'Madaripur Sadar', 'মাদারীপুর সদর'),
(192, 7, 'Kalkini', 'কালকিনি'),
(193, 7, 'Rajoir', 'রাজইর'),
(194, 7, 'Shibchar', 'শিবচর'),
(195, 8, 'Manikganj Sadar Upazila', 'মানিকগঞ্জ সদর'),
(196, 8, 'Singair Upazila', 'সিঙ্গাইর'),
(197, 8, 'Shibalaya Upazila', 'শিবালয়'),
(198, 8, 'Saturia Upazila', 'সাঠুরিয়া'),
(199, 8, 'Harirampur Upazila', 'হরিরামপুর'),
(200, 8, 'Ghior Upazila', 'ঘিওর'),
(201, 8, 'Daulatpur Upazila', 'দৌলতপুর'),
(202, 9, 'Lohajang Upazila', 'লোহাজং'),
(203, 9, 'Sreenagar Upazila', 'শ্রীনগর'),
(204, 9, 'Munshiganj Sadar Upazila', 'মুন্সিগঞ্জ সদর'),
(205, 9, 'Sirajdikhan Upazila', 'সিরাজদিখান'),
(206, 9, 'Tongibari Upazila', 'টঙ্গিবাড়ি'),
(207, 9, 'Gazaria Upazila', 'গজারিয়া'),
(208, 10, 'Bhaluka', 'ভালুকা'),
(209, 10, 'Trishal', 'ত্রিশাল'),
(210, 10, 'Haluaghat', 'হালুয়াঘাট'),
(211, 10, 'Muktagachha', 'মুক্তাগাছা'),
(212, 10, 'Dhobaura', 'ধবারুয়া'),
(213, 10, 'Fulbaria', 'ফুলবাড়িয়া'),
(214, 10, 'Gaffargaon', 'গফরগাঁও'),
(215, 10, 'Gauripur', 'গৌরিপুর'),
(216, 10, 'Ishwarganj', 'ঈশ্বরগঞ্জ'),
(217, 10, 'Mymensingh Sadar', 'ময়মনসিং সদর'),
(218, 10, 'Nandail', 'নন্দাইল'),
(219, 10, 'Phulpur', 'ফুলপুর'),
(220, 11, 'Araihazar Upazila', 'আড়াইহাজার'),
(221, 11, 'Sonargaon Upazila', 'সোনারগাঁও'),
(222, 11, 'Bandar', 'বান্দার'),
(223, 11, 'Naryanganj Sadar Upazila', 'নারায়ানগঞ্জ সদর'),
(224, 11, 'Rupganj Upazila', 'রূপগঞ্জ'),
(225, 11, 'Siddirgonj Upazila', 'সিদ্ধিরগঞ্জ'),
(226, 12, 'Belabo Upazila', 'বেলাবো'),
(227, 12, 'Monohardi Upazila', 'মনোহরদি'),
(228, 12, 'Narsingdi Sadar Upazila', 'নরসিংদী সদর'),
(229, 12, 'Palash Upazila', 'পলাশ'),
(230, 12, 'Raipura Upazila, Narsingdi', 'রায়পুর'),
(231, 12, 'Shibpur Upazila', 'শিবপুর'),
(232, 13, 'Kendua Upazilla', 'কেন্দুয়া'),
(233, 13, 'Atpara Upazilla', 'আটপাড়া'),
(234, 13, 'Barhatta Upazilla', 'বরহাট্টা'),
(235, 13, 'Durgapur Upazilla', 'দুর্গাপুর'),
(236, 13, 'Kalmakanda Upazilla', 'কলমাকান্দা'),
(237, 13, 'Madan Upazilla', 'মদন'),
(238, 13, 'Mohanganj Upazilla', 'মোহনগঞ্জ'),
(239, 13, 'Netrakona-S Upazilla', 'নেত্রকোনা সদর'),
(240, 13, 'Purbadhala Upazilla', 'পূর্বধলা'),
(241, 13, 'Khaliajuri Upazilla', 'খালিয়াজুরি'),
(242, 14, 'Baliakandi Upazila', 'বালিয়াকান্দি'),
(243, 14, 'Goalandaghat Upazila', 'গোয়ালন্দ ঘাট'),
(244, 14, 'Pangsha Upazila', 'পাংশা'),
(245, 14, 'Kalukhali Upazila', 'কালুখালি'),
(246, 14, 'Rajbari Sadar Upazila', 'রাজবাড়ি সদর'),
(247, 15, 'Shariatpur Sadar -Palong', 'শরীয়তপুর সদর '),
(248, 15, 'Damudya Upazila', 'দামুদিয়া'),
(249, 15, 'Naria Upazila', 'নড়িয়া'),
(250, 15, 'Jajira Upazila', 'জাজিরা'),
(251, 15, 'Bhedarganj Upazila', 'ভেদারগঞ্জ'),
(252, 15, 'Gosairhat Upazila', 'গোসাইর হাট '),
(253, 16, 'Jhenaigati Upazila', 'ঝিনাইগাতি'),
(254, 16, 'Nakla Upazila', 'নাকলা'),
(255, 16, 'Nalitabari Upazila', 'নালিতাবাড়ি'),
(256, 16, 'Sherpur Sadar Upazila', 'শেরপুর সদর'),
(257, 16, 'Sreebardi Upazila', 'শ্রীবরদি'),
(258, 17, 'Tangail Sadar Upazila', 'টাঙ্গাইল সদর'),
(259, 17, 'Sakhipur Upazila', 'সখিপুর'),
(260, 17, 'Basail Upazila', 'বসাইল'),
(261, 17, 'Madhupur Upazila', 'মধুপুর'),
(262, 17, 'Ghatail Upazila', 'ঘাটাইল'),
(263, 17, 'Kalihati Upazila', 'কালিহাতি'),
(264, 17, 'Nagarpur Upazila', 'নগরপুর'),
(265, 17, 'Mirzapur Upazila', 'মির্জাপুর'),
(266, 17, 'Gopalpur Upazila', 'গোপালপুর'),
(267, 17, 'Delduar Upazila', 'দেলদুয়ার'),
(268, 17, 'Bhuapur Upazila', 'ভুয়াপুর'),
(269, 17, 'Dhanbari Upazila', 'ধানবাড়ি'),
(270, 55, 'Bagerhat Sadar Upazila', 'বাগেরহাট সদর'),
(271, 55, 'Chitalmari Upazila', 'চিতলমাড়ি'),
(272, 55, 'Fakirhat Upazila', 'ফকিরহাট'),
(273, 55, 'Kachua Upazila', 'কচুয়া'),
(274, 55, 'Mollahat Upazila', 'মোল্লাহাট '),
(275, 55, 'Mongla Upazila', 'মংলা'),
(276, 55, 'Morrelganj Upazila', 'মরেলগঞ্জ'),
(277, 55, 'Rampal Upazila', 'রামপাল'),
(278, 55, 'Sarankhola Upazila', 'স্মরণখোলা'),
(279, 56, 'Damurhuda Upazila', 'দামুরহুদা'),
(280, 56, 'Chuadanga-S Upazila', 'চুয়াডাঙ্গা সদর'),
(281, 56, 'Jibannagar Upazila', 'জীবন নগর '),
(282, 56, 'Alamdanga Upazila', 'আলমডাঙ্গা'),
(283, 57, 'Abhaynagar Upazila', 'অভয়নগর'),
(284, 57, 'Keshabpur Upazila', 'কেশবপুর'),
(285, 57, 'Bagherpara Upazila', 'বাঘের পাড়া '),
(286, 57, 'Jessore Sadar Upazila', 'যশোর সদর'),
(287, 57, 'Chaugachha Upazila', 'চৌগাছা'),
(288, 57, 'Manirampur Upazila', 'মনিরামপুর '),
(289, 57, 'Jhikargachha Upazila', 'ঝিকরগাছা'),
(290, 57, 'Sharsha Upazila', 'সারশা'),
(291, 58, 'Jhenaidah Sadar Upazila', 'ঝিনাইদহ সদর'),
(292, 58, 'Maheshpur Upazila', 'মহেশপুর'),
(293, 58, 'Kaliganj Upazila', 'কালীগঞ্জ'),
(294, 58, 'Kotchandpur Upazila', 'কোট চাঁদপুর '),
(295, 58, 'Shailkupa Upazila', 'শৈলকুপা'),
(296, 58, 'Harinakunda Upazila', 'হাড়িনাকুন্দা'),
(297, 59, 'Terokhada Upazila', 'তেরোখাদা'),
(298, 59, 'Batiaghata Upazila', 'বাটিয়াঘাটা '),
(299, 59, 'Dacope Upazila', 'ডাকপে'),
(300, 59, 'Dumuria Upazila', 'ডুমুরিয়া'),
(301, 59, 'Dighalia Upazila', 'দিঘলিয়া'),
(302, 59, 'Koyra Upazila', 'কয়ড়া'),
(303, 59, 'Paikgachha Upazila', 'পাইকগাছা'),
(304, 59, 'Phultala Upazila', 'ফুলতলা'),
(305, 59, 'Rupsa Upazila', 'রূপসা'),
(306, 60, 'Kushtia Sadar', 'কুষ্টিয়া সদর'),
(307, 60, 'Kumarkhali', 'কুমারখালি'),
(308, 60, 'Daulatpur', 'দৌলতপুর'),
(309, 60, 'Mirpur', 'মিরপুর'),
(310, 60, 'Bheramara', 'ভেরামারা'),
(311, 60, 'Khoksa', 'খোকসা'),
(312, 61, 'Magura Sadar Upazila', 'মাগুরা সদর'),
(313, 61, 'Mohammadpur Upazila', 'মোহাম্মাদপুর'),
(314, 61, 'Shalikha Upazila', 'শালিখা'),
(315, 61, 'Sreepur Upazila', 'শ্রীপুর'),
(316, 62, 'angni Upazila', 'আংনি'),
(317, 62, 'Mujib Nagar Upazila', 'মুজিব নগর'),
(318, 62, 'Meherpur-S Upazila', 'মেহেরপুর সদর'),
(319, 63, 'Narail-S Upazilla', 'নড়াইল সদর'),
(320, 63, 'Lohagara Upazilla', 'লোহাগাড়া'),
(321, 63, 'Kalia Upazilla', 'কালিয়া'),
(322, 64, 'Satkhira Sadar Upazila', 'সাতক্ষীরা সদর'),
(323, 64, 'Assasuni Upazila', 'আসসাশুনি '),
(324, 64, 'Debhata Upazila', 'দেভাটা'),
(325, 64, 'Tala Upazila', 'তালা'),
(326, 64, 'Kalaroa Upazila', 'কলরোয়া'),
(327, 64, 'Kaliganj Upazila', 'কালীগঞ্জ'),
(328, 64, 'Shyamnagar Upazila', 'শ্যামনগর'),
(329, 18, 'Adamdighi', 'আদমদিঘী'),
(330, 18, 'Bogra Sadar', 'বগুড়া সদর'),
(331, 18, 'Sherpur', 'শেরপুর'),
(332, 18, 'Dhunat', 'ধুনট'),
(333, 18, 'Dhupchanchia', 'দুপচাচিয়া'),
(334, 18, 'Gabtali', 'গাবতলি'),
(335, 18, 'Kahaloo', 'কাহালু'),
(336, 18, 'Nandigram', 'নন্দিগ্রাম'),
(337, 18, 'Sahajanpur', 'শাহজাহানপুর'),
(338, 18, 'Sariakandi', 'সারিয়াকান্দি'),
(339, 18, 'Shibganj', 'শিবগঞ্জ'),
(340, 18, 'Sonatala', 'সোনাতলা'),
(341, 19, 'Joypurhat S', 'জয়পুরহাট সদর'),
(342, 19, 'Akkelpur', 'আক্কেলপুর'),
(343, 19, 'Kalai', 'কালাই'),
(344, 19, 'Khetlal', 'খেতলাল'),
(345, 19, 'Panchbibi', 'পাঁচবিবি'),
(346, 20, 'Naogaon Sadar Upazila', 'নওগাঁ সদর'),
(347, 20, 'Mohadevpur Upazila', 'মহাদেবপুর'),
(348, 20, 'Manda Upazila', 'মান্দা'),
(349, 20, 'Niamatpur Upazila', 'নিয়ামতপুর'),
(350, 20, 'Atrai Upazila', 'আত্রাই'),
(351, 20, 'Raninagar Upazila', 'রাণীনগর'),
(352, 20, 'Patnitala Upazila', 'পত্নীতলা'),
(353, 20, 'Dhamoirhat Upazila', 'ধামইরহাট '),
(354, 20, 'Sapahar Upazila', 'সাপাহার'),
(355, 20, 'Porsha Upazila', 'পোরশা'),
(356, 20, 'Badalgachhi Upazila', 'বদলগাছি'),
(357, 21, 'Natore Sadar Upazila', 'নাটোর সদর'),
(358, 21, 'Baraigram Upazila', 'বড়াইগ্রাম'),
(359, 21, 'Bagatipara Upazila', 'বাগাতিপাড়া'),
(360, 21, 'Lalpur Upazila', 'লালপুর'),
(361, 21, 'Natore Sadar Upazila', 'নাটোর সদর'),
(362, 21, 'Baraigram Upazila', 'বড়াই গ্রাম'),
(363, 22, 'Bholahat Upazila', 'ভোলাহাট'),
(364, 22, 'Gomastapur Upazila', 'গোমস্তাপুর'),
(365, 22, 'Nachole Upazila', 'নাচোল'),
(366, 22, 'Nawabganj Sadar Upazila', 'নবাবগঞ্জ সদর'),
(367, 22, 'Shibganj Upazila', 'শিবগঞ্জ'),
(368, 23, 'Atgharia Upazila', 'আটঘরিয়া'),
(369, 23, 'Bera Upazila', 'বেড়া'),
(370, 23, 'Bhangura Upazila', 'ভাঙ্গুরা'),
(371, 23, 'Chatmohar Upazila', 'চাটমোহর'),
(372, 23, 'Faridpur Upazila', 'ফরিদপুর'),
(373, 23, 'Ishwardi Upazila', 'ঈশ্বরদী'),
(374, 23, 'Pabna Sadar Upazila', 'পাবনা সদর'),
(375, 23, 'Santhia Upazila', 'সাথিয়া'),
(376, 23, 'Sujanagar Upazila', 'সুজানগর'),
(377, 24, 'Bagha', 'বাঘা'),
(378, 24, 'Bagmara', 'বাগমারা'),
(379, 24, 'Charghat', 'চারঘাট'),
(380, 24, 'Durgapur', 'দুর্গাপুর'),
(381, 24, 'Godagari', 'গোদাগারি'),
(382, 24, 'Mohanpur', 'মোহনপুর'),
(383, 24, 'Paba', 'পবা'),
(384, 24, 'Puthia', 'পুঠিয়া'),
(385, 24, 'Tanore', 'তানোর'),
(386, 25, 'Sirajganj Sadar Upazila', 'সিরাজগঞ্জ সদর'),
(387, 25, 'Belkuchi Upazila', 'বেলকুচি'),
(388, 25, 'Chauhali Upazila', 'চৌহালি'),
(389, 25, 'Kamarkhanda Upazila', 'কামারখান্দা'),
(390, 25, 'Kazipur Upazila', 'কাজীপুর'),
(391, 25, 'Raiganj Upazila', 'রায়গঞ্জ'),
(392, 25, 'Shahjadpur Upazila', 'শাহজাদপুর'),
(393, 25, 'Tarash Upazila', 'তারাশ'),
(394, 25, 'Ullahpara Upazila', 'উল্লাপাড়া'),
(395, 26, 'Birampur Upazila', 'বিরামপুর'),
(396, 26, 'Birganj', 'বীরগঞ্জ'),
(397, 26, 'Biral Upazila', 'বিড়াল'),
(398, 26, 'Bochaganj Upazila', 'বোচাগঞ্জ'),
(399, 26, 'Chirirbandar Upazila', 'চিরিরবন্দর'),
(400, 26, 'Phulbari Upazila', 'ফুলবাড়ি'),
(401, 26, 'Ghoraghat Upazila', 'ঘোড়াঘাট'),
(402, 26, 'Hakimpur Upazila', 'হাকিমপুর'),
(403, 26, 'Kaharole Upazila', 'কাহারোল'),
(404, 26, 'Khansama Upazila', 'খানসামা'),
(405, 26, 'Dinajpur Sadar Upazila', 'দিনাজপুর সদর'),
(406, 26, 'Nawabganj', 'নবাবগঞ্জ'),
(407, 26, 'Parbatipur Upazila', 'পার্বতীপুর'),
(408, 27, 'Fulchhari', 'ফুলছড়ি'),
(409, 27, 'Gaibandha sadar', 'গাইবান্ধা সদর'),
(410, 27, 'Gobindaganj', 'গোবিন্দগঞ্জ'),
(411, 27, 'Palashbari', 'পলাশবাড়ী'),
(412, 27, 'Sadullapur', 'সাদুল্যাপুর'),
(413, 27, 'Saghata', 'সাঘাটা'),
(414, 27, 'Sundarganj', 'সুন্দরগঞ্জ'),
(415, 28, 'Kurigram Sadar', 'কুড়িগ্রাম সদর'),
(416, 28, 'Nageshwari', 'নাগেশ্বরী'),
(417, 28, 'Bhurungamari', 'ভুরুঙ্গামারি'),
(418, 28, 'Phulbari', 'ফুলবাড়ি'),
(419, 28, 'Rajarhat', 'রাজারহাট'),
(420, 28, 'Ulipur', 'উলিপুর'),
(421, 28, 'Chilmari', 'চিলমারি'),
(422, 28, 'Rowmari', 'রউমারি'),
(423, 28, 'Char Rajibpur', 'চর রাজিবপুর'),
(424, 29, 'Lalmanirhat Sadar', 'লালমনিরহাট সদর'),
(425, 29, 'Aditmari', 'আদিতমারি'),
(426, 29, 'Kaliganj', 'কালীগঞ্জ'),
(427, 29, 'Hatibandha', 'হাতিবান্ধা'),
(428, 29, 'Patgram', 'পাটগ্রাম'),
(429, 30, 'Nilphamari Sadar', 'নীলফামারী সদর'),
(430, 30, 'Saidpur', 'সৈয়দপুর'),
(431, 30, 'Jaldhaka', 'জলঢাকা'),
(432, 30, 'Kishoreganj', 'কিশোরগঞ্জ'),
(433, 30, 'Domar', 'ডোমার'),
(434, 30, 'Dimla', 'ডিমলা'),
(435, 31, 'Panchagarh Sadar', 'পঞ্চগড় সদর'),
(436, 31, 'Debiganj', 'দেবীগঞ্জ'),
(437, 31, 'Boda', 'বোদা'),
(438, 31, 'Atwari', 'আটোয়ারি'),
(439, 31, 'Tetulia', 'তেতুলিয়া'),
(440, 32, 'Badarganj', 'বদরগঞ্জ'),
(441, 32, 'Mithapukur', 'মিঠাপুকুর'),
(442, 32, 'Gangachara', 'গঙ্গাচরা'),
(443, 32, 'Kaunia', 'কাউনিয়া'),
(444, 32, 'Rangpur Sadar', 'রংপুর সদর'),
(445, 32, 'Pirgachha', 'পীরগাছা'),
(446, 32, 'Pirganj', 'পীরগঞ্জ'),
(447, 32, 'Taraganj', 'তারাগঞ্জ'),
(448, 33, 'Thakurgaon Sadar Upazila', 'ঠাকুরগাঁও সদর'),
(449, 33, 'Pirganj Upazila', 'পীরগঞ্জ'),
(450, 33, 'Baliadangi Upazila', 'বালিয়াডাঙ্গি'),
(451, 33, 'Haripur Upazila', 'হরিপুর'),
(452, 33, 'Ranisankail Upazila', 'রাণীসংকইল'),
(453, 51, 'Ajmiriganj', 'আজমিরিগঞ্জ'),
(454, 51, 'Baniachang', 'বানিয়াচং'),
(455, 51, 'Bahubal', 'বাহুবল'),
(456, 51, 'Chunarughat', 'চুনারুঘাট'),
(457, 51, 'Habiganj Sadar', 'হবিগঞ্জ সদর'),
(458, 51, 'Lakhai', 'লাক্ষাই'),
(459, 51, 'Madhabpur', 'মাধবপুর'),
(460, 51, 'Nabiganj', 'নবীগঞ্জ'),
(461, 51, 'Shaistagonj Upazila', 'শায়েস্তাগঞ্জ'),
(462, 52, 'Moulvibazar Sadar', 'মৌলভীবাজার'),
(463, 52, 'Barlekha', 'বড়লেখা'),
(464, 52, 'Juri', 'জুড়ি'),
(465, 52, 'Kamalganj', 'কামালগঞ্জ'),
(466, 52, 'Kulaura', 'কুলাউরা'),
(467, 52, 'Rajnagar', 'রাজনগর'),
(468, 52, 'Sreemangal', 'শ্রীমঙ্গল'),
(469, 53, 'Bishwamvarpur', 'বিসশম্ভারপুর'),
(470, 53, 'Chhatak', 'ছাতক'),
(471, 53, 'Derai', 'দেড়াই'),
(472, 53, 'Dharampasha', 'ধরমপাশা'),
(473, 53, 'Dowarabazar', 'দোয়ারাবাজার'),
(474, 53, 'Jagannathpur', 'জগন্নাথপুর'),
(475, 53, 'Jamalganj', 'জামালগঞ্জ'),
(476, 53, 'Sulla', 'সুল্লা'),
(477, 53, 'Sunamganj Sadar', 'সুনামগঞ্জ সদর'),
(478, 53, 'Shanthiganj', 'শান্তিগঞ্জ'),
(479, 53, 'Tahirpur', 'তাহিরপুর'),
(480, 54, 'Sylhet Sadar', 'সিলেট সদর'),
(481, 54, 'Beanibazar', 'বেয়ানিবাজার'),
(482, 54, 'Bishwanath', 'বিশ্বনাথ'),
(483, 54, 'Dakshin Surma Upazila', 'দক্ষিণ সুরমা'),
(484, 54, 'Balaganj', 'বালাগঞ্জ'),
(485, 54, 'Companiganj', 'কোম্পানিগঞ্জ'),
(486, 54, 'Fenchuganj', 'ফেঞ্চুগঞ্জ'),
(487, 54, 'Golapganj', 'গোলাপগঞ্জ'),
(488, 54, 'Gowainghat', 'গোয়াইনঘাট'),
(489, 54, 'Jaintiapur', 'জয়ন্তপুর'),
(490, 54, 'Kanaighat', 'কানাইঘাট'),
(491, 54, 'Zakiganj', 'জাকিগঞ্জ'),
(492, 54, 'Nobigonj', 'নবীগঞ্জ'),
(493, 45, 'Eidgaon- Cox\'s ', 'ঈঁদ্গাও');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `totalques` int(255) DEFAULT NULL,
  `answerscorrect` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(255) NOT NULL,
  `unique_id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `division` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `upazila` varchar(255) NOT NULL,
  `unions` varchar(255) NOT NULL,
  `word` varchar(255) NOT NULL,
  `village` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `status` enum('Active now','Offline now') NOT NULL,
  `login_status` enum('1','0') NOT NULL DEFAULT '1' COMMENT '0=inactive, 1=active',
  `order_amount` varchar(255) NOT NULL,
  `percentage_order` varchar(255) NOT NULL,
  `actype` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `referral_code` varchar(255) NOT NULL,
  `referral_point` int(255) NOT NULL DEFAULT 0,
  `referrer` varchar(255) NOT NULL,
  `education` varchar(255) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp(),
  `mess_id` varchar(255) NOT NULL,
  `exmne_course` varchar(255) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `m_status` varchar(255) NOT NULL,
  `religion` varchar(255) NOT NULL,
  `p_address` varchar(255) NOT NULL,
  `com_skill` varchar(255) NOT NULL,
  `lang_skill` varchar(255) NOT NULL,
  `h_int` varchar(255) NOT NULL,
  `s_q` varchar(255) NOT NULL,
  `c_objective` varchar(255) NOT NULL,
  `c_summary` varchar(255) NOT NULL,
  `signature` varchar(255) NOT NULL,
  `ref1` varchar(255) NOT NULL,
  `ref2` varchar(255) NOT NULL,
  `bio` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `user`, `name`, `email`, `phone`, `division`, `district`, `upazila`, `unions`, `word`, `village`, `pass`, `status`, `login_status`, `order_amount`, `percentage_order`, `actype`, `img`, `referral_code`, `referral_point`, `referrer`, `education`, `date_updated`, `mess_id`, `exmne_course`, `f_name`, `m_name`, `dob`, `m_status`, `religion`, `p_address`, `com_skill`, `lang_skill`, `h_int`, `s_q`, `c_objective`, `c_summary`, `signature`, `ref1`, `ref2`, `bio`) VALUES
(4, 1213154382, 'User-F-0000001', 'Farhad Foysal', 'mff585855075@gmail.com', '01585855075', 'চট্টগ্রাম', 'কক্স বাজার', 'ঈঁদ্গাও', 'ইসলামপুর-০১', 'w-1', 'Madrasha Pada', '369725', 'Offline now', '', '', '', 'admin', '1641760449bg.jpg', '369725', 10, '', '', '2021-09-27 01:43:35', '4', '71', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'আসসালামু আলাইকুম। আমি একটি পাবলিক বিশ্ববিদ্যালয়ে অনার্স ৪র্থ বর্ষে অধ্যয়নরত আছি। আমার বয়স ২৫ বছর। ছোটকালে ৫ বছর একটি কওমী মাদ্রাসায় পড়েছিলাম। তারপর স্কুলে ভর্তি হই। জীবনে অনেক উত্থান-পতন আসে। শুরুর দিকে ভালো ছাত্র ছিলাম। এখন ভার্সিটিতে এসে রেজাল্টও ভালোনা। আলেমদের কথা শুনে আবার ইসলাম নিয়ে পড়ালেখার আগ্রহ জন্মেছে। বিশেষত আব্দুল্লাহ জাহাঙ্গীর স্যারের লিখনী আমার অনেক উপকারে এসেছে।  আমার ভাইবোন চাকরী করে। পরিবার আলহামদুলিল্লাহ স্বচ্ছল। আমি পরিবারের সবচেয়ে ছোট। আমার প্রবল ইচ্ছা, একজন আলেম ও দ্বীনের দায়ী হওয়া। আপনাদের কাছে আমার জিজ্ঞাসা হলো, এই বয়সে এসে আলেম হওয়া যায় কিনা বা সেটা যুক্তিসংগত কিনা? আমার জন্য উপযোগী কোন ভালো মাদ্রাসা আছে কিনা? আপনাদের আসসুন্নাহতে এমন কোন ব্যবস্থা আছে?'),
(51, 837706146, 'User-F-0000003', 'mffoysal', 'mff585855075@gmail.com', '01873835887', 'চট্টগ্রাম', '1970-01-01', 'ঈঁদ্গাও', 'ইসলামপুর-০১', 'w-1', 'madrasha pada', '3697', 'Active now', '', '', '', 'mentor', '1633669154logo.png', '5655A9', 40, '', 'hons...', '2021-09-27 01:43:35', '1', '71', '', '', '', '', '', '', '', '', '', 'I have some qualification of teaching. Besides, I have potential of event organizing & data analyzing too. I can work under pressure an I am a quick learning.', '', '', '', '#Farhad Foysal Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.', '#Farhad Foysal Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.', ''),
(68, 290274163, 'User-F-0000004', 'Farhad Foysal', 'mff585855075@gmail.com', '01690175881', '', 'কক্স বাজার', 'ঈঁদ্গাও', 'ইসলামপুর-০১', '', 'User-F-0000004-village upade later', '3697', 'Active now', '', '', '', 'mentor', 'imagePic.jpg', '0968EA', 0, '5655A9', 'baf shaheen college jessore', '2021-09-27 01:43:35', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(69, 787579833, 'User-F-0000005', 'najifa', 'User-F-0000005-email update later', '01816444372', 'চট্টগ্রাম', 'কক্স বাজার', 'ঈঁদ্গাও', 'ইসলামপুর-০১', 'w-1', 'User-F-0000005-village upade later', '3697', 'Offline now', '', '', '', 'student', '16323237191623671499112.jpg', 'D60C64', 0, '5655A9', '', '2021-09-27 01:43:35', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(70, 787579835, 'User-F-0000006', 'najifa farid', 'User-F-0000005-email update later', '01770627875', 'চট্টগ্রাম', 'কক্স বাজার', 'ঈঁদ্গাও', 'ইসলামপুর-০১', 'w-1', 'User-F-0000005-village upade later', '3697', 'Active now', '', '', '', 'mentor', '', 'D60C64', 0, '5655A8', '', '2021-09-27 01:43:35', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(79, 343251195, '', 'faculty one', '', 'facultyone', '', '', '', '', '', '', '369725', 'Active now', '1', '', '', 'mentor', '', '', 0, '', '', '2022-11-21 19:29:34', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(80, 512078212, '', 'faculty two', '', 'facultytwo', '', '', '', '', '', '', '369725', 'Active now', '1', '', '', 'mentor', '', '', 0, '', '', '2022-11-21 19:37:46', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(81, 1455045245, '', 'stdtwo', '', 'stdtwo', '', '', '', '', '', '', '369725', 'Active now', '1', '', '', 'student', '', '', 0, '', '', '2022-11-21 19:38:01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_soes`
--

CREATE TABLE `user_soes` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_contact_no` varchar(30) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_profile` varchar(150) NOT NULL,
  `user_type` enum('Master','User') NOT NULL,
  `user_status` enum('Enable','Disable') NOT NULL,
  `user_created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_soes`
--

INSERT INTO `user_soes` (`user_id`, `user_name`, `user_contact_no`, `user_email`, `user_password`, `user_profile`, `user_type`, `user_status`, `user_created_on`) VALUES
(1, 'mffoysal', '', 'mff585855075@gmail.com', '369725', '../images/1626687780.png', 'Master', 'Enable', '2021-07-19 11:43:00'),
(3, 'mffoysal', '01816444372', 'edulearnfmnf@gmail.com', '369725', '../images/1632397240.png', 'User', 'Enable', '2021-09-23 17:40:40');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `video_id` int(255) NOT NULL,
  `video_path` varchar(255) NOT NULL,
  `video_name` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `video_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`video_id`, `video_path`, `video_name`, `course_name`, `video_image`) VALUES
(51, 'https://www.youtube.com/embed/LGKniBZoxvc', 'How to download jcalender in Netbeans | Hindi', 'java', '../../uploadimg/4.png'),
(52, 'https://www.youtube.com/embed/QmKJrnt4rQg', 'How to download jcalender in Netbeans | Hindi', 'java', '../../uploadimg/v.png'),
(56, 'https://www.youtube.com/embed/VEQYRJkoRBY', 'this is a python video', 'python', '../../uploadimg/2.png');

-- --------------------------------------------------------

--
-- Table structure for table `videos_demo`
--

CREATE TABLE `videos_demo` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `v_name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `album` varchar(255) NOT NULL,
  `std_show` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `secure` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `videos_demo`
--

INSERT INTO `videos_demo` (`id`, `img`, `unique_id`, `v_name`, `link`, `album`, `std_show`, `time`, `secure`) VALUES
(1, 'active', '837706146', 'video 1-mffoysal', '_08Q2hq3U9Q', 'SH', '100', '2021-12-01 11:16:56', 'S'),
(34, '', '837706146', 'video 2-mffoysal', '_08Q2hq3U9Q', 'SH', '100', '2021-12-01 11:25:49', 'S'),
(35, '', '837706146', 'video 2-mffoysal', '_08Q2hq3U9Q', 'SA', '100', '2021-12-01 11:25:49', 'S'),
(36, '', '1213154382', 'Alhamdulillah', 'bAHlJwWdW7E', 'P', '', '2022-01-09 18:05:20', 'S'),
(37, '', '1213154382', 'v2', 'bAHlJwWdW7E', 'SA', '', '2022-01-09 18:40:57', 'S'),
(38, '', '1213154382', 'v3', 'bAHlJwWdW7E', 'SB', '', '2022-01-09 18:41:16', 'S'),
(39, '', '1213154382', 'v4', 'bAHlJwWdW7E', 'SC', '', '2022-01-09 18:42:13', 'S');

-- --------------------------------------------------------

--
-- Table structure for table `video_info`
--

CREATE TABLE `video_info` (
  `course_id` int(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `video_info`
--

INSERT INTO `video_info` (`course_id`, `image`, `description`, `course_name`) VALUES
(25, '../../uploadimg/bg.jpg', 'Instructeb by MFF', 'Graphic Design');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activated`
--
ALTER TABLE `activated`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `all_student`
--
ALTER TABLE `all_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `category_f`
--
ALTER TABLE `category_f`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_section`
--
ALTER TABLE `class_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_soes`
--
ALTER TABLE `class_soes`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `commentsection`
--
ALTER TABLE `commentsection`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `comment_box`
--
ALTER TABLE `comment_box`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_tbl`
--
ALTER TABLE `course_tbl`
  ADD PRIMARY KEY (`cou_id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details_product`
--
ALTER TABLE `details_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `division_id` (`division_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `edu`
--
ALTER TABLE `edu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_answers`
--
ALTER TABLE `exam_answers`
  ADD PRIMARY KEY (`exans_id`);

--
-- Indexes for table `exam_attempt`
--
ALTER TABLE `exam_attempt`
  ADD PRIMARY KEY (`examat_id`);

--
-- Indexes for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  ADD PRIMARY KEY (`eqt_id`);

--
-- Indexes for table `exam_soes`
--
ALTER TABLE `exam_soes`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `exam_subject_question_answer`
--
ALTER TABLE `exam_subject_question_answer`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `exam_subject_question_soes`
--
ALTER TABLE `exam_subject_question_soes`
  ADD PRIMARY KEY (`exam_subject_question_id`);

--
-- Indexes for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  ADD PRIMARY KEY (`ex_id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbacks_tbl`
--
ALTER TABLE `feedbacks_tbl`
  ADD PRIMARY KEY (`fb_id`);

--
-- Indexes for table `fnd`
--
ALTER TABLE `fnd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `make_exam`
--
ALTER TABLE `make_exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marksheet`
--
ALTER TABLE `marksheet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meal_table`
--
ALTER TABLE `meal_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mess`
--
ALTER TABLE `mess`
  ADD PRIMARY KEY (`mess_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `mess_expense`
--
ALTER TABLE `mess_expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mytable`
--
ALTER TABLE `mytable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `programming_languages`
--
ALTER TABLE `programming_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchaseid`);

--
-- Indexes for table `purchase_detail`
--
ALTER TABLE `purchase_detail`
  ADD PRIMARY KEY (`pdid`);

--
-- Indexes for table `qanswers`
--
ALTER TABLE `qanswers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `question_opt`
--
ALTER TABLE `question_opt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_option_soes`
--
ALTER TABLE `question_option_soes`
  ADD PRIMARY KEY (`question_option_id`);

--
-- Indexes for table `question_test`
--
ALTER TABLE `question_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizquestions`
--
ALTER TABLE `quizquestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_list`
--
ALTER TABLE `quiz_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_students`
--
ALTER TABLE `quiz_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_student_list`
--
ALTER TABLE `quiz_student_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_users`
--
ALTER TABLE `quiz_users`
  ADD PRIMARY KEY (`unique_id`);

--
-- Indexes for table `qute`
--
ALTER TABLE `qute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping`
--
ALTER TABLE `shopping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `std_attendance`
--
ALTER TABLE `std_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `std_mark_distribution`
--
ALTER TABLE `std_mark_distribution`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_request_post`
--
ALTER TABLE `student_request_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_result`
--
ALTER TABLE `student_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_soes`
--
ALTER TABLE `student_soes`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_to_class_soes`
--
ALTER TABLE `student_to_class_soes`
  ADD PRIMARY KEY (`student_to_class_id`);

--
-- Indexes for table `subject_soes`
--
ALTER TABLE `subject_soes`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `subject_to_class_soes`
--
ALTER TABLE `subject_to_class_soes`
  ADD PRIMARY KEY (`subject_to_class_id`);

--
-- Indexes for table `subject_wise_exam_detail`
--
ALTER TABLE `subject_wise_exam_detail`
  ADD PRIMARY KEY (`exam_subject_id`);

--
-- Indexes for table `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutor_request`
--
ALTER TABLE `tutor_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unions`
--
ALTER TABLE `unions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upazila_id` (`upazila_id`);

--
-- Indexes for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `district_id` (`district_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_soes`
--
ALTER TABLE `user_soes`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `all_student`
--
ALTER TABLE `all_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `aid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category_f`
--
ALTER TABLE `category_f`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `class_section`
--
ALTER TABLE `class_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class_soes`
--
ALTER TABLE `class_soes`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `commentsection`
--
ALTER TABLE `commentsection`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `comment_box`
--
ALTER TABLE `comment_box`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course_tbl`
--
ALTER TABLE `course_tbl`
  MODIFY `cou_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `edu`
--
ALTER TABLE `edu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exam_answers`
--
ALTER TABLE `exam_answers`
  MODIFY `exans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=411;

--
-- AUTO_INCREMENT for table `exam_attempt`
--
ALTER TABLE `exam_attempt`
  MODIFY `examat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  MODIFY `eqt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `exam_soes`
--
ALTER TABLE `exam_soes`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `exam_subject_question_answer`
--
ALTER TABLE `exam_subject_question_answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `exam_subject_question_soes`
--
ALTER TABLE `exam_subject_question_soes`
  MODIFY `exam_subject_question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  MODIFY `ex_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `make_exam`
--
ALTER TABLE `make_exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marksheet`
--
ALTER TABLE `marksheet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meal_table`
--
ALTER TABLE `meal_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mess`
--
ALTER TABLE `mess`
  MODIFY `mess_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mess_expense`
--
ALTER TABLE `mess_expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `purchase_detail`
--
ALTER TABLE `purchase_detail`
  MODIFY `pdid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `qanswers`
--
ALTER TABLE `qanswers`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `question_opt`
--
ALTER TABLE `question_opt`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `quizquestions`
--
ALTER TABLE `quizquestions`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `quiz_list`
--
ALTER TABLE `quiz_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quiz_students`
--
ALTER TABLE `quiz_students`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quiz_student_list`
--
ALTER TABLE `quiz_student_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `std_attendance`
--
ALTER TABLE `std_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `std_mark_distribution`
--
ALTER TABLE `std_mark_distribution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_request_post`
--
ALTER TABLE `student_request_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_result`
--
ALTER TABLE `student_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subject_to_class_soes`
--
ALTER TABLE `subject_to_class_soes`
  MODIFY `subject_to_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subject_wise_exam_detail`
--
ALTER TABLE `subject_wise_exam_detail`
  MODIFY `exam_subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
