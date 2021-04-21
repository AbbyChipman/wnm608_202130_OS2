-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 18, 2021 at 10:08 PM
-- Server version: 10.3.23-MariaDB-cll-lve
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abigailc_wnm608`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(13) NOT NULL,
  `date_create` datetime NOT NULL,
  `date_modify` datetime NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_main` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_thumb` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_other` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(9,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `date_create`, `date_modify`, `name`, `category`, `image_main`, `image_thumb`, `image_other`, `price`, `description`, `quantity`) VALUES
(1, '2021-04-18 21:14:55', '2021-04-18 21:28:29', 'Resin Notebook - 3 x 5', 'Notebooks', 'nb_r_sm.jpg', 'T_nb_r_sm.jpg', '', 7.50, '3 by 5 inch notebook; cover made of resin', 10),
(2, '2021-04-18 21:31:32', '2021-04-18 21:31:32', 'Resin Notebook - 4 x 6', 'Notebook', 'nb_r_md.jpg', 'T_nb_r_md.jpg', '', 10.00, '4 by 6 inch notebook; cover made of resin', 10),
(3, '2021-04-18 21:44:37', '2021-04-18 21:44:37', 'Clay Notebook - 3 x 5', 'Notebooks', 'nb_cl_sm.jpg', 'T_nb_cl_sm.jpg', '', 8.00, '3 by 5 inch notebook; cover made of polymer clay', 10),
(4, '2021-04-18 21:45:58', '2021-04-18 21:45:58', 'Clay Notebook 4 x 6', 'Notebooks', 'cl_nb_md.jpg', 'T_nb_cl_md.jpg', '', 11.00, '4 x 6 inch notebook; cover made of polymer clay', 10),
(5, '2021-04-18 21:48:30', '2021-04-18 21:48:30', 'Resin bookmark - 3 inch', 'Bookmarks', 'bkmrk_r_sm.jpg', 'T_bkmrk_r_sm.jpg', '', 3.00, '3 inch bookmark made of resin', 10),
(6, '2021-04-18 21:49:40', '2021-04-18 21:49:40', 'Resin Bookbmark - 5 inch', 'Bookmarks', 'bkmrk_r_md.jpg', 'T_bkmrk_r_md.jpg', '', 5.00, '6 inch bookmark made of resin', 10),
(7, '2021-04-18 21:51:37', '2021-04-18 21:51:37', 'Clay Bookmark - 3 inch', 'Bookmarks', 'bkmrk_cl_sm.jpg', 'T_bkmrk_cl_sm.jpg', '', 3.50, '3 inch bookmark made of polymer clay', 10),
(8, '2021-04-18 21:53:06', '2021-04-18 21:53:06', 'Clay Bookmark - 5 inch', 'Bookmarks', 'bkmrk_cl_md.jpg', 'T_bkmrk_cl_md.jpg', '', 5.50, '6 inch bookmark made of polymer clay', 10),
(9, '2021-04-18 21:56:14', '2021-04-18 21:56:14', 'Resin Ink Pen - Non-Refillable', 'Ink Pens', 'res_pen_non.jpg', 'T_res_pen_non.jpg', '', 5.00, 'Molded resin ink pen - non-refillable', 10),
(10, '2021-04-18 21:58:39', '2021-04-18 21:58:39', 'Resin Ink Pen - Refillable', 'Ink Pens', 'res_pen_fill.jpg', 'res_pen_fill.jpg', '', 7.50, 'Molded resin ink pen - refillable', 10),
(11, '2021-04-18 22:00:51', '2021-04-18 22:00:51', 'Clay Ink Pen - Non-Refillable', 'Ink Pens', 'clay_pen_non.jpg', 'T_clay_pen_non.jpg', '', 6.00, 'Ink Pen with Polymer Clay barrel - non-refillable', 10),
(12, '2021-04-18 22:02:54', '2021-04-18 22:02:54', 'Clay Ink Pen - Refillable', 'Ink Pens', 'clay_pen_fill.jpg', 'T_clay_pen_fill.jpg', '', 8.50, 'Ink Pen with Polymer Clay barrel -refillable', 10),
(13, '2021-04-18 22:05:00', '2021-04-18 22:05:00', 'Stationery Set - Resin', 'Sets', 'set_resin.jpg', 'T_set_resin.jpg', '', 12.00, 'Resin notebook, bookmark and pen, packaged suitable for presentation as a gift.', 10),
(14, '2021-04-18 22:06:49', '2021-04-18 22:06:49', 'Stationery Set - Clay', 'Sets', 'set_clay.jpg', 'T_set_clay.jpg', '', 14.00, 'Polymer clay notebook, bookmark and pen, packaged suitable for presentation as a gift.', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
