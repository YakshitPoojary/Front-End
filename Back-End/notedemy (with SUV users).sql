-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2023 at 12:09 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notedemy`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`) VALUES
(1, 'Computer Engineering'),
(2, 'Information Technology'),
(3, 'Electronics'),
(4, 'Mechanical'),
(5, 'Electronics and Telecommunication');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` float NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sub_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `number`, `name`, `sub_id`) VALUES
(1, 1.1, 'Laplace Transforms', 1),
(2, 1.2, 'Fourier Series', 1),
(3, 1.3, 'Z-Transform', 1),
(4, 1.4, 'Vector Differentiation', 1),
(5, 1.5, 'Vector Integration', 1),
(6, 2.1, 'Introduction To Data Structures', 2),
(7, 2.2, 'Linear Data Structures', 2),
(8, 2.3, 'Non-Linear Data Structures', 2),
(9, 2.4, 'Non-Linear Data Structures', 2),
(10, 2.5, 'Searching and Sorting', 2),
(11, 3.1, 'Structure of Computer System ', 3),
(12, 3.2, 'Arithmetic and Logic Unit', 3),
(13, 3.3, 'Central Processing Unit', 3),
(14, 3.4, 'Memory Organization', 3),
(15, 3.5, 'I/O Organization', 3),
(16, 3.6, 'Multiprocessor', 3),
(17, 4.1, 'Fundamentals of Object oriented Programming', 4),
(82, 4.2, 'Class, Object, Method and Constructor', 4),
(83, 4.3, 'Arrays String and vectors', 4),
(84, 4.4, 'Inheritance and Interface', 4),
(85, 4.5, 'Class Diagram', 4),
(86, 4.6, 'Exception Handling & Packages, Multithreading', 4),
(87, 5.1, 'Set Theory', 5),
(88, 5.2, 'Logic', 5),
(89, 5.3, 'Relations, Digraphs', 5),
(90, 5.4, 'Posets and Lattice', 5),
(91, 5.5, 'Functions and Pigeon Hole Principle', 5),
(92, 5.6, 'Graphs and Subgraphs', 5),
(93, 5.7, 'Algebraic Structures', 5),
(94, 6.1, 'Probability and Probability Distribution', 6),
(95, 6.2, 'Correlation and Regression', 6),
(96, 6.3, 'Sampling Theory', 6),
(97, 6.4, 'Optimization Techniques', 6),
(98, 6.5, 'Queuing Theory', 6),
(99, 7.1, 'Introduction to analysis of algorithm', 7),
(100, 7.2, 'Greedy Technique', 7),
(101, 7.3, 'String Matching Algorithms', 7),
(102, 7.4, 'Non-deterministic Polynomial Algorithms', 7),
(103, 8.1, 'Introduction To RDBMS', 8),
(104, 8.2, 'Data Modeling: Enhanced-Entity-Relationship Model and\r\nRelational Data Model', 8),
(105, 8.3, 'Relational Algebra and Structured Query Language (SQL),', 8),
(106, 8.4, 'Query Processing and optimization', 8),
(107, 8.5, 'Relational–Database Design', 8),
(108, 8.6, 'Transaction Management, Concurrency control and Recovery\r\nprotocols', 8),
(109, 9.1, 'Finite Automata', 9),
(110, 9.2, 'Regular Languages', 9),
(111, 9.3, 'Context Free Grammars', 9),
(112, 9.4, 'Push Down Automata', 9),
(113, 9.5, 'Turing Machine', 9),
(114, 9.6, 'Un-decidability and Recursively Enumerable Languages', 9),
(115, 10.1, 'Laplace Transform', 10),
(116, 10.2, 'Fourier Series', 10),
(117, 10.3, 'Z-Transform', 10),
(118, 10.4, 'Vector Differentiation', 10),
(119, 10.5, 'Vector Integration', 10),
(120, 11.1, 'Introduction to Data Structures', 11),
(121, 11.2, 'Linear data structures: Linked List, Stack and Queue', 11),
(122, 11.3, 'Non-linear data structures: Tree and Graph', 11),
(123, 11.4, 'Set, Map and Dictionary', 11),
(124, 11.5, 'Searching and Sorting', 11),
(125, 12.1, 'Database concepts and Systems', 12),
(126, 12.2, 'Database Models and SQL', 12),
(127, 12.3, 'Relational Database Design', 12),
(128, 12.4, 'Indexing, Hashing , Query processing and Optimization', 12),
(129, 12.5, 'Transactions, Concurrency control and Recovery system', 12),
(130, 13.1, 'Number Systems, Codes, Logic gates and Simplification Techniques', 13),
(131, 13.2, 'Combinational Logic Design', 13),
(132, 13.3, 'Sequential Logic Design', 13),
(133, 13.4, 'Functional Units of Digital Systems', 13),
(134, 13.5, 'Introduction to Microprocessors', 13),
(135, 14.1, 'Introduction to DCN', 14),
(136, 14.2, 'The Application Layer', 14),
(137, 14.3, 'The Transport Layer', 14),
(138, 14.4, 'The Network Layer', 14),
(139, 14.5, 'The Data Dink Layer & Physical layer (Host layer)', 14),
(140, 15.1, 'Probability and Probability Distribution', 15),
(141, 15.2, 'Correlation and Regression', 15),
(142, 15.3, 'Sampling Theory', 15),
(143, 15.4, 'Optimization Techniques', 15),
(144, 15.5, 'Queuing Theory', 15),
(145, 16.1, 'Basics of Information Theory', 16),
(146, 16.2, 'Source Codes', 16),
(147, 16.3, 'Error Control Code :Linear block code', 16),
(148, 16.4, 'Error Control Code: Cyclic code and Convolution code', 16),
(149, 16.5, 'Basics of Number Theory and Cryptography', 16),
(150, 17.1, 'Introduction to Algorithms', 17),
(151, 17.2, 'Analysis of Basic Algorithms', 17),
(152, 17.3, 'Greedy Algorithms and Dynamic Programming', 17),
(153, 17.4, 'Backtracking and Branch and Bound Algorithms', 17),
(154, 17.5, 'Computability Theory', 17),
(155, 18.1, 'Parallel and Distributed Databases', 18),
(156, 18.2, 'Object Based, Spatial Databases and NOSQL Databases', 18),
(157, 18.3, 'Introduction to Data Warehousing and multi-dimensional Modeling', 18),
(158, 18.4, 'ETL Process', 18),
(159, 18.5, 'Online analytical processing (OLAP)', 18),
(160, 19.1, 'Best practices for Competitive programing', 19),
(161, 19.2, 'Optimization of Data Structures and Algorithms', 19),
(162, 19.3, 'Strings, Arithmetic and Algebra operations', 19),
(163, 19.4, 'Graphs', 19),
(164, 19.5, 'Computational Geometry', 19),
(165, 20.1, 'Introduction to web technologies', 20),
(166, 20.2, 'Web Page Creation with HTML 5 and CSS3', 20),
(167, 20.3, 'Introduction to XML', 20),
(168, 20.4, 'Working with JavaScript and JSON', 20),
(169, 20.5, 'Introduction to ReactJS', 20);

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(30) DEFAULT NULL,
  `extension` varchar(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `directory` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`id`, `title`, `extension`, `description`, `status`, `user_id`, `directory`) VALUES
(1, 'data ', '.pdf', 'asdsd', NULL, 2, '/f'),
(2, '', '.pdf', 'asdsd', NULL, 2, 'Computer Science/Data Structure/Introduction to Data Structu'),
(3, 'WPL_Expt_3_Bootstrap.pdf', 'Array', 'hello this is a test ', NULL, 2, 'Information Technology/Web Programming Laboratory/Introducti'),
(4, 'WPL_Expt_3_Bootstrap.pdf', 'pdf', '', NULL, 2, 'Information Technology/Web Programming Laboratory/Introducti'),
(5, 'WPL_Expt_3_Bootstrap.pdf', 'pdf', 'test2', NULL, 2, 'Computer Science/Data Structure/Introduction to Data Structu'),
(13, 'WPL_Expt_3_Bootstrap.pdf', 'pdf', 'sda', NULL, 2, 'Computer Science/Integral Transform and Vector Calculus/Laplace Transform');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dept_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`, `dept_id`) VALUES
(1, 'Integral Transform and Vector Calculus', 1),
(2, 'Data Structure', 1),
(3, 'Computer Organization & Architecture', 1),
(4, 'Object Oriented Programming Methodology', 1),
(5, 'Discrete Mathematics', 1),
(6, 'Probability, Statistics and Optimization Techniques', 1),
(7, 'Analysis of Algorithms', 1),
(8, 'Relational Database Management Systems', 1),
(9, 'Theory of Automata with Compiler Design', 1),
(10, 'Discrete and Applied Mathematics', 2),
(11, 'Data Structure', 2),
(12, 'Database Management Systems', 2),
(13, 'Digital Systems', 2),
(14, 'Data Communication and Networking', 2),
(15, 'Probability, Statistics and Optimization Techniques', 2),
(16, 'Information Theory and Coding', 2),
(17, 'Analysis of Algorithms', 2),
(18, 'Advanced Databases', 2),
(19, 'Competitive Programming Laboratory', 2),
(20, 'Web Programming Laboratory', 2),
(21, 'MME1', 4),
(22, 'SM', 4),
(23, 'MSM', 4),
(24, 'THR', 4),
(25, 'PE1', 4),
(26, 'CAD', 4),
(27, 'MME2', 4),
(28, 'TM', 4),
(29, 'FM', 4),
(30, 'PE2', 4),
(31, 'HMT', 4),
(32, 'MEE1', 3),
(33, 'EN', 3),
(34, 'BEC', 3),
(35, 'DE', 3),
(36, 'SS', 3),
(37, 'DSC', 3),
(38, 'DSP', 3),
(39, 'BECL', 3),
(40, 'DEL', 3),
(41, 'SSL', 3),
(42, 'Mathematics for Communication Engineering - I', 5),
(43, 'Basic Electronic Circuits', 5),
(44, 'Digital Logic Design', 5),
(45, 'Microprocessor and Microcontroller', 5),
(46, 'Electrical Network Theory', 5),
(47, 'Data Structures and Analysis of Algorithms Laboratory', 5),
(48, 'Mathematics for Communication Engineering - II', 5),
(49, 'Analog Electronics', 5),
(50, 'Communication Systems', 5),
(51, 'Signals and Systems', 5),
(52, 'Electromagnetic Field Theory', 5),
(53, 'Hardware Description Language Laboratory', 5);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `role` int(2) NOT NULL,
  `admin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fname`, `lname`, `email`, `password`, `username`, `branch_id`, `role`, `admin`) VALUES
