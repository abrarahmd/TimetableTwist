-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2024 at 10:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `integrated_student_service_platform`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `CourseName` varchar(200) NOT NULL,
  `Time` text NOT NULL,
  `Section` int(100) NOT NULL,
  `Day1` text NOT NULL,
  `Day2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`CourseName`, `Time`, `Section`, `Day1`, `Day2`) VALUES
('CSE110', '8:00 - 9:20', 1, 'Sunday', 'Tuesday'),
('CSE110', '9:30 - 10:50', 2, 'Monday', 'Wednesday'),
('CSE110', '9:30 - 10:50', 3, 'Sunday', 'Tuesday'),
('CSE111', '8:00 - 9:20', 1, 'Sunday', 'Tuesday'),
('CSE111', '2:00 - 3:20', 2, 'Thursday', 'Saturday'),
('CSE111', '3:30 - 5:00', 3, 'Monday', 'Wednesday'),
('CSE220', '11:00 - 12:20', 1, 'Monday', 'Wednesday'),
('CSE220', '12:30 - 1:50', 2, 'Monday', 'Wednesday'),
('CSE220', '9:30 - 10:50', 3, 'Sunday', 'Tuesday'),
('CSE221', '8:00 - 9:20', 1, 'Thursday', 'Saturday'),
('CSE221', '9:30 - 10:50', 2, 'Monday', 'Wednesday'),
('CSE221', '3:30 - 5:00', 3, 'Sunday', 'Tuesday'),
('CSE470', '11:00 - 12:20', 1, 'Sunday', 'Tuesday'),
('CSE470', '2:00 - 3:20', 2, 'Monday', 'Wednesday'),
('CSE470', '12:30 - 1:50', 3, 'Sunday', 'Tuesday');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `FoodName` varchar(200) NOT NULL,
  `FoodRating` float DEFAULT NULL,
  `FoodCost` int(11) NOT NULL,
  `FoodPicture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`FoodName`, `FoodRating`, `FoodCost`, `FoodPicture`) VALUES
