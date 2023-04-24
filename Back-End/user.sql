-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2023 at 12:08 AM
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
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `department` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
