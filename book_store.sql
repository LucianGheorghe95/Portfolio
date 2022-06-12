-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2022 at 03:41 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `AddressID` int(10) UNSIGNED NOT NULL,
  `UserID` int(10) UNSIGNED NOT NULL,
  `AddressStreet` varchar(32) NOT NULL,
  `AddressCity` varchar(32) NOT NULL,
  `AddressState` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`AddressID`, `UserID`, `AddressStreet`, `AddressCity`, `AddressState`) VALUES
(1, 1, 'Str. Gloriei', 'Timisoara', 'Romania'),
(2, 2, 'Str. Mihai Eminescu', 'Tulcea', 'Romania'),
(3, 4, 'Str. Matei Basarab', 'Alexandria', 'Romania'),
(4, 3, 'Str. Adrian Urucu', 'Bucuresti', 'Romania');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `BookID` int(10) UNSIGNED NOT NULL,
  `BookTitle` varchar(32) NOT NULL,
  `BookAuthor` varchar(32) NOT NULL,
  `BookPublishedDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`BookID`, `BookTitle`, `BookAuthor`, `BookPublishedDate`) VALUES
(1, 'Triunghiul Etern', 'Aghata Christie', '2022-06-12 13:25:35'),
(2, 'Origini', 'Dan Brown', '2022-06-12 13:25:35'),
(3, 'Mandrie si prejudecata', 'Jane Austen', '2022-06-12 13:28:08'),
(4, 'Inferno', 'Dan Brown', '2022-06-12 13:28:08');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `ReviewID` int(10) UNSIGNED NOT NULL,
  `UserID` int(10) UNSIGNED NOT NULL,
  `BookID` int(10) UNSIGNED NOT NULL,
  `ReviewContent` varchar(255) NOT NULL,
  `ReviewPublishedDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`ReviewID`, `UserID`, `BookID`, `ReviewContent`, `ReviewPublishedDate`) VALUES
(1, 2, 2, 'Super! Mi-a placut mult cartea.', '2022-06-12 13:31:56'),
(2, 1, 1, 'Un roman politist foarte interesant.', '2022-06-12 13:32:22'),
(3, 3, 4, 'Destul de ok.', '2022-06-12 13:33:45'),
(4, 4, 3, 'O carte cu totul speciala.', '2022-06-12 13:33:45');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(10) UNSIGNED NOT NULL,
  `UserName` varchar(32) NOT NULL,
  `UserEnabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `UserName`, `UserEnabled`) VALUES
(1, 'Mihai', 1),
(2, 'Adrian', 1),
(3, 'Marian', 1),
(4, 'Dorin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_book`
--

CREATE TABLE `user_book` (
  `UserBookID` int(10) UNSIGNED NOT NULL,
  `UserID` int(10) UNSIGNED NOT NULL,
  `BookID` int(10) UNSIGNED NOT NULL,
  `UserBookCheckoutDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `UserBookReturnDate` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_book`
--

INSERT INTO `user_book` (`UserBookID`, `UserID`, `BookID`, `UserBookCheckoutDate`, `UserBookReturnDate`) VALUES
(1, 3, 2, '2022-06-12 13:36:46', '22:34:41'),
(2, 1, 4, '2022-06-12 13:36:46', '17:29:41'),
(3, 2, 1, '2022-06-12 13:37:41', '23:37:12'),
(4, 4, 3, '2022-06-12 13:37:41', '04:37:12'),
(5, 2, 1, '2022-06-12 13:37:46', '23:37:12'),
(6, 4, 3, '2022-06-12 13:37:46', '04:37:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`AddressID`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`BookID`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`ReviewID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `user_book`
--
ALTER TABLE `user_book`
  ADD PRIMARY KEY (`UserBookID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `AddressID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `BookID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `ReviewID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_book`
--
ALTER TABLE `user_book`
  MODIFY `UserBookID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