('Biryani', 5, 160, '/biryani.webp'),
('Burger', 5, 120, '/buger.jpg'),
('Chocolate', 5, 20, '/chocolate.jpg'),
('Chocolate Cup Cake', 5, 50, '/gallary_3.jpg'),
('Chocolate Milkshake', 5, 80, '/chocolate_Drink.jpg'),
('Drinks', 5, 60, '/juse.jpg'),
('Hot Dog', 5, 80, '/Hot_dog.jpg'),
('Ice Cream', 5, 100, '/ice_cream.jpg'),
('Muffin Cake', 5, 40, '/Spanchi.jpg'),
('Pasta', 5, 100, '/pasta.jpg'),
('Pizza', 5, 250, '/pizza.jpg'),
('Sandwich', 5, 70, '/sandwich.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `foodcart`
--

CREATE TABLE `foodcart` (
  `FoodPicture` text NOT NULL,
  `StudentID` int(11) NOT NULL,
  `FoodName` varchar(200) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Bill` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foodcart`
--

INSERT INTO `foodcart` (`FoodPicture`, `StudentID`, `FoodName`, `Quantity`, `Bill`) VALUES
('/Hot_dog.jpg', 21301309, 'Hot Dog', 1, 80),
('/sandwich.jpg', 21301309, 'Sandwich', 1, 70);

-- --------------------------------------------------------

--
-- Table structure for table `forum`
--

CREATE TABLE `forum` (
  `PostID` int(11) NOT NULL,
  `Text` text NOT NULL,
  `Picture` blob NOT NULL,
  `Comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parkingmanagement`
--

CREATE TABLE `parkingmanagement` (
  `SpaceID` int(100) NOT NULL,
  `SpaceAvailibility` int(200) NOT NULL,
  `SeatPaid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `Name` varchar(64) NOT NULL,
  `Place` text NOT NULL,
  `Time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`Name`, `Place`, `Time`) VALUES
('BRAC University', 'Moddho Badda', '7:30 AM'),
('Dhanmondi', 'Road No 7 (ARA Center Shopping Mall)', '6:35 AM'),
('Kalabagan', 'Krira Chokro (Near Foot Over-Bridge)', '6:40 AM'),
('Manik Mia Avenue', 'West End of Manik Mia Avenue (Opposite Aarong)', '6:50 AM'),
('New Market', 'Gate no 2, Janata Bank', '6:30 AM'),
('Sobhanbag', 'Sobhanbag (Near Foot Over-Bridge)', '6:45 AM');

-- --------------------------------------------------------

--
-- Table structure for table `transportation`
--

CREATE TABLE `transportation` (
  `BusType` varchar(64) NOT NULL,
  `Time` text NOT NULL,
  `SeatID` int(11) NOT NULL,
  `SeatAvailibility` int(11) NOT NULL,
  `SeatPaid` int(11) NOT NULL,
  `SeatBooked` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transportation`
--

INSERT INTO `transportation` (`BusType`, `Time`, `SeatID`, `SeatAvailibility`, `SeatPaid`, `SeatBooked`) VALUES
('Going', '6:30', 1, 1, 0, NULL),
('Going', '6:30', 2, 1, 0, NULL),
('Going', '6:30', 3, 1, 0, NULL),
('Going', '6:30', 4, 1, 0, NULL),
('Going', '6:30', 5, 1, 0, NULL),
('Going', '6:30', 6, 1, 0, NULL),
('Going', '6:30', 7, 1, 0, NULL),
('Going', '6:30', 8, 1, 0, NULL),
('Going', '6:30', 9, 1, 0, NULL),
('Going', '6:30', 10, 1, 0, NULL),
('Going', '6:30', 11, 1, 0, NULL),
('Going', '6:30', 12, 1, 0, NULL),
('Going', '6:30', 13, 1, 0, NULL),
('Going', '6:30', 14, 1, 0, NULL),
('Going', '6:30', 15, 1, 0, NULL),
('Going', '6:30', 16, 1, 0, NULL),
('Going', '6:30', 17, 1, 0, NULL),
('Going', '6:30', 18, 1, 0, NULL),
('Going', '6:30', 19, 1, 0, NULL),
('Going', '6:30', 20, 1, 0, NULL),
('Returning', '5:00', 1, 1, 0, NULL),
('Returning', '5:00', 2, 1, 0, NULL),
('Returning', '5:00', 3, 1, 0, NULL),
('Returning', '5:00', 4, 1, 0, NULL),
('Returning', '5:00', 5, 1, 0, NULL),
('Returning', '5:00', 6, 1, 0, NULL),
('Returning', '5:00', 7, 1, 0, NULL),
('Returning', '5:00', 8, 1, 0, NULL),
('Returning', '5:00', 9, 1, 0, NULL),
('Returning', '5:00', 10, 1, 0, NULL),
('Returning', '5:00', 11, 1, 0, NULL),
('Returning', '5:00', 12, 1, 0, NULL),
('Returning', '5:00', 13, 1, 0, NULL),
('Returning', '5:00', 14, 1, 0, NULL),
('Returning', '5:00', 15, 1, 0, NULL),
('Returning', '5:00', 16, 1, 0, NULL),
('Returning', '5:00', 17, 1, 0, NULL),
('Returning', '5:00', 18, 1, 0, NULL),
('Returning', '5:00', 19, 1, 0, NULL),
('Returning', '5:00', 20, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `StudentID` int(11) NOT NULL,
  `Username` varchar(64) NOT NULL,
  `StudentName` varchar(100) NOT NULL,
  `Email` varchar(62) NOT NULL,
  `Grade` float NOT NULL,
  `Phone` int(20) NOT NULL,
  `Password` text NOT NULL,
  `Token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`StudentID`, `Username`, `StudentName`, `Email`, `Grade`, `Phone`, `Password`, `Token`) VALUES
(21301022, 'Penguin', 'Zarin Tasnim Raisa', 'zarin.tasnim.raisa@g.bracu.ac.bd', 0, 1749750952, '$2b$08$KU4D7XQHde5Zk6Tu0lUd9eotXy5.9gbVW90PU8kT9hJF6FHSpoB.S', 'cyrj0529gps'),
(21301309, 'PhantomN3rd', 'Abrar Ahmed', 'abrar.ahmed1@g.bracu.ac.bd', 0, 1749750959, '$2b$08$YmQTOfg52Xn.3cRbVVpK6OK82P8wU6uGDCO31bubSIEoaC6bsxjpK', '826i94eokwa');

-- --------------------------------------------------------

--
-- Table structure for table `usercoursetable`
--

CREATE TABLE `usercoursetable` (
  `Username` varchar(64) NOT NULL,
  `CourseName` varchar(64) NOT NULL,
  `CourseSection` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usercoursetable`
--

INSERT INTO `usercoursetable` (`Username`, `CourseName`, `CourseSection`) VALUES
('PhantomN3rd', 'CSE111', 1),
('PhantomN3rd', 'CSE470', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`CourseName`,`Section`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`FoodName`);

--
-- Indexes for table `foodcart`
--
ALTER TABLE `foodcart`
  ADD PRIMARY KEY (`StudentID`,`FoodName`),
  ADD KEY `FoodName` (`FoodName`);

--
-- Indexes for table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`PostID`);

--
-- Indexes for table `parkingmanagement`
--
ALTER TABLE `parkingmanagement`
  ADD PRIMARY KEY (`SpaceID`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`Name`),
  ADD UNIQUE KEY `Place` (`Place`) USING HASH,
  ADD UNIQUE KEY `Time` (`Time`) USING HASH;

--
-- Indexes for table `transportation`
--
ALTER TABLE `transportation`
  ADD PRIMARY KEY (`BusType`,`SeatID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`StudentID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Phone` (`Phone`),
  ADD UNIQUE KEY `Token` (`Token`) USING HASH;

--
-- Indexes for table `usercoursetable`
--
ALTER TABLE `usercoursetable`
  ADD PRIMARY KEY (`Username`,`CourseName`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `foodcart`
--
ALTER TABLE `foodcart`
  ADD CONSTRAINT `foodcart_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `user` (`StudentID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `foodcart_ibfk_2` FOREIGN KEY (`FoodName`) REFERENCES `food` (`FoodName`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