(1, 'Yakshit', 'Poojary', 'yakshit@gmail.com', 'password', 'Yakshit', 1, 0, 1),
(2, 'Salman', 'Moghul', 'salman@gmail.com', '123', 'Sallu007', 1, 1, 1),
(17, 'Moksh', 'Mehta', 'moksh.m@somaiya.edu', '123', 'mokashhh', 2, 1, 1),
(32, NULL, NULL, 'priyal.keharia@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(33, NULL, NULL, 'rashika.a@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(34, NULL, NULL, 'raj.ma@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(35, NULL, NULL, 'meet.jain8@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(36, NULL, NULL, 'tejal.ambhore@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(37, NULL, NULL, 'alfiya.a@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(38, NULL, NULL, 'alekya.arra@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(39, NULL, NULL, 'avanish.a@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(40, NULL, NULL, 'risha.r@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(41, NULL, NULL, 'gaurish.baliga@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(42, NULL, NULL, 'azhar.bamne@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(43, NULL, NULL, 'ketankumar.b@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(44, NULL, NULL, 'jiya.bhagat@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(45, NULL, NULL, 'girik.b@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(46, NULL, NULL, 'ranak.b@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(47, NULL, NULL, 'nidhi.bhandari@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(48, NULL, NULL, 'viraj.bhansali@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(49, NULL, NULL, 'shashank07@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(50, NULL, NULL, 'anwesh.b@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(51, NULL, NULL, 'aadit.thakur@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(52, NULL, NULL, 't.bhilare@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(53, NULL, NULL, 'jagjit.b@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(54, NULL, NULL, 'shlok.bhura@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(55, NULL, NULL, 'atharva26@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(56, NULL, NULL, 'praneel.bora@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(57, NULL, NULL, 'sakshi.borade@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(58, NULL, NULL, 'omkar.boralkar@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(59, NULL, NULL, 'aditya.patil7@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(60, NULL, NULL, 'neil.carnac@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(61, NULL, NULL, 'atharv.c@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(62, NULL, NULL, 'aditya.chandran@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(63, NULL, NULL, 'kunal.chaturvedi@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(64, NULL, NULL, 'nupur.chaudhari@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(65, NULL, NULL, 'sahil.mc@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(66, NULL, NULL, 'vedant.hc@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(67, NULL, NULL, 'anaya.c@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(68, NULL, NULL, 'a.shirsat@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(69, NULL, NULL, 'rushiel.s@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(70, NULL, NULL, 'nicole.dcosta@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(71, NULL, NULL, 'dedhia.dr@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(72, NULL, NULL, 'atharva.desai@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(73, NULL, NULL, 'vishrut.deshmukh@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(74, NULL, NULL, 'pargatsingh.d@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(75, NULL, NULL, 'pratham.dhruv@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(76, NULL, NULL, 'a.duddalwar@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(77, NULL, NULL, 'meet21@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(78, NULL, NULL, 'manan.ganatra@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(79, NULL, NULL, 'sidhi.gandhi@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(80, NULL, NULL, 'ishita.garg@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(81, NULL, NULL, 'om.ghadia@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(82, NULL, NULL, 'arnav.gholap@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(83, NULL, NULL, 'aaryan.g@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(84, NULL, NULL, 'anusha.goswami@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(85, NULL, NULL, 'dhruv.gundecha@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(86, NULL, NULL, 'darshan.gupta@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(87, NULL, NULL, 'manas.h@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(88, NULL, NULL, 'riya.hemani@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(89, NULL, NULL, 'vignesh.i@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(90, NULL, NULL, 'niranjan.jadhav@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(91, NULL, NULL, 'sai.rj@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(92, NULL, NULL, 'suyesh.j@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(93, NULL, NULL, 'devesh.jain@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(94, NULL, NULL, 'paras.jain@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(95, NULL, NULL, 'ritvik.j@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(96, NULL, NULL, 'isha.dj@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(97, NULL, NULL, 'shreenand.j@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(98, NULL, NULL, 'anarva.k@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(99, NULL, NULL, 'anish.karkera@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(100, NULL, NULL, 'shivom.k@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(101, NULL, NULL, 'isha.khandalekar@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(102, NULL, NULL, 'ayush.khandare@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(103, NULL, NULL, 'devansh.khandor@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(104, NULL, NULL, 'a.kharote@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(105, NULL, NULL, 'mohak.khetan@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(106, NULL, NULL, 'shrey.khurana@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(107, NULL, NULL, 'manasi.kothawade@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(108, NULL, NULL, 'ahaan.kotian@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(109, NULL, NULL, 'aaditya.kulkarni@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(110, NULL, NULL, 'aditya.nk@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(111, NULL, NULL, 'aak3@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(112, NULL, NULL, 'atharva15@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(113, NULL, NULL, 'kedar.mk@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(114, NULL, NULL, 'shiwani.k@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(115, NULL, NULL, 'shubraja.l@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(116, NULL, NULL, 'rylan.lewis@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(117, NULL, NULL, 'smit.malde@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(118, NULL, NULL, 'aryan.dm@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(119, NULL, NULL, 'yash.merchant@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(120, NULL, NULL, 'zaidali.m@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(121, NULL, NULL, 'rohan.mhabdi@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(122, NULL, NULL, 'aatmaj.m@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(123, NULL, NULL, 'aditya.nm@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(124, NULL, NULL, 'kartikeya.m@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(125, NULL, NULL, 'raunak.mitra@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(126, NULL, NULL, 'kashvi.mody@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(127, NULL, NULL, 'dibyani.m@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(128, NULL, NULL, 'mustafa.motiwala@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(129, NULL, NULL, 'ved.mulik@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(130, NULL, NULL, 'atharv.mundhe@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(131, NULL, NULL, 'sahil.nagarkar@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(132, NULL, NULL, 'milind.nair@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(133, NULL, NULL, 'sushant.nair@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(134, NULL, NULL, 'parth.pancholi@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(135, NULL, NULL, 'anurag.rp@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(136, NULL, NULL, 'reema.p@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(137, NULL, NULL, 'raheel.p@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(138, NULL, NULL, 'aditya.parikh@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(139, NULL, NULL, 'aayushi.parmar@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(140, NULL, NULL, 'aryan.parmar@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(141, NULL, NULL, 'madhav.mp@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(142, NULL, NULL, 'ujjawal.p@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(143, NULL, NULL, 'himanshu.patil@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(144, NULL, NULL, 'aayushi.pawar@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(145, NULL, NULL, 'nup@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(146, NULL, NULL, 'ananya.pillai@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(147, NULL, NULL, 'avneesh.p@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(148, NULL, NULL, 'shruti.pimple@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(149, NULL, NULL, 'yakshit.p@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(150, NULL, NULL, 'harsh.prabhu@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(151, NULL, NULL, 'sania.prabhu@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(152, NULL, NULL, 'tejas.pundlik@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(153, NULL, NULL, 'shubh.radia@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(154, NULL, NULL, 'kanishka.raikwar@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(155, NULL, NULL, 'priyansh.r@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(156, NULL, NULL, 'nandhini.r@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(157, NULL, NULL, 'rao.s@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(158, NULL, NULL, 'samarjit.ray@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(159, NULL, NULL, 'vivek.ray@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(160, NULL, NULL, 'brishti.roy@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(161, NULL, NULL, 'aditi.sahu@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(162, NULL, NULL, 'shivam.saigal@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(163, NULL, NULL, 'sahil.saksena@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(164, NULL, NULL, 'aditi.sambrekar@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(165, NULL, NULL, 'v.sanchala@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(166, NULL, NULL, 'sania.sarin@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(167, NULL, NULL, 'abhishek.sarkar@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(168, NULL, NULL, 'dev.bs@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(169, NULL, NULL, 'mrudula.s@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(170, NULL, NULL, 'dhruvi.ys@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(171, NULL, NULL, 'hiyaa.s@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(172, NULL, NULL, 'keval10@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(173, NULL, NULL, 'vidhi05@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(174, NULL, NULL, 'anurag.shahal@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(175, NULL, NULL, 'sarfaraz.s@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(176, NULL, NULL, 'chirag.sharma@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(177, NULL, NULL, 'kedar.shidhaye@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(178, NULL, NULL, 'navya.s@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(179, NULL, NULL, 'ankit.shyam@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(180, NULL, NULL, 'agam.singh@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(181, NULL, NULL, 'pranay.singh@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(182, NULL, NULL, 'vedantika.s@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(183, NULL, NULL, 'uditi.sinha@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(184, NULL, NULL, 'shreshtha.sodhia@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(185, NULL, NULL, 'soni.vd@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(186, NULL, NULL, 'raghav24@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(187, NULL, NULL, 'anirudha.ta@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(188, NULL, NULL, 'asmi.takle@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(189, NULL, NULL, 'atharva.tambe@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(190, NULL, NULL, 'k.tank@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(191, NULL, NULL, 'divya.tikoo@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(192, NULL, NULL, 'atharva.vaidya@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(193, NULL, NULL, 'yoshi.v@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(194, NULL, NULL, 'aditya.ved@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(195, NULL, NULL, 'surabhi14@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(196, NULL, NULL, 'bhavya.dv@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(197, NULL, NULL, 'rugved.palodkar@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(198, NULL, NULL, 'rutva.vora@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(199, NULL, NULL, 'yasha.wakhle@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(200, NULL, NULL, 'vidisha.w@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(201, NULL, NULL, 'viraj.y@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(202, NULL, NULL, 'chhavi.gupta@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(203, NULL, NULL, 'zarwaan.s@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(204, NULL, NULL, 'varrshinie.a@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(205, NULL, NULL, 's.raman@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(206, NULL, NULL, 'ashmit.bakshi@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(207, NULL, NULL, 'shivansh.pg@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(208, NULL, NULL, 'shivesh.bhat@somaiya.edu', NULL, NULL, NULL, 0, NULL),
(209, NULL, NULL, 'aag2@somaiya.edu', NULL, NULL, NULL, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `number` (`number`),
  ADD KEY `sub_id` (`sub_id`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `branch_id` (`branch_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `module`
--
ALTER TABLE `module`
  ADD CONSTRAINT `module_ibfk_1` FOREIGN KEY (`sub_id`) REFERENCES `subject` (`id`);

--
-- Constraints for table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `note_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `department` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
