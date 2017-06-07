-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2017 at 01:12 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ports_database_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `actiontakens`
--

CREATE TABLE `actiontakens` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ActionTaken` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `actiontakens`
--

INSERT INTO `actiontakens` (`id`, `created_at`, `updated_at`, `ActionTaken`) VALUES
(1, NULL, NULL, 'care &  comfort provider'),
(2, NULL, NULL, 'Logg with  call center '),
(3, NULL, NULL, 'Logged  in Location Leadership'),
(4, NULL, NULL, 'Police called '),
(5, NULL, NULL, 'Other ');

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 109, 'tv6yOVfs2Yak2Peb1Tn1oT5b5EdgOxfE', 0, NULL, '2017-05-12 19:14:41', '2017-05-12 19:14:41'),
(2, 110, '0zqn5MNgcC7YbmcgTYivPpFMKLnHhfeu', 0, NULL, '2017-05-12 19:18:50', '2017-05-12 19:18:50'),
(3, 112, 'deB7dPfIImHGcICemtA3GrJrClh80Nza', 0, NULL, '2017-05-12 19:20:23', '2017-05-12 19:20:23'),
(4, 113, 'uCgnBlHQ3W9GdzdY2W47MYZfDjgFqpOI', 1, '2017-05-12 19:26:09', '2017-05-12 19:26:09', '2017-05-12 19:26:09'),
(5, 114, 'Z96NWmt7Jp0nmTXntx0r5CYO9p15gD8q', 1, '2017-05-12 19:29:00', '2017-05-12 19:29:00', '2017-05-12 19:29:00'),
(6, 115, '0BeTUbXyBhM0sypvpQbXffmYNY4Cj6ua', 1, '2017-05-12 19:40:27', '2017-05-12 19:40:26', '2017-05-12 19:40:27'),
(7, 116, 'exRbvMy8GDIpEaZEKnSDUO3ap8TOlVui', 1, '2017-05-13 08:52:25', '2017-05-13 08:52:25', '2017-05-13 08:52:25');

-- --------------------------------------------------------

--
-- Table structure for table `addressbook`
--

CREATE TABLE `addressbook` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `relationship` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cellphone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `addressbook`
--

INSERT INTO `addressbook` (`id`, `user`, `relationship`, `email`, `cellphone`, `first_name`, `surname`, `active`, `created_at`, `updated_at`) VALUES
(1, 11, 0, 'gavin@afisza.co.za', '0828002997', 'Gavin ', 'Storrier', 1, '2016-02-01 10:14:08', '2016-02-01 10:14:08'),
(2, 11, 0, 'bhekaluthuli@gmail.com', '0824148780', 'Bheka ', 'Luthuli', 1, '2016-02-01 10:15:27', '2016-02-01 10:15:27'),
(5, 11, 0, 'hansie@2rmsecurity.com', '0834438670', 'Hansie', 'Prinsloo', 1, '2016-02-25 08:44:05', '2016-02-25 08:44:05'),
(7, 11, 0, 'rupert@ubulwembu.net', '0747366112', 'Rupert', 'Meyer', 1, '2016-03-03 07:51:58', '2016-03-03 07:51:58'),
(8, 10, 1, 'thabzam30@gmail.com', '0732072866', 'Thabiso', 'Motsoko', 1, '2016-03-23 09:42:42', '2016-03-23 09:42:42'),
(9, 11, 1, 'richard@ubulwembu.co.za', '07623456', 'intertol', 's', 1, '2016-08-30 11:38:29', '2016-08-30 11:38:29'),
(10, 94, 1, 'Siphesihle@siyaleader.net', '0710495772', 'Siphesihle', 'Mngadi', 1, '2017-03-10 07:55:35', '2017-03-10 07:55:35'),
(11, 91, 1, 'nozipho@siyaleader.net', '0726312108', 'Nozipho ', 'Mofokeng', 1, '2017-03-14 08:17:46', '2017-03-14 08:17:46'),
(12, 91, 1, 'talenta@siyaleader.net', '0783952781', 'talenta', 'xulu', 1, '2017-03-14 08:25:30', '2017-03-14 08:25:30'),
(13, 91, 1, 'sthembiso@siyaleader.net', '0635741514', 'sthembiso', 'Ngcobo', 1, '2017-03-14 08:32:28', '2017-03-14 08:32:28');

-- --------------------------------------------------------

--
-- Table structure for table `affiliations`
--

CREATE TABLE `affiliations` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `affiliations`
--

INSERT INTO `affiliations` (`id`, `slug`, `name`, `created_by`, `updated_by`, `active`, `created_at`, `updated_at`) VALUES
(1, 'None', 'Steering Committee', 1, 10, 1, '2016-02-01 06:48:45', '2017-03-02 08:15:51'),
(2, 'Testing-adding-affiliation', 'Site Managers Committee', 10, 10, 1, '2016-09-02 10:39:18', '2017-03-02 08:16:55'),
(3, 'a', 'Pilots Assistants', 10, 10, 1, '2016-09-02 10:40:07', '2017-03-02 08:17:24'),
(4, '11111', 'Divers End Year Committee', 10, 10, 1, '2016-09-02 10:50:07', '2017-03-02 08:17:51');

-- --------------------------------------------------------

--
-- Table structure for table `allocate_mobs`
--

CREATE TABLE `allocate_mobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user` int(11) NOT NULL,
  `department` int(11) NOT NULL,
  `province` int(11) NOT NULL,
  `district` int(11) NOT NULL,
  `municipality` int(11) NOT NULL,
  `ward` int(11) NOT NULL,
  `area` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` int(11) NOT NULL,
  `sub_category` int(11) NOT NULL,
  `sub_sub_category` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `gps_lat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gps_lng` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `addressbook` int(11) NOT NULL,
  `reporter` int(11) NOT NULL,
  `severity` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `busy` int(11) NOT NULL,
  `accepted_at` datetime NOT NULL,
  `referred_at` datetime NOT NULL,
  `escalated_at` datetime NOT NULL,
  `resolved_at` datetime NOT NULL,
  `closed_at` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `agent` int(11) DEFAULT NULL,
  `house_holder_id` int(11) DEFAULT NULL,
  `case_type` int(11) NOT NULL,
  `case_sub_type` int(11) NOT NULL,
  `saps_case_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_reference_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allocated_at` datetime DEFAULT NULL,
  `nuberof_person_involve` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_person_involve` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname_person_involve` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_person_involve` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_person_involve` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_pain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cell_pain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addressHotel_pain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numberOfpeople_pain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `incident_date_time` datetime DEFAULT NULL,
  `cases_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8_unicode_ci,
  `actiontaken` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `waiting` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `allocate_mobs`
--

INSERT INTO `allocate_mobs` (`id`, `description`, `user`, `department`, `province`, `district`, `municipality`, `ward`, `area`, `category`, `sub_category`, `sub_sub_category`, `priority`, `status`, `gps_lat`, `gps_lng`, `img_url`, `addressbook`, `reporter`, `severity`, `source`, `busy`, `accepted_at`, `referred_at`, `escalated_at`, `resolved_at`, `closed_at`, `active`, `created_at`, `updated_at`, `agent`, `house_holder_id`, `case_type`, `case_sub_type`, `saps_case_number`, `client_reference_number`, `allocated_at`, `nuberof_person_involve`, `name_person_involve`, `surname_person_involve`, `phone_person_involve`, `email_person_involve`, `color`, `name_pain`, `cell_pain`, `addressHotel_pain`, `numberOfpeople_pain`, `incident_date_time`, `cases_type`, `location`, `actiontaken`, `ref_no`, `waiting`) VALUES
(1, 'Incident  Report\rNumber of peoples  :12\rHotel  Name: 300   Root  hotel   \rLocation : J-Bay\rI   need  help   my   Friends  are  bade  ', 188, 0, 1, 5, 0, 64, '64 bowne  Glenmore  ', 3, 8, 2, 0, 1, '', '', '', 0, 188, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 09:17:16', '2016-11-24 09:17:16', NULL, NULL, 0, 0, '', NULL, NULL, '12', 'Marcus', 'mbayo', '0612364457', 'mark.mbayo@yahoo.co', '#e33d2c', NULL, NULL, '300   Root  hotel   ', NULL, '2016-11-24 11:17:16', 'incident', NULL, NULL, '1479979036', NULL),
(2, 'Incident  Report\rNumber of peoples  :12\rHotel  Name: 300   Root  hotel   \rLocation : J-Bay\rI   need  help   my   Friends  are  bade  ', 187, 0, 1, 5, 0, 64, '64 bowne  Glenmore  ', 3, 8, 2, 0, 7, '', '', '', 0, 188, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 09:17:16', '2016-11-24 09:43:29', NULL, NULL, 0, 0, '', NULL, '2016-11-24 11:43:29', '12', 'Marcus', 'mbayo', '0612364457', 'mark.mbayo@yahoo.co', '#e33d2c', NULL, NULL, '300   Root  hotel   ', NULL, '2016-11-24 11:17:16', 'incident', NULL, NULL, '1479979036', NULL),
(3, 'Incident  Report\rNumber of peoples  :12\rHotel  Name: 300   Root  hotel   \rLocation : J-Bay\rI   need  help   my   Friends  are  bade  ', 187, 0, 1, 5, 0, 64, '64 bowne  Glenmore  ', 3, 8, 2, 0, 7, '', '', '', 0, 188, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 09:17:16', '2016-11-24 09:43:29', NULL, NULL, 0, 0, '', NULL, '2016-11-24 11:43:29', '12', 'Marcus', 'mbayo', '0612364457', 'mark.mbayo@yahoo.co', '#e33d2c', NULL, NULL, '300   Root  hotel   ', NULL, '2016-11-24 11:17:16', 'incident', NULL, NULL, '1479979036', NULL),
(4, 'Incident  Report\rNumber of peoples  :12\rHotel  Name: 300   Root  hotel   \rLocation : J-Bay\rI   need  help   my   Friends  are  bade  ', 47, 0, 1, 5, 0, 64, '64 bowne  Glenmore  ', 3, 8, 2, 0, 7, '', '', '', 0, 188, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 09:17:16', '2016-11-24 09:43:29', NULL, NULL, 0, 0, '', NULL, '2016-11-24 11:43:29', '12', 'Marcus', 'mbayo', '0612364457', 'mark.mbayo@yahoo.co', '#e33d2c', NULL, NULL, '300   Root  hotel   ', NULL, '2016-11-24 11:17:16', 'incident', NULL, NULL, '1479979036', NULL),
(5, 'Incident  Report\rNumber of peoples  :12\rHotel  Name: 300   Root  hotel   \rLocation : J-Bay\rI   need  help   my   Friends  are  bade  ', 47, 0, 1, 5, 0, 64, '64 bowne  Glenmore  ', 3, 8, 2, 0, 7, '', '', '', 0, 188, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 09:17:16', '2016-11-24 09:43:29', NULL, NULL, 0, 0, '', NULL, '2016-11-24 11:43:29', '12', 'Marcus', 'mbayo', '0612364457', 'mark.mbayo@yahoo.co', '#e33d2c', NULL, NULL, '300   Root  hotel   ', NULL, '2016-11-24 11:17:16', 'incident', NULL, NULL, '1479979036', NULL),
(6, 'Incident  Report\rNumber of peoples  :12\rHotel  Name: 300   Root  hotel   \rLocation : J-Bay\rI   need  help   my   Friends  are  bade  ', 47, 0, 1, 5, 0, 64, '64 bowne  Glenmore  ', 3, 8, 2, 0, 7, '', '', '', 0, 188, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 09:17:16', '2016-11-24 09:43:29', NULL, NULL, 0, 0, '', NULL, '2016-11-24 11:43:29', '12', 'Marcus', 'mbayo', '0612364457', 'mark.mbayo@yahoo.co', '#e33d2c', NULL, NULL, '300   Root  hotel   ', NULL, '2016-11-24 11:17:16', 'incident', NULL, NULL, '1479979036', NULL),
(7, 'Incident  Report\rNumber of peoples  :12\rHotel  Name: 300   Root  hotel   \rLocation : J-Bay\rI   need  help   my   Friends  are  bade  ', 47, 0, 1, 5, 0, 64, '64 bowne  Glenmore  ', 3, 8, 2, 0, 7, '', '', '', 0, 188, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 09:17:16', '2016-11-24 09:43:29', NULL, NULL, 0, 0, '', NULL, '2016-11-24 11:43:29', '12', 'Marcus', 'mbayo', '0612364457', 'mark.mbayo@yahoo.co', '#e33d2c', NULL, NULL, '300   Root  hotel   ', NULL, '2016-11-24 11:17:16', 'incident', NULL, NULL, '1479979036', NULL),
(8, 'Incident  Report\rNumber of peoples  :12\rHotel  Name: 300   Root  hotel   \rLocation : J-Bay\rI   need  help   my   Friends  are  bade  ', 47, 0, 1, 5, 0, 64, '64 bowne  Glenmore  ', 3, 8, 2, 0, 7, '', '', '', 0, 188, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 09:17:16', '2016-11-24 09:43:29', NULL, NULL, 0, 0, '', NULL, '2016-11-24 11:43:29', '12', 'Marcus', 'mbayo', '0612364457', 'mark.mbayo@yahoo.co', '#e33d2c', NULL, NULL, '300   Root  hotel   ', NULL, '2016-11-24 11:17:16', 'incident', NULL, NULL, '1479979036', NULL),
(9, 'Incident  Report\rNumber of peoples  :12\rHotel  Name: 300   Root  hotel   \rLocation : J-Bay\rI   need  help   my   Friends  are  bade  ', 188, 1, 1, 5, 0, 64, '64 bowne  Glenmore  ', 3, 8, 2, 0, 7, '', '', '', 0, 188, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 09:17:16', '2016-11-24 09:43:29', NULL, NULL, 0, 0, '', NULL, '2016-11-24 11:43:29', '12', 'Marcus', 'mbayo', '0612364457', 'mark.mbayo@yahoo.co', '#e33d2c', NULL, NULL, '300   Root  hotel   ', NULL, '2016-11-24 11:17:16', 'incident', NULL, NULL, '1479979036', NULL),
(10, 'Incident  Report\rNumber of peoples  :12\rHotel  Name: 300   Root  hotel   \rLocation : J-Bay\rI   need  help   my   Friends  are  bade  ', 188, 1, 1, 5, 0, 64, '64 bowne  Glenmore  ', 3, 8, 2, 0, 7, '', '', '', 0, 188, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 09:17:16', '2016-11-24 09:43:29', NULL, NULL, 0, 0, '', NULL, '2016-11-24 11:43:29', '12', 'Marcus', 'mbayo', '0612364457', 'mark.mbayo@yahoo.co', '#e33d2c', NULL, NULL, '300   Root  hotel   ', NULL, '2016-11-24 11:17:16', 'incident', NULL, NULL, '1479979036', NULL),
(11, 'Incident  Report\rNumber of peoples  :12\rHotel  Name: 300   Root  hotel   \rLocation : J-Bay\rI   need  help   my   Friends  are  bade  ', 188, 1, 1, 5, 0, 64, '64 bowne  Glenmore  ', 3, 8, 2, 0, 7, '', '', '', 0, 188, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 09:17:16', '2016-11-24 09:43:29', NULL, NULL, 0, 0, '', NULL, '2016-11-24 11:43:29', '12', 'Marcus', 'mbayo', '0612364457', 'mark.mbayo@yahoo.co', '#e33d2c', NULL, NULL, '300   Root  hotel   ', NULL, '2016-11-24 11:17:16', 'incident', NULL, NULL, '1479979036', NULL),
(12, 'Incident  Report\rNumber of peoples  :12\rHotel  Name: 300   Root  hotel   \rLocation : J-Bay\rI   need  help   my   Friends  are  bade  ', 188, 1, 1, 5, 0, 64, '64 bowne  Glenmore  ', 3, 8, 2, 0, 7, '', '', '', 0, 188, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 09:17:16', '2016-11-24 09:43:29', NULL, NULL, 0, 0, '', NULL, '2016-11-24 11:43:29', '12', 'Marcus', 'mbayo2', '0612364457', 'mark.mbayo@yahoo.co', '#e33d2c', NULL, NULL, '300   Root  hotel   ', NULL, '2016-11-24 11:17:16', 'incident', NULL, NULL, '1479979036', NULL),
(13, 'Incident  Report\rNumber of peoples  :12\rHotel  Name: 300   Root  hotel   \rLocation : J-Bay\rI   need  help   my   Friends  are  bade  ', 188, 1, 1, 5, 0, 64, '64 bowne  Glenmore  ', 3, 8, 2, 0, 7, '', '', '', 0, 188, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 09:17:16', '2016-11-24 09:43:29', NULL, NULL, 0, 0, '', NULL, '2016-11-24 11:43:29', '12', 'Marcus', 'mbayo', '0612364457', 'mark.mbayo@yahoo.co', '#e33d2c', NULL, NULL, '300   Root  hotel   ', NULL, '2016-11-24 11:17:16', 'incident', NULL, NULL, '1479979036', NULL),
(14, 'Incident  Report\rNumber of peoples  :12\rHotel  Name: 300   Root  hotel   \rLocation : J-Bay\rI   need  help   my   Friends  are  bade  ', 187, 1, 1, 5, 0, 64, '64 bowne  Glenmore  ', 3, 8, 2, 0, 7, '', '', '', 0, 188, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 09:17:16', '2016-11-24 09:43:29', NULL, NULL, 0, 0, '', NULL, '2016-11-24 11:43:29', '12', 'Marcus', 'mbayo', '0612364457', 'mark.mbayo@yahoo.co', '#e33d2c', NULL, NULL, '300   Root  hotel   ', NULL, '2016-11-24 11:17:16', 'incident', NULL, NULL, '1479979036', NULL),
(15, 'Incident  Report\rNumber of peoples  :12\rHotel  Name: 300   Root  hotel   \rLocation : J-Bay\rI   need  help   my   Friends  are  bade  ', 187, 1, 1, 5, 0, 64, '64 bowne  Glenmore  ', 3, 8, 2, 0, 7, '', '', '', 0, 188, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 09:17:16', '2016-11-24 09:43:29', NULL, NULL, 0, 0, '', NULL, '2016-11-24 11:43:29', '12', 'Marcus', 'mbayo', '0612364457', 'mark.mbayo@yahoo.co', '#e33d2c', NULL, NULL, '300   Root  hotel   ', NULL, '2016-11-24 11:17:16', 'incident', NULL, NULL, '1479979036', NULL),
(16, 'Incident  Report\rNumber of peoples  :5\rHotel  Name: Plett Inn\rLocation : Plett\rTake me now he said.', 187, 1, 1, 3, 0, 0, 'Room 345', 3, 9, 3, 0, 1, '', '', '', 0, 47, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 13:15:12', '2016-11-24 13:15:12', NULL, NULL, 0, 0, '', NULL, NULL, '5', 'Marcus', 'Ishimwe', '0747366112', 'rupert@cooluma.co.za', '#e33d2c', NULL, NULL, 'Plett Inn', NULL, '2016-11-24 15:15:12', 'incident', NULL, NULL, '1479993312', NULL),
(17, 'Incident  Report\rNumber of peoples  :5\rHotel  Name: Plett Inn\rLocation : Plett\rTake me now he said.', 51, 1, 1, 3, 0, 0, 'Room 345', 3, 9, 3, 0, 6, '', '', '', 0, 47, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 13:15:12', '2016-11-24 17:09:20', NULL, NULL, 0, 0, '', NULL, NULL, '5', 'Marcus', 'Ishimwe', '0747366112', 'rupert@cooluma.co.za', '#e33d2c', NULL, NULL, 'Plett Inn', NULL, '2016-11-24 15:15:12', 'incident', NULL, NULL, '1479993312', NULL),
(18, 'Incident  Report\rNumber of peoples  :5\rHotel  Name: Plett Inn\rLocation : Plett\rTake me now he said.', 51, 1, 1, 3, 0, 0, 'Room 345', 3, 9, 3, 0, 6, '', '', '', 0, 47, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 13:15:12', '2016-11-24 17:09:20', NULL, NULL, 0, 0, '', NULL, NULL, '5', 'Marcus', 'Ishimwe', '0747366112', 'rupert@cooluma.co.za', '#e33d2c', NULL, NULL, 'Plett Inn', NULL, '2016-11-24 15:15:12', 'incident', NULL, NULL, '1479993312', NULL),
(19, 'Incident  Report\rNumber of peoples  :5\rHotel  Name: Plett Inn\rLocation : Plett\rTake me now he said.', 100, 1, 1, 3, 0, 0, 'Room 345', 3, 9, 3, 0, 6, '', '', '', 0, 47, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 13:15:12', '2016-11-24 17:09:20', NULL, NULL, 0, 0, '', NULL, NULL, '5', 'Marcus', 'Ishimwe', '0747366112', 'rupert@cooluma.co.za', '#e33d2c', NULL, NULL, 'Plett Inn', NULL, '2016-11-24 15:15:12', 'incident', NULL, NULL, '1479993312', NULL),
(20, 'Incident  Report\rNumber of peoples  :5\rHotel  Name: Plett Inn\rLocation : Plett\rTake me now he said.', 100, 1, 1, 3, 0, 0, 'Room 345', 3, 9, 3, 0, 6, '', '', '', 0, 47, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 13:15:12', '2016-11-24 17:09:20', NULL, NULL, 0, 0, '', NULL, NULL, '5', 'Marcus', 'Ishimwe', '0747366112', 'rupert@cooluma.co.za', '#e33d2c', NULL, NULL, 'Plett Inn', NULL, '2016-11-24 15:15:12', 'incident', NULL, NULL, '1479993312', NULL),
(21, 'Incident  Report\rNumber of peoples  :12\rHotel  Name: 300   Root  hotel   \rLocation : J-Bay\rI   need  help   my   Friends  are  bade  ', 187, 1, 1, 5, 0, 64, '64 bowne  Glenmore  ', 3, 8, 2, 0, 7, '', '', '', 0, 188, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 09:17:16', '2016-11-24 09:43:29', NULL, NULL, 0, 0, '', NULL, '2016-11-24 11:43:29', '12', 'Marcus', 'mbayo', '0612364457', 'mark.mbayo@yahoo.co', '#e33d2c', NULL, NULL, '300   Root  hotel   ', NULL, '2016-11-24 11:17:16', 'incident', NULL, NULL, '1479979036', NULL),
(22, 'Incident  Report\rNumber of peoples  :12\rHotel  Name: 300   Root  hotel   \rLocation : J-Bay\rI   need  help   my   Friends  are  bade  ', 187, 1, 1, 5, 0, 64, '64 bowne  Glenmore  ', 3, 8, 2, 0, 7, '', '', '', 0, 188, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 09:17:16', '2016-11-24 09:43:29', NULL, NULL, 0, 0, '', NULL, '2016-11-24 11:43:29', '12', 'Marcus', 'mbayo', '0612364457', 'mark.mbayo@yahoo.co', '#e33d2c', NULL, NULL, '300   Root  hotel   ', NULL, '2016-11-24 11:17:16', 'incident', NULL, NULL, '1479979036', NULL),
(23, 'Incident  Report\rNumber of peoples  :12\rHotel  Name: 300   Root  hotel   \rLocation : J-Bay\rI   need  help   my   Friends  are  bade  ', 187, 1, 1, 5, 0, 64, '64 bowne  Glenmore  ', 3, 8, 2, 0, 7, '', '', '', 0, 188, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 09:17:16', '2016-11-24 09:43:29', NULL, NULL, 0, 0, '', NULL, '2016-11-24 11:43:29', '12', 'Marcus', 'mbayo', '0612364457', 'mark.mbayo@yahoo.co', '#e33d2c', NULL, NULL, '300   Root  hotel   ', NULL, '2016-11-24 11:17:16', 'incident', NULL, NULL, '1479979036', NULL),
(24, 'Incident  Report\rNumber of peoples  :12\rHotel  Name: 300   Root  hotel   \rLocation : J-Bay\rI   need  help   my   Friends  are  bade  ', 187, 1, 1, 5, 0, 64, '64 bowne  Glenmore  ', 3, 8, 2, 0, 7, '', '', '', 0, 188, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 09:17:16', '2016-11-24 09:43:29', NULL, NULL, 0, 0, '', NULL, '2016-11-24 11:43:29', '12', 'Marcus', 'mbayo', '0612364457', 'mark.mbayo@yahoo.co', '#e33d2c', NULL, NULL, '300   Root  hotel   ', NULL, '2016-11-24 11:17:16', 'incident', NULL, NULL, '1479979036', NULL),
(25, 'Incident  Report\rNumber of peoples  :12\rHotel  Name: 300   Root  hotel   \rLocation : J-Bay\rI   need  help   my   Friends  are  bade  ', 187, 1, 1, 5, 0, 64, '64 bowne  Glenmore  ', 3, 8, 2, 0, 7, '', '', '', 0, 188, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 09:17:16', '2016-11-24 09:43:29', NULL, NULL, 0, 0, '', NULL, '2016-11-24 11:43:29', '12', 'Marcus', 'mbayo', '0612364457', 'mark.mbayo@yahoo.co', '#e33d2c', NULL, NULL, '300   Root  hotel   ', NULL, '2016-11-24 11:17:16', 'incident', NULL, NULL, '1479979036', NULL),
(26, 'Incident  Report\rNumber of peoples  :12\rHotel  Name: 300   Root  hotel   \rLocation : J-Bay\rI   need  help   my   Friends  are  bade  ', 187, 1, 1, 5, 0, 64, '64 bowne  Glenmore  ', 3, 8, 2, 0, 7, '', '', '', 0, 188, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 09:17:16', '2016-11-24 09:43:29', NULL, NULL, 0, 0, '', NULL, '2016-11-24 11:43:29', '12', 'Marcus', 'mbayo', '0612364457', 'mark.mbayo@yahoo.co', '#e33d2c', NULL, NULL, '300   Root  hotel   ', NULL, '2016-11-24 11:17:16', 'incident', NULL, NULL, '1479979036', NULL),
(27, 'Incident  Report\rNumber of peoples  :12\rHotel  Name: 300   Root  hotel   \rLocation : J-Bay\rI   need  help   my   Friends  are  bade  ', 187, 1, 1, 5, 0, 64, '64 bowne  Glenmore  ', 3, 8, 2, 0, 7, '', '', '', 0, 188, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 09:17:16', '2016-11-24 09:43:29', NULL, NULL, 0, 0, '', NULL, '2016-11-24 11:43:29', '12', 'Marcus', 'mbayo', '0612364457', 'mark.mbayo@yahoo.co', '#e33d2c', NULL, NULL, '300   Root  hotel   ', NULL, '2016-11-24 11:17:16', 'incident', NULL, NULL, '1479979036', NULL),
(28, 'Incident  Report\rNumber of peoples  :12\rHotel  Name: 300   Root  hotel   \rLocation : J-Bay\rI   need  help   my   Friends  are  bade  ', 187, 1, 1, 5, 0, 64, '64 bowne  Glenmore  ', 3, 8, 2, 0, 7, '', '', '', 0, 188, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 09:17:16', '2016-11-24 09:43:29', NULL, NULL, 0, 0, '', NULL, '2016-11-24 11:43:29', '12', 'Marcus', 'mbayo', '0612364457', 'mark.mbayo@yahoo.co', '#e33d2c', NULL, NULL, '300   Root  hotel   ', NULL, '2016-11-24 11:17:16', 'incident', NULL, NULL, '1479979036', NULL),
(29, 'Incident  Report\rNumber of peoples  :12\rHotel  Name: 300   Root  hotel   \rLocation : J-Bay\rI   need  help   my   Friends  are  bade  ', 187, 1, 1, 5, 0, 64, '64 bowne  Glenmore  ', 3, 8, 2, 0, 7, '', '', '', 0, 188, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 09:17:16', '2016-11-24 09:43:29', NULL, NULL, 0, 0, '', NULL, '2016-11-24 11:43:29', '12', 'Marcus', 'mbayo', '0612364457', 'mark.mbayo@yahoo.co', '#e33d2c', NULL, NULL, '300   Root  hotel   ', NULL, '2016-11-24 11:17:16', 'incident', NULL, NULL, '1479979036', NULL),
(30, 'Incident  Report\rNumber of peoples  :12\rHotel  Name: 300   Root  hotel   \rLocation : J-Bay\rI   need  help   my   Friends  are  bade  ', 88, 1, 1, 5, 0, 64, '64 bowne  Glenmore  ', 3, 8, 2, 0, 7, '', '', '', 0, 188, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 09:17:16', '2016-11-24 09:43:29', NULL, NULL, 0, 0, '', NULL, '2016-11-24 11:43:29', '12', 'Marcus', 'mbayo', '0612364457', 'mark.mbayo@yahoo.co', '#e33d2c', NULL, NULL, '300   Root  hotel   ', NULL, '2016-11-24 11:17:16', 'incident', NULL, NULL, '1479979036', NULL),
(31, 'Incident  Report\rNumber of peoples  :12\rHotel  Name: 300   Root  hotel   \rLocation : J-Bay\rI   need  help   my   Friends  are  bade  ', 88, 1, 1, 5, 0, 64, '64 bowne  Glenmore  ', 3, 8, 2, 0, 3, '', '', '', 0, 188, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 09:17:16', '2016-12-12 07:52:08', NULL, NULL, 0, 0, '', NULL, '2016-11-24 11:43:29', '12', 'Marcus', 'mbayo', '0612364457', 'mark.mbayo@yahoo.co', '#e33d2c', NULL, NULL, '300   Root  hotel   ', NULL, '2016-11-24 11:17:16', 'incident', NULL, NULL, '1479979036', NULL),
(32, 'Incident  Report\rNumber of peoples  :12\rHotel  Name: 300   Root  hotel   \rLocation : J-Bay\rI   need  help   my   Friends  are  bade  ', 91, 1, 1, 5, 0, 64, '64 bowne  Glenmore  ', 3, 8, 2, 0, 3, '', '', '', 0, 188, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-11-24 09:17:16', '2016-12-12 07:52:08', NULL, NULL, 0, 0, '', NULL, '2016-11-24 11:43:29', '12', 'Marcus', 'mbayo', '0612364457', 'mark.mbayo@yahoo.co', '#e33d2c', NULL, NULL, '300   Root  hotel   ', NULL, '2016-11-24 11:17:16', 'incident', NULL, NULL, '1479979036', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booktime_offs`
--

CREATE TABLE `booktime_offs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Surname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `status` int(10) NOT NULL,
  `reason_why` text COLLATE utf8_unicode_ci,
  `user_new_id` int(10) DEFAULT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `color` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allDay` tinyint(1) NOT NULL,
  `resourceId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `booktime_offs`
--

INSERT INTO `booktime_offs` (`id`, `created_at`, `updated_at`, `Name`, `Surname`, `date_to`, `date_from`, `status`, `reason_why`, `user_new_id`, `title`, `start`, `end`, `color`, `allDay`, `resourceId`) VALUES
(1, '2016-11-15 21:05:46', '2016-11-24 08:24:51', 'Markus', 'Mbayo', '2016-11-15 00:00:00', '2016-11-15 00:20:00', 6, 'Familly  matter', 29, 'Book Time off Request :Familly  matter', '2016-11-15 00:00:00', '2016-11-15 00:20:00', '#88E567', 0, 29),
(2, '2016-11-15 21:06:17', '2016-11-15 21:06:17', 'Markus', 'Mbayo', '2016-11-15 09:00:00', '2016-11-15 11:20:00', 0, 'Familly  matter', 29, 'Book Time off Request :Familly  matter', '2016-11-15 09:00:00', '2016-11-15 11:20:00', '#88E567', 0, 29),
(3, '2016-11-15 21:06:49', '2016-11-24 08:49:49', 'Markus', 'Mbayo', '2016-11-15 12:00:00', '2016-11-15 14:20:00', 8, 'Familly  matter', 29, 'Book Time off Request :Familly  matter', '2016-11-15 12:00:00', '2016-11-15 14:20:00', '#88E567', 0, 29),
(4, '2016-11-17 18:09:53', '2016-11-24 08:48:12', 'Paul', 'Rowney', '0000-00-00 00:00:00', '2016-11-17 22:09:00', 8, '', 47, 'Book Time off Request :', '0000-00-00 00:00:00', '2016-11-17 22:09:00', '#88E567', 0, 47),
(5, '2016-11-17 18:20:52', '2016-11-24 08:26:58', 'Pippa', 'Rowney', '0000-00-00 00:00:00', '2016-11-17 22:20:00', 6, 'Tired', 86, 'Book Time off Request :Tired', '0000-00-00 00:00:00', '2016-11-17 22:20:00', '#88E567', 0, 86),
(6, '2016-11-19 10:05:39', '2016-11-24 08:25:13', 'Marcus', 'Mbayo', '0000-00-00 00:00:00', '2016-11-19 14:04:00', 6, 'No rezon', 46, 'Book Time off Request :No rezon', '0000-00-00 00:00:00', '2016-11-19 14:04:00', '#88E567', 0, 46),
(7, '2016-11-21 07:15:50', '2016-11-24 08:20:58', 'Paul', 'Rowney', '0000-00-00 00:00:00', '2016-11-21 02:15:00', 6, '', 47, 'Book Time off Request :', '0000-00-00 00:00:00', '2016-11-21 02:15:00', '#88E567', 0, 47),
(8, '2016-11-21 11:52:47', '2016-11-24 08:11:11', 'Thabiso', 'Motsoko', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(9, '2016-11-22 09:29:42', '2016-11-24 08:21:50', 'Marcus', 'Mbayo', '0000-00-00 00:00:00', '2016-11-22 13:29:00', 6, 'Ima sick', 46, 'Book Time off Request :Ima sick', '0000-00-00 00:00:00', '2016-11-22 13:29:00', '#88E567', 0, 46),
(10, '2016-11-23 10:24:05', '2016-11-24 08:06:41', 'Thabiso', 'Motsoko', '2016-11-23 00:00:00', '2016-11-23 00:00:00', 6, 'Some Random Reason', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL),
(11, '2016-11-23 10:43:40', '2016-11-24 08:08:41', 'Marcus', 'Mbayo', '0000-00-00 00:00:00', '2016-11-23 15:00:00', 6, 'A reason', 46, 'Book Time off Request :A reason', '0000-00-00 00:00:00', '2016-11-23 15:00:00', '#88E567', 0, 46),
(12, '2016-11-24 08:51:33', '2016-11-24 09:02:51', 'Marcus', 'mbayo', '2016-11-24 00:00:00', '2016-11-01 00:00:00', 8, 'Some random reason', NULL, 'Some random reason', '2016-11-01 00:00:00', '2016-11-24 00:00:00', '#6CF786', 0, NULL),
(13, '2016-11-24 08:53:30', '2016-11-24 08:53:46', 'tlcinvestment12', 'Global', '2016-11-24 00:00:00', '2016-11-24 00:00:00', 8, 'Some random reason', NULL, 'Some random reason', '2016-11-24 00:00:00', '2016-11-24 00:00:00', '#6CF786', 0, NULL),
(14, '2016-11-24 09:02:04', '2016-11-24 09:02:21', 'Rupert', 'Meyer', '2016-11-25 00:00:00', '2016-11-25 00:00:00', 6, 'Feeling positively knackered', NULL, 'Feeling positively knackered', '2016-11-25 00:00:00', '2016-11-25 00:00:00', '#6CF786', 0, NULL),
(15, '2016-11-24 15:54:58', '2016-11-24 15:54:58', 'Dylan', 'Gouws', '0000-00-00 00:00:00', '2016-11-24 21:00:00', 1, '', 51, 'Book Time off Request :', '0000-00-00 00:00:00', '2016-11-24 21:00:00', '#88E567', 0, 51),
(16, '2016-11-25 15:30:25', '2016-11-26 08:12:48', 'Dylan', 'Gouws', '2016-11-25 10:00:00', '2016-11-25 08:20:00', 8, '   i am   doing  some  test', 51, 'Book Time off Request :   i am   doing  some  test', '2016-11-25 10:00:00', '2016-11-25 08:20:00', '#88E567', 0, 51);

-- --------------------------------------------------------

--
-- Table structure for table `calander_shifts`
--

CREATE TABLE `calander_shifts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_time` datetime DEFAULT NULL,
  `purpose` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `calander_shifts`
--

INSERT INTO `calander_shifts` (`id`, `created_at`, `updated_at`, `date_time`, `purpose`, `color`) VALUES
(1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-10-26 08:00:00', 'Pancakes', '#b68e61'),
(2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-10-26 09:00:00', 'Pancakes', '#b68e61'),
(3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-10-26 10:00:00', 'Pancakes', '#b68e61'),
(4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-10-26 11:00:00', 'Pancakes', '#b68e61'),
(5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-10-26 12:00:00', 'Pancakes', '#b68e61'),
(6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-10-26 15:00:00', 'Pancakes', '#b68e61'),
(7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-10-26 16:00:00', 'Pancakes', '#b68e61'),
(8, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-10-26 17:00:00', 'Pancakes', '#b68e61'),
(9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-10-26 20:00:00', 'Pancakes', '#b68e61'),
(10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-10-26 21:00:00', 'Pancakes', '#b68e61');

-- --------------------------------------------------------

--
-- Table structure for table `calendar_events`
--

CREATE TABLE `calendar_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_date` date NOT NULL,
  `end_time` time NOT NULL,
  `event_type_id` int(11) NOT NULL,
  `locked` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `meeting_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `calendar_events`
--

INSERT INTO `calendar_events` (`id`, `name`, `start_date`, `start_time`, `end_date`, `end_time`, `event_type_id`, `locked`, `created_by`, `updated_by`, `meeting_id`, `active`, `created_at`, `updated_at`) VALUES
(1, 'staff meeting', '2016-09-15', '09:36:25', '2016-09-15', '09:36:25', 1, 1, 11, 0, 1, 1, '2016-09-15 07:40:04', '2016-09-15 07:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `calendar_events_type`
--

CREATE TABLE `calendar_events_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calender_tabs`
--

CREATE TABLE `calender_tabs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `resourceId` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allDay` tinyint(1) DEFAULT NULL,
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `calender_tabs`
--

INSERT INTO `calender_tabs` (`id`, `created_at`, `updated_at`, `title`, `start`, `end`, `resourceId`, `allDay`, `color`) VALUES
(1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'EVENT 1', '2016-11-14 03:06:05', '2016-11-14 05:11:13', 'resource1', 0, 'yellow'),
(2, '2016-11-14 00:05:09', '2016-11-14 01:07:10', 'EVENT Z', '2016-11-14 06:12:08', '2016-11-14 08:15:08', 'resource2', 0, 'green'),
(3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Ramadan  ', '2016-11-14 09:11:07', '2016-11-14 14:10:04', 'resource3', 0, 'orange'),
(4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Ramos', '2016-11-14 13:13:29', '2016-11-14 14:22:00', 'resource2', 0, 'silver');

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user` int(11) NOT NULL,
  `department` int(11) NOT NULL,
  `province` int(11) DEFAULT NULL,
  `district` int(11) DEFAULT NULL,
  `municipality` int(11) DEFAULT NULL,
  `ward` int(11) DEFAULT NULL,
  `area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `gps_lat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gps_lng` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `addressbook` int(11) NOT NULL,
  `reporter` int(11) NOT NULL,
  `severity` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `busy` int(11) NOT NULL,
  `accepted_at` datetime NOT NULL,
  `referred_at` datetime NOT NULL,
  `escalated_at` datetime NOT NULL,
  `resolved_at` datetime NOT NULL,
  `closed_at` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `agent` int(11) DEFAULT NULL,
  `house_holder_id` int(11) DEFAULT NULL,
  `case_type` int(11) NOT NULL,
  `case_sub_type` int(11) NOT NULL,
  `saps_case_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_reference_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allocated_at` datetime DEFAULT NULL,
  `street_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `route` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locality` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `administrative_area_level_1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `investigation_officer` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saps_station` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `investigation_cell` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `investigation_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `investigation_note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `due_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gatetrack_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`id`, `description`, `user`, `department`, `province`, `district`, `municipality`, `ward`, `area`, `priority`, `status`, `gps_lat`, `gps_lng`, `img_url`, `addressbook`, `reporter`, `severity`, `source`, `busy`, `accepted_at`, `referred_at`, `escalated_at`, `resolved_at`, `closed_at`, `active`, `created_at`, `updated_at`, `agent`, `house_holder_id`, `case_type`, `case_sub_type`, `saps_case_number`, `client_reference_number`, `allocated_at`, `street_number`, `route`, `locality`, `administrative_area_level_1`, `postal_code`, `country`, `investigation_officer`, `saps_station`, `investigation_cell`, `investigation_email`, `investigation_note`, `due_date`, `gatetrack_id`) VALUES
(1, 'Gate Track Case', 1, 1, NULL, NULL, NULL, NULL, NULL, 0, 4, '', '', '', 0, 1, 0, 4, 0, '0000-00-00 00:00:00', '2017-03-28 12:18:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2017-03-26 18:21:57', '2017-03-28 10:18:02', NULL, NULL, 4, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-03-23', 459),
(2, 'Gate Track Case', 1, 1, NULL, NULL, NULL, NULL, NULL, 0, 4, '', '', '', 0, 1, 0, 4, 0, '0000-00-00 00:00:00', '2017-03-28 11:09:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2017-03-26 18:31:09', '2017-03-28 09:09:30', NULL, NULL, 5, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 460),
(3, 'Gate Track Case', 1, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', '', 0, 1, 0, 4, 0, '0000-00-00 00:00:00', '2017-03-28 11:03:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2017-03-27 01:52:34', '2017-05-09 14:23:26', NULL, NULL, 4, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-23', 461),
(4, '', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 4, '-29.856047219437503', ' 30.993466195800806', '', 0, 87, 0, 3, 0, '0000-00-00 00:00:00', '2017-03-27 15:04:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2017-03-27 11:57:04', '2017-03-27 13:04:39', NULL, 1, 1, 3, 'scscs', 'test', NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(5, 'THE  RESOLUTION', 105, 1, NULL, NULL, NULL, NULL, NULL, 0, 4, '', '', '', 0, 105, 0, 2, 0, '0000-00-00 00:00:00', '2017-03-28 11:02:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2017-03-27 12:18:38', '2017-03-28 09:02:08', NULL, NULL, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rupert', NULL, '0747366112', 'rupert@siyaleader.net', 'HELLO', '2017-03-23', 0),
(6, 'Restricton', 10, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', '', 0, 10, 0, 2, 0, '0000-00-00 00:00:00', '2017-03-28 13:02:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2017-03-28 10:59:59', '2017-03-28 12:18:02', NULL, NULL, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Fezeka ', NULL, '0780096955', 'fezeka@siyaleader.net', 'New message', '2017-03-17', 0),
(7, '112121', 1, 1, 1, 11, 11, 3, '', 1, 1, '-29.8598796', '31.0055968', 'uploads/noimage.png', 0, 1, 0, 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2017-05-01 11:03:49', '2017-05-01 11:03:49', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(8, '12121212', 10, 0, NULL, NULL, NULL, NULL, NULL, 0, 3, '-29.860506', '31.016075999999998', '', 0, 10, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-05-09 16:25:05', '0000-00-00 00:00:00', 1, '2017-05-09 14:19:20', '2017-05-09 14:25:05', NULL, 57, 1, 1, '', '', NULL, 'Anton Lembede Street', 'Durban', NULL, 'KZN', '4001', 'South Africa', '', '', '', '', '', '2017-04-23', 0),
(9, 'kkk', 10, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, '', '', '', 0, 10, 0, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2017-05-12 16:32:41', '2017-05-12 16:32:41', NULL, 10, 1, 1, '1255', '12', NULL, 'mm', 'locajl', NULL, '45', '4001', 'South Africa', '0ol', '1323', '084112693', 'mark.mbayo.n@gmail.com', '4001', '2017-05-23', 0),
(10, 'the  report', 105, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, '-29.8598401', '31.0055942', 'uploads/noimage.png', 0, 105, 0, 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2017-05-15 09:05:35', '2017-05-15 09:05:35', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-05-23', 0),
(11, 'hghghg', 105, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, '-29.8598173', '31.0056106', 'uploads/noimage.png', 0, 105, 0, 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2017-05-15 09:14:50', '2017-05-15 09:14:50', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-05-23', 0),
(12, 'fddfdg', 105, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, '-29.8598142', '31.0056116', 'uploads/noimage.png', 0, 105, 0, 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2017-05-15 09:16:26', '2017-05-15 09:16:26', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-23', 0),
(13, 'the  resul  of  the  change', 105, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, '-29.8598133', '31.005628', 'uploads/noimage.png', 0, 105, 0, 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2017-05-15 09:19:02', '2017-05-15 09:19:02', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-05-23', 0),
(14, 'new  casw  from  mobile', 105, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, '-29.8597837', '31.005648', 'uploads/noimage.png', 0, 105, 0, 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2017-05-15 09:36:11', '2017-05-15 09:36:11', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-05-23', 0),
(15, 'dfdf', 105, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, '-29.8597804', '31.0056449', 'uploads/noimage.png', 0, 105, 0, 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2017-05-15 09:38:33', '2017-05-15 09:38:33', NULL, NULL, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-05-23', 0),
(16, 'the   result', 105, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, '-29.8597804', '31.0056449', 'uploads/noimage.png', 0, 105, 0, 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2017-05-15 09:39:01', '2017-05-15 09:39:01', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-29', 0),
(17, 'the  finale  chaneh', 105, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, '-29.8598078', '31.0056077', 'uploads/noimage.png', 0, 105, 0, 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2017-05-15 09:40:57', '2017-05-15 09:40:57', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-05-21', 0),
(18, 'dfgd', 105, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, '-29.86046742488', '31.007330798425', 'uploads/noimage.png', 0, 105, 0, 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2017-05-15 09:50:56', '2017-05-15 09:50:56', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-21', 0),
(19, 'dfssddfsd', 105, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, '-29.8597971', '31.0056573', 'uploads/noimage.png', 0, 105, 0, 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2017-05-15 09:52:48', '2017-05-15 09:52:48', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-29', 0),
(20, 'thhhtr', 105, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, '-29.8597971', '31.0056573', 'uploads/noimage.png', 0, 105, 0, 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2017-05-15 09:54:09', '2017-05-15 09:54:09', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-05-23', 0),
(21, 'the  revision', 105, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, '-29.8598115', '31.0056325', 'uploads/noimage.png', 0, 105, 0, 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2017-05-15 10:19:00', '2017-05-15 10:19:00', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-21', 0),
(22, 'new  case  commig', 105, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, '-29.8597926', '31.0056141', 'uploads/noimage.png', 0, 105, 0, 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2017-05-15 10:26:20', '2017-05-15 10:26:20', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-29', 0),
(23, 'the   of  all  the  changes', 105, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, '-29.8598375', '31.005611', 'uploads/noimage.png', 0, 105, 0, 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2017-05-15 10:59:13', '2017-05-15 10:59:13', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-23', 0),
(24, 'sdfsdfs', 105, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, '-29.8598375', '31.005611', 'uploads/noimage.png', 0, 105, 0, 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2017-05-15 11:00:43', '2017-05-15 11:00:43', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-05-23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cases_activities`
--

CREATE TABLE `cases_activities` (
  `id` int(10) UNSIGNED NOT NULL,
  `case_id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `addressbook` int(11) NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `from` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `to` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `reporter` int(11) NOT NULL,
  `description` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `department` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `sub_category` int(11) NOT NULL,
  `case_type` int(11) NOT NULL,
  `investigation_officer` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `investigation_cell` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `investigation_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `investigation_note` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `Column 21` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cases_activities`
--

INSERT INTO `cases_activities` (`id`, `case_id`, `user`, `note`, `addressbook`, `active`, `from`, `to`, `message`, `reporter`, `description`, `department`, `category`, `sub_category`, `case_type`, `investigation_officer`, `investigation_cell`, `investigation_email`, `investigation_note`, `status`, `Column 21`, `source`, `created_at`, `color`, `updated_at`) VALUES
(1, 5, 105, 'Case referred to Marcus Mbayo by Rupert Meyer', 0, NULL, '', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '2017-03-27 12:25:36', '0000-00-00 00:00:00', '2017-03-27 12:25:36'),
(2, 4, 105, 'Case referred to Marcus Mbayo by Rupert Meyer', 0, NULL, '', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '2017-03-27 13:04:39', '0000-00-00 00:00:00', '2017-03-27 13:04:39'),
(3, 3, 57, 'Case referred to mxolisi mazibuko by Rupert Meyer', 0, NULL, '', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '2017-03-28 08:47:32', '0000-00-00 00:00:00', '2017-03-28 08:47:32'),
(4, 5, 105, 'Case referred to Marcus Mbayo by Rupert Meyer', 0, NULL, '', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '2017-03-28 09:02:08', '0000-00-00 00:00:00', '2017-03-28 09:02:08'),
(5, 3, 105, 'Case referred to Marcus Mbayo by Rupert Meyer', 0, NULL, '', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '2017-03-28 09:03:48', '0000-00-00 00:00:00', '2017-03-28 09:03:48'),
(6, 2, 105, 'Case referred to Marcus Mbayo by Rupert Meyer', 0, NULL, '', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '2017-03-28 09:09:30', '0000-00-00 00:00:00', '2017-03-28 09:09:30'),
(7, 1, 10, 'New Case Noted Added by Rupert Meyer', 0, NULL, '', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '2017-03-28 10:17:00', '0000-00-00 00:00:00', '2017-03-28 10:17:00'),
(8, 1, 10, 'Case referred to Rupert Meyer by Rupert Meyer', 0, NULL, '', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '2017-03-28 10:18:02', '0000-00-00 00:00:00', '2017-03-28 10:18:02'),
(9, 1, 10, 'Case Accepted by Rupert Meyer', 0, NULL, '', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '2017-03-28 10:18:13', '0000-00-00 00:00:00', '2017-03-28 10:18:13'),
(10, 6, 10, 'Case Accepted by Rupert Meyer', 0, NULL, '', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '2017-03-28 11:02:04', '0000-00-00 00:00:00', '2017-03-28 11:02:04'),
(11, 6, 105, 'Case referred to Marcus Mbayo by Rupert Meyer', 0, NULL, '', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '2017-03-28 11:02:45', '0000-00-00 00:00:00', '2017-03-28 11:02:45'),
(12, 6, 10, 'New Case File Added by Rupert Meyer', 0, NULL, '', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '2017-03-28 11:53:06', '0000-00-00 00:00:00', '2017-03-28 11:53:06'),
(13, 6, 10, 'Rupert Meyer requested case closure', 0, NULL, '', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '2017-03-28 12:18:02', '0000-00-00 00:00:00', '2017-03-28 12:18:02'),
(14, 8, 10, 'Case Accepted by Rupert Meyer', 0, NULL, '', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '2017-05-09 14:20:16', '0000-00-00 00:00:00', '2017-05-09 14:20:16'),
(15, 3, 10, 'Rupert Meyer requested case closure', 0, NULL, '', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '2017-05-09 14:23:26', '0000-00-00 00:00:00', '2017-05-09 14:23:26'),
(16, 8, 10, 'Rupert Meyer closed case', 0, NULL, '', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '2017-05-09 14:25:05', '0000-00-00 00:00:00', '2017-05-09 14:25:05'),
(17, 5, 10, 'New Case File Added by Rupert Meyer', 0, NULL, '', '', '', 0, '', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '2017-05-09 14:27:21', '0000-00-00 00:00:00', '2017-05-09 14:27:21');

-- --------------------------------------------------------

--
-- Table structure for table `cases_escalations`
--

CREATE TABLE `cases_escalations` (
  `id` int(10) UNSIGNED NOT NULL,
  `case_id` int(11) NOT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `case_escalator_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `due_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `end` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `reporter` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `sub_category` int(11) DEFAULT NULL,
  `case_type` int(11) DEFAULT NULL,
  `investigation_officer` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `investigation_cell` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `investigation_email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `investigation_note` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `addressbook` int(11) DEFAULT NULL,
  `source` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cases_escalations`
--

INSERT INTO `cases_escalations` (`id`, `case_id`, `from`, `to`, `case_escalator_id`, `type`, `message`, `active`, `created_at`, `updated_at`, `due_date`, `title`, `start`, `end`, `color`, `user`, `reporter`, `description`, `department`, `category`, `sub_category`, `case_type`, `investigation_officer`, `investigation_cell`, `investigation_email`, `investigation_note`, `status`, `addressbook`, `source`) VALUES
(1, 5, 105, 10, 0, 0, 'HELLO', 1, '2017-03-27 12:18:38', '2017-03-27 10:18:38', '2017-03-23', 'Case ID: 5', '2017-03-27', '2017-03-23', '#4caf50', 105, 105, 'THE  RESOLUTION', 1, 1, 5, 5, 'Rupert', '0747366112', 'rupert@siyaleader.net', 'HELLO', 4, 0, 2),
(3, 4, 10, 105, 0, 0, 'Please check the  table  ', 1, '2017-03-27 13:04:39', '2017-03-27 13:04:39', ' ', 'Case ID: 4', '2017-03-27', '', '#4caf50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 3, 10, 57, 0, 0, 'rrrr', 1, '2017-03-28 08:47:32', '2017-03-28 08:47:32', ' ', 'Case ID: 3', '2017-03-28', '', '#4caf50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, 10, 105, 0, 0, 'the  result  of  the  change  ', 1, '2017-03-28 09:02:08', '2017-03-28 09:02:08', ' ', 'Case ID: 5', '2017-03-28', '', '#4caf50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 3, 10, 105, 0, 0, 'the  result  of  change  ', 1, '2017-03-28 09:03:48', '2017-03-28 09:03:48', ' ', 'Case ID: 3', '2017-03-28', '', '#4caf50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 2, 10, 105, 0, 0, 'the  result  of  the  change  ', 1, '2017-03-28 09:09:30', '2017-03-28 09:09:30', '2017-03-28 00:00 AM', 'Case ID: 2', '2017-03-28', '2017-03-28', '#4caf50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 1, 10, 10, 0, 0, 'test', 1, '2017-03-28 10:18:02', '2017-03-28 10:18:02', ' ', 'Case ID: 1', '2017-03-28', '', '#4caf50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 6, 10, 96, 0, 0, 'New message', 1, '2017-03-28 10:59:59', '2017-03-28 08:59:59', '2017-03-17', 'Case ID: 6', '2017-03-28', '2017-03-17', '#4caf50', 10, 10, 'Restricton', 1, 1, 4, 4, 'Fezeka ', '0780096955', 'fezeka@siyaleader.net', 'New message', 4, 0, 2),
(10, 6, 10, 105, 0, 0, 'Now  we are  getting thre ', 1, '2017-03-28 11:02:45', '2017-03-28 11:02:45', ' ', 'Case ID: 6', '2017-03-28', '', '#4caf50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cases_files`
--

CREATE TABLE `cases_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `case_id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `addressbook` int(11) NOT NULL,
  `file_note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cases_files`
--

INSERT INTO `cases_files` (`id`, `case_id`, `user`, `file`, `addressbook`, `file_note`, `img_url`, `active`, `created_at`, `updated_at`) VALUES
(1, 6, 10, 'Kingsmead.PNG', 0, 'Added an image', 'files/case_6/Kingsmead.PNG', 1, '2017-03-28 11:53:06', '2017-03-28 11:53:06'),
(2, 5, 10, 'WIN_20170421_11_50_32_Pro.jpg', 0, 'dasdsdadas', 'files/case_5/WIN_20170421_11_50_32_Pro.jpg', 1, '2017-05-09 14:27:21', '2017-05-09 14:27:21');

-- --------------------------------------------------------

--
-- Table structure for table `cases_notes`
--

CREATE TABLE `cases_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `case_id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cases_notes`
--

INSERT INTO `cases_notes` (`id`, `case_id`, `user`, `note`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 10, '. clz ;', 1, '2017-03-28 10:17:00', '2017-03-28 10:17:00'),
(2, 8, 10, '', 1, '2017-05-09 14:19:20', '2017-05-09 14:19:20'),
(3, 9, 10, '4001', 1, '2017-05-12 16:32:42', '2017-05-12 16:32:42');

-- --------------------------------------------------------

--
-- Table structure for table `cases_owners`
--

CREATE TABLE `cases_owners` (
  `id` int(10) UNSIGNED NOT NULL,
  `case_id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `accept` int(11) NOT NULL,
  `addressbook` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cases_owners`
--

INSERT INTO `cases_owners` (`id`, `case_id`, `user`, `type`, `accept`, `addressbook`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 0, 0, 1, '2017-03-26 18:21:57', '2017-03-26 18:21:57'),
(2, 2, 1, 0, 0, 0, 1, '2017-03-26 18:31:09', '2017-03-26 18:31:09'),
(3, 3, 1, 0, 0, 0, 1, '2017-03-27 01:52:34', '2017-03-27 01:52:34'),
(4, 5, 105, 0, 0, 0, 1, '2017-03-27 10:18:38', '2017-03-27 10:18:38'),
(5, 5, 105, 4, 0, 0, 1, '2017-03-27 12:25:36', '2017-03-27 12:25:36'),
(6, 4, 105, 4, 0, 0, 1, '2017-03-27 13:04:39', '2017-03-27 13:04:39'),
(7, 3, 57, 4, 0, 0, 1, '2017-03-28 08:47:32', '2017-03-28 08:47:32'),
(8, 5, 105, 4, 0, 0, 1, '2017-03-28 09:02:08', '2017-03-28 09:02:08'),
(9, 3, 105, 4, 0, 0, 1, '2017-03-28 09:03:48', '2017-03-28 09:03:48'),
(10, 2, 105, 4, 0, 0, 1, '2017-03-28 09:09:30', '2017-03-28 09:09:30'),
(11, 1, 10, 4, 1, 0, 1, '2017-03-28 10:18:02', '2017-03-28 10:18:13'),
(12, 6, 10, 0, 1, 0, 1, '2017-03-28 08:59:59', '2017-03-28 11:02:04'),
(13, 6, 105, 4, 0, 0, 1, '2017-03-28 11:02:45', '2017-03-28 11:02:45'),
(14, 7, 1, 0, 0, 0, 1, '2017-05-01 11:03:49', '2017-05-01 11:03:49'),
(15, 8, 10, 0, 1, 0, 1, '2017-05-09 14:19:20', '2017-05-09 14:20:16'),
(16, 9, 10, 0, 0, 0, 1, '2017-05-12 16:32:42', '2017-05-12 16:32:42'),
(17, 10, 105, 0, 0, 0, 1, '2017-05-15 09:05:35', '2017-05-15 09:05:35'),
(18, 11, 105, 0, 0, 0, 1, '2017-05-15 09:14:50', '2017-05-15 09:14:50'),
(19, 12, 105, 0, 0, 0, 1, '2017-05-15 09:16:26', '2017-05-15 09:16:26'),
(20, 14, 105, 0, 0, 0, 1, '2017-05-15 09:36:11', '2017-05-15 09:36:11'),
(21, 15, 105, 0, 0, 0, 1, '2017-05-15 09:38:33', '2017-05-15 09:38:33'),
(22, 16, 105, 0, 0, 0, 1, '2017-05-15 09:39:01', '2017-05-15 09:39:01'),
(23, 17, 105, 0, 0, 0, 1, '2017-05-15 09:40:57', '2017-05-15 09:40:57'),
(24, 18, 105, 0, 0, 0, 1, '2017-05-15 09:50:56', '2017-05-15 09:50:56'),
(25, 19, 105, 0, 0, 0, 1, '2017-05-15 09:52:48', '2017-05-15 09:52:48'),
(26, 20, 105, 0, 0, 0, 1, '2017-05-15 09:54:09', '2017-05-15 09:54:09'),
(27, 21, 105, 0, 0, 0, 1, '2017-05-15 10:19:00', '2017-05-15 10:19:00'),
(28, 22, 105, 0, 0, 0, 1, '2017-05-15 10:26:20', '2017-05-15 10:26:20'),
(29, 23, 105, 0, 0, 0, 1, '2017-05-15 10:59:13', '2017-05-15 10:59:13'),
(30, 24, 105, 0, 0, 0, 1, '2017-05-15 11:00:43', '2017-05-15 11:00:43');

-- --------------------------------------------------------

--
-- Table structure for table `cases_poi`
--

CREATE TABLE `cases_poi` (
  `id` int(10) UNSIGNED NOT NULL,
  `case_id` int(11) NOT NULL,
  `poi_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cases_priorities`
--

CREATE TABLE `cases_priorities` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cases_priorities`
--

INSERT INTO `cases_priorities` (`id`, `slug`, `name`, `created_by`, `updated_by`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Normal', 'Normal', 10, 0, 1, '2017-02-15 09:30:15', '2017-02-15 09:30:15'),
(2, 'Urgent', 'Urgent', 10, 0, 1, '2017-02-15 09:30:30', '2017-02-15 09:30:30'),
(3, 'Critical', 'Critical', 10, 0, 1, '2017-02-15 09:30:39', '2017-02-15 09:30:39'),
(4, 'Test', 'Test', 10, 0, 1, '2017-03-28 10:06:52', '2017-03-28 10:06:52');

-- --------------------------------------------------------

--
-- Table structure for table `cases_sources`
--

CREATE TABLE `cases_sources` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cases_sources`
--

INSERT INTO `cases_sources` (`id`, `slug`, `name`, `created_by`, `updated_by`, `active`, `created_at`, `updated_at`) VALUES
(1, 'sms', 'sms', 0, 0, 1, '2017-03-26 18:50:56', '2017-03-26 18:50:56'),
(2, 'mobile', 'mobile', 0, 0, 1, '2017-03-26 18:50:56', '2017-03-26 18:50:56'),
(3, 'computer', 'computer', 0, 0, 1, '2017-03-26 18:50:56', '2017-03-26 18:50:56'),
(4, 'Gatetrack', 'Gatetrack', 0, 0, 1, '2017-03-26 18:50:56', '2017-03-26 18:50:56');

-- --------------------------------------------------------

--
-- Table structure for table `cases_statuses`
--

CREATE TABLE `cases_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cases_statuses`
--

INSERT INTO `cases_statuses` (`id`, `slug`, `name`, `created_by`, `updated_by`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 'Pending', 1, 11, 1, '2016-02-01 06:27:06', '2016-02-17 13:06:59'),
(2, 'Pending-Closure', 'Pending Closure', 1, 11, 1, '2016-02-01 06:27:22', '2016-02-17 13:05:53'),
(3, 'Resolved', 'Resolved', 1, 11, 1, '2016-02-01 06:27:36', '2016-02-17 13:03:44'),
(4, 'Referred', 'Referred', 1, 11, 1, '2016-02-01 06:27:48', '2016-02-17 13:03:23'),
(5, 'Preliminary', 'Preliminary', 11, 0, 1, '2016-04-13 13:23:37', '2016-04-13 13:23:37'),
(6, 'Confirmed', 'Confirmed', 11, 0, 1, '2016-04-13 13:24:09', '2016-04-13 13:24:09'),
(7, 'Allocated', 'Allocated', 1, 1, 1, '2016-04-24 15:56:44', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cases_status_confirs`
--

CREATE TABLE `cases_status_confirs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Descriptions` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_time` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cases_sub_sub_types`
--

CREATE TABLE `cases_sub_sub_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `case_type` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cases_sub_types`
--

CREATE TABLE `cases_sub_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `case_type` int(10) UNSIGNED NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cases_sub_types`
--

INSERT INTO `cases_sub_types` (`id`, `slug`, `name`, `case_type`, `created_by`, `updated_by`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Fraud', 'Fraud', 1, 1, 1, 1, '2016-02-24 20:35:20', '2016-02-24 20:35:24'),
(2, 'Corruption', 'Corruption', 1, 1, 1, 1, '2016-02-24 20:36:27', '2016-02-24 20:36:31'),
(3, 'Theft', 'Theft', 1, 1, 1, 1, '2016-02-24 20:36:36', '2016-02-24 20:36:40'),
(4, 'Money Laundering', 'Money Laundering', 1, 1, 1, 1, '2016-02-24 20:37:33', '2016-02-24 20:37:37'),
(5, 'SAPS Case Number', 'SAPS Case Number', 1, 1, 1, 1, '2016-02-24 20:38:21', '2016-02-24 20:38:26'),
(6, 'speed', 'speed', 4, 1, 1, 1, '2016-02-24 20:39:10', '2016-02-24 20:39:14'),
(7, 'overStay', 'overStay', 5, 1, 0, 1, '2017-03-25 16:11:47', '2017-03-25 16:11:47'),
(8, 'Crude-Oil', 'Crude Oil', 6, 10, 0, 1, '2017-03-28 09:34:28', '2017-03-28 09:34:28'),
(9, 'Brent', 'Brent', 6, 10, 0, 1, '2017-03-28 09:44:55', '2017-03-28 09:44:55'),
(10, 'Tset', 'Tset', 8, 10, 0, 1, '2017-03-28 09:57:08', '2017-03-28 09:57:08');

-- --------------------------------------------------------

--
-- Table structure for table `cases_types`
--

CREATE TABLE `cases_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `department` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cases_types`
--

INSERT INTO `cases_types` (`id`, `slug`, `name`, `created_by`, `updated_by`, `active`, `created_at`, `updated_at`, `department`) VALUES
(1, 'Criminal', 'Criminal', 1, 1, 1, '2016-02-24 20:32:34', '2016-02-24 20:32:40', 1),
(2, 'Disciplinary', 'Disciplinary', 1, 1, 1, '2016-02-24 20:33:22', '2016-02-24 20:33:29', 2),
(3, 'Litigation', 'Litigation', 1, 1, 1, '2016-02-24 20:34:02', '2016-02-24 20:34:07', 1),
(4, 'speed', 'speed', 1, 1, 1, '2016-02-24 20:41:58', '2016-02-24 20:42:02', 3),
(5, 'overStay', 'overStay', 1, 1, 1, '2017-03-12 14:07:53', '2017-03-12 14:07:58', 1),
(6, 'Technical-assistannce5', 'Spillage', 10, 10, 1, '2017-03-28 09:32:29', '2017-03-28 09:35:32', 5),
(7, 'Test4', 'Test', 10, 0, 1, '2017-03-28 09:56:40', '2017-03-28 09:56:40', 4),
(8, 'Tester4', 'Tester', 10, 0, 1, '2017-03-28 09:56:52', '2017-03-28 09:56:52', 4);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department` int(11) NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `slug`, `name`, `department`, `color`, `created_by`, `updated_by`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Durban1', 'Durban', 1, '', 10, 0, 1, '2017-02-15 07:55:15', '2017-02-15 07:55:15'),
(6, 'Speed3', 'Speed', 3, '', 10, 0, 1, '2017-03-18 11:51:25', '2017-03-18 11:51:25'),
(7, 'Technical-assistannce5', 'Technical assistannce', 5, '', 10, 0, 1, '2017-03-28 09:32:29', '2017-03-28 09:32:29'),
(8, 'Test4', 'Test', 4, '', 10, 0, 1, '2017-03-28 09:56:40', '2017-03-28 09:56:40'),
(9, 'Tester4', 'Tester', 4, '', 10, 0, 1, '2017-03-28 09:56:52', '2017-03-28 09:56:52');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `country_code` varchar(2) COLLATE utf8_persian_ci DEFAULT NULL,
  `state_code` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `city_name` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `city_name_ascii` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `timezoneid` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`country_code`, `state_code`, `city_name`, `city_name_ascii`, `timezoneid`) VALUES
('ZA', '06', 'Tshwane Metropolitan Municipality', 'Africa/Johannesburg            ', NULL),
('ZW', '03', 'Vambe', 'Africa/Harare                  ', NULL),
('ZW', '03', 'Manyika', 'Africa/Harare                  ', NULL),
('ZW', '03', 'Nyamupfukudza', 'Africa/Harare                  ', NULL),
('ZW', '03', 'Muserepu', 'Africa/Harare                  ', NULL),
('ZW', '03', 'Gumbo', 'Africa/Harare                  ', NULL),
('ZW', '03', 'Musokwa', 'Africa/Harare                  ', NULL),
('ZW', '03', 'Kachambwa', 'Africa/Harare                  ', NULL),
('ZW', '03', 'Bvumbe', 'Africa/Harare                  ', NULL),
('ZW', '03', 'Mugando', 'Africa/Harare                  ', NULL),
('ZW', '03', 'Nyambudzi', 'Africa/Harare                  ', NULL),
('ZW', '03', 'Marimira', 'Africa/Harare                  ', NULL),
('ZW', '03', 'Dzetiye', 'Africa/Harare                  ', NULL),
('ZW', '03', 'Changata', 'Africa/Harare                  ', NULL),
('ZW', '03', 'Kariwo', 'Africa/Harare                  ', NULL),
('ZW', '03', 'Chikwenengere', 'Africa/Harare                  ', NULL),
('ZW', '03', 'Mushowani', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Masikote', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Mazunga', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chief Musikavanhu', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Matsikita', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Mapaima', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Micher', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Robson', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Johannes', 'Africa/Harare                  ', NULL),
('ZW', '05', 'James', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Lazarus', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Rice', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Nvaguwe', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Makara', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Gatora', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Tunganbora', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Tegwe', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Naison', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Mahau', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Chundu', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Peter', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Adam', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Chitindiva', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Kakoma', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Mpakati', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Logan', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Mpagari', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Dick', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Zinyemba', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Kazunga', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Chikowe', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Bihkausara', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Mafungautsi', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Makuni', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Vagonda', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Mushaikwa', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Vereta', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Mukambi', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Kadunga', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Kazangare', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Dondo', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Matesanwa', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Dondoro', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Chimawmaka', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Mapungantsi', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Washayanyika', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Kachidza', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Kanyoka', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Rabata', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Maplanka', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Muchororinga', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Chimyemhere', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Kunaka', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Chinyangwe', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Hondo', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Chivere', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Wenera', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Mukumbirofa', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Magumbura', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Murodza', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Mashayamambe', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Ndirazepatswa', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Zuzenika', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Gawa', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Neruwembo', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Nyikadzino', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Kamhali', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Gachegache', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Nyarumwe', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Paratema', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Matimba', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Nyamasoka', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Navimadzanwa', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Kajamatimba', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Chambati', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Muchidzagora', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Samasuro Bunda Ii', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Chitau', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Makumbi', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Mudema', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Mazrimbakupa', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Nzunguchewa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chief Towani', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chief Garahwa', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chief Mpungu', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Bopofo', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Matamba', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Gasura', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Makumba', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Njoga', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Wenzera', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Kapire', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Chivanga', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Mberero', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Matsika', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Kangausaru', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Chitehere', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Machona', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Nyahuma', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Chendamora', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Nazvaure', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Dombo', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Hondoma', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Chaparanganda', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Majinjiwa', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Mujona', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Jera', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Mjikachi', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Makuwerere', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Marova', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Mtinha', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Kapambara', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Mazindora', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Nyamunga', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Zvipani', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Makota', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Zinhu', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Shavereshongwe', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Nyamupinga', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Kapesa', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Kachamaenza', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Mandina', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Chabera', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Chiwara', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Ruzarde', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Kanyurira', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Chasauka', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Nbewedzebonde', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Katemanyoka', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Hodzi', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Makanyaire', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Murimbika', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Madimba', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Mangwaira', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Kamutsamombe', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Maziza', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Masanga', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Gumiremhete', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Tichona', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Ndhlumhi', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Kandororo', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Chisiri', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Mapfurutva', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chief Nyajena', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Chief Sinamsanga', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Chief Sinamwenda', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Chief Siabuwa', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Kabulawo', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Chief Binga', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Chief Sikalenke', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Chief Sigalenke', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Chief Sinakoma', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Gaza', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Chief Siachilaba', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Chief Sinamagonde', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chief Chitanga', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Masenda Township', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Chief Nyamokoho', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Chief Chikwizu', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Hoyuyu Township', 'Africa/Harare                  ', NULL),
('ZW', '02', 'Chief Chilimanzi', 'Africa/Harare                  ', NULL),
('ZW', '02', 'Donga', 'Africa/Harare                  ', NULL),
('ZW', '02', 'Chief Njelele', 'Africa/Harare                  ', NULL),
('ZW', '02', 'Chief Ntabeni', 'Africa/Harare                  ', NULL),
('ZW', '02', 'Naseby Township', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Shirichena', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Hiya', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Chibamu', 'Africa/Harare                  ', NULL),
('ZW', '10', 'Kaseke', 'Africa/Harare                  ', NULL),
('ZW', '10', 'Zengeza', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Vera', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Kahiya', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Mbefara', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Manana', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Zhangira', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Chief Seki', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Gukwe', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Shoko', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Gan\'A', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Chegutu Pfupajena Township', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Mugaba', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Mutongwizo', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Nyandebvu', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Mazivakufa', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Chief Nyamweda', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Mushangwe', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Chief Nenguo', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Karanda', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Chinemhute', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Muzhazhe', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Mudzingwa', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Takawira', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Chief Mupawose', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Rutize', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Chivima', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Tandayi', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Chirara', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Nhamburwa', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Zimondi', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Tichavaka', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Gave', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Masoka', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Tanyanyiwa', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Manjonjo', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Gondo', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Mkumbi', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Mtoredzanwe', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Gomo', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Kwaramba', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Gore', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mpotedzi', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mukwindidza', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Saumani', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chikuku', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Ragu', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Ngwende', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Gandanzara', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Kudiwa', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Makuvaza', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Maware', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Muchineripi', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Gwavava', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Murambi', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Morningside', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Palmerston', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Yeovil', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Darlington', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Manyere', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Makono', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Tazviwana', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Guveya', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Nganga', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Ndengu', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Gunguwu', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Shoniwa', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Magarasadza', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chapxania', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Madzinga', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mashingaidze', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Mugweni-Zanje', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Muchena', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Denya', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chigowe', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Takundwa', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Tagarira', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Rambanapasi', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Handikori', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Nehonde', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Tagu', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Chikwava', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mutawurwa', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Muzili', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Manjengwa', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chief Chitsunge', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Tikiza', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chitsunge', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Gaza', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chinoda', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Parwaringira', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chitando', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Karimba', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Baswi', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Tumbare', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Zvinavashe', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mahembe', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Makamure', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mhizha', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chirinda', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Muzavazi', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chief Fish', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Ngano', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chivaku', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Tivalire', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Sujini', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Muchiriri-Zenda', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Makombe', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chinyangwa', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Matinyanga', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Pfupajena', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Rwodzi', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Gudo', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Gwakava', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mutendera', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chimhawu', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Kachembere', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Gona', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Ganga', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Munyimi', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mukamba', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mandongwe', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mavairi', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Rusere', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Shambamuto', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Marume', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Svova', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mashinya', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chinyanga', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Machinyanga', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Madya', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chinzou', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Kwarire', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Sundirai', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Makufa', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Zvavamwena', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Weehuma', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mazungunye', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chingozhoro', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mahove', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Muguti', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Gwemende', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mavuka', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Madume', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Rukweza', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mberikanashe', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chiporiro', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Muyambirwi', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mateverere', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Ruzvidzo', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Duvaduve', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Vengayi', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Betera', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Ngohlo', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mutezo', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mhereyenyoka', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chirimudombo', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Njinja', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Kwenda', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chapinga', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Tasaranarwo', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Tarume', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mafuratidze', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Rashamira', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chizema', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Zimbande', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Masvingo', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mukutukutu', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mudziti', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mugumbate', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chidiro', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Dzapasi', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mutunho', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Hukuimwe', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Hadzizi', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Nheya', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Utete', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Matombomaviri', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mataswa', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Wadzenenga', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Hatinahama', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Viriri', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mangoma', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mashandu', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mapfungautsi', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Magondo', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chinouya', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chief Nyashanu', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Hodero', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Fuve', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chitupa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mudadi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Nuyai', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Rongo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chikutuva', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chingwetu', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mujawo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Munyikwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Gweme', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mutero', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chief Gutu', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Murebwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Kadivirire', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Maramwidze', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Gudo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Kefas', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chivasa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Zambara', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mukweshe', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Muchaparawa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chebundo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Livisoni', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Vutete', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chitakira', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Takavinga', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mufahore', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Ndisavaka', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Musara', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Bubaiwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mabika', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mudyiwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Whititi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Tarupiwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Magombedze', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Tizeyi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Munhowei', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mukundu', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mapfumo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Tavura', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Makuvaza', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Zvorushe', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chivenge', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Hwingwiri', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Zibaiwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Tazivei', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Sundire', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Madzimure', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Musevenzo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chindito', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Muchemwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Machovo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mufari', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Tinarwo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Tarubuda', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mangoro', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Dire', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Manangwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Munechisvo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mazhawidza', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Whekwete', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Muchinapo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mutare', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Musimudzwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Matambo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chikara', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Kwengi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mushava', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Tafundu', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Utete', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mhaka', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chifadza', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mapfumo', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Kuvengwa', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Matereke', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mukungu', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Gava', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mukozho', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Zvoushe', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chinefu', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chawunga', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Panchavo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Munyayi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Manyengwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Shumbanhete', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chinatsire', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Panganai', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Ushe', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Toga', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mumwe', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Musungwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Musungo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Kugura', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mawire', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Zariro', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chavahera', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Marambanyika', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Tafirenyika', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Kwaipa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mutumbwi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Ganyiwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Machimbiro', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Muvavarirwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Nyika', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Gotore', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Dulini', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Mabude', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Matule', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Sibaba', 'Africa/Harare                  ', NULL),
('ZW', '00', 'Dingant', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Taffila', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Emapanini', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Manyenge', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Emhlabeni', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Ganga', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Cuseculu', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Mandau', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Tshampeni', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Ndawana', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Danda', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Mahambe', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Gotshane', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Emabandeni', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Kapanyana', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Mbizo Ii', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Egeekeni', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Mashake', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Sikale', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Bonyonko', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Silombopoka', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Capuka', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Luwilili', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Sipepa Ii', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Ekoneni', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Nyelesi', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Mahula', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Lombajana', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Nhobatshipadanka', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Sihume', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Gwande I', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Gwande Ii', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Makeni', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Mangutana', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Tshayisani', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Mpandamanzi', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Nsukamini', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Tabagwa', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Tshiyakwaklwe', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Manyika', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Mapilibomvu', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Maqetuka', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Tshakabanda', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Dandamjena', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Hangamwe', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Luhonjana', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Madziba', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Chief Thomas', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Mhlatshwa', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Bumbu', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Tshomwina', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Nxuma', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Dzokotze', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Butshena', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Bushman Diwa', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Muziomutsha', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Mbute', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Lutiba', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Bayane', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Bule Ii', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Mloyi', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Kautsheka', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Manyanda', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Gewalangamate', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Enkalange', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Menyezwa Ii', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Manzamnyama', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Halangamate', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Mapane', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Mpaniwenyama', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Budhli', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Gariya', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Sifapawakwa', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Mahlamombe', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Mayeza', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Elulwane', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Emambanjeni', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Dikili', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Chief Gambo', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Nqaye', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Mehlobamyo', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Matula', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Masekesa', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Emloteni', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Mehlobomvo', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Soluswe', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Tshetshisa', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Segogo', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Guswini', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Makala', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Getshenge', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Mbambo', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Mbowani', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Sigaqana', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Maputata', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Nkomombili', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Mamima', 'Africa/Harare                  ', NULL),
('ZW', '07', 'Gwatemba', 'Africa/Harare                  ', NULL),
('ZW', '07', 'Malole', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chimire', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Diki', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Takaidzwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mafukidze', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Javangwe', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mahope', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mashizha', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Njube', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Nemaparo', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Matendere', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Nechibvuri', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chavunda', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Matamba', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Maduku', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Machindu', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Munoda', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chiwara', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Makuvise', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mamvura', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mudite', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Sakurai', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chinyai', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Ngome', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mangonono', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Tarusenga', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Makufa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Dabwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Munguri', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Kwangare', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Makonese', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Ruzive', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chibhamu', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Sonono', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Guzha', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Zvenidza', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Govo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mafudze', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Maibire', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Urayayi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Ziso', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mutongiwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Machakadze', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mangwiro', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Rangarirai', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Vurayai', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Tarugarira', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Zivanai', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mugwagwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Muswayi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Jerera', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mudodo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mupatsi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mutubuki', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Muchabaiwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mabuvo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Muchakata', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Zinjera', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Nzara', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mutsakatira', 'Africa/Harare                  ', NULL),
('ZW', '08', 'David', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mutukwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chivhuro', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Murwiri', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Musundire', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Tarupuwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Tokwe', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chikuvire', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mudedye', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Hapanyengwi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chimwana', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chikwiro', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Gotora', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Zvenyika', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Sanangurai', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Rutave', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Ringisai', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Ndimba', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mudakureva', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Basera', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Ndakaripei', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mutihero', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Munyaka', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Tirarami', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Marodze', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Jereswa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Zvirevo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Charumbira', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mharadze', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Znichi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chigweremba', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Miraikumwe', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mugariwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Masiyandima', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Rife', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chikonye', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chauruka', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Tafuma', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chidya', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Gwamure', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Zeka', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Tsaurai', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Dzivakwi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Zvidzai', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chakona', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mutondoro', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Hudson', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chinganga', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chagonda', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Zambeza', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Gogode', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chaminuka', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Zano', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Musiiwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Shumba', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mangwena', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chibaya', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Pambayi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Beni', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Muzorori', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Machikiche', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Abraham', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chief Makore', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mungesi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Gawa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chidakwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Machawira', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Muchenga', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chamisa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mupandaguta', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Zindinda', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Rinashe', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Majaya', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Rambakudzihwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chimwango', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chikerema', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mushirivindi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Dzambi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Matingwadza', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Taruvinga', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Nhambu', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Munyindi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Gahadzikwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chahata', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mashako', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Machokoto', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Sengai', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mudawu', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chapwanya', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Magwiro', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Muderedzwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mauto', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chivuna', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Gwiznimbi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Zizima', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mukoriro', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Kwangwa I', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Tokura', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Kizito', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Gwaza', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chinaka', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Kwangwa Iii', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Njerere', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Viyai', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Zvariruka', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mugadza', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chiriga', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Jani', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Rashayi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Payarira', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Tavuya', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Dzingirai', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Rumurai', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Vanhukwavo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Tofaraseyi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mazambara', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Matorere Ii', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mafinyor', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Musarira', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Fundikai', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chaurura', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Rufu', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Zvidzayi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Boyi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mupuwi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mhakore', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mudzwiti', 'Africa/Harare                  ', NULL);
INSERT INTO `cities` (`country_code`, `state_code`, `city_name`, `city_name_ascii`, `timezoneid`) VALUES
('ZW', '08', 'Kanjera', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Muptukidzwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Ndisengei', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mawindo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Nemashakwe', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mukosi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mari', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Vangarirai', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Hokoyo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mandaba', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Wilson', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Machako', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chokuda', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Itayi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Muradzi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Busvumani', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Tumbe', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Gore', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chadyeni', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chihenhamo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Murinda', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Manyadza', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Tomasi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mudzimbabwe', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mufunda', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Tadiosi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Nhamo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Pavari', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Guchu', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Tarwirei', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Jecha', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Tanda', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Rugare', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Tabva', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chomunorwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chigavade', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Madzivire', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Zibhache', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Tarwira', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mugeji', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chandida', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Regedzai', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mutamire', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mubako', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mapxere', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mazano', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chigomo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Manyanye', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Pisayi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Muneri', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Ngundu', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Urayai', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mhuru', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Dapi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chinyati', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chimunhu', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mhazvo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Rwambiwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Pavaida', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mutambesere', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Pirikisi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Toringepi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mupunga', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Munhanga', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Zvavarundwi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mupfudze', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Matotote', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Takarindwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mafuka', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Machinga', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Ganda', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Tangano', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chidonitofaraseyi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Gonye', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Nhengo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chaita', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Muganhiri', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mufudza', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Ziromba', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Marima', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Zunde', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Rukweza', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Guni', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Tokonyai', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Gwema', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Panichi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chokufa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chowe', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Zvawanda', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mandaza', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mberi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mazvimba', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chimene', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mhazo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Madanyika', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Janje', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chagwiza', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Rukato', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Dege', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Nyaiwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chitadu', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mabunu', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Resoro', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Muruzi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chireya', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Nechirorwe', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Muchadeharna', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Chapungu', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Zinamo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Runesu', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Makinhiwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mubungare', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mapfume', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Rwauya', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Maperezano', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Nyamadzavo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mundityi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mhedzano', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Ranches', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Zimunhu', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mamutse', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Banga', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Nyasha', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Tavafumisa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Matunzeni', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Pamire', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Tsvangirayi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mandivenga', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Takaendesa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Pomerayi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Dzinokuvara', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mutema', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mandivengereyi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Hore', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Radzikayi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Ngwadzavi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Dahwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Gambakwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Muduma', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Havadi', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Tasera Ii', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Gondowe', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Soruka', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Maptumo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Kubvoruro', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Ngwangwani', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Nhidza', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Nyangari', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Zival', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Mlagisa', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Nganyana', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Mpanedziba', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Garigari', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Nengondzwana', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Deleleni', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Dzimidza', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Ngadzi', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Sasedza', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Lagisa', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Nanda', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Godzo', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Dingani', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Kenmaur', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Nkwalini', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Siganda', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Sipepa', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Maraposa', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Mbahulana', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Matonjeka', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Chief Nqoya', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Silande', 'Africa/Harare                  ', NULL),
('ZW', '07', 'Semukwe', 'Africa/Harare                  ', NULL),
('ZW', '02', 'Gokwe South District', 'Africa/Harare                  ', NULL),
('ZW', '03', 'Shutu', 'Africa/Harare                  ', NULL),
('ZW', '03', 'Rutope', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Chitowa', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Chinyika', 'Africa/Harare                  ', NULL),
('ZW', '04', 'Shangure', 'Africa/Harare                  ', NULL),
('ZW', '03', 'Karuyana', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chibuwe', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Marongora', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Vuti', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Chehoko', 'Africa/Harare                  ', NULL),
('ZW', '02', 'Mukwakwe', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Bangala', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Lubimbi', 'Africa/Harare                  ', NULL),
('ZW', '02', 'Mapiravana', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chiduku', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Ndawana', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chinoro', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Munyanyi', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Machacha', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Chiturike', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mukondomi', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Masocha', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Neshava', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Ndongwe', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mutauto', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Mabvuragudo', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Masenda', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mondo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Gomba', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Gudza', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Muchuchu', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Matombo', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mataruse', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mushangwe', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Makamure', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Kurai', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mudodiwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Soro', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Gumindoga', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mutasa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Dungu', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Charamba', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Masarire', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mutsinzwa', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Mupakwa', 'Africa/Harare                  ', NULL),
('ZW', '01', 'Baruru', 'Africa/Harare                  ', NULL),
('ZW', '05', 'Zimbara', 'Africa/Harare                  ', NULL),
('ZW', '08', 'Nyika-Kurai', 'Africa/Harare                  ', NULL),
('ZW', '06', 'Nhlangano', 'Africa/Harare                  ', NULL),
('AD', '04', 'Sispony', 'Europe/Andorra                 ', NULL),
('AD', '05', 'Segudet', 'Europe/Andorra                 ', NULL),
('AD', '02', 'El Tarter', 'Europe/Andorra                 ', NULL),
('AD', '06', 'Sant Julia De Loria', 'Europe/Andorra                 ', NULL),
('AD', '02', 'Sant Joan De Caselles', 'Europe/Andorra                 ', NULL),
('AD', '07', 'Santa Coloma', 'Europe/Andorra                 ', NULL),
('AD', '00', 'Rocafort', 'Europe/Andorra                 ', NULL),
('AD', '02', 'Ransol', 'Europe/Andorra                 ', NULL),
('AD', '02', 'Prats', 'Europe/Andorra                 ', NULL),
('AD', '03', 'Pas De La Casa', 'Europe/Andorra                 ', NULL),
('AD', '04', 'Pal', 'Europe/Andorra                 ', NULL),
('AD', '05', 'Ordino', 'Europe/Andorra                 ', NULL),
('AD', '00', 'Obaga D\'Enclar', 'Europe/Andorra                 ', NULL),
('AD', '00', 'Obaga De L\'Estall Serrer', 'Europe/Andorra                 ', NULL),
('AD', '00', 'Obaga De La Gonarda', 'Europe/Andorra                 ', NULL),
('AD', '00', 'Obaga De Juberri', 'Europe/Andorra                 ', NULL),
('AD', '00', 'Obaga De Fontverd', 'Europe/Andorra                 ', NULL),
('AD', '00', 'Obaga D\'Ansalonga', 'Europe/Andorra                 ', NULL),
('AD', '00', 'Obac De Sispony', 'Europe/Andorra                 ', NULL),
('AD', '00', 'Obac D\'Envalira', 'Europe/Andorra                 ', NULL),
('AD', '00', 'Obac D\'Encamp', 'Europe/Andorra                 ', NULL),
('AD', '00', 'Obac Dels Cortals', 'Europe/Andorra                 ', NULL),
('AD', '06', 'Nagol', 'Europe/Andorra                 ', NULL),
('AD', '02', 'Molleres', 'Europe/Andorra                 ', NULL),
('AD', '02', 'Meritxell', 'Europe/Andorra                 ', NULL),
('AD', '04', 'Mas De Ribafeta', 'Europe/Andorra                 ', NULL),
('AD', '06', 'Mas D\'Alins', 'Europe/Andorra                 ', NULL),
('AD', '06', 'Llumeneres', 'Europe/Andorra                 ', NULL),
('AD', '05', 'Llorts', 'Europe/Andorra                 ', NULL),
('AD', '05', 'Les Sobiranes', 'Europe/Andorra                 ', NULL),
('AD', '05', 'Les Salines', 'Europe/Andorra                 ', NULL),
('AD', '08', 'Les Escaldes', 'Europe/Andorra                 ', NULL),
('AD', '03', 'Les Bons', 'Europe/Andorra                 ', NULL),
('AD', '00', 'La Peguera', 'Europe/Andorra                 ', NULL),
('AD', '04', 'La Massana', 'Europe/Andorra                 ', NULL),
('AD', '02', 'L\'Aldosa De Canillo', 'Europe/Andorra                 ', NULL),
('AD', '04', 'L\'Aldosa', 'Europe/Andorra                 ', NULL),
('AD', '05', 'La Cortinada', 'Europe/Andorra                 ', NULL),
('AD', '00', 'Juberrussa', 'Europe/Andorra                 ', NULL),
('AD', '06', 'Juberri', 'Europe/Andorra                 ', NULL),
('AD', '06', 'Fontaneda', 'Europe/Andorra                 ', NULL),
('AD', '00', 'Feritxet', 'Europe/Andorra                 ', NULL),
('AD', '00', 'Espeluga', 'Europe/Andorra                 ', NULL),
('AD', '04', 'Escas', 'Europe/Andorra                 ', NULL),
('AD', '00', 'Escalluquer', 'Europe/Andorra                 ', NULL),
('AD', '04', 'Erts', 'Europe/Andorra                 ', NULL),
('AD', '08', 'Engordany', 'Europe/Andorra                 ', NULL),
('AD', '03', 'Encamp', 'Europe/Andorra                 ', NULL),
('AD', '02', 'El Vilar', 'Europe/Andorra                 ', NULL),
('AD', '02', 'Els Plans', 'Europe/Andorra                 ', NULL),
('AD', '00', 'Els Plans', 'Europe/Andorra                 ', NULL),
('AD', '05', 'El Serrat', 'Europe/Andorra                 ', NULL),
('AD', '00', 'Els Cortals', 'Europe/Andorra                 ', NULL),
('AD', '00', 'El Pardal', 'Europe/Andorra                 ', NULL),
('AD', '00', 'El Confos', 'Europe/Andorra                 ', NULL),
('AD', '00', 'Costa De Les Neres', 'Europe/Andorra                 ', NULL),
('AD', '06', 'Certers', 'Europe/Andorra                 ', NULL),
('AD', '02', 'Canillo', 'Europe/Andorra                 ', NULL),
('AD', '06', 'Bixessarri', 'Europe/Andorra                 ', NULL),
('AD', '00', 'Beixalis', 'Europe/Andorra                 ', NULL),
('AD', '06', 'Aubinya', 'Europe/Andorra                 ', NULL),
('AD', '00', 'Aubinya', 'Europe/Andorra                 ', NULL),
('AD', '04', 'Arinsal', 'Europe/Andorra                 ', NULL),
('AD', '05', 'Arans', 'Europe/Andorra                 ', NULL),
('AD', '04', 'Anyos', 'Europe/Andorra                 ', NULL),
('AD', '05', 'Ansalonga', 'Europe/Andorra                 ', NULL),
('AD', '00', 'Principality Of Andorra', 'Europe/Andorra                 ', NULL),
('AD', '07', 'Andorra La Vella', 'Europe/Andorra                 ', NULL),
('AD', '06', 'Aixovall', 'Europe/Andorra                 ', NULL),
('AD', '06', 'Aixirivall', 'Europe/Andorra                 ', NULL),
('AD', '06', 'Aixas', 'Europe/Andorra                 ', NULL),
('AD', '08', 'Escaldes-Engordany', 'Europe/Andorra                 ', NULL),
('AD', '07', 'La Margineda', 'Europe/Andorra                 ', NULL),
('AD', '02', 'Incles', 'Europe/Andorra                 ', NULL),
('AD', '02', 'Bordes D\'Envalira', 'Europe/Andorra                 ', NULL),
('AD', '08', 'Sant Miquel D\'Engolasters', 'Europe/Andorra                 ', NULL),
('AE', '03', 'Suhaylah', 'Asia/Dubai                     ', NULL),
('AE', '01', 'Zuwayhir', 'Asia/Dubai                     ', NULL),
('AE', '04', 'Zubarah', 'Asia/Dubai                     ', NULL),
('AE', '04', 'Zikt', 'Asia/Dubai                     ', NULL),
('AE', '04', 'Zanhah', 'Asia/Dubai                     ', NULL),
('AE', '01', 'Zafir', 'Asia/Dubai                     ', NULL),
('AE', '05', 'Yinas', 'Asia/Dubai                     ', NULL),
('AE', '03', 'Warisan', 'Asia/Dubai                     ', NULL),
('AE', '04', 'Wamm', 'Asia/Dubai                     ', NULL),
('AE', '02', 'Wahlah', 'Asia/Dubai                     ', NULL),
('AE', '01', 'Wafd', 'Asia/Dubai                     ', NULL),
('AE', '05', 'Wad Wid', 'Asia/Dubai                     ', NULL),
('AE', '06', 'Wadi Shi', 'Asia/Dubai                     ', NULL),
('AE', '01', 'Wadhil', 'Asia/Dubai                     ', NULL),
('AE', '04', 'Wa`bayn', 'Asia/Dubai                     ', NULL),
('AE', '03', '`urqub Juwayza', 'Asia/Dubai                     ', NULL),
('AE', '06', '`uqayr', 'Asia/Dubai                     ', NULL),
('AE', '00', 'United Arab Emirates', 'Asia/Dubai                     ', NULL),
('AE', '01', 'Umm Al Qurayn', 'Asia/Dubai                     ', NULL),
('AE', '07', 'Umm Al Qaywayn', 'Asia/Dubai                     ', NULL),
('AE', '03', '`ud Al Bayda\'', 'Asia/Dubai                     ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id_id` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id_id`, `color`) VALUES
('1', '#000000'),
('2', '#ff0000'),
('3', '#ffff00'),
('4', '#009933'),
('5', '#8cff1a'),
('6', '#ebebe0');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment_subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment_text` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment_subject`, `comment_text`, `comment_status`, `created_at`, `updated_at`) VALUES
(1, 'v', 'vvv', 1, '2017-04-23 14:09:51', '2017-04-23 15:05:44'),
(2, 'dgdfg', 'dfgdfg', 1, '2017-04-23 14:10:04', '2017-04-23 15:05:47'),
(3, 'Home  lo ginr  ', 'we are  trying  to  produs  the  best  ', 1, '2017-04-23 14:10:51', '2017-04-23 14:10:51'),
(4, 'New  creation ', 'bonjoure  marcus  je  veux l eau   ', 1, '2017-04-23 14:39:14', '2017-04-23 15:05:52'),
(5, '1211', '1212', 1, '2017-04-23 14:44:47', '2017-04-23 15:05:59'),
(6, '121212', '45454', 1, '2017-04-23 14:44:57', '2017-04-23 15:06:05'),
(7, '11212121', 'resolve ', 1, '2017-04-23 15:06:18', '2017-04-23 15:06:21'),
(8, 'new  Notification   ', 'we are  all  Good  ', 1, '2017-04-23 15:06:56', '2017-04-23 15:07:10'),
(9, 'test  ', 'dfdfdfdfd', 1, '2017-04-24 05:45:14', '2017-04-24 05:45:34'),
(10, 'adsadas', 'adasdasd', 1, '2017-04-24 05:45:23', '2017-04-24 05:45:39'),
(11, 'asadsas', 'asdasdasda', 1, '2017-04-24 05:45:30', '2017-04-24 05:45:43'),
(12, 'marcus  ', 'mbayo', 1, '2017-05-02 10:15:27', '2017-05-02 10:15:37'),
(13, 'there  is  Need  for  to  change  ', 'Hello ', 1, '2017-05-02 10:16:18', '2017-05-02 10:17:29'),
(14, 'the  maxim number  ', 'of  all  the  change  ', 1, '2017-05-02 10:16:50', '2017-05-02 10:17:34'),
(15, 'news', 'of  all  the  time  ', 1, '2017-05-02 10:17:15', '2017-05-02 10:17:36');

-- --------------------------------------------------------

--
-- Table structure for table `confirm_inceden_pancacks`
--

CREATE TABLE `confirm_inceden_pancacks` (
  `id` int(11) NOT NULL,
  `ref_no` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `id_id` int(11) DEFAULT NULL,
  `user_id` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `confirm_inceden_pancacks`
--

INSERT INTO `confirm_inceden_pancacks` (`id`, `ref_no`, `date_time`, `status`, `type`, `id_id`, `user_id`, `updated_at`, `created_at`) VALUES
(1, '', '2016-11-24 20:45:00', 'confirm', '2', 1479991208, '188', '2016-11-24 14:03:52', '2016-11-24 14:03:52');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) COLLATE utf8_persian_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `name`) VALUES
(1, 'AD', 'Andorra'),
(2, 'AE', 'United Arab Emirates'),
(3, 'AF', 'Afghanistan'),
(4, 'AG', 'Antigua And Barbuda'),
(5, 'AI', 'Anguilla'),
(6, 'AL', 'Albania'),
(7, 'AM', 'Armenia'),
(8, 'AO', 'Angola'),
(9, 'AR', 'Argentina'),
(10, 'AS', 'American Samoa'),
(11, 'AT', 'Austria'),
(12, 'AU', 'Australia'),
(13, 'AW', 'Aruba'),
(14, 'AX', 'Aland Islands'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BA', 'Bosnia And Herzegovina'),
(17, 'BB', 'Barbados'),
(18, 'BD', 'Bangladesh'),
(19, 'BE', 'Belgium'),
(20, 'BF', 'Burkina Faso'),
(21, 'BG', 'Bulgaria'),
(22, 'BH', 'Bahrain'),
(23, 'BI', 'Burundi'),
(24, 'BJ', 'Benin'),
(25, 'BL', 'Saint Barthelemy'),
(26, 'BM', 'Bermuda'),
(27, 'BN', 'Brunei'),
(28, 'BO', 'Bolivia'),
(29, 'BQ', 'Bonaire, Saint Eustatius And Saba '),
(30, 'BR', 'Brazil'),
(31, 'BS', 'Bahamas'),
(32, 'BT', 'Bhutan'),
(33, 'BW', 'Botswana'),
(34, 'BY', 'Belarus'),
(35, 'BZ', 'Belize'),
(36, 'CA', 'Canada'),
(37, 'CC', 'Cocos Islands'),
(38, 'CD', 'Democratic Republic Of The Congo'),
(39, 'CF', 'Central African Republic'),
(40, 'CG', 'Republic Of The Congo'),
(41, 'CH', 'Switzerland'),
(42, 'CI', 'Ivory Coast'),
(43, 'CK', 'Cook Islands'),
(44, 'CL', 'Chile'),
(45, 'CM', 'Cameroon'),
(46, 'CN', 'China'),
(47, 'CO', 'Colombia'),
(48, 'CR', 'Costa Rica'),
(49, 'CU', 'Cuba'),
(50, 'CV', 'Cape Verde'),
(51, 'CW', 'Curacao'),
(52, 'CX', 'Christmas Island'),
(53, 'CY', 'Cyprus'),
(54, 'CZ', 'Czech Republic'),
(55, 'DE', 'Germany'),
(56, 'DJ', 'Djibouti'),
(57, 'DK', 'Denmark'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'DZ', 'Algeria'),
(61, 'EC', 'Ecuador'),
(62, 'EE', 'Estonia'),
(63, 'EG', 'Egypt'),
(64, 'EH', 'Western Sahara'),
(65, 'ER', 'Eritrea'),
(66, 'ES', 'Spain'),
(67, 'ET', 'Ethiopia'),
(68, 'FI', 'Finland'),
(69, 'FJ', 'Fiji'),
(70, 'FK', 'Falkland Islands'),
(71, 'FM', 'Micronesia'),
(72, 'FO', 'Faroe Islands'),
(73, 'FR', 'France'),
(74, 'GA', 'Gabon'),
(75, 'GB', 'United Kingdom'),
(76, 'GD', 'Grenada'),
(77, 'GE', 'Georgia'),
(78, 'GF', 'French Guiana'),
(79, 'GG', 'Guernsey'),
(80, 'GH', 'Ghana'),
(81, 'GI', 'Gibraltar'),
(82, 'GL', 'Greenland'),
(83, 'GM', 'Gambia'),
(84, 'GN', 'Guinea'),
(85, 'GP', 'Guadeloupe'),
(86, 'GQ', 'Equatorial Guinea'),
(87, 'GR', 'Greece'),
(88, 'GS', 'South Georgia And The South Sandwich Islands'),
(89, 'GT', 'Guatemala'),
(90, 'GU', 'Guam'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HK', 'Hong Kong'),
(94, 'HN', 'Honduras'),
(95, 'HR', 'Croatia'),
(96, 'HT', 'Haiti'),
(97, 'HU', 'Hungary'),
(98, 'ID', 'Indonesia'),
(99, 'IE', 'Ireland'),
(100, 'IL', 'Israel'),
(101, 'IM', 'Isle Of Man'),
(102, 'IN', 'India'),
(103, 'IO', 'British Indian Ocean Territory'),
(104, 'IQ', 'Iraq'),
(105, 'IR', 'Iran'),
(106, 'IS', 'Iceland'),
(107, 'IT', 'Italy'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JO', 'Jordan'),
(111, 'JP', 'Japan'),
(112, 'KE', 'Kenya'),
(113, 'KG', 'Kyrgyzstan'),
(114, 'KH', 'Cambodia'),
(115, 'KI', 'Kiribati'),
(116, 'KM', 'Comoros'),
(117, 'KN', 'Saint Kitts And Nevis'),
(118, 'KP', 'North Korea'),
(119, 'KR', 'South Korea'),
(120, 'KW', 'Kuwait'),
(121, 'KY', 'Cayman Islands'),
(122, 'KZ', 'Kazakhstan'),
(123, 'LA', 'Laos'),
(124, 'LB', 'Lebanon'),
(125, 'LC', 'Saint Lucia'),
(126, 'LI', 'Liechtenstein'),
(127, 'LK', 'Sri Lanka'),
(128, 'LR', 'Liberia'),
(129, 'LS', 'Lesotho'),
(130, 'LT', 'Lithuania'),
(131, 'LU', 'Luxembourg'),
(132, 'LV', 'Latvia'),
(133, 'LY', 'Libya'),
(134, 'MA', 'Morocco'),
(135, 'MC', 'Monaco'),
(136, 'MD', 'Moldova'),
(137, 'ME', 'Montenegro'),
(138, 'MF', 'Saint Martin'),
(139, 'MG', 'Madagascar'),
(140, 'MH', 'Marshall Islands'),
(141, 'MK', 'Macedonia'),
(142, 'ML', 'Mali'),
(143, 'MM', 'Myanmar'),
(144, 'MN', 'Mongolia'),
(145, 'MO', 'Macao'),
(146, 'MP', 'Northern Mariana Islands'),
(147, 'MQ', 'Martinique'),
(148, 'MR', 'Mauritania'),
(149, 'MS', 'Montserrat'),
(150, 'MT', 'Malta'),
(151, 'MU', 'Mauritius'),
(152, 'MV', 'Maldives'),
(153, 'MW', 'Malawi'),
(154, 'MX', 'Mexico'),
(155, 'MY', 'Malaysia'),
(156, 'MZ', 'Mozambique'),
(157, 'NA', 'Namibia'),
(158, 'NC', 'New Caledonia'),
(159, 'NE', 'Niger'),
(160, 'NF', 'Norfolk Island'),
(161, 'NG', 'Nigeria'),
(162, 'NI', 'Nicaragua'),
(163, 'NL', 'Netherlands'),
(164, 'NO', 'Norway'),
(165, 'NP', 'Nepal'),
(166, 'NR', 'Nauru'),
(167, 'NU', 'Niue'),
(168, 'NZ', 'New Zealand'),
(169, 'OM', 'Oman'),
(170, 'PA', 'Panama'),
(171, 'PE', 'Peru'),
(172, 'PF', 'French Polynesia'),
(173, 'PG', 'Papua New Guinea'),
(174, 'PH', 'Philippines'),
(175, 'PK', 'Pakistan'),
(176, 'PL', 'Poland'),
(177, 'PM', 'Saint Pierre And Miquelon'),
(178, 'PR', 'Puerto Rico'),
(179, 'PS', 'Palestinian Territory'),
(180, 'PT', 'Portugal'),
(181, 'PW', 'Palau'),
(182, 'PY', 'Paraguay'),
(183, 'QA', 'Qatar'),
(184, 'RE', 'Reunion'),
(185, 'RO', 'Romania'),
(186, 'RS', 'Serbia'),
(187, 'RU', 'Russia'),
(188, 'RW', 'Rwanda'),
(189, 'SA', 'Saudi Arabia'),
(190, 'SB', 'Solomon Islands'),
(191, 'SC', 'Seychelles'),
(192, 'SD', 'Sudan'),
(193, 'SE', 'Sweden'),
(194, 'SG', 'Singapore'),
(195, 'SH', 'Saint Helena'),
(196, 'SI', 'Slovenia'),
(197, 'SJ', 'Svalbard And Jan Mayen'),
(198, 'SK', 'Slovakia'),
(199, 'SL', 'Sierra Leone'),
(200, 'SM', 'San Marino'),
(201, 'SN', 'Senegal'),
(202, 'SO', 'Somalia'),
(203, 'SR', 'Suriname'),
(204, 'SS', 'South Sudan'),
(205, 'ST', 'Sao Tome And Principe'),
(206, 'SV', 'El Salvador'),
(207, 'SX', 'Sint Maarten'),
(208, 'SY', 'Syria'),
(209, 'SZ', 'Swaziland'),
(210, 'TC', 'Turks And Caicos Islands'),
(211, 'TD', 'Chad'),
(212, 'TF', 'French Southern Territories'),
(213, 'TG', 'Togo'),
(214, 'TH', 'Thailand'),
(215, 'TJ', 'Tajikistan'),
(216, 'TK', 'Tokelau'),
(217, 'TL', 'East Timor'),
(218, 'TM', 'Turkmenistan'),
(219, 'TN', 'Tunisia'),
(220, 'TO', 'Tonga'),
(221, 'TR', 'Turkey'),
(222, 'TT', 'Trinidad And Tobago'),
(223, 'TV', 'Tuvalu'),
(224, 'TW', 'Taiwan'),
(225, 'TZ', 'Tanzania'),
(226, 'UA', 'Ukraine'),
(227, 'UG', 'Uganda'),
(228, 'UM', 'United States Minor Outlying Islands'),
(229, 'US', 'United States'),
(230, 'UY', 'Uruguay'),
(231, 'UZ', 'Uzbekistan'),
(232, 'VC', 'Saint Vincent And The Grenadines'),
(233, 'VE', 'Venezuela'),
(234, 'VG', 'British Virgin Islands'),
(235, 'VI', 'U.S. Virgin Islands'),
(236, 'VN', 'Vietnam'),
(237, 'VU', 'Vanuatu'),
(238, 'WF', 'Wallis And Futuna'),
(239, 'WS', 'Samoa'),
(240, 'XK', 'Kosovo'),
(241, 'YE', 'Yemen'),
(242, 'YT', 'Mayotte'),
(243, 'ZA', 'South Africa'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `acronym` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `slug`, `name`, `created_by`, `updated_by`, `active`, `created_at`, `updated_at`, `acronym`) VALUES
(1, 'TNPA-Ports', 'Ports', 10, 10, 1, '2017-02-15 07:54:35', '2017-02-15 08:10:14', 'PORTS'),
(2, 'Realtime', 'Realtime', 10, 0, 1, '2017-02-15 10:02:13', '2017-02-15 10:02:13', 'REAL'),
(3, 'GateTrack', 'GateTrack', 10, 0, 1, '2017-02-16 07:16:27', '2017-02-16 07:16:27', 'GT'),
(4, 'Test-Department', 'Test Department', 1, 0, 1, '2017-03-26 19:03:47', '2017-03-26 19:03:47', 'Test Department'),
(5, 'Devloper', 'Devloper', 10, 0, 1, '2017-03-28 09:31:57', '2017-03-28 09:31:57', 'DEV');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `province` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `slug`, `province`, `created_by`, `updated_by`, `active`, `created_at`, `updated_at`, `code`) VALUES
(1, 'West Coast', 'DC1', 3, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '101'),
(2, 'Cape Winelands', 'DC2', 3, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '102'),
(3, 'Overberg', 'DC3', 3, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '103'),
(4, 'Eden', 'DC4', 3, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '104'),
(5, 'Central Karoo', 'DC5', 3, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '105'),
(6, 'City of Cape Town', 'CPT', 3, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '199'),
(7, 'Cacadu', 'DC10', 4, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '210'),
(8, 'Amathole', 'DC12', 4, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '212'),
(9, 'Chris Hani', 'DC13', 4, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '213'),
(10, 'Joe Gqabi', 'DC14', 4, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '214'),
(11, 'O.R. Tambo', 'DC15', 4, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '215'),
(12, 'Alfred Nzo', 'DC44', 4, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '244'),
(13, 'Buffalo City', 'BUF', 4, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '260'),
(14, 'Nelson Mandela Bay', 'NMA', 4, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '299'),
(15, 'Namakwa', 'DC6', 5, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '306'),
(16, 'Pixley Ka Seme', 'DC7', 5, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '307'),
(17, 'Siyanda', 'DC8', 5, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '308'),
(18, 'Frances Baard', 'DC9', 5, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '309'),
(19, 'John Taolo Gaetsewe', 'DC45', 5, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '345'),
(20, 'Xhariep', 'DC16', 7, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '416'),
(21, 'Lejweleputswa', 'DC18', 7, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '418'),
(22, 'Thabo Mofutsanyane', 'DC19', 7, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '419'),
(23, 'Fezile Dabi', 'DC20', 7, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '420'),
(24, 'Mangaung', 'MAN', 7, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '499'),
(25, 'Ugu', 'DC21', 1, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '521'),
(26, 'UMgungundlovu', 'DC22', 1, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '522'),
(27, 'Uthukela', 'DC23', 1, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '522'),
(28, 'Umzinyathi', 'DC24', 1, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '554'),
(29, 'Amajuba', 'DC25', 1, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '555'),
(30, 'Zululand', 'DC26', 1, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '556'),
(31, 'Umkhanyakude', 'DC27', 1, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '527'),
(32, 'Uthungulu', 'DC28', 1, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '528'),
(33, 'iLembe', 'DC29', 1, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '559'),
(34, 'Harry Gwala', 'DC43', 1, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '543'),
(35, 'eThekwini', 'ETH', 1, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '599'),
(36, 'Bojanala', 'DC37', 6, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '637'),
(37, 'Ngaka Modiri Molema', 'DC38', 6, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '638'),
(38, 'Dr Ruth Segomotsi Mompati', 'DC39', 6, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '639'),
(39, 'Dr Kenneth Kaunda', 'DC40', 6, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '640'),
(40, 'Sedibeng', 'DC42', 2, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '742'),
(41, 'West Rand', 'DC48', 2, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '748'),
(42, 'Ekurhuleni', 'EKU', 2, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '797'),
(43, 'City of Johannesburg', 'JHB', 2, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '798'),
(44, 'City of Tshwane', 'TSH', 2, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '799'),
(45, 'Gert Sibande', 'DC30', 9, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '830'),
(46, 'Nkangala', 'DC31', 9, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '831'),
(47, 'Ehlanzeni', 'DC32', 9, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '832'),
(48, 'Mopani', 'DC33', 8, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '933'),
(49, 'Vhembe', 'DC34', 8, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '934'),
(50, 'Capricorn', 'DC35', 8, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '935'),
(51, 'Waterberg', 'DC36', 8, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '936'),
(52, 'Greater Sekhukhune', 'DC47', 8, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '947');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` int(10) UNSIGNED NOT NULL,
  `FirstName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LastName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `IdNumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Cellphone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DriverLicenceNo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `companyId` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `FirstName`, `LastName`, `IdNumber`, `Cellphone`, `DriverLicenceNo`, `companyId`, `created_at`, `updated_at`) VALUES
(1, 'Tester', 'Test', '1234567890123', '0829699114', '20080025ZPGS', 1, '2017-03-01 06:47:45', '2017-03-01 06:47:45'),
(2, 'Unknown', 'Unknown', 'Unknown', 'Unknown', '-', 2, '2017-03-02 02:46:40', '2017-03-02 02:46:40'),
(3, 'Unknown', 'Driver', '', '', '', 3, '2017-03-02 06:12:54', '2017-03-02 06:12:54'),
(4, 'Unkown', '', '0', 'Unkown', '-', 2, '2017-03-03 09:06:06', '2017-03-03 09:06:06');

-- --------------------------------------------------------

--
-- Table structure for table `driver_companies`
--

CREATE TABLE `driver_companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `CompanyName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ContactNumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CompanyRegNo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `driver_companies`
--

INSERT INTO `driver_companies` (`id`, `CompanyName`, `ContactNumber`, `CompanyRegNo`, `created_at`, `updated_at`) VALUES
(1, 'Siyaleader', '0313326581', '2015/02/2051', '2017-03-01 06:47:45', '2017-03-01 06:47:45'),
(2, 'Unknown', 'Unknown', '-', '2017-03-02 02:46:40', '2017-03-02 02:46:40'),
(3, 'Durban Port', '0318245462', '341000000000', '2017-03-02 06:12:54', '2017-03-02 06:12:54'),
(4, 'Acorn Logistics', '0312999999', 'test123', '2017-03-02 06:12:55', '2017-03-02 06:12:55'),
(5, 'd', 'dd', 'ff', '2017-03-26 18:31:09', '2017-03-26 18:31:09');

-- --------------------------------------------------------

--
-- Table structure for table `driver_vehicles`
--

CREATE TABLE `driver_vehicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `Model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Make` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `VehicleRegNo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `driver_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `timeIn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `returned` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `purpose` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `driver_vehicles`
--

INSERT INTO `driver_vehicles` (`id`, `Model`, `Make`, `Color`, `VehicleRegNo`, `driver_id`, `company_id`, `timeIn`, `returned`, `purpose`, `gate`, `created_at`, `updated_at`) VALUES
(1, 'Toyota', '2015', 'Red', 'ZHN841', 1, 1, '30', '', 'Drop-off', '', '2017-03-01 06:47:45', '2017-03-01 06:47:45'),
(2, 'Toyota', '2015', 'Red', 'ZHN841', 1, 1, '30', '', 'Drop-off', '', '2017-03-01 07:36:17', '2017-03-01 07:36:17'),
(3, 'Toyota', '2015', 'Red', 'ZHN841', 1, 1, '30', '', 'Drop-off', '', '2017-03-01 07:47:05', '2017-03-01 07:47:05'),
(4, 'Toyota', '2015', 'Red', 'ZHN841', 1, 1, '30', '', 'Drop-off', '', '2017-03-01 15:26:30', '2017-03-01 15:26:30'),
(5, 'Toyota', '2015', 'Red', 'ZHN841', 1, 1, '30', '', 'Drop-off', '', '2017-03-01 19:45:04', '2017-03-01 19:45:04'),
(6, 'Toyota', '2015', 'Red', 'ZHN841', 1, 1, '30', '', 'Drop-off', '', '2017-03-01 21:13:59', '2017-03-01 21:13:59'),
(7, '2015', 'Toyota', 'Red', 'ZHN841', 1, 1, '30', '', 'Drop-off', '', '2017-03-01 22:29:55', '2017-03-01 22:29:55'),
(8, '2015', 'Toyota', 'Red', 'ZHN841', 1, 1, '30', '', 'Drop-off', '', '2017-03-01 22:30:03', '2017-03-01 22:30:03'),
(9, 'Toyota', '2015', 'Red', 'ZHN841', 1, 1, '30', '', 'Drop-off', '', '2017-03-01 22:47:30', '2017-03-01 22:47:30'),
(10, 'Toyota', '2015', 'Red', 'ZHN841', 1, 1, '30', '', 'Drop-off', '', '2017-03-01 22:47:42', '2017-03-01 22:47:42'),
(11, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:46:40', '2017-03-02 02:46:40'),
(12, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:15', '2017-03-02 02:47:15'),
(13, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:16', '2017-03-02 02:47:16'),
(14, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:23', '2017-03-02 02:47:23'),
(15, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:23', '2017-03-02 02:47:23'),
(16, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:24', '2017-03-02 02:47:24'),
(17, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:24', '2017-03-02 02:47:24'),
(18, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:25', '2017-03-02 02:47:25'),
(19, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:25', '2017-03-02 02:47:25'),
(20, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:26', '2017-03-02 02:47:26'),
(21, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:26', '2017-03-02 02:47:26'),
(22, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:27', '2017-03-02 02:47:27'),
(23, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:27', '2017-03-02 02:47:27'),
(24, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:27', '2017-03-02 02:47:27'),
(25, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:28', '2017-03-02 02:47:28'),
(26, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:28', '2017-03-02 02:47:28'),
(27, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:29', '2017-03-02 02:47:29'),
(28, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:30', '2017-03-02 02:47:30'),
(29, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:30', '2017-03-02 02:47:30'),
(30, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:31', '2017-03-02 02:47:31'),
(31, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:31', '2017-03-02 02:47:31'),
(32, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:32', '2017-03-02 02:47:32'),
(33, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:32', '2017-03-02 02:47:32'),
(34, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:33', '2017-03-02 02:47:33'),
(35, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:33', '2017-03-02 02:47:33'),
(36, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:34', '2017-03-02 02:47:34'),
(37, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:34', '2017-03-02 02:47:34'),
(38, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:34', '2017-03-02 02:47:34'),
(39, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:35', '2017-03-02 02:47:35'),
(40, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:35', '2017-03-02 02:47:35'),
(41, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:36', '2017-03-02 02:47:36'),
(42, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:36', '2017-03-02 02:47:36'),
(43, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:37', '2017-03-02 02:47:37'),
(44, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:37', '2017-03-02 02:47:37'),
(45, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:38', '2017-03-02 02:47:38'),
(46, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:38', '2017-03-02 02:47:38'),
(47, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:39', '2017-03-02 02:47:39'),
(48, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:39', '2017-03-02 02:47:39'),
(49, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:40', '2017-03-02 02:47:40'),
(50, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:40', '2017-03-02 02:47:40'),
(51, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:41', '2017-03-02 02:47:41'),
(52, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:41', '2017-03-02 02:47:41'),
(53, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:42', '2017-03-02 02:47:42'),
(54, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:42', '2017-03-02 02:47:42'),
(55, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:43', '2017-03-02 02:47:43'),
(56, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:43', '2017-03-02 02:47:43'),
(57, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:43', '2017-03-02 02:47:43'),
(58, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:44', '2017-03-02 02:47:44'),
(59, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:44', '2017-03-02 02:47:44'),
(60, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:45', '2017-03-02 02:47:45'),
(61, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:45', '2017-03-02 02:47:45'),
(62, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:46', '2017-03-02 02:47:46'),
(63, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:46', '2017-03-02 02:47:46'),
(64, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:47', '2017-03-02 02:47:47'),
(65, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:47', '2017-03-02 02:47:47'),
(66, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:48', '2017-03-02 02:47:48'),
(67, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:48', '2017-03-02 02:47:48'),
(68, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:49', '2017-03-02 02:47:49'),
(69, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:49', '2017-03-02 02:47:49'),
(70, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:50', '2017-03-02 02:47:50'),
(71, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:50', '2017-03-02 02:47:50'),
(72, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:51', '2017-03-02 02:47:51'),
(73, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:51', '2017-03-02 02:47:51'),
(74, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:52', '2017-03-02 02:47:52'),
(75, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:52', '2017-03-02 02:47:52'),
(76, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:53', '2017-03-02 02:47:53'),
(77, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:53', '2017-03-02 02:47:53'),
(78, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:54', '2017-03-02 02:47:54'),
(79, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:54', '2017-03-02 02:47:54'),
(80, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:55', '2017-03-02 02:47:55'),
(81, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:55', '2017-03-02 02:47:55'),
(82, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:55', '2017-03-02 02:47:55'),
(83, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:56', '2017-03-02 02:47:56'),
(84, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:57', '2017-03-02 02:47:57'),
(85, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:57', '2017-03-02 02:47:57'),
(86, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:58', '2017-03-02 02:47:58'),
(87, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:47:58', '2017-03-02 02:47:58'),
(88, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:02', '2017-03-02 02:48:02'),
(89, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:03', '2017-03-02 02:48:03'),
(90, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:03', '2017-03-02 02:48:03'),
(91, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:04', '2017-03-02 02:48:04'),
(92, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:04', '2017-03-02 02:48:04'),
(93, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:05', '2017-03-02 02:48:05'),
(94, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:05', '2017-03-02 02:48:05'),
(95, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:06', '2017-03-02 02:48:06'),
(96, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:06', '2017-03-02 02:48:06'),
(97, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:07', '2017-03-02 02:48:07'),
(98, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:07', '2017-03-02 02:48:07'),
(99, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:08', '2017-03-02 02:48:08'),
(100, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:08', '2017-03-02 02:48:08'),
(101, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:09', '2017-03-02 02:48:09'),
(102, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:09', '2017-03-02 02:48:09'),
(103, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:10', '2017-03-02 02:48:10'),
(104, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:10', '2017-03-02 02:48:10'),
(105, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:10', '2017-03-02 02:48:10'),
(106, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:11', '2017-03-02 02:48:11'),
(107, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:11', '2017-03-02 02:48:11'),
(108, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:12', '2017-03-02 02:48:12'),
(109, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:12', '2017-03-02 02:48:12'),
(110, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:13', '2017-03-02 02:48:13'),
(111, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:13', '2017-03-02 02:48:13'),
(112, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:14', '2017-03-02 02:48:14'),
(113, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:15', '2017-03-02 02:48:15'),
(114, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:15', '2017-03-02 02:48:15'),
(115, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:15', '2017-03-02 02:48:15'),
(116, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:16', '2017-03-02 02:48:16'),
(117, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:16', '2017-03-02 02:48:16'),
(118, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:17', '2017-03-02 02:48:17'),
(119, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:17', '2017-03-02 02:48:17'),
(120, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:18', '2017-03-02 02:48:18'),
(121, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:18', '2017-03-02 02:48:18'),
(122, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:19', '2017-03-02 02:48:19'),
(123, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:19', '2017-03-02 02:48:19'),
(124, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:20', '2017-03-02 02:48:20'),
(125, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:24', '2017-03-02 02:48:24'),
(126, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:32', '2017-03-02 02:48:32'),
(127, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:33', '2017-03-02 02:48:33'),
(128, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:33', '2017-03-02 02:48:33'),
(129, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:34', '2017-03-02 02:48:34'),
(130, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:34', '2017-03-02 02:48:34'),
(131, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:35', '2017-03-02 02:48:35'),
(132, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:35', '2017-03-02 02:48:35'),
(133, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:36', '2017-03-02 02:48:36'),
(134, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:48:44', '2017-03-02 02:48:44'),
(135, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:00', '2017-03-02 02:49:00'),
(136, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:00', '2017-03-02 02:49:00'),
(137, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:01', '2017-03-02 02:49:01'),
(138, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:01', '2017-03-02 02:49:01'),
(139, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:02', '2017-03-02 02:49:02'),
(140, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:02', '2017-03-02 02:49:02'),
(141, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:03', '2017-03-02 02:49:03'),
(142, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:03', '2017-03-02 02:49:03'),
(143, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:04', '2017-03-02 02:49:04'),
(144, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:04', '2017-03-02 02:49:04'),
(145, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:04', '2017-03-02 02:49:04'),
(146, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:05', '2017-03-02 02:49:05'),
(147, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:06', '2017-03-02 02:49:06'),
(148, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:07', '2017-03-02 02:49:07'),
(149, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:07', '2017-03-02 02:49:07'),
(150, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:07', '2017-03-02 02:49:07'),
(151, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:08', '2017-03-02 02:49:08'),
(152, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:08', '2017-03-02 02:49:08'),
(153, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:09', '2017-03-02 02:49:09'),
(154, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:09', '2017-03-02 02:49:09'),
(155, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:10', '2017-03-02 02:49:10'),
(156, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:10', '2017-03-02 02:49:10'),
(157, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:10', '2017-03-02 02:49:10'),
(158, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:11', '2017-03-02 02:49:11'),
(159, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:11', '2017-03-02 02:49:11'),
(160, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:12', '2017-03-02 02:49:12'),
(161, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:12', '2017-03-02 02:49:12'),
(162, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:12', '2017-03-02 02:49:12'),
(163, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:13', '2017-03-02 02:49:13'),
(164, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:13', '2017-03-02 02:49:13'),
(165, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:14', '2017-03-02 02:49:14'),
(166, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:14', '2017-03-02 02:49:14'),
(167, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:15', '2017-03-02 02:49:15'),
(168, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:15', '2017-03-02 02:49:15'),
(169, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:16', '2017-03-02 02:49:16'),
(170, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:16', '2017-03-02 02:49:16'),
(171, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:17', '2017-03-02 02:49:17'),
(172, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:17', '2017-03-02 02:49:17'),
(173, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:18', '2017-03-02 02:49:18'),
(174, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:18', '2017-03-02 02:49:18'),
(175, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:19', '2017-03-02 02:49:19'),
(176, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:19', '2017-03-02 02:49:19'),
(177, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:20', '2017-03-02 02:49:20'),
(178, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:20', '2017-03-02 02:49:20'),
(179, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:21', '2017-03-02 02:49:21'),
(180, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:22', '2017-03-02 02:49:22'),
(181, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:36', '2017-03-02 02:49:36'),
(182, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:37', '2017-03-02 02:49:37'),
(183, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:37', '2017-03-02 02:49:37'),
(184, '', 'Merc', '', 'ND763139', 2, 2, '0', '', 'Unknown', '', '2017-03-02 02:49:38', '2017-03-02 02:49:38'),
(185, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:02:25', '2017-03-02 03:02:25'),
(186, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:02:26', '2017-03-02 03:02:26'),
(187, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:02:34', '2017-03-02 03:02:34'),
(188, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:02:34', '2017-03-02 03:02:34'),
(189, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:02:35', '2017-03-02 03:02:35'),
(190, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:02:42', '2017-03-02 03:02:42'),
(191, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:02:42', '2017-03-02 03:02:42'),
(192, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:02:43', '2017-03-02 03:02:43'),
(193, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:02:43', '2017-03-02 03:02:43'),
(194, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:02:44', '2017-03-02 03:02:44'),
(195, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:02:44', '2017-03-02 03:02:44'),
(196, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:02:45', '2017-03-02 03:02:45'),
(197, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:02:45', '2017-03-02 03:02:45'),
(198, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:02:54', '2017-03-02 03:02:54'),
(199, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:02:55', '2017-03-02 03:02:55'),
(200, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:02:55', '2017-03-02 03:02:55'),
(201, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:02:56', '2017-03-02 03:02:56'),
(202, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:02:56', '2017-03-02 03:02:56'),
(203, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:02:57', '2017-03-02 03:02:57'),
(204, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:02:57', '2017-03-02 03:02:57'),
(205, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:02:58', '2017-03-02 03:02:58'),
(206, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:02:58', '2017-03-02 03:02:58'),
(207, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:02:59', '2017-03-02 03:02:59'),
(208, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:02:59', '2017-03-02 03:02:59'),
(209, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:00', '2017-03-02 03:03:00'),
(210, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:00', '2017-03-02 03:03:00'),
(211, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:01', '2017-03-02 03:03:01'),
(212, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:01', '2017-03-02 03:03:01'),
(213, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:02', '2017-03-02 03:03:02'),
(214, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:02', '2017-03-02 03:03:02'),
(215, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:03', '2017-03-02 03:03:03'),
(216, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:03', '2017-03-02 03:03:03'),
(217, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:04', '2017-03-02 03:03:04'),
(218, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:04', '2017-03-02 03:03:04'),
(219, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:05', '2017-03-02 03:03:05'),
(220, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:05', '2017-03-02 03:03:05'),
(221, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:06', '2017-03-02 03:03:06'),
(222, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:06', '2017-03-02 03:03:06'),
(223, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:07', '2017-03-02 03:03:07'),
(224, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:07', '2017-03-02 03:03:07'),
(225, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:07', '2017-03-02 03:03:07'),
(226, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:08', '2017-03-02 03:03:08'),
(227, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:08', '2017-03-02 03:03:08'),
(228, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:09', '2017-03-02 03:03:09'),
(229, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:09', '2017-03-02 03:03:09'),
(230, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:10', '2017-03-02 03:03:10'),
(231, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:10', '2017-03-02 03:03:10'),
(232, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:11', '2017-03-02 03:03:11'),
(233, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:11', '2017-03-02 03:03:11'),
(234, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:11', '2017-03-02 03:03:11'),
(235, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:12', '2017-03-02 03:03:12'),
(236, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:12', '2017-03-02 03:03:12'),
(237, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:13', '2017-03-02 03:03:13'),
(238, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:13', '2017-03-02 03:03:13'),
(239, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:14', '2017-03-02 03:03:14'),
(240, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:14', '2017-03-02 03:03:14'),
(241, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:15', '2017-03-02 03:03:15'),
(242, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:15', '2017-03-02 03:03:15'),
(243, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:16', '2017-03-02 03:03:16'),
(244, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:16', '2017-03-02 03:03:16'),
(245, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:17', '2017-03-02 03:03:17'),
(246, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:17', '2017-03-02 03:03:17'),
(247, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:18', '2017-03-02 03:03:18'),
(248, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:18', '2017-03-02 03:03:18'),
(249, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:19', '2017-03-02 03:03:19'),
(250, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:19', '2017-03-02 03:03:19'),
(251, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:20', '2017-03-02 03:03:20'),
(252, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:20', '2017-03-02 03:03:20'),
(253, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:21', '2017-03-02 03:03:21'),
(254, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:21', '2017-03-02 03:03:21'),
(255, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:22', '2017-03-02 03:03:22'),
(256, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:03:22', '2017-03-02 03:03:22'),
(257, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:06:30', '2017-03-02 03:06:30'),
(258, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:07:16', '2017-03-02 03:07:16'),
(259, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:08:31', '2017-03-02 03:08:31'),
(260, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:08:32', '2017-03-02 03:08:32'),
(261, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:08:33', '2017-03-02 03:08:33'),
(262, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:08:33', '2017-03-02 03:08:33'),
(263, '', 'Isuzu', '', 'ND302841', 2, 2, '0', '', 'Unknown', '', '2017-03-02 03:08:33', '2017-03-02 03:08:33'),
(264, '', 'NISSAN UD', '', 'ND71253', 2, 2, '0', '', 'Unknown', '', '2017-03-02 05:26:32', '2017-03-02 05:26:32'),
(265, '', 'NISSAN UD', '', 'ND71253', 2, 2, '0', '', 'Unknown', '', '2017-03-02 05:26:33', '2017-03-02 05:26:33'),
(266, '', 'NISSAN UD', '', 'ND71253', 2, 2, '0', '', 'Unknown', '', '2017-03-02 05:26:33', '2017-03-02 05:26:33'),
(267, '', 'NISSAN UD', '', 'ND71253', 2, 2, '0', '', 'Unknown', '', '2017-03-02 05:26:33', '2017-03-02 05:26:33'),
(268, 'ANDER / OTHER', 'MERCEDES-BENZ', 'White / Wit', 'DY13PJGP', 3, 3, 'Feb 25 2017  1:29PM', '', 'Unknown', '', '2017-03-02 06:12:54', '2017-03-02 06:12:54'),
(269, 'CM SERIES', 'NISSAN', 'Red / Rooi', 'ND180376', 3, 4, 'Feb 25 2017 12:18PM', '', 'Unknown', '', '2017-03-02 06:12:55', '2017-03-02 06:12:55'),
(270, 'F2000', 'MAN', 'White / Wit', 'ND728091', 3, 3, 'Feb 25 2017  1:47PM', '', 'Unknown', '', '2017-03-02 06:12:55', '2017-03-02 06:12:55'),
(271, 'P9156', 'UD TRUCKS', 'White / Wit', 'HGG392MP', 3, 3, 'Feb 26 2017  8:13PM', '', 'Unknown', '', '2017-03-02 06:12:56', '2017-03-02 06:12:56'),
(272, 'POWERLINER', 'MERCEDES-BENZ', 'White / Wit', 'HHB806MP', 3, 3, 'Feb 26 2017  9:47PM', '', 'Unknown', '', '2017-03-02 06:12:56', '2017-03-02 06:12:56'),
(273, 'P9156', 'UD TRUCKS', 'White / Wit', 'ND725923', 3, 3, 'Feb 26 2017  9:56PM', '', 'Unknown', '', '2017-03-02 06:12:57', '2017-03-02 06:12:57'),
(274, 'OH1725/59', 'MERCEDES-BENZ', 'White / Wit', 'ND428224', 3, 3, 'Feb 27 2017  9:46AM', '', 'Unknown', '', '2017-03-02 06:12:57', '2017-03-02 06:12:57'),
(275, 'ANDER / OTHER', 'MERCEDES-BENZ', 'White / Wit', 'HXV414MP', 3, 3, 'Feb 27 2017  2:11AM', '', 'Unknown', '', '2017-03-02 06:12:57', '2017-03-02 06:12:57'),
(276, 'CA SERIES', 'FAW', 'White / Wit', 'CM66HYGP', 3, 3, 'Feb 27 2017  3:36AM', '', 'Unknown', '', '2017-03-02 06:12:58', '2017-03-02 06:12:58'),
(277, 'FM12', 'VOLVO', 'White / Wit', 'RHL402GP', 3, 3, 'Feb 25 2017  1:37PM', '', 'Unknown', '', '2017-03-02 06:12:58', '2017-03-02 06:12:58'),
(278, 'FM12', 'VOLVO', 'White / Wit', 'RHL402GP', 3, 3, 'Feb 25 2017  8:57PM', '', 'Unknown', '', '2017-03-02 06:12:59', '2017-03-02 06:12:59'),
(279, 'FM12', 'VOLVO', 'White / Wit', 'RHL402GP', 3, 3, 'Feb 27 2017  3:29AM', '', 'Unknown', '', '2017-03-02 06:12:59', '2017-03-02 06:12:59'),
(280, 'ANDER / OTHER', 'MAN', 'White / Wit', 'FVV953MP', 3, 3, 'Feb 27 2017  8:55AM', '', 'Unknown', '', '2017-03-02 06:13:00', '2017-03-02 06:13:00'),
(281, 'Ranger', 'Ford', '', 'ND34140', 2, 2, '0', '', 'Unknown', '', '2017-03-02 12:09:04', '2017-03-02 12:09:04'),
(282, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  8:52AM', '', 'Unknown', '', '2017-03-02 12:11:06', '2017-03-02 12:11:06'),
(283, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017 10:32AM', '', 'Unknown', '', '2017-03-02 12:11:07', '2017-03-02 12:11:07'),
(284, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 16 2017  9:35PM', '', 'Unknown', '', '2017-03-02 12:11:07', '2017-03-02 12:11:07'),
(285, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 17 2017  2:11AM', '', 'Unknown', '', '2017-03-02 12:11:08', '2017-03-02 12:11:08'),
(286, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 17 2017  2:12AM', '', 'Unknown', '', '2017-03-02 12:11:08', '2017-03-02 12:11:08'),
(287, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 17 2017  2:12AM', '', 'Unknown', '', '2017-03-02 12:11:08', '2017-03-02 12:11:08'),
(288, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 17 2017  2:13AM', '', 'Unknown', '', '2017-03-02 12:11:09', '2017-03-02 12:11:09'),
(289, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 17 2017  2:39AM', '', 'Unknown', '', '2017-03-02 12:11:09', '2017-03-02 12:11:09'),
(290, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 17 2017  2:40AM', '', 'Unknown', '', '2017-03-02 12:11:10', '2017-03-02 12:11:10'),
(291, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 17 2017  2:41AM', '', 'Unknown', '', '2017-03-02 12:11:10', '2017-03-02 12:11:10'),
(292, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 17 2017  2:42AM', '', 'Unknown', '', '2017-03-02 12:11:11', '2017-03-02 12:11:11'),
(293, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 17 2017  3:12AM', '', 'Unknown', '', '2017-03-02 12:11:11', '2017-03-02 12:11:11'),
(294, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 17 2017  2:45PM', '', 'Unknown', '', '2017-03-02 12:11:12', '2017-03-02 12:11:12'),
(295, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 17 2017  3:37PM', '', 'Unknown', '', '2017-03-02 12:11:12', '2017-03-02 12:11:12'),
(296, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 18 2017  2:30AM', '', 'Unknown', '', '2017-03-02 12:11:13', '2017-03-02 12:11:13'),
(297, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 18 2017  3:53AM', '', 'Unknown', '', '2017-03-02 12:11:13', '2017-03-02 12:11:13'),
(298, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 18 2017  7:05AM', '', 'Unknown', '', '2017-03-02 12:11:13', '2017-03-02 12:11:13'),
(299, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 18 2017  9:25AM', '', 'Unknown', '', '2017-03-02 12:11:14', '2017-03-02 12:11:14'),
(300, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 18 2017  2:26AM', '', 'Unknown', '', '2017-03-02 12:11:15', '2017-03-02 12:11:15'),
(301, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 19 2017  2:00AM', '', 'Unknown', '', '2017-03-02 12:11:15', '2017-03-02 12:11:15'),
(302, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 19 2017  2:22AM', '', 'Unknown', '', '2017-03-02 12:11:15', '2017-03-02 12:11:15'),
(303, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 19 2017  3:51AM', '', 'Unknown', '', '2017-03-02 12:11:16', '2017-03-02 12:11:16'),
(304, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 19 2017  4:45AM', '', 'Unknown', '', '2017-03-02 12:11:16', '2017-03-02 12:11:16'),
(305, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 19 2017  8:48AM', '', 'Unknown', '', '2017-03-02 12:11:17', '2017-03-02 12:11:17'),
(306, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 24 2017  3:31PM', '', 'Unknown', '', '2017-03-02 12:11:17', '2017-03-02 12:11:17'),
(307, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 25 2017  2:25AM', '', 'Unknown', '', '2017-03-02 12:11:18', '2017-03-02 12:11:18'),
(308, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 25 2017 11:47AM', '', 'Unknown', '', '2017-03-02 12:11:18', '2017-03-02 12:11:18'),
(309, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 17 2017  2:08AM', '', 'Unknown', '', '2017-03-02 12:13:20', '2017-03-02 12:13:20'),
(310, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 17 2017  2:43AM', '', 'Unknown', '', '2017-03-02 12:13:20', '2017-03-02 12:13:20'),
(311, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 17 2017  3:15AM', '', 'Unknown', '', '2017-03-02 12:13:21', '2017-03-02 12:13:21'),
(312, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 17 2017  3:51AM', '', 'Unknown', '', '2017-03-02 12:13:21', '2017-03-02 12:13:21'),
(313, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 17 2017  3:40PM', '', 'Unknown', '', '2017-03-02 12:13:22', '2017-03-02 12:13:22'),
(314, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 17 2017  6:13PM', '', 'Unknown', '', '2017-03-02 12:13:22', '2017-03-02 12:13:22'),
(315, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 17 2017  6:54PM', '', 'Unknown', '', '2017-03-02 12:13:23', '2017-03-02 12:13:23'),
(316, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 17 2017 11:26PM', '', 'Unknown', '', '2017-03-02 12:13:23', '2017-03-02 12:13:23'),
(317, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 18 2017  2:06AM', '', 'Unknown', '', '2017-03-02 12:13:24', '2017-03-02 12:13:24'),
(318, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 18 2017  3:36AM', '', 'Unknown', '', '2017-03-02 12:13:24', '2017-03-02 12:13:24'),
(319, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 18 2017  8:06PM', '', 'Unknown', '', '2017-03-02 12:13:24', '2017-03-02 12:13:24'),
(320, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 18 2017 10:03PM', '', 'Unknown', '', '2017-03-02 12:13:25', '2017-03-02 12:13:25'),
(321, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 18 2017 10:35PM', '', 'Unknown', '', '2017-03-02 12:13:25', '2017-03-02 12:13:25'),
(322, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 25 2017  9:03PM', '', 'Unknown', '', '2017-03-02 12:13:26', '2017-03-02 12:13:26'),
(323, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 26 2017 11:18AM', '', 'Unknown', '', '2017-03-02 12:13:26', '2017-03-02 12:13:26'),
(324, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 26 2017  1:59PM', '', 'Unknown', '', '2017-03-02 12:13:27', '2017-03-02 12:13:27'),
(325, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 26 2017  4:05PM', '', 'Unknown', '', '2017-03-02 12:13:27', '2017-03-02 12:13:27'),
(326, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 26 2017  5:07PM', '', 'Unknown', '', '2017-03-02 12:13:28', '2017-03-02 12:13:28'),
(327, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 27 2017 12:25PM', '', 'Unknown', '', '2017-03-02 12:13:29', '2017-03-02 12:13:29'),
(328, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 27 2017  2:53PM', '', 'Unknown', '', '2017-03-02 12:13:29', '2017-03-02 12:13:29'),
(329, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 27 2017  7:17PM', '', 'Unknown', '', '2017-03-02 12:13:29', '2017-03-02 12:13:29'),
(330, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 18 2017  3:53AM', '', 'Unknown', '', '2017-03-02 12:18:35', '2017-03-02 12:18:35'),
(331, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 18 2017  7:05AM', '', 'Unknown', '', '2017-03-02 12:18:36', '2017-03-02 12:18:36'),
(332, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 18 2017  9:25AM', '', 'Unknown', '', '2017-03-02 12:18:53', '2017-03-02 12:18:53'),
(333, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 18 2017  6:23PM', '', 'Unknown', '', '2017-03-02 12:18:53', '2017-03-02 12:18:53'),
(334, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 19 2017  2:00AM', '', 'Unknown', '', '2017-03-02 12:19:55', '2017-03-02 12:19:55'),
(335, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 19 2017  2:22AM', '', 'Unknown', '', '2017-03-02 12:19:55', '2017-03-02 12:19:55'),
(336, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 19 2017  3:51AM', '', 'Unknown', '', '2017-03-02 12:19:55', '2017-03-02 12:19:55'),
(337, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 19 2017  4:45AM', '', 'Unknown', '', '2017-03-02 12:19:56', '2017-03-02 12:19:56'),
(338, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 19 2017  8:48AM', '', 'Unknown', '', '2017-03-02 12:19:56', '2017-03-02 12:19:56'),
(339, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 24 2017  3:31PM', '', 'Unknown', '', '2017-03-02 12:19:57', '2017-03-02 12:19:57'),
(340, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 25 2017  2:25AM', '', 'Unknown', '', '2017-03-02 12:19:57', '2017-03-02 12:19:57'),
(341, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 25 2017 11:47AM', '', 'Unknown', '', '2017-03-02 12:19:58', '2017-03-02 12:19:58'),
(342, 'MP200', 'Nissan', '', 'ND19564', 2, 2, '0', '', 'Unknown', '', '2017-03-02 12:36:13', '2017-03-02 12:36:13'),
(343, 'MP200', 'Nissan', '', 'ND19564', 2, 2, '0', '', 'Unknown', '', '2017-03-02 12:36:13', '2017-03-02 12:36:13'),
(344, 'MP200', 'Nissan', '', 'ND19564', 2, 2, '0', '', 'Unknown', '', '2017-03-02 12:36:14', '2017-03-02 12:36:14'),
(345, 'MP200', 'Nissan', '', 'ND19564', 2, 2, '0', '', 'Unknown', '', '2017-03-02 12:36:14', '2017-03-02 12:36:14'),
(346, 'MP200', 'Nissan', '', 'ND19564', 2, 2, '0', '', 'Unknown', '', '2017-03-02 12:36:15', '2017-03-02 12:36:15'),
(347, 'MP200', 'Nissan', '', 'ND19564', 2, 2, '0', '', 'Unknown', '', '2017-03-02 12:36:15', '2017-03-02 12:36:15'),
(348, 'MP200', 'Nissan', '', 'ND19564', 2, 2, '0', '', 'Unknown', '', '2017-03-02 12:36:16', '2017-03-02 12:36:16'),
(349, 'MP200', 'Nissan', '', 'ND19564', 2, 2, '0', '', 'Unknown', '', '2017-03-02 12:36:22', '2017-03-02 12:36:22'),
(350, 'MP200', 'Nissan', '', 'ND19564', 2, 2, '0', '', 'Unknown', '', '2017-03-02 12:36:22', '2017-03-02 12:36:22'),
(351, 'MP200', 'Nissan', '', 'ND19564', 2, 2, '0', '', 'Unknown', '', '2017-03-02 12:36:23', '2017-03-02 12:36:23'),
(352, 'MP200', 'Nissan', '', 'ND19564', 2, 2, '0', '', 'Unknown', '', '2017-03-02 12:36:23', '2017-03-02 12:36:23'),
(353, 'ECONOLINER', 'MERCEDES-BENZ', 'White / Wit', 'ND3586', 3, 3, 'Feb 25 2017  1:06PM', '', 'Unknown', '', '2017-03-02 15:09:24', '2017-03-02 15:09:24'),
(354, 'ECONOLINER', 'MERCEDES-BENZ', 'White / Wit', 'ND3586', 3, 3, 'Feb 25 2017  1:06PM', '', 'Unknown', '', '2017-03-02 15:09:32', '2017-03-02 15:09:32'),
(355, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Mar  2 2017  6:20PM', '', 'Unknown', '', '2017-03-02 20:02:57', '2017-03-02 20:02:57'),
(356, 'KERAX 400', 'RENAULT', 'White / Wit', 'HSF510MP', 3, 3, 'Mar  2 2017  2:33PM', '', 'Unknown', '', '2017-03-02 20:02:59', '2017-03-02 20:02:59'),
(357, 'NG-SERIES', 'MERCEDES-BENZ', 'White / Wit', 'ND16665', 3, 3, 'Mar  2 2017  2:26PM', '', 'Unknown', '', '2017-03-02 20:02:59', '2017-03-02 20:02:59'),
(358, 'ANDER / OTHER', 'MAN', 'White / Wit', 'FVV953MP', 3, 3, 'Mar  2 2017  2:29PM', '', 'Unknown', '', '2017-03-02 20:02:59', '2017-03-02 20:02:59'),
(359, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017 10:12AM', '', 'Unknown', '', '2017-03-02 20:17:50', '2017-03-02 20:17:50'),
(360, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 20:17:50', '2017-03-02 20:17:50'),
(361, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 20:17:51', '2017-03-02 20:17:51'),
(362, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 20:20:21', '2017-03-02 20:20:21'),
(363, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 20:24:05', '2017-03-02 20:24:05'),
(364, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 20:26:35', '2017-03-02 20:26:35'),
(365, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 21:05:19', '2017-03-02 21:05:19'),
(366, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 21:09:03', '2017-03-02 21:09:03'),
(367, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 21:10:19', '2017-03-02 21:10:19'),
(368, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 21:10:31', '2017-03-02 21:10:31'),
(369, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 21:15:30', '2017-03-02 21:15:30'),
(370, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 21:16:46', '2017-03-02 21:16:46'),
(371, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 21:16:47', '2017-03-02 21:16:47'),
(372, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 21:19:17', '2017-03-02 21:19:17'),
(373, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 21:19:17', '2017-03-02 21:19:17'),
(374, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 21:20:32', '2017-03-02 21:20:32'),
(375, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 21:21:47', '2017-03-02 21:21:47'),
(376, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 21:23:02', '2017-03-02 21:23:02'),
(377, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 21:24:17', '2017-03-02 21:24:17'),
(378, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 21:25:32', '2017-03-02 21:25:32'),
(379, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 21:26:48', '2017-03-02 21:26:48'),
(380, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 21:28:03', '2017-03-02 21:28:03'),
(381, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 21:54:10', '2017-03-02 21:54:10'),
(382, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 21:55:24', '2017-03-02 21:55:24'),
(383, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 21:56:39', '2017-03-02 21:56:39'),
(384, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 21:57:55', '2017-03-02 21:57:55'),
(385, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 21:59:10', '2017-03-02 21:59:10'),
(386, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 22:00:25', '2017-03-02 22:00:25'),
(387, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 22:00:26', '2017-03-02 22:00:26'),
(388, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 22:01:41', '2017-03-02 22:01:41'),
(389, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 22:02:57', '2017-03-02 22:02:57'),
(390, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 22:04:13', '2017-03-02 22:04:13'),
(391, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 22:05:30', '2017-03-02 22:05:30'),
(392, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 22:06:46', '2017-03-02 22:06:46'),
(393, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 22:06:46', '2017-03-02 22:06:46'),
(394, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 22:08:01', '2017-03-02 22:08:01'),
(395, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 22:09:16', '2017-03-02 22:09:16'),
(396, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 22:10:32', '2017-03-02 22:10:32'),
(397, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 22:11:48', '2017-03-02 22:11:48'),
(398, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 22:13:20', '2017-03-02 22:13:20'),
(399, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 22:13:20', '2017-03-02 22:13:20'),
(400, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 22:14:35', '2017-03-02 22:14:35'),
(401, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 22:15:51', '2017-03-02 22:15:51'),
(402, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 22:17:22', '2017-03-02 22:17:22'),
(403, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 22:18:37', '2017-03-02 22:18:37'),
(404, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 22:19:53', '2017-03-02 22:19:53'),
(405, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 22:19:53', '2017-03-02 22:19:53'),
(406, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 22:21:09', '2017-03-02 22:21:09'),
(407, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 22:22:24', '2017-03-02 22:22:24'),
(408, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 22:23:40', '2017-03-02 22:23:40'),
(409, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 22:24:56', '2017-03-02 22:24:56'),
(410, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 22:26:10', '2017-03-02 22:26:10'),
(411, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 22:27:26', '2017-03-02 22:27:26'),
(412, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 22:27:27', '2017-03-02 22:27:27'),
(413, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 22:28:42', '2017-03-02 22:28:42'),
(414, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 22:29:56', '2017-03-02 22:29:56'),
(415, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 22:31:11', '2017-03-02 22:31:11'),
(416, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 22:32:27', '2017-03-02 22:32:27'),
(417, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 22:33:43', '2017-03-02 22:33:43'),
(418, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 22:33:44', '2017-03-02 22:33:44'),
(419, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 22:34:59', '2017-03-02 22:34:59'),
(420, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 22:36:14', '2017-03-02 22:36:14'),
(421, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 22:37:28', '2017-03-02 22:37:28'),
(422, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 22:38:44', '2017-03-02 22:38:44');
INSERT INTO `driver_vehicles` (`id`, `Model`, `Make`, `Color`, `VehicleRegNo`, `driver_id`, `company_id`, `timeIn`, `returned`, `purpose`, `gate`, `created_at`, `updated_at`) VALUES
(423, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 22:39:59', '2017-03-02 22:39:59'),
(424, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 22:41:14', '2017-03-02 22:41:14'),
(425, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 22:41:14', '2017-03-02 22:41:14'),
(426, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 22:42:29', '2017-03-02 22:42:29'),
(427, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 22:43:45', '2017-03-02 22:43:45'),
(428, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 22:45:00', '2017-03-02 22:45:00'),
(429, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 22:46:15', '2017-03-02 22:46:15'),
(430, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 22:47:30', '2017-03-02 22:47:30'),
(431, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 22:48:47', '2017-03-02 22:48:47'),
(432, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 22:48:47', '2017-03-02 22:48:47'),
(433, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 22:50:03', '2017-03-02 22:50:03'),
(434, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 22:51:18', '2017-03-02 22:51:18'),
(435, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 22:52:33', '2017-03-02 22:52:33'),
(436, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:05AM', '', 'Unknown', '', '2017-03-02 22:53:50', '2017-03-02 22:53:50'),
(437, 'Ranger', 'Ford', '', 'ND34140', 3, 3, 'Feb 10 2017  9:07AM', '', 'Unknown', '', '2017-03-02 22:53:50', '2017-03-02 22:53:50'),
(438, 'Toyota', '2015', 'Red', 'ZHN841', 1, 1, '30', '', 'Drop-off', '', '2017-03-03 06:47:37', '2017-03-03 06:47:37'),
(439, '', 'NISSAN UD', '', 'FYK870MP', 2, 2, '0', '', 'Unknown', '', '2017-03-03 09:10:01', '2017-03-03 09:10:01'),
(440, 'NG-SERIES', 'MERCEDES-BENZ', 'White / Wit', 'ND16665', 2, 2, '0', '', 'Unknown', '', '2017-03-03 09:12:36', '2017-03-03 09:12:36'),
(441, 'ACTROS', 'MERCEDES-BENZ', 'White / Wit', 'FLK424FS', 2, 2, '2017-03-02 02:14:20 PM', '', 'Drop-off', '', '2017-03-03 09:13:55', '2017-03-03 09:13:55'),
(442, 'ANDER / OTHER', 'MERCEDES-BENZ', 'White / Wit', 'ND798667', 2, 2, '2017-03-02 02:22:24 PM', '', 'Drop-off', '', '2017-03-03 09:13:55', '2017-03-03 09:13:55'),
(443, 'ANDER / OTHER', 'MERCEDES-BENZ', 'White / Wit', 'ND798667', 2, 2, '2017-03-02 02:22:24 PM', '', 'Drop-off', '', '2017-03-03 09:13:56', '2017-03-03 09:13:56'),
(444, 'ANDER / OTHER', 'MERCEDES-BENZ', 'White / Wit', 'ND798667', 2, 2, '2017-03-02 02:22:24 PM', '', 'Drop-off', '', '2017-03-03 09:13:56', '2017-03-03 09:13:56'),
(445, 'ANDER / OTHER', 'MERCEDES-BENZ', 'White / Wit', 'ND798667', 2, 2, '2017-03-02 02:22:24 PM', '', 'Drop-off', '', '2017-03-03 09:13:57', '2017-03-03 09:13:57'),
(446, 'ANDER / OTHER', 'MERCEDES-BENZ', 'White / Wit', 'ND798667', 2, 2, '2017-03-02 02:22:24 PM', '', 'Drop-off', '', '2017-03-03 09:13:57', '2017-03-03 09:13:57'),
(447, 'ANDER / OTHER', 'MERCEDES-BENZ', 'White / Wit', 'ND798667', 2, 2, '2017-03-02 02:22:24 PM', '', 'Drop-off', '', '2017-03-03 09:13:58', '2017-03-03 09:13:58'),
(448, 'ACTROS MP2', 'MERCEDES-BENZ', 'White / Wit', 'HAHAA4ZN', 2, 2, '2017-03-02 02:56:12 PM', '', 'Pickup', '', '2017-03-03 09:15:14', '2017-03-03 09:15:14'),
(449, 'ACTROS MP2', 'MERCEDES-BENZ', 'White / Wit', 'HAHAA4ZN', 2, 2, '2017-03-02 02:56:12 PM', '', 'Pickup', '', '2017-03-03 09:15:15', '2017-03-03 09:15:15'),
(450, 'ANDER / OTHER', 'MERCEDES-BENZ', 'Cream / Room', 'ND705150', 2, 2, '2017-03-02 03:36:27 PM', '', 'Drop-off', '', '2017-03-03 09:15:15', '2017-03-03 09:15:15'),
(451, 'ANDER / OTHER', 'MERCEDES-BENZ', 'Cream / Room', 'ND705150', 2, 2, '2017-03-02 03:36:27 PM', '', 'Drop-off', '', '2017-03-03 09:15:16', '2017-03-03 09:15:16'),
(452, 'ANDER / OTHER', 'MERCEDES-BENZ', 'Cream / Room', 'ND705150', 2, 2, '2017-03-02 03:36:27 PM', '', 'Drop-off', '', '2017-03-03 09:15:16', '2017-03-03 09:15:16'),
(453, 'ANDER / OTHER', 'MERCEDES-BENZ', 'Cream / Room', 'ND705150', 2, 2, '2017-03-02 03:36:27 PM', '', 'Drop-off', '', '2017-03-03 09:15:44', '2017-03-03 09:15:44'),
(454, 'ANDER / OTHER', 'MERCEDES-BENZ', 'Cream / Room', 'ND705150', 2, 2, '2017-03-02 03:36:27 PM', '', 'Drop-off', '', '2017-03-03 09:15:45', '2017-03-03 09:15:45'),
(455, 'ANDER / OTHER', 'MERCEDES-BENZ', 'Cream / Room', 'ND705150', 2, 2, '2017-03-02 03:36:27 PM', '', 'Drop-off', '', '2017-03-03 09:15:45', '2017-03-03 09:15:45'),
(456, 'Toyota', '2015', 'Red', 'ZHN841', 1, 1, '30', '', 'Drop-off', '', '2017-03-12 07:26:09', '2017-03-12 07:26:09'),
(457, 'Toyota', '2015', 'Red', 'ZHN841', 1, 1, '30', '', 'Drop-off', '', '2017-03-26 18:20:16', '2017-03-26 18:20:16'),
(458, 'Toyota', '2015', 'Red', 'ZHN841', 1, 1, '30', '', 'Drop-off', '', '2017-03-26 18:20:40', '2017-03-26 18:20:40'),
(459, 'Toyota', '2015', 'Red', 'ZHN841', 1, 1, '30', '', 'Drop-off', '', '2017-03-26 18:21:57', '2017-03-26 18:21:57'),
(460, 'Toyota', '2015', 'Red', 'ZHN841', 1, 5, '30', '', 'Drop-off', '', '2017-03-26 18:31:09', '2017-03-26 18:31:09'),
(461, 'Toyota', '2015', 'Red', 'ZHN841', 1, 5, '30', '', 'Drop-off', '', '2017-03-27 01:52:34', '2017-03-27 01:52:34');

-- --------------------------------------------------------

--
-- Table structure for table `emergency_contacts`
--

CREATE TABLE `emergency_contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `contact` int(10) NOT NULL,
  `emergency_type_id` int(11) NOT NULL,
  `emergency_location_id` int(11) NOT NULL,
  `emergency_types_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `emergency_location_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emergency_locations`
--

CREATE TABLE `emergency_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Location_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `emergency_types_id` int(11) NOT NULL,
  `emergency_types_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emergency_types`
--

CREATE TABLE `emergency_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `emergency_types` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emergency_contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_permissions`
--

CREATE TABLE `group_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `group_permissions`
--

INSERT INTO `group_permissions` (`id`, `permission_id`, `group_id`, `created_by`, `updated_by`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 1, 1, 1, 0, 1, NULL, '2016-06-16 22:33:14', '2016-06-16 22:33:14'),
(9, 13, 1, 1, 0, 1, NULL, '2016-06-16 22:40:39', '2016-06-16 22:40:39'),
(10, 9, 1, 1, 0, 1, NULL, '2016-06-16 22:40:45', '2016-06-16 22:40:45'),
(18, 15, 1, 1, 0, 1, NULL, '2016-06-16 22:40:39', '2016-06-16 22:40:39'),
(19, 14, 1, 1, 0, 1, NULL, '2016-06-16 22:40:39', '2016-06-16 22:40:39'),
(20, 2, 1, 1, 0, 1, NULL, '2016-06-16 22:33:14', '2016-06-16 22:33:14'),
(21, 3, 1, 1, 0, 1, NULL, '2016-06-16 22:33:14', '2016-06-16 22:33:14'),
(22, 4, 1, 1, 0, 1, NULL, '2016-06-16 22:33:14', '2016-06-16 22:33:14'),
(23, 5, 1, 1, 0, 1, NULL, '2016-06-16 22:33:14', '2016-06-16 22:33:14'),
(24, 6, 1, 1, 0, 1, NULL, '2016-06-16 22:33:14', '2016-06-16 22:33:14'),
(25, 7, 1, 1, 0, 1, NULL, '2016-06-16 22:33:14', '2016-06-16 22:33:14'),
(26, 8, 1, 1, 0, 1, NULL, '2016-06-16 22:33:14', '2016-06-16 22:33:14'),
(27, 10, 1, 1, 0, 1, NULL, '2016-06-16 22:40:45', '2016-06-16 22:40:45'),
(28, 11, 1, 1, 0, 1, NULL, '2016-06-16 22:40:45', '2016-06-16 22:40:45'),
(29, 12, 1, 1, 0, 1, NULL, '2016-06-16 22:40:45', '2016-06-16 22:40:45'),
(30, 16, 1, 1, 0, 1, NULL, '2016-06-16 22:40:39', '2016-06-16 22:40:39'),
(31, 17, 1, 1, 0, 1, NULL, '2016-06-16 22:40:39', '2016-06-16 22:40:39'),
(32, 18, 1, 1, 0, 1, NULL, '2016-06-16 22:40:39', '2016-06-16 22:40:39'),
(33, 19, 1, 1, 0, 1, NULL, '2016-06-16 22:40:39', '2016-06-16 22:40:39'),
(34, 20, 1, 1, 0, 1, NULL, '2016-06-16 22:40:39', '2016-06-16 22:40:39'),
(35, 21, 1, 1, 0, 1, NULL, '2016-06-16 22:40:39', '2016-06-16 22:40:39'),
(36, 22, 1, 1, 0, 1, NULL, '2016-06-16 22:40:39', '2016-06-16 22:40:39'),
(37, 23, 1, 1, 0, 1, NULL, '2016-06-16 22:40:39', '2016-06-16 22:40:39'),
(38, 24, 1, 1, 0, 1, NULL, '2016-06-16 22:40:39', '2016-06-16 22:40:39'),
(39, 25, 1, 1, 0, 1, NULL, '2016-06-16 22:40:39', '2016-06-16 22:40:39'),
(40, 26, 1, 1, 0, 1, NULL, '2016-06-16 22:40:39', '2016-06-16 22:40:39'),
(41, 27, 1, 1, 0, 1, NULL, '2016-06-16 22:40:39', '2016-06-16 22:40:39'),
(42, 28, 1, 1, 0, 1, NULL, '2016-06-16 22:40:39', '2016-06-16 22:40:39'),
(43, 29, 1, 1, 0, 1, NULL, '2016-06-16 22:40:39', '2016-06-16 22:40:39'),
(44, 30, 1, 1, 0, 1, NULL, '2016-06-16 22:40:39', '2016-06-16 22:40:39'),
(45, 31, 1, 1, 0, 1, NULL, '2016-06-16 22:40:39', '2016-06-16 22:40:39'),
(46, 32, 1, 1, 0, 1, NULL, '2016-06-16 22:40:39', '2016-06-16 22:40:39'),
(47, 30, 2, 10, 0, 1, NULL, '2016-06-17 07:53:02', '2016-06-17 07:53:02'),
(48, 21, 2, 10, 0, 1, NULL, '2016-06-17 08:11:21', '2016-06-17 08:11:21'),
(49, 1, 4, 10, 0, 1, NULL, '2016-06-20 16:20:25', '2016-06-20 16:20:25'),
(50, 2, 4, 10, 0, 1, NULL, '2016-06-20 16:20:25', '2016-06-20 16:20:25'),
(51, 3, 4, 10, 0, 1, NULL, '2016-06-20 16:20:25', '2016-06-20 16:20:25'),
(52, 4, 4, 10, 0, 1, NULL, '2016-06-20 16:20:25', '2016-06-20 16:20:25'),
(55, 4, 4, 10, 0, 1, NULL, '2016-06-20 16:43:20', '2016-06-20 16:43:20'),
(56, 1, 2, 11, 0, 1, NULL, '2016-08-27 04:12:47', '2016-08-27 04:12:47'),
(57, 2, 2, 11, 0, 1, NULL, '2016-08-27 04:12:47', '2016-08-27 04:12:47'),
(58, 3, 2, 11, 0, 1, NULL, '2016-08-27 04:12:47', '2016-08-27 04:12:47'),
(59, 4, 2, 11, 0, 1, NULL, '2016-08-27 04:12:47', '2016-08-27 04:12:47'),
(60, 5, 2, 11, 0, 1, NULL, '2016-08-27 04:12:47', '2016-08-27 04:12:47'),
(61, 6, 2, 11, 0, 1, NULL, '2016-08-27 04:12:47', '2016-08-27 04:12:47'),
(62, 7, 2, 11, 0, 1, NULL, '2016-08-27 04:12:47', '2016-08-27 04:12:47'),
(63, 8, 2, 11, 0, 1, NULL, '2016-08-27 04:12:47', '2016-08-27 04:12:47'),
(64, 9, 2, 11, 0, 1, NULL, '2016-08-27 04:12:47', '2016-08-27 04:12:47'),
(65, 10, 2, 11, 0, 1, NULL, '2016-08-27 04:12:47', '2016-08-27 04:12:47'),
(66, 11, 2, 11, 0, 1, NULL, '2016-08-27 04:12:47', '2016-08-27 04:12:47'),
(67, 12, 2, 11, 0, 1, NULL, '2016-08-27 04:12:47', '2016-08-27 04:12:47'),
(68, 13, 2, 11, 0, 1, NULL, '2016-08-27 04:12:47', '2016-08-27 04:12:47'),
(69, 14, 2, 11, 0, 1, NULL, '2016-08-27 04:12:47', '2016-08-27 04:12:47'),
(70, 15, 2, 11, 0, 1, NULL, '2016-08-27 04:12:47', '2016-08-27 04:12:47'),
(71, 16, 2, 11, 0, 1, NULL, '2016-08-27 04:12:47', '2016-08-27 04:12:47'),
(72, 17, 2, 11, 0, 1, NULL, '2016-08-27 04:12:47', '2016-08-27 04:12:47'),
(73, 18, 2, 11, 0, 1, NULL, '2016-08-27 04:12:47', '2016-08-27 04:12:47'),
(74, 19, 2, 11, 0, 1, NULL, '2016-08-27 04:12:47', '2016-08-27 04:12:47'),
(75, 20, 2, 11, 0, 1, NULL, '2016-08-27 04:12:47', '2016-08-27 04:12:47'),
(76, 21, 2, 11, 0, 1, NULL, '2016-08-27 04:12:47', '2016-08-27 04:12:47'),
(77, 22, 2, 11, 0, 1, NULL, '2016-08-27 04:12:47', '2016-08-27 04:12:47'),
(78, 23, 2, 11, 0, 1, NULL, '2016-08-27 04:12:47', '2016-08-27 04:12:47'),
(79, 24, 2, 11, 0, 1, NULL, '2016-08-27 04:12:47', '2016-08-27 04:12:47'),
(80, 25, 2, 11, 0, 1, NULL, '2016-08-27 04:12:47', '2016-08-27 04:12:47'),
(81, 26, 2, 11, 0, 1, NULL, '2016-08-27 04:12:47', '2016-08-27 04:12:47'),
(82, 27, 2, 11, 0, 1, NULL, '2016-08-27 04:12:47', '2016-08-27 04:12:47'),
(83, 28, 2, 11, 0, 1, NULL, '2016-08-27 04:12:48', '2016-08-27 04:12:48'),
(84, 29, 2, 11, 0, 1, NULL, '2016-08-27 04:12:48', '2016-08-27 04:12:48'),
(85, 30, 2, 11, 0, 1, NULL, '2016-08-27 04:12:48', '2016-08-27 04:12:48'),
(86, 31, 2, 11, 0, 1, NULL, '2016-08-27 04:12:48', '2016-08-27 04:12:48'),
(87, 32, 2, 11, 0, 1, NULL, '2016-08-27 04:12:48', '2016-08-27 04:12:48'),
(88, 1, 6, 11, 0, 1, NULL, '2016-08-30 09:48:56', '2016-08-30 09:48:56'),
(89, 2, 6, 11, 0, 1, NULL, '2016-08-30 09:48:56', '2016-08-30 09:48:56'),
(90, 3, 6, 11, 0, 1, NULL, '2016-08-30 09:48:56', '2016-08-30 09:48:56'),
(91, 5, 6, 11, 0, 1, NULL, '2016-08-30 09:48:57', '2016-08-30 09:48:57'),
(92, 6, 6, 11, 0, 1, NULL, '2016-08-30 09:48:57', '2016-08-30 09:48:57'),
(93, 7, 6, 11, 0, 1, NULL, '2016-08-30 09:48:57', '2016-08-30 09:48:57'),
(94, 8, 6, 11, 0, 1, NULL, '2016-08-30 09:48:57', '2016-08-30 09:48:57'),
(95, 11, 6, 11, 0, 1, NULL, '2016-08-30 09:48:57', '2016-08-30 09:48:57'),
(96, 13, 6, 11, 0, 1, NULL, '2016-08-30 09:48:57', '2016-08-30 09:48:57'),
(97, 15, 6, 11, 0, 1, NULL, '2016-08-30 09:48:57', '2016-08-30 09:48:57'),
(98, 16, 6, 11, 0, 1, NULL, '2016-08-30 09:48:57', '2016-08-30 09:48:57'),
(99, 23, 6, 11, 0, 1, NULL, '2016-08-30 09:48:57', '2016-08-30 09:48:57'),
(100, 25, 6, 11, 0, 1, NULL, '2016-08-30 09:48:57', '2016-08-30 09:48:57'),
(101, 26, 6, 11, 0, 1, NULL, '2016-08-30 09:48:57', '2016-08-30 09:48:57'),
(102, 29, 6, 11, 0, 1, NULL, '2016-08-30 09:48:57', '2016-08-30 09:48:57'),
(103, 30, 6, 11, 0, 1, NULL, '2016-08-30 09:48:57', '2016-08-30 09:48:57'),
(104, 21, 5, 11, 0, 1, NULL, '2016-08-30 09:52:31', '2016-08-30 09:52:31'),
(105, 25, 5, 11, 0, 1, NULL, '2016-08-30 09:52:31', '2016-08-30 09:52:31'),
(106, 26, 5, 11, 0, 1, NULL, '2016-08-30 09:52:31', '2016-08-30 09:52:31'),
(107, 3, 3, 11, 0, 1, NULL, '2016-08-30 09:54:36', '2016-08-30 09:54:36'),
(108, 5, 3, 11, 0, 1, NULL, '2016-08-30 09:54:36', '2016-08-30 09:54:36'),
(109, 6, 3, 11, 0, 1, NULL, '2016-08-30 09:54:36', '2016-08-30 09:54:36'),
(110, 7, 3, 11, 0, 1, NULL, '2016-08-30 09:54:36', '2016-08-30 09:54:36'),
(111, 8, 3, 11, 0, 1, NULL, '2016-08-30 09:54:36', '2016-08-30 09:54:36'),
(112, 11, 3, 11, 0, 1, NULL, '2016-08-30 09:54:36', '2016-08-30 09:54:36'),
(113, 13, 3, 11, 0, 1, NULL, '2016-08-30 09:54:36', '2016-08-30 09:54:36'),
(114, 15, 3, 11, 0, 1, NULL, '2016-08-30 09:54:36', '2016-08-30 09:54:36'),
(115, 16, 3, 11, 0, 1, NULL, '2016-08-30 09:54:36', '2016-08-30 09:54:36'),
(116, 17, 3, 11, 0, 1, NULL, '2016-08-30 09:54:36', '2016-08-30 09:54:36'),
(117, 18, 3, 11, 0, 1, NULL, '2016-08-30 09:54:36', '2016-08-30 09:54:36'),
(118, 19, 3, 11, 0, 1, NULL, '2016-08-30 09:54:36', '2016-08-30 09:54:36'),
(119, 20, 3, 11, 0, 1, NULL, '2016-08-30 09:54:36', '2016-08-30 09:54:36'),
(120, 23, 3, 11, 0, 1, NULL, '2016-08-30 09:54:36', '2016-08-30 09:54:36'),
(121, 25, 3, 11, 0, 1, NULL, '2016-08-30 09:54:36', '2016-08-30 09:54:36'),
(122, 26, 3, 11, 0, 1, NULL, '2016-08-30 09:54:36', '2016-08-30 09:54:36'),
(123, 27, 3, 11, 0, 1, NULL, '2016-08-30 09:54:36', '2016-08-30 09:54:36'),
(124, 29, 3, 11, 0, 1, NULL, '2016-08-30 09:54:36', '2016-08-30 09:54:36'),
(125, 30, 3, 11, 0, 1, NULL, '2016-08-30 09:54:36', '2016-08-30 09:54:36'),
(126, 1, 2, 11, 0, 1, NULL, '2016-08-30 09:58:00', '2016-08-30 09:58:00'),
(127, 2, 2, 11, 0, 1, NULL, '2016-08-30 09:58:00', '2016-08-30 09:58:00'),
(128, 3, 2, 11, 0, 1, NULL, '2016-08-30 09:58:00', '2016-08-30 09:58:00'),
(129, 4, 2, 11, 0, 1, NULL, '2016-08-30 09:58:00', '2016-08-30 09:58:00'),
(130, 5, 2, 11, 0, 1, NULL, '2016-08-30 09:58:00', '2016-08-30 09:58:00'),
(131, 6, 2, 11, 0, 1, NULL, '2016-08-30 09:58:00', '2016-08-30 09:58:00'),
(132, 7, 2, 11, 0, 1, NULL, '2016-08-30 09:58:00', '2016-08-30 09:58:00'),
(133, 8, 2, 11, 0, 1, NULL, '2016-08-30 09:58:01', '2016-08-30 09:58:01'),
(134, 9, 2, 11, 0, 1, NULL, '2016-08-30 09:58:01', '2016-08-30 09:58:01'),
(135, 10, 2, 11, 0, 1, NULL, '2016-08-30 09:58:01', '2016-08-30 09:58:01'),
(136, 11, 2, 11, 0, 1, NULL, '2016-08-30 09:58:01', '2016-08-30 09:58:01'),
(137, 12, 2, 11, 0, 1, NULL, '2016-08-30 09:58:01', '2016-08-30 09:58:01'),
(138, 13, 2, 11, 0, 1, NULL, '2016-08-30 09:58:01', '2016-08-30 09:58:01'),
(139, 14, 2, 11, 0, 1, NULL, '2016-08-30 09:58:01', '2016-08-30 09:58:01'),
(140, 15, 2, 11, 0, 1, NULL, '2016-08-30 09:58:01', '2016-08-30 09:58:01'),
(141, 16, 2, 11, 0, 1, NULL, '2016-08-30 09:58:01', '2016-08-30 09:58:01'),
(142, 17, 2, 11, 0, 1, NULL, '2016-08-30 09:58:01', '2016-08-30 09:58:01'),
(143, 18, 2, 11, 0, 1, NULL, '2016-08-30 09:58:01', '2016-08-30 09:58:01'),
(144, 19, 2, 11, 0, 1, NULL, '2016-08-30 09:58:01', '2016-08-30 09:58:01'),
(145, 20, 2, 11, 0, 1, NULL, '2016-08-30 09:58:01', '2016-08-30 09:58:01'),
(146, 21, 2, 11, 0, 1, NULL, '2016-08-30 09:58:01', '2016-08-30 09:58:01'),
(147, 22, 2, 11, 0, 1, NULL, '2016-08-30 09:58:01', '2016-08-30 09:58:01'),
(148, 23, 2, 11, 0, 1, NULL, '2016-08-30 09:58:01', '2016-08-30 09:58:01'),
(149, 24, 2, 11, 0, 1, NULL, '2016-08-30 09:58:01', '2016-08-30 09:58:01'),
(150, 25, 2, 11, 0, 1, NULL, '2016-08-30 09:58:01', '2016-08-30 09:58:01'),
(151, 26, 2, 11, 0, 1, NULL, '2016-08-30 09:58:01', '2016-08-30 09:58:01'),
(152, 27, 2, 11, 0, 1, NULL, '2016-08-30 09:58:01', '2016-08-30 09:58:01'),
(153, 28, 2, 11, 0, 1, NULL, '2016-08-30 09:58:01', '2016-08-30 09:58:01'),
(154, 29, 2, 11, 0, 1, NULL, '2016-08-30 09:58:01', '2016-08-30 09:58:01'),
(155, 30, 2, 11, 0, 1, NULL, '2016-08-30 09:58:01', '2016-08-30 09:58:01'),
(156, 1, 1, 11, 0, 1, NULL, '2016-08-30 10:00:22', '2016-08-30 10:00:22'),
(157, 2, 1, 11, 0, 1, NULL, '2016-08-30 10:00:22', '2016-08-30 10:00:22'),
(158, 3, 1, 11, 0, 1, NULL, '2016-08-30 10:00:22', '2016-08-30 10:00:22'),
(159, 4, 1, 11, 0, 1, NULL, '2016-08-30 10:00:22', '2016-08-30 10:00:22'),
(160, 5, 1, 11, 0, 1, NULL, '2016-08-30 10:00:22', '2016-08-30 10:00:22'),
(161, 6, 1, 11, 0, 1, NULL, '2016-08-30 10:00:22', '2016-08-30 10:00:22'),
(162, 7, 1, 11, 0, 1, NULL, '2016-08-30 10:00:22', '2016-08-30 10:00:22'),
(163, 8, 1, 11, 0, 1, NULL, '2016-08-30 10:00:22', '2016-08-30 10:00:22'),
(164, 9, 1, 11, 0, 1, NULL, '2016-08-30 10:00:22', '2016-08-30 10:00:22'),
(165, 10, 1, 11, 0, 1, NULL, '2016-08-30 10:00:22', '2016-08-30 10:00:22'),
(166, 11, 1, 11, 0, 1, NULL, '2016-08-30 10:00:22', '2016-08-30 10:00:22'),
(167, 12, 1, 11, 0, 1, NULL, '2016-08-30 10:00:23', '2016-08-30 10:00:23'),
(168, 13, 1, 11, 0, 1, NULL, '2016-08-30 10:00:23', '2016-08-30 10:00:23'),
(169, 14, 1, 11, 0, 1, NULL, '2016-08-30 10:00:23', '2016-08-30 10:00:23'),
(170, 15, 1, 11, 0, 1, NULL, '2016-08-30 10:00:23', '2016-08-30 10:00:23'),
(171, 16, 1, 11, 0, 1, NULL, '2016-08-30 10:00:23', '2016-08-30 10:00:23'),
(172, 17, 1, 11, 0, 1, NULL, '2016-08-30 10:00:23', '2016-08-30 10:00:23'),
(173, 18, 1, 11, 0, 1, NULL, '2016-08-30 10:00:23', '2016-08-30 10:00:23'),
(174, 19, 1, 11, 0, 1, NULL, '2016-08-30 10:00:23', '2016-08-30 10:00:23'),
(175, 20, 1, 11, 0, 1, NULL, '2016-08-30 10:00:23', '2016-08-30 10:00:23'),
(176, 21, 1, 11, 0, 1, NULL, '2016-08-30 10:00:23', '2016-08-30 10:00:23'),
(177, 23, 1, 11, 0, 1, NULL, '2016-08-30 10:00:23', '2016-08-30 10:00:23'),
(178, 24, 1, 11, 0, 1, NULL, '2016-08-30 10:00:23', '2016-08-30 10:00:23'),
(179, 25, 1, 11, 0, 1, NULL, '2016-08-30 10:00:23', '2016-08-30 10:00:23'),
(180, 26, 1, 11, 0, 1, NULL, '2016-08-30 10:00:23', '2016-08-30 10:00:23'),
(181, 27, 1, 11, 0, 1, NULL, '2016-08-30 10:00:23', '2016-08-30 10:00:23'),
(182, 29, 1, 11, 0, 1, NULL, '2016-08-30 10:00:23', '2016-08-30 10:00:23'),
(183, 30, 1, 11, 0, 1, NULL, '2016-08-30 10:00:23', '2016-08-30 10:00:23'),
(184, 31, 1, 11, 0, 1, NULL, '2016-08-30 10:00:23', '2016-08-30 10:00:23'),
(185, 32, 1, 11, 0, 1, NULL, '2016-08-30 10:00:23', '2016-08-30 10:00:23'),
(186, 1, 1, 11, 0, 1, NULL, '2016-08-30 10:34:12', '2016-08-30 10:34:12'),
(187, 2, 1, 11, 0, 1, NULL, '2016-08-30 10:34:12', '2016-08-30 10:34:12'),
(188, 3, 1, 11, 0, 1, NULL, '2016-08-30 10:34:12', '2016-08-30 10:34:12'),
(189, 4, 1, 11, 0, 1, NULL, '2016-08-30 10:34:12', '2016-08-30 10:34:12'),
(190, 5, 1, 11, 0, 1, NULL, '2016-08-30 10:34:12', '2016-08-30 10:34:12'),
(191, 6, 1, 11, 0, 1, NULL, '2016-08-30 10:34:12', '2016-08-30 10:34:12'),
(192, 7, 1, 11, 0, 1, NULL, '2016-08-30 10:34:12', '2016-08-30 10:34:12'),
(193, 8, 1, 11, 0, 1, NULL, '2016-08-30 10:34:12', '2016-08-30 10:34:12'),
(194, 9, 1, 11, 0, 1, NULL, '2016-08-30 10:34:12', '2016-08-30 10:34:12'),
(195, 10, 1, 11, 0, 1, NULL, '2016-08-30 10:34:12', '2016-08-30 10:34:12'),
(196, 11, 1, 11, 0, 1, NULL, '2016-08-30 10:34:12', '2016-08-30 10:34:12'),
(197, 12, 1, 11, 0, 1, NULL, '2016-08-30 10:34:12', '2016-08-30 10:34:12'),
(198, 13, 1, 11, 0, 1, NULL, '2016-08-30 10:34:12', '2016-08-30 10:34:12'),
(199, 14, 1, 11, 0, 1, NULL, '2016-08-30 10:34:12', '2016-08-30 10:34:12'),
(200, 15, 1, 11, 0, 1, NULL, '2016-08-30 10:34:12', '2016-08-30 10:34:12'),
(201, 16, 1, 11, 0, 1, NULL, '2016-08-30 10:34:12', '2016-08-30 10:34:12'),
(202, 17, 1, 11, 0, 1, NULL, '2016-08-30 10:34:12', '2016-08-30 10:34:12'),
(203, 18, 1, 11, 0, 1, NULL, '2016-08-30 10:34:12', '2016-08-30 10:34:12'),
(204, 19, 1, 11, 0, 1, NULL, '2016-08-30 10:34:12', '2016-08-30 10:34:12'),
(205, 20, 1, 11, 0, 1, NULL, '2016-08-30 10:34:12', '2016-08-30 10:34:12'),
(206, 21, 1, 11, 0, 1, NULL, '2016-08-30 10:34:12', '2016-08-30 10:34:12'),
(207, 22, 1, 11, 0, 1, NULL, '2016-08-30 10:34:12', '2016-08-30 10:34:12'),
(208, 23, 1, 11, 0, 1, NULL, '2016-08-30 10:34:13', '2016-08-30 10:34:13'),
(209, 24, 1, 11, 0, 1, NULL, '2016-08-30 10:34:13', '2016-08-30 10:34:13'),
(210, 25, 1, 11, 0, 1, NULL, '2016-08-30 10:34:13', '2016-08-30 10:34:13'),
(211, 26, 1, 11, 0, 1, NULL, '2016-08-30 10:34:13', '2016-08-30 10:34:13'),
(212, 27, 1, 11, 0, 1, NULL, '2016-08-30 10:34:13', '2016-08-30 10:34:13'),
(213, 28, 1, 11, 0, 1, NULL, '2016-08-30 10:34:13', '2016-08-30 10:34:13'),
(214, 29, 1, 11, 0, 1, NULL, '2016-08-30 10:34:13', '2016-08-30 10:34:13'),
(215, 30, 1, 11, 0, 1, NULL, '2016-08-30 10:34:13', '2016-08-30 10:34:13'),
(216, 31, 1, 11, 0, 1, NULL, '2016-08-30 10:34:13', '2016-08-30 10:34:13'),
(217, 32, 1, 11, 0, 1, NULL, '2016-08-30 10:34:13', '2016-08-30 10:34:13'),
(218, 1, 1, 11, 0, 1, NULL, '2016-09-01 09:59:34', '2016-09-01 09:59:34'),
(219, 2, 1, 11, 0, 1, NULL, '2016-09-01 09:59:34', '2016-09-01 09:59:34'),
(220, 3, 1, 11, 0, 1, NULL, '2016-09-01 09:59:34', '2016-09-01 09:59:34'),
(221, 4, 1, 11, 0, 1, NULL, '2016-09-01 09:59:34', '2016-09-01 09:59:34'),
(222, 5, 1, 11, 0, 1, NULL, '2016-09-01 09:59:34', '2016-09-01 09:59:34'),
(223, 6, 1, 11, 0, 1, NULL, '2016-09-01 09:59:34', '2016-09-01 09:59:34'),
(224, 7, 1, 11, 0, 1, NULL, '2016-09-01 09:59:34', '2016-09-01 09:59:34'),
(225, 8, 1, 11, 0, 1, NULL, '2016-09-01 09:59:34', '2016-09-01 09:59:34'),
(226, 9, 1, 11, 0, 1, NULL, '2016-09-01 09:59:34', '2016-09-01 09:59:34'),
(227, 10, 1, 11, 0, 1, NULL, '2016-09-01 09:59:34', '2016-09-01 09:59:34'),
(228, 11, 1, 11, 0, 1, NULL, '2016-09-01 09:59:34', '2016-09-01 09:59:34'),
(229, 12, 1, 11, 0, 1, NULL, '2016-09-01 09:59:34', '2016-09-01 09:59:34'),
(230, 13, 1, 11, 0, 1, NULL, '2016-09-01 09:59:34', '2016-09-01 09:59:34'),
(231, 14, 1, 11, 0, 1, NULL, '2016-09-01 09:59:34', '2016-09-01 09:59:34'),
(232, 15, 1, 11, 0, 1, NULL, '2016-09-01 09:59:34', '2016-09-01 09:59:34'),
(233, 16, 1, 11, 0, 1, NULL, '2016-09-01 09:59:34', '2016-09-01 09:59:34'),
(234, 17, 1, 11, 0, 1, NULL, '2016-09-01 09:59:34', '2016-09-01 09:59:34'),
(235, 18, 1, 11, 0, 1, NULL, '2016-09-01 09:59:34', '2016-09-01 09:59:34'),
(236, 19, 1, 11, 0, 1, NULL, '2016-09-01 09:59:34', '2016-09-01 09:59:34'),
(237, 20, 1, 11, 0, 1, NULL, '2016-09-01 09:59:34', '2016-09-01 09:59:34'),
(238, 21, 1, 11, 0, 1, NULL, '2016-09-01 09:59:34', '2016-09-01 09:59:34'),
(239, 22, 1, 11, 0, 1, NULL, '2016-09-01 09:59:34', '2016-09-01 09:59:34'),
(240, 23, 1, 11, 0, 1, NULL, '2016-09-01 09:59:35', '2016-09-01 09:59:35'),
(241, 24, 1, 11, 0, 1, NULL, '2016-09-01 09:59:35', '2016-09-01 09:59:35'),
(242, 25, 1, 11, 0, 1, NULL, '2016-09-01 09:59:35', '2016-09-01 09:59:35'),
(243, 26, 1, 11, 0, 1, NULL, '2016-09-01 09:59:35', '2016-09-01 09:59:35'),
(244, 27, 1, 11, 0, 1, NULL, '2016-09-01 09:59:35', '2016-09-01 09:59:35'),
(245, 28, 1, 11, 0, 1, NULL, '2016-09-01 09:59:35', '2016-09-01 09:59:35'),
(246, 29, 1, 11, 0, 1, NULL, '2016-09-01 09:59:35', '2016-09-01 09:59:35'),
(247, 30, 1, 11, 0, 1, NULL, '2016-09-01 09:59:35', '2016-09-01 09:59:35'),
(248, 31, 1, 11, 0, 1, NULL, '2016-09-01 09:59:35', '2016-09-01 09:59:35'),
(249, 32, 1, 11, 0, 1, NULL, '2016-09-01 09:59:35', '2016-09-01 09:59:35'),
(250, 2, 7, 11, 0, 1, NULL, '2016-09-01 10:02:41', '2016-09-01 10:02:41'),
(251, 3, 7, 11, 0, 1, NULL, '2016-09-01 10:02:41', '2016-09-01 10:02:41'),
(252, 16, 7, 11, 0, 1, NULL, '2016-09-01 10:02:41', '2016-09-01 10:02:41'),
(253, 17, 7, 11, 0, 1, NULL, '2016-09-01 10:02:41', '2016-09-01 10:02:41'),
(254, 18, 7, 11, 0, 1, NULL, '2016-09-01 10:02:41', '2016-09-01 10:02:41'),
(255, 19, 7, 11, 0, 1, NULL, '2016-09-01 10:02:41', '2016-09-01 10:02:41'),
(256, 20, 7, 11, 0, 1, NULL, '2016-09-01 10:02:41', '2016-09-01 10:02:41'),
(257, 27, 7, 11, 0, 1, NULL, '2016-09-01 10:02:41', '2016-09-01 10:02:41'),
(258, 3, 6, 11, 0, 1, NULL, '2016-09-01 10:05:35', '2016-09-01 10:05:35'),
(259, 5, 6, 11, 0, 1, NULL, '2016-09-01 10:05:35', '2016-09-01 10:05:35'),
(260, 7, 6, 11, 0, 1, NULL, '2016-09-01 10:05:35', '2016-09-01 10:05:35'),
(261, 8, 6, 11, 0, 1, NULL, '2016-09-01 10:05:35', '2016-09-01 10:05:35'),
(262, 11, 6, 11, 0, 1, NULL, '2016-09-01 10:05:35', '2016-09-01 10:05:35'),
(263, 13, 6, 11, 0, 1, NULL, '2016-09-01 10:05:35', '2016-09-01 10:05:35'),
(264, 15, 6, 11, 0, 1, NULL, '2016-09-01 10:05:35', '2016-09-01 10:05:35'),
(265, 17, 6, 11, 0, 1, NULL, '2016-09-01 10:05:35', '2016-09-01 10:05:35'),
(266, 18, 6, 11, 0, 1, NULL, '2016-09-01 10:05:35', '2016-09-01 10:05:35'),
(267, 19, 6, 11, 0, 1, NULL, '2016-09-01 10:05:35', '2016-09-01 10:05:35'),
(268, 20, 6, 11, 0, 1, NULL, '2016-09-01 10:05:35', '2016-09-01 10:05:35'),
(269, 23, 6, 11, 0, 1, NULL, '2016-09-01 10:05:35', '2016-09-01 10:05:35'),
(270, 25, 6, 11, 0, 1, NULL, '2016-09-01 10:05:35', '2016-09-01 10:05:35'),
(271, 26, 6, 11, 0, 1, NULL, '2016-09-01 10:05:35', '2016-09-01 10:05:35'),
(272, 29, 6, 11, 0, 1, NULL, '2016-09-01 10:05:35', '2016-09-01 10:05:35'),
(273, 30, 6, 11, 0, 1, NULL, '2016-09-01 10:05:35', '2016-09-01 10:05:35'),
(274, 13, 5, 11, 0, 1, NULL, '2016-09-01 10:13:17', '2016-09-01 10:13:17'),
(275, 21, 5, 11, 0, 1, NULL, '2016-09-01 10:13:17', '2016-09-01 10:13:17'),
(276, 25, 5, 11, 0, 1, NULL, '2016-09-01 10:13:17', '2016-09-01 10:13:17'),
(277, 26, 5, 11, 0, 1, NULL, '2016-09-01 10:13:17', '2016-09-01 10:13:17'),
(278, 27, 5, 11, 0, 1, NULL, '2016-09-01 10:13:17', '2016-09-01 10:13:17'),
(279, 30, 5, 11, 0, 1, NULL, '2016-09-01 10:13:17', '2016-09-01 10:13:17'),
(280, 1, 3, 11, 0, 1, NULL, '2016-09-01 10:17:07', '2016-09-01 10:17:07'),
(281, 2, 3, 11, 0, 1, NULL, '2016-09-01 10:17:07', '2016-09-01 10:17:07'),
(282, 3, 3, 11, 0, 1, NULL, '2016-09-01 10:17:07', '2016-09-01 10:17:07'),
(283, 5, 3, 11, 0, 1, NULL, '2016-09-01 10:17:07', '2016-09-01 10:17:07'),
(284, 7, 3, 11, 0, 1, NULL, '2016-09-01 10:17:07', '2016-09-01 10:17:07'),
(285, 8, 3, 11, 0, 1, NULL, '2016-09-01 10:17:07', '2016-09-01 10:17:07'),
(286, 11, 3, 11, 0, 1, NULL, '2016-09-01 10:17:07', '2016-09-01 10:17:07'),
(287, 13, 3, 11, 0, 1, NULL, '2016-09-01 10:17:07', '2016-09-01 10:17:07'),
(288, 15, 3, 11, 0, 1, NULL, '2016-09-01 10:17:07', '2016-09-01 10:17:07'),
(289, 16, 3, 11, 0, 1, NULL, '2016-09-01 10:17:07', '2016-09-01 10:17:07'),
(290, 17, 3, 11, 0, 1, NULL, '2016-09-01 10:17:07', '2016-09-01 10:17:07'),
(291, 18, 3, 11, 0, 1, NULL, '2016-09-01 10:17:07', '2016-09-01 10:17:07'),
(292, 19, 3, 11, 0, 1, NULL, '2016-09-01 10:17:08', '2016-09-01 10:17:08'),
(293, 20, 3, 11, 0, 1, NULL, '2016-09-01 10:17:08', '2016-09-01 10:17:08'),
(294, 23, 3, 11, 0, 1, NULL, '2016-09-01 10:17:08', '2016-09-01 10:17:08'),
(295, 25, 3, 11, 0, 1, NULL, '2016-09-01 10:17:08', '2016-09-01 10:17:08'),
(296, 26, 3, 11, 0, 1, NULL, '2016-09-01 10:17:08', '2016-09-01 10:17:08'),
(297, 27, 3, 11, 0, 1, NULL, '2016-09-01 10:17:08', '2016-09-01 10:17:08'),
(298, 29, 3, 11, 0, 1, NULL, '2016-09-01 10:17:08', '2016-09-01 10:17:08'),
(299, 30, 3, 11, 0, 1, NULL, '2016-09-01 10:17:08', '2016-09-01 10:17:08'),
(300, 1, 2, 11, 0, 1, NULL, '2016-09-01 10:20:06', '2016-09-01 10:20:06'),
(301, 2, 2, 11, 0, 1, NULL, '2016-09-01 10:20:06', '2016-09-01 10:20:06'),
(302, 3, 2, 11, 0, 1, NULL, '2016-09-01 10:20:06', '2016-09-01 10:20:06'),
(303, 4, 2, 11, 0, 1, NULL, '2016-09-01 10:20:06', '2016-09-01 10:20:06'),
(304, 5, 2, 11, 0, 1, NULL, '2016-09-01 10:20:06', '2016-09-01 10:20:06'),
(305, 7, 2, 11, 0, 1, NULL, '2016-09-01 10:20:06', '2016-09-01 10:20:06'),
(306, 8, 2, 11, 0, 1, NULL, '2016-09-01 10:20:06', '2016-09-01 10:20:06'),
(307, 11, 2, 11, 0, 1, NULL, '2016-09-01 10:20:06', '2016-09-01 10:20:06'),
(308, 13, 2, 11, 0, 1, NULL, '2016-09-01 10:20:06', '2016-09-01 10:20:06'),
(309, 15, 2, 11, 0, 1, NULL, '2016-09-01 10:20:06', '2016-09-01 10:20:06'),
(310, 16, 2, 11, 0, 1, NULL, '2016-09-01 10:20:06', '2016-09-01 10:20:06'),
(311, 17, 2, 11, 0, 1, NULL, '2016-09-01 10:20:06', '2016-09-01 10:20:06'),
(312, 18, 2, 11, 0, 1, NULL, '2016-09-01 10:20:06', '2016-09-01 10:20:06'),
(313, 19, 2, 11, 0, 1, NULL, '2016-09-01 10:20:06', '2016-09-01 10:20:06'),
(314, 20, 2, 11, 0, 1, NULL, '2016-09-01 10:20:06', '2016-09-01 10:20:06'),
(315, 21, 2, 11, 0, 1, NULL, '2016-09-01 10:20:06', '2016-09-01 10:20:06'),
(316, 22, 2, 11, 0, 1, NULL, '2016-09-01 10:20:06', '2016-09-01 10:20:06'),
(317, 23, 2, 11, 0, 1, NULL, '2016-09-01 10:20:06', '2016-09-01 10:20:06'),
(318, 24, 2, 11, 0, 1, NULL, '2016-09-01 10:20:07', '2016-09-01 10:20:07'),
(319, 25, 2, 11, 0, 1, NULL, '2016-09-01 10:20:07', '2016-09-01 10:20:07'),
(320, 26, 2, 11, 0, 1, NULL, '2016-09-01 10:20:07', '2016-09-01 10:20:07'),
(321, 27, 2, 11, 0, 1, NULL, '2016-09-01 10:20:07', '2016-09-01 10:20:07'),
(322, 28, 2, 11, 0, 1, NULL, '2016-09-01 10:20:07', '2016-09-01 10:20:07'),
(323, 29, 2, 11, 0, 1, NULL, '2016-09-01 10:20:07', '2016-09-01 10:20:07'),
(324, 30, 2, 11, 0, 1, NULL, '2016-09-01 10:20:07', '2016-09-01 10:20:07'),
(325, 1, 9, 11, 0, 1, NULL, '2016-09-15 06:58:33', '2016-09-15 06:58:33'),
(326, 2, 9, 11, 0, 1, NULL, '2016-09-15 06:58:33', '2016-09-15 06:58:33'),
(327, 3, 9, 11, 0, 1, NULL, '2016-09-15 06:58:33', '2016-09-15 06:58:33'),
(328, 4, 9, 11, 0, 1, NULL, '2016-09-15 06:58:33', '2016-09-15 06:58:33'),
(329, 5, 9, 11, 0, 1, NULL, '2016-09-15 06:58:33', '2016-09-15 06:58:33'),
(330, 6, 9, 11, 0, 1, NULL, '2016-09-15 06:58:33', '2016-09-15 06:58:33'),
(331, 7, 9, 11, 0, 1, NULL, '2016-09-15 06:58:33', '2016-09-15 06:58:33'),
(332, 8, 9, 11, 0, 1, NULL, '2016-09-15 06:58:33', '2016-09-15 06:58:33'),
(333, 9, 9, 11, 0, 1, NULL, '2016-09-15 06:58:33', '2016-09-15 06:58:33'),
(334, 10, 9, 11, 0, 1, NULL, '2016-09-15 06:58:33', '2016-09-15 06:58:33'),
(335, 11, 9, 11, 0, 1, NULL, '2016-09-15 06:58:33', '2016-09-15 06:58:33'),
(336, 12, 9, 11, 0, 1, NULL, '2016-09-15 06:58:33', '2016-09-15 06:58:33'),
(337, 13, 9, 11, 0, 1, NULL, '2016-09-15 06:58:33', '2016-09-15 06:58:33'),
(338, 14, 9, 11, 0, 1, NULL, '2016-09-15 06:58:33', '2016-09-15 06:58:33'),
(339, 15, 9, 11, 0, 1, NULL, '2016-09-15 06:58:34', '2016-09-15 06:58:34'),
(340, 16, 9, 11, 0, 1, NULL, '2016-09-15 06:58:34', '2016-09-15 06:58:34'),
(341, 17, 9, 11, 0, 1, NULL, '2016-09-15 06:58:34', '2016-09-15 06:58:34'),
(342, 18, 9, 11, 0, 1, NULL, '2016-09-15 06:58:34', '2016-09-15 06:58:34'),
(343, 19, 9, 11, 0, 1, NULL, '2016-09-15 06:58:34', '2016-09-15 06:58:34'),
(344, 20, 9, 11, 0, 1, NULL, '2016-09-15 06:58:34', '2016-09-15 06:58:34'),
(345, 21, 9, 11, 0, 1, NULL, '2016-09-15 06:58:34', '2016-09-15 06:58:34'),
(346, 22, 9, 11, 0, 1, NULL, '2016-09-15 06:58:34', '2016-09-15 06:58:34'),
(347, 23, 9, 11, 0, 1, NULL, '2016-09-15 06:58:34', '2016-09-15 06:58:34'),
(348, 24, 9, 11, 0, 1, NULL, '2016-09-15 06:58:34', '2016-09-15 06:58:34'),
(349, 25, 9, 11, 0, 1, NULL, '2016-09-15 06:58:34', '2016-09-15 06:58:34'),
(350, 26, 9, 11, 0, 1, NULL, '2016-09-15 06:58:34', '2016-09-15 06:58:34'),
(351, 27, 9, 11, 0, 1, NULL, '2016-09-15 06:58:34', '2016-09-15 06:58:34'),
(352, 28, 9, 11, 0, 1, NULL, '2016-09-15 06:58:34', '2016-09-15 06:58:34'),
(353, 29, 9, 11, 0, 1, NULL, '2016-09-15 06:58:34', '2016-09-15 06:58:34'),
(354, 30, 9, 11, 0, 1, NULL, '2016-09-15 06:58:34', '2016-09-15 06:58:34'),
(355, 31, 9, 11, 0, 1, NULL, '2016-09-15 06:58:34', '2016-09-15 06:58:34'),
(356, 32, 9, 11, 0, 1, NULL, '2016-09-15 06:58:34', '2016-09-15 06:58:34'),
(357, 5, 5, 26, 0, 1, NULL, '2016-10-17 16:32:15', '2016-10-17 16:32:15'),
(358, 11, 5, 26, 0, 1, NULL, '2016-10-17 16:32:15', '2016-10-17 16:32:15'),
(359, 13, 5, 26, 0, 1, NULL, '2016-10-17 16:32:15', '2016-10-17 16:32:15'),
(360, 25, 5, 26, 0, 1, NULL, '2016-10-17 16:32:15', '2016-10-17 16:32:15'),
(361, 26, 5, 26, 0, 1, NULL, '2016-10-17 16:32:15', '2016-10-17 16:32:15'),
(362, 27, 5, 26, 0, 1, NULL, '2016-10-17 16:32:15', '2016-10-17 16:32:15'),
(363, 30, 5, 26, 0, 1, NULL, '2016-10-17 16:32:15', '2016-10-17 16:32:15'),
(364, 1, 2, 26, 0, 1, NULL, '2016-10-18 06:19:02', '2016-10-18 06:19:02'),
(365, 2, 2, 26, 0, 1, NULL, '2016-10-18 06:19:02', '2016-10-18 06:19:02'),
(366, 3, 2, 26, 0, 1, NULL, '2016-10-18 06:19:02', '2016-10-18 06:19:02'),
(367, 4, 2, 26, 0, 1, NULL, '2016-10-18 06:19:02', '2016-10-18 06:19:02'),
(368, 5, 2, 26, 0, 1, NULL, '2016-10-18 06:19:02', '2016-10-18 06:19:02'),
(369, 6, 2, 26, 0, 1, NULL, '2016-10-18 06:19:02', '2016-10-18 06:19:02'),
(370, 7, 2, 26, 0, 1, NULL, '2016-10-18 06:19:02', '2016-10-18 06:19:02'),
(371, 8, 2, 26, 0, 1, NULL, '2016-10-18 06:19:02', '2016-10-18 06:19:02'),
(372, 9, 2, 26, 0, 1, NULL, '2016-10-18 06:19:02', '2016-10-18 06:19:02'),
(373, 10, 2, 26, 0, 1, NULL, '2016-10-18 06:19:02', '2016-10-18 06:19:02'),
(374, 11, 2, 26, 0, 1, NULL, '2016-10-18 06:19:02', '2016-10-18 06:19:02'),
(375, 12, 2, 26, 0, 1, NULL, '2016-10-18 06:19:02', '2016-10-18 06:19:02'),
(376, 13, 2, 26, 0, 1, NULL, '2016-10-18 06:19:02', '2016-10-18 06:19:02'),
(377, 14, 2, 26, 0, 1, NULL, '2016-10-18 06:19:02', '2016-10-18 06:19:02'),
(378, 15, 2, 26, 0, 1, NULL, '2016-10-18 06:19:03', '2016-10-18 06:19:03'),
(379, 16, 2, 26, 0, 1, NULL, '2016-10-18 06:19:03', '2016-10-18 06:19:03'),
(380, 17, 2, 26, 0, 1, NULL, '2016-10-18 06:19:03', '2016-10-18 06:19:03'),
(381, 18, 2, 26, 0, 1, NULL, '2016-10-18 06:19:03', '2016-10-18 06:19:03'),
(382, 19, 2, 26, 0, 1, NULL, '2016-10-18 06:19:03', '2016-10-18 06:19:03'),
(383, 20, 2, 26, 0, 1, NULL, '2016-10-18 06:19:03', '2016-10-18 06:19:03'),
(384, 21, 2, 26, 0, 1, NULL, '2016-10-18 06:19:03', '2016-10-18 06:19:03'),
(385, 22, 2, 26, 0, 1, NULL, '2016-10-18 06:19:03', '2016-10-18 06:19:03'),
(386, 23, 2, 26, 0, 1, NULL, '2016-10-18 06:19:03', '2016-10-18 06:19:03'),
(387, 24, 2, 26, 0, 1, NULL, '2016-10-18 06:19:03', '2016-10-18 06:19:03'),
(388, 25, 2, 26, 0, 1, NULL, '2016-10-18 06:19:03', '2016-10-18 06:19:03'),
(389, 26, 2, 26, 0, 1, NULL, '2016-10-18 06:19:03', '2016-10-18 06:19:03'),
(390, 27, 2, 26, 0, 1, NULL, '2016-10-18 06:19:03', '2016-10-18 06:19:03'),
(391, 28, 2, 26, 0, 1, NULL, '2016-10-18 06:19:03', '2016-10-18 06:19:03'),
(392, 29, 2, 26, 0, 1, NULL, '2016-10-18 06:19:03', '2016-10-18 06:19:03'),
(393, 30, 2, 26, 0, 1, NULL, '2016-10-18 06:19:03', '2016-10-18 06:19:03'),
(394, 31, 2, 26, 0, 1, NULL, '2016-10-18 06:19:03', '2016-10-18 06:19:03'),
(395, 32, 2, 26, 0, 1, NULL, '2016-10-18 06:19:03', '2016-10-18 06:19:03'),
(396, 3, 5, 26, 0, 1, NULL, '2016-10-20 09:56:48', '2016-10-20 09:56:48'),
(397, 5, 5, 26, 0, 1, NULL, '2016-10-20 09:56:48', '2016-10-20 09:56:48'),
(398, 7, 5, 26, 0, 1, NULL, '2016-10-20 09:56:48', '2016-10-20 09:56:48'),
(399, 11, 5, 26, 0, 1, NULL, '2016-10-20 09:56:48', '2016-10-20 09:56:48'),
(400, 13, 5, 26, 0, 1, NULL, '2016-10-20 09:56:48', '2016-10-20 09:56:48'),
(401, 15, 5, 26, 0, 1, NULL, '2016-10-20 09:56:48', '2016-10-20 09:56:48'),
(402, 17, 5, 26, 0, 1, NULL, '2016-10-20 09:56:48', '2016-10-20 09:56:48'),
(403, 18, 5, 26, 0, 1, NULL, '2016-10-20 09:56:48', '2016-10-20 09:56:48'),
(404, 19, 5, 26, 0, 1, NULL, '2016-10-20 09:56:48', '2016-10-20 09:56:48'),
(405, 20, 5, 26, 0, 1, NULL, '2016-10-20 09:56:48', '2016-10-20 09:56:48'),
(406, 21, 5, 26, 0, 1, NULL, '2016-10-20 09:56:48', '2016-10-20 09:56:48'),
(407, 23, 5, 26, 0, 1, NULL, '2016-10-20 09:56:48', '2016-10-20 09:56:48'),
(408, 25, 5, 26, 0, 1, NULL, '2016-10-20 09:56:48', '2016-10-20 09:56:48'),
(409, 26, 5, 26, 0, 1, NULL, '2016-10-20 09:56:48', '2016-10-20 09:56:48'),
(410, 27, 5, 26, 0, 1, NULL, '2016-10-20 09:56:48', '2016-10-20 09:56:48'),
(411, 29, 5, 26, 0, 1, NULL, '2016-10-20 09:56:48', '2016-10-20 09:56:48'),
(412, 30, 5, 26, 0, 1, NULL, '2016-10-20 09:56:48', '2016-10-20 09:56:48'),
(413, 1, 1, 26, 0, 1, NULL, '2016-10-20 09:57:27', '2016-10-20 09:57:27'),
(414, 2, 1, 26, 0, 1, NULL, '2016-10-20 09:57:28', '2016-10-20 09:57:28'),
(415, 3, 1, 26, 0, 1, NULL, '2016-10-20 09:57:28', '2016-10-20 09:57:28'),
(416, 4, 1, 26, 0, 1, NULL, '2016-10-20 09:57:28', '2016-10-20 09:57:28'),
(417, 5, 1, 26, 0, 1, NULL, '2016-10-20 09:57:28', '2016-10-20 09:57:28'),
(418, 6, 1, 26, 0, 1, NULL, '2016-10-20 09:57:28', '2016-10-20 09:57:28'),
(419, 7, 1, 26, 0, 1, NULL, '2016-10-20 09:57:28', '2016-10-20 09:57:28'),
(420, 8, 1, 26, 0, 1, NULL, '2016-10-20 09:57:28', '2016-10-20 09:57:28'),
(421, 9, 1, 26, 0, 1, NULL, '2016-10-20 09:57:28', '2016-10-20 09:57:28'),
(422, 10, 1, 26, 0, 1, NULL, '2016-10-20 09:57:28', '2016-10-20 09:57:28'),
(423, 11, 1, 26, 0, 1, NULL, '2016-10-20 09:57:28', '2016-10-20 09:57:28'),
(424, 12, 1, 26, 0, 1, NULL, '2016-10-20 09:57:28', '2016-10-20 09:57:28'),
(425, 13, 1, 26, 0, 1, NULL, '2016-10-20 09:57:28', '2016-10-20 09:57:28'),
(426, 14, 1, 26, 0, 1, NULL, '2016-10-20 09:57:28', '2016-10-20 09:57:28'),
(427, 15, 1, 26, 0, 1, NULL, '2016-10-20 09:57:28', '2016-10-20 09:57:28'),
(428, 16, 1, 26, 0, 1, NULL, '2016-10-20 09:57:28', '2016-10-20 09:57:28'),
(429, 17, 1, 26, 0, 1, NULL, '2016-10-20 09:57:28', '2016-10-20 09:57:28'),
(430, 18, 1, 26, 0, 1, NULL, '2016-10-20 09:57:28', '2016-10-20 09:57:28'),
(431, 19, 1, 26, 0, 1, NULL, '2016-10-20 09:57:28', '2016-10-20 09:57:28'),
(432, 20, 1, 26, 0, 1, NULL, '2016-10-20 09:57:28', '2016-10-20 09:57:28'),
(433, 21, 1, 26, 0, 1, NULL, '2016-10-20 09:57:28', '2016-10-20 09:57:28'),
(434, 22, 1, 26, 0, 1, NULL, '2016-10-20 09:57:28', '2016-10-20 09:57:28'),
(435, 23, 1, 26, 0, 1, NULL, '2016-10-20 09:57:28', '2016-10-20 09:57:28'),
(436, 24, 1, 26, 0, 1, NULL, '2016-10-20 09:57:28', '2016-10-20 09:57:28'),
(437, 25, 1, 26, 0, 1, NULL, '2016-10-20 09:57:28', '2016-10-20 09:57:28'),
(438, 26, 1, 26, 0, 1, NULL, '2016-10-20 09:57:28', '2016-10-20 09:57:28'),
(439, 27, 1, 26, 0, 1, NULL, '2016-10-20 09:57:28', '2016-10-20 09:57:28'),
(440, 28, 1, 26, 0, 1, NULL, '2016-10-20 09:57:28', '2016-10-20 09:57:28'),
(441, 29, 1, 26, 0, 1, NULL, '2016-10-20 09:57:28', '2016-10-20 09:57:28'),
(442, 30, 1, 26, 0, 1, NULL, '2016-10-20 09:57:29', '2016-10-20 09:57:29'),
(443, 31, 1, 26, 0, 1, NULL, '2016-10-20 09:57:29', '2016-10-20 09:57:29'),
(444, 32, 1, 26, 0, 1, NULL, '2016-10-20 09:57:29', '2016-10-20 09:57:29'),
(445, 1, 5, 26, 0, 1, NULL, '2016-10-21 11:28:13', '2016-10-21 11:28:13'),
(446, 2, 5, 26, 0, 1, NULL, '2016-10-21 11:28:13', '2016-10-21 11:28:13'),
(447, 3, 5, 26, 0, 1, NULL, '2016-10-21 11:28:13', '2016-10-21 11:28:13'),
(448, 4, 5, 26, 0, 1, NULL, '2016-10-21 11:28:13', '2016-10-21 11:28:13'),
(449, 5, 5, 26, 0, 1, NULL, '2016-10-21 11:28:13', '2016-10-21 11:28:13'),
(450, 6, 5, 26, 0, 1, NULL, '2016-10-21 11:28:13', '2016-10-21 11:28:13'),
(451, 7, 5, 26, 0, 1, NULL, '2016-10-21 11:28:13', '2016-10-21 11:28:13'),
(452, 8, 5, 26, 0, 1, NULL, '2016-10-21 11:28:13', '2016-10-21 11:28:13'),
(453, 9, 5, 26, 0, 1, NULL, '2016-10-21 11:28:13', '2016-10-21 11:28:13'),
(454, 10, 5, 26, 0, 1, NULL, '2016-10-21 11:28:13', '2016-10-21 11:28:13'),
(455, 11, 5, 26, 0, 1, NULL, '2016-10-21 11:28:13', '2016-10-21 11:28:13'),
(456, 12, 5, 26, 0, 1, NULL, '2016-10-21 11:28:13', '2016-10-21 11:28:13'),
(457, 13, 5, 26, 0, 1, NULL, '2016-10-21 11:28:13', '2016-10-21 11:28:13'),
(458, 14, 5, 26, 0, 1, NULL, '2016-10-21 11:28:13', '2016-10-21 11:28:13'),
(459, 15, 5, 26, 0, 1, NULL, '2016-10-21 11:28:13', '2016-10-21 11:28:13'),
(460, 16, 5, 26, 0, 1, NULL, '2016-10-21 11:28:13', '2016-10-21 11:28:13'),
(461, 17, 5, 26, 0, 1, NULL, '2016-10-21 11:28:13', '2016-10-21 11:28:13'),
(462, 18, 5, 26, 0, 1, NULL, '2016-10-21 11:28:13', '2016-10-21 11:28:13'),
(463, 19, 5, 26, 0, 1, NULL, '2016-10-21 11:28:13', '2016-10-21 11:28:13'),
(464, 20, 5, 26, 0, 1, NULL, '2016-10-21 11:28:14', '2016-10-21 11:28:14'),
(465, 21, 5, 26, 0, 1, NULL, '2016-10-21 11:28:14', '2016-10-21 11:28:14'),
(466, 22, 5, 26, 0, 1, NULL, '2016-10-21 11:28:14', '2016-10-21 11:28:14'),
(467, 23, 5, 26, 0, 1, NULL, '2016-10-21 11:28:14', '2016-10-21 11:28:14'),
(468, 24, 5, 26, 0, 1, NULL, '2016-10-21 11:28:14', '2016-10-21 11:28:14'),
(469, 25, 5, 26, 0, 1, NULL, '2016-10-21 11:28:14', '2016-10-21 11:28:14'),
(470, 26, 5, 26, 0, 1, NULL, '2016-10-21 11:28:14', '2016-10-21 11:28:14'),
(471, 27, 5, 26, 0, 1, NULL, '2016-10-21 11:28:14', '2016-10-21 11:28:14'),
(472, 28, 5, 26, 0, 1, NULL, '2016-10-21 11:28:14', '2016-10-21 11:28:14'),
(473, 29, 5, 26, 0, 1, NULL, '2016-10-21 11:28:14', '2016-10-21 11:28:14'),
(474, 30, 5, 26, 0, 1, NULL, '2016-10-21 11:28:14', '2016-10-21 11:28:14'),
(475, 31, 5, 26, 0, 1, NULL, '2016-10-21 11:28:14', '2016-10-21 11:28:14'),
(476, 32, 5, 26, 0, 1, NULL, '2016-10-21 11:28:14', '2016-10-21 11:28:14'),
(477, 3, 7, 26, 0, 1, NULL, '2016-10-23 07:06:02', '2016-10-23 07:06:02'),
(478, 5, 7, 26, 0, 1, NULL, '2016-10-23 07:06:02', '2016-10-23 07:06:02'),
(479, 7, 7, 26, 0, 1, NULL, '2016-10-23 07:06:02', '2016-10-23 07:06:02'),
(480, 11, 7, 26, 0, 1, NULL, '2016-10-23 07:06:02', '2016-10-23 07:06:02'),
(481, 13, 7, 26, 0, 1, NULL, '2016-10-23 07:06:02', '2016-10-23 07:06:02'),
(482, 15, 7, 26, 0, 1, NULL, '2016-10-23 07:06:03', '2016-10-23 07:06:03'),
(483, 16, 7, 26, 0, 1, NULL, '2016-10-23 07:06:03', '2016-10-23 07:06:03'),
(484, 20, 7, 26, 0, 1, NULL, '2016-10-23 07:06:03', '2016-10-23 07:06:03'),
(485, 21, 7, 26, 0, 1, NULL, '2016-10-23 07:06:03', '2016-10-23 07:06:03'),
(486, 26, 7, 26, 0, 1, NULL, '2016-10-23 07:06:03', '2016-10-23 07:06:03'),
(487, 2, 6, 26, 0, 1, NULL, '2016-10-23 07:08:37', '2016-10-23 07:08:37'),
(488, 3, 6, 26, 0, 1, NULL, '2016-10-23 07:08:37', '2016-10-23 07:08:37'),
(489, 5, 6, 26, 0, 1, NULL, '2016-10-23 07:08:37', '2016-10-23 07:08:37'),
(490, 7, 6, 26, 0, 1, NULL, '2016-10-23 07:08:37', '2016-10-23 07:08:37'),
(491, 11, 6, 26, 0, 1, NULL, '2016-10-23 07:08:37', '2016-10-23 07:08:37'),
(492, 13, 6, 26, 0, 1, NULL, '2016-10-23 07:08:37', '2016-10-23 07:08:37'),
(493, 15, 6, 26, 0, 1, NULL, '2016-10-23 07:08:37', '2016-10-23 07:08:37'),
(494, 16, 6, 26, 0, 1, NULL, '2016-10-23 07:08:37', '2016-10-23 07:08:37'),
(495, 17, 6, 26, 0, 1, NULL, '2016-10-23 07:08:37', '2016-10-23 07:08:37'),
(496, 18, 6, 26, 0, 1, NULL, '2016-10-23 07:08:37', '2016-10-23 07:08:37'),
(497, 19, 6, 26, 0, 1, NULL, '2016-10-23 07:08:37', '2016-10-23 07:08:37'),
(498, 20, 6, 26, 0, 1, NULL, '2016-10-23 07:08:37', '2016-10-23 07:08:37'),
(499, 23, 6, 26, 0, 1, NULL, '2016-10-23 07:08:37', '2016-10-23 07:08:37'),
(500, 25, 6, 26, 0, 1, NULL, '2016-10-23 07:08:37', '2016-10-23 07:08:37'),
(501, 26, 6, 26, 0, 1, NULL, '2016-10-23 07:08:37', '2016-10-23 07:08:37'),
(502, 27, 6, 26, 0, 1, NULL, '2016-10-23 07:08:37', '2016-10-23 07:08:37'),
(503, 29, 6, 26, 0, 1, NULL, '2016-10-23 07:08:37', '2016-10-23 07:08:37'),
(504, 30, 6, 26, 0, 1, NULL, '2016-10-23 07:08:37', '2016-10-23 07:08:37'),
(505, 2, 5, 26, 0, 1, NULL, '2016-10-23 07:10:22', '2016-10-23 07:10:22'),
(506, 3, 5, 26, 0, 1, NULL, '2016-10-23 07:10:22', '2016-10-23 07:10:22'),
(507, 5, 5, 26, 0, 1, NULL, '2016-10-23 07:10:23', '2016-10-23 07:10:23'),
(508, 7, 5, 26, 0, 1, NULL, '2016-10-23 07:10:23', '2016-10-23 07:10:23'),
(509, 8, 5, 26, 0, 1, NULL, '2016-10-23 07:10:23', '2016-10-23 07:10:23'),
(510, 11, 5, 26, 0, 1, NULL, '2016-10-23 07:10:23', '2016-10-23 07:10:23'),
(511, 13, 5, 26, 0, 1, NULL, '2016-10-23 07:10:23', '2016-10-23 07:10:23'),
(512, 15, 5, 26, 0, 1, NULL, '2016-10-23 07:10:23', '2016-10-23 07:10:23'),
(513, 16, 5, 26, 0, 1, NULL, '2016-10-23 07:10:23', '2016-10-23 07:10:23'),
(514, 17, 5, 26, 0, 1, NULL, '2016-10-23 07:10:23', '2016-10-23 07:10:23'),
(515, 18, 5, 26, 0, 1, NULL, '2016-10-23 07:10:23', '2016-10-23 07:10:23'),
(516, 19, 5, 26, 0, 1, NULL, '2016-10-23 07:10:23', '2016-10-23 07:10:23'),
(517, 20, 5, 26, 0, 1, NULL, '2016-10-23 07:10:23', '2016-10-23 07:10:23'),
(518, 23, 5, 26, 0, 1, NULL, '2016-10-23 07:10:23', '2016-10-23 07:10:23'),
(519, 25, 5, 26, 0, 1, NULL, '2016-10-23 07:10:23', '2016-10-23 07:10:23'),
(520, 26, 5, 26, 0, 1, NULL, '2016-10-23 07:10:23', '2016-10-23 07:10:23'),
(521, 27, 5, 26, 0, 1, NULL, '2016-10-23 07:10:23', '2016-10-23 07:10:23'),
(522, 30, 5, 26, 0, 1, NULL, '2016-10-23 07:10:23', '2016-10-23 07:10:23'),
(523, 1, 3, 26, 0, 1, NULL, '2016-10-23 07:12:30', '2016-10-23 07:12:30'),
(524, 2, 3, 26, 0, 1, NULL, '2016-10-23 07:12:30', '2016-10-23 07:12:30'),
(525, 3, 3, 26, 0, 1, NULL, '2016-10-23 07:12:30', '2016-10-23 07:12:30'),
(526, 5, 3, 26, 0, 1, NULL, '2016-10-23 07:12:30', '2016-10-23 07:12:30'),
(527, 7, 3, 26, 0, 1, NULL, '2016-10-23 07:12:30', '2016-10-23 07:12:30'),
(528, 8, 3, 26, 0, 1, NULL, '2016-10-23 07:12:30', '2016-10-23 07:12:30'),
(529, 10, 3, 26, 0, 1, NULL, '2016-10-23 07:12:30', '2016-10-23 07:12:30'),
(530, 11, 3, 26, 0, 1, NULL, '2016-10-23 07:12:30', '2016-10-23 07:12:30'),
(531, 13, 3, 26, 0, 1, NULL, '2016-10-23 07:12:30', '2016-10-23 07:12:30'),
(532, 15, 3, 26, 0, 1, NULL, '2016-10-23 07:12:30', '2016-10-23 07:12:30'),
(533, 16, 3, 26, 0, 1, NULL, '2016-10-23 07:12:30', '2016-10-23 07:12:30'),
(534, 17, 3, 26, 0, 1, NULL, '2016-10-23 07:12:30', '2016-10-23 07:12:30'),
(535, 18, 3, 26, 0, 1, NULL, '2016-10-23 07:12:30', '2016-10-23 07:12:30'),
(536, 19, 3, 26, 0, 1, NULL, '2016-10-23 07:12:30', '2016-10-23 07:12:30'),
(537, 20, 3, 26, 0, 1, NULL, '2016-10-23 07:12:30', '2016-10-23 07:12:30'),
(538, 23, 3, 26, 0, 1, NULL, '2016-10-23 07:12:30', '2016-10-23 07:12:30'),
(539, 25, 3, 26, 0, 1, NULL, '2016-10-23 07:12:30', '2016-10-23 07:12:30'),
(540, 26, 3, 26, 0, 1, NULL, '2016-10-23 07:12:31', '2016-10-23 07:12:31'),
(541, 27, 3, 26, 0, 1, NULL, '2016-10-23 07:12:31', '2016-10-23 07:12:31'),
(542, 29, 3, 26, 0, 1, NULL, '2016-10-23 07:12:31', '2016-10-23 07:12:31'),
(543, 30, 3, 26, 0, 1, NULL, '2016-10-23 07:12:31', '2016-10-23 07:12:31'),
(544, 1, 2, 26, 0, 1, NULL, '2016-10-23 07:12:56', '2016-10-23 07:12:56'),
(545, 2, 2, 26, 0, 1, NULL, '2016-10-23 07:12:56', '2016-10-23 07:12:56'),
(546, 3, 2, 26, 0, 1, NULL, '2016-10-23 07:12:56', '2016-10-23 07:12:56'),
(547, 4, 2, 26, 0, 1, NULL, '2016-10-23 07:12:56', '2016-10-23 07:12:56'),
(548, 5, 2, 26, 0, 1, NULL, '2016-10-23 07:12:56', '2016-10-23 07:12:56'),
(549, 6, 2, 26, 0, 1, NULL, '2016-10-23 07:12:56', '2016-10-23 07:12:56'),
(550, 7, 2, 26, 0, 1, NULL, '2016-10-23 07:12:56', '2016-10-23 07:12:56'),
(551, 8, 2, 26, 0, 1, NULL, '2016-10-23 07:12:56', '2016-10-23 07:12:56'),
(552, 9, 2, 26, 0, 1, NULL, '2016-10-23 07:12:56', '2016-10-23 07:12:56'),
(553, 10, 2, 26, 0, 1, NULL, '2016-10-23 07:12:56', '2016-10-23 07:12:56'),
(554, 11, 2, 26, 0, 1, NULL, '2016-10-23 07:12:56', '2016-10-23 07:12:56'),
(555, 12, 2, 26, 0, 1, NULL, '2016-10-23 07:12:56', '2016-10-23 07:12:56'),
(556, 13, 2, 26, 0, 1, NULL, '2016-10-23 07:12:56', '2016-10-23 07:12:56'),
(557, 14, 2, 26, 0, 1, NULL, '2016-10-23 07:12:56', '2016-10-23 07:12:56'),
(558, 15, 2, 26, 0, 1, NULL, '2016-10-23 07:12:56', '2016-10-23 07:12:56'),
(559, 16, 2, 26, 0, 1, NULL, '2016-10-23 07:12:56', '2016-10-23 07:12:56'),
(560, 17, 2, 26, 0, 1, NULL, '2016-10-23 07:12:56', '2016-10-23 07:12:56'),
(561, 18, 2, 26, 0, 1, NULL, '2016-10-23 07:12:56', '2016-10-23 07:12:56'),
(562, 19, 2, 26, 0, 1, NULL, '2016-10-23 07:12:56', '2016-10-23 07:12:56'),
(563, 20, 2, 26, 0, 1, NULL, '2016-10-23 07:12:56', '2016-10-23 07:12:56'),
(564, 21, 2, 26, 0, 1, NULL, '2016-10-23 07:12:56', '2016-10-23 07:12:56'),
(565, 22, 2, 26, 0, 1, NULL, '2016-10-23 07:12:57', '2016-10-23 07:12:57'),
(566, 23, 2, 26, 0, 1, NULL, '2016-10-23 07:12:57', '2016-10-23 07:12:57'),
(567, 24, 2, 26, 0, 1, NULL, '2016-10-23 07:12:57', '2016-10-23 07:12:57'),
(568, 25, 2, 26, 0, 1, NULL, '2016-10-23 07:12:57', '2016-10-23 07:12:57'),
(569, 26, 2, 26, 0, 1, NULL, '2016-10-23 07:12:57', '2016-10-23 07:12:57'),
(570, 27, 2, 26, 0, 1, NULL, '2016-10-23 07:12:57', '2016-10-23 07:12:57'),
(571, 28, 2, 26, 0, 1, NULL, '2016-10-23 07:12:57', '2016-10-23 07:12:57'),
(572, 29, 2, 26, 0, 1, NULL, '2016-10-23 07:12:57', '2016-10-23 07:12:57'),
(573, 30, 2, 26, 0, 1, NULL, '2016-10-23 07:12:57', '2016-10-23 07:12:57'),
(574, 31, 2, 26, 0, 1, NULL, '2016-10-23 07:12:57', '2016-10-23 07:12:57'),
(575, 32, 2, 26, 0, 1, NULL, '2016-10-23 07:12:57', '2016-10-23 07:12:57'),
(576, 1, 1, 26, 0, 1, NULL, '2016-10-23 07:13:40', '2016-10-23 07:13:40'),
(577, 2, 1, 26, 0, 1, NULL, '2016-10-23 07:13:40', '2016-10-23 07:13:40'),
(578, 3, 1, 26, 0, 1, NULL, '2016-10-23 07:13:40', '2016-10-23 07:13:40'),
(579, 4, 1, 26, 0, 1, NULL, '2016-10-23 07:13:40', '2016-10-23 07:13:40'),
(580, 5, 1, 26, 0, 1, NULL, '2016-10-23 07:13:40', '2016-10-23 07:13:40'),
(581, 6, 1, 26, 0, 1, NULL, '2016-10-23 07:13:40', '2016-10-23 07:13:40'),
(582, 7, 1, 26, 0, 1, NULL, '2016-10-23 07:13:40', '2016-10-23 07:13:40'),
(583, 8, 1, 26, 0, 1, NULL, '2016-10-23 07:13:40', '2016-10-23 07:13:40'),
(584, 9, 1, 26, 0, 1, NULL, '2016-10-23 07:13:40', '2016-10-23 07:13:40'),
(585, 10, 1, 26, 0, 1, NULL, '2016-10-23 07:13:40', '2016-10-23 07:13:40'),
(586, 11, 1, 26, 0, 1, NULL, '2016-10-23 07:13:41', '2016-10-23 07:13:41'),
(587, 12, 1, 26, 0, 1, NULL, '2016-10-23 07:13:41', '2016-10-23 07:13:41'),
(588, 13, 1, 26, 0, 1, NULL, '2016-10-23 07:13:41', '2016-10-23 07:13:41'),
(589, 14, 1, 26, 0, 1, NULL, '2016-10-23 07:13:41', '2016-10-23 07:13:41'),
(590, 15, 1, 26, 0, 1, NULL, '2016-10-23 07:13:41', '2016-10-23 07:13:41'),
(591, 16, 1, 26, 0, 1, NULL, '2016-10-23 07:13:41', '2016-10-23 07:13:41'),
(592, 17, 1, 26, 0, 1, NULL, '2016-10-23 07:13:41', '2016-10-23 07:13:41'),
(593, 18, 1, 26, 0, 1, NULL, '2016-10-23 07:13:41', '2016-10-23 07:13:41'),
(594, 19, 1, 26, 0, 1, NULL, '2016-10-23 07:13:41', '2016-10-23 07:13:41'),
(595, 20, 1, 26, 0, 1, NULL, '2016-10-23 07:13:41', '2016-10-23 07:13:41'),
(596, 21, 1, 26, 0, 1, NULL, '2016-10-23 07:13:41', '2016-10-23 07:13:41'),
(597, 22, 1, 26, 0, 1, NULL, '2016-10-23 07:13:41', '2016-10-23 07:13:41'),
(598, 23, 1, 26, 0, 1, NULL, '2016-10-23 07:13:41', '2016-10-23 07:13:41'),
(599, 24, 1, 26, 0, 1, NULL, '2016-10-23 07:13:41', '2016-10-23 07:13:41'),
(600, 25, 1, 26, 0, 1, NULL, '2016-10-23 07:13:41', '2016-10-23 07:13:41'),
(601, 26, 1, 26, 0, 1, NULL, '2016-10-23 07:13:41', '2016-10-23 07:13:41'),
(602, 27, 1, 26, 0, 1, NULL, '2016-10-23 07:13:41', '2016-10-23 07:13:41'),
(603, 28, 1, 26, 0, 1, NULL, '2016-10-23 07:13:41', '2016-10-23 07:13:41'),
(604, 29, 1, 26, 0, 1, NULL, '2016-10-23 07:13:41', '2016-10-23 07:13:41'),
(605, 30, 1, 26, 0, 1, NULL, '2016-10-23 07:13:41', '2016-10-23 07:13:41'),
(606, 31, 1, 26, 0, 1, NULL, '2016-10-23 07:13:41', '2016-10-23 07:13:41'),
(607, 32, 1, 26, 0, 1, NULL, '2016-10-23 07:13:41', '2016-10-23 07:13:41'),
(608, 13, 18, 10, 0, 1, NULL, '2017-02-20 12:24:14', '2017-02-20 12:24:14'),
(609, 21, 18, 10, 0, 1, NULL, '2017-02-20 12:24:14', '2017-02-20 12:24:14'),
(610, 17, 18, 10, 0, 1, NULL, '2017-02-20 12:40:28', '2017-02-20 12:40:28'),
(614, 15, 18, 10, 0, 1, NULL, '2017-02-20 12:43:44', '2017-02-20 12:43:44'),
(615, 1, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(616, 2, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(617, 3, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(618, 4, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(619, 5, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(620, 6, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(621, 7, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(622, 8, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(623, 9, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(624, 10, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(625, 11, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(626, 12, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(627, 13, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(628, 14, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(629, 15, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(630, 16, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(632, 19, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(633, 20, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(634, 21, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(635, 22, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(636, 23, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(637, 24, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(638, 25, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(639, 26, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(640, 27, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(641, 28, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(642, 29, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(643, 30, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(644, 31, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(645, 32, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(646, 33, 12, 10, 0, 1, NULL, '2017-03-09 13:20:23', '2017-03-09 13:20:23'),
(647, 1, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(648, 2, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(649, 3, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(650, 4, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(651, 5, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(652, 6, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(653, 7, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(654, 8, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(655, 9, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(656, 10, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(657, 11, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(658, 13, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(659, 14, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(660, 15, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(661, 16, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(662, 17, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(663, 19, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(664, 20, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(665, 21, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(666, 22, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(667, 23, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(668, 24, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(669, 25, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(670, 26, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(671, 27, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(672, 28, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(673, 29, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(674, 30, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(675, 31, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(676, 32, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(677, 33, 11, 87, 0, 1, NULL, '2017-03-10 08:05:52', '2017-03-10 08:05:52'),
(678, 1, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(679, 2, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(680, 3, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(681, 4, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(682, 5, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(683, 6, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(684, 7, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(685, 8, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(686, 9, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(687, 10, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(688, 11, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(689, 12, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(690, 13, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(691, 14, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(692, 15, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(693, 16, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(694, 17, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(695, 19, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(696, 20, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07');
INSERT INTO `group_permissions` (`id`, `permission_id`, `group_id`, `created_by`, `updated_by`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(697, 21, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(698, 22, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(699, 23, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(700, 24, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(701, 25, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(702, 26, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(703, 27, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(704, 28, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(705, 29, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(706, 30, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(707, 31, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(708, 32, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(709, 33, 10, 87, 0, 1, NULL, '2017-03-10 08:07:07', '2017-03-10 08:07:07'),
(710, 23, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(711, 25, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(712, 30, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(713, 31, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(714, 22, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(715, 26, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(716, 28, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(717, 21, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(718, 32, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(719, 24, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(720, 29, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(721, 14, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(722, 1, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(724, 13, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(725, 2, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(726, 3, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(727, 4, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(728, 5, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(729, 15, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(730, 19, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(731, 12, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(732, 11, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(733, 6, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(734, 7, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(735, 8, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(736, 16, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(737, 20, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(738, 33, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(739, 9, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(740, 10, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(741, 27, 13, 87, 0, 1, NULL, '2017-03-10 08:11:49', '2017-03-10 08:11:49'),
(742, 1, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(743, 2, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(744, 3, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(745, 4, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(746, 5, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(747, 6, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(748, 7, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(749, 8, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(750, 9, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(751, 10, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(752, 11, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(753, 12, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(754, 13, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(755, 14, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(756, 15, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(757, 16, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(758, 17, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(759, 19, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(760, 20, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(761, 21, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(762, 22, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(763, 23, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(764, 24, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(765, 25, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(766, 26, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(767, 27, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(768, 28, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(769, 29, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(770, 30, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(771, 31, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(772, 32, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(773, 33, 12, 87, 0, 1, NULL, '2017-03-13 13:32:04', '2017-03-13 13:32:04'),
(774, 1, 22, 10, 0, 1, NULL, '2017-03-28 09:49:51', '2017-03-28 09:49:51'),
(775, 2, 22, 10, 0, 1, NULL, '2017-03-28 09:49:51', '2017-03-28 09:49:51'),
(776, 3, 22, 10, 0, 1, NULL, '2017-03-28 09:49:51', '2017-03-28 09:49:51'),
(777, 4, 22, 10, 0, 1, NULL, '2017-03-28 09:49:51', '2017-03-28 09:49:51'),
(778, 5, 22, 10, 0, 1, NULL, '2017-03-28 09:49:51', '2017-03-28 09:49:51'),
(779, 6, 22, 10, 0, 1, NULL, '2017-03-28 09:49:51', '2017-03-28 09:49:51'),
(780, 7, 22, 10, 0, 1, NULL, '2017-03-28 09:49:51', '2017-03-28 09:49:51'),
(781, 8, 22, 10, 0, 1, NULL, '2017-03-28 09:49:51', '2017-03-28 09:49:51'),
(782, 9, 22, 10, 0, 1, NULL, '2017-03-28 09:49:51', '2017-03-28 09:49:51'),
(783, 10, 22, 10, 0, 1, NULL, '2017-03-28 09:49:51', '2017-03-28 09:49:51'),
(784, 11, 22, 10, 0, 1, NULL, '2017-03-28 09:49:51', '2017-03-28 09:49:51'),
(785, 12, 22, 10, 0, 1, NULL, '2017-03-28 09:49:51', '2017-03-28 09:49:51'),
(786, 13, 22, 10, 0, 1, NULL, '2017-03-28 09:49:51', '2017-03-28 09:49:51'),
(787, 14, 22, 10, 0, 1, NULL, '2017-03-28 09:49:51', '2017-03-28 09:49:51'),
(788, 15, 22, 10, 0, 1, NULL, '2017-03-28 09:49:51', '2017-03-28 09:49:51'),
(789, 16, 22, 10, 0, 1, NULL, '2017-03-28 09:49:51', '2017-03-28 09:49:51'),
(790, 17, 22, 10, 0, 1, NULL, '2017-03-28 09:49:51', '2017-03-28 09:49:51'),
(791, 18, 22, 10, 0, 1, NULL, '2017-03-28 09:49:52', '2017-03-28 09:49:52'),
(792, 19, 22, 10, 0, 1, NULL, '2017-03-28 09:49:52', '2017-03-28 09:49:52'),
(793, 20, 22, 10, 0, 1, NULL, '2017-03-28 09:49:52', '2017-03-28 09:49:52'),
(794, 21, 22, 10, 0, 1, NULL, '2017-03-28 09:49:52', '2017-03-28 09:49:52'),
(795, 22, 22, 10, 0, 1, NULL, '2017-03-28 09:49:52', '2017-03-28 09:49:52'),
(796, 23, 22, 10, 0, 1, NULL, '2017-03-28 09:49:52', '2017-03-28 09:49:52'),
(797, 24, 22, 10, 0, 1, NULL, '2017-03-28 09:49:52', '2017-03-28 09:49:52'),
(798, 25, 22, 10, 0, 1, NULL, '2017-03-28 09:49:52', '2017-03-28 09:49:52'),
(799, 26, 22, 10, 0, 1, NULL, '2017-03-28 09:49:52', '2017-03-28 09:49:52'),
(800, 27, 22, 10, 0, 1, NULL, '2017-03-28 09:49:52', '2017-03-28 09:49:52'),
(801, 28, 22, 10, 0, 1, NULL, '2017-03-28 09:49:52', '2017-03-28 09:49:52'),
(802, 29, 22, 10, 0, 1, NULL, '2017-03-28 09:49:52', '2017-03-28 09:49:52'),
(803, 30, 22, 10, 0, 1, NULL, '2017-03-28 09:49:52', '2017-03-28 09:49:52'),
(804, 31, 22, 10, 0, 1, NULL, '2017-03-28 09:49:52', '2017-03-28 09:49:52'),
(805, 32, 22, 10, 0, 1, NULL, '2017-03-28 09:49:52', '2017-03-28 09:49:52'),
(806, 33, 22, 10, 0, 1, NULL, '2017-03-28 09:49:52', '2017-03-28 09:49:52');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `slug`, `name`, `created_by`, `updated_by`, `active`, `created_at`, `updated_at`) VALUES
(1, 'EN', 'English', 0, 0, 1, '2016-01-31 13:22:42', '2016-01-31 13:22:42'),
(2, 'Zulu', 'IsiZulu', 0, 0, 1, '2016-01-31 13:22:42', '2016-01-31 13:22:42'),
(3, 'Xhosa', 'IsiXhosa', 0, 0, 1, '2016-01-31 13:22:42', '2016-01-31 13:22:42');

-- --------------------------------------------------------

--
-- Table structure for table `location_tabs`
--

CREATE TABLE `location_tabs` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0000-00-00 00:00:00',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(11) DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `location_tabs`
--

INSERT INTO `location_tabs` (`id`, `slug`, `name`, `active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'KZN', 'Ballito', 1, 0, 0, '2016-01-31 11:22:43', '2016-01-31 11:22:43'),
(2, 'GT', 'Umhlanga', 1, 0, 0, '2016-01-31 11:22:43', '2016-01-31 11:22:43'),
(3, 'WC', 'Plett', 1, 0, 0, '2016-01-31 11:22:43', '2016-01-31 11:22:43'),
(4, 'EC', 'Margate', 1, 0, 0, '2016-01-31 11:22:43', '2016-01-31 11:22:43'),
(5, 'NC', 'J-Bay', 1, 0, 0, '2016-01-31 11:22:43', '2016-01-31 11:22:43');

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `venue` int(11) NOT NULL,
  `file_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_attendees`
--

CREATE TABLE `meetings_attendees` (
  `id` int(10) UNSIGNED NOT NULL,
  `meeting` int(11) NOT NULL,
  `attendee` int(11) NOT NULL,
  `phonebook` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `invited` int(11) NOT NULL,
  `attended` int(11) NOT NULL,
  `accepted` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_facilitators`
--

CREATE TABLE `meetings_facilitators` (
  `id` int(10) UNSIGNED NOT NULL,
  `meeting` int(11) NOT NULL,
  `facilitator` int(11) NOT NULL,
  `addressbook` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_files`
--

CREATE TABLE `meetings_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `meeting_id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `addressbook` int(11) NOT NULL,
  `file_note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_venues`
--

CREATE TABLE `meetings_venues` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meetings_venues`
--

INSERT INTO `meetings_venues` (`id`, `name`, `address`, `created_by`, `updated_by`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Siyaleader offices ', '47 turners Ave', 11, 0, 1, '2016-09-15 07:37:13', '2016-09-15 07:37:13');

-- --------------------------------------------------------

--
-- Table structure for table `messagenotifications`
--

CREATE TABLE `messagenotifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `case_escalator_id` int(11) DEFAULT NULL,
  `from` int(11) DEFAULT NULL,
  `to` int(11) DEFAULT NULL,
  `case_id` int(11) DEFAULT NULL,
  `replaymessge` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messagenotifications`
--

INSERT INTO `messagenotifications` (`id`, `created_at`, `updated_at`, `title`, `message`, `case_escalator_id`, `from`, `to`, `case_id`, `replaymessge`) VALUES
(1, '2017-02-20 14:21:16', '2017-02-20 14:21:16', '51', 'lastime', 51, 76, 10, 51, NULL),
(2, '2017-02-20 15:10:05', '2017-02-20 15:10:05', '52', 'helllo ', 10, 10, 76, 52, NULL),
(3, '2017-02-20 15:12:07', '2017-02-20 15:12:07', '53', 'bey', 53, 10, 10, 53, NULL),
(4, '2017-02-22 16:46:27', '2017-02-22 16:46:27', '56', 'new Resolution ', 10, 10, 10, 56, NULL),
(5, '2017-02-23 06:43:34', '2017-02-23 06:43:34', '57', 'URGENT!!', 57, 10, 76, 57, NULL),
(6, '2017-02-23 06:54:50', '2017-02-23 06:54:50', '58', 'We Need  to  make  change', 58, 10, 10, 58, NULL),
(7, '2017-02-23 06:58:02', '2017-02-23 06:58:02', '59', 'Post  Resolution', 59, 10, 10, 59, NULL),
(8, '2017-02-23 07:01:23', '2017-02-23 07:01:23', '60', 'Good  luck', 60, 10, 10, 60, NULL),
(9, '2017-02-23 07:11:15', '2017-02-23 07:11:15', '61', 'Re   News  Report', 61, 10, 10, 61, NULL),
(10, '2017-02-23 07:22:13', '2017-02-23 07:22:13', '62', 'URGENT', 62, 10, 76, 62, NULL),
(11, '2017-02-23 14:24:18', '2017-02-23 14:24:18', '66', 'Please fix', 66, 72, 72, 66, NULL),
(12, '2017-02-23 15:05:51', '2017-02-23 15:05:51', '67', 'null', 67, 72, 11, 67, NULL),
(13, '2017-02-23 17:19:10', '2017-02-23 17:19:10', '68', 'null', 68, 72, 72, 68, NULL),
(14, '2017-02-25 13:36:13', '2017-02-25 13:36:13', '69', 'null', 69, 72, 72, 69, NULL),
(15, '2017-03-10 14:28:47', '2017-03-10 14:28:47', '528', 'Test', 10, 10, 72, 528, NULL),
(16, '2017-03-17 11:31:23', '2017-03-17 11:31:23', '531', 'Test the system don\'t worry about this case ', 87, 87, 88, 531, NULL),
(17, '2017-03-20 15:49:12', '2017-03-20 15:49:12', '544', 'we are  more  than  Happy  for  you', 544, 10, 10, 544, NULL),
(18, '2017-03-22 12:11:29', '2017-03-22 12:11:29', '64', 'alkxnkla', 10, 10, 10, 64, NULL),
(19, '2017-03-22 14:36:30', '2017-03-22 14:36:30', '565', 'fgdf', 565, 10, 89, 565, NULL),
(20, '2017-03-23 06:44:24', '2017-03-23 06:44:24', '566', 'null', 566, 10, 10, 566, NULL),
(21, '2017-03-23 07:20:12', '2017-03-23 07:20:12', '567', 'null', 567, 10, 69, 567, NULL),
(22, '2017-03-23 07:20:23', '2017-03-23 07:20:23', '568', 'null', 568, 10, 0, 568, NULL),
(23, '2017-03-24 06:00:43', '2017-03-24 06:00:43', '569', 'Testing system on Friday 24 March 2017', 569, 87, 87, 569, NULL),
(24, '2017-03-24 06:01:17', '2017-03-24 06:01:17', '570', 'null', 570, 87, 0, 570, NULL),
(25, '2017-03-24 09:22:24', '2017-03-24 09:22:24', '571', 'hello wold', 571, 10, 88, 571, NULL),
(26, '2017-03-24 09:26:44', '2017-03-24 09:26:44', '572', 'speculation', 572, 10, 62, 572, NULL),
(27, '2017-03-24 09:45:32', '2017-03-24 09:45:32', 'undefined', NULL, 0, 0, 0, 0, 'nnmmm'),
(28, '2017-03-24 09:45:33', '2017-03-24 09:45:33', 'undefined', NULL, 0, 0, 0, 0, 'nnmmm'),
(29, '2017-03-24 09:46:10', '2017-03-24 09:46:10', 'undefined', NULL, 0, 0, 0, 0, 'hhhhh'),
(30, '2017-03-24 09:46:10', '2017-03-24 09:46:10', 'undefined', NULL, 0, 0, 0, 0, 'hhhhh'),
(31, '2017-03-27 10:18:38', '2017-03-27 10:18:38', '5', 'HELLO', 5, 105, 10, 5, NULL),
(32, '2017-03-28 08:59:59', '2017-03-28 08:59:59', '6', 'New message', 6, 10, 96, 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message_type` int(11) NOT NULL,
  `case_id` int(11) NOT NULL,
  `read` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `online` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2017_04_23_145359_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `moredetails`
--

CREATE TABLE `moredetails` (
  `ID_NUMBER` char(13) NOT NULL,
  `BIRTH_PLACE` varchar(30) NOT NULL,
  `ADDRESS` varchar(50) NOT NULL,
  `WEIGHT` varchar(20) DEFAULT NULL,
  `HEIGHT` varchar(20) DEFAULT NULL,
  `LANGUAGE SPOKEN` varchar(20) NOT NULL,
  `MARITAL STATUS` varchar(20) NOT NULL,
  `SCARS` varchar(20) NOT NULL,
  `TATTOO` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `municipalities`
--

CREATE TABLE `municipalities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `district` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `municipalities`
--

INSERT INTO `municipalities` (`id`, `name`, `slug`, `district`, `created_by`, `updated_by`, `active`, `created_at`, `updated_at`, `code`) VALUES
(1, 'Matzikama', 'WC011', 1, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '160'),
(2, 'Cederberg', 'WC012', 1, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '161'),
(3, 'Bergrivier', 'WC013', 1, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '162'),
(4, 'Saldanha Bay', 'WC014', 1, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '163'),
(5, 'Swartland', 'WC015', 1, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '164'),
(6, 'Witzenberg', 'WC022', 2, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '165'),
(7, 'Drakenstein', 'WC023', 2, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '166'),
(8, 'Stellenbosch', 'WC024', 2, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '167'),
(9, 'Breede Valley', 'WC025', 2, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '168'),
(10, 'Langeberg', 'WC026', 2, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '169'),
(11, 'Theewaterskloof', 'WC031', 3, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '171'),
(12, 'Overstrand', 'WC032', 3, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '172'),
(13, 'Cape Agulhas', 'WC033', 3, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '173'),
(14, 'Swellendam', 'WC034', 3, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '170'),
(15, 'Kannaland', 'WC041', 4, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '174'),
(16, 'Hessequa', 'WC042', 4, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '175'),
(17, 'Mossel Bay', 'WC043', 4, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '176'),
(18, 'George', 'WC044', 4, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '177'),
(19, 'Oudtshoom', 'WC045', 4, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '178'),
(20, 'Bitou', 'WC047', 4, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '179'),
(21, 'Knysna', 'WC048', 4, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '180'),
(22, 'Laingsburg', 'WC051', 5, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '181'),
(23, 'Prince Albert', 'WC052', 5, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '182'),
(24, 'Beaufort West', 'WC053', 5, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '183'),
(25, 'City of Cape Town', 'CPT', 6, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '199'),
(26, 'Camdeboo', 'EC101', 7, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '261'),
(27, 'Blue Crane Route', 'EC102', 7, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '262'),
(28, 'Ikwezi', 'EC103', 7, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '263'),
(29, 'Makana', 'EC104', 7, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '264'),
(30, 'Ndlambe', 'EC105', 7, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '265'),
(31, 'Sundays River Valley', 'EC106', 7, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '266'),
(32, 'Baviaans', 'EC107', 7, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '267'),
(33, 'Kouga', 'EC108', 7, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '268'),
(34, 'Kou-Kamma', 'EC109', 7, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '269'),
(35, 'Mbhashe', 'EC121', 8, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '270'),
(36, 'Mnquma', 'EC122', 8, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '271'),
(37, 'Great Kei', 'EC123', 8, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '272'),
(38, 'Amahlathi', 'EC124', 8, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '273'),
(39, 'Ngqushwa', 'EC126', 8, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '274'),
(40, 'Nkonkobe', 'EC127', 8, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '276'),
(41, 'Nxuba', 'EC128', 8, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '277'),
(42, 'Inxuba Yethemba', 'EC131', 9, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '278'),
(43, 'Tsolwana', 'EC132', 9, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '279'),
(44, 'Inkwanca', 'EC133', 9, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '280'),
(45, 'Lukanji', 'EC134', 9, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '281'),
(46, 'Intsika Yethu', 'EC135', 9, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '282'),
(47, 'Emalahleni', 'EC136', 9, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '283'),
(48, 'Engcobo', 'EC137', 9, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '284'),
(49, 'Sakhisizwe', 'EC138', 9, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '285'),
(50, 'Elundini', 'EC141', 10, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '286'),
(51, 'Senqu', 'EC142', 10, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '287'),
(52, 'Maletswai', 'EC143', 10, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '288'),
(53, 'Gariep', 'EC144', 10, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '289'),
(54, 'Ngquza Hill', 'EC153', 11, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '290'),
(55, 'Port St Johns', 'EC154', 11, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '291'),
(56, 'Nyandeni', 'EC155', 11, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '292'),
(57, 'Mhlontlo', 'EC156', 11, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '293'),
(58, 'King Sabata Dalindyebo', 'EC157', 11, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '294'),
(59, 'Matatiele', 'EC441', 12, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '295'),
(60, 'Umzimvubu', 'EC442', 12, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '296'),
(61, 'Mbizana', 'EC443', 12, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '297'),
(62, 'Ntabankulu', 'EC444', 12, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '298'),
(63, 'Buffalo City', 'BUF', 13, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '260'),
(64, 'Nelson Mandela Bay', 'NMA', 14, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '299'),
(65, 'Richtersveld', 'NC061', 15, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '363'),
(66, 'Nama Khoi', 'NC062', 15, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '364'),
(67, 'Kamiesberg', 'NC064', 15, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '365'),
(68, 'Hantam', 'NC065', 15, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '366'),
(69, 'Karoo Hoogland', 'NC066', 15, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '367'),
(70, 'Khâi-Ma', 'NC067', 15, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '368'),
(71, 'Ubuntu', 'NC071', 16, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '369'),
(72, 'Umsobomvu', 'NC072', 16, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '370'),
(73, 'Emthanjeni', 'NC073', 16, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '371'),
(74, 'Kareeberg', 'NC074', 16, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '372'),
(75, 'Renosterberg', 'NC075', 16, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '373'),
(76, 'Thembelihle', 'NC076', 16, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '374'),
(77, 'Siyathemba', 'NC077', 16, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '375'),
(78, 'Siyancuma', 'NC078', 16, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '376'),
(79, 'Mier', 'NC081', 17, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '377'),
(80, 'Kai !Garib', 'NC082', 17, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '378'),
(81, 'Khara Hais', 'NC083', 17, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '379'),
(82, '!Kheis', 'NC084', 17, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '380'),
(83, 'Tsantsabane', 'NC085', 17, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '381'),
(84, 'Kgatelopele', 'NC086', 17, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '382'),
(85, 'Sol Plaatjie', 'NC091', 18, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '383'),
(86, 'Dikgatlong', 'NC092', 18, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '384'),
(87, 'Magareng', 'NC093', 18, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '385'),
(88, 'Phokwana', 'NC094', 18, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '386'),
(89, 'Joe Morolong', 'NC451', 19, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '360'),
(90, 'Ga-Segonyana', 'NC452', 19, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '361'),
(91, 'Gamagara', 'NC453', 19, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '362'),
(92, 'Letsemeng', 'FS161', 20, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '460'),
(93, 'Kopanong', 'FS162', 20, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '461'),
(94, 'Mohokare', 'FS163', 20, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '462'),
(95, 'Naledi', 'FS164', 20, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '463'),
(96, 'Masilonyana', 'FS181', 21, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '464'),
(97, 'Tokologo', 'FS182', 21, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '465'),
(98, 'Tswelopepe', 'FS183', 21, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '466'),
(99, 'Matjhabeng', 'FS184', 21, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '467'),
(100, 'Nala', 'FS185', 21, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '468'),
(101, 'Setsoto', 'FS191', 22, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '469'),
(102, 'Dihlabeng', 'FS192', 22, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '470'),
(103, 'Nketoana', 'FS193', 22, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '471'),
(104, 'Maluti a Phofung', 'FS194', 22, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '472'),
(105, 'Phumelela', 'FS195', 22, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '473'),
(106, 'Mantsopa', 'FS196', 22, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '474'),
(107, 'Moqhaka', 'FS201', 23, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '475'),
(108, 'Ngwathe', 'FS203', 23, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '477'),
(109, 'Metsimaholo', 'FS204', 23, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '478'),
(110, 'Mafube', 'FS205', 23, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '479'),
(111, 'Mangaung', 'MAN', 24, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '499'),
(112, 'Vulumehle', 'KZN211', 25, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '560'),
(113, 'Umdoni', 'KZN212', 25, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '561'),
(114, 'Umzumbe', 'KZN213', 25, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '503'),
(115, 'UMuziwabantu', 'KZN214', 25, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '504'),
(116, 'Ezingoleni', 'KZN215', 25, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '505'),
(117, 'Hibiscus Coast', 'KZN216', 25, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '506'),
(118, 'uMshwathi', 'KZN221', 26, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '562'),
(119, 'uMngeni', 'KZN222', 26, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '563'),
(120, 'Mpofana', 'KZN223', 26, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '564'),
(121, 'Impendle', 'KZN224', 26, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '565'),
(122, 'The Msunduzi', 'KZN225', 26, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '566'),
(123, 'Mkhambathini', 'KZN226', 26, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '567'),
(124, 'Richmond', 'KZN227', 26, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '568'),
(125, 'Emnambithi/Ladysmith', 'KZN232', 27, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '514'),
(126, 'Indaka', 'KZN233', 27, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '569'),
(127, 'Umtshezi', 'KZN234', 27, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '570'),
(128, 'Okhahlamba', 'KZN235', 27, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '571'),
(129, 'Imbabazane', 'KZN236', 27, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '573'),
(130, 'Endumeni', 'KZN241', 28, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '574'),
(131, 'Nqutu', 'KZN242', 28, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '575'),
(132, 'Msinga', 'KZN244', 28, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '576'),
(133, 'Umvoti', 'KZN245', 28, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '577'),
(134, 'Newcastle', 'KZN252', 29, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '524'),
(135, 'Emadlangeni', 'KZN253', 29, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '525'),
(136, 'Dannhauser', 'KZN254', 29, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '526'),
(137, 'eDumbe', 'KZN261', 30, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '578'),
(138, 'UPhongolo', 'KZN262', 30, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '579'),
(139, 'Abaqulusi', 'KZN263', 30, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '529'),
(140, 'Nongoma', 'KZN265', 30, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '580'),
(141, 'Ulundi', 'KZN266', 30, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '581'),
(142, 'Umhlabuyalingana', 'KZN271', 31, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '582'),
(143, 'Jozini', 'KZN272', 31, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '583'),
(144, 'The Big 5 False Bay', 'KZN273', 31, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '584'),
(145, 'Hlabisa', 'KZN274', 31, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '585'),
(146, 'Mtubatuba', 'KZN275', 31, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '586'),
(147, 'Mfolozi', 'KZN281', 32, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '587'),
(148, 'uMhlathuze', 'KZN282', 32, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '538'),
(149, 'Ntambanana', 'KZN283', 32, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '588'),
(150, 'uMlalazi', 'KZN284', 32, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '589'),
(151, 'Mthonjaneni', 'KZN285', 32, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '590'),
(152, 'Nkandla', 'KZN286', 32, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '542'),
(153, 'Mandeni', 'KZN291', 33, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '591'),
(154, 'kwaDukuza', 'KZN292', 33, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '592'),
(155, 'Ndwedwe', 'KZN293', 33, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '593'),
(156, 'Maphumulo', 'KZN294', 33, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '546'),
(157, 'Ingwe', 'KZN431', 34, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '594'),
(158, 'kwa Sani', 'KZN432', 34, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '595'),
(159, 'Greater Kokstad', 'KZN433', 34, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '596'),
(160, 'Ubuhlebezwe', 'KZN434', 34, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '597'),
(161, 'Umzimkhulu', 'KZN435', 34, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '598'),
(162, 'eThekwini', 'ETH', 35, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '599'),
(163, 'Moretele', 'NW371', 36, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '660'),
(164, 'Madibeng', 'NW372', 36, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '661'),
(165, 'Rustenburg', 'NW373', 36, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '662'),
(166, 'kgetlengrivier', 'NW374', 36, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '663'),
(167, 'Moses Kotane', 'NW375', 36, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '664'),
(168, 'Ratlou', 'NW381', 37, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '665'),
(169, 'Tswaing', 'NW382', 37, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '666'),
(170, 'Mafikeng', 'NW383', 37, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '667'),
(171, 'Ditsobotla', 'NW384', 37, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '668'),
(172, 'Ramotshere Moiloa', 'NW385', 37, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '669'),
(173, 'Naledi', 'NW392', 38, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '670'),
(174, 'Mamusa', 'NW393', 38, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '671'),
(175, 'Greater Taung', 'NW394', 38, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '672'),
(176, 'Lekwa-Teemane', 'NW396', 38, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '673'),
(177, 'Kagisano/Molopo', 'NW397', 38, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '674'),
(178, 'Ventersdorp', 'NW401', 39, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '675'),
(179, 'Tkokwe City Council', 'NW402', 39, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '676'),
(180, 'City of Matlosana', 'NW403', 39, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '677'),
(181, 'Maquassi Hills', 'NW404', 39, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '678'),
(182, 'Emfuleni', 'GT421', 40, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '760'),
(183, 'Midvaal', 'GT422', 40, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '761'),
(184, 'Lesedi', 'GT423', 40, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '762'),
(185, 'Mogale City', 'GT481', 41, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '763'),
(186, 'Randfontein', 'GT482', 41, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '764'),
(187, 'Westonaria', 'GT483', 41, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '765'),
(188, 'Merafong City', 'GT484', 41, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '766'),
(189, 'Ekurhuleni', 'EKU', 42, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '797'),
(190, 'City of Johannesburg', 'JHB', 43, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '798'),
(191, 'City of Tshwane', 'TSH', 44, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '799'),
(192, 'Albert Luthuli', 'MP301', 45, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '860'),
(193, 'Msukaligwa', 'MP302', 45, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '861'),
(194, 'Mkhondo', 'MP303', 45, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '862'),
(195, 'Pixley Ka Seme', 'MP304', 45, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '863'),
(196, 'Lekwa', 'MP305', 45, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '864'),
(197, 'Dipaleseng', 'MP306', 45, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '865'),
(198, 'Govan Mbeki', 'MP307', 45, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '866'),
(199, 'Victor Khanye', 'MP311', 46, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '867'),
(200, 'Emalahleni', 'MP312', 46, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '868'),
(201, 'Steve Tshwete', 'MP313', 46, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '869'),
(202, 'Emakhazeni', 'MP314', 46, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '870'),
(203, 'Thembisile', 'MP315', 46, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '871'),
(204, 'Dr JS Moroka', 'MP316', 46, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '872'),
(205, 'Thaba Chweu', 'MP321', 47, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '873'),
(206, 'Mbombeka', 'MP322', 47, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '874'),
(207, 'Umjindi', 'MP323', 47, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '875'),
(208, 'Nkomozi', 'MP324', 47, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '876'),
(209, 'Bushbuckridge', 'MP325', 47, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '877'),
(210, 'Greater Giyani', 'LIM331', 48, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '960'),
(211, 'Greater Letaba', 'LIM332', 48, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '961'),
(212, 'Greater Tzaneen', 'LIM333', 48, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '962'),
(213, 'Ba-Phalaborwa', 'LIM334', 48, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '963'),
(214, 'Maruleng', 'LIM335', 48, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '964'),
(215, 'Musina', 'LIM341', 49, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '967'),
(216, 'Mutale', 'LIM342', 49, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '965'),
(217, 'Thulamela', 'LIM343', 49, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '966'),
(218, 'Makhado', 'LIM344', 49, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '968'),
(219, 'Bloubert', 'LIM351', 50, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '969'),
(220, 'Aganang', 'LIM352', 50, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '970'),
(221, 'Molemole', 'LIM353', 50, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '973'),
(222, 'Polokwana', 'LIM354', 50, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '974'),
(223, 'Lepele-Nkumpi', 'LIM355', 50, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '976'),
(224, 'Thabazimbi', 'LIM361', 51, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '977'),
(225, 'Lephalale', 'LIM362', 51, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '978'),
(226, 'Mookgopong', 'LIM364', 51, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '979'),
(227, 'Modimolle', 'LIM365', 51, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '980'),
(228, 'Bela-Bela', 'LIM366', 51, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '981'),
(229, 'Mogalakwena', 'LIM367', 51, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '982'),
(230, 'Ephraim Mogale', 'LIM471', 52, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '983'),
(231, 'Elias Motsoaledi', 'LIM472', 52, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '984'),
(232, 'Makhuduthamaga', 'LIM473', 52, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '985'),
(233, 'Fetakgomo', 'LIM474', 52, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '986'),
(234, 'Greater Tubatse', 'LIM475', 52, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '987');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `CASE_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CASE_NOTE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USERNAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('rupert@siyaleader.net', 'd08621c7843ea51bdc9527e21be89544dfd00b7d6adb7b2e2743f58dd3dc3885', '2017-02-16 07:28:01'),
('nomusa@siyaleader.net', '83f6af3ecdebfff27202b0bbc952912ccc5b13d7fbd51201e8090d658133ed07', '2017-02-16 07:28:25'),
('sandile@siyaleader.net', '876c4a21bc9a49ec98a03676212f0017d2e6e8840c6b9639170dcfaf007873e5', '2017-03-09 09:43:53'),
('paulsartorius@gmail.com', 'b3e4b82ce01edd76aeb2e0db09318647dca9e5d1205ab9a9aeb7f8b340b93cf4', '2017-03-23 17:03:01');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `created_by`, `updated_by`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'View Affiliations', 1, 1, 1, NULL, '2016-06-16 08:10:56', '0000-00-00 00:00:00'),
(2, 'View Cases Priorities', 1, 1, 1, NULL, '2016-06-16 08:10:56', '0000-00-00 00:00:00'),
(3, 'View Cases Statuses', 1, 1, 1, NULL, '2016-06-16 08:10:56', '0000-00-00 00:00:00'),
(4, 'View Departments', 1, 1, 1, NULL, '2016-06-16 08:10:56', '0000-00-00 00:00:00'),
(5, 'View Meetings', 1, 1, 1, NULL, '2016-06-16 08:10:56', '0000-00-00 00:00:00'),
(6, 'View Positions', 1, 1, 1, NULL, '2016-06-16 08:10:56', '0000-00-00 00:00:00'),
(7, 'View Provinces', 1, 1, 1, NULL, '2016-06-16 08:10:56', '0000-00-00 00:00:00'),
(8, 'View Relationships', 1, 1, 1, NULL, '2016-06-16 08:10:56', '0000-00-00 00:00:00'),
(9, 'View User Groups', 1, 1, 1, NULL, '2016-06-16 08:10:56', '0000-00-00 00:00:00'),
(10, 'View Users', 1, 1, 1, NULL, '2016-06-16 08:11:57', '0000-00-00 00:00:00'),
(11, 'View POI', 1, 1, 1, NULL, '2016-06-16 08:14:03', '0000-00-00 00:00:00'),
(12, 'View Permissions', 1, 1, 1, NULL, '2016-06-16 08:14:07', '0000-00-00 00:00:00'),
(13, 'View Calendar', 1, 1, 1, NULL, '2016-06-16 08:14:09', '0000-00-00 00:00:00'),
(14, 'View Administration', 1, 1, 1, NULL, '2016-06-16 08:14:11', '0000-00-00 00:00:00'),
(15, 'View My Cases', 1, 1, 1, NULL, '2016-06-16 08:14:47', '2016-06-16 18:51:15'),
(16, 'View Reports', 1, 1, 1, NULL, '2016-06-16 08:15:16', '2016-06-16 18:51:06'),
(17, 'View Allocated/Referred Cases', 1, 1, 1, NULL, '2016-06-16 08:15:16', '2016-06-16 18:51:06'),
(18, 'View Pending Allocation Cases', 1, 1, 1, NULL, '2016-06-16 08:15:16', '2016-06-16 18:51:06'),
(19, 'View Pending Closure Cases', 1, 1, 1, NULL, '2016-06-16 08:15:16', '2016-06-16 18:51:06'),
(20, 'View Resolved Cases', 1, 1, 1, NULL, '2016-06-16 08:15:16', '2016-06-16 18:51:06'),
(21, 'Create Case', 1, 1, 1, NULL, '2016-06-16 08:15:16', '2016-06-16 18:51:06'),
(22, 'Allocate Case', 1, 1, 1, NULL, '2016-06-16 08:15:16', '2016-06-16 18:51:06'),
(23, 'Accept Case', 1, 1, 1, NULL, '2016-06-16 08:15:16', '2016-06-16 18:51:06'),
(24, 'Refer Case', 1, 1, 1, NULL, '2016-06-16 08:15:16', '2016-06-16 18:51:06'),
(25, 'Add Case Note', 1, 0, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Attach Case File', 1, 0, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'View Workflow', 1, 0, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Close Case', 1, 0, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Request Case Closure', 1, 0, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Add POI', 1, 0, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Add User', 0, 0, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Edit User', 0, 0, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'View Trucks', 1, 1, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `persistences`
--

CREATE TABLE `persistences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personaldetails`
--

CREATE TABLE `personaldetails` (
  `CASE_ID` int(100) NOT NULL,
  `FIRST_NAME` varchar(20) NOT NULL,
  `SURNAME` varchar(20) NOT NULL,
  `ID_NUMBER` char(13) NOT NULL,
  `NATIONALITY` varchar(20) NOT NULL,
  `ARREST_RECORD` varchar(160) NOT NULL,
  `CRIME_TYPE` varchar(20) NOT NULL,
  `ADD_NOTE` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phone_brands`
--

CREATE TABLE `phone_brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_networks`
--

CREATE TABLE `phone_networks` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_types`
--

CREATE TABLE `phone_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `poi`
--

CREATE TABLE `poi` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gender` int(11) NOT NULL,
  `nationality` int(11) NOT NULL,
  `nickname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `drivers_licence` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `marital_status_id` int(11) NOT NULL,
  `address_home` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_work` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number_2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number_3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ethnic_group_id` int(11) NOT NULL,
  `birth_place` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `weight` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `height` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `scars` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tattoo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `crime_type_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `crime_type_2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `crime_type_3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `crime_type_4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `crime_type_5` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `arrest_record_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `arrest_record_2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `arrest_record_3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `arrest_record_4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `arrest_record_5` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `credit_record` text COLLATE utf8_unicode_ci NOT NULL,
  `property_owned_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `property_owned_2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `property_owned_3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `property_rented_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `property_rented_2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `property_rented_3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dependants` int(11) NOT NULL,
  `travel_movements` text COLLATE utf8_unicode_ci NOT NULL,
  `employment_history` text COLLATE utf8_unicode_ci NOT NULL,
  `bank_details_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bank_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bank_holder_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bank_branch_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bank_account_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `business_interest` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_5` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `document_type` int(11) DEFAULT NULL,
  `passport_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `has_driver_licence` int(11) DEFAULT NULL,
  `tax_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `poi`
--

INSERT INTO `poi` (`id`, `name`, `surname`, `id_number`, `gender`, `nationality`, `nickname`, `language`, `drivers_licence`, `marital_status_id`, `address_home`, `address_work`, `contact_number_1`, `contact_number_2`, `contact_number_3`, `email`, `ethnic_group_id`, `birth_place`, `weight`, `height`, `scars`, `tattoo`, `picture`, `crime_type_1`, `crime_type_2`, `crime_type_3`, `crime_type_4`, `crime_type_5`, `arrest_record_1`, `arrest_record_2`, `arrest_record_3`, `arrest_record_4`, `arrest_record_5`, `credit_record`, `property_owned_1`, `property_owned_2`, `property_owned_3`, `property_rented_1`, `property_rented_2`, `property_rented_3`, `dependants`, `travel_movements`, `employment_history`, `bank_details_id`, `created_by`, `updated_by`, `active`, `remember_token`, `created_at`, `updated_at`, `bank_name`, `bank_holder_name`, `bank_branch_code`, `bank_account_number`, `business_interest`, `account_1`, `account_2`, `account_3`, `account_4`, `account_5`, `document_type`, `passport_number`, `has_driver_licence`, `tax_number`) VALUES
(1, 'Rupert', 'Meyer', '', 1, 243, '', '1', '', 0, '', '', '', '', '', '', 3, '', '93Kg', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 0, 10, 0, 1, NULL, '2017-02-15 12:00:48', '2017-02-15 12:01:49', '', '', '', '', '', '', '', '', '', '', 0, '', 0, ''),
(2, 'Richard', 'Hall', '', 1, 243, 'Rich', '1', '', 0, '', '', '', '', '', '', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 0, 10, 0, 1, NULL, '2017-02-15 12:03:11', '2017-02-15 12:03:11', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0, ''),
(3, 'Hylton', 'Warman', '', 1, 243, '', '1', '', 0, '', '', '', '', '', '', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 0, 10, 0, 1, NULL, '2017-02-15 12:03:43', '2017-02-15 12:03:43', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0, ''),
(4, 'Nicola', '', '', 2, 12, '', '1', '', 0, '', '', '', '', '', '', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 0, 10, 0, 1, NULL, '2017-02-15 12:04:56', '2017-02-15 12:04:56', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0, ''),
(5, 'Bruce', 'Brodie', '', 1, 1, '', '1', '', 0, '', '', '', '', '', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 0, 10, 0, 1, NULL, '2017-02-15 12:05:23', '2017-02-21 12:43:58', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `poi_addresses`
--

CREATE TABLE `poi_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL,
  `line_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line_2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line_3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line_4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `poi_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `company` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `period` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `route` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locality` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `administrative_area_level_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gps_lat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gps_lng` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_seen` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `poi_address_types`
--

CREATE TABLE `poi_address_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `poi_associates`
--

CREATE TABLE `poi_associates` (
  `id` int(10) UNSIGNED NOT NULL,
  `poi_id` int(11) NOT NULL,
  `associate_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `association_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `poi_associates`
--

INSERT INTO `poi_associates` (`id`, `poi_id`, `associate_id`, `created_by`, `updated_by`, `active`, `remember_token`, `created_at`, `updated_at`, `association_type`) VALUES
(1, 1, 3, 10, 0, 1, NULL, '2017-02-15 12:07:15', '2017-02-15 12:07:15', 'Senior Poacher Deluxe'),
(2, 1, 5, 10, 0, 1, NULL, '2017-02-15 12:08:00', '2017-02-15 12:08:00', 'Gun Carrier'),
(3, 4, 5, 10, 0, 1, NULL, '2017-02-15 12:11:49', '2017-02-15 12:11:49', 'Friend');

-- --------------------------------------------------------

--
-- Table structure for table `poi_bank_details`
--

CREATE TABLE `poi_bank_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `poi_id` int(11) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `account_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `branch_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_5` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `poi_contact_numbers`
--

CREATE TABLE `poi_contact_numbers` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL,
  `contact_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `poi_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `imei_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `poi_contact_numbers`
--

INSERT INTO `poi_contact_numbers` (`id`, `type`, `contact_number`, `poi_id`, `active`, `created_at`, `updated_at`, `imei_number`, `phone_type`) VALUES
(5, 1, '012321245', 5, 1, '2017-02-21 12:46:05', '2017-02-21 12:46:05', NULL, NULL),
(6, 1, '', 5, 1, '2017-02-21 12:46:05', '2017-02-21 12:46:05', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `poi_criminal_records`
--

CREATE TABLE `poi_criminal_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `police_station` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `investigation_officer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `investigation_officer_mobile_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sentence` text COLLATE utf8_unicode_ci NOT NULL,
  `criminal_record_date` datetime NOT NULL,
  `poi_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `poi_criminal_records`
--

INSERT INTO `poi_criminal_records` (`id`, `description`, `police_station`, `investigation_officer`, `investigation_officer_mobile_number`, `sentence`, `criminal_record_date`, `poi_id`, `created_by`, `updated_by`, `active`, `created_at`, `updated_at`) VALUES
(3, 'theft', 'jguyfv', 'kjbiugbu', 'lknpkn', '', '2017-07-01 00:00:00', 5, 10, 0, 1, '2017-02-21 12:46:05', '2017-02-21 12:46:05'),
(4, '', '', '', '', '', '0000-00-00 00:00:00', 5, 10, 0, 1, '2017-02-21 12:46:05', '2017-02-21 12:46:05');

-- --------------------------------------------------------

--
-- Table structure for table `poi_doc_type`
--

CREATE TABLE `poi_doc_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `poi_driver_licences`
--

CREATE TABLE `poi_driver_licences` (
  `id` int(10) UNSIGNED NOT NULL,
  `poi_id` int(11) NOT NULL,
  `driver_licence_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `drivers_licence_date_issued` datetime NOT NULL,
  `drivers_licence_expiry_date` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `poi_pictures`
--

CREATE TABLE `poi_pictures` (
  `id` int(10) UNSIGNED NOT NULL,
  `poi_id` int(11) NOT NULL,
  `poi_picture_type` int(11) NOT NULL,
  `poi_picture_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `notes` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `poi_pictures`
--

INSERT INTO `poi_pictures` (`id`, `poi_id`, `poi_picture_type`, `poi_picture_url`, `created_by`, `updated_by`, `active`, `remember_token`, `created_at`, `updated_at`, `notes`) VALUES
(1, 1, 1, 'images/poi/profile/1/legendary.jpg', 10, 0, 1, NULL, '2017-02-15 12:00:48', '2017-02-15 12:02:12', ''),
(2, 2, 1, 'images/poi/profile/no_photo.png', 10, 0, 1, NULL, '2017-02-15 12:03:11', '2017-02-15 12:03:11', NULL),
(3, 3, 1, 'images/poi/profile/no_photo.png', 10, 0, 1, NULL, '2017-02-15 12:03:43', '2017-02-15 12:03:43', NULL),
(4, 4, 1, 'images/poi/profile/no_photo.png', 10, 0, 1, NULL, '2017-02-15 12:04:56', '2017-02-15 12:04:56', NULL),
(5, 5, 1, 'images/poi/profile/no_photo.png', 10, 0, 1, NULL, '2017-02-15 12:05:23', '2017-02-15 12:05:23', NULL),
(6, 5, 2, 'images/poi/scars/5/', 10, 0, 1, NULL, '2017-02-21 12:43:58', '2017-02-21 12:43:58', '');

-- --------------------------------------------------------

--
-- Table structure for table `poi_pictures_types`
--

CREATE TABLE `poi_pictures_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `poi_travel_movements`
--

CREATE TABLE `poi_travel_movements` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `poi_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `gps_lat` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gps_lng` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_seen` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `poi_travel_movements`
--

INSERT INTO `poi_travel_movements` (`id`, `name`, `poi_id`, `created_by`, `updated_by`, `gps_lat`, `gps_lng`, `active`, `created_at`, `updated_at`, `date_seen`) VALUES
(3, '12 Cohen Avenue, Berea, South Africa', 1, 10, 0, '-29.860097', '30.999792999999954', 1, '2017-02-15 12:02:12', '2017-02-15 12:02:12', '0000-00-00'),
(4, '43 Turners Avenue, Berea, South Africa', 1, 10, 0, '-29.8597802', '31.005680900000016', 1, '2017-02-15 12:02:12', '2017-02-15 12:02:12', '0000-00-00'),
(5, '63 Jean Avenue, Centurion, South Africa', 5, 10, 0, '-25.855254', '28.204185999999936', 1, '2017-02-21 12:46:05', '2017-02-21 12:46:05', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `ports`
--

CREATE TABLE `ports` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `slug`, `name`, `active`, `created_at`, `updated_at`, `updated_by`, `created_by`) VALUES
(1, 'CEO', 'CEO', 1, '2017-02-15 07:26:54', '2017-02-15 07:26:54', 0, 10),
(2, 'Project-Manager', 'Project Manager', 1, '2017-02-15 07:27:22', '2017-02-15 07:27:22', 0, 10),
(3, 'Implementaion-Manager', 'Implementaion Manager', 1, '2017-02-15 07:27:55', '2017-02-15 07:27:55', 0, 10),
(4, 'Operations-Manager-GateTrack', 'Operations Manager GateTrack', 1, '2017-02-15 07:28:44', '2017-02-15 07:28:44', 0, 10),
(5, 'Senior-Trainer', 'Senior Trainer', 1, '2017-02-15 07:29:17', '2017-02-15 07:29:17', 0, 10),
(6, 'Junior-Trainer', 'Junior Trainer', 1, '2017-02-15 07:29:31', '2017-02-15 07:29:31', 0, 10),
(7, 'CIO', 'CIO', 1, '2017-02-15 07:29:42', '2017-02-15 07:29:42', 0, 10),
(8, 'Development-Team-Lead', 'Development Team Lead', 1, '2017-02-15 07:30:01', '2017-02-15 07:30:01', 0, 10),
(9, 'Developer', 'Developer', 1, '2017-02-15 07:30:15', '2017-02-15 07:30:15', 0, 10),
(10, 'Realtime-Ops-Manager', 'Realtime Ops Manager', 1, '2017-02-15 07:30:41', '2017-02-15 07:30:41', 0, 10),
(11, 'Realtime-Director', 'Realtime Director', 1, '2017-02-15 07:30:57', '2017-02-15 07:30:57', 0, 10),
(12, 'GateTrack-Supervisor', 'GateTrack Supervisor', 1, '2017-02-15 07:31:20', '2017-02-15 07:31:20', 0, 10),
(13, 'GateTrack-Senior-Supervisor', 'GateTrack Senior Supervisor', 1, '2017-02-15 07:32:25', '2017-02-15 07:32:25', 0, 10),
(14, 'Accountant', 'Accountant', 1, '2017-02-15 07:32:52', '2017-02-15 07:32:52', 0, 10),
(15, 'CLO', 'CLO', 1, '2017-02-15 07:33:55', '2017-02-15 07:33:55', 0, 10),
(16, 'CFO', 'CFO', 1, '2017-02-15 07:36:28', '2017-02-15 07:36:28', 0, 10),
(17, 'Business-Development-Director', 'Business Development Director', 1, '2017-02-15 07:36:51', '2017-02-15 07:36:51', 0, 10),
(18, 'General-Manager', 'General Manager', 1, '2017-02-15 07:37:18', '2017-02-15 07:37:18', 0, 10),
(19, 'COO', 'COO', 1, '2017-02-15 07:37:28', '2017-02-15 07:37:28', 0, 10),
(20, 'Administrator', 'Administrator', 1, '2017-02-15 07:37:42', '2017-02-15 07:37:42', 0, 10),
(21, 'Assistant-Project-Manager', 'Assistant Project Manager', 1, '2017-02-15 07:38:00', '2017-02-15 07:38:00', 0, 10),
(22, 'HR-Manager', 'HR Manager', 1, '2017-02-15 07:38:43', '2017-02-15 07:38:43', 0, 10),
(23, 'System-Admin', 'System Admin', 1, '2017-02-15 07:38:53', '2017-02-15 07:38:53', 0, 10),
(24, 'Pilot', 'Pilot', 1, '2017-02-15 07:39:09', '2017-02-15 07:39:09', 0, 10),
(25, 'Safety-Officer', 'Safety Officer', 1, '2017-02-15 07:39:23', '2017-02-15 07:39:23', 0, 10),
(26, 'Drone-Manager', 'Drone Manager', 1, '2017-02-15 07:39:55', '2017-02-15 07:39:55', 0, 10),
(27, 'Siyaleader-Ops-Centre-Manager', 'Siyaleader Ops Centre Manager', 1, '2017-02-15 07:41:32', '2017-02-15 07:41:32', 0, 10),
(28, 'Siyaleader-Ops-Centre-Assistant', 'Siyaleader Ops Centre Assistant', 1, '2017-02-15 07:42:02', '2017-02-15 07:42:02', 0, 10),
(29, 'Consultant', 'Consultant', 1, '2017-02-15 07:44:51', '2017-02-15 07:44:51', 0, 10),
(30, 'Contractor', 'Contractor', 1, '2017-02-15 07:45:04', '2017-02-15 07:45:04', 0, 10),
(31, 'Tester', 'Tester', 1, '2017-03-28 09:31:33', '2017-03-28 09:31:33', 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `positions_affiliations`
--

CREATE TABLE `positions_affiliations` (
  `id` int(10) UNSIGNED NOT NULL,
  `affiliation` int(11) NOT NULL,
  `positions` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `slug`, `name`, `created_by`, `updated_by`, `active`, `created_at`, `updated_at`) VALUES
(1, 'KZN', 'KwaZulu-Natal', 0, 0, 1, '2016-01-31 13:22:43', '2016-01-31 13:22:43'),
(2, 'GT', 'Gauteng', 0, 0, 1, '2016-01-31 13:22:43', '2016-01-31 13:22:43'),
(3, 'WC', 'Western Cape', 0, 0, 1, '2016-01-31 13:22:43', '2016-01-31 13:22:43'),
(4, 'EC', 'Eastern Cape', 0, 0, 1, '2016-01-31 13:22:43', '2016-01-31 13:22:43'),
(5, 'NC', 'Northern Cape', 0, 0, 1, '2016-01-31 13:22:43', '2016-01-31 13:22:43'),
(6, 'NW', 'North West', 0, 0, 1, '2016-01-31 13:22:43', '2016-01-31 13:22:43'),
(7, 'FS', 'Free State', 0, 0, 1, '2016-01-31 13:22:43', '2016-01-31 13:22:43'),
(8, 'LIM', 'Limpopo', 0, 0, 1, '2016-01-31 13:22:43', '2016-01-31 13:22:43'),
(9, 'MP', 'Mpumalanga', 0, 0, 1, '2016-01-31 13:22:43', '2016-01-31 13:22:43');

-- --------------------------------------------------------

--
-- Table structure for table `related_cases`
--

CREATE TABLE `related_cases` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(11) NOT NULL,
  `child` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `related_cases`
--

INSERT INTO `related_cases` (`id`, `parent`, `child`, `created_by`, `updated_by`, `active`, `created_at`, `updated_at`) VALUES
(1, 547, 548, 10, 0, 1, '2017-03-22 12:11:42', '2017-03-22 12:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `relationships`
--

CREATE TABLE `relationships` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `relationships`
--

INSERT INTO `relationships` (`id`, `slug`, `name`, `created_by`, `updated_by`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Colleague', 'Colleague', 10, 0, 1, '2017-02-15 09:34:58', '2017-02-15 09:34:58'),
(2, 'Manager', 'Manager', 10, 0, 1, '2017-02-15 09:35:13', '2017-02-15 09:35:13'),
(3, 'Supervisor', 'Supervisor', 10, 0, 1, '2017-02-15 09:35:26', '2017-02-15 09:35:26'),
(4, 'Subordinate', 'Client', 10, 10, 1, '2017-02-15 09:35:38', '2017-02-15 09:36:44'),
(5, 'Contractor', 'Contractor', 10, 0, 1, '2017-02-15 09:36:58', '2017-02-15 09:36:58'),
(6, 'Consultant', 'Consultant', 10, 0, 1, '2017-02-15 09:37:10', '2017-02-15 09:37:10'),
(7, 'Prospect', 'Prospect', 10, 0, 1, '2017-02-15 09:37:28', '2017-02-15 09:37:28'),
(8, 'Stakeholder', 'Stakeholder', 10, 0, 1, '2017-02-15 09:37:58', '2017-02-15 09:37:58'),
(9, 'My-Friend', 'My Friend', 10, 0, 1, '2017-03-28 09:54:26', '2017-03-28 09:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `responders`
--

CREATE TABLE `responders` (
  `id` int(10) UNSIGNED NOT NULL,
  `department` int(11) NOT NULL,
  `case_type` int(10) UNSIGNED NOT NULL,
  `case_sub_type` int(10) UNSIGNED NOT NULL,
  `case_sub_sub_type` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `responder_type` int(10) UNSIGNED NOT NULL,
  `responder` int(10) UNSIGNED NOT NULL,
  `interval_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `responders`
--

INSERT INTO `responders` (`id`, `department`, `case_type`, `case_sub_type`, `case_sub_sub_type`, `active`, `created_at`, `updated_at`, `created_by`, `updated_by`, `responder_type`, `responder`, `interval_time`) VALUES
(25, 3, 4, 6, 0, 1, '2017-03-28 09:36:47', '2017-03-28 09:36:47', 10, NULL, 1, 1, 10),
(26, 3, 4, 6, 0, 1, '2017-03-28 09:36:47', '2017-03-28 09:36:47', 10, NULL, 2, 1, 10),
(27, 3, 4, 6, 0, 1, '2017-03-28 09:36:47', '2017-03-28 09:36:47', 10, NULL, 3, 1, 10),
(34, 5, 6, 8, 0, 1, '2017-03-28 09:39:36', '2017-03-28 09:39:36', 10, NULL, 1, 97, 0),
(35, 5, 6, 8, 0, 1, '2017-03-28 09:39:36', '2017-03-28 09:39:36', 10, NULL, 1, 72, 0),
(36, 5, 6, 8, 0, 1, '2017-03-28 09:39:36', '2017-03-28 09:39:36', 10, NULL, 2, 69, 30),
(37, 5, 6, 8, 0, 1, '2017-03-28 09:39:36', '2017-03-28 09:39:36', 10, NULL, 3, 87, 100);

-- --------------------------------------------------------

--
-- Table structure for table `responder_types`
--

CREATE TABLE `responder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `responder_types`
--

INSERT INTO `responder_types` (`id`, `name`, `created_by`, `updated_by`, `active`, `created_at`, `updated_at`) VALUES
(1, 'First Responder', 1, 1, 1, '2017-03-27 01:27:24', '2017-03-27 01:27:27'),
(2, 'Second Responder', 1, 1, 1, '2017-03-27 01:27:40', '2017-03-27 01:27:42'),
(3, 'Third Responder', 1, 1, 1, '2017-03-27 01:29:23', '2017-03-27 01:29:26'),
(4, 'Siyaleader First Responder', 1, 1, 1, '2017-03-27 01:29:44', '2017-03-27 01:29:44'),
(5, 'Siyaleader Second Responder', 1, 1, 1, '2017-03-27 01:30:00', '2017-03-27 01:30:01');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'login', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'user', 'user', 'logout', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(115, 2, '2017-05-12 19:40:27', '2017-05-12 19:40:27'),
(116, 2, '2017-05-13 08:52:26', '2017-05-13 08:52:26');

-- --------------------------------------------------------

--
-- Table structure for table `safety_tips`
--

CREATE TABLE `safety_tips` (
  `id` int(10) UNSIGNED NOT NULL,
  `tip_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tips_description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shifth_reports`
--

CREATE TABLE `shifth_reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `time` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team_members` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `additional_info` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team_leader` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shift_tabs_nihgts`
--

CREATE TABLE `shift_tabs_nihgts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Start_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Finish_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PrimaryPurpose` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shif_tabs_days`
--

CREATE TABLE `shif_tabs_days` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Start_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Finish_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PrimaryPurpose` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Start_night_shift` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Finish_night_shift` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PrimaryPurpose_night_shift` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Location_night_shift` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `country_code` varchar(2) COLLATE utf8_persian_ci DEFAULT NULL,
  `state_code` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `state_name` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`country_code`, `state_code`, `state_name`) VALUES
('AD', '06', 'Sant Julia de Loria'),
('AD', '05', 'Ordino'),
('AD', '04', 'La Massana'),
('AD', '03', 'Encamp'),
('AD', '02', 'Canillo'),
('AD', '07', 'Andora la Vella'),
('AD', '08', 'Escaldes-Engordany'),
('AE', '07', 'Umm al Qaywayn'),
('AE', '05', 'Ra\'s al Khaymah'),
('AE', '03', 'Dubai'),
('AE', '06', 'Ash Shariqah'),
('AE', '04', 'Al Fujayrah'),
('AE', '02', 'Ajman'),
('AE', '01', 'Abu Dhabi'),
('AF', '28', 'Zabul'),
('AF', '27', 'Vardak'),
('AF', '26', 'Takhar'),
('AF', '33', 'Sar-e Pol'),
('AF', '32', 'Samangan'),
('AF', '40', 'Parvan'),
('AF', '29', 'Paktika'),
('AF', '36', 'Paktia'),
('AF', '39', 'Oruzgan'),
('AF', '19', 'Nimruz'),
('AF', '18', 'Nangarhar'),
('AF', '17', 'Lowgar'),
('AF', '35', 'Laghman'),
('AF', '24', 'Kunduz'),
('AF', '34', 'Konar'),
('AF', '14', 'Kapisa'),
('AF', '23', 'Kandahar'),
('AF', '13', 'Kabul'),
('AF', '31', 'Jowzjan'),
('AF', '11', 'Herat'),
('AF', '10', 'Helmand'),
('AF', '09', 'Ghowr'),
('AF', '08', 'Ghazni'),
('AF', '07', 'Faryab'),
('AF', '06', 'Farah'),
('AF', '05', 'Bamian'),
('AF', '30', 'Balkh'),
('AF', '03', 'Wilayat-e Baghlan'),
('AF', '02', 'Badghis'),
('AF', '01', 'Badakhshan'),
('AF', '37', 'Khowst'),
('AF', '38', 'Nurestan'),
('AF', '41', 'Daykundi'),
('AF', '42', 'Panjshir'),
('AG', '08', 'Saint Philip'),
('AG', '07', 'Saint Peter'),
('AG', '06', 'Saint Paul'),
('AG', '05', 'Saint Mary'),
('AG', '04', 'Saint John'),
('AG', '03', 'Saint George'),
('AG', '09', 'Redonda'),
('AG', '01', 'Barbuda'),
('AL', '40', 'Berat'),
('AL', '41', 'Diber'),
('AL', '43', 'Elbasan'),
('AL', '45', 'Gjirokaster'),
('AL', '46', 'Korce'),
('AL', '47', 'Kukes'),
('AL', '42', 'Durres'),
('AL', '44', 'Fier'),
('AL', '48', 'Lezhe'),
('AL', '49', 'Shkoder'),
('AL', '50', 'Tirane'),
('AL', '51', 'Vlore'),
('AM', '02', 'Ararat'),
('AM', '08', 'Syunik\'i Marz'),
('AM', '10', 'Vayots\' Dzori Marz'),
('AM', '11', 'Yerevan'),
('AM', '01', 'Aragatsotn'),
('AM', '03', 'Armavir'),
('AM', '04', 'Geghark\'unik\'i Marz'),
('AM', '05', 'Kotayk\'i Marz'),
('AM', '06', 'Lorri'),
('AM', '07', 'Shirak'),
('AM', '09', 'Tavush'),
('AO', '18', 'Lunda Sul'),
('AO', '17', 'Lunda Norte'),
('AO', '14', 'Moxico'),
('AO', '04', 'Cuando Cubango'),
('AO', '16', 'Zaire'),
('AO', '15', 'Uige'),
('AO', '12', 'Malanje'),
('AO', '20', 'Luanda'),
('AO', '05', 'Cuanza Norte'),
('AO', '03', 'Cabinda'),
('AO', '19', 'Bengo'),
('AO', '13', 'Namibe'),
('AO', '09', 'Huila'),
('AO', '08', 'Huambo'),
('AO', '07', 'Cunene'),
('AO', '06', 'Cuanza Sul'),
('AO', '02', 'Bie'),
('AO', '01', 'Benguela'),
('AR', '14', 'Misiones'),
('AR', '09', 'Formosa'),
('AR', '07', 'D'),
('AR', '08', 'Entre Rios'),
('AR', '06', 'Corrientes'),
('AR', '01', 'Buenos Aires'),
('AR', '24', 'Tucuman'),
('AR', '23', 'Tierra del Fuego'),
('AR', '22', 'Santiago del Estero'),
('AR', '21', 'Santa Fe'),
('AR', '20', 'Santa Cruz'),
('AR', '19', 'San Luis'),
('AR', '18', 'San Juan'),
('AR', '17', 'Salta'),
('AR', '16', 'Rio Negro'),
('AR', '15', 'Neuquen'),
('AR', '13', 'Mendoza'),
('AR', '12', 'La Rioja'),
('AR', '11', 'La Pampa'),
('AR', '10', 'Jujuy'),
('AR', '05', 'Cordoba'),
('AR', '04', 'Chubut'),
('AR', '03', ''),
('AR', '02', 'Catamarca'),
('AS', '050', 'Western District'),
('AS', '040', 'Swains Island'),
('AS', '010', 'Eastern District'),
('AS', '020', 'Manu\'a'),
('AS', '030', 'Rose Island'),
('AT', '09', 'Vienna'),
('AT', '08', 'Vorarlberg'),
('AT', '07', 'Tyrol'),
('AT', '06', 'Styria'),
('AT', '05', 'Salzburg'),
('AT', '04', 'Upper Austria'),
('AT', '03', 'Lower Austria'),
('AT', '02', 'Carinthia'),
('AT', '01', 'Burgenland'),
('AU', '08', 'Western Australia'),
('AU', '05', 'South Australia'),
('AU', '03', 'Northern Territory'),
('AU', '07', 'Victoria'),
('AU', '06', 'Tasmania'),
('AU', '04', 'Queensland'),
('AU', '02', 'New South Wales'),
('AU', '01', 'Australian Capital Territory'),
('AX', '211', 'Mariehamns stad'),
('AX', '212', 'Alands landsbygd'),
('AX', '213', 'Alands skaergard'),
('AZ', '12', 'Beylaqan'),
('AZ', '69', 'Zangilan Rayon'),
('AZ', '66', 'Yardimli'),
('AZ', '55', 'Susa'),
('AZ', '49', 'Salyan'),
('AZ', '46', 'Sabirabad'),
('AZ', '45', 'Saatli'),
('AZ', '13', 'Bilasuvar Rayon'),
('AZ', '36', 'Neftcala'),
('AZ', '35', 'Nakhichevan'),
('AZ', '32', 'Masally'),
('AZ', '31', 'Lerik'),
('AZ', '29', 'Lankaran'),
('AZ', '28', 'Lacin'),
('AZ', '43', 'Qubadli'),
('AZ', '24', 'Imisli'),
('AZ', '18', 'Fuezuli'),
('AZ', '14', 'Cabrayil Rayonu'),
('AZ', '15', 'Jalilabad'),
('AZ', '08', 'Astara'),
('AZ', '64', 'Xocali'),
('AZ', '02', 'Aghjabadi Rayon'),
('AZ', '03', 'Agdam'),
('AZ', '07', 'Shirvan'),
('AZ', '30', 'Lankaran Sahari'),
('AZ', '56', 'Shusha'),
('AZ', '57', 'Tartar Rayon'),
('AZ', '61', 'Xankandi Sahari'),
('AZ', '65', 'Xocavand Rayonu'),
('AZ', '71', 'Zardab'),
('AZ', '70', 'Zaqatala'),
('AZ', '67', 'Yevlax'),
('AZ', '37', 'Oguz'),
('AZ', '59', 'Ucar'),
('AZ', '58', 'Tovuz'),
('AZ', '50', 'Samaxi'),
('AZ', '47', 'Shaki Rayon'),
('AZ', '51', 'Shamkir Rayon'),
('AZ', '27', 'Kurdamir Rayon'),
('AZ', '38', 'Qabala Rayon'),
('AZ', '44', 'Qusar'),
('AZ', '42', 'Quba'),
('AZ', '62', 'Goygol Rayon'),
('AZ', '60', 'Xacmaz'),
('AZ', '26', 'Kalbacar Rayonu'),
('AZ', '40', 'Qazax'),
('AZ', '21', 'Goranboy'),
('AZ', '39', 'Qakh Rayon'),
('AZ', '25', 'Ismayilli'),
('AZ', '22', 'Goeycay'),
('AZ', '17', 'Shabran'),
('AZ', '16', 'Dashkasan Rayon'),
('AZ', '10', 'Balakan Rayon'),
('AZ', '11', 'Barda Rayon'),
('AZ', '09', 'Baki'),
('AZ', '01', 'Abseron'),
('AZ', '06', 'Agsu'),
('AZ', '04', 'Agdas'),
('AZ', '19', 'Gadabay Rayon'),
('AZ', '05', 'Agstafa'),
('AZ', '20', 'Ganja City'),
('AZ', '33', 'Mingacevir City'),
('AZ', '34', 'Naftalan'),
('AZ', '41', 'Qobustan'),
('AZ', '52', 'Samux'),
('AZ', '48', 'Shaki City'),
('AZ', '53', 'Siazan Rayon'),
('AZ', '54', 'Sumqayit'),
('AZ', '63', 'Xizi'),
('AZ', '68', 'Yevlax City'),
('AZ', '23', 'Haciqabul'),
('AZ', '75', 'Nakhchivan'),
('BA', '01', 'Federation of Bosnia and Herzegovina'),
('BA', '02', 'Republika Srpska'),
('BA', 'BRC', 'Brcko'),
('BB', '11', 'Saint Thomas'),
('BB', '10', 'Saint Philip'),
('BB', '09', 'Saint Peter'),
('BB', '08', 'Saint Michael'),
('BB', '07', 'Saint Lucy'),
('BB', '06', 'Saint Joseph'),
('BB', '05', 'Saint John'),
('BB', '04', 'Saint James'),
('BB', '03', 'Saint George'),
('BB', '02', 'Saint Andrew'),
('BB', '01', 'Christ Church'),
('BD', '83', 'Rajshahi'),
('BD', '81', 'Dhaka'),
('BD', '84', 'Chittagong'),
('BD', '82', 'Khulna'),
('BD', '85', 'Barisal'),
('BD', '86', 'Sylhet'),
('BD', '87', 'Rangpur Division'),
('BE', 'BRU', 'Brussels Capital'),
('BE', 'WAL', 'Wallonia'),
('BE', 'VLG', 'Flanders'),
('BF', '01', 'Boucle du Mouhoun'),
('BF', '02', 'Cascades'),
('BF', '03', 'Centre'),
('BF', '04', 'Centre-Est'),
('BF', '05', 'Centre-Nord'),
('BF', '06', 'Centre-Ouest'),
('BF', '07', 'Centre-Sud'),
('BF', '08', 'Est'),
('BF', '09', 'High-Basins'),
('BF', '10', 'Nord'),
('BF', '11', 'Plateau-Central'),
('BF', '12', 'Sahel'),
('BF', '13', 'Southwest'),
('BG', '52', 'Razgrad'),
('BG', '47', 'Montana'),
('BG', '64', 'Vratsa'),
('BG', '61', 'Varna'),
('BG', '40', 'Dobrich'),
('BG', '58', 'Sofiya'),
('BG', '53', 'Ruse'),
('BG', '51', 'Plovdiv'),
('BG', '50', 'Pleven'),
('BG', '49', 'Pernik'),
('BG', '48', 'Pazardzhik'),
('BG', '46', 'Lovech'),
('BG', '43', 'Khaskovo'),
('BG', '42', 'Sofia-Capital'),
('BG', '39', 'Burgas'),
('BG', '38', 'Blagoevgrad'),
('BG', '41', 'Gabrovo'),
('BG', '44', 'Kurdzhali'),
('BG', '45', 'Kyustendil'),
('BG', '54', 'Shumen'),
('BG', '55', 'Silistra'),
('BG', '56', 'Sliven'),
('BG', '57', 'Smolyan'),
('BG', '59', 'Stara Zagora'),
('BG', '60', 'Turgovishte'),
('BG', '62', 'Veliko Turnovo'),
('BG', '63', 'Vidin'),
('BG', '65', 'Yambol'),
('BH', '15', 'Muharraq'),
('BH', '16', 'Manama'),
('BH', '17', 'Southern Governorate'),
('BH', '18', 'Central Governorate'),
('BH', '19', 'Northern'),
('BI', '17', 'Makamba'),
('BI', '10', 'Bururi'),
('BI', '22', 'Muramvya'),
('BI', '13', 'Gitega'),
('BI', '21', 'Ruyigi'),
('BI', '11', 'Cankuzo'),
('BI', '14', 'Karuzi'),
('BI', '09', 'Bubanza'),
('BI', '12', 'Cibitoke'),
('BI', '19', 'Ngozi'),
('BI', '15', 'Kayanza'),
('BI', '18', 'Muyinga'),
('BI', '16', 'Kirundo'),
('BI', '20', 'Rutana'),
('BI', '23', 'Mwaro'),
('BI', '24', 'Bujumbura Mairie'),
('BI', '25', 'Bujumbura Rural'),
('BJ', '18', 'Zou'),
('BJ', '16', 'Queme'),
('BJ', '15', 'Mono'),
('BJ', '10', 'Borgou'),
('BJ', '09', 'Atlantique'),
('BJ', '08', 'Atakora'),
('BJ', '07', 'Alibori'),
('BJ', '11', 'Collines'),
('BJ', '12', 'Kouffo'),
('BJ', '13', 'Donga'),
('BJ', '14', 'Littoral'),
('BJ', '17', 'Plateau'),
('BM', '11', 'Warwick'),
('BM', '10', 'Southampton'),
('BM', '09', 'Smith\'s Parish'),
('BM', '08', 'Sandys'),
('BM', '07', 'Saint George\'s Parish'),
('BM', '06', 'Saint George'),
('BM', '05', 'Pembroke'),
('BM', '04', 'Paget'),
('BM', '02', 'Hamilton Parish'),
('BM', '03', 'Hamilton city'),
('BM', '01', 'Devonshire'),
('BN', '04', 'Tutong'),
('BN', '03', 'Temburong'),
('BN', '02', 'Brunei and Muara'),
('BN', '01', 'Belait'),
('BO', '09', 'Tarija'),
('BO', '08', 'Santa Cruz'),
('BO', '07', 'Potosi'),
('BO', '06', 'Pando'),
('BO', '05', 'Oruro'),
('BO', '04', 'La Paz'),
('BO', '02', 'Cochabamba'),
('BO', '01', 'Chuquisaca'),
('BO', '03', 'El Beni'),
('BQ', 'BO', 'Bonaire'),
('BQ', 'SB', 'Saba'),
('BQ', 'SE', 'Sint Eustatius'),
('BR', '22', 'Rio Grande do Norte'),
('BR', '20', 'Piaui'),
('BR', '30', 'Pernambuco'),
('BR', '17', 'Paraiba'),
('BR', '16', 'Para'),
('BR', '13', 'Maranhao'),
('BR', '06', 'Ceara'),
('BR', '03', 'Amapa'),
('BR', '02', 'Alagoas'),
('BR', '28', 'Sergipe'),
('BR', '27', 'Sao Paulo'),
('BR', '26', 'Santa Catarina'),
('BR', '23', 'Rio Grande do Sul'),
('BR', '21', 'Rio de Janeiro'),
('BR', '18', 'Parana'),
('BR', '15', 'Minas Gerais'),
('BR', '11', 'Mato Grosso do Sul'),
('BR', '14', 'Mato Grosso'),
('BR', '29', 'Goias'),
('BR', '07', 'Federal District'),
('BR', '08', 'Espirito Santo'),
('BR', '05', 'Bahia'),
('BR', '31', 'Tocantins'),
('BR', '25', 'Roraima'),
('BR', '04', 'Amazonas'),
('BR', '01', 'Acre'),
('BR', '24', 'Rondonia'),
('BS', '35', 'San Salvador'),
('BS', '18', 'Ragged Island'),
('BS', '32', 'Berry Islands'),
('BS', '23', 'New Providence'),
('BS', '16', 'Mayaguana'),
('BS', '15', 'Long Island'),
('BS', '13', 'Inagua'),
('BS', '22', 'Harbour Island'),
('BS', '25', 'Freeport'),
('BS', '10', 'Exuma'),
('BS', '06', 'Cat Island'),
('BS', '05', 'Bimini'),
('BS', '24', 'Acklins'),
('BS', '36', 'Black Point'),
('BS', '37', 'Central Abaco'),
('BS', '38', 'Central Andros'),
('BS', '39', 'Central Eleuthera'),
('BS', '40', 'Crooked Island and Long Cay'),
('BS', '41', 'East Grand Bahama'),
('BS', '42', 'Grand Cay'),
('BS', '43', 'Hope Town'),
('BS', '44', 'Mangrove Cay'),
('BS', '45', 'Moore\'s Island'),
('BS', '46', 'North Abaco'),
('BS', '47', 'North Andros'),
('BS', '48', 'North Eleuthera'),
('BS', '49', 'Rum Cay'),
('BS', '50', 'South Abaco'),
('BS', '51', 'South Andros'),
('BS', '52', 'South Eleuthera'),
('BS', '53', 'Spanish Wells'),
('BS', '54', 'West Grand Bahama'),
('BT', '05', 'Bumthang'),
('BT', '06', 'Chhukha'),
('BT', '08', 'Daga'),
('BT', '07', 'Chirang'),
('BT', '09', 'Geylegphug'),
('BT', '10', 'Ha'),
('BT', '11', 'Lhuntshi'),
('BT', '12', 'Mongar'),
('BT', '13', 'Paro'),
('BT', '14', 'Pemagatsel'),
('BT', '15', 'Punakha'),
('BT', '16', 'Samchi'),
('BT', '17', 'Samdrup Jongkhar'),
('BT', '18', 'Shemgang'),
('BT', '19', 'Tashigang'),
('BT', '20', 'Thimphu'),
('BT', '21', 'Tongsa'),
('BT', '22', 'Wangdi Phodrang'),
('BT', '23', 'Gasa'),
('BT', '24', 'Trashi Yangste'),
('BW', '10', 'Southern'),
('BW', '09', 'South East'),
('BW', '08', 'North East'),
('BW', '11', 'North West'),
('BW', '06', 'Kweneng'),
('BW', '05', 'Kgatleng'),
('BW', '04', 'Kgalagadi'),
('BW', '03', 'Ghanzi'),
('BW', '01', 'Central'),
('BY', '07', 'Vitebsk'),
('BY', '06', 'Mogilev'),
('BY', '05', 'Minsk'),
('BY', '04', 'Minsk'),
('BY', '03', 'Grodnenskaya'),
('BY', '02', 'Gomel'),
('BY', '01', 'Brest'),
('BZ', '06', 'Toledo'),
('BZ', '05', 'Stann Creek'),
('BZ', '04', 'Orange Walk'),
('BZ', '03', 'Corozal'),
('BZ', '02', 'Cayo'),
('BZ', '01', 'Belize'),
('CA', '01', 'Alberta'),
('CA', '02', 'British Columbia'),
('CA', '03', 'Manitoba'),
('CA', '04', 'New Brunswick'),
('CA', '13', 'Northwest Territories'),
('CA', '07', 'Nova Scotia'),
('CA', '14', 'Nunavut'),
('CA', '08', 'Ontario'),
('CA', '09', 'Prince Edward Island'),
('CA', '10', 'Quebec'),
('CA', '11', 'Saskatchewan'),
('CA', '12', 'Yukon'),
('CA', '05', 'Newfoundland and Labrador'),
('CD', '12', 'South Kivu'),
('CD', '05', 'Katanga'),
('CD', '11', 'Nord Kivu'),
('CD', '10', 'Maniema'),
('CD', '04', 'Kasai-Oriental'),
('CD', '03', 'Kasai-Occidental'),
('CD', '09', 'Eastern Province'),
('CD', '02', 'Equateur'),
('CD', '06', 'Kinshasa'),
('CD', '08', 'Bas-Congo'),
('CD', '01', 'Bandundu'),
('CF', '14', 'Vakaga'),
('CF', '11', 'Ouaka'),
('CF', '08', 'Mbomou'),
('CF', '05', 'Haut-Mbomou'),
('CF', '03', 'Haute-Kotto'),
('CF', '02', 'Basse-Kotto'),
('CF', '01', 'Bamingui-Bangoran'),
('CF', '16', 'Sangha-Mbaere'),
('CF', '13', 'Ouham-Pende'),
('CF', '12', 'Ouham'),
('CF', '17', 'Ombella-Mpoko'),
('CF', '09', 'Nana-Mambere'),
('CF', '07', 'Lobaye'),
('CF', '06', 'Kemo'),
('CF', '04', 'Mambere-Kadei'),
('CF', '15', 'Nana-Grebizi'),
('CF', '18', 'Bangui'),
('CG', '10', 'Sangha'),
('CG', '11', 'Pool'),
('CG', '08', 'Plateaux'),
('CG', '07', 'Niari'),
('CG', '06', 'Likouala'),
('CG', '05', 'Lekoumou'),
('CG', '04', 'Kouilou'),
('CG', '13', 'Cuvette'),
('CG', '01', 'Bouenza'),
('CG', '12', 'Brazzaville'),
('CG', '14', 'Cuvette-Ouest'),
('CG', '7280295', 'Pointe-Noire'),
('CH', 'ZH', 'Zurich'),
('CH', 'ZG', 'Zug'),
('CH', 'VD', 'Vaud'),
('CH', 'VS', 'Valais'),
('CH', 'UR', 'Uri'),
('CH', 'TI', 'Ticino'),
('CH', 'TG', 'Thurgau'),
('CH', 'SO', 'Solothurn'),
('CH', 'SZ', 'Schwyz'),
('CH', 'SH', 'Schaffhausen'),
('CH', 'SG', 'Saint Gallen'),
('CH', 'OW', 'Obwalden'),
('CH', 'NW', 'Nidwalden'),
('CH', 'NE', 'Neuchatel'),
('CH', 'LU', 'Lucerne'),
('CH', 'JU', 'Jura'),
('CH', 'GR', 'Grisons'),
('CH', 'GL', 'Glarus'),
('CH', 'GE', 'Geneva'),
('CH', 'FR', 'Fribourg'),
('CH', 'BE', 'Bern'),
('CH', 'BS', 'Basel-City'),
('CH', 'BL', 'Basel-Landschaft'),
('CH', 'AR', 'Appenzell Ausserrhoden'),
('CH', 'AI', 'Appenzell Innerrhoden'),
('CH', 'AG', 'Aargau'),
('CI', '82', 'Lagunes'),
('CI', '89', 'Sud-Comoe'),
('CI', '74', 'Agneby'),
('CI', '80', 'Haut-Sassandra'),
('CI', '87', 'Savanes'),
('CI', '90', 'Vallee du Bandama'),
('CI', '85', 'Moyen-Comoe'),
('CI', '78', 'Dix-Huit Montagnes'),
('CI', '81', 'Lacs'),
('CI', '92', 'Zanzan'),
('CI', '76', 'Bas-Sassandra'),
('CI', '91', 'Worodougou'),
('CI', '77', 'Denguele'),
('CI', '88', 'Sud-Bandama'),
('CI', '79', 'Fromager'),
('CI', '86', 'N\'zi-Comoe'),
('CI', '83', 'Marahoue'),
('CI', '84', 'Moyen-Cavally'),
('CI', '75', 'Bafing'),
('CL', '01', 'Valparaiso'),
('CL', '15', 'Tarapaca'),
('CL', '12', 'Santiago Metropolitan'),
('CL', '11', 'Maule'),
('CL', '14', 'Los Lagos'),
('CL', '08', 'O\'Higgins'),
('CL', '07', 'Coquimbo'),
('CL', '06', 'Biobio'),
('CL', '05', 'Atacama'),
('CL', '04', 'Araucania'),
('CL', '03', 'Antofagasta'),
('CL', '02', 'Aisen'),
('CL', '10', 'Magallanes'),
('CL', '16', 'Arica y Parinacota'),
('CL', '17', 'Los Rios'),
('CM', '09', 'South-West Province'),
('CM', '14', 'South Province'),
('CM', '08', 'West'),
('CM', '07', 'North-West Province'),
('CM', '13', 'North Province'),
('CM', '05', 'Littoral'),
('CM', '12', 'Far North'),
('CM', '04', 'East'),
('CM', '11', 'Centre'),
('CM', '10', 'Adamaoua'),
('CN', '14', 'Tibet Autonomous Region'),
('CN', '06', 'Qinghai Sheng'),
('CN', '13', 'Xinjiang Uygur Zizhiqu'),
('CN', '02', 'Zhejiang Sheng'),
('CN', '29', 'Yunnan'),
('CN', '28', 'Tianjin Shi'),
('CN', '32', 'Sichuan'),
('CN', '24', 'Shanxi Sheng'),
('CN', '23', 'Shanghai Shi'),
('CN', '25', 'Shandong Sheng'),
('CN', '26', 'Shaanxi'),
('CN', '21', 'Ningxia Huizu Zizhiqu'),
('CN', '03', 'Jiangxi Sheng'),
('CN', '04', 'Jiangsu Sheng'),
('CN', '11', 'Hunan'),
('CN', '12', 'Hubei'),
('CN', '09', 'Henan Sheng'),
('CN', '10', 'Hebei'),
('CN', '31', 'Hainan'),
('CN', '18', 'Guizhou Sheng'),
('CN', '16', 'Guangxi Zhuangzu Zizhiqu'),
('CN', '30', 'Guangdong'),
('CN', '15', 'Gansu Sheng'),
('CN', '07', 'Fujian'),
('CN', '33', 'Chongqing Shi'),
('CN', '01', 'Anhui Sheng'),
('CN', '20', 'Inner Mongolia'),
('CN', '19', 'Liaoning'),
('CN', '05', 'Jilin Sheng'),
('CN', '08', 'Heilongjiang Sheng'),
('CN', '22', 'Beijing'),
('CO', '31', 'Vichada'),
('CO', '30', 'Vaupes'),
('CO', '29', 'Valle del Cauca'),
('CO', '28', 'Tolima'),
('CO', '27', 'Sucre'),
('CO', '26', 'Santander'),
('CO', '25', 'Archipielago de San Andres, Providencia y Santa Catalina'),
('CO', '24', 'Risaralda'),
('CO', '23', 'Quindio'),
('CO', '22', 'Putumayo'),
('CO', '21', 'Norte de Santander'),
('CO', '20', 'Narino'),
('CO', '19', 'Meta'),
('CO', '38', 'Magdalena'),
('CO', '17', 'La Guajira'),
('CO', '16', 'Huila'),
('CO', '14', 'Guaviare'),
('CO', '15', 'Guainia'),
('CO', '33', 'Cundinamarca'),
('CO', '12', 'Cordoba'),
('CO', '11', 'Choco'),
('CO', '10', 'Cesar'),
('CO', '09', 'Cauca'),
('CO', '32', 'Casanare'),
('CO', '08', 'Caqueta'),
('CO', '37', 'Caldas'),
('CO', '36', 'Boyaca'),
('CO', '35', 'Bolivar'),
('CO', '34', 'C'),
('CO', '04', 'Atlantico'),
('CO', '03', 'Arauca'),
('CO', '02', 'Antioquia'),
('CO', '01', 'Amazonas'),
('CR', '08', 'San Jose'),
('CR', '07', 'Puntarenas'),
('CR', '06', 'Limon'),
('CR', '04', 'Heredia'),
('CR', '03', 'Guanacaste'),
('CR', '02', 'Cartago'),
('CR', '01', 'Alajuela'),
('CU', '16', 'Villa Clara'),
('CU', '15', 'Santiago de Cuba'),
('CU', '14', 'Sancti Spiritus'),
('CU', '01', 'Pinar del Rio'),
('CU', '03', 'Matanzas'),
('CU', '13', 'Las Tunas'),
('CU', '04', 'Isla de la Juventud'),
('CU', '12', 'Holguin'),
('CU', '10', 'Guantanamo'),
('CU', '09', 'Granma'),
('CU', '02', 'La Habana'),
('CU', '08', 'Cienfuegos'),
('CU', '07', 'Ciego de Avila'),
('CU', '05', 'Camaguey'),
('CU', 'AR', 'Artemisa'),
('CU', 'MA', 'Mayabeque'),
('CV', '20', 'Tarrafal'),
('CV', '11', 'Sao Vicente'),
('CV', '15', 'Santa Catarina'),
('CV', '08', 'Sal'),
('CV', '07', 'Ribeira Grande'),
('CV', '14', 'Praia'),
('CV', '05', 'Paul'),
('CV', '04', 'Maio'),
('CV', '02', 'Brava'),
('CV', '01', 'Boa Vista'),
('CV', '13', 'Mosteiros'),
('CV', '16', 'Santa Cruz'),
('CV', '17', 'Sao Domingos'),
('CV', '18', 'Sao Filipe'),
('CV', '19', 'Sao Miguel'),
('CV', '21', 'Porto Novo'),
('CV', '22', 'Ribeira Brava'),
('CV', '24', 'Santa Catarina do Fogo'),
('CV', '26', 'Sao Salvador do Mundo'),
('CV', '27', 'Tarrafal de Sao Nicolau'),
('CV', '25', 'Sao Lourenco dos Orgaos'),
('CV', '23', 'Ribeira Grande de Santiago'),
('CY', '06', 'Pafos'),
('CY', '04', 'Lefkosia'),
('CY', '05', 'Limassol'),
('CY', '03', 'Larnaka'),
('CY', '02', 'Keryneia'),
('CY', '01', 'Ammochostos'),
('CZ', '52', 'Praha'),
('CZ', '78', 'South Moravian'),
('CZ', '79', 'Jihocesky'),
('CZ', '80', 'Vysocina'),
('CZ', '81', 'Karlovarsky'),
('CZ', '82', 'Kralovehradecky'),
('CZ', '83', 'Liberecky'),
('CZ', '84', 'Olomoucky'),
('CZ', '85', 'Moravskoslezsky'),
('CZ', '86', 'Pardubicky'),
('CZ', '87', 'Plzensky'),
('CZ', '88', 'Central Bohemia'),
('CZ', '89', 'Ustecky'),
('CZ', '90', 'Zlin'),
('DE', '15', 'Thuringia'),
('DE', '10', 'Schleswig-Holstein'),
('DE', '14', 'Saxony-Anhalt'),
('DE', '13', 'Saxony'),
('DE', '09', 'Saarland'),
('DE', '08', 'Rheinland-Pfalz'),
('DE', '07', 'North Rhine-Westphalia'),
('DE', '06', 'Lower Saxony'),
('DE', '12', 'Mecklenburg-Vorpommern'),
('DE', '05', 'Hesse'),
('DE', '04', 'Hamburg'),
('DE', '03', 'Bremen'),
('DE', '11', 'Brandenburg'),
('DE', '16', 'Berlin'),
('DE', '02', 'Bavaria'),
('DE', '01', 'Baden-Wuerttemberg'),
('DJ', '05', 'Tadjourah'),
('DJ', '04', 'Obock'),
('DJ', '07', 'Djibouti'),
('DJ', '06', 'Dikhil'),
('DJ', '01', 'Ali Sabieh'),
('DJ', '08', 'Arta'),
('DK', '17', 'Capital Region'),
('DK', '18', 'Central Jutland'),
('DK', '19', 'North Denmark'),
('DK', '20', 'Zealand'),
('DK', '21', 'South Denmark'),
('DM', '11', 'Saint Peter'),
('DM', '10', 'Saint Paul'),
('DM', '09', 'Saint Patrick'),
('DM', '08', 'Saint Mark'),
('DM', '07', 'Saint Luke'),
('DM', '06', 'Saint Joseph'),
('DM', '05', 'Saint John'),
('DM', '04', 'Saint George'),
('DM', '03', 'Saint David'),
('DM', '02', 'Saint Andrew'),
('DO', '27', 'Valverde'),
('DO', '26', 'Santiago Rodriguez'),
('DO', '25', 'Santiago'),
('DO', '24', 'San Pedro de Macoris'),
('DO', '23', 'San Juan'),
('DO', '33', 'San Cristobal'),
('DO', '21', 'Sanchez Ramirez'),
('DO', '20', 'Samana'),
('DO', '19', 'Hermanas Mirabal'),
('DO', '18', 'Puerto Plata'),
('DO', '35', 'Peravia'),
('DO', '16', 'Pedernales'),
('DO', '34', 'Nacional'),
('DO', '32', 'Monte Plata'),
('DO', '15', 'Monte Cristi'),
('DO', '31', 'Monsenor Nouel'),
('DO', '14', 'Maria Trinidad Sanchez'),
('DO', '30', 'La Vega'),
('DO', '12', 'La Romana'),
('DO', '10', 'La Altagracia'),
('DO', '09', 'Independencia'),
('DO', '29', 'Hato Mayor'),
('DO', '08', 'Espaillat'),
('DO', '28', 'El Seibo'),
('DO', '11', 'Elias Pina'),
('DO', '06', 'Duarte'),
('DO', '04', 'Dajabon'),
('DO', '03', 'Barahona'),
('DO', '02', 'Baoruco'),
('DO', '01', 'Azua'),
('DO', '36', 'San Jose de Ocoa'),
('DO', '37', 'Santo Domingo'),
('DZ', '15', 'Tlemcen'),
('DZ', '14', 'Tizi Ouzou'),
('DZ', '56', 'Tissemsilt'),
('DZ', '55', 'Tipaza'),
('DZ', '54', 'Tindouf'),
('DZ', '13', 'Tiaret'),
('DZ', '33', 'Tebessa'),
('DZ', '5', 'Tamanghasset'),
('DZ', '52', 'Souk Ahras'),
('DZ', '31', 'Skikda'),
('DZ', '30', 'Sidi Bel Abbes'),
('DZ', '12', 'Setif'),
('DZ', '10', 'Saida'),
('DZ', '51', 'Relizane'),
('DZ', '29', 'Oum el Bouaghi'),
('DZ', '50', 'Ouargla'),
('DZ', '09', 'Oran'),
('DZ', '49', 'Wilaya de Naama'),
('DZ', '27', 'Wilaya de M\'Sila'),
('DZ', '07', 'Mostaganem'),
('DZ', '48', 'Mila'),
('DZ', '06', 'Medea'),
('DZ', '26', 'Mascara'),
('DZ', '25', 'Laghouat'),
('DZ', '47', 'Khenchela'),
('DZ', '24', 'Jijel'),
('DZ', '46', 'Illizi'),
('DZ', '23', 'Guelma'),
('DZ', '45', 'Ghardaia'),
('DZ', '44', 'El Tarf'),
('DZ', '43', 'El Oued'),
('DZ', '42', 'El Bayadh'),
('DZ', '22', 'Djelfa'),
('DZ', '04', 'Constantine'),
('DZ', '41', 'Chlef'),
('DZ', '40', 'Boumerdes'),
('DZ', '21', 'Bouira'),
('DZ', '39', 'Bordj Bou Arreridj'),
('DZ', '20', 'Blida'),
('DZ', '19', 'Biskra'),
('DZ', '18', 'Bejaia'),
('DZ', '38', 'Bechar'),
('DZ', '03', 'Batna'),
('DZ', '37', 'Annaba'),
('DZ', '01', 'Alger'),
('DZ', '36', 'Ain Temouchent'),
('DZ', '35', 'Ain Defla'),
('DZ', '34', 'Adrar'),
('EC', '20', 'Zamora-Chinchipe'),
('EC', '19', 'Tungurahua'),
('EC', '18', 'Pichincha'),
('EC', '17', 'Pastaza'),
('EC', '23', 'Napo'),
('EC', '15', 'Morona-Santiago'),
('EC', '14', 'Manabi'),
('EC', '13', 'Los Rios'),
('EC', '12', 'Loja'),
('EC', '11', 'Imbabura'),
('EC', '10', 'Guayas'),
('EC', '01', 'Galapagos'),
('EC', '09', 'Esmeraldas'),
('EC', '08', 'El Oro'),
('EC', '07', 'Cotopaxi'),
('EC', '06', 'Chimborazo'),
('EC', '05', 'Carchi'),
('EC', '04', 'Canar'),
('EC', '03', 'Bolivar'),
('EC', '02', 'Azuay'),
('EC', '22', 'Sucumbios'),
('EC', '24', 'Orellana'),
('EC', '26', 'Santo Domingo de los Tsachilas'),
('EC', '25', 'Santa Elena'),
('EE', '21', 'Vorumaa'),
('EE', '20', 'Viljandimaa'),
('EE', '19', 'Valgamaa'),
('EE', '18', 'Tartu'),
('EE', '14', 'Saare'),
('EE', '13', 'Raplamaa'),
('EE', '12', 'Polvamaa'),
('EE', '11', 'Paernumaa'),
('EE', '08', 'Laeaene-Virumaa'),
('EE', '07', 'Laeaene'),
('EE', '05', 'Jogevamaa'),
('EE', '04', 'Jaervamaa'),
('EE', '03', 'Ida-Virumaa'),
('EE', '02', 'Hiiumaa'),
('EE', '01', 'Harju'),
('EG', '24', 'Suhaj'),
('EG', '27', 'Muhafazat Shamal Sina\''),
('EG', '23', 'Qina'),
('EG', '22', 'Muhafazat Matruh'),
('EG', '21', 'Kafr ash Shaykh'),
('EG', '26', 'South Sinai'),
('EG', '20', 'Dumyat'),
('EG', '19', 'Muhafazat Bur Sa`id'),
('EG', '18', 'Muhafazat Bani Suwayf'),
('EG', '17', 'Asyut'),
('EG', '16', 'Aswan'),
('EG', '15', 'As Suways'),
('EG', '14', 'Eastern Province'),
('EG', '13', 'Muhafazat al Wadi al Jadid'),
('EG', '12', 'Muhafazat al Qalyubiyah'),
('EG', '11', 'Muhafazat al Qahirah'),
('EG', '10', 'Al Minya'),
('EG', '09', 'Muhafazat al Minufiyah'),
('EG', '08', 'Al Jizah'),
('EG', '07', 'Al Isma\'iliyah'),
('EG', '06', 'Alexandria'),
('EG', '05', 'Muhafazat al Gharbiyah'),
('EG', '04', 'Muhafazat al Fayyum'),
('EG', '03', 'Al Buhayrah'),
('EG', '02', 'Red Sea'),
('EG', '01', 'Muhafazat ad Daqahliyah'),
('EG', '28', 'Luxor'),
('EH', 'CE', 'Oued Ed-Dahab-Lagouira'),
('ER', '01', 'Anseba'),
('ER', '02', 'Debub'),
('ER', '03', 'Southern Red Sea Region'),
('ER', '04', 'Gash Barka'),
('ER', '05', 'Maekel Region'),
('ER', '06', 'Northern Red Sea Region'),
('ES', '31', 'Murcia'),
('ES', 'CE', 'Ceuta'),
('ES', '07', 'Balearic Islands'),
('ES', '51', 'Andalusia'),
('ES', '53', 'Canary Islands'),
('ES', '54', 'Castille-La Mancha'),
('ES', '57', 'Extremadura'),
('ES', '60', 'Valencia'),
('ES', '34', 'Asturias'),
('ES', '32', 'Navarre'),
('ES', '29', 'Madrid'),
('ES', '27', 'La Rioja'),
('ES', '39', 'Cantabria'),
('ES', '52', 'Aragon'),
('ES', '55', 'Castille and Leon'),
('ES', '56', 'Catalonia'),
('ES', '58', 'Galicia'),
('ES', '59', 'Basque Country'),
('ES', 'ML', 'Melilla'),
('ET', '44', 'Adis Abeba'),
('ET', '45', 'Afar'),
('ET', '46', 'Amhara'),
('ET', '47', 'Binshangul Gumuz'),
('ET', '48', 'Dire Dawa'),
('ET', '49', 'Gambela'),
('ET', '50', 'Harari'),
('ET', '51', 'Oromiya'),
('ET', '52', 'Somali'),
('ET', '53', 'Tigray'),
('ET', '54', 'Southern Nations, Nationalities, and People\'s Region'),
('FI', '19', 'Lapland'),
('FI', '18', 'Kainuu'),
('FI', '17', 'Northern Ostrobothnia'),
('FI', '16', 'Central Ostrobothnia'),
('FI', '15', 'Ostrobothnia'),
('FI', '14', 'Southern Ostrobothnia'),
('FI', '13', 'Central Finland'),
('FI', '12', 'North Karelia'),
('FI', '11', 'Northern Savo'),
('FI', '10', 'Southern Savonia'),
('FI', '09', 'South Karelia'),
('FI', '08', 'Kymenlaakso'),
('FI', '06', 'Pirkanmaa'),
('FI', '05', 'Haeme'),
('FI', '02', 'Varsinais-Suomi'),
('FI', '01', 'Uusimaa'),
('FI', '07', 'Paijanne Tavastia'),
('FI', '04', 'Satakunta'),
('FJ', '05', 'Western'),
('FJ', '03', 'Northern'),
('FJ', '01', 'Central'),
('FJ', '02', 'Eastern'),
('FJ', '04', 'Rotuma'),
('FJ', '8617786', 'Kadavu'),
('FM', '04', 'Yap'),
('FM', '02', 'Pohnpei'),
('FM', '01', 'Kosrae'),
('FM', '03', 'Chuuk'),
('FO', 'VG', 'Vagar'),
('FO', 'SU', 'Suduroy'),
('FO', 'ST', 'Streymoy'),
('FO', 'SA', 'Sandoy'),
('FO', 'NO', 'Nordoyar'),
('FO', 'OS', 'Eysturoy'),
('FR', 'B9', 'Rhone-Alpes'),
('FR', 'B8', 'Provence-Alpes-Cote d\'Azur'),
('FR', 'B7', 'Poitou-Charentes'),
('FR', 'B6', 'Picardie'),
('FR', 'B5', 'Pays de la Loire'),
('FR', 'B4', 'Nord-Pas-de-Calais'),
('FR', 'B3', 'Midi-Pyrenees'),
('FR', 'B2', 'Lorraine'),
('FR', 'B1', 'Limousin'),
('FR', 'A9', 'Languedoc-Roussillon'),
('FR', 'A8', 'Ile-de-France'),
('FR', 'A7', 'Haute-Normandie'),
('FR', 'A6', 'Franche-Comte'),
('FR', 'A5', 'Corsica'),
('FR', 'A4', 'Champagne-Ardenne'),
('FR', 'A3', 'Centre'),
('FR', 'A2', 'Brittany'),
('FR', 'A1', 'Bourgogne'),
('FR', '99', 'Lower Normandy'),
('FR', '98', 'Auvergne'),
('FR', '97', 'Aquitaine'),
('FR', 'C1', 'Alsace'),
('GA', '09', 'Woleu-Ntem'),
('GA', '08', 'Ogooue-Maritime'),
('GA', '07', 'Ogooue-Lolo'),
('GA', '06', 'Ogooue-Ivindo'),
('GA', '05', 'Nyanga'),
('GA', '04', 'Ngounie'),
('GA', '03', 'Moyen-Ogooue'),
('GA', '02', 'Haut-Ogooue'),
('GA', '01', 'Estuaire'),
('GB', 'WLS', 'Wales'),
('GB', 'SCT', 'Scotland'),
('GB', 'NIR', 'Northern Ireland'),
('GB', 'ENG', 'England'),
('GD', '06', 'Saint Patrick'),
('GD', '05', 'Saint Mark'),
('GD', '04', 'Saint John'),
('GD', '03', 'Saint George'),
('GD', '02', 'Saint David'),
('GD', '01', 'Saint Andrew'),
('GD', '10', 'Carriacou and Petite Martinique'),
('GE', '51', 'T\'bilisi'),
('GE', '04', 'Ajaria'),
('GE', '68', 'Kvemo Kartli'),
('GE', '67', 'Kakheti'),
('GE', '65', 'Guria'),
('GE', '66', 'Imereti'),
('GE', '73', 'Shida Kartli'),
('GE', '69', 'Mtskheta-Mtianeti'),
('GE', '70', 'Racha-Lechkhumi and Kvemo Svaneti'),
('GE', '71', 'Samegrelo and Zemo Svaneti'),
('GE', '72', 'Samtskhe-Javakheti'),
('GE', '02', 'Abkhazia'),
('GF', 'GF', 'Guyane'),
('GG', '6417213', 'St Pierre du Bois'),
('GG', '6417214', 'Torteval'),
('GG', '6417215', 'Saint Saviour'),
('GG', '6417223', 'Forest'),
('GG', '6417224', 'St Martin'),
('GG', '6417226', 'Saint Andrew'),
('GG', '6417228', 'St Peter Port'),
('GG', '6417229', 'Castel'),
('GG', '6417230', 'Vale'),
('GG', '6417233', 'St Sampson'),
('GG', '8989934', 'Alderney'),
('GH', '09', 'Western'),
('GH', '08', 'Volta'),
('GH', '11', 'Upper West'),
('GH', '10', 'Upper East'),
('GH', '06', 'Northern'),
('GH', '01', 'Greater Accra'),
('GH', '05', 'Eastern'),
('GH', '04', 'Central'),
('GH', '03', 'Brong-Ahafo'),
('GH', '02', 'Ashanti'),
('GL', '05', 'Qaasuitsup'),
('GL', '04', 'Kujalleq'),
('GL', '06', 'Qeqqata'),
('GL', '07', 'Sermersooq'),
('GM', '05', 'Western'),
('GM', '04', 'Upper River'),
('GM', '07', 'North Bank'),
('GM', '03', 'Central River'),
('GM', '02', 'Lower River'),
('GM', '01', 'Banjul'),
('GN', '04', 'Conakry'),
('GN', 'B', 'Boke'),
('GN', 'F', 'Faranah'),
('GN', 'K', 'Kankan'),
('GN', 'D', 'Kindia'),
('GN', 'L', 'Labe'),
('GN', 'M', 'Mamou'),
('GN', 'N', 'Nzerekore'),
('GP', 'GP', 'Guadeloupe'),
('GQ', '03', 'Annobon'),
('GQ', '04', 'Bioko Norte'),
('GQ', '05', 'Bioko Sur'),
('GQ', '06', 'Centro Sur'),
('GQ', '07', 'Kie-Ntem'),
('GQ', '08', 'Litoral'),
('GQ', '09', 'Wele-Nzas'),
('GR', '736572', 'Mount Athos'),
('GR', 'ESYE31', 'Attica'),
('GR', 'ESYE24', 'Central Greece'),
('GR', 'ESYE12', 'Central Macedonia'),
('GR', 'ESYE43', 'Crete'),
('GR', 'ESYE11', 'East Macedonia and Thrace'),
('GR', 'ESYE21', 'Epirus'),
('GR', 'ESYE22', 'Ionian Islands'),
('GR', 'ESYE41', 'North Aegean'),
('GR', 'ESYE25', 'Peloponnese'),
('GR', 'ESYE42', 'South Aegean'),
('GR', 'ESYE14', 'Thessaly'),
('GR', 'ESYE23', 'West Greece'),
('GR', 'ESYE13', 'West Macedonia'),
('GT', '22', 'Zacapa'),
('GT', '21', 'Totonicapan'),
('GT', '20', 'Suchitepeque'),
('GT', '19', 'Solola'),
('GT', '18', 'Santa Rosa'),
('GT', '17', 'San Marcos'),
('GT', '16', 'Sacatepequez'),
('GT', '15', 'Retalhuleu'),
('GT', '14', 'Quiche'),
('GT', '13', 'Quetzaltenango'),
('GT', '12', 'Peten'),
('GT', '11', 'Jutiapa'),
('GT', '10', 'Jalapa'),
('GT', '09', 'Izabal'),
('GT', '08', 'Huehuetenango'),
('GT', '07', 'Guatemala'),
('GT', '06', 'Escuintla'),
('GT', '05', 'El Progreso'),
('GT', '04', 'Chiquimula'),
('GT', '03', 'Chimaltenango'),
('GT', '02', 'Baja Verapaz'),
('GT', '01', 'Alta Verapaz'),
('GU', 'PI', 'Piti'),
('GU', 'SR', 'Santa Rita'),
('GU', 'SJ', 'Sinajana'),
('GU', 'TF', 'Talofofo'),
('GU', 'TM', 'Tamuning'),
('GU', 'UM', 'Umatac'),
('GU', 'YG', 'Yigo'),
('GU', 'YN', 'Yona'),
('GU', 'ME', 'Merizo'),
('GU', 'MA', 'Mangilao'),
('GU', 'AH', 'Agana Heights'),
('GU', 'CP', 'Chalan Pago-Ordot'),
('GU', 'AS', 'Asan'),
('GU', 'AT', 'Agat'),
('GU', 'DD', 'Dededo'),
('GU', 'BA', 'Barrigada'),
('GU', 'AN', 'Hagatna'),
('GU', 'IN', 'Inarajan'),
('GU', 'MT', 'Mongmong-Toto-Maite'),
('GW', '07', 'Tombali'),
('GW', '02', 'Quinara'),
('GW', '04', 'Oio'),
('GW', '10', 'Gabu'),
('GW', '06', 'Cacheu'),
('GW', '05', 'Bolama and Bijagos'),
('GW', '11', 'Bissau'),
('GW', '12', 'Biombo'),
('GW', '01', 'Bafata'),
('GY', '19', 'Upper Takutu-Upper Essequibo'),
('GY', '18', 'Upper Demerara-Berbice'),
('GY', '17', 'Potaro-Siparuni'),
('GY', '16', 'Pomeroon-Supenaam'),
('GY', '15', 'Mahaica-Berbice'),
('GY', '14', 'Essequibo Islands-West Demerara'),
('GY', '13', 'East Berbice-Corentyne'),
('GY', '12', 'Demerara-Mahaica'),
('GY', '11', 'Cuyuni-Mazaruni'),
('GY', '10', 'Barima-Waini'),
('HK', 'NYL', 'Yuen Long'),
('HK', 'NTW', 'Tsuen Wan'),
('HK', 'NTP', 'Tai Po'),
('HK', 'NSK', 'Sai Kung'),
('HK', 'NIS', 'Islands'),
('HK', 'HCW', 'Central and Western'),
('HK', 'HWC', 'Wanchai'),
('HK', 'HEA', 'Eastern'),
('HK', 'HSO', 'Southern'),
('HK', 'KYT', 'Yau Tsim Mong'),
('HK', 'KSS', 'Sham Shui Po'),
('HK', 'KKC', 'Kowloon City'),
('HK', 'KWT', 'Wong Tai Sin'),
('HK', 'KKT', 'Kwon Tong'),
('HK', 'NKT', 'Kwai Tsing'),
('HK', 'NTM', 'Tuen Mun'),
('HK', 'NNO', 'North'),
('HK', 'NST', 'Sha Tin'),
('HN', '18', 'Yoro'),
('HN', '17', 'Valle'),
('HN', '16', 'Santa Barbara'),
('HN', '15', 'Olancho'),
('HN', '14', 'Ocotepeque'),
('HN', '13', 'Lempira'),
('HN', '12', 'La Paz'),
('HN', '11', 'Bay Islands'),
('HN', '10', 'Intibuca'),
('HN', '09', 'Gracias a Dios'),
('HN', '08', 'Francisco Morazan'),
('HN', '07', 'El Paraiso'),
('HN', '06', 'Cortes'),
('HN', '05', 'Copan'),
('HN', '04', 'Comayagua'),
('HN', '03', 'Colon'),
('HN', '02', 'Choluteca'),
('HN', '01', 'Atlantida'),
('HR', '01', 'Bjelovarsko-Bilogorska'),
('HR', '02', 'Brodsko-Posavska'),
('HR', '03', 'Dubrovacko-Neretvanska'),
('HR', '04', 'Istarska'),
('HR', '05', 'Karlovacka'),
('HR', '06', 'Koprivnicko-Krizevacka'),
('HR', '07', 'Krapinsko-Zagorska'),
('HR', '08', 'Licko-Senjska'),
('HR', '09', 'Medimurska'),
('HR', '10', 'Osjecko-Baranjska'),
('HR', '11', 'Pozesko-Slavonska'),
('HR', '12', 'Primorsko-Goranska'),
('HR', '13', 'Sibensko-Kniniska'),
('HR', '14', 'Sisacko-Moslavacka'),
('HR', '15', 'Splitsko-Dalmatinska'),
('HR', '16', 'Varazdinska'),
('HR', '18', 'Vukovarsko-Srijemska'),
('HR', '19', 'Zadarska'),
('HR', '20', 'Zagrebacka'),
('HR', '21', 'Grad Zagreb'),
('HR', '17', 'Virovitick-Podravska'),
('HT', '13', 'Sud-Est'),
('HT', '12', 'Sud'),
('HT', '11', 'Ouest'),
('HT', '03', 'Nord-Ouest'),
('HT', '10', 'Nord-Est'),
('HT', '09', 'Nord'),
('HT', '14', 'Grandans'),
('HT', '07', 'Centre'),
('HT', '06', 'Artibonite'),
('HT', '15', 'Nippes'),
('HU', '18', 'Szabolcs-Szatmar-Bereg'),
('HU', '20', 'Jasz-Nagykun-Szolnok'),
('HU', '11', 'Heves'),
('HU', '10', 'Hajdu-Bihar'),
('HU', '06', 'Csongrad'),
('HU', '04', 'Borsod-Abauj-Zemplen'),
('HU', '03', 'Bekes'),
('HU', '24', 'Zala'),
('HU', '23', 'Veszprem'),
('HU', '22', 'Vas'),
('HU', '21', 'Tolna'),
('HU', '17', 'Somogy'),
('HU', '16', 'Pest'),
('HU', '14', 'Nograd'),
('HU', '12', 'Komarom-Esztergom'),
('HU', '09', 'Gyor-Moson-Sopron'),
('HU', '08', 'Fejer'),
('HU', '05', 'Budapest'),
('HU', '02', 'Baranya'),
('HU', '01', 'Bacs-Kiskun'),
('ID', '26', 'North Sumatra'),
('ID', '01', 'Aceh'),
('ID', '10', 'Daerah Istimewa Yogyakarta'),
('ID', '32', 'South Sumatra'),
('ID', '24', 'West Sumatra'),
('ID', '31', 'North Sulawesi'),
('ID', '22', 'Sulawesi Tenggara'),
('ID', '21', 'Central Sulawesi'),
('ID', '38', 'South Sulawesi'),
('ID', '37', 'Riau'),
('ID', '18', 'East Nusa Tenggara'),
('ID', '17', 'West Nusa Tenggara'),
('ID', '28', 'Maluku'),
('ID', '15', 'Lampung'),
('ID', '14', 'East Kalimantan'),
('ID', '13', 'Central Kalimantan'),
('ID', '12', 'South Kalimantan'),
('ID', '11', 'West Kalimantan'),
('ID', '08', 'East Java'),
('ID', '07', 'Central Java'),
('ID', '30', 'West Java'),
('ID', '05', 'Jambi'),
('ID', '04', 'Jakarta Raya'),
('ID', '36', 'Papua'),
('ID', '03', 'Bengkulu'),
('ID', '02', 'Bali'),
('ID', '33', 'Banten'),
('ID', '34', 'Gorontalo'),
('ID', '35', 'Bangka-Belitung Islands'),
('ID', '29', 'Maluku Utara'),
('ID', '39', 'West Papua'),
('ID', '41', 'Sulawesi Barat'),
('ID', '40', 'Riau Islands'),
('ID', '42', 'North Kalimantan'),
('IE', 'C', 'Connaught'),
('IE', 'L', 'Leinster'),
('IE', 'M', 'Munster'),
('IE', 'U', 'Ulster'),
('IL', '06', 'Jerusalem'),
('IL', '05', 'Tel Aviv'),
('IL', '04', 'Haifa'),
('IL', '03', 'Northern District'),
('IL', '02', 'Central District'),
('IL', '01', 'Southern District'),
('IM', '9782164', 'Andreas'),
('IM', '9782165', 'Arbory'),
('IM', '9782166', 'Ballaugh'),
('IM', '9782167', 'Braddan'),
('IM', '9782168', 'Bride'),
('IM', '9782169', 'Castletown'),
('IM', '9782170', 'Douglas'),
('IM', '9782171', 'German'),
('IM', '9782172', 'Jurby'),
('IM', '9782173', 'Laxey'),
('IM', '9782176', 'Lezayre'),
('IM', '9782180', 'Lonan'),
('IM', '9782182', 'Malew'),
('IM', '9782183', 'Marown'),
('IM', '9782184', 'Maughold'),
('IM', '9782185', 'Michael'),
('IM', '9782186', 'Onchan'),
('IM', '9782187', 'Patrick'),
('IM', '9782188', 'Peel'),
('IM', '9782189', 'Port Erin'),
('IM', '9782190', 'Port St Mary'),
('IM', '9782191', 'Ramsey'),
('IM', '9782192', 'Rushen'),
('IM', '9782193', 'Santon'),
('IN', '28', 'West Bengal'),
('IN', '36', 'Uttar Pradesh'),
('IN', '26', 'Tripura'),
('IN', '40', 'Telangana'),
('IN', '25', 'Tamil Nadu'),
('IN', '29', 'Sikkim'),
('IN', '24', 'Rajasthan'),
('IN', '23', 'Punjab'),
('IN', '22', 'Union Territory of Pondicherry'),
('IN', '21', 'Odisha'),
('IN', '20', 'Nagaland'),
('IN', '31', 'Mizoram'),
('IN', '18', 'Meghalaya'),
('IN', '17', 'Manipur'),
('IN', '16', 'Maharashtra'),
('IN', '35', 'Madhya Pradesh'),
('IN', '13', 'Kerala'),
('IN', '19', 'Karnataka'),
('IN', '12', 'Kashmir'),
('IN', '11', 'Himachal Pradesh'),
('IN', '10', 'Haryana'),
('IN', '09', 'Gujarat'),
('IN', '32', 'Daman and Diu'),
('IN', '33', 'Goa'),
('IN', '07', 'New Delhi (NCR/NCT)'),
('IN', '06', 'Dadra and Nagar Haveli'),
('IN', '05', 'Chandigarh'),
('IN', '34', 'Bihar'),
('IN', '03', 'Assam'),
('IN', '30', 'Arunachal Pradesh'),
('IN', '02', 'Andhra Pradesh'),
('IN', '01', 'Andaman and Nicobar Islands'),
('IN', '37', 'Chhattisgarh'),
('IN', '38', 'Jharkhand'),
('IN', '39', 'Uttarakhand'),
('IQ', '02', 'Muhafazat al Basrah'),
('IQ', '16', 'Wasit'),
('IQ', '18', 'Salah ad Din'),
('IQ', '15', 'Ninawa'),
('IQ', '14', 'Maysan'),
('IQ', '12', 'Muhafazat Karbala\''),
('IQ', '11', 'Arbil'),
('IQ', '10', 'Diyala'),
('IQ', '09', 'Dhi Qar'),
('IQ', '08', 'Dahuk'),
('IQ', '07', 'Mayorality of Baghdad'),
('IQ', '06', 'Babil'),
('IQ', '13', 'Muhafazat Kirkuk'),
('IQ', '05', 'As Sulaymaniyah'),
('IQ', '17', 'An Najaf'),
('IQ', '04', 'Al Qadisiyah'),
('IQ', '03', 'Al Muthanna'),
('IQ', '01', 'Anbar'),
('IR', '26', 'Tehran'),
('IR', '36', 'Zanjan'),
('IR', '40', 'Yazd'),
('IR', '25', 'Semnan'),
('IR', '35', 'Mazandaran'),
('IR', '34', 'Markazi'),
('IR', '23', 'Lorestan'),
('IR', '16', 'Kordestan'),
('IR', '05', 'Kohgiluyeh va Buyer Ahmad'),
('IR', '15', 'Khuzestan'),
('IR', '13', 'Kermanshah'),
('IR', '29', 'Kerman'),
('IR', '10', 'Ilam'),
('IR', '11', 'Hormozgan'),
('IR', '09', 'Hamadan'),
('IR', '08', 'Gilan'),
('IR', '07', 'Fars'),
('IR', '03', 'Chahar Mahall va Bakhtiari'),
('IR', '22', 'Bushehr'),
('IR', '33', 'East Azerbaijan'),
('IR', '01', 'Azarbayjan-e Gharbi'),
('IR', '32', 'Ardabil'),
('IR', '28', 'Isfahan'),
('IR', '37', 'Golestan'),
('IR', '38', 'Qazvin'),
('IR', '39', 'Qom'),
('IR', '04', 'Sistan and Baluchestan'),
('IR', '41', 'Khorasan-e Jonubi'),
('IR', '42', 'Razavi Khorasan'),
('IR', '43', 'Khorasan-e Shomali'),
('IR', '44', 'Alborz'),
('IS', '41', 'Northwest'),
('IS', '40', 'Northeast'),
('IS', '38', 'East'),
('IS', '42', 'South'),
('IS', '39', 'Capital Region'),
('IS', '43', 'Southern Peninsula'),
('IS', '45', 'West'),
('IS', '44', 'Westfjords'),
('IT', '15', 'Sicily'),
('IT', '14', 'Sardinia'),
('IT', '03', 'Calabria'),
('IT', '20', 'Veneto'),
('IT', '19', 'Aosta Valley'),
('IT', '18', 'Umbria'),
('IT', '17', 'Trentino-Alto Adige'),
('IT', '16', 'Tuscany'),
('IT', '13', 'Apulia'),
('IT', '12', 'Piedmont'),
('IT', '11', 'Molise'),
('IT', '10', 'The Marches'),
('IT', '09', 'Lombardy'),
('IT', '08', 'Liguria'),
('IT', '07', 'Latium'),
('IT', '06', 'Friuli Venezia Giulia'),
('IT', '05', 'Emilia-Romagna'),
('IT', '04', 'Campania'),
('IT', '02', 'Basilicate'),
('IT', '01', 'Abruzzo'),
('JE', '3237072', 'St Clement'),
('JE', '3237073', 'St Saviour'),
('JE', '3237200', ' Brelade'),
('JE', '3237203', 'Grouville'),
('JE', '3237212', 'St Mary'),
('JE', '3237214', 'St Lawrence'),
('JE', '3237221', 'St Peter'),
('JE', '3237229', 'St Ouen'),
('JE', '3237497', 'St John'),
('JE', '3237530', 'Trinity'),
('JE', '3237716', 'St Martin'),
('JE', '3237864', 'St Helier'),
('JM', '16', 'Westmoreland'),
('JM', '15', 'Trelawny'),
('JM', '14', 'Saint Thomas'),
('JM', '13', 'Saint Mary'),
('JM', '12', 'Saint James'),
('JM', '11', ' Elizabeth'),
('JM', '10', 'Saint Catherine'),
('JM', '09', 'Saint Ann'),
('JM', '08', 'Saint Andrew'),
('JM', '07', 'Portland'),
('JM', '04', 'Manchester'),
('JM', '17', 'Kingston'),
('JM', '02', 'Hanover'),
('JM', '01', 'Clarendon'),
('JO', '19', 'Ma\'an'),
('JO', '18', 'Irbid'),
('JO', '17', 'Zarqa'),
('JO', '12', 'Tafielah'),
('JO', '16', 'Amman'),
('JO', '15', 'Mafraq'),
('JO', '09', 'Karak'),
('JO', '02', 'Balqa'),
('JO', '20', 'Ajlun'),
('JO', '22', 'Jerash'),
('JO', '21', 'Aqaba'),
('JO', '23', 'Madaba'),
('JP', '46', 'Yamanashi'),
('JP', '45', 'Yamaguchi'),
('JP', '43', 'Wakayama'),
('JP', '42', 'Toyama'),
('JP', '41', 'Tottori'),
('JP', '40', 'Tokyo'),
('JP', '39', 'Tokushima'),
('JP', '38', 'Tochigi'),
('JP', '37', 'Shizuoka'),
('JP', '36', 'Shimane'),
('JP', '35', 'Shiga Prefecture'),
('JP', '34', 'Saitama'),
('JP', '33', 'Saga Prefecture'),
('JP', '32', 'Osaka'),
('JP', '47', 'Okinawa'),
('JP', '31', 'Okayama'),
('JP', '30', 'Oita'),
('JP', '29', 'Niigata'),
('JP', '28', 'Nara'),
('JP', '27', 'Nagasaki'),
('JP', '26', 'Nagano'),
('JP', '25', 'Miyazaki'),
('JP', '23', 'Mie'),
('JP', '22', 'Kyoto'),
('JP', '21', 'Kumamoto'),
('JP', '20', 'Kochi'),
('JP', '19', 'Kanagawa'),
('JP', '18', 'Kagoshima'),
('JP', '17', 'Kagawa'),
('JP', '15', 'Ishikawa'),
('JP', '13', 'Hyogo'),
('JP', '11', 'Hiroshima'),
('JP', '10', 'Gunma'),
('JP', '09', 'Gifu'),
('JP', '07', 'Fukuoka'),
('JP', '06', 'Fukui'),
('JP', '05', 'Ehime'),
('JP', '01', 'Aichi'),
('JP', '44', 'Yamagata'),
('JP', '24', 'Miyagi'),
('JP', '16', 'Iwate'),
('JP', '14', 'Ibaraki'),
('JP', '08', 'Fukushima'),
('JP', '04', 'Chiba'),
('JP', '02', 'Akita'),
('JP', '12', 'Hokkaido'),
('JP', '03', 'Aomori'),
('KE', '55', 'West Pokot'),
('KE', '54', 'Wajir'),
('KE', '52', 'Uasin Gishu'),
('KE', '51', 'Turkana'),
('KE', '50', 'Trans Nzoia'),
('KE', '49', 'Tharaka District'),
('KE', '48', 'Tana River'),
('KE', '46', 'Siaya'),
('KE', '45', 'Samburu'),
('KE', '05', 'Nairobi Area'),
('KE', '38', 'Murang\'a District'),
('KE', '37', 'Mombasa'),
('KE', '35', 'Meru'),
('KE', '34', 'Marsabit'),
('KE', '33', 'Mandera'),
('KE', '29', 'Laikipia'),
('KE', '28', 'Kwale'),
('KE', '27', 'Kitui'),
('KE', '26', 'Kisumu'),
('KE', '25', 'Kisii'),
('KE', '24', 'Kirinyaga'),
('KE', '23', 'Kilifi'),
('KE', '22', 'Kiambu'),
('KE', '21', 'Kericho'),
('KE', '20', 'Kakamega'),
('KE', '18', 'Isiolo'),
('KE', '16', 'Garissa'),
('KE', '15', 'Embu'),
('KE', '13', 'Busia'),
('KE', '12', 'Bungoma'),
('KE', '10', 'Baringo'),
('KE', '43', 'Nyandarua'),
('KE', '53', 'Vihiga'),
('KE', '30', 'Lamu'),
('KE', '31', 'Machakos'),
('KE', '32', 'Makueni'),
('KE', '14', 'Marakwet District'),
('KE', '47', 'Taita Taveta'),
('KE', '19', 'Kajiado'),
('KE', '44', 'Nyeri'),
('KE', '17', 'Homa Bay'),
('KE', '11', 'Bomet'),
('KE', '36', 'Migori'),
('KE', '08', 'Keiyo'),
('KE', '39', 'Nakuru'),
('KE', '41', 'Narok'),
('KE', '42', 'Nyamira District'),
('KE', '40', 'Nandi'),
('KG', '08', 'Osh'),
('KG', '09', 'Batken'),
('KG', '06', 'Talas'),
('KG', '04', 'Naryn'),
('KG', '07', 'Ysyk-Koel'),
('KG', '01', 'Bishkek'),
('KG', '03', 'Jalal-Abad'),
('KG', '02', 'Chuy'),
('KH', '12', 'Pursat'),
('KH', '29', 'Battambang'),
('KH', '19', 'Takeo'),
('KH', '18', 'Svay Rieng'),
('KH', '17', 'Stung Treng'),
('KH', '27', 'Otar Meanchey'),
('KH', '24', 'Siem Reap'),
('KH', '23', 'Ratanakiri'),
('KH', '14', 'Prey Veng'),
('KH', '13', 'Preah Vihear'),
('KH', '22', 'Phnom Penh'),
('KH', '30', 'Pailin'),
('KH', '10', 'Mondolkiri'),
('KH', '09', 'Kratie'),
('KH', '26', 'Kep'),
('KH', '08', 'Koh Kong'),
('KH', '07', 'Kandal'),
('KH', '21', 'Kampot'),
('KH', '05', 'Kampong Thom'),
('KH', '04', 'Kampong Speu'),
('KH', '03', 'Kampong Chhnang'),
('KH', '02', 'Kampong Cham'),
('KH', '28', 'Preah Sihanouk'),
('KH', '25', 'Banteay Meanchey'),
('KI', '01', 'Gilbert Islands'),
('KI', '02', 'Line Islands'),
('KI', '03', 'Phoenix Islands'),
('KM', '03', 'Moheli'),
('KM', '02', 'Grande Comore'),
('KM', '01', 'Anjouan'),
('KN', '15', 'Trinity Palmetto Point'),
('KN', '13', 'Saint Thomas Middle Island'),
('KN', '12', 'Saint Thomas Lowland'),
('KN', '11', 'Saint Peter Basseterre'),
('KN', '10', 'Saint Paul Charlestown'),
('KN', '09', 'Saint Paul Capesterre'),
('KN', '08', 'Saint Mary Cayon'),
('KN', '07', 'Saint John Figtree'),
('KN', '06', 'Saint John Capesterre'),
('KN', '05', 'Saint James Windwa'),
('KN', '04', 'Saint George Gingerland'),
('KN', '03', 'Saint George Basseterre'),
('KN', '02', 'Saint Anne Sandy Point'),
('KN', '01', 'Christ Church Nichola Town'),
('KP', '12', 'Pyongyang'),
('KP', '15', 'P\'yongan-namdo'),
('KP', '11', 'P\'yongan-bukto'),
('KP', '09', 'Kangwon-do'),
('KP', '06', 'Hwanghae-namdo'),
('KP', '07', 'Hwanghae-bukto'),
('KP', '03', 'Hamgyong-namdo'),
('KP', '13', 'Yanggang-do'),
('KP', '17', 'Hamgyong-bukto'),
('KP', '01', 'Chagang-do'),
('KP', '18', 'Rason'),
('KR', '21', 'Ulsan'),
('KR', '19', 'Daejeon'),
('KR', '15', 'Daegu'),
('KR', '11', 'Seoul'),
('KR', '10', 'Busan'),
('KR', '14', 'Gyeongsangbuk-do'),
('KR', '13', 'Gyeonggi-do'),
('KR', '18', 'Gwangju'),
('KR', '06', 'Gangwon-do'),
('KR', '12', 'Incheon'),
('KR', '17', 'Chungcheongnam-do'),
('KR', '05', 'Chungcheongbuk-do'),
('KR', '16', 'Jeollanam-do'),
('KR', '03', 'Jeollabuk-do'),
('KR', '01', 'Jeju-do'),
('KR', '20', 'Gyeongsangnam-do'),
('KR', '22', 'Sejong-si'),
('KW', '08', 'Muhafazat Hawalli'),
('KW', '02', 'Al Asimah'),
('KW', '05', 'Muhafazat al Jahra\''),
('KW', '07', 'Al Farwaniyah'),
('KW', '04', 'Al Ahmadi'),
('KW', '09', 'Mubarak al Kabir'),
('KZ', '07', 'Batys Qazaqstan'),
('KZ', '09', 'Mangghystau'),
('KZ', '06', 'Atyrau'),
('KZ', '04', 'Aqtoebe'),
('KZ', '15', 'East Kazakhstan'),
('KZ', '03', 'Aqmola'),
('KZ', '16', 'Soltustik Qazaqstan'),
('KZ', '11', 'Pavlodar'),
('KZ', '14', 'Qyzylorda'),
('KZ', '13', 'Qostanay'),
('KZ', '12', 'Qaraghandy'),
('KZ', '17', 'Zhambyl'),
('KZ', '10', 'Ongtustik Qazaqstan'),
('KZ', '02', 'Almaty Qalasy'),
('KZ', '01', 'Almaty Oblysy'),
('KZ', '08', 'Bayqongyr Qalasy'),
('KZ', '05', 'Astana Qalasy'),
('LA', '14', 'Xiangkhoang'),
('LA', '13', 'Xiagnabouli'),
('LA', '27', 'Vientiane'),
('LA', '20', 'Savannahkhet'),
('LA', '19', 'Salavan'),
('LA', '18', 'Phongsali'),
('LA', '07', 'Oudomxai'),
('LA', '17', 'Louangphabang'),
('LA', '16', 'Loungnamtha'),
('LA', '15', 'Khammouan'),
('LA', '03', 'Houaphan'),
('LA', '02', 'Champasak'),
('LA', '01', 'Attapu'),
('LA', '26', 'Xekong'),
('LA', '22', 'Bokeo'),
('LA', '23', 'Bolikhamxai'),
('LA', '24', 'Vientiane'),
('LB', '05', 'Mont-Liban'),
('LB', '04', 'Beyrouth'),
('LB', '09', 'Liban-Nord'),
('LB', '06', 'Liban-Sud'),
('LB', '08', 'Beqaa'),
('LB', '07', 'Nabatiye'),
('LB', '10', 'Aakkar'),
('LB', '11', 'Baalbek-Hermel'),
('LC', '10', 'Vieux-Fort'),
('LC', '09', 'Soufriere'),
('LC', '11', 'Praslin'),
('LC', '08', 'Micoud Quarter'),
('LC', '07', 'Laborie Quarter'),
('LC', '06', 'Gros-Islet'),
('LC', '05', 'Dennery Quarter'),
('LC', '02', 'Dauphin'),
('LC', '04', 'Choiseul Quarter'),
('LC', '03', 'Castries Quarter'),
('LC', '01', 'Anse-la-Raye'),
('LI', '11', 'Vaduz'),
('LI', '10', 'Triesenberg'),
('LI', '09', 'Triesen'),
('LI', '08', 'Schellenberg'),
('LI', '07', 'Schaan'),
('LI', '06', 'Ruggell'),
('LI', '05', 'Planken'),
('LI', '04', 'Mauren'),
('LI', '03', 'Gamprin'),
('LI', '02', 'Eschen'),
('LI', '01', 'Balzers'),
('LK', '36', 'Western'),
('LK', '35', 'Uva'),
('LK', '34', 'Southern'),
('LK', '33', 'Sabaragamuwa'),
('LK', '32', 'North Western'),
('LK', '30', 'North Central'),
('LK', '29', 'Central'),
('LK', '38', 'Northern Province'),
('LK', '37', 'Eastern Province'),
('LR', '10', 'Sinoe'),
('LR', '09', 'Nimba'),
('LR', '14', 'Montserrado'),
('LR', '13', 'Maryland'),
('LR', '20', 'Lofa'),
('LR', '19', 'Grand Gedeh'),
('LR', '12', 'Grand Cape Mount'),
('LR', '11', 'Grand Bassa'),
('LR', '01', 'Bong'),
('LR', '15', 'Bomi'),
('LR', '16', 'Grand Kru'),
('LR', '17', 'Margibi'),
('LR', '18', 'River Cess'),
('LR', '21', 'Gbarpolu'),
('LR', '22', 'River Gee'),
('LS', '19', 'Thaba-Tseka'),
('LS', '18', 'Quthing'),
('LS', '17', 'Qacha\'s Nek'),
('LS', '16', 'Mokhotlong'),
('LS', '15', 'Mohale\'s Hoek District'),
('LS', '14', 'Maseru'),
('LS', '13', 'Mafeteng'),
('LS', '12', 'Leribe'),
('LS', '11', 'Butha-Buthe'),
('LS', '10', 'Berea'),
('LT', '56', 'Alytaus apskritis'),
('LT', '57', 'Kauno apskritis'),
('LT', '58', 'Klaipedos apskritis'),
('LT', '59', 'Marijampoles apskritis'),
('LT', '60', 'Panevezys'),
('LT', '61', 'Siauliu apskritis'),
('LT', '62', 'Taurages apskritis'),
('LT', '63', 'Telsiu apskritis'),
('LT', '64', 'Utenos apskritis'),
('LT', '65', 'Vilnius County'),
('LU', '03', 'Luxembourg'),
('LU', '02', 'Grevenmacher'),
('LU', '01', 'Diekirch'),
('LV', '33', 'Ventspils Rajons'),
('LV', '32', 'Ventspils'),
('LV', '31', 'Valmieras Rajons'),
('LV', '30', 'Valkas Rajons'),
('LV', '29', 'Tukuma Rajons'),
('LV', '28', 'Talsu Rajons'),
('LV', '27', 'Saldus Rajons'),
('LV', '25', 'Riga'),
('LV', '24', 'Rezeknes Rajons'),
('LV', '23', 'Rezekne'),
('LV', '22', 'Preilu Rajons'),
('LV', '21', 'Ogre'),
('LV', '20', 'Madonas Rajons'),
('LV', '19', 'Ludzas Rajons'),
('LV', '18', 'Limbazu Rajons'),
('LV', '16', 'Liepaja'),
('LV', '15', 'Kuldigas Rajons'),
('LV', '14', 'Kraslavas Rajons'),
('LV', '13', 'Jurmala'),
('LV', '12', 'Jelgavas Rajons'),
('LV', '11', 'Jelgava'),
('LV', '10', 'Jekabpils Rajons'),
('LV', '09', 'Gulbenes Rajons'),
('LV', '08', 'Dobeles Rajons'),
('LV', '07', 'Daugavpils'),
('LV', '06', 'Daugavpils'),
('LV', '05', 'Cesu Rajons'),
('LV', '04', 'Bauskas Rajons'),
('LV', '03', 'Balvu Rajons'),
('LV', '02', 'Aluksnes Rajons'),
('LV', '01', 'Aizkraukles Rajons'),
('LV', '60', 'Dundaga'),
('LV', '40', 'Alsunga'),
('LV', 'A5', 'Pavilostas'),
('LV', '99', 'Nica'),
('LV', 'B6', 'Rucavas'),
('LV', '65', 'Grobina'),
('LV', '61', 'Durbe'),
('LV', '37', 'Aizpute'),
('LV', 'A8', 'Priekule'),
('LV', 'D7', 'Vainode'),
('LV', 'C9', 'Skrunda'),
('LV', '51', 'Broceni'),
('LV', 'B4', 'Rojas'),
('LV', '77', 'Kandava'),
('LV', '44', 'Auces Novads'),
('LV', '73', 'Jaunpils'),
('LV', '62', 'Engure'),
('LV', 'D5', 'Tervete'),
('LV', 'A3', 'Ozolnieku'),
('LV', 'B9', 'Rundales'),
('LV', '45', 'Babite'),
('LV', '95', 'Marupe'),
('LV', 'A2', 'Olaine'),
('LV', '67', 'Lecava'),
('LV', '80', 'Kekava'),
('LV', 'C3', 'Salaspils'),
('LV', '46', 'Baldone'),
('LV', 'D2', 'Stopini'),
('LV', '53', 'Carnikava'),
('LV', '34', 'Adazi'),
('LV', '64', 'Garkalne'),
('LV', 'E4', 'Vecumnieki'),
('LV', '79', 'Kegums'),
('LV', '87', 'Lielvarde'),
('LV', 'C8', 'Skriveri'),
('LV', '71', 'Jaunjelgava'),
('LV', '98', 'Nereta'),
('LV', 'E6', 'Viesite'),
('LV', 'C2', 'Salas'),
('LV', '74', 'Jekabpils'),
('LV', '38', 'Akniste'),
('LV', '69', 'Ilukste'),
('LV', 'E2', 'Varkava'),
('LV', '90', 'Livani'),
('LV', 'E1', 'Varaklani'),
('LV', 'E8', 'Vilanu'),
('LV', 'B3', 'Riebinu'),
('LV', '35', 'Aglona'),
('LV', '56', 'Cibla'),
('LV', 'E9', 'Zilupes'),
('LV', 'E7', 'Vilaka'),
('LV', '47', 'Baltinava'),
('LV', '57', 'Dagda'),
('LV', '78', 'Karsava'),
('LV', 'B7', 'Rugaju'),
('LV', '55', 'Cesvaine'),
('LV', '91', 'Lubana'),
('LV', '85', 'Krustpils'),
('LV', 'A6', 'Plavinu'),
('LV', '82', 'Koknese'),
('LV', '68', 'Ikskile'),
('LV', 'B5', 'Ropazu'),
('LV', '70', 'Incukalns'),
('LV', '84', 'Krimulda'),
('LV', 'C7', 'Sigulda'),
('LV', '88', 'Ligatne'),
('LV', '94', 'Malpils'),
('LV', 'C6', 'Seja'),
('LV', 'C5', 'Saulkrastu'),
('LV', 'C1', 'Salacgrivas'),
('LV', '39', 'Aloja'),
('LV', '97', 'Naukseni'),
('LV', 'B8', 'Rujienas'),
('LV', '96', 'Mazsalaca'),
('LV', '52', 'Burtnieki'),
('LV', 'A4', 'Pargaujas'),
('LV', '81', 'Koceni'),
('LV', '42', 'Amatas Novads'),
('LV', 'A9', 'Priekuli'),
('LV', 'B1', 'Raunas'),
('LV', 'D3', 'Strenci'),
('LV', '50', 'Beverina'),
('LV', 'D1', 'Smiltene'),
('LV', '72', 'Jaunpiebalga'),
('LV', '63', 'Ergli'),
('LV', 'E3', 'Vecpiebalga'),
('LV', '43', 'Apes Novads'),
('LV', 'F1', 'Mesraga'),
('LY', '70', 'Darnah'),
('LY', '69', 'Banghazi'),
('LY', '66', 'Al Marj'),
('LY', '65', 'Al Kufrah'),
('LY', '63', 'Al Jabal al Akhdar'),
('LY', '77', 'Tripoli'),
('LY', '76', 'Surt'),
('LY', '75', 'Sabha'),
('LY', '74', 'Sha`biyat Nalut'),
('LY', '73', 'Murzuq'),
('LY', '72', 'Misratah'),
('LY', '71', 'Sha`biyat Ghat'),
('LY', '68', 'Az Zawiyah'),
('LY', '78', 'Sha`biyat Wadi ash Shati\''),
('LY', '64', 'Al Jufrah'),
('LY', '67', 'An Nuqat al Khams'),
('LY', '79', 'Sha`biyat al Butnan'),
('LY', '80', 'Sha`biyat al Jabal al Gharbi'),
('LY', '81', 'Sha`biyat al Jafarah'),
('LY', '82', 'Al Marqab'),
('LY', '83', 'Sha`biyat al Wahat'),
('LY', '84', 'Sha`biyat Wadi al Hayat'),
('MA', '49', 'Rabat-Sale-Zemmour-Zaer'),
('MA', '48', 'Meknes-Tafilalet'),
('MA', '47', 'Marrakech-Tensift-Al Haouz'),
('MA', '46', 'Fes-Boulemane'),
('MA', '45', 'Grand Casablanca'),
('MA', '50', 'Chaouia-Ouardigha'),
('MA', '51', 'Doukkala-Abda'),
('MA', '52', 'Gharb-Chrarda-Beni Hssen'),
('MA', '53', 'Guelmim-Es Smara'),
('MA', '54', 'Oriental'),
('MA', '55', 'Souss-Massa-Draa'),
('MA', '56', 'Tadla-Azilal'),
('MA', '57', 'Tanger-Tetouan'),
('MA', '58', 'Taza-Al Hoceima-Taounate'),
('MA', '59', 'Laayoune-Boujdour-Sakia El Hamra'),
('MA', 'EH', 'Oued ed Dahab-Lagouira'),
('MC', '00', 'Commune de Monaco'),
('MD', '73', 'Raionul Edinet'),
('MD', '92', 'Ungheni'),
('MD', '91', 'Telenesti'),
('MD', '90', 'Taraclia'),
('MD', '88', 'Stefan-Voda'),
('MD', '89', 'Straseni'),
('MD', '87', 'Raionul Soroca'),
('MD', '84', 'Riscani'),
('MD', '83', 'Rezina'),
('MD', '82', 'Orhei'),
('MD', '81', 'Raionul Ocnita'),
('MD', '59', 'Anenii Noi'),
('MD', '80', 'Nisporeni'),
('MD', '79', 'Leova'),
('MD', '85', 'Singerei'),
('MD', '69', 'Criuleni'),
('MD', '78', 'Laloveni'),
('MD', '57', 'Chisinau'),
('MD', '67', 'Causeni'),
('MD', '65', 'Cantemir'),
('MD', '66', 'Calarasi'),
('MD', '64', 'Cahul'),
('MD', '76', 'Glodeni'),
('MD', '75', 'Floresti'),
('MD', '74', 'Falesti'),
('MD', '72', 'Dubasari'),
('MD', '71', 'Drochia'),
('MD', '70', 'Donduseni'),
('MD', '68', 'Cimislia'),
('MD', '63', 'Briceni'),
('MD', '61', 'Basarabeasca'),
('MD', '77', 'Hincesti'),
('MD', '86', 'Soldanesti'),
('MD', '58', 'Stinga Nistrului'),
('MD', '51', 'Gagauzia'),
('MD', '62', 'Bender'),
('MD', '60', 'Balti'),
('ME', '17', 'Opstina Rozaje'),
('ME', '21', 'Opstina Zabljak'),
('ME', '20', 'Ulcinj');
INSERT INTO `states` (`country_code`, `state_code`, `state_name`) VALUES
('ME', '19', 'Tivat'),
('ME', '16', 'Podgorica'),
('ME', '18', 'Opstina Savnik'),
('ME', '15', 'Opstina Pluzine'),
('ME', '14', 'Pljevlja'),
('ME', '13', 'Opstina Plav'),
('ME', '12', 'Opstina Niksic'),
('ME', '11', 'Mojkovac'),
('ME', '10', 'Kotor'),
('ME', '09', 'Opstina Kolasin'),
('ME', '03', 'Berane'),
('ME', '08', 'Herceg Novi'),
('ME', '07', 'Danilovgrad'),
('ME', '06', 'Cetinje'),
('ME', '05', 'Budva'),
('ME', '04', 'Bijelo Polje'),
('ME', '02', 'Bar'),
('ME', '01', 'Andrijevica'),
('MG', '7670842', 'Diana'),
('MG', '7670846', 'Sava'),
('MG', '7670847', 'Sofia'),
('MG', '7670848', 'Analanjirofo'),
('MG', '7670849', 'Boeny'),
('MG', '7670850', 'Betsiboka'),
('MG', '7670851', 'Alaotra Mangoro'),
('MG', '7670852', 'Melaky'),
('MG', '7670853', 'Bongolava'),
('MG', '7670854', 'Vakinankaratra'),
('MG', '7670855', 'Itasy'),
('MG', '7670856', 'Analamanga'),
('MG', '7670857', 'Atsinanana'),
('MG', '7670902', 'Menabe'),
('MG', '7670904', 'Amoron\'i Mania'),
('MG', '7670905', 'Upper Matsiatra'),
('MG', '7670906', 'Vatovavy Fitovinany'),
('MG', '7670907', 'Ihorombe'),
('MG', '7670908', 'Atsimo-Atsinanana'),
('MG', '7670910', 'Anosy'),
('MG', '7670911', 'Androy'),
('MG', '7670913', 'Atsimo-Andrefana'),
('MH', '007', 'Ailinginae Atoll'),
('MH', '010', 'Ailinglaplap Atoll'),
('MH', '030', 'Ailuk Atoll'),
('MH', '040', 'Arno Atoll'),
('MH', '050', 'Aur Atoll'),
('MH', '060', 'Bikar Atoll'),
('MH', '070', 'Bikini Atoll'),
('MH', '080', 'Ebon Atoll'),
('MH', '090', 'Enewetak Atoll'),
('MH', '100', 'Erikub Atoll'),
('MH', '120', 'Jaluit Atoll'),
('MH', '150', 'Kwajalein Atoll'),
('MH', '160', 'Lae Atoll'),
('MH', '180', 'Likiep Atoll'),
('MH', '190', 'Majuro Atoll'),
('MH', '300', 'Maloelap Atoll'),
('MH', '320', 'Mili Atoll'),
('MH', '330', 'Namdrik Atoll'),
('MH', '340', 'Namu Atoll'),
('MH', '350', 'Rongelap Atoll'),
('MH', '360', 'Rongrik Atoll'),
('MH', '385', 'Taka Atoll'),
('MH', '073', 'Bokak Atoll'),
('MH', '390', 'Ujae Atoll'),
('MH', '400', 'Ujelang'),
('MH', '410', 'Utrik Atoll'),
('MH', '420', 'Wotho Atoll'),
('MH', '430', 'Wotje Atoll'),
('MH', '110', 'Jabat Island'),
('MH', '130', 'Jemo Island'),
('MH', '140', 'Kili Island'),
('MH', '170', 'Lib Island'),
('MH', '310', 'Mejit Island'),
('MK', 'E9', 'Valandovo'),
('MK', '86', 'Resen'),
('MK', '51', 'Kratovo'),
('MK', '78', 'Pehcevo'),
('MK', '72', 'Novo Selo'),
('MK', '11', 'Bosilovo'),
('MK', 'A9', 'Vasilevo'),
('MK', 'E5', 'Dojran'),
('MK', '08', 'Bogdanci'),
('MK', '47', 'Konce'),
('MK', '62', 'Makedonska Kamenica'),
('MK', 'C6', 'Zrnovci'),
('MK', '40', 'Karbinci'),
('MK', '25', 'Demir Kapija'),
('MK', '87', 'Rosoman'),
('MK', '35', 'Gradsko'),
('MK', '60', 'Lozovo'),
('MK', '19', 'Cesinovo-Oblesevo'),
('MK', 'E1', 'Novaci'),
('MK', '04', 'Berovo'),
('MK', '06', 'Bitola'),
('MK', 'D9', 'Mogila'),
('MK', '01', 'Aracinovo'),
('MK', 'C7', 'Bogovinje'),
('MK', '12', 'Brvenica'),
('MK', 'C8', 'Cair'),
('MK', 'C9', 'Caska'),
('MK', 'D1', 'Centar'),
('MK', '18', 'Centar Zupa'),
('MK', '20', 'Cucer-Sandevo'),
('MK', 'D2', 'Debar'),
('MK', '22', 'Delcevo'),
('MK', 'D3', 'Demir Hisar'),
('MK', '28', 'Dolneni'),
('MK', '29', 'Opstina Gjorce Petrov'),
('MK', '30', 'Drugovo'),
('MK', '32', 'Gazi Baba'),
('MK', '33', 'Gevgelija'),
('MK', 'D4', 'Gostivar'),
('MK', '36', 'Ilinden'),
('MK', 'D5', 'Jegunovce'),
('MK', '41', 'Karpos'),
('MK', 'D6', 'Kavadarci'),
('MK', '43', 'Kicevo'),
('MK', '44', 'Kisela Voda'),
('MK', '46', 'Kocani'),
('MK', '52', 'Kriva Palanka'),
('MK', '53', 'Krivogastani'),
('MK', '54', 'Krusevo'),
('MK', 'D7', 'Kumanovo'),
('MK', '59', 'Opstina Lipkovo'),
('MK', 'D8', 'Makedonski Brod'),
('MK', '69', 'Negotino'),
('MK', 'E2', 'Ohrid'),
('MK', '77', 'Oslomej'),
('MK', '79', 'Petrovec'),
('MK', '80', 'Plasnica'),
('MK', 'E3', 'Prilep'),
('MK', '83', 'Probistip'),
('MK', '84', 'Radovis'),
('MK', '85', 'Opstina Rankovce'),
('MK', 'E4', 'Opstina Rostusa'),
('MK', '90', 'Saraj'),
('MK', '92', 'Sopiste'),
('MK', '97', 'Staro Nagoricane'),
('MK', '98', 'Stip'),
('MK', 'E6', 'Struga'),
('MK', 'E7', 'Strumica'),
('MK', 'A2', 'Studenicani'),
('MK', 'A3', 'Suto Orizari'),
('MK', 'A4', 'Sveti Nikole'),
('MK', 'A5', 'Tearce'),
('MK', 'E8', 'Tetovo'),
('MK', 'F1', 'Veles'),
('MK', 'B3', 'Vevcani'),
('MK', 'B4', 'Vinica'),
('MK', 'B6', 'Vranestica'),
('MK', 'B7', 'Vrapciste'),
('MK', 'C1', 'Zajas'),
('MK', 'C2', 'Zelenikovo'),
('MK', 'C3', 'Zelino'),
('MK', 'F3', 'Aerodrom'),
('MK', 'F4', 'Butel'),
('MK', 'F5', 'Debarca'),
('ML', '08', 'Tombouctou'),
('ML', '06', 'Sikasso'),
('ML', '05', 'Segou'),
('ML', '04', 'Mopti'),
('ML', '07', 'Koulikoro'),
('ML', '03', 'Kayes'),
('ML', '09', 'Gao'),
('ML', '01', 'Bamako'),
('ML', '10', 'Kidal'),
('MM', '12', 'Tanintharyi'),
('MM', '11', 'Shan'),
('MM', '10', 'Sagain'),
('MM', '17', 'Yangon'),
('MM', '01', 'Rakhine'),
('MM', '16', 'Bago'),
('MM', '13', 'Mon'),
('MM', '08', 'Mandalay'),
('MM', '15', 'Magway'),
('MM', '06', 'Kayah'),
('MM', '05', 'Kayin'),
('MM', '04', 'Kachin'),
('MM', '03', 'Ayeyarwady'),
('MM', '02', 'Chin'),
('MN', '19', 'Uvs'),
('MN', '12', 'Hovd'),
('MN', '10', 'Govi-Altay'),
('MN', '09', 'Dzabkhan'),
('MN', '03', 'Bayan-Olgiy'),
('MN', '02', 'Bayanhongor'),
('MN', '20', 'Ulaanbaatar'),
('MN', '18', 'Central Aimak'),
('MN', '17', 'Suhbaatar'),
('MN', '16', 'Selenge'),
('MN', '15', 'OEvoerhangay'),
('MN', '14', 'OEmnoegovi'),
('MN', '13', 'Hovsgol'),
('MN', '11', 'Hentiy'),
('MN', '08', 'Middle Govi'),
('MN', '07', 'East Gobi Aymag'),
('MN', '06', 'East Aimak'),
('MN', '21', 'Bulgan'),
('MN', '01', 'Arhangay'),
('MN', '23', 'Darhan Uul'),
('MN', '24', 'Govi-Sumber'),
('MN', '25', 'Orhon'),
('MO', '02', 'Macau'),
('MO', '01', 'Ilhas'),
('MP', '100', 'Rota'),
('MP', '110', 'Saipan'),
('MP', '120', 'Tinian'),
('MP', '085', 'Northern Islands'),
('MQ', 'MQ', 'Martinique'),
('MR', '06', 'Trarza'),
('MR', '11', 'Tiris Zemmour'),
('MR', '09', 'Tagant'),
('MR', 'NKC', 'Nouakchott'),
('MR', '12', 'Inchiri'),
('MR', '02', 'Hodh el Gharbi'),
('MR', '01', 'Hodh ech Chargui'),
('MR', '10', 'Guidimaka'),
('MR', '04', 'Gorgol'),
('MR', '08', 'Dakhlet Nouadhibou'),
('MR', '05', 'Brakna'),
('MR', '03', 'Assaba'),
('MR', '07', 'Adrar'),
('MS', '03', 'Saint Peter'),
('MS', '02', 'Saint Georges'),
('MS', '01', 'Saint Anthony'),
('MT', '01', 'Attard'),
('MT', '02', 'Balzan'),
('MT', '03', 'Il-Birgu'),
('MT', '04', 'Birkirkara'),
('MT', '05', 'Birzebbuga'),
('MT', '06', 'Bormla'),
('MT', '07', 'Dingli'),
('MT', '08', 'Il-Fgura'),
('MT', '09', 'Il-Furjana'),
('MT', '10', 'Il-Fontana'),
('MT', '11', 'Ghajnsielem'),
('MT', '12', 'L-Gharb'),
('MT', '13', 'Hal Gharghur'),
('MT', '14', 'L-Ghasri'),
('MT', '15', 'Hal Ghaxaq'),
('MT', '16', 'Il-Gudja'),
('MT', '17', 'Il-Gzira'),
('MT', '18', 'Il-Hamrun'),
('MT', '19', 'L-Iklin'),
('MT', '20', 'L-Imdina'),
('MT', '21', 'L-Imgarr'),
('MT', '22', 'L-Imqabba'),
('MT', '23', 'L-Imsida'),
('MT', '24', 'L-Imtarfa'),
('MT', '25', 'L-Isla'),
('MT', '26', 'Il-Kalkara'),
('MT', '27', 'Ta\' Kercem'),
('MT', '28', 'Kirkop'),
('MT', '29', 'Lija'),
('MT', '30', 'Luqa'),
('MT', '31', 'Il-Marsa'),
('MT', '32', 'Marsaskala'),
('MT', '33', 'Marsaxlokk'),
('MT', '34', 'Il-Mellieha'),
('MT', '35', 'Il-Mosta'),
('MT', '36', 'Il-Munxar'),
('MT', '37', 'In-Nadur'),
('MT', '38', 'In-Naxxar'),
('MT', '39', 'Paola'),
('MT', '40', 'Pembroke'),
('MT', '41', 'Tal-Pieta'),
('MT', '42', 'Il-Qala'),
('MT', '43', 'Qormi'),
('MT', '44', 'Il-Qrendi'),
('MT', '45', 'Ir-Rabat'),
('MT', '46', 'Victoria'),
('MT', '47', 'Safi'),
('MT', '48', 'Saint John'),
('MT', '49', 'Saint Julian'),
('MT', '50', 'Saint Lawrence'),
('MT', '51', 'Saint Lucia'),
('MT', '52', 'Saint Paul\'s Bay'),
('MT', '53', 'Saint Venera'),
('MT', '54', 'Sannat'),
('MT', '55', 'Is-Siggiewi'),
('MT', '56', 'Tas-Sliema'),
('MT', '57', 'Is-Swieqi'),
('MT', '58', 'Tarxien'),
('MT', '59', 'Ta\' Xbiex'),
('MT', '61', 'Ix-Xaghra'),
('MT', '62', 'Ix-Xewkija'),
('MT', '63', 'Ix-Xghajra'),
('MT', '64', 'Haz-Zabbar'),
('MT', '65', 'Haz-Zebbug'),
('MT', '66', 'Iz-Zebbug'),
('MT', '67', 'Iz-Zejtun'),
('MT', '68', 'Iz-Zurrieq'),
('MT', '60', 'Il-Belt Valletta'),
('MU', '21', 'Agalega Islands'),
('MU', '20', 'Savanne'),
('MU', '19', 'Riviere du Rempart'),
('MU', '18', 'Port Louis'),
('MU', '17', 'Plaines Wilhems'),
('MU', '16', 'Pamplemousses'),
('MU', '15', 'Moka'),
('MU', '14', 'Grand Port'),
('MU', '13', 'Flacq'),
('MU', '12', 'Black River'),
('MU', '22', 'Cargados Carajos'),
('MU', '23', 'Rodrigues'),
('MV', '47', 'Vaavu Atholhu'),
('MV', '46', 'Thaa Atholhu'),
('MV', '45', 'Shaviyani Atholhu'),
('MV', '01', 'Seenu'),
('MV', '44', 'Raa Atoll'),
('MV', '43', 'Noonu Atoll'),
('MV', '42', 'Gnyaviyani Atoll'),
('MV', '41', 'Meemu Atholhu'),
('MV', '39', 'Lhaviyani Atholhu'),
('MV', '05', 'Laamu'),
('MV', '38', 'Kaafu Atoll'),
('MV', '37', 'Haa Dhaalu Atholhu'),
('MV', '36', 'Haa Alifu Atholhu'),
('MV', '35', 'Gaafu Dhaalu Atholhu'),
('MV', '34', 'Gaafu Alifu Atholhu'),
('MV', '33', 'Faafu Atholhu'),
('MV', '32', 'Dhaalu Atholhu'),
('MV', '31', 'Baa Atholhu'),
('MV', '30', 'Northern Ari Atoll'),
('MV', '40', 'Maale'),
('MV', '48', 'South Province'),
('MV', '49', 'Upper South'),
('MV', '50', 'Upper North'),
('MV', '51', 'Central Province'),
('MV', '52', 'South Central'),
('MV', '53', 'North Central'),
('MV', '54', 'North Province'),
('MW', 'S', 'Southern Region'),
('MW', 'N', 'Northern Region'),
('MW', 'C', 'Central Region'),
('MX', '31', 'Yucatan'),
('MX', '30', 'Veracruz'),
('MX', '29', 'Tlaxcala'),
('MX', '28', 'Tamaulipas'),
('MX', '27', 'Tabasco'),
('MX', '23', 'Quintana Roo'),
('MX', '22', 'Queretaro'),
('MX', '21', 'Puebla'),
('MX', '20', 'Oaxaca'),
('MX', '19', 'Nuevo Leon'),
('MX', '17', 'Morelos'),
('MX', '15', 'Mexico'),
('MX', '13', 'Hidalgo'),
('MX', '12', 'Guerrero'),
('MX', '09', 'Mexico City'),
('MX', '05', 'Chiapas'),
('MX', '04', 'Campeche'),
('MX', '32', 'Zacatecas'),
('MX', '26', 'Sonora'),
('MX', '25', 'Sinaloa'),
('MX', '24', 'San Luis Potosi'),
('MX', '18', 'Nayarit'),
('MX', '16', 'Michoacan'),
('MX', '14', 'Jalisco'),
('MX', '11', 'Guanajuato'),
('MX', '10', 'Durango'),
('MX', '08', 'Colima'),
('MX', '07', 'Coahuila'),
('MX', '06', 'Chihuahua'),
('MX', '03', 'Baja California Sur'),
('MX', '02', 'Baja California'),
('MX', '01', 'Aguascalientes'),
('MY', '04', 'Melaka'),
('MY', '13', 'Terengganu'),
('MY', '12', 'Selangor'),
('MY', '11', 'Sarawak'),
('MY', '16', 'Sabah'),
('MY', '08', 'Perlis'),
('MY', '07', 'Perak'),
('MY', '06', 'Pahang'),
('MY', '05', 'Negeri Sembilan'),
('MY', '03', 'Kelantan'),
('MY', '14', 'Kuala Lumpur'),
('MY', '09', 'Penang'),
('MY', '02', 'Kedah'),
('MY', '01', 'Johor'),
('MY', '15', 'Labuan'),
('MY', '17', 'Putrajaya'),
('MZ', '09', 'Zambezia'),
('MZ', '08', 'Tete'),
('MZ', '05', 'Sofala'),
('MZ', '07', 'Niassa'),
('MZ', '06', 'Nampula'),
('MZ', '04', 'Maputo'),
('MZ', '10', 'Manica'),
('MZ', '03', 'Inhambane'),
('MZ', '02', 'Gaza'),
('MZ', '01', 'Cabo Delgado'),
('MZ', '11', 'Maputo City'),
('NA', '28', 'Zambezi'),
('NA', '21', 'Khomas'),
('NA', '29', 'Erongo'),
('NA', '30', 'Hardap'),
('NA', '31', 'Karas'),
('NA', '32', 'Kunene'),
('NA', '33', 'Ohangwena'),
('NA', '35', 'Omaheke'),
('NA', '36', 'Omusati'),
('NA', '37', 'Oshana'),
('NA', '38', 'Oshikoto'),
('NA', '39', 'Otjozondjupa'),
('NA', '40', 'Kavango East'),
('NA', '41', 'Kavango West'),
('NC', '02', 'South Province'),
('NC', '01', 'North Province'),
('NC', '03', 'Loyalty Islands'),
('NE', '07', 'Zinder'),
('NE', '06', 'Tahoua'),
('NE', '04', 'Maradi'),
('NE', '03', 'Dosso'),
('NE', '02', 'Diffa'),
('NE', '01', 'Agadez'),
('NE', '09', 'Tillaberi'),
('NE', '08', 'Niamey'),
('NG', '51', 'Sokoto'),
('NG', '50', 'Rivers'),
('NG', '49', 'Plateau'),
('NG', '32', 'Oyo'),
('NG', '48', 'Ondo'),
('NG', '16', 'Ogun'),
('NG', '31', 'Niger'),
('NG', '05', 'Lagos'),
('NG', '30', 'Kwara'),
('NG', '24', 'Katsina'),
('NG', '29', 'Kano'),
('NG', '23', 'Kaduna'),
('NG', '28', 'Imo'),
('NG', '22', 'Cross River'),
('NG', '27', 'Borno'),
('NG', '26', 'Benue'),
('NG', '46', 'Bauchi'),
('NG', '25', 'Anambra'),
('NG', '21', 'Akwa Ibom'),
('NG', '11', 'Abuja Federal Capital Territory'),
('NG', '45', 'Abia'),
('NG', '36', 'Delta'),
('NG', '35', 'Adamawa'),
('NG', '37', 'Edo'),
('NG', '47', 'Enugu'),
('NG', '39', 'Jigawa'),
('NG', '52', 'Bayelsa'),
('NG', '53', 'Ebonyi'),
('NG', '54', 'Ekiti'),
('NG', '55', 'Gombe'),
('NG', '56', 'Nassarawa'),
('NG', '57', 'Zamfara'),
('NG', '40', 'Kebbi'),
('NG', '41', 'Kogi'),
('NG', '42', 'Osun'),
('NG', '43', 'Taraba'),
('NG', '44', 'Yobe'),
('NI', '15', 'Rivas'),
('NI', '14', 'Rio San Juan'),
('NI', '13', 'Nueva Segovia'),
('NI', '12', 'Matagalpa'),
('NI', '11', 'Masaya'),
('NI', '10', 'Managua'),
('NI', '09', 'Madriz'),
('NI', '08', 'Leon'),
('NI', '07', 'Jinotega'),
('NI', '06', 'Granada'),
('NI', '05', 'Esteli'),
('NI', '04', 'Chontales'),
('NI', '03', 'Chinandega'),
('NI', '02', 'Carazo'),
('NI', '01', 'Boaco'),
('NI', '17', 'Atlantico Norte (RAAN)'),
('NI', '18', 'Atlantico Sur'),
('NL', '11', 'South Holland'),
('NL', '10', 'Zeeland'),
('NL', '09', 'Utrecht'),
('NL', '15', 'Overijssel'),
('NL', '07', 'North Holland'),
('NL', '06', 'North Brabant'),
('NL', '05', 'Limburg'),
('NL', '04', 'Groningen'),
('NL', '03', 'Gelderland'),
('NL', '02', 'Friesland'),
('NL', '01', 'Drenthe'),
('NL', '16', 'Flevoland'),
('NO', '05', 'Finnmark Fylke'),
('NO', '20', 'Vestfold'),
('NO', '19', 'Vest-Agder'),
('NO', '18', 'Troms'),
('NO', '17', 'Telemark'),
('NO', '16', 'Sor-Trondelag'),
('NO', '15', 'Sogn og Fjordane'),
('NO', '14', 'Rogaland'),
('NO', '13', 'Ostfold'),
('NO', '12', 'Oslo'),
('NO', '11', 'Oppland'),
('NO', '10', 'Nord-Trondelag'),
('NO', '09', 'Nordland'),
('NO', '08', 'More og Romsdal'),
('NO', '07', 'Hordaland'),
('NO', '06', 'Hedmark'),
('NO', '04', 'Buskerud'),
('NO', '02', 'Aust-Agder'),
('NO', '01', 'Akershus'),
('NP', 'FR', 'Far Western'),
('NP', 'MR', 'Mid Western'),
('NP', 'CR', 'Central Region'),
('NP', 'ER', 'Eastern Region'),
('NP', 'WR', 'Western Region'),
('NR', '14', 'Yaren'),
('NR', '13', 'Uaboe'),
('NR', '12', 'Nibok'),
('NR', '11', 'Meneng'),
('NR', '10', 'Ijuw'),
('NR', '09', 'Ewa'),
('NR', '08', 'Denigomodu'),
('NR', '07', 'Buada'),
('NR', '06', 'Boe'),
('NR', '05', 'Baiti'),
('NR', '04', 'Anibare'),
('NR', '03', 'Anetan'),
('NR', '02', 'Anabar'),
('NR', '01', 'Aiwo'),
('NZ', 'G2', 'Wellington'),
('NZ', 'F3', 'Manawatu-Wanganui'),
('NZ', 'G1', 'Waikato'),
('NZ', 'TAS', 'Tasman'),
('NZ', 'F9', 'Taranaki'),
('NZ', 'F8', 'Southland'),
('NZ', 'E8', 'Bay of Plenty'),
('NZ', 'F6', 'Northland'),
('NZ', 'F4', 'Marlborough'),
('NZ', 'F2', 'Hawke\'s Bay'),
('NZ', 'F1', 'Gisborne'),
('NZ', 'E9', 'Canterbury'),
('NZ', 'E7', 'Auckland'),
('NZ', '10', 'Chatham Islands'),
('NZ', 'F5', 'Nelson'),
('NZ', 'F7', 'Otago'),
('NZ', 'G3', 'West Coast'),
('OM', '01', 'Muhafazat ad Dakhiliyah'),
('OM', '02', 'Al Batinah'),
('OM', '03', 'Al Wusta'),
('OM', '04', 'Ash Sharqiyah'),
('OM', '09', 'Az Zahirah'),
('OM', '06', 'Muhafazat Masqat'),
('OM', '07', 'Musandam'),
('OM', '08', 'Zufar'),
('OM', '10', 'Al Buraimi'),
('OM', '12', 'Ash Sharqiyah'),
('OM', '11', 'Al Batinah'),
('PA', '10', 'Veraguas'),
('PA', '09', 'Guna Yala'),
('PA', '08', 'Panama'),
('PA', '07', 'Los Santos'),
('PA', '06', 'Herrera'),
('PA', '05', 'Darien'),
('PA', '04', 'Colon'),
('PA', '03', 'Cocle'),
('PA', '02', 'Chiriqui'),
('PA', '01', 'Bocas del Toro'),
('PA', '11', 'Embera'),
('PA', '12', 'Ngoebe-Bugle'),
('PE', '25', 'Ucayali'),
('PE', '24', 'Tumbes'),
('PE', '22', 'San Martin'),
('PE', '20', 'Piura'),
('PE', '16', 'Loreto'),
('PE', '14', 'Lambayeque'),
('PE', '13', 'La Libertad'),
('PE', '10', 'Huanuco'),
('PE', '06', 'Cajamarca'),
('PE', '02', 'Ancash'),
('PE', '01', 'Amazonas'),
('PE', '23', 'Tacna'),
('PE', '21', 'Puno'),
('PE', '19', 'Pasco'),
('PE', '18', 'Moquegua'),
('PE', '17', 'Madre de Dios'),
('PE', 'LMA', 'Lima'),
('PE', '15', 'Lima'),
('PE', '12', 'Junin'),
('PE', '11', 'Ica'),
('PE', '09', 'Huancavelica'),
('PE', '08', 'Cusco'),
('PE', '07', 'Callao'),
('PE', '05', 'Ayacucho'),
('PE', '04', 'Arequipa'),
('PE', '03', 'Apurimac'),
('PF', '04', 'Iles Marquises'),
('PF', '03', 'Iles Tuamotu-Gambier'),
('PF', '02', 'Iles Sous-le-Vent'),
('PF', '01', 'Iles du Vent'),
('PF', '05', 'Iles Australes'),
('PG', '17', 'West New Britain'),
('PG', '06', 'Western Province'),
('PG', '16', 'Western Highlands'),
('PG', '05', 'Southern Highlands'),
('PG', '18', 'Sandaun'),
('PG', '07', 'Bougainville'),
('PG', '04', 'Northern Province'),
('PG', '15', 'New Ireland'),
('PG', '20', 'National Capital'),
('PG', '14', 'Morobe'),
('PG', '13', 'Manus'),
('PG', '12', 'Madang'),
('PG', '02', 'Gulf'),
('PG', '19', 'Enga'),
('PG', '11', 'East Sepik'),
('PG', '10', 'East New Britain'),
('PG', '09', 'Eastern Highlands'),
('PG', '08', 'Chimbu'),
('PG', '03', 'Milne Bay'),
('PG', '01', 'Central Province'),
('PG', '21', 'Hela'),
('PG', '22', 'Jiwaka'),
('PH', '14', 'Autonomous Region in Muslim Mindanao'),
('PH', '10', 'Northern Mindanao'),
('PH', '41', 'Mimaropa'),
('PH', '02', 'Cagayan Valley'),
('PH', '12', 'Soccsksargen'),
('PH', '13', 'Caraga'),
('PH', '15', 'Cordillera'),
('PH', '01', 'Ilocos'),
('PH', '40', 'Calabarzon'),
('PH', '06', 'Western Visayas'),
('PH', '03', 'Central Luzon'),
('PH', '07', 'Central Visayas'),
('PH', '08', 'Eastern Visayas'),
('PH', '09', 'Zamboanga Peninsula'),
('PH', '11', 'Davao'),
('PH', '05', 'Bicol'),
('PH', 'NCR', 'Metro Manila'),
('PK', '08', 'Islamabad'),
('PK', '05', 'Sindh'),
('PK', '04', 'Punjab'),
('PK', '03', 'Khyber Pakhtunkhwa'),
('PK', '07', 'Gilgit-Baltistan'),
('PK', '01', 'Federally Administered Tribal Areas'),
('PK', '02', 'Balochistan'),
('PK', '06', 'Azad Kashmir'),
('PL', '75', 'Lublin Voivodeship'),
('PL', '77', 'Lesser Poland Voivodeship'),
('PL', '78', 'Masovian Voivodeship'),
('PL', '80', 'Subcarpathian Voivodeship'),
('PL', '81', 'Podlasie'),
('PL', '84', 'Swietokrzyskie'),
('PL', '85', 'Warmian-Masurian Voivodeship'),
('PL', '72', 'Lower Silesian Voivodeship'),
('PL', '74', 'Lodz Voivodeship'),
('PL', '76', 'Lubusz'),
('PL', '79', 'Opole Voivodeship'),
('PL', '82', 'Pomeranian Voivodeship'),
('PL', '83', 'Silesian Voivodeship'),
('PL', '86', 'Greater Poland Voivodeship'),
('PL', '87', 'West Pomeranian Voivodeship'),
('PL', '73', 'Kujawsko-Pomorskie'),
('PM', '97502', 'Saint-Pierre'),
('PM', '97501', 'Miquelon-Langlade'),
('PR', '001', 'Adjuntas'),
('PR', '003', 'Aguada'),
('PR', '005', 'Aguadilla'),
('PR', '007', 'Aguas Buenas'),
('PR', '009', 'Aibonito'),
('PR', '011', 'Anasco'),
('PR', '013', 'Arecibo'),
('PR', '015', 'Arroyo'),
('PR', '017', 'Barceloneta'),
('PR', '019', 'Barranquitas'),
('PR', '021', 'Bayamon'),
('PR', '023', 'Cabo Rojo'),
('PR', '025', 'Caguas'),
('PR', '027', 'Camuy'),
('PR', '029', 'Canovanas'),
('PR', '031', 'Carolina'),
('PR', '033', 'Catano'),
('PR', '035', 'Cayey'),
('PR', '037', 'Ceiba'),
('PR', '039', 'Ciales'),
('PR', '041', 'Cidra'),
('PR', '043', 'Coamo'),
('PR', '045', 'Comerio'),
('PR', '047', 'Corozal'),
('PR', '049', 'Culebra'),
('PR', '051', 'Dorado'),
('PR', '053', 'Fajardo'),
('PR', '054', 'Florida'),
('PR', '055', 'Guanica'),
('PR', '057', 'Guayama'),
('PR', '059', 'Guayanilla'),
('PR', '061', 'Guaynabo'),
('PR', '063', 'Gurabo'),
('PR', '065', 'Hatillo'),
('PR', '067', 'Hormigueros'),
('PR', '069', 'Humacao'),
('PR', '071', 'Isabela'),
('PR', '073', 'Municipio de Jayuya'),
('PR', '075', 'Juana Diaz'),
('PR', '077', 'Municipio de Juncos'),
('PR', '079', 'Lajas'),
('PR', '081', 'Lares'),
('PR', '083', 'Las Marias'),
('PR', '085', 'Las Piedras'),
('PR', '087', 'Loiza'),
('PR', '089', 'Luquillo'),
('PR', '091', 'Manati'),
('PR', '093', 'Maricao'),
('PR', '095', 'Maunabo'),
('PR', '097', 'Mayaguez'),
('PR', '099', 'Moca'),
('PR', '101', 'Morovis'),
('PR', '103', 'Naguabo'),
('PR', '105', 'Naranjito'),
('PR', '107', 'Orocovis'),
('PR', '109', 'Patillas'),
('PR', '111', 'Penuelas'),
('PR', '113', 'Ponce'),
('PR', '117', 'Rincon'),
('PR', '115', 'Quebradillas'),
('PR', '119', 'Rio Grande'),
('PR', '121', 'Sabana Grande'),
('PR', '123', 'Salinas'),
('PR', '125', 'San German'),
('PR', '127', 'San Juan'),
('PR', '129', 'San Lorenzo'),
('PR', '131', 'San Sebastian'),
('PR', '133', 'Santa Isabel Municipio'),
('PR', '135', 'Toa Alta'),
('PR', '137', 'Toa Baja'),
('PR', '139', 'Trujillo Alto'),
('PR', '141', 'Utuado'),
('PR', '143', 'Vega Alta'),
('PR', '145', 'Vega Baja'),
('PR', '149', 'Villalba'),
('PR', '151', 'Yabucoa'),
('PR', '153', 'Yauco'),
('PR', '147', 'Vieques'),
('PS', 'GZ', 'Gaza Strip'),
('PS', 'WE', 'West Bank'),
('PT', '19', 'Setubal'),
('PT', '18', 'Santarem'),
('PT', '16', 'Portalegre'),
('PT', '14', 'Lisbon'),
('PT', '13', 'Leiria'),
('PT', '09', 'Faro'),
('PT', '08', 'Evora'),
('PT', '06', 'Castelo Branco'),
('PT', '03', 'Beja'),
('PT', '10', 'Madeira'),
('PT', '22', 'Viseu'),
('PT', '21', 'Vila Real'),
('PT', '20', 'Viana do Castelo'),
('PT', '17', 'Porto'),
('PT', '11', 'Guarda'),
('PT', '07', 'Coimbra'),
('PT', '05', 'Braganca'),
('PT', '04', 'Braga'),
('PT', '02', 'Aveiro'),
('PT', '23', 'Azores'),
('PW', '11', 'Ngatpang'),
('PW', '16', 'Sonsorol'),
('PW', '05', 'Kayangel'),
('PW', '04', 'Hatohobei'),
('PW', '01', 'Aimeliik'),
('PW', '02', 'Airai'),
('PW', '03', 'Angaur'),
('PW', '06', 'Koror'),
('PW', '07', 'Melekeok'),
('PW', '08', 'Ngaraard'),
('PW', '12', 'Ngchesar'),
('PW', '09', 'Ngarchelong'),
('PW', '10', 'Ngardmau'),
('PW', '13', 'Ngaremlengui'),
('PW', '14', 'Ngiwal'),
('PW', '15', 'Peleliu'),
('PY', '17', 'San Pedro'),
('PY', '16', 'Presidente Hayes'),
('PY', '15', 'Paraguari'),
('PY', '13', 'Neembucu'),
('PY', '12', 'Misiones'),
('PY', '11', 'Itapua'),
('PY', '10', 'Guaira'),
('PY', '08', 'Cordillera'),
('PY', '07', 'Concepcion'),
('PY', '06', 'Central'),
('PY', '19', 'Canindeyu'),
('PY', '05', 'Caazapa'),
('PY', '04', 'Caaguazu'),
('PY', '02', 'Amambay'),
('PY', '01', 'Alto Parana'),
('PY', '23', 'Alto Paraguay'),
('PY', '22', 'Asuncion'),
('PY', '24', 'Boqueron'),
('QA', '08', 'Madinat ash Shamal'),
('QA', '04', 'Al Khawr'),
('QA', '09', 'Baladiyat Umm Salal'),
('QA', '06', 'Baladiyat ar Rayyan'),
('QA', '01', 'Baladiyat ad Dawhah'),
('QA', '10', 'Al Wakrah'),
('QA', '13', 'Baladiyat az Za`ayin'),
('RE', 'RE', 'Reunion'),
('RO', '40', 'Vrancea'),
('RO', '39', 'Valcea'),
('RO', '38', 'Vaslui'),
('RO', '37', 'Tulcea'),
('RO', '36', 'Timis'),
('RO', '35', 'Teleorman'),
('RO', '34', 'Suceava'),
('RO', '33', 'Sibiu'),
('RO', '32', 'Satu Mare'),
('RO', '31', 'Salaj'),
('RO', '30', 'Prahova'),
('RO', '29', 'Olt'),
('RO', '28', 'Neamt'),
('RO', '27', 'Mures'),
('RO', '26', 'Mehedinti'),
('RO', '25', 'Maramures'),
('RO', '23', 'Iasi'),
('RO', '22', 'Ialomita'),
('RO', '21', 'Hunedoara'),
('RO', '20', 'Harghita'),
('RO', '19', 'Gorj'),
('RO', '42', 'Giurgiu'),
('RO', '18', 'Galati'),
('RO', '17', 'Dolj'),
('RO', '16', 'Dambovita'),
('RO', '15', 'Covasna'),
('RO', '14', 'Constanta'),
('RO', '13', 'Cluj'),
('RO', '12', 'Caras-Severin'),
('RO', '41', 'Calarasi'),
('RO', '11', 'Buzau'),
('RO', '10', 'Bucuresti'),
('RO', '09', 'Brasov'),
('RO', '08', 'Braila'),
('RO', '07', 'Botosani'),
('RO', '06', 'Bistrita-Nasaud'),
('RO', '05', 'Bihor'),
('RO', '04', 'Bacau'),
('RO', '03', 'Arges'),
('RO', '02', 'Arad'),
('RO', '01', 'Alba'),
('RO', '43', 'Ilfov'),
('RS', 'VO', 'Autonomna Pokrajina Vojvodina'),
('RS', 'SE', 'Central Serbia'),
('RU', '88', 'Jaroslavl'),
('RU', '86', 'Voronezj'),
('RU', '85', 'Vologda'),
('RU', '84', 'Volgograd'),
('RU', '81', 'Ulyanovsk'),
('RU', '80', 'Udmurtiya'),
('RU', '77', 'Tverskaya'),
('RU', '76', 'Tula'),
('RU', '73', 'Tatarstan'),
('RU', '72', 'Tambov'),
('RU', '70', 'Stavropol\'skiy'),
('RU', '69', 'Smolensk'),
('RU', '67', 'Saratov'),
('RU', '65', 'Samara'),
('RU', '62', 'Rjazan'),
('RU', '61', 'Rostov'),
('RU', '60', 'Pskov'),
('RU', '90', 'Perm'),
('RU', '57', 'Penza'),
('RU', '56', 'Orjol'),
('RU', '55', 'Orenburg'),
('RU', '52', 'Novgorod'),
('RU', '68', 'North Ossetia'),
('RU', '50', 'Nenetskiy Avtonomnyy Okrug'),
('RU', '49', 'Murmansk'),
('RU', '48', 'Moscow'),
('RU', '47', 'Moskovskaya'),
('RU', '46', 'Mordoviya'),
('RU', '45', 'Mariy-El'),
('RU', '43', 'Lipetsk'),
('RU', '42', 'Leningrad'),
('RU', '66', '-Petersburg'),
('RU', '41', 'Kursk'),
('RU', '38', 'Krasnodarskiy'),
('RU', '37', 'Kostroma'),
('RU', '34', 'Komi Republic'),
('RU', '33', 'Kirov'),
('RU', '28', 'Republic of Karelia'),
('RU', '27', 'Karachayevo-Cherkesiya'),
('RU', '25', 'Kaluga'),
('RU', '24', 'Kalmykiya'),
('RU', '23', 'Kaliningrad'),
('RU', '22', 'Kabardino-Balkariya'),
('RU', '21', 'Ivanovo'),
('RU', '19', 'Ingushetiya'),
('RU', '51', 'Nizjnij Novgorod'),
('RU', '17', 'Dagestan'),
('RU', '16', 'Chuvashia'),
('RU', '12', 'Chechnya'),
('RU', '10', 'Brjansk'),
('RU', '09', 'Belgorod'),
('RU', '08', 'Bashkortostan'),
('RU', '07', 'Astrakhan'),
('RU', '06', 'Arkhangelskaya'),
('RU', '01', 'Adygeya'),
('RU', '83', 'Vladimir'),
('RU', '87', 'Yamalo-Nenetskiy Avtonomnyy Okrug'),
('RU', '78', 'Tjumen'),
('RU', '79', 'Tyva'),
('RU', '75', 'Tomsk'),
('RU', '71', 'Sverdlovsk'),
('RU', '54', 'Omsk'),
('RU', '53', 'Novosibirsk'),
('RU', '40', 'Kurgan'),
('RU', '91', 'Krasnoyarskiy'),
('RU', '32', 'Khanty-Mansiyskiy Avtonomnyy Okrug'),
('RU', '31', 'Khakasiya'),
('RU', '29', 'Kemerovo'),
('RU', '03', 'Altay'),
('RU', '13', 'Chelyabinsk'),
('RU', '04', 'Altai Krai'),
('RU', '63', 'Sakha'),
('RU', '59', 'Primorskiy'),
('RU', '30', 'Khabarovsk Krai'),
('RU', '20', 'Irkutsk'),
('RU', '89', 'Jewish Autonomous Oblast'),
('RU', '05', 'Amur'),
('RU', '11', 'Respublika Buryatiya'),
('RU', '64', 'Sakhalin'),
('RU', '44', 'Magadan'),
('RU', '92', 'Kamtsjatka'),
('RU', '15', 'Chukotskiy Avtonomnyy Okrug'),
('RU', '93', 'Transbaikal Territory'),
('RW', '11', 'Eastern Province'),
('RW', '12', 'Kigali'),
('RW', '13', 'Northern Province'),
('RW', '14', 'Western Province'),
('RW', '15', 'Southern Province'),
('SA', '19', 'Mintaqat Tabuk'),
('SA', '16', 'Najran'),
('SA', '14', 'Makkah'),
('SA', '17', 'Jizan'),
('SA', '13', 'Mintaqat Ha\'il'),
('SA', '11', 'Mintaqat `Asir'),
('SA', '06', 'Eastern Province'),
('SA', '10', 'Ar Riyad'),
('SA', '08', 'Al-Qassim'),
('SA', '05', 'Al Madinah al Munawwarah'),
('SA', '20', 'Al Jawf'),
('SA', '15', 'Northern Borders'),
('SA', '02', 'Mintaqat al Bahah'),
('SB', '11', 'Western Province'),
('SB', '03', 'Malaita'),
('SB', '07', 'Isabel'),
('SB', '06', 'Guadalcanal'),
('SB', '10', 'Central Province'),
('SB', '09', 'Temotu'),
('SB', '08', 'Makira'),
('SB', '12', 'Choiseul'),
('SB', '13', 'Rennell and Bellona'),
('SB', '14', 'Honiara'),
('SC', '23', 'Takamaka'),
('SC', '22', 'Saint Louis'),
('SC', '27', 'Port Glaud'),
('SC', '20', 'Pointe Larue'),
('SC', '19', 'Plaisance'),
('SC', '18', 'Mont Fleuri'),
('SC', '17', 'Mont Buxton'),
('SC', '26', 'English River'),
('SC', '25', 'Inner Islands'),
('SC', '24', 'Grand Anse Mahe'),
('SC', '14', 'Grand Anse Praslin'),
('SC', '12', 'Glacis'),
('SC', '11', 'Cascade'),
('SC', '10', 'Bel Ombre'),
('SC', '09', 'Bel Air'),
('SC', '08', 'Beau Vallon'),
('SC', '07', 'Baie Sainte Anne'),
('SC', '06', 'Baie Lazare'),
('SC', '05', 'Anse Royale'),
('SC', '03', 'Anse Etoile'),
('SC', '02', 'Anse Boileau'),
('SC', '01', 'Anse-aux-Pins'),
('SC', '29', 'Les Mamelles'),
('SC', '30', 'Roche Caiman'),
('SC', '28', 'Au Cap'),
('SD', '43', 'Northern State'),
('SD', '29', 'Khartoum'),
('SD', '36', 'Red Sea'),
('SD', '38', 'Al Jazirah'),
('SD', '39', 'Al Qadarif'),
('SD', '41', 'White Nile'),
('SD', '42', 'Blue Nile'),
('SD', '47', 'Western Darfur'),
('SD', '49', 'Southern Darfur'),
('SD', '50', 'Southern Kordofan'),
('SD', '52', 'Kassala'),
('SD', '53', 'River Nile'),
('SD', '55', 'Northern Darfur'),
('SD', '56', 'Shamal Kurdufan'),
('SD', '58', 'Sinnar'),
('SD', '60', 'Eastern Darfur'),
('SD', '61', 'Central Darfur'),
('SE', '14', 'Norrbotten'),
('SE', '25', 'Vaestmanland'),
('SE', '24', 'Vaesternorrland'),
('SE', '23', 'Vaesterbotten'),
('SE', '22', 'Vaermland'),
('SE', '21', 'Uppsala'),
('SE', '26', 'Stockholm'),
('SE', '18', 'Soedermanland'),
('SE', '16', 'OEstergoetland'),
('SE', '15', 'OErebro'),
('SE', '12', 'Kronoberg'),
('SE', '10', 'Dalarna'),
('SE', '09', 'Kalmar'),
('SE', '08', 'Joenkoeping'),
('SE', '07', 'Jaemtland'),
('SE', '06', 'Halland'),
('SE', '05', 'Gotland'),
('SE', '03', 'Gaevleborg'),
('SE', '02', 'Blekinge'),
('SE', '27', 'Skane'),
('SE', '28', 'Vaestra Goetaland'),
('SG', '01', 'Central Singapore'),
('SG', '02', 'North East'),
('SG', '04', 'South East'),
('SG', '05', 'South West'),
('SG', '03', 'North West'),
('SH', '01', 'Ascension'),
('SH', '03', 'Tristan da Cunha'),
('SH', '02', 'Saint Helena'),
('SI', 'N5', 'Zalec'),
('SI', 'E7', 'Zagorje ob Savi'),
('SI', 'E5', 'Vrhnika'),
('SI', 'D5', 'Trzic'),
('SI', 'D4', 'Trebnje'),
('SI', 'D3', 'Trbovlje'),
('SI', 'D2', 'Tolmin'),
('SI', 'D7', 'Velenje'),
('SI', 'C5', 'Smarje pri Jelsah'),
('SI', 'C4', 'Slovenska Konjice'),
('SI', 'L8', 'Slovenska Bistrica'),
('SI', 'C2', 'Slovenj Gradec'),
('SI', 'B9', 'Skofja Loka'),
('SI', 'B7', 'Sezana'),
('SI', 'B6', 'Sevnica'),
('SI', 'L7', 'Sentjur pri Celju'),
('SI', 'L1', 'Ribnica'),
('SI', 'A3', 'Radovljica'),
('SI', 'A2', 'Radlje ob Dravi'),
('SI', 'K7', 'Ptuj'),
('SI', '94', 'Postojna'),
('SI', 'J9', 'Piran-Pirano'),
('SI', '87', 'Ormoz'),
('SI', 'J7', 'Novo Mesto'),
('SI', '84', 'Nova Gorica'),
('SI', '80', 'Murska Sobota'),
('SI', '79', 'Mozirje'),
('SI', '73', 'Metlika'),
('SI', 'J2', 'Maribor'),
('SI', '64', 'Logatec'),
('SI', 'I6', 'Ljutomer'),
('SI', 'I5', 'Litija'),
('SI', 'I3', 'Lenart'),
('SI', '57', 'Lasko'),
('SI', '54', 'Krsko'),
('SI', '52', 'Kranj'),
('SI', '50', 'Koper-Capodistria'),
('SI', 'H7', 'Kocevje'),
('SI', 'H6', 'Kamnik'),
('SI', 'H4', 'Jesenice'),
('SI', '40', 'Izola-Isola'),
('SI', '38', 'Ilirska Bistrica'),
('SI', '36', 'Idrija'),
('SI', '34', 'Hrastnik'),
('SI', '32', 'Grosuplje'),
('SI', '29', 'Gornja Radgona'),
('SI', '25', 'Dravograd'),
('SI', 'G7', 'Domzale'),
('SI', '17', 'Crnomelj'),
('SI', '13', 'Cerknica'),
('SI', '11', 'Celje'),
('SI', '08', 'Brezice'),
('SI', '01', 'Ajdovscina'),
('SI', '35', 'Hrpelje-Kozina'),
('SI', '19', 'Divaca'),
('SI', '91', 'Pivka'),
('SI', 'I7', 'Loska Dolina'),
('SI', '66', 'Loski Potok'),
('SI', '88', 'Osilnica'),
('SI', 'D8', 'Velike Lasce'),
('SI', 'C1', 'Skofljica'),
('SI', '37', 'Ig'),
('SI', '09', 'Brezovica'),
('SI', '05', 'Borovnica'),
('SI', 'E1', 'Vipava'),
('SI', '49', 'Komen'),
('SI', 'J5', 'Miren-Kostanjevica'),
('SI', '07', 'Brda'),
('SI', '44', 'Kanal'),
('SI', 'F2', 'Ziri'),
('SI', '14', 'Cerkno'),
('SI', 'F1', 'Zelezniki'),
('SI', '27', 'Gorenja Vas-Poljane'),
('SI', 'G4', 'Dobrova-Horjul-Polhov Gradec'),
('SI', '46', 'Kobarid'),
('SI', '06', 'Bovec'),
('SI', '04', 'Bohinj'),
('SI', '03', 'Bled'),
('SI', '82', 'Naklo'),
('SI', '53', 'Kranjska Gora'),
('SI', 'K5', 'Preddvor'),
('SI', '12', 'Cerklje na Gorenjskem'),
('SI', 'B2', 'Sencur'),
('SI', 'E3', 'Vodice'),
('SI', '71', 'Medvode'),
('SI', '72', 'Menges'),
('SI', '22', 'Dol pri Ljubljani'),
('SI', '77', 'Moravce'),
('SI', '30', 'Gornji Grad'),
('SI', 'I9', 'Luce'),
('SI', 'K8', 'Ravne na Koroskem'),
('SI', '74', 'Mezica'),
('SI', '81', 'Muta'),
('SI', 'E6', 'Vuzenica'),
('SI', '16', 'Crna na Koroskem'),
('SI', '62', 'Ljubno'),
('SI', 'C7', 'Sostanj'),
('SI', 'C6', 'Smartno ob Paki'),
('SI', '68', 'Lukovica'),
('SI', '99', 'Radece'),
('SI', '39', 'Ivancna Gorica'),
('SI', '20', 'Dobrepolje'),
('SI', 'B1', 'Semic'),
('SI', 'B4', 'Sentjernej'),
('SI', 'B8', 'Skocjan'),
('SI', 'C9', 'Store'),
('SI', 'N3', 'Vojnik'),
('SI', 'E2', 'Vitanje'),
('SI', 'F3', 'Zrece'),
('SI', '76', 'Mislinja'),
('SI', 'L3', 'Ruse'),
('SI', '55', 'Kungota'),
('SI', 'B3', 'Sentilj'),
('SI', '89', 'Pesnica'),
('SI', '26', 'Duplek'),
('SI', '98', 'Race-Fram'),
('SI', 'C8', 'Starse'),
('SI', '45', 'Kidricevo'),
('SI', 'J1', 'Majsperk'),
('SI', 'N2', 'Videm'),
('SI', 'A7', 'Rogaska Slatina'),
('SI', 'A8', 'Rogatec'),
('SI', '92', 'Podcetrtek'),
('SI', '51', 'Kozje'),
('SI', '28', 'Gorisnica'),
('SI', 'E9', 'Zavrc'),
('SI', '24', 'Dornava'),
('SI', '42', 'Jursinci'),
('SI', 'D1', 'Sveti Jurij'),
('SI', 'A1', 'Radenci'),
('SI', '97', 'Puconci'),
('SI', 'A6', 'Rogasovci'),
('SI', 'I2', 'Kuzma'),
('SI', '31', 'Gornji Petrovci'),
('SI', '78', 'Moravske Toplice'),
('SI', '47', 'Kobilje'),
('SI', '02', 'Beltinci'),
('SI', 'D6', 'Turnisce'),
('SI', '86', 'Odranci'),
('SI', '15', 'Crensovci'),
('SI', '83', 'Nazarje'),
('SI', '61', 'Ljubljana'),
('SI', 'N7', 'Zirovnica'),
('SI', 'H5', 'Jezersko'),
('SI', 'M2', 'Solcava'),
('SI', 'H8', 'Komenda'),
('SI', 'H3', 'Horjul'),
('SI', 'L6', 'Sempeter-Vrtojba'),
('SI', 'F6', 'Bloke'),
('SI', 'M1', 'Sodrazica'),
('SI', 'M8', 'Trzin'),
('SI', 'K6', 'Prevalje'),
('SI', 'N4', 'Vransko'),
('SI', 'M5', 'Tabor'),
('SI', 'F7', 'Braslovce'),
('SI', 'K3', 'Polzela'),
('SI', 'K4', 'Prebold'),
('SI', 'H9', 'Kostel'),
('SI', 'N8', 'Zuzemberk'),
('SI', 'G6', 'Dolenjske Toplice'),
('SI', 'J6', 'Mirna Pec'),
('SI', 'F5', 'Bistrica ob Sotli'),
('SI', 'G2', 'Dobje'),
('SI', 'G3', 'Dobrna'),
('SI', 'J8', 'Oplotnica'),
('SI', 'K2', 'Podvelka'),
('SI', 'L2', 'Ribnica na Pohorju'),
('SI', 'I8', 'Lovrenc na Pohorju'),
('SI', 'L5', 'Selnica ob Dravi'),
('SI', 'H1', 'Hoce-Slivnica'),
('SI', 'J4', 'Miklavz na Dravskem Polju'),
('SI', 'G9', 'Hajdina'),
('SI', 'N6', 'Zetale'),
('SI', 'K1', 'Podlehnik'),
('SI', 'J3', 'Markovci'),
('SI', 'G1', 'Destrnik'),
('SI', 'M7', 'Trnovska Vas'),
('SI', 'M4', 'Sveti Andraz v Slovenskih Goricah'),
('SI', 'F9', 'Cerkvenjak'),
('SI', 'F4', 'Benedikt'),
('SI', 'M3', 'Sveta Ana'),
('SI', 'I1', 'Krizevci'),
('SI', 'N1', 'Verzej'),
('SI', 'M9', 'Velika Polana'),
('SI', 'I4', 'Lendava-Lendva'),
('SI', 'G5', 'Dobrovnik-Dobronak'),
('SI', 'M6', 'Tisina'),
('SI', 'F8', 'Cankova'),
('SI', 'G8', 'Grad'),
('SI', 'H2', 'Hodos-Hodos'),
('SI', 'K9', 'Razkrizje'),
('SI', 'L9', 'Smartno pri Litiji'),
('SI', 'L4', 'Salovci'),
('SI', 'N9', 'Apace'),
('SI', 'O1', 'Cirkulane'),
('SI', 'O3', 'Kostanjevica na Krki'),
('SI', 'O4', 'Log-Dragomer'),
('SI', 'O5', 'Makole'),
('SI', 'O7', 'Mokronog-Trebelno'),
('SI', 'O8', 'Poljcane'),
('SI', 'O9', 'Recica ob Savinji'),
('SI', 'P1', 'Rence-Vogrsko'),
('SI', 'P4', 'Sredisce ob Dravi'),
('SI', 'P5', 'Straza'),
('SI', 'P6', 'Sveta Trojica v Slovenskih Goricah'),
('SI', 'P8', 'Sveti Tomaz'),
('SI', 'P2', 'Sentrupert'),
('SI', 'P3', 'Smarjeske Toplice'),
('SI', 'P7', 'Sveti Jurij v Slovenskih Goricah'),
('SI', 'O2', 'Gorje'),
('SJ', '22', 'Jan Mayen'),
('SJ', '21', 'Svalbard'),
('SK', '03', 'Kosicky'),
('SK', '05', 'Presovsky'),
('SK', '08', 'Zilinsky'),
('SK', '01', 'Banskobystricky'),
('SK', '02', 'Bratislavsky'),
('SK', '04', 'Nitriansky'),
('SK', '06', 'Trenciansky'),
('SK', '07', 'Trnavsky'),
('SL', '04', 'Western Area'),
('SL', '03', 'Southern Province'),
('SL', '02', 'Northern Province'),
('SL', '01', 'Eastern Province'),
('SM', '09', 'Serravalle'),
('SM', '02', 'Chiesanuova'),
('SM', '07', 'San Marino'),
('SM', '01', 'Acquaviva'),
('SM', '06', 'Borgo Maggiore'),
('SM', '03', 'Domagnano'),
('SM', '04', 'Faetano'),
('SM', '05', 'Fiorentino'),
('SM', '08', 'Montegiardino'),
('SN', '12', 'Ziguinchor'),
('SN', '07', 'Thies'),
('SN', '05', 'Tambacounda'),
('SN', '14', 'Saint-Louis'),
('SN', '15', 'Matam'),
('SN', '13', 'Louga'),
('SN', '11', 'Kolda'),
('SN', '10', 'Kaolack'),
('SN', '09', 'Fatick'),
('SN', '03', 'Diourbel'),
('SN', '01', 'Dakar'),
('SN', '16', 'Kaffrine'),
('SN', '17', 'Kedougou'),
('SN', '18', 'Sedhiou'),
('SO', '20', 'Woqooyi Galbeed'),
('SO', '19', 'Togdheer'),
('SO', '14', 'Lower Shabeelle'),
('SO', '13', 'Middle Shabele'),
('SO', '12', 'Sanaag'),
('SO', '18', 'Nugaal'),
('SO', '10', 'Mudug'),
('SO', '09', 'Lower Juba'),
('SO', '08', 'Middle Juba'),
('SO', '07', 'Hiiraan'),
('SO', '06', 'Gedo'),
('SO', '05', 'Galguduud'),
('SO', '04', 'Bay'),
('SO', '03', 'Bari'),
('SO', '02', 'Banaadir'),
('SO', '01', 'Bakool'),
('SO', '21', 'Awdal'),
('SO', '22', 'Sool'),
('SR', '19', 'Wanica'),
('SR', '18', 'Sipaliwini'),
('SR', '17', 'Saramacca'),
('SR', '16', 'Paramaribo'),
('SR', '15', 'Para'),
('SR', '14', 'Nickerie'),
('SR', '13', 'Marowijne'),
('SR', '12', 'Coronie'),
('SR', '11', 'Commewijne'),
('SR', '10', 'Brokopondo'),
('SS', '07', 'Upper Nile'),
('SS', '04', 'Lakes'),
('SS', '06', 'Unity'),
('SS', '01', 'Central Equatoria'),
('SS', '10', 'Western Equatoria'),
('SS', '09', 'Western Bahr al Ghazal'),
('SS', '03', 'Jonglei'),
('SS', '05', 'Northern Bahr al Ghazal'),
('SS', '02', 'Eastern Equatoria'),
('SS', '08', 'Warrap'),
('ST', '02', 'Sao Tome Island'),
('ST', '01', 'Principe'),
('SV', '14', 'Usulutan'),
('SV', '13', 'Sonsonate'),
('SV', '12', 'San Vicente'),
('SV', '11', 'Santa Ana'),
('SV', '10', 'San Salvador'),
('SV', '09', 'San Miguel'),
('SV', '08', 'Morazan'),
('SV', '07', 'La Union'),
('SV', '06', 'La Paz'),
('SV', '05', 'La Libertad'),
('SV', '04', 'Cuscatlan'),
('SV', '03', 'Chalatenango'),
('SV', '02', 'Cabanas'),
('SV', '01', 'Ahuachapan'),
('SY', '14', 'Tartus'),
('SY', '13', 'Dimashq'),
('SY', '12', 'Idlib'),
('SY', '11', 'Homs'),
('SY', '10', 'Hama'),
('SY', '09', 'Aleppo'),
('SY', '08', 'Rif-dimashq'),
('SY', '07', 'Deir ez-Zor'),
('SY', '06', 'Daraa'),
('SY', '05', 'As-Suwayda'),
('SY', '04', 'Ar-Raqqah'),
('SY', '03', 'Quneitra'),
('SY', '02', 'Latakia'),
('SY', '01', 'Al-Hasakah'),
('SZ', '04', 'Shiselweni'),
('SZ', '03', 'Manzini'),
('SZ', '02', 'Lubombo'),
('SZ', '01', 'Hhohho'),
('TD', '13', 'Salamat'),
('TD', '12', 'Ouaddai'),
('TD', '02', 'Biltine'),
('TD', '14', 'Tandjile'),
('TD', '17', 'Moyen-Chari'),
('TD', '16', 'Mayo-Kebbi Est'),
('TD', '09', 'Logone Oriental'),
('TD', '08', 'Logone Occidental'),
('TD', '07', 'Lac'),
('TD', '06', 'Kanem'),
('TD', '05', 'Guera'),
('TD', '15', 'Chari-Baguirmi'),
('TD', '01', 'Batha'),
('TD', '23', 'Borkou'),
('TD', '18', 'Hadjer-Lamis'),
('TD', '19', 'Mandoul'),
('TD', '20', 'Mayo-Kebbi Ouest'),
('TD', '21', 'Region de la Ville de N\'Djamena'),
('TD', '22', 'Barh el Gazel'),
('TD', '25', 'Sila'),
('TD', '26', 'Tibesti'),
('TD', '28', 'Ennedi-Ouest'),
('TD', '27', 'Ennedi-Est'),
('TF', '02', 'Crozet'),
('TF', '03', 'Kerguelen'),
('TF', '01', 'Saint-Paul-et-Amsterdam'),
('TF', '05', 'Iles Eparses'),
('TF', '04', 'Terre-Adelie'),
('TG', '26', 'Savanes'),
('TG', '25', 'Plateaux'),
('TG', '24', 'Maritime'),
('TG', '22', 'Centrale'),
('TG', '23', 'Kara'),
('TH', '15', 'Uthai Thani'),
('TH', '65', 'Trang'),
('TH', '08', 'Tak'),
('TH', '60', 'Surat Thani'),
('TH', '09', 'Sukhothai'),
('TH', '52', 'Ratchaburi'),
('TH', '59', 'Ranong'),
('TH', '57', 'Prachuap Khiri Khan'),
('TH', '62', 'Phuket'),
('TH', '56', 'Phetchaburi'),
('TH', '61', 'Phangnga'),
('TH', '01', 'Mae Hong Son'),
('TH', '05', 'Lamphun'),
('TH', '06', 'Lampang'),
('TH', '63', 'Krabi'),
('TH', '50', 'Kanchanaburi'),
('TH', '11', 'Kamphaeng Phet'),
('TH', '58', 'Chumphon'),
('TH', '03', 'Chiang Rai'),
('TH', '02', 'Chiang Mai'),
('TH', '72', 'Yasothon'),
('TH', '70', 'Yala'),
('TH', '10', 'Uttaradit'),
('TH', '49', 'Trat'),
('TH', '29', 'Surin'),
('TH', '51', 'Suphan Buri'),
('TH', '68', 'Songkhla'),
('TH', '30', 'Sisaket'),
('TH', '33', 'Sing Buri'),
('TH', '67', 'Satun'),
('TH', '37', 'Sara Buri'),
('TH', '54', 'Samut Songkhram'),
('TH', '55', 'Samut Sakhon'),
('TH', '42', 'Samut Prakan'),
('TH', '20', 'Sakon Nakhon'),
('TH', '25', 'Roi Et'),
('TH', '47', 'Rayong'),
('TH', '36', 'Phra Nakhon Si Ayutthaya'),
('TH', '07', 'Phrae'),
('TH', '12', 'Phitsanulok'),
('TH', '13', 'Phichit'),
('TH', '14', 'Phetchabun'),
('TH', '41', 'Phayao'),
('TH', '66', 'Phatthalung'),
('TH', '69', 'Pattani'),
('TH', '39', 'Pathum Thani'),
('TH', '38', 'Nonthaburi'),
('TH', '17', 'Nong Khai'),
('TH', '31', 'Narathiwat'),
('TH', '04', 'Nan'),
('TH', '64', 'Nakhon Si Thammarat'),
('TH', '16', 'Nakhon Sawan'),
('TH', '27', 'Nakhon Ratchasima'),
('TH', '73', 'Nakhon Phanom'),
('TH', '53', 'Nakhon Pathom'),
('TH', '43', 'Nakhon Nayok'),
('TH', '78', 'Mukdahan'),
('TH', '24', 'Maha Sarakham'),
('TH', '34', 'Lop Buri'),
('TH', '18', 'Loei'),
('TH', '40', 'Bangkok'),
('TH', '22', 'Khon Kaen'),
('TH', '23', 'Kalasin'),
('TH', '46', 'Chon Buri'),
('TH', '48', 'Chanthaburi'),
('TH', '26', 'Chaiyaphum'),
('TH', '32', 'Chai Nat'),
('TH', '44', 'Chachoengsao'),
('TH', '28', 'Buriram'),
('TH', '35', 'Ang Thong'),
('TH', '76', 'Changwat Udon Thani'),
('TH', '74', 'Prachin Buri'),
('TH', '75', 'Changwat Ubon Ratchathani'),
('TH', '77', 'Amnat Charoen'),
('TH', '79', 'Changwat Nong Bua Lamphu'),
('TH', '80', 'Sa Kaeo'),
('TH', '81', 'Changwat Bueng Kan'),
('TJ', '03', 'Viloyati Sughd'),
('TJ', '01', 'Gorno-Badakhshan'),
('TJ', '02', 'Khatlon'),
('TJ', 'RR', 'Republican Subordination'),
('TJ', '7280679', 'Dushanbe'),
('TK', 'N', 'Nukunonu'),
('TK', 'F', 'Fakaofo'),
('TK', 'A', 'Atafu'),
('TL', 'VI', 'Viqueque'),
('TL', 'MF', 'Manufahi'),
('TL', 'MT', 'Manatuto'),
('TL', 'LI', 'Liquica'),
('TL', 'LA', 'Lautem'),
('TL', 'CO', 'Cova Lima'),
('TL', 'ER', 'Ermera'),
('TL', 'DI', 'Dili'),
('TL', 'BO', 'Bobonaro'),
('TL', 'BA', 'Baucau'),
('TL', 'OE', 'Oecusse'),
('TL', 'AN', 'Ainaro'),
('TL', 'AL', 'Aileu'),
('TM', '02', 'Balkan'),
('TM', '01', 'Ahal'),
('TM', '03', 'Dasoguz'),
('TM', '05', 'Mary'),
('TM', '04', 'Lebap'),
('TN', '37', 'Zaghwan'),
('TN', '36', 'Tunis'),
('TN', '35', 'Tawzar'),
('TN', '34', 'Tataouine'),
('TN', '23', 'Susah'),
('TN', '22', 'Silyanah'),
('TN', '33', 'Sidi Bu Zayd'),
('TN', '32', 'Safaqis'),
('TN', '31', 'Qibili'),
('TN', '30', 'Gafsa'),
('TN', '29', 'Qabis'),
('TN', '19', 'Nabul'),
('TN', '28', 'Madanin'),
('TN', '06', 'Jundubah'),
('TN', '27', 'Bin \'Arus'),
('TN', '18', 'Banzart'),
('TN', '17', 'Bajah'),
('TN', '38', 'Ariana'),
('TN', '03', 'Al Qayrawan'),
('TN', '02', 'Al Qasrayn'),
('TN', '16', 'Al Munastir'),
('TN', '15', 'Al Mahdiyah'),
('TN', '14', 'Kef'),
('TN', '39', 'Manouba'),
('TO', '03', 'Vava`u'),
('TO', '02', 'Tongatapu'),
('TO', '01', 'Ha`apai'),
('TO', 'EU', '\'Eua'),
('TO', 'NI', 'Niuas'),
('TR', '66', 'Yozgat'),
('TR', '65', 'Van'),
('TR', '64', 'Usak'),
('TR', '63', 'Sanliurfa'),
('TR', '62', 'Tunceli'),
('TR', '58', 'Sivas'),
('TR', '74', 'Siirt'),
('TR', '73', 'Nigde'),
('TR', '50', 'Nevsehir'),
('TR', '49', 'Mus'),
('TR', '48', 'Mugla'),
('TR', '72', 'Mardin'),
('TR', '45', 'Manisa'),
('TR', '44', 'Malatya'),
('TR', '43', 'Kuetahya'),
('TR', '71', 'Konya'),
('TR', '40', 'Kirsehir'),
('TR', '38', 'Kayseri'),
('TR', '46', 'Kahramanmaras'),
('TR', '35', 'Izmir'),
('TR', '33', 'Isparta'),
('TR', '32', 'Mersin'),
('TR', '31', 'Hatay'),
('TR', '70', 'Hakkari'),
('TR', '83', 'Gaziantep'),
('TR', '26', 'Eskisehir'),
('TR', '25', 'Erzurum'),
('TR', '24', 'Erzincan'),
('TR', '23', 'Elazig'),
('TR', '21', 'Diyarbakir'),
('TR', '20', 'Denizli'),
('TR', '15', 'Burdur'),
('TR', '13', 'Bitlis'),
('TR', '12', 'Bingoel'),
('TR', '11', 'Bilecik'),
('TR', '10', 'Balikesir'),
('TR', '09', 'Aydin'),
('TR', '07', 'Antalya'),
('TR', '68', 'Ankara'),
('TR', '04', 'Agri'),
('TR', '03', 'Afyonkarahisar'),
('TR', '02', 'Adiyaman'),
('TR', '81', 'Adana'),
('TR', '91', 'Osmaniye'),
('TR', '88', 'Igdir'),
('TR', '75', 'Aksaray'),
('TR', '76', 'Batman'),
('TR', '78', 'Karaman'),
('TR', '79', 'Kirikkale'),
('TR', '80', 'Sirnak'),
('TR', '90', 'Kilis'),
('TR', '85', 'Zonguldak'),
('TR', '61', 'Trabzon'),
('TR', '60', 'Tokat'),
('TR', '59', 'Tekirdag'),
('TR', '57', 'Sinop'),
('TR', '55', 'Samsun'),
('TR', '54', 'Sakarya'),
('TR', '53', 'Rize'),
('TR', '52', 'Ordu'),
('TR', '41', 'Kocaeli'),
('TR', '39', 'Kirklareli'),
('TR', '37', 'Kastamonu'),
('TR', '84', 'Kars'),
('TR', '34', 'Istanbul'),
('TR', '69', 'Gumushane'),
('TR', '28', 'Giresun'),
('TR', '22', 'Edirne'),
('TR', '19', 'Corum'),
('TR', '82', 'Cankiri'),
('TR', '17', 'Canakkale'),
('TR', '16', 'Bursa'),
('TR', '14', 'Bolu'),
('TR', '08', 'Artvin'),
('TR', '05', 'Amasya'),
('TR', '87', 'Bartin'),
('TR', '89', 'Karabuk'),
('TR', '92', 'Yalova'),
('TR', '86', 'Ardahan'),
('TR', '77', 'Bayburt'),
('TR', '93', 'Duzce'),
('TT', '11', 'Tobago'),
('TT', '10', 'City of San Fernando'),
('TT', '05', 'City of Port of Spain'),
('TT', '03', 'Mayaro'),
('TT', '01', 'Borough of Arima'),
('TT', 'CHA', 'Chaguanas'),
('TT', 'CTT', 'Couva-Tabaquite-Talparo'),
('TT', 'DMN', 'Diego Martin'),
('TT', 'ETO', 'Eastern Tobago'),
('TT', 'PED', 'Penal/Debe'),
('TT', 'PRT', 'Princes Town'),
('TT', 'PTF', 'Point Fortin'),
('TT', 'SGE', 'Sangre Grande'),
('TT', 'SIP', 'Siparia'),
('TT', 'SJL', 'San Juan/Laventille'),
('TT', 'TUP', 'Tunapuna/Piarco'),
('TV', 'NUI', 'Nui'),
('TV', 'NMA', 'Nanumea'),
('TV', 'FUN', 'Funafuti'),
('TV', 'NIT', 'Niutao'),
('TV', 'NMG', 'Nanumanga'),
('TV', 'VAI', 'Vaitupu'),
('TV', 'NKF', 'Nukufetau'),
('TV', 'NKL', 'Nukulaelae'),
('TW', '01', 'Fukien'),
('TW', '02', 'Kaohsiung'),
('TW', '03', 'Taipei'),
('TW', '04', 'Taiwan'),
('TZ', '19', 'Kagera'),
('TZ', '25', 'Zanzibar Urban/West'),
('TZ', '22', 'Zanzibar North'),
('TZ', '21', 'Zanzibar Central/South'),
('TZ', '18', 'Tanga'),
('TZ', '17', 'Tabora'),
('TZ', '16', 'Singida'),
('TZ', '15', 'Shinyanga'),
('TZ', '24', 'Rukwa'),
('TZ', '02', 'Pwani'),
('TZ', '20', 'Pemba South'),
('TZ', '13', 'Pemba North'),
('TZ', '12', 'Mwanza'),
('TZ', '10', 'Morogoro'),
('TZ', '09', 'Mbeya'),
('TZ', '08', 'Mara'),
('TZ', '07', 'Lindi'),
('TZ', '06', 'Kilimanjaro'),
('TZ', '05', 'Kigoma'),
('TZ', '04', 'Iringa'),
('TZ', '03', 'Dodoma'),
('TZ', '23', 'Dar es Salaam'),
('TZ', '26', 'Arusha'),
('TZ', '27', 'Manyara'),
('TZ', '14', 'Ruvuma'),
('TZ', '11', 'Mtwara'),
('TZ', '31', 'Simiyu'),
('TZ', '28', 'Geita'),
('TZ', '29', 'Katavi'),
('TZ', '30', 'Njombe'),
('UA', '27', 'Zhytomyr'),
('UA', '26', 'Zaporizhia'),
('UA', '25', 'Zakarpattia'),
('UA', '24', 'Volyn'),
('UA', '23', 'Vinnyts\'ka'),
('UA', '22', 'Ternopil'),
('UA', '21', 'Sumy'),
('UA', '20', 'Misto Sevastopol\''),
('UA', '19', 'Rivne'),
('UA', '18', 'Poltava'),
('UA', '17', 'Odessa'),
('UA', '16', 'Mykolaiv'),
('UA', '15', 'Lviv'),
('UA', '14', 'Luhansk'),
('UA', '13', 'Kiev'),
('UA', '12', 'Kyiv City'),
('UA', '11', 'Crimea'),
('UA', '10', 'Kirovohrad'),
('UA', '09', 'Khmelnytskyi'),
('UA', '08', 'Kherson'),
('UA', '07', 'Kharkiv'),
('UA', '06', 'Ivano-Frankivsk'),
('UA', '05', 'Donetsk'),
('UA', '04', 'Dnipropetrovsk'),
('UA', '03', 'Chernivtsi'),
('UA', '02', 'Chernihiv'),
('UA', '01', 'Cherkasy'),
('UG', 'C', 'Central Region'),
('UG', 'E', 'Eastern Region'),
('UG', 'N', 'Northern Region'),
('UG', 'W', 'Western Region'),
('UM', '450', 'Wake Island'),
('UM', '350', 'Navassa Island'),
('UM', '050', 'Baker Island'),
('UM', '100', 'Howland Island'),
('UM', '150', 'Jarvis Island'),
('UM', '200', 'Johnston Atoll'),
('UM', '250', 'Kingman Reef'),
('UM', '300', 'Midway Islands'),
('UM', '400', 'Palmyra Atoll'),
('US', 'AR', 'Arkansas'),
('US', 'DC', 'District of Columbia'),
('US', 'DE', 'Delaware'),
('US', 'FL', 'Florida'),
('US', 'GA', 'Georgia'),
('US', 'KS', 'Kansas'),
('US', 'LA', 'Louisiana'),
('US', 'MD', 'Maryland'),
('US', 'MO', 'Missouri'),
('US', 'MS', 'Mississippi'),
('US', 'NC', 'North Carolina'),
('US', 'OK', 'Oklahoma'),
('US', 'SC', 'South Carolina'),
('US', 'TN', 'Tennessee'),
('US', 'TX', 'Texas'),
('US', 'WV', 'West Virginia'),
('US', 'AL', 'Alabama'),
('US', 'CT', 'Connecticut'),
('US', 'IA', 'Iowa'),
('US', 'IL', 'Illinois'),
('US', 'IN', 'Indiana'),
('US', 'ME', 'Maine'),
('US', 'MI', 'Michigan'),
('US', 'MN', 'Minnesota'),
('US', 'NE', 'Nebraska'),
('US', 'NH', 'New Hampshire'),
('US', 'NJ', 'New Jersey'),
('US', 'NY', 'New York'),
('US', 'OH', 'Ohio'),
('US', 'RI', 'Rhode Island'),
('US', 'VT', 'Vermont'),
('US', 'WI', 'Wisconsin'),
('US', 'CA', 'California'),
('US', 'CO', 'Colorado'),
('US', 'NM', 'New Mexico'),
('US', 'NV', 'Nevada'),
('US', 'UT', 'Utah'),
('US', 'AZ', 'Arizona'),
('US', 'ID', 'Idaho'),
('US', 'MT', 'Montana'),
('US', 'ND', 'North Dakota'),
('US', 'OR', 'Oregon'),
('US', 'SD', 'South Dakota'),
('US', 'WA', 'Washington'),
('US', 'WY', 'Wyoming'),
('US', 'HI', 'Hawaii'),
('US', 'AK', 'Alaska'),
('US', 'KY', 'Kentucky'),
('US', 'MA', 'Massachusetts'),
('US', 'PA', 'Pennsylvania'),
('US', 'VA', 'Virginia'),
('UY', '19', 'Treinta y Tres'),
('UY', '18', 'Tacuarembo'),
('UY', '17', 'Soriano'),
('UY', '16', 'San Jose'),
('UY', '15', 'Salto'),
('UY', '14', 'Rocha'),
('UY', '13', 'Rivera'),
('UY', '12', 'Rio Negro'),
('UY', '11', 'Paysandu'),
('UY', '10', 'Montevideo'),
('UY', '09', 'Maldonado'),
('UY', '08', 'Lavalleja'),
('UY', '07', 'Florida'),
('UY', '06', 'Flores'),
('UY', '05', 'Durazno'),
('UY', '04', 'Colonia'),
('UY', '03', 'Cerro Largo'),
('UY', '02', 'Canelones'),
('UY', '01', 'Artigas'),
('UZ', '09', 'Karakalpakstan'),
('UZ', '12', 'Surxondaryo'),
('UZ', '10', 'Samarqand'),
('UZ', '08', 'Qashqadaryo'),
('UZ', '02', 'Bukhara'),
('UZ', '14', 'Toshkent'),
('UZ', '13', 'Toshkent Shahri'),
('UZ', '16', 'Sirdaryo'),
('UZ', '07', 'Navoiy'),
('UZ', '06', 'Namangan'),
('UZ', '05', 'Xorazm'),
('UZ', '15', 'Jizzax'),
('UZ', '03', 'Fergana'),
('UZ', '01', 'Andijon'),
('VC', '05', 'Saint Patrick'),
('VC', '04', 'Saint George'),
('VC', '03', 'Saint David'),
('VC', '02', 'Saint Andrew'),
('VC', '06', 'Grenadines'),
('VC', '01', 'Charlotte'),
('VE', '23', 'Zulia'),
('VE', '22', 'Yaracuy'),
('VE', '21', 'Trujillo'),
('VE', '20', 'Tachira'),
('VE', '19', 'Sucre'),
('VE', '18', 'Portuguesa'),
('VE', '17', 'Nueva Esparta'),
('VE', '16', 'Monagas'),
('VE', '15', 'Miranda'),
('VE', '14', 'Merida'),
('VE', '13', 'Lara'),
('VE', '12', 'Guarico'),
('VE', '24', 'Dependencias Federales'),
('VE', '25', 'Capital'),
('VE', '11', 'Falcon'),
('VE', '09', 'Delta Amacuro'),
('VE', '08', 'Cojedes'),
('VE', '07', 'Carabobo'),
('VE', '06', 'Bolivar'),
('VE', '05', 'Barinas'),
('VE', '04', 'Aragua'),
('VE', '03', 'Apure'),
('VE', '02', 'Anzoategui'),
('VE', '01', 'Amazonas'),
('VE', '26', 'Vargas'),
('VI', '010', 'Saint Croix Island'),
('VI', '020', 'Saint John Island'),
('VI', '030', 'Saint Thomas Island'),
('VN', '58', 'Nghe An'),
('VN', '59', 'Ninh Binh'),
('VN', '60', 'Ninh Thuan'),
('VN', '65', 'Soc Trang'),
('VN', '67', 'Tra Vinh'),
('VN', '68', 'Tuyen Quang'),
('VN', '69', 'Vinh Long'),
('VN', '70', 'Yen Bai'),
('VN', '90', 'Lao Cai'),
('VN', '37', 'Tien Giang'),
('VN', '66', 'Thua Thien-Hue'),
('VN', '55', 'Kon Tum'),
('VN', '34', 'Thanh Hoa'),
('VN', '35', 'Thai Binh'),
('VN', '33', 'Tay Ninh'),
('VN', '32', 'Son La'),
('VN', '64', 'Quang Tri'),
('VN', '30', 'Quang Ninh'),
('VN', '63', 'Quang Ngai'),
('VN', '62', 'Quang Binh'),
('VN', '61', 'Phu Yen'),
('VN', '53', 'Hoa Binh'),
('VN', '24', 'Long An'),
('VN', '39', 'Lang Son'),
('VN', '23', 'Lam Dong'),
('VN', '89', 'Lai Chau'),
('VN', '21', 'Kien Giang'),
('VN', '54', 'Khanh Hoa'),
('VN', '20', 'Ho Chi Minh City'),
('VN', '52', 'Ha Tinh'),
('VN', '50', 'Ha Giang'),
('VN', '49', 'Gia Lai'),
('VN', '44', 'Ha Noi'),
('VN', '87', 'Can Tho'),
('VN', '13', 'Hai Phong'),
('VN', '47', 'Binh Thuan'),
('VN', '09', 'Dong Thap'),
('VN', '43', 'Dong Nai'),
('VN', '88', 'Dac Lak'),
('VN', '45', 'Ba Ria-Vung Tau'),
('VN', '05', 'Cao Bang'),
('VN', '46', 'Binh Dinh'),
('VN', '03', 'Ben Tre'),
('VN', '01', 'An Giang'),
('VN', '91', 'Dak Nong'),
('VN', '92', 'Huyen Dien Bien'),
('VN', '74', 'Bac Ninh'),
('VN', '71', 'Bac Giang'),
('VN', '78', 'Da Nang'),
('VN', '75', 'Binh Duong'),
('VN', '76', 'Binh Phuoc'),
('VN', '85', 'Thai Nguyen'),
('VN', '84', 'Quang Nam'),
('VN', '83', 'Phu Tho'),
('VN', '82', 'Nam Dinh'),
('VN', '80', 'Ha Nam'),
('VN', '72', 'Bac Kan'),
('VN', '73', 'Bac Lieu'),
('VN', '77', 'Ca Mau'),
('VN', '79', 'Hai Duong'),
('VN', '81', 'Hung Yen'),
('VN', '86', 'Vinh Phuc'),
('VN', '93', 'Hau Giang'),
('VU', '15', 'Tafea'),
('VU', '13', 'Sanma'),
('VU', '07', 'Torba'),
('VU', '16', 'Malampa'),
('VU', '17', 'Penama'),
('VU', '18', 'Shefa'),
('WF', '98613', 'Circonscription d\'Uvea'),
('WF', '98612', 'Circonscription de Sigave'),
('WF', '98611', 'Circonscription d\'Alo'),
('WS', '11', 'Vaisigano'),
('WS', '06', 'Va`a-o-Fonoti'),
('WS', '10', 'Tuamasaga'),
('WS', '09', 'Satupa`itea'),
('WS', '08', 'Palauli'),
('WS', '07', 'Gagaifomauga'),
('WS', '05', 'Gaga`emauga'),
('WS', '04', 'Fa`asaleleaga'),
('WS', '03', 'Atua'),
('WS', '02', 'Aiga-i-le-Tai'),
('WS', '01', 'A\'ana'),
('XK', '28', 'Vushtrri'),
('XK', '27', 'Komuna e Vitise'),
('XK', '03', 'Komuna e Ferizajt'),
('XK', '15', 'Komuna e Mitrovices'),
('XK', '26', 'Komuna e Therandes'),
('XK', '25', 'Komuna e Skenderajt'),
('XK', '21', 'Prizren'),
('XK', '20', 'Komuna e Prishtines'),
('XK', '19', 'Podujevo'),
('XK', '18', 'Komuna e Pejes'),
('XK', '22', 'Orahovac'),
('XK', '13', 'Lipjan'),
('XK', '12', 'Komuna e Leposaviqit'),
('XK', '10', 'Kamenica'),
('XK', '11', 'Komuna e Klines'),
('XK', '09', 'Komuna e Kacanikut'),
('XK', '08', 'Komuna e Istogut'),
('XK', '06', 'Komuna e Gjilanit'),
('XK', '07', 'Komuna e Drenasit'),
('XK', '02', 'Komuna e Dragashit'),
('XK', '01', 'Komuna e Decanit'),
('XK', '05', 'Komuna e Gjakoves'),
('XK', '04', 'Kosovo Polje'),
('XK', '23', 'Opstina Strpce'),
('XK', '24', 'Komuna e Shtimes'),
('XK', '16', 'Novo Brdo'),
('XK', '17', 'Komuna e Obiliqit'),
('XK', '14', 'Komuna e Malisheves'),
('XK', '29', 'Komuna e Zubin Potokut'),
('XK', '30', 'Opstina Zvecan'),
('XK', '31', 'Komuna e Gracanices'),
('XK', '32', 'Hani i Elezit'),
('XK', '33', 'Komuna e Junikut'),
('XK', '34', 'Komuna e Kllokotit'),
('XK', '35', 'Komuna e Mamushes'),
('XK', '36', 'Komuna e Parteshit'),
('XK', '37', 'Komuna e Ranillugut'),
('YE', '25', 'Ta\'izz'),
('YE', '05', 'Shabwah'),
('YE', '16', 'Sanaa'),
('YE', '15', 'Sa\'dah'),
('YE', '27', 'Raymah'),
('YE', '14', 'Ma\'rib'),
('YE', '10', 'Al Mahwit'),
('YE', '21', 'Al Jawf'),
('YE', '04', 'Muhafazat Hadramawt'),
('YE', '11', 'Dhamar'),
('YE', '03', 'Al Mahrah'),
('YE', '08', 'Muhafazat al Hudaydah'),
('YE', '20', 'Muhafazat al Bayda\''),
('YE', '02', 'Aden'),
('YE', '01', 'Abyan'),
('YE', '18', 'Ad Dali\''),
('YE', '19', 'Omran'),
('YE', '22', 'Hajjah'),
('YE', '23', 'Ibb'),
('YE', '24', 'Lahij'),
('YE', '26', 'Amanat Al Asimah'),
('YE', '28', 'Soqatra Governorate'),
('YT', '97601', 'Acoua'),
('YT', '97602', 'Bandraboua'),
('YT', '97603', 'Bandrele'),
('YT', '97604', 'Boueni'),
('YT', '97605', 'Chiconi'),
('YT', '97606', 'Chirongui'),
('YT', '97607', 'Dembeni');
INSERT INTO `states` (`country_code`, `state_code`, `state_name`) VALUES
('YT', '97608', 'Dzaoudzi'),
('YT', '97609', 'Kani-Keli'),
('YT', '97610', 'Koungou'),
('YT', '97611', 'Mamoudzou'),
('YT', '97612', 'Mtsamboro'),
('YT', '97613', 'M\'Tsangamouji'),
('YT', '97614', 'Ouangani'),
('YT', '97615', 'Pamandzi'),
('YT', '97616', 'Sada'),
('YT', '97617', 'Tsingoni'),
('ZA', '03', 'Orange Free State'),
('ZA', '02', 'KwaZulu-Natal'),
('ZA', '05', 'Eastern Cape'),
('ZA', '06', 'Gauteng'),
('ZA', '07', 'Mpumalanga'),
('ZA', '08', 'Northern Cape'),
('ZA', '09', 'Limpopo'),
('ZA', '10', 'North-West'),
('ZA', '11', 'Western Cape'),
('ZM', '01', 'Western'),
('ZM', '07', 'Southern'),
('ZM', '06', 'North-Western'),
('ZM', '05', 'Northern'),
('ZM', '09', 'Lusaka'),
('ZM', '04', 'Luapula'),
('ZM', '03', 'Eastern'),
('ZM', '08', 'Copperbelt'),
('ZM', '02', 'Central'),
('ZW', '02', 'Midlands'),
('ZW', '07', 'Matabeleland South'),
('ZW', '06', 'Matabeleland North'),
('ZW', '08', 'Masvingo'),
('ZW', '05', 'Mashonaland West'),
('ZW', '04', 'Mashonaland East'),
('ZW', '03', 'Mashonaland Central'),
('ZW', '01', 'Manicaland'),
('ZW', '09', 'Bulawayo'),
('ZW', '10', 'Harare'),
('AI', '00', 'N/A'),
('AW', '00', 'N/A'),
('BL', '00', 'N/A'),
('CC', '00', 'N/A'),
('CK', '00', 'N/A'),
('CW', '00', 'N/A'),
('CX', '00', 'N/A'),
('FK', '00', 'N/A'),
('GI', '00', 'N/A'),
('GS', '00', 'N/A'),
('IO', '00', 'N/A'),
('KY', '00', 'N/A'),
('MF', '00', 'N/A'),
('NF', '00', 'N/A'),
('NU', '00', 'N/A'),
('SX', '00', 'N/A'),
('TC', '00', 'N/A'),
('VG', '00', 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `students_regis`
--

CREATE TABLE `students_regis` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nextOfskin_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DateOfbirth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district` int(11) DEFAULT NULL,
  `passport_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medical_aid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medical_aid_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medical_aid_scheme` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allegies` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_address` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `my_insterest` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gps_lat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gps_lng` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_pancak_books`
--

CREATE TABLE `student_pancak_books` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mobile_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_of_people` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hotel_room_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gps_lat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gps_lng` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateTimeBook` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_of_person` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `color` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allDay` tinyint(1) NOT NULL,
  `resourceId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` int(11) NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `slug`, `name`, `category`, `color`, `created_by`, `updated_by`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Administration', 'Administration', 1, '', 10, 0, 1, '2017-02-15 07:58:08', '2017-02-15 07:58:08'),
(2, 'Development', 'Development', 1, '', 10, 0, 1, '2017-02-15 07:58:19', '2017-02-15 07:58:19'),
(3, 'Training', 'Training', 1, '', 10, 0, 1, '2017-02-15 07:58:27', '2017-02-15 07:58:27'),
(4, 'Implementation', 'Implementation', 1, '', 10, 0, 1, '2017-02-15 07:59:05', '2017-02-15 07:59:05'),
(5, 'New-Ideas', 'Delete 2', 1, '', 10, 10, 1, '2017-02-15 07:59:42', '2017-02-15 08:11:20'),
(6, 'Leads-&-Prospects', 'Delete 1', 1, '', 10, 10, 1, '2017-02-15 07:59:58', '2017-02-15 08:11:08'),
(7, 'Operations-&-Support', 'Operations & Support', 1, '', 10, 0, 1, '2017-02-15 09:18:08', '2017-02-15 09:18:08'),
(8, 'Test', 'Test', 5, '', 10, 0, 1, '2017-02-23 13:15:06', '2017-02-23 13:15:06'),
(9, 'Speed', 'Speed', 6, '', 10, 0, 1, '2017-03-18 12:15:03', '2017-03-18 12:15:03'),
(10, 'Crude-Oil', 'Crude Oil', 6, '', 10, 0, 1, '2017-03-28 09:34:28', '2017-03-28 09:34:28'),
(11, 'Brent', 'Brent', 6, '', 10, 0, 1, '2017-03-28 09:44:55', '2017-03-28 09:44:55'),
(12, 'Tset', 'Tset', 8, '', 10, 0, 1, '2017-03-28 09:57:08', '2017-03-28 09:57:08');

-- --------------------------------------------------------

--
-- Table structure for table `sub_safety_tips`
--

CREATE TABLE `sub_safety_tips` (
  `id` int(10) UNSIGNED NOT NULL,
  `safety_tips_id` int(10) NOT NULL,
  `safety_tip_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_categories`
--

CREATE TABLE `sub_sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sub_category` int(11) NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_sub_categories`
--

INSERT INTO `sub_sub_categories` (`id`, `slug`, `name`, `sub_category`, `color`, `created_by`, `updated_by`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Legal', 'Legal', 1, '', 10, 0, 1, '2017-02-15 08:16:51', '2017-02-15 08:16:51'),
(2, 'Finance', 'Finance', 1, '', 10, 0, 1, '2017-02-15 08:17:08', '2017-02-15 08:17:08'),
(3, 'HR', 'HR', 1, '', 10, 0, 1, '2017-02-15 08:17:19', '2017-02-15 08:17:19'),
(4, 'Policies-&-Procedures', 'Policies & Procedures', 1, '', 10, 0, 1, '2017-02-15 08:17:37', '2017-02-15 08:17:37'),
(5, 'Contracts', 'Contracts', 1, '', 10, 0, 1, '2017-02-15 08:18:23', '2017-02-15 08:18:23'),
(6, 'Board', 'Board', 1, '', 10, 0, 1, '2017-02-15 08:19:32', '2017-02-15 08:19:32'),
(7, 'Stakeholder-Management', 'Stakeholder Management', 1, '', 10, 0, 1, '2017-02-15 08:21:04', '2017-02-15 08:21:04'),
(8, 'Bugs', 'Bugs', 2, '', 10, 0, 1, '2017-02-15 08:56:57', '2017-02-15 08:56:57'),
(9, 'Help-Screens-&-Manuals', 'Help Screens & Manuals', 2, '', 10, 0, 1, '2017-02-15 08:57:53', '2017-02-15 08:57:53'),
(10, 'Workflows', 'Workflows', 2, '', 10, 0, 1, '2017-02-15 08:58:09', '2017-02-15 08:58:09'),
(11, 'Tasking', 'Tasking', 2, '', 10, 0, 1, '2017-02-15 08:58:22', '2017-02-15 08:58:22'),
(12, 'Calendar', 'Calendar', 2, '', 10, 0, 1, '2017-02-15 08:58:41', '2017-02-15 08:58:41'),
(13, 'Reports', 'Reports', 2, '', 10, 0, 1, '2017-02-15 08:58:53', '2017-02-15 08:58:53'),
(14, 'Drone-Integration', 'Drone Integration', 2, '', 10, 0, 1, '2017-02-15 08:59:11', '2017-02-15 08:59:11'),
(15, 'Port-Asset-Tracking', 'Port Asset Tracking', 2, '', 10, 0, 1, '2017-02-15 08:59:33', '2017-02-15 08:59:33'),
(16, 'Truck-Turnaround', 'Truck Turnaround', 2, '', 10, 0, 1, '2017-02-15 08:59:52', '2017-02-15 08:59:52'),
(17, 'SMS-Messaging', 'SMS Messaging', 2, '', 10, 0, 1, '2017-02-15 09:02:20', '2017-02-15 09:02:20'),
(18, 'Weather-Module', 'Weather Module', 2, '', 10, 0, 1, '2017-02-15 09:04:57', '2017-02-15 09:04:57'),
(19, 'Ship-Berthing-Module', 'Ship Berthing Module', 2, '', 10, 0, 1, '2017-02-15 09:05:11', '2017-02-15 09:05:11'),
(20, 'Leave-&-Time-Off-Module', 'Leave & Time Off Module', 2, '', 10, 0, 1, '2017-02-15 09:05:37', '2017-02-15 09:05:37'),
(21, 'Mobile-App', 'Mobile App', 2, '', 10, 0, 1, '2017-02-15 09:05:51', '2017-02-15 09:05:51'),
(22, 'Address-Book-Module', 'Address Book Module', 2, '', 10, 0, 1, '2017-02-15 09:06:08', '2017-02-15 09:06:08'),
(23, 'New-Ports-Console-Config', 'New Ports Console Config', 2, '', 10, 0, 1, '2017-02-15 09:07:24', '2017-02-15 09:07:24'),
(24, 'Mapping-Module', 'Mapping Module', 2, '', 10, 0, 1, '2017-02-15 09:07:41', '2017-02-15 09:07:41'),
(25, 'Entry-Permits-Module', 'Entry Permits Module', 2, '', 10, 0, 1, '2017-02-15 09:08:31', '2017-02-15 09:08:31'),
(26, 'Form-Wizzard-Module', 'Form Wizzard Module', 2, '', 10, 0, 1, '2017-02-15 09:09:08', '2017-02-15 09:09:08'),
(27, 'My-Profile-Module', 'My Profile Module', 2, '', 10, 0, 1, '2017-02-15 09:09:34', '2017-02-15 09:09:34'),
(28, 'Training-Manuals', 'Training Manuals', 3, '', 10, 0, 1, '2017-02-15 09:12:10', '2017-02-15 09:12:10'),
(29, 'Indentify-&-Regsiter-Users', 'Indentify & Regsiter Users', 3, '', 10, 0, 1, '2017-02-15 09:12:28', '2017-02-15 09:12:28'),
(30, 'Trainers-Induction', 'Trainers Induction', 3, '', 10, 0, 1, '2017-02-15 09:12:44', '2017-02-15 09:12:44'),
(31, 'Update-Responders', 'Update Responders', 3, '', 10, 0, 1, '2017-02-15 09:12:59', '2017-02-15 09:12:59'),
(32, 'Console-Training', 'Console Training', 3, '', 10, 0, 1, '2017-02-15 09:13:27', '2017-02-15 09:13:27'),
(33, 'Mobile-App-Training', 'Mobile App Training', 3, '', 10, 0, 1, '2017-02-15 09:13:41', '2017-02-15 09:13:41'),
(34, 'Training-Logistics', 'Training Logistics', 3, '', 10, 0, 1, '2017-02-15 09:14:00', '2017-02-15 09:14:00'),
(35, 'Follow-Up-Training', 'Follow Up Training', 7, '', 10, 0, 1, '2017-02-15 09:18:55', '2017-02-15 09:18:55'),
(36, 'Systems-Support', 'Systems Support', 7, '', 10, 0, 1, '2017-02-15 09:19:09', '2017-02-15 09:19:09'),
(37, 'PAM-Fitment-of-Tracking-Devices', 'PAM Fitment of Tracking Devices', 4, '', 10, 0, 1, '2017-02-15 09:21:32', '2017-02-15 09:21:32'),
(38, 'Mobil;e-Tracking-Devices', 'Mobil;e Tracking Devices', 4, '', 10, 0, 1, '2017-02-15 09:21:53', '2017-02-15 09:21:53'),
(39, 'Scanners', 'Scanners', 4, '', 10, 0, 1, '2017-02-15 09:22:08', '2017-02-15 09:22:08'),
(40, 'Aquatic-Drones', 'Aquatic Drones', 4, '', 10, 0, 1, '2017-02-15 09:24:29', '2017-02-15 09:24:29'),
(41, 'Aerial-Drones', 'Aerial Drones', 4, '', 10, 0, 1, '2017-02-15 09:25:13', '2017-02-15 09:25:13'),
(42, 'Berth-Occupancy-Installation', 'Berth Occupancy Installation', 4, '', 10, 0, 1, '2017-02-15 09:26:05', '2017-02-15 09:26:05'),
(43, 'Geo-fencing-Zones', 'Geo-fencing Zones', 4, '', 10, 0, 1, '2017-02-15 09:27:04', '2017-02-15 09:27:04');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `FIRST_NAME` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SURNAME` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ID_NUMBER` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEX_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NATIONALITY` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NICKNAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_SPOKEN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DRIVER_LICENSE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MARITAL_STATUS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDRESS_HOME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDRESS_WORK` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTACT_NUMBER_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTACT_NUMBER_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTACT_NUMBER_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ETHNIC_GROUP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BIRTH_PLACE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEIGHT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HEIGHT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SCARS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TATTOO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NUMBER_DEPENDENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TRAVEL_MOVEMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMPLOYMENT_HISTORY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CRIME_TYPE_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CRIME_TYPE_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CRIME_TYPE_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CRIME_TYPE_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CRIME_TYPE_5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ARREST_RECORD_1` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ARREST_RECORD_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ARREST_RECORD_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ARREST_RECORD_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ARREST_RECORD_5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BANK_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BANK_ACCOUNT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BANK_BRANCH_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BANK_ACCOUNT_NUMBER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCOUNT_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCOUNT_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCOUNT_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCOUNT_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCOUNT_5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREDIT_RECORD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BUSINESS_INTEREST` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KNOWN_ASSOCIATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_OWNED_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_OWNED_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_OWNED_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_RENTED_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_RENTED_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_RENTED_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PICTURE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teamlers`
--

CREATE TABLE `teamlers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_new_id` int(11) DEFAULT NULL,
  `team_leader_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `additional_team_info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shift_agenda` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team_members` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(1, NULL, 'global', NULL, '2017-05-13 13:12:26', '2017-05-13 13:12:26'),
(2, NULL, 'ip', '::1', '2017-05-13 13:12:26', '2017-05-13 13:12:26'),
(3, NULL, 'global', NULL, '2017-05-13 13:13:38', '2017-05-13 13:13:38'),
(4, NULL, 'ip', '::1', '2017-05-13 13:13:38', '2017-05-13 13:13:38'),
(5, NULL, 'global', NULL, '2017-05-13 13:22:19', '2017-05-13 13:22:19'),
(6, NULL, 'ip', '::1', '2017-05-13 13:22:19', '2017-05-13 13:22:19'),
(7, NULL, 'global', NULL, '2017-05-13 13:22:19', '2017-05-13 13:22:19'),
(8, NULL, 'ip', '::1', '2017-05-13 13:22:19', '2017-05-13 13:22:19'),
(9, NULL, 'global', NULL, '2017-05-13 13:25:25', '2017-05-13 13:25:25'),
(10, NULL, 'ip', '::1', '2017-05-13 13:25:25', '2017-05-13 13:25:25'),
(11, NULL, 'global', NULL, '2017-05-13 13:25:25', '2017-05-13 13:25:25'),
(12, NULL, 'ip', '::1', '2017-05-13 13:25:25', '2017-05-13 13:25:25'),
(13, NULL, 'global', NULL, '2017-05-13 13:35:11', '2017-05-13 13:35:11'),
(14, NULL, 'ip', '::1', '2017-05-13 13:35:11', '2017-05-13 13:35:11'),
(15, NULL, 'global', NULL, '2017-05-13 13:35:11', '2017-05-13 13:35:11'),
(16, NULL, 'ip', '::1', '2017-05-13 13:35:11', '2017-05-13 13:35:11'),
(17, NULL, 'global', NULL, '2017-05-13 14:03:12', '2017-05-13 14:03:12'),
(18, NULL, 'ip', '::1', '2017-05-13 14:03:12', '2017-05-13 14:03:12'),
(19, NULL, 'global', NULL, '2017-05-13 14:03:13', '2017-05-13 14:03:13'),
(20, NULL, 'ip', '::1', '2017-05-13 14:03:13', '2017-05-13 14:03:13'),
(21, NULL, 'global', NULL, '2017-05-13 14:22:16', '2017-05-13 14:22:16'),
(22, NULL, 'ip', '::1', '2017-05-13 14:22:16', '2017-05-13 14:22:16'),
(23, NULL, 'global', NULL, '2017-05-13 14:22:17', '2017-05-13 14:22:17'),
(24, NULL, 'ip', '::1', '2017-05-13 14:22:17', '2017-05-13 14:22:17'),
(25, NULL, 'global', NULL, '2017-05-13 14:29:18', '2017-05-13 14:29:18'),
(26, NULL, 'ip', '::1', '2017-05-13 14:29:18', '2017-05-13 14:29:18'),
(27, NULL, 'global', NULL, '2017-05-13 14:29:18', '2017-05-13 14:29:18'),
(28, NULL, 'ip', '::1', '2017-05-13 14:29:18', '2017-05-13 14:29:18'),
(29, NULL, 'global', NULL, '2017-05-13 14:29:20', '2017-05-13 14:29:20'),
(30, NULL, 'ip', '::1', '2017-05-13 14:29:21', '2017-05-13 14:29:21'),
(31, NULL, 'global', NULL, '2017-05-13 14:29:21', '2017-05-13 14:29:21'),
(32, NULL, 'ip', '::1', '2017-05-13 14:29:21', '2017-05-13 14:29:21'),
(33, NULL, 'global', NULL, '2017-05-13 14:52:46', '2017-05-13 14:52:46'),
(34, NULL, 'ip', '::1', '2017-05-13 14:52:47', '2017-05-13 14:52:47'),
(35, NULL, 'global', NULL, '2017-05-13 14:52:47', '2017-05-13 14:52:47'),
(36, NULL, 'ip', '::1', '2017-05-13 14:52:47', '2017-05-13 14:52:47'),
(37, NULL, 'global', NULL, '2017-05-13 14:52:52', '2017-05-13 14:52:52'),
(38, NULL, 'ip', '::1', '2017-05-13 14:52:52', '2017-05-13 14:52:52'),
(39, NULL, 'global', NULL, '2017-05-13 14:52:53', '2017-05-13 14:52:53'),
(40, NULL, 'ip', '::1', '2017-05-13 14:52:53', '2017-05-13 14:52:53'),
(41, NULL, 'global', NULL, '2017-05-13 14:52:55', '2017-05-13 14:52:55'),
(42, NULL, 'ip', '::1', '2017-05-13 14:52:55', '2017-05-13 14:52:55'),
(43, NULL, 'global', NULL, '2017-05-13 14:52:55', '2017-05-13 14:52:55'),
(44, NULL, 'ip', '::1', '2017-05-13 14:52:55', '2017-05-13 14:52:55'),
(45, NULL, 'global', NULL, '2017-05-13 15:12:41', '2017-05-13 15:12:41'),
(46, NULL, 'ip', '::1', '2017-05-13 15:12:42', '2017-05-13 15:12:42'),
(47, NULL, 'global', NULL, '2017-05-13 15:12:42', '2017-05-13 15:12:42'),
(48, NULL, 'ip', '::1', '2017-05-13 15:12:42', '2017-05-13 15:12:42'),
(49, NULL, 'global', NULL, '2017-05-13 15:12:46', '2017-05-13 15:12:46'),
(50, NULL, 'ip', '::1', '2017-05-13 15:12:46', '2017-05-13 15:12:46'),
(51, NULL, 'global', NULL, '2017-05-13 15:12:46', '2017-05-13 15:12:46'),
(52, NULL, 'ip', '::1', '2017-05-13 15:12:46', '2017-05-13 15:12:46'),
(53, NULL, 'global', NULL, '2017-05-13 15:12:48', '2017-05-13 15:12:48'),
(54, NULL, 'ip', '::1', '2017-05-13 15:12:48', '2017-05-13 15:12:48'),
(55, NULL, 'global', NULL, '2017-05-13 15:12:48', '2017-05-13 15:12:48'),
(56, NULL, 'ip', '::1', '2017-05-13 15:12:48', '2017-05-13 15:12:48'),
(57, NULL, 'global', NULL, '2017-05-13 15:31:27', '2017-05-13 15:31:27'),
(58, NULL, 'ip', '::1', '2017-05-13 15:31:28', '2017-05-13 15:31:28'),
(59, NULL, 'global', NULL, '2017-05-13 15:31:28', '2017-05-13 15:31:28'),
(60, NULL, 'ip', '::1', '2017-05-13 15:31:28', '2017-05-13 15:31:28'),
(61, NULL, 'global', NULL, '2017-05-13 15:31:34', '2017-05-13 15:31:34'),
(62, NULL, 'ip', '::1', '2017-05-13 15:31:34', '2017-05-13 15:31:34'),
(63, NULL, 'global', NULL, '2017-05-13 15:31:34', '2017-05-13 15:31:34'),
(64, NULL, 'ip', '::1', '2017-05-13 15:31:34', '2017-05-13 15:31:34'),
(65, NULL, 'global', NULL, '2017-05-13 15:31:36', '2017-05-13 15:31:36'),
(66, NULL, 'ip', '::1', '2017-05-13 15:31:36', '2017-05-13 15:31:36'),
(67, NULL, 'global', NULL, '2017-05-13 15:31:36', '2017-05-13 15:31:36'),
(68, NULL, 'ip', '::1', '2017-05-13 15:31:36', '2017-05-13 15:31:36'),
(69, NULL, 'global', NULL, '2017-05-13 20:34:56', '2017-05-13 20:34:56'),
(70, NULL, 'ip', '::1', '2017-05-13 20:34:56', '2017-05-13 20:34:56'),
(71, NULL, 'global', NULL, '2017-05-13 20:34:56', '2017-05-13 20:34:56'),
(72, NULL, 'ip', '::1', '2017-05-13 20:34:56', '2017-05-13 20:34:56'),
(73, NULL, 'global', NULL, '2017-05-13 20:36:35', '2017-05-13 20:36:35'),
(74, NULL, 'ip', '::1', '2017-05-13 20:36:35', '2017-05-13 20:36:35'),
(75, NULL, 'global', NULL, '2017-05-13 20:36:35', '2017-05-13 20:36:35'),
(76, NULL, 'ip', '::1', '2017-05-13 20:36:35', '2017-05-13 20:36:35');

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`id`, `slug`, `name`, `created_by`, `updated_by`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Mr', 'Mr', 0, 0, 1, '2016-01-31 13:22:42', '2016-01-31 13:22:42'),
(2, 'Mrs', 'Mrs', 0, 0, 1, '2016-01-31 13:22:42', '2016-01-31 13:22:42'),
(3, 'Miss', 'Miss', 0, 0, 1, '2016-01-31 13:22:42', '2016-01-31 13:22:42'),
(4, 'Ms', 'Ms', 0, 0, 1, '2016-01-31 13:22:42', '2016-01-31 13:22:42');

-- --------------------------------------------------------

--
-- Table structure for table `trucks`
--

CREATE TABLE `trucks` (
  `id` int(10) UNSIGNED NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `registration_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reference_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vin_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `chassis_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `engine_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `registration_year` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `make` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `colour` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `speed_limit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_inactive` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trucks`
--

INSERT INTO `trucks` (`id`, `company`, `registration_number`, `reference_number`, `vin_number`, `chassis_number`, `engine_number`, `registration_year`, `make`, `model`, `colour`, `speed_limit`, `date_inactive`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '1', '12345', '54321', '32145', '23465', '213453', '2016', 'Some kind of make', 'some kind of model', 'white', '90KPH', '2017', 10, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '1', '09876', '67890', '90876', '76890', '54376', '2017-02-28', 'A second car Make', 'A second car Model', 'Black', '80KPH', '2017-03-01', 10, 0, '2017-02-24 12:18:45', '2017-02-24 12:18:45'),
(3, '2', '65478', '09854', '32186', '75609', '76534', '2017-02-02', 'first make', 'first model', 'blue', '120KPH', '2017-02-07', 10, 0, '2017-02-24 12:21:55', '2017-02-24 12:21:55'),
(4, '4', 'HCV783MP', '59937', 'SSB3310140', '', 'TPA930201140521', '2014-06-04', 'Hino', 'Tipper', '', '', '2017-03-31', 89, 0, '2017-03-16 09:42:55', '2017-03-16 09:42:55'),
(5, '6', 'LDR559A', '', '9218198', '', 'MC01106SA029801M', '2016-08-25', 'NISSAN', 'BREAKDOW', '', '30', '2017-07-22', 89, 0, '2017-03-16 10:37:27', '2017-03-16 10:37:27'),
(6, '8', 'XMM312GP', '', '93SRUAPT28R671737', '', '79275381', '2016-06-08', 'INTERNATIONAL', 'TRUCK TRACTOR', '', '80', '2017-03-16', 94, 0, '2017-03-16 10:46:26', '2017-03-16 10:46:26'),
(7, '8', 'PTW640W', 'FS41ZWGP', '1FUJAWCGXCLBM5963', '', '06R1048120', '2016-02-08', 'FRIEGHTLINER', 'TRUCK TRACTOR', '', '80', '2017-03-16', 94, 0, '2017-03-16 10:51:00', '2017-03-16 10:51:00'),
(8, '14', 'DRC619S', '', '1FVJAWAV35LU87364', '', '6NZ96401', '2015-05-21', 'FRIEGHTLINER', 'TRUCK TRACTOR', '', '80', '2017-03-16', 94, 0, '2017-03-16 11:17:44', '2017-03-16 11:17:44'),
(9, '16', 'NUR42791', '189052', '1NP6D48X1YD611013', '', '60529137', '2017-02-24', 'PETERBILT', 'TRUCK TRACTOR', '', '', '2018-01-31', 89, 0, '2017-03-16 11:23:49', '2017-03-16 11:23:49'),
(10, '17', 'HGD738MP', '', '39718364833499', '', 'V0120054474', '2017-03-16', '', '', '', '', '', 94, 0, '2017-03-16 11:39:43', '2017-03-16 11:39:43'),
(11, '18', 'ND738005', '', '1FVJAWBGX8LZ69768', '', '79268996', '2016-06-20', 'FREIGHTLINER', 'TRUCK TRACTOR', '', '', '2017-05-31', 89, 0, '2017-03-16 11:41:54', '2017-03-16 11:41:54'),
(12, '18', 'RVF885W', '', '93SRUAPT5DR618699', '', '79565000', '2014-12-09', 'INTERNATIONAL', '', '', '', '2014-12-09', 89, 0, '2017-03-16 11:59:43', '2017-03-16 11:59:43'),
(13, '19', 'HBC136MP', '', 'ADDT2200000002488', '', 'GE13029221D', '', 'NISSAN DIESEL', 'TRUCK TRACTOR', '', '80', '2017-03-31', 94, 0, '2017-03-16 12:09:22', '2017-03-16 12:09:22'),
(14, '19', 'HFG32MP', '', 'WDB9342416K931009', '', '54292100335221', '2013-10-17', 'MERCEDES-BENZ', 'TRUCK TRACTOR', '', '80', '2017-09-30', 94, 0, '2017-03-16 12:15:29', '2017-03-16 12:15:29'),
(15, '20', 'FBC247FS', '', '1FUJAWBG7CLBJ0993', '', '79488096', '2017-01-20', 'FREIGHTLINER', 'TRUCK TRACTOR', '', '', '2017-10-31', 89, 0, '2017-03-16 12:18:40', '2017-03-16 12:18:40'),
(16, '23', 'JDW705MP', '', '1FVJBBG21LH87416', '', 'CUMISX14012454', '2017-03-09', 'FREIGHTLINER', '', '', '', '2018-02-28', 89, 0, '2017-03-16 12:28:32', '2017-03-16 12:28:32'),
(17, '25', 'NMR 5311', '', 'WJMS2NUH50C269944', '', 'IVECO', '2017-03-16', 'STRALIS HI WAY', 'TRUCK TRACTOR', '', '', '', 89, 0, '2017-03-16 12:39:24', '2017-03-16 12:39:24'),
(18, '30', 'FPZ695EC', '', 'YV2JSG0D18M898183', '', 'D13276591', '', 'VOLVO', 'TRUCK TRACTOR', '', '80', '2017-05-31', 94, 0, '2017-03-16 13:30:50', '2017-03-16 13:30:50'),
(19, '31', 'D229SNGP', '', 'YS2G6X4005326472', '', 'DC13106773479', '2015-11-24', 'SCANIA', 'TRUCK TRACTOR', '', '', '2013-09-29', 89, 0, '2017-03-16 13:39:01', '2017-03-16 13:39:01'),
(20, '32', 'JHC277NW', '', '1FUJAWBG7EL3642', '', '76637067', '', 'FRIEGHTLINER', 'TRUCK TRACTOR', '', '80', '2017-10-31', 94, 0, '2017-03-16 13:40:48', '2017-03-16 13:40:48'),
(21, '32', 'JNK004NW', '', '1FUJAWBG1ELFZ1004', '', '79703068', '', 'FRIEGHTLINER', 'TRUCK TRACTOR', '', '80', '2018-02-28', 94, 0, '2017-03-16 13:44:53', '2017-03-16 13:44:53'),
(22, '32', 'JPH884NW', '', '1FUJAWBG5ELFS6446', '', '79664773', '', 'FRIEGHTLINER', 'TRUCK TRACTOR', '', '80', '2017-05-31', 94, 0, '2017-03-16 13:47:49', '2017-03-16 13:47:49'),
(23, '32', 'JRJ253NW', '', '1FUJAWBG1FLFZ8276', '', '79711102', '', 'FRIEGHTLINER', 'TRUCK TRACTOR', '', '80', '2017-08-31', 94, 0, '2017-03-16 13:50:39', '2017-03-16 13:50:39'),
(24, '32', 'JSR531NW', '', '1FUJAWBG7CLBN7490', '', '79519624', '', 'FRIEGHTLINER', 'TRUCK TRACTOR', '', '80', '2017-12-31', 94, 0, '2017-03-16 13:52:57', '2017-03-16 13:52:57'),
(25, '33', 'HCV783MP', '', '', '', '', '', '', '', '', '', '', 89, 0, '2017-03-17 06:19:16', '2017-03-17 06:19:16'),
(26, '34', 'FJ96RPGP', '7655962', 'YS2R6X40002068942', '', 'DC13101L016685409', '2016-11-17', 'SCANIA', '', '', '', '2017-08-31', 89, 0, '2017-03-17 06:35:47', '2017-03-17 06:35:47'),
(27, '40', 'ND124892', '', 'ADNUSN1D5U0015584', '', 'K7MF710UF08910', '2016-08-01', 'NISSAN', '', '', '', '2017-08-31', 89, 0, '2017-03-17 07:03:27', '2017-03-17 07:03:27'),
(28, '41', 'FLK598MP', '', 'YV2A4CED342843213', '', 'D12398012', '2016-04-25', 'VOLVO', 'TRUCK TRACTOR', '', '80', '2017-03-31', 94, 0, '2017-03-17 07:06:18', '2017-03-17 07:06:18'),
(29, '42', 'NPN 78442', '', 'AAMN650535PX26697', '', '20830135193017', '', 'MAN', 'TRUCK TRACTOR', '', '80', '2017-12-31', 94, 0, '2017-03-17 07:14:47', '2017-03-17 07:14:47'),
(30, '53', 'ND224445', '', '9BSR6X40003687489', '', 'DC1604L011084297', '2017-03-01', 'SCANIA', 'TRUCK TRACTOR', '', '80', '2018-02-28', 94, 0, '2017-03-17 07:40:42', '2017-03-17 07:40:42'),
(31, '52', 'FR16LLGP', '98202466', '9BSR6X40003821781', '', 'DC13106L018207153', '2017-12-31', 'SCANIA', '', '', '', '2017-12-31', 89, 0, '2017-03-17 07:46:20', '2017-03-17 07:46:20'),
(32, '52', 'FR16LFGP', '', '9BSR6X40003821780', '', 'DC13106L018207152', '2017-12-31', 'SCANIA', '', '', '', '2017-12-30', 89, 0, '2017-03-17 07:50:50', '2017-03-17 07:50:50'),
(33, '54', 'ND 817216', '', 'AAMT810977PX06294', '', '44099020830800', '2016-04-25', 'MAN', 'TRUCK TRACTOR', '', '80', '2017-03-31', 94, 0, '2017-03-17 07:51:55', '2017-03-17 07:51:55'),
(34, '56', 'NC 28404', '', 'YV2A4DBD812827689', '', 'D12C205802A', '', 'VOLVO', 'TRUCK TRACTOR', '', '80', '2017-02-17', 94, 0, '2017-03-17 08:12:32', '2017-03-17 08:12:32'),
(35, '57', 'FJM212FS', '', 'XLRTT47MS0E959601', '', 'A119201', '2015-09-05', 'DAF', '', '', '', '2016-08-31', 89, 0, '2017-03-17 08:50:15', '2017-03-17 08:50:15'),
(36, '58', 'NUR 48342', '', 'WDB9342416K899198', '', '54292100313212', '', 'MERCEDES-BENZ', 'TRUCK TRACTOR', '', '80', '2012-03-31', 94, 0, '2017-03-17 08:52:03', '2017-03-17 08:52:03'),
(37, '57', 'FJM211FS', '', 'XLRTT47MS0E956970', '', 'A116489', '2015-08-05', 'DAF', '', '', '', '2016-08-31', 89, 0, '2017-03-17 08:53:40', '2017-03-17 08:53:40'),
(38, '57', 'FJM208FS', '', 'XLRTT47MSOE956979', '', 'A116494', '2015-08-05', 'DAF', 'TRUCK TRACTOR', '', '', '2016-08-31', 89, 0, '2017-03-17 08:58:10', '2017-03-17 08:58:10'),
(39, '57', 'FJM210FS', '', 'XLRTT47MSO0E959437', '', 'A119036', '2015-08-05', 'DAF', 'TRUCK TRACTOR', '', '', '2016-08-31', 89, 0, '2017-03-17 09:02:32', '2017-03-17 09:02:32'),
(40, '57', 'FJM214FS', '', 'XLRTT47MS0E956323', '', 'A115828', '2015-08-05', 'DAF', 'TRUCK TRACTOR', '', '', '2016-08-31', 89, 0, '2017-03-17 09:05:12', '2017-03-17 09:05:12'),
(41, '57', 'FPX131FS', '', 'XLRTT47MS0E915420', '', 'A72681', '2015-08-05', 'DAF', 'TRUCK TRACTOR', '', '', '2016-08-31', 89, 0, '2017-03-17 09:07:32', '2017-03-17 09:07:32'),
(42, '59', 'CX68NSGP', '', 'WDB9342416L796631', '', '542942C0914327', '', 'MERCEDES-BENZ', 'TRUCK TRACTOR', '', '80', '2018-01-31', 94, 0, '2017-03-17 09:08:39', '2017-03-17 09:08:39'),
(43, '57', 'FSK764FS', '', 'XLRTT47MS0E896954', '', 'A51457', '2015-08-05', 'DAF', 'TRUCK TRACTOR', '', '', '2016-08-31', 89, 0, '2017-03-17 09:10:15', '2017-03-17 09:10:15'),
(44, '59', 'FD69NVGP', '', 'WDB9342416L651295', '', '541946C0830790', '', 'MERCEDES-BENZ', 'TRUCK TRACTOR', '', '80', '2018-01-31', 94, 0, '2017-03-17 09:11:59', '2017-03-17 09:11:59'),
(45, '57', 'FSL351FS', '', 'XLRTT47MS0E917637', '', 'A75162', '2015-08-05', 'DAF', 'TRUCK TRACTOR', '', '', '2016-08-31', 89, 0, '2017-03-17 09:13:28', '2017-03-17 09:13:28'),
(46, '59', 'DZT136FS', '', '93SSRUAPT98R671847', '', '79282302', '', 'INTERNATIONAL', 'TRUCK TRACTOR', '', '80', '2017-10-31', 94, 0, '2017-03-17 09:14:50', '2017-03-17 09:14:50');

-- --------------------------------------------------------

--
-- Table structure for table `truck_companies`
--

CREATE TABLE `truck_companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `reg_company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_trading_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_reg_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_tax_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `physical_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postal_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_person` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fax_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `truck_companies`
--

INSERT INTO `truck_companies` (`id`, `reg_company_name`, `company_trading_name`, `company_reg_number`, `company_tax_number`, `physical_address`, `postal_address`, `contact_person`, `contact_email`, `contact_phone_number`, `fax_number`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'First Company', 'First Company', '111111111', '111111111', '123 Smith Avenue Durban 4001', 'P.O Box 123 Durban 4001', 'John Doe', 'first.company@company.net', '0312345678', '0312345678', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Second Company', '2nd Company', '2222222222', '2222211122', '124 Smith Avenue Durban 4001', 'P.O Box 1423 Durban 4001', 'Sally Brooke', 'sally.brooke@secondcompany.net', '0314329876', '0314329876', 10, 10, '2017-02-24 09:54:27', '2017-02-24 09:54:27'),
(3, 'Third Company', '3rd Company', '07324', '12345', '73 Turners Avenue Durban 4001', 'P.O Box 2341 Durban 4001', 'Sam Smith', 'sam.smith@thirdcompany.net', '0313453645', '0312435342', 10, 10, '2017-02-24 12:34:33', '2017-02-24 12:34:33'),
(4, 'Nkwazi General and Electrical Maintenance', 'Nkwazi Electrical', '2014/126667/07', '9443760179', '663 Sunset Avenue\r\nWoodhurst\r\nChatsworth\r\nDurban', '663 Sunset Avenue\r\nWoodhurst\r\nChatsworth\r\nDurba', '', '', '0737734458', '', 89, 89, '2017-03-16 09:34:12', '2017-03-16 09:34:12'),
(5, 'BADSHA TRAILERS AND REPAIRS-SPARES', '', '2009/058225/23', '', '13 MARRIOT ROAD \r\nGREYVILLE\r\nDURBAN\r\n4100', 'P.O BOX 14024\r\nAUSTERVILLE\r\n4005', 'SPENCER STEWART', 'RSASP_@ABSAMAIL.CO.ZA', '', '', 94, 94, '2017-03-16 10:13:02', '2017-03-16 10:13:02'),
(6, 'Z123 Logistics', 'Z123 Logistics', '2008/074384/23', '9261242177', '151 South Coast Road\r\nRossburg\r\nDurban', 'P.O Box 41329\r\nRossburg\r\ndurban 41329', '', 'Z3logistics@vodamail.co.za', '0314591131', '086663410', 89, 89, '2017-03-16 10:26:09', '2017-03-16 10:26:09'),
(8, 'LABUCON RESOURCES', 'LABUCON RESOURCES', '2000/018975/07', '9113157144', '152 SAKABUKA ROAD\r\nDERDEPOORT\r\nPRETORIA\r\n0152', 'P.O BOX 72972\r\nLYNNWOODRIDGE\r\nPRETORIA\r\n0040', '', 'angie@labucon.co.za', '0127620700', '0866393524', 94, 94, '2017-03-16 10:37:48', '2017-03-16 10:37:48'),
(14, 'KRIVEL (PTY) LTD', 'KRIVEL ', '2015/009573/07', '9248363195', '29 MATAPAN DRIVE\r\nWESTVILLE NORTH\r\nDURBAN\r\nKWA-ZULUNATAL\r\n3629', '29 MATAPAN DRIVE\r\nWESTVILLE NORTH\r\nDURBAN\r\nKWA-ZULUNATAL\r\n3629', '', 'rigashirring@outlook.com', '0312626175', '', 94, 94, '2017-03-16 11:11:48', '2017-03-16 11:11:48'),
(16, 'BLUECREST TRANSPORT', 'BLUECREST TRANSPORT', '2005/022392/23', '9045690162', '16 HORSHAM ROAD\r\nCLEIRWOOD\r\n4061', '16 HORSHAM ROAD\r\nCLEIRWOOD\r\n4061', '', 'BLUECRESTTRANSPORT@TELKOMSA.NET', '0314002940', '0314005141', 89, 89, '2017-03-16 11:18:28', '2017-03-16 11:18:28'),
(17, 'NJR CARTAGE (PTY) LTD', 'NJR CARTAGE (PTY) LTD', '2015/145993/07', '', '19 FAWNCASTLE ROAD\r\nCASTLEHILL\r\nNEWLANDS WEST\r\nKWA-ZULU NATAL\r\n4037', 'P.O BOX 206\r\nWESTVILLE\r\nKWA-ZULU NATAL\r\n3630', '', 'njrcart@webmail.co.za', '0823375311', '0866049581', 94, 94, '2017-03-16 11:32:34', '2017-03-16 11:32:34'),
(18, 'SGR FREIGHT', 'SGR FREIGHT', '2004/097658/23', '', '13 MARRIOTT ROAD\r\nGREYVILLE\r\n4001', '3 HARMONY ROAD\r\nSILVERGLEN\r\nCHATSWORTH\r\n4092', 'PATEL AND PATEL', 'LLOYD.GOVENDER@LOWEBULL.COM', '0314034911', '0314034911', 89, 89, '2017-03-16 11:38:03', '2017-03-16 11:38:03'),
(19, 'SHAM TRANS', 'SHAM TRANS', '2016/222867/07', '9271298201', '301 INANDA ROAD\r\nSEA COW LAKE\r\nDURBAN\r\nKWA-ZULU NATAL\r\n4034', 'P.O BOX 3504\r\nDURBAN\r\nKWA-ZULU NATAL\r\n4000', '', 'Info@sktrucking.co.za', '0315771925', '0865146890', 94, 94, '2017-03-16 12:03:17', '2017-03-16 12:03:17'),
(20, 'ORELOGIX UNITED BULK', 'ORELOGIX UNITED BULK', '2007/017491/07', '9065570187', 'S LEYLAND ST\r\nVANDERBIJL PARK', 'P.O BOX 667\r\nVANDERBIJL', '', 'ORDERSUBD@unitedbulk.co.za', '0169862095', '', 89, 89, '2017-03-16 12:11:57', '2017-03-16 12:11:57'),
(23, 'NEMBILE CLEANING SERVICE', 'NEMBILE CLEANING SERVICE', '2016/459505/07', '', '65 ASTER PLACE\r\nASHERVILLE\r\nDURBAN\r\nKWA-ZULU NATAL\r\n4000', '65 ASTER PLACE\r\nASHERVILLE\r\nDURBAN\r\nKWA-ZULU NATAL\r\n4000', 'BALLAND MALTHIE', 'NANBILECLEANING@GMAIL.COM', '0748420510', '', 89, 89, '2017-03-16 12:25:32', '2017-03-16 12:25:32'),
(25, 'TWINS LOGISTICS', '', '2003/091108/23', '9118647156', '6 LEGION ROAD\r\nPELHAM\r\nPIETERMARITZBURGH\r\n3202', 'POSTNET SUITR 279\r\nPRIVTE BAG X6\r\nCASCADES\r\n3202', 'MARY ANNE FANNER', 'COMP-AC@MWEB.CO.ZA', '0332631529', 'TWINSLOGISTICSGLANTIC.NET', 89, 89, '2017-03-16 12:36:06', '2017-03-16 12:36:06'),
(30, 'SD FREIGHT AND LOGISTICS', 'SD FREIGHT AND LOGISTICS', '2009/071646/23', '9904075158', '9 BARFIELD PLACE\r\nBAKERVILLE GARDENS\r\nNEWLANDS\r\n4037', '9 BARFIELD PLACE\r\nBAKERVILLE GARDENS\r\nNEWLANDS\r\n4037', '', 'dinesh.athmaram@gmail.com', '0839845432', '', 94, 94, '2017-03-16 13:26:04', '2017-03-16 13:26:04'),
(31, 'RUNGA TRANS CC', 'RUNGA TRANS CC', '2005/115916/23', '9182080169', 'ROAD 715\r\nHOUSE 32\r\nMONTFORD\r\nCHATSWORTH\r\n4092', 'ROAD 715\r\nHOUSE 32\r\nMONTFORD\r\nCHATSWORTH\r\n4092', 'RONNY', 'R0NNY@RUNGATRANS.CO.ZA', '0314651848', '0314651848', 89, 89, '2017-03-16 13:35:04', '2017-03-16 13:35:04'),
(32, 'THIORT GROUP TRADING', 'THIORT GROUP', '2005/004631/23', '4520247331', 'OLD MUTUAL BUILDING\r\n21 CHURCH STREET\r\nZEERUST\r\n2865', 'PO BOX 289\r\nZEERUST\r\n0030', '', 'fransthiart@gmail.com', '0829583454', '', 94, 94, '2017-03-16 13:37:03', '2017-03-16 13:37:03'),
(33, 'QUE DEE TRADING (PTY) LTD', 'QUE DEE TRADING (PTY) LTD', '2013/126688/07', '', '11 LIMPOMPO STREET\r\nTHREE REVERS \r\nVEREENIGING', 'P.O BOX 4608 \r\nVEREENIGING\r\nGAUTENG', '', 'QUEDEE3@GMAIL.COM', '0716833696', '', 89, 89, '2017-03-16 13:54:50', '2017-03-16 13:54:50'),
(34, 'COLT LOGISTICS', 'COLT LOGISTICS', '2005/169598/23', '9751856148', '380A  SPIONKOP ROAD\r\nNORTHRIDING\r\nGAUTENG\r\n2162', 'P.O BOX 2131\r\nRANDBURG\r\n2125', 'RICHARDSON', 'GREG@COLTLOGISTCS.CO.ZA', '0836399058', '0866152717', 89, 89, '2017-03-17 06:25:57', '2017-03-17 06:25:57'),
(40, 'PROPATEEZ 81 (PTY) LTD', 'RAILROAD CONTAINERS', '1994/007651/07', '9482391845', 'ZOESTHER ROBERTS ROAD\r\nGLENWOOD\r\nDURBAN\r\n4001', 'PRIVATE BAG 62390\r\nBISHOPSGATE\r\nDURBAN\r\n4001', '', 'LESK@RAILROAD.CO.ZA', '031 2019900', '', 89, 89, '2017-03-17 06:59:12', '2017-03-17 06:59:12'),
(41, 'WESTMEAD TRUCK STOP', 'WESTMEAD TRUCK STOP', '2001/063980/23', '9159361147', '7 UMNDONI CRESCENT\r\nWESTMEAD\r\nDURBAN\r\nKWA-ZULU NATAL\r\n3600', 'PO BOX 214\r\nNEW GERMANY\r\nDURBAN\r\nKWA-ZULU NATAL\r\n3620', '', 'OPS@WTSTOP.CO.ZA', '0317008474', '0317009490', 94, 94, '2017-03-17 07:02:27', '2017-03-17 07:02:27'),
(42, 'CMC EXPRESS DELIVERIES', 'CMC EXPRESS DELIVERIES', '1995/027836/23', '', 'SUITE 22 SECOND FLOOR\r\nLORNEGREY MEDICAL CENTRE\r\n280 GREY STREET\r\nDURBAN\r\n4001', 'PO BOX 3104\r\nDURBAN\r\n4000', 'MEGAN', 'megan@cmcexpress.co.za', '0317005620', '', 94, 94, '2017-03-17 07:11:31', '2017-03-17 07:11:31'),
(52, 'GOLDEN STAR ENTERPRISE', 'DYNAMIC FREIGHT', '2015/00575/07', '', '2BB GREENSSTONE CRESCENT\r\nCORNER GREENSTNE PLACE AND STONERIDGE\r\nGREENSTONE HILL EDENVALE\r\nGAUTENG\r\n1609', '2BB GREENSSTONE CRESCENT\r\nCORNER GREENSTNE PLACE AND STONERIDGE\r\nGREENSTONE HILL EDENVALE\r\nGAUTENG\r\n1609', 'PERUMAL,THILOSHE', 'INFO@DYNAMICFREIGHT.COZA', '0114523618', '0862411341', 89, 89, '2017-03-17 07:34:03', '2017-03-17 07:34:03'),
(53, 'CYAN DIAMOND INVESTMENT (PTY) LTD', 'OUTBACK TRUCKERS', '2013/139984/07', '9541268174', 'NO.4 CHAPLIN ROAD\r\nCHAPLIN CORNER\r\nILLOVO\r\nGAUTENG\r\n2196', 'PO BOX 55039\r\nILLOVO\r\nJOHANNESBURG\r\nGAUTENG\r\n2196', '', 'neven@outbacktruckers.co.za', '0829786650', '', 94, 94, '2017-03-17 07:36:36', '2017-03-17 07:36:36'),
(54, 'PIET TRANS FREIGHT CC', 'PIET TRANS', '1990/021343/23', '9229106209', '1503 PERMANENT CORNER\r\n102 FEILD STREET\r\nDURBAN\r\n4001', 'PO BOX 30391\r\nMEREBANK\r\n4052', '', 'PIETTRANS@TELKOMSA.NET', '0314651766', '0314652749', 94, 94, '2017-03-17 07:48:40', '2017-03-17 07:48:40'),
(56, 'ROADWIG PTY LTD', 'ROADWIG PTY LTD', '1999/006187/07', '9353027031', '4 BLEUTGATE CRESCENT\r\nSOUTH IND  PARK', 'PO BOX 29237\r\nMAYDON WHARF\r\n4057', '', 'GESHEN.MADURAY@ROADWIG.CO.ZA', '0319148200', '', 94, 94, '2017-03-17 08:08:57', '2017-03-17 08:08:57'),
(57, 'V R WESSELS', 'V R VERVOER', '4190158859', '', 'NYWERHEIDSWEG\r\nREITZ\r\n9810', 'POSBUS 855\r\nREITZ\r\n9810', 'MIEMIE', 'VRVOER.RTZ@GMAIL.COM', '0588631096', '0588633383', 89, 89, '2017-03-17 08:45:45', '2017-03-17 08:45:45'),
(58, 'MAJALISA ONKE CONSTRUCTION AND TRADING', 'MAJALISA ONKE CONSTRUCTION AND ', '2009/103116/23', '9001975243', '4 SUNRISE PLACE\r\nPADFEILD PARK\r\nPINETOWN\r\n3610', '4 SUNRISE PLACE\r\nPADFEILD PARK\r\nPINETOWN\r\n3610', '', 'tutu@multiliftsa.co.za', '0317051045', '0865972297', 94, 94, '2017-03-17 08:47:36', '2017-03-17 08:47:36'),
(59, 'SERVIPAC 130', 'TRANSVEL', '2011/096999/23', '9505865163', 'POSBUS 935\r\nRANDFONTEIN\r\nGAUTENG\r\n1760\r\n\r\n', 'PLOT 43\r\nWITFONTEIN\r\nRANDFONTEIN \r\nGAUTENG\r\n1760', '', 'riaan@transvel.co.za', '0790191330', '', 94, 94, '2017-03-17 09:00:06', '2017-03-17 09:00:06');

-- --------------------------------------------------------

--
-- Table structure for table `truck_drivers`
--

CREATE TABLE `truck_drivers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cellphone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `universities`
--

CREATE TABLE `universities` (
  `id` int(10) UNSIGNED NOT NULL,
  `uversity_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_id` int(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cellphone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_cellphone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `language` int(11) DEFAULT NULL,
  `id_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` int(11) DEFAULT NULL,
  `district` int(11) DEFAULT NULL,
  `ward` int(11) DEFAULT NULL,
  `area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_brand` int(11) DEFAULT NULL,
  `phone_type` int(11) DEFAULT NULL,
  `phone_network` int(11) DEFAULT NULL,
  `municipality` int(11) DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` longtext COLLATE utf8_unicode_ci,
  `availability` int(11) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `house_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `affiliation` int(11) DEFAULT NULL,
  `mandate` int(11) DEFAULT NULL,
  `street_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `route` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locality` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `administrative_area_level_1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_reference_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_token` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `alt_email`, `cellphone`, `alt_cellphone`, `title`, `position`, `role`, `language`, `id_number`, `department`, `username`, `province`, `district`, `ward`, `area`, `phone_brand`, `phone_type`, `phone_network`, `municipality`, `img_url`, `api_key`, `password`, `availability`, `last_login`, `last_logout`, `created_by`, `updated_by`, `active`, `remember_token`, `created_at`, `updated_at`, `house_number`, `gender`, `dob`, `affiliation`, `mandate`, `street_number`, `route`, `locality`, `postal_code`, `country`, `company`, `administrative_area_level_1`, `client_reference_number`, `api_token`) VALUES
(1, 'Elie', 'Ishimwe', 'elieish@gmail.com', '', '0829699114', '', '1', 1, 1, 1, '0', 1, '', 1, 11, 3, '', 0, 0, 0, 11, '', '5631beaiucc8f6', '$2y$10$9MwA5xXtZfVogjO2T1nnnurCrSxDpyCeqppl9qkHTOEW/Zc5lhq8O', 1, '2017-03-28 12:06:54', '2017-03-27 03:02:47', 1, 1, 1, 'ODp8ldUJfN4PuHRsqDQ6N3X5biSmV2OvVclIXLqGWSwmkoi1f5fbfqR51NrG', '2015-10-19 13:33:10', '2017-03-28 10:06:54', '123', 1, '0000-00-00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'eOFElZW3l7ZzDf2c8LrLkXQqTrX60RvjzDcrbwrmfdn0pzrx9A'),
(10, 'Rupert', 'Meyer', 'rupert@siyaleader.net', '', '0747366112', '', '1', 1, 1, 1, '0', 1, '', 1, 11, 1, '', 0, 0, 0, 11, '', '5631bf4b3d7b1', '$2y$10$hCa9XRmauMLQFbhdsBuwnuhdZV0TddeoBswpXfx/84GgvBXyH13EC', 1, '2017-05-15 10:55:38', '2017-03-28 13:09:33', 1, 1, 1, 'GEm1QQzt65fiyKdESP79Gguqfpgr8ERDh15rym1Jhnsl5VUHZRJTp0WPXSIX', '2015-10-29 06:40:11', '2017-05-15 08:55:38', '', 1, '0000-00-00', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uKULUfKgaoiLFZnoZdsZfWCj5UYs2cV39eqVOjI2aOKUPGNsNxNsjFeU69Bb'),
(57, 'mxolisi', 'mazibuko', 'mxoh8@yahoo.com', 'mxoh8.m@gmail.com', '0732671997', '0742972564', '1', 10, 10, 1, '9203045368082', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '58996aa8064d4', '$2y$10$4t4H4RacOnCbd8f5wiww0.UVww9dFpI6LpAoWoyLBRMpOQez.Tep.', NULL, NULL, NULL, 10, NULL, 2, NULL, '2017-02-07 06:35:20', '2017-02-07 06:35:20', NULL, 1, '1992-03-04', 2, NULL, '79', 'Maud Mfusi Street', 'Durban', '4001', 'South Africa', 'siyaleader', 'KZN', NULL, ''),
(61, 'Thabiso', 'Ngobese', 'thabisotngobese@gmail.com', '', '0711158506', '0783711819', '1', 10, 10, 1, '9309095501082', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '58996e387b472', '$2y$10$sqD3ubZcLQFUEAC7UJEbHe.KLMkctNIyhLp5xoqFkfOqQyD7u8AQy', NULL, NULL, NULL, 10, NULL, 2, NULL, '2017-02-07 06:50:32', '2017-02-07 06:50:32', NULL, 1, '1993-09-09', 2, NULL, '385', '', '', '4001', 'South Africa', 'siyaleader', 'Durban', NULL, ''),
(62, 'Felokwakhe', 'Mtshali', 'fellow1@live.com', 'mtshalisandile1010@gmail.com', '0793276644', '0786738450', '1', 10, 10, 1, '9406286114087', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '58996f2e081f6', '$2y$10$A87QiEjjqotkyKglKWdZF.UouYXKD6YQxefw8A7KzzM/1k3bcY0qK', NULL, NULL, NULL, 10, NULL, 2, NULL, '2017-02-07 06:54:38', '2017-02-07 06:54:38', NULL, 1, '1994-06-28', 2, NULL, '', '', 'Chatsworth', '4001', 'South Africa', 'siyaleader', 'KZN', NULL, ''),
(64, 'Zipho', 'Danca', 'zipho.dancah@gmail.com', '21229468@dut4life.ac.za', '0730781900', '0736739867', '1', 10, 10, 1, '9401056044085', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5899711520cd6', '$2y$10$bCnZl31z3JVpmghHjJAjpeZLni5RESsBwv27E6cdqaBW0RgllgY.C', NULL, NULL, NULL, 10, NULL, 2, NULL, '2017-02-07 07:02:45', '2017-02-07 07:02:45', NULL, 1, '1994-01-05', 2, NULL, '3 Adelaid street', '', '', '4126', 'South Africa', 'siyaleader', 'Doonside', NULL, ''),
(65, 'nqobile', 'ngobese', 'ngobese.nn@gmail.com', '', '0842875519', '', '1', 0, 10, 1, '89-01316049080', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '58997221b15b9', '$2y$10$4CbmVcwhF/alh0TFWBbID.w1fQ.Qe6ICAC//Sx0LlKziorA4cVla.', NULL, NULL, NULL, 10, NULL, 2, NULL, '2017-02-07 07:07:13', '2017-02-07 07:07:13', NULL, 1, '1989-01-31', 1, NULL, '', '', '', '', '', '', '', NULL, ''),
(66, 'Peter', 'Tonkes', 'peter@realtime.business', '', '0795363117', '', '1', 11, 17, 1, 'N3071045', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '58a4284a2830e', '$2y$10$gTBBnwkoU/ZWhd75F/yw/uC8dqSVOsGeWh6ul/MMKoe.qDiHmBSLu', NULL, NULL, NULL, 10, 10, 1, NULL, '2017-02-15 10:04:46', '2017-02-15 10:07:06', NULL, 1, '1972-03-05', 1, NULL, '17', 'Cape Kimberley Road', 'Kimberley', '4873', 'Australia', 'Realtime', 'QLD', NULL, ''),
(67, 'Nicola', 'Swan', 'nicky@realtime.business', '', '0795363161', '', '4', 11, 17, 1, 'N6448856', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '58a434c777380', '$2y$10$I010PrguxR3LY1BAK.Bklu.gcvxownIk7XSON12NF63vdK07.iblC', NULL, NULL, NULL, 10, 10, 1, NULL, '2017-02-15 10:12:23', '2017-02-15 11:00:23', NULL, 2, '0000-00-00', 1, NULL, '17', 'Cape Kimberley Road', 'Kimberley', '4873', 'Australia', 'Realtime', 'QLD', NULL, ''),
(68, 'Hylton ', 'Warman', 'hylton.warman@gmail.com', '', '0722490443', '', '1', 17, 17, 1, '5303265134083', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '58a42c680b4cd', '$2y$10$rDrTKWJxHxgUs./wE5oUqeK.9i0.3j9A5mfq.N.szMF6v8qg6EZ0q', NULL, NULL, NULL, 10, 10, 1, NULL, '2017-02-15 10:24:14', '2017-02-15 10:24:40', NULL, 1, '0000-00-00', 1, NULL, '23 Underwood raod ', '', 'Durban north', '4051', '', 'Siyaleader', ' Umngeni Park ', NULL, ''),
(69, 'Bruce', 'Brodie', 'bruce@siyaleader.net', 'bruce.brodie@enskysolutions.com', '0828009439', '', '1', 19, 17, 1, '6303185104082', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '58a42db2a2a2c', '$2y$10$I2WYNFKTuCMQ/MheA/fU2u2dLX998YhOtC76Xk1rZcxPnnuYrY2dC', NULL, NULL, NULL, 10, 10, 1, NULL, '2017-02-15 10:29:50', '2017-02-15 10:30:10', NULL, 1, '1963-03-18', 1, NULL, '1', '', 'Sandhills ', '6854', 'South Africa', 'Siyaleader', 'Western Cape ', NULL, ''),
(71, 'Wayne ', 'Stead ', 'stead.wayne@gmail.com', '', '0726457457', '0823835284', '1', 18, 17, 1, '7306125034086', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '58a430d1b6a95', '$2y$10$83tIe7hOvmjJRkbwJ9FzVOYVLE96TJeT1Uatd4CHeNEJ6d3vzVjDW', NULL, NULL, NULL, 10, 10, 1, NULL, '2017-02-15 10:43:13', '2017-02-15 10:43:29', NULL, 1, '1973-06-12', 1, NULL, '55', 'Rushbrook Road', 'Pinetown', '3610', 'South Africa', 'Lead ', 'KZN', NULL, ''),
(72, 'Richard ', 'Hall ', 'richard@siyaleader.net', '', '0762080478', '', '1', 1, 17, 1, '6204175037086', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '58a4329411fd9', '$2y$10$Lqq2xLGazki219iPRnQKwudCk8qhdBaXBqIxvy7XUZtJSDY4X/qni', NULL, NULL, NULL, 10, 10, 1, NULL, '2017-02-15 10:50:24', '2017-02-15 10:51:00', NULL, 1, '0000-00-00', 1, NULL, '43', 'Turners Avenue', 'Berea', '4083', 'South Africa', 'Siyaleader', 'KZN', NULL, ''),
(83, 'Elie', 'Ishimwe', 'elie.ishimwe@ignitiongroup.co.za', 'elieish@gmail.com', '0829699414', '0762591104', '1', 26, 18, 1, 'PC187054', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '58c1268fbc9ff', '$2y$10$KWgFLWT38DoGk65HJVVT2OwtG0IrJUkFLJBrGR3SU7loXuidLAa1i', NULL, NULL, NULL, 10, 10, 1, NULL, '2017-02-19 16:15:23', '2017-03-09 09:55:27', NULL, 1, '0000-00-00', 1, NULL, '', '', '', '', '', 'wefw', '', NULL, ''),
(85, 'Thabiso', 'Motsoko', 'thabzam30@gmail.com', 'thabzam30@gmail.com', '0732072866', '0732072866', '1', 9, 18, 1, '9306295739082', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '58aad90489d08', '$2y$10$D3iUQXV.Ugm1ssTedVfiMu.7YDNfOaw96/EtStDJJh3D9ziIlXtb.', 1, '2017-02-20 20:13:46', NULL, 10, NULL, 1, NULL, '2017-02-20 11:54:44', '2017-02-20 18:13:46', NULL, 1, '1993-06-29', 1, NULL, '', '', 'Matatiele', '4730', 'South Africa', 'Siyaleader Investments', 'EC', NULL, ''),
(86, 'Mfanafuthi', 'Nxumalo', 'mfanafuthi@siyaleader.net', '', '0820494806', '0843108588', '1', 27, 13, 1, '8703235939080', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '58c260be00570', '$2y$10$uE9LGUzVbtugd3YjVCj/8.RM/orJRsQEFrWpIW3Ro.8fKTs7u1RFq', 1, '2017-03-15 22:47:45', '2017-03-10 11:45:12', 87, 87, 1, 'nv1pHVUwcgLCLBVHY6lde6n9hne37UdEwEmHpRGhcMSf6xGePSXLuSufVoFb', '2017-03-09 10:26:58', '2017-03-15 20:47:45', NULL, 1, '1987-03-23', 1, NULL, '41', 'Ntokozo Avenue', 'Durban', '4091', 'South Africa', 'Siyaleader', 'KZN', NULL, ''),
(87, 'Sandile', 'Msomi', 'sandile@siyaleader.net', '', '0781313447', '', '1', 5, 12, 1, '8704226080082', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '58c257f7b7aca', '$2y$10$JxmKvdXCHhKYmFn9L05NneiDP9hXPEj5eEsctJ.vNZvtv3LqVkOcq', 1, '2017-03-28 14:33:23', '2017-03-28 12:21:31', 86, 86, 1, 'VmZA8DvIV1hpUMKPWIwZuPFfsQ4gD4AM5x8y32j5oerU3u0MGN2vGEPGfzch', '2017-03-09 10:34:01', '2017-03-28 12:33:23', NULL, 1, '1987-04-22', 1, NULL, '22', 'Prince Street', 'Durban', '4001', 'South Africa', 'Siyaleader', 'KZN', NULL, 'bcAhjUfGC1YuMKguI3G94nwpfdWHw1reUbu0yWMn8IXkCNb3HfLKeq4IfKUR'),
(88, 'Nozipho ', 'Mofokeng', 'nozipho@siyaleader.net', '', '0726312108', '', '2', 5, 12, 1, '7012040557082', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '58c2608b65388', '$2y$10$yUz4m9dT./VEnezFUIDMEOZ0oSAE7YgXDXqDj7Hd6t1QmPxXHhL.W', 0, '2017-03-27 13:36:56', '2017-03-27 13:57:53', 87, 87, 1, 'L6TF18sNR2s2KsowQ8j6xAZ2Jz3Qhn9KflxrDxtne3c94x12REhWt30o7B3P', '2017-03-09 13:33:56', '2017-03-27 11:57:53', NULL, 2, '1970-12-04', 1, NULL, '60', 'Mahlathi Road', 'Durban', '4091', 'South Africa', 'Siyaleader', 'KZN', NULL, '2p07oafHkmPjLWk8sa4NC5EJd4TspHnI0OZhL9oJsgZx4LObmkvjrHhhkXTE'),
(89, 'Sthembiso', 'Ngcobo', 'Sthembiso@siyaleader.net', 'siphesihle@siyaleader.net', '0635741514', '0796876436', '1', 28, 13, 1, '8612215749080', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '58c25700b1321', '$2y$10$jRVqHmrjpgMzF4lZWLHScuNH6E0cIOwvApFDps4U5lgIbVOG3egrS', 0, '2017-03-20 15:38:50', '2017-03-20 15:40:00', 86, 86, 1, 'qM8f3ZFNcXg9l3TwEvohAp4QZ2hI4xMCzK8zrWkX8mYp7yGo6L08h6PEXU9J', '2017-03-09 13:35:16', '2017-03-20 13:40:00', NULL, 1, '1986-12-21', 1, NULL, '22', 'Margret Mncadi', 'KZN', '4001', 'South Africa', 'Siyaleader', 'Durban', NULL, ''),
(91, 'Siphesihle', 'Mngadi', 'siphesihle@siyaleader.net', '', '0710495772', '', '3', 6, 11, 1, '8611220607085', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '58c256eb0238b', '$2y$10$QPuam2rpPXHghOPtdLVIqOF1qzliKWtNq0W8UhLB6X4HLZHxDsX8u', 1, '2017-03-14 10:12:02', '2017-03-10 10:08:03', 86, 86, 1, 'Huy7y412j9zfsIPK7qIA8efCMQJbFzNcZYlUX23BtYO9VQvxSnpJuLKVrvoW', '2017-03-09 13:40:53', '2017-03-14 08:12:02', NULL, 2, '1986-11-22', 1, NULL, '64', 'Lisburn Road', 'Durban', '4091', 'South Africa', 'Siyaleader', 'KZN', NULL, ''),
(94, 'Talenta', 'Xulu', 'talenta@siyaleader.net', '', '0783952781', '', '1', 28, 13, 1, '9201075637087', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '58c256c6c7ff4', '$2y$10$iIM4TeSYbjD94ojtgI34oudLNOhlXPl5SRWhfJCi3FSIjLMBFf2uW', 1, '2017-03-17 08:55:50', '2017-03-16 15:54:39', 86, 86, 1, 'Uh3rBBhNYAkNyqs2FT6AfPHR39XDMwo3amRL73L4i0UUf4w7lfeqmuQDG0WA', '2017-03-09 14:04:51', '2017-03-17 06:55:50', NULL, 1, '1992-01-07', 1, NULL, '', 'Ndoda Mpungose Road', '', '4126', 'South Africa', 'Siyaleader', 'Ward 94', NULL, ''),
(95, 'Nomusa', 'Nxumalo', 'nomusa@siyaleader.net', '', '0716035653', '0789013986', '4', 3, 10, 1, '6909150362081', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '58c2595b676ce', '$2y$10$lF8XZyAGXn6skBwVaBSdfeEBH2jZTd.njqte3RANgVUxQkLDwEHz6', 1, '2017-03-10 10:16:34', NULL, 86, 86, 1, NULL, '2017-03-10 07:44:08', '2017-03-10 08:16:34', NULL, 2, '0000-00-00', 1, NULL, '41', 'Ntokozo Avenue', 'Durban', '4091', 'South Africa', 'Siyaleader', 'KZN', NULL, ''),
(96, 'Fezeka ', 'Dladla', 'fezeka@siyaleader.net', '', '0780096955', '', '3', 6, 11, 1, '9308200547089', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '58c25de6212b5', '$2y$10$QPIlV.mKYEX/.3zriYQuX.FENfZwyR/4gyO7T7cT7I6q5Zbjst0GK', 1, '2017-03-15 10:02:24', NULL, 87, 87, 1, NULL, '2017-03-10 08:03:27', '2017-03-15 08:02:25', NULL, 2, '1993-08-20', 1, NULL, '', 'Thembeni Road', 'KwaNdengezi', '3607', 'South Africa', 'Siyaleader', 'KZN', NULL, ''),
(97, 'Paul', 'Sartorius', 'paulsartorius@gmail.com', '', '0728787014', '', '1', 3, 14, 1, '123456', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '58c693894b8be', '$2y$10$nlR4QUnR5jbiVKA5w0Obe.W2E1u55PrtT07qeoS2wG3gGuB8pB5RS', NULL, NULL, NULL, 10, NULL, 2, NULL, '2017-03-13 12:41:45', '2017-03-13 12:41:45', NULL, 1, '2017-03-20', 3, NULL, '', '', '', '', '', '', '', NULL, ''),
(99, 'tinfoil_INDHv', NULL, 'contact82731@tinfoil-fake-site.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$wrK9zZ/Ohx0mRQVuu/IVruj8ffTldYC2ykF.r5o.mhtAoikNne972', 1, '2017-03-19 18:46:58', NULL, NULL, NULL, 1, NULL, '2017-03-19 16:46:58', '2017-03-19 16:46:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(100, 'tinfoil_yPRqm', NULL, 'contact39806@tinfoil-fake-site.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$amx8lN.p8QWwFaJZz8P3VOt6S0ZZy4Vw/LtsCRTvSYBJCVdHvZG4C', 1, '2017-03-25 11:12:46', NULL, NULL, NULL, 1, NULL, '2017-03-25 09:12:46', '2017-03-25 09:12:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(101, 'tinfoil_9672e08b-ee6b-4c39-aae4-c699b153bf68', NULL, 'contact26345@tinfoil-fake-site.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$5pGz6fhJcVcLCAEVpqfss.k91rme055woxgxcOUWr1RjwfYbJgz6O', 1, '2017-03-25 11:12:49', NULL, NULL, NULL, 1, NULL, '2017-03-25 09:12:49', '2017-03-25 09:12:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(102, 'tinfoil_NSTFh', NULL, 'contact54189@tinfoil-fake-site.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Kuh6KBfZ/C9WVZYt/wpSNeXrLCLzKyECmIMepFeSxGaN16Efsug5G', 1, '2017-03-25 11:12:51', NULL, NULL, NULL, 1, NULL, '2017-03-25 09:12:51', '2017-03-25 09:12:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(103, 'tinfoil_wMFHu', NULL, 'contact85617@tinfoil-fake-site.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$UvUdzuW8M0gUzqdxih.4/uvH0EIK1Ts0vzRmXWsBzAUsz5LLyh.4O', 1, '2017-03-25 11:12:57', NULL, NULL, NULL, 1, NULL, '2017-03-25 09:12:57', '2017-03-25 09:12:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(104, 'tinfoil_MqLnK', NULL, 'contact23085@tinfoil-fake-site.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$63VH7KpPlsxj02YjNdEVw.rWSNiKZI05U7kmCDg.gss9DtCfHwWSy', 1, '2017-03-25 11:16:16', NULL, NULL, NULL, 1, NULL, '2017-03-25 09:16:16', '2017-03-25 09:16:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(105, 'Marcus', 'Mbayo', 'marcus.n@siyaleader.net', '', '0612364457', '', '1', 20, 19, 1, 'OBO224834', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '58d902a8f1ac3', '$2y$10$zYqhU/g.po.p1QZzGv5HY.cWGFTFMm.IoimOQ7miXQlW2XMkC8TnO', NULL, NULL, NULL, 10, 10, 1, NULL, '2017-03-27 12:15:42', '2017-03-27 12:16:40', NULL, 1, '2017-03-30', 1, NULL, '159 margaret mncadi', '79 willern court, 159 margaret mncadi', 'durban', '4001', 'South Africa', 'SIYALEADER', '', NULL, 'Wzm4Zvz4Lrx97YIELOu9mmrrTB9Cvj8KHvg4fdg8tfofWo53SIkzWrTDkQiH'),
(106, 'Alistair', 'Nel', 'alistair@ali2star.com', '', '0823009373', '', '1', 16, 22, 1, '210914', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5911d28f6c757', '$2y$10$5naubkMGKpzLkDukjjYpLuxvrMGMQPWxxrETl8Fq3VpdChvUbYIvC', NULL, NULL, NULL, 10, 10, 1, NULL, '2017-03-28 09:53:04', '2017-05-09 14:30:39', NULL, 2, '0000-00-00', 1, NULL, '', '', '', '', '', '', '', NULL, 'gqNKvROHiMN850CUgeaZwN7gKz3WhwVdhlRBt3s4juiTuGxjBYljf0ZmPKek'),
(107, NULL, NULL, 'mm@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$uqgKYqD/8QijoybuW4de9uGVCBEfZIrH92weLzsERWFsT/0lMxne2', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-05-12 19:00:58', '2017-05-12 19:00:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(109, NULL, NULL, 'mmmm@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Db/GP5vV1UWVkQK1aYwmMejyNHHGf2uUGYdgM0XeiNFcN.MULcImu', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-05-12 19:14:41', '2017-05-12 19:14:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(110, NULL, NULL, 'mmmmmmm@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$mZsn/v2r3gBQb34Cgur1ueWRaEoqUZj9w9Sn7tGq4TwErrNEbcEOO', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-05-12 19:18:50', '2017-05-12 19:18:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(112, NULL, NULL, 'mmmmmmmmmmmm@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$/o9vWls/nJnOdzrtM1Kqqe3XNiHb4hyFDmajk34roBw40TqIKA5hC', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-05-12 19:20:23', '2017-05-12 19:20:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(113, NULL, NULL, 'mmmmmmmmmmmmmmmmm@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$LkzQM05RdXmj0RQMu3hC9u1XFN1oIdl1sKNkK/UPFr72LCrR6lhIW', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-05-12 19:26:09', '2017-05-12 19:26:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(114, NULL, NULL, 'mmmmmmmmmmmmmmmmmmmmm@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$vWJmd1uE19Ap12pAp8mQtucsAJAxH2GpYpK3DxMQGi87fG23BlVlW', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-05-12 19:29:00', '2017-05-12 19:29:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(115, NULL, NULL, 'mark.mmmmmmmmmmmmmmmmmmmmmmbayo.n@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$8o1lZUN2Yzj8tcjBt4CLVe2w767t5J3cPjOpjWd8jDXXZaGcIMffy', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-05-12 19:40:26', '2017-05-12 19:40:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(116, NULL, NULL, 'mmmmmmmmmmmmmmmmmmmmm@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$9B6.A2l2JdHRpm6GYhWAv.LpDx/98DBHCBR9NyZ/Jrq0P/urr21wi', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2017-05-13 08:52:25', '2017-05-13 08:52:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(1077, 'Steve', 'Mtimuni', 'stevem@live.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Malawi', NULL, NULL, NULL, ''),
(1078, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Malawi', NULL, NULL, NULL, ''),
(1079, 'Charles', 'Munyaradzi', 'charles @mail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Zimbabwe', NULL, NULL, NULL, ''),
(1080, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Zimbabwe', NULL, NULL, NULL, ''),
(1087, 'Francios', 'Jirud', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'France', NULL, NULL, NULL, ''),
(1099, 'Vladmir', 'Chenkov', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Russia', NULL, NULL, NULL, ''),
(1100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Russia', NULL, NULL, NULL, ''),
(1102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'France', NULL, NULL, NULL, ''),
(1127, 'Christiano', 'Ronaldinho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Brazil', NULL, NULL, NULL, ''),
(1128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Brazil', NULL, NULL, NULL, ''),
(1324, 'Mark', 'Rutherford', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Canada', NULL, NULL, NULL, ''),
(1325, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Canada', NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`id`, `slug`, `name`, `created_by`, `updated_by`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'System Admins', 0, 10, 1, '2016-01-31 13:22:42', '2017-02-15 09:42:37'),
(10, 'Training', 'Training Management', 10, 10, 1, '2017-02-15 09:38:33', '2017-02-15 09:42:09'),
(11, 'Junior-Trainers', 'Junior Trainers', 10, 0, 1, '2017-02-15 09:38:59', '2017-02-15 09:38:59'),
(12, 'Senior-Trainers', 'Senior Trainers', 10, 0, 1, '2017-02-15 09:39:12', '2017-02-15 09:39:12'),
(13, 'Ops-Personnel', 'Ops Personnel', 10, 0, 1, '2017-02-15 09:39:28', '2017-02-15 09:39:28'),
(14, 'GateTrack', 'GateTrack', 10, 0, 1, '2017-02-15 09:39:53', '2017-02-15 09:39:53'),
(15, 'Drone-Pilots', 'Drone Pilots', 10, 0, 1, '2017-02-15 09:40:15', '2017-02-15 09:40:15'),
(16, 'Drone-Management', 'Drone Management', 10, 0, 1, '2017-02-15 09:40:26', '2017-02-15 09:40:26'),
(17, 'Siyaleader-Management', 'Senior Management', 10, 10, 1, '2017-02-15 09:40:42', '2017-02-15 09:43:46'),
(18, 'Developers', 'Developers', 10, 0, 1, '2017-02-15 09:41:09', '2017-02-15 09:41:09'),
(19, 'Developer-Team-Leads', 'Developer Team Leads', 10, 0, 1, '2017-02-15 09:41:38', '2017-02-15 09:41:38'),
(20, 'Project-Managers', 'Project Managers', 10, 0, 1, '2017-02-15 09:41:53', '2017-02-15 09:41:53'),
(21, 'LOTS-Executive', 'LOTS Executive', 10, 0, 1, '2017-02-15 09:44:17', '2017-02-15 09:44:17'),
(22, 'Richards-Test', 'Richards Test', 10, 0, 1, '2017-03-28 09:47:01', '2017-03-28 09:47:01');

-- --------------------------------------------------------

--
-- Table structure for table `users_statuses`
--

CREATE TABLE `users_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_statuses`
--

INSERT INTO `users_statuses` (`id`, `slug`, `name`, `created_by`, `updated_by`, `active`, `created_at`, `updated_at`) VALUES
(1, 'active', 'active', 1, 1, 1, '2016-02-01 06:51:17', '0000-00-00 00:00:00'),
(2, 'pre-reg', 'pre-reg', 1, 1, 1, '2016-02-01 06:51:47', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_permissions`
--

CREATE TABLE `user_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_reportdetails`
--

CREATE TABLE `user_reportdetails` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ID_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_new_id` int(11) DEFAULT NULL,
  `ref_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wards`
--

CREATE TABLE `wards` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `municipality` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wards`
--

INSERT INTO `wards` (`id`, `slug`, `name`, `municipality`, `created_by`, `updated_by`, `active`, `created_at`, `updated_at`) VALUES
(1, '10101001', 'Ward 1', 1, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'W1_mun_191', 'Ward 1', 191, 11, 0, 1, '2016-08-30 06:38:00', '2016-08-30 06:38:00'),
(3, '1_mun_234', 'Ward 1', 234, 11, 0, 1, '2016-09-02 05:31:03', '2016-09-02 05:31:03');

-- --------------------------------------------------------

--
-- Table structure for table `workflows`
--

CREATE TABLE `workflows` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sub_sub_category_id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actiontakens`
--
ALTER TABLE `actiontakens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addressbook`
--
ALTER TABLE `addressbook`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `addressbook_email_unique` (`email`),
  ADD UNIQUE KEY `addressbook_cellphone_unique` (`cellphone`);

--
-- Indexes for table `affiliations`
--
ALTER TABLE `affiliations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `affiliations_slug_unique` (`slug`);

--
-- Indexes for table `allocate_mobs`
--
ALTER TABLE `allocate_mobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booktime_offs`
--
ALTER TABLE `booktime_offs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calander_shifts`
--
ALTER TABLE `calander_shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendar_events`
--
ALTER TABLE `calendar_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendar_events_type`
--
ALTER TABLE `calendar_events_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calender_tabs`
--
ALTER TABLE `calender_tabs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cases_activities`
--
ALTER TABLE `cases_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cases_escalations`
--
ALTER TABLE `cases_escalations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cases_files`
--
ALTER TABLE `cases_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cases_notes`
--
ALTER TABLE `cases_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cases_owners`
--
ALTER TABLE `cases_owners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cases_poi`
--
ALTER TABLE `cases_poi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cases_priorities`
--
ALTER TABLE `cases_priorities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cases_priorities_slug_unique` (`slug`);

--
-- Indexes for table `cases_sources`
--
ALTER TABLE `cases_sources`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cases_sources_slug_unique` (`slug`);

--
-- Indexes for table `cases_statuses`
--
ALTER TABLE `cases_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cases_statuses_slug_unique` (`slug`);

--
-- Indexes for table `cases_status_confirs`
--
ALTER TABLE `cases_status_confirs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cases_sub_sub_types`
--
ALTER TABLE `cases_sub_sub_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cases_sub_sub_types_slug_unique` (`slug`);

--
-- Indexes for table `cases_sub_types`
--
ALTER TABLE `cases_sub_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cases_sub_types_slug_unique` (`slug`),
  ADD KEY `cases_sub_types_case_type_foreign` (`case_type`);

--
-- Indexes for table `cases_types`
--
ALTER TABLE `cases_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cases_types_slug_unique` (`slug`),
  ADD KEY `cases_types_department_foreign` (`department`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirm_inceden_pancacks`
--
ALTER TABLE `confirm_inceden_pancacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_slug_unique` (`slug`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `districts_slug_unique` (`slug`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_companies`
--
ALTER TABLE `driver_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_vehicles`
--
ALTER TABLE `driver_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency_contacts`
--
ALTER TABLE `emergency_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency_locations`
--
ALTER TABLE `emergency_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency_types`
--
ALTER TABLE `emergency_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_permissions`
--
ALTER TABLE `group_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_slug_unique` (`slug`);

--
-- Indexes for table `location_tabs`
--
ALTER TABLE `location_tabs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetings_attendees`
--
ALTER TABLE `meetings_attendees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetings_facilitators`
--
ALTER TABLE `meetings_facilitators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetings_files`
--
ALTER TABLE `meetings_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetings_venues`
--
ALTER TABLE `meetings_venues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messagenotifications`
--
ALTER TABLE `messagenotifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `moredetails`
--
ALTER TABLE `moredetails`
  ADD PRIMARY KEY (`ID_NUMBER`);

--
-- Indexes for table `municipalities`
--
ALTER TABLE `municipalities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `municipalities_slug_unique` (`slug`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`);

--
-- Indexes for table `phone_brands`
--
ALTER TABLE `phone_brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_brands_slug_unique` (`slug`);

--
-- Indexes for table `phone_networks`
--
ALTER TABLE `phone_networks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_networks_slug_unique` (`slug`);

--
-- Indexes for table `phone_types`
--
ALTER TABLE `phone_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_types_slug_unique` (`slug`);

--
-- Indexes for table `poi`
--
ALTER TABLE `poi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poi_addresses`
--
ALTER TABLE `poi_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poi_address_types`
--
ALTER TABLE `poi_address_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poi_associates`
--
ALTER TABLE `poi_associates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poi_bank_details`
--
ALTER TABLE `poi_bank_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poi_contact_numbers`
--
ALTER TABLE `poi_contact_numbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poi_criminal_records`
--
ALTER TABLE `poi_criminal_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poi_doc_type`
--
ALTER TABLE `poi_doc_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `poi_doc_type_slug_unique` (`slug`);

--
-- Indexes for table `poi_driver_licences`
--
ALTER TABLE `poi_driver_licences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poi_pictures`
--
ALTER TABLE `poi_pictures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poi_pictures_types`
--
ALTER TABLE `poi_pictures_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poi_travel_movements`
--
ALTER TABLE `poi_travel_movements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ports`
--
ALTER TABLE `ports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `positions_slug_unique` (`slug`);

--
-- Indexes for table `positions_affiliations`
--
ALTER TABLE `positions_affiliations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `positions_affiliations_affiliation_unique` (`affiliation`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `provinces_slug_unique` (`slug`);

--
-- Indexes for table `related_cases`
--
ALTER TABLE `related_cases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relationships`
--
ALTER TABLE `relationships`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `relationships_slug_unique` (`slug`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `responders`
--
ALTER TABLE `responders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `responders_responder_type_foreign` (`responder_type`),
  ADD KEY `responders_case_type_foreign` (`case_type`),
  ADD KEY `responders_responder_foreign` (`responder`),
  ADD KEY `responders_case_sub_type_foreign` (`case_sub_type`);

--
-- Indexes for table `responder_types`
--
ALTER TABLE `responder_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`);

--
-- Indexes for table `safety_tips`
--
ALTER TABLE `safety_tips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifth_reports`
--
ALTER TABLE `shifth_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shift_tabs_nihgts`
--
ALTER TABLE `shift_tabs_nihgts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shif_tabs_days`
--
ALTER TABLE `shif_tabs_days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students_regis`
--
ALTER TABLE `students_regis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_pancak_books`
--
ALTER TABLE `student_pancak_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_categories_slug_unique` (`slug`);

--
-- Indexes for table `sub_safety_tips`
--
ALTER TABLE `sub_safety_tips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_sub_categories_slug_unique` (`slug`);

--
-- Indexes for table `teamlers`
--
ALTER TABLE `teamlers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_index` (`user_id`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `titles_slug_unique` (`slug`);

--
-- Indexes for table `trucks`
--
ALTER TABLE `trucks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `truck_companies`
--
ALTER TABLE `truck_companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `truck_companies_contact_email_unique` (`contact_email`),
  ADD UNIQUE KEY `truck_companies_contact_phone_number_unique` (`contact_phone_number`);

--
-- Indexes for table `truck_drivers`
--
ALTER TABLE `truck_drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `universities`
--
ALTER TABLE `universities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_cellphone_unique` (`cellphone`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_roles_slug_unique` (`slug`);

--
-- Indexes for table `users_statuses`
--
ALTER TABLE `users_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_statuses_slug_unique` (`slug`);

--
-- Indexes for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_reportdetails`
--
ALTER TABLE `user_reportdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wards_slug_unique` (`slug`);

--
-- Indexes for table `workflows`
--
ALTER TABLE `workflows`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actiontakens`
--
ALTER TABLE `actiontakens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `addressbook`
--
ALTER TABLE `addressbook`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `affiliations`
--
ALTER TABLE `affiliations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `allocate_mobs`
--
ALTER TABLE `allocate_mobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `booktime_offs`
--
ALTER TABLE `booktime_offs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `calander_shifts`
--
ALTER TABLE `calander_shifts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `calendar_events`
--
ALTER TABLE `calendar_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `calendar_events_type`
--
ALTER TABLE `calendar_events_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `calender_tabs`
--
ALTER TABLE `calender_tabs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `cases_activities`
--
ALTER TABLE `cases_activities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `cases_escalations`
--
ALTER TABLE `cases_escalations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `cases_files`
--
ALTER TABLE `cases_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cases_notes`
--
ALTER TABLE `cases_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cases_owners`
--
ALTER TABLE `cases_owners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `cases_poi`
--
ALTER TABLE `cases_poi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cases_priorities`
--
ALTER TABLE `cases_priorities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cases_sources`
--
ALTER TABLE `cases_sources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cases_statuses`
--
ALTER TABLE `cases_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `cases_status_confirs`
--
ALTER TABLE `cases_status_confirs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cases_sub_sub_types`
--
ALTER TABLE `cases_sub_sub_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cases_sub_types`
--
ALTER TABLE `cases_sub_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `cases_types`
--
ALTER TABLE `cases_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `confirm_inceden_pancacks`
--
ALTER TABLE `confirm_inceden_pancacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `driver_companies`
--
ALTER TABLE `driver_companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `driver_vehicles`
--
ALTER TABLE `driver_vehicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=462;
--
-- AUTO_INCREMENT for table `emergency_contacts`
--
ALTER TABLE `emergency_contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emergency_locations`
--
ALTER TABLE `emergency_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emergency_types`
--
ALTER TABLE `emergency_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `group_permissions`
--
ALTER TABLE `group_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=807;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `location_tabs`
--
ALTER TABLE `location_tabs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meetings_attendees`
--
ALTER TABLE `meetings_attendees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meetings_facilitators`
--
ALTER TABLE `meetings_facilitators`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meetings_files`
--
ALTER TABLE `meetings_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meetings_venues`
--
ALTER TABLE `meetings_venues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `messagenotifications`
--
ALTER TABLE `messagenotifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `municipalities`
--
ALTER TABLE `municipalities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phone_brands`
--
ALTER TABLE `phone_brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phone_networks`
--
ALTER TABLE `phone_networks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phone_types`
--
ALTER TABLE `phone_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `poi`
--
ALTER TABLE `poi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `poi_addresses`
--
ALTER TABLE `poi_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `poi_address_types`
--
ALTER TABLE `poi_address_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `poi_associates`
--
ALTER TABLE `poi_associates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `poi_bank_details`
--
ALTER TABLE `poi_bank_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `poi_contact_numbers`
--
ALTER TABLE `poi_contact_numbers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `poi_criminal_records`
--
ALTER TABLE `poi_criminal_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `poi_doc_type`
--
ALTER TABLE `poi_doc_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `poi_driver_licences`
--
ALTER TABLE `poi_driver_licences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `poi_pictures`
--
ALTER TABLE `poi_pictures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `poi_pictures_types`
--
ALTER TABLE `poi_pictures_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `poi_travel_movements`
--
ALTER TABLE `poi_travel_movements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ports`
--
ALTER TABLE `ports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `positions_affiliations`
--
ALTER TABLE `positions_affiliations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `related_cases`
--
ALTER TABLE `related_cases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `relationships`
--
ALTER TABLE `relationships`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `responders`
--
ALTER TABLE `responders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `responder_types`
--
ALTER TABLE `responder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `safety_tips`
--
ALTER TABLE `safety_tips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shifth_reports`
--
ALTER TABLE `shifth_reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shift_tabs_nihgts`
--
ALTER TABLE `shift_tabs_nihgts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shif_tabs_days`
--
ALTER TABLE `shif_tabs_days`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `students_regis`
--
ALTER TABLE `students_regis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_pancak_books`
--
ALTER TABLE `student_pancak_books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `sub_safety_tips`
--
ALTER TABLE `sub_safety_tips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `teamlers`
--
ALTER TABLE `teamlers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `trucks`
--
ALTER TABLE `trucks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `truck_companies`
--
ALTER TABLE `truck_companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `truck_drivers`
--
ALTER TABLE `truck_drivers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `universities`
--
ALTER TABLE `universities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1327;
--
-- AUTO_INCREMENT for table `users_roles`
--
ALTER TABLE `users_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `users_statuses`
--
ALTER TABLE `users_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_permissions`
--
ALTER TABLE `user_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_reportdetails`
--
ALTER TABLE `user_reportdetails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wards`
--
ALTER TABLE `wards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `workflows`
--
ALTER TABLE `workflows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cases_sub_types`
--
ALTER TABLE `cases_sub_types`
  ADD CONSTRAINT `cases_sub_types_case_type_foreign` FOREIGN KEY (`case_type`) REFERENCES `cases_types` (`id`);

--
-- Constraints for table `cases_types`
--
ALTER TABLE `cases_types`
  ADD CONSTRAINT `cases_types_department_foreign` FOREIGN KEY (`department`) REFERENCES `departments` (`id`);

--
-- Constraints for table `responders`
--
ALTER TABLE `responders`
  ADD CONSTRAINT `responders_case_sub_type_foreign` FOREIGN KEY (`case_sub_type`) REFERENCES `cases_sub_types` (`id`),
  ADD CONSTRAINT `responders_case_type_foreign` FOREIGN KEY (`case_type`) REFERENCES `cases_types` (`id`),
  ADD CONSTRAINT `responders_responder_foreign` FOREIGN KEY (`responder`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `responders_responder_type_foreign` FOREIGN KEY (`responder_type`) REFERENCES `responder_types` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
