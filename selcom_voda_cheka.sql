-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2018 at 01:24 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `selcom_voda_cheka`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `utilitycode` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `name` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `name_en` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `name_sw` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `categorycode` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `sequence` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `utilitycode`, `name`, `name_en`, `name_sw`, `categorycode`, `sequence`) VALUES
(1, 'VODA_BNDL', 'Vodafasta Internet Bundles', 'Vodafasta Internet Bundles', 'Kuuza Intaneti kwa Vodafasta', 'DAILY', 1),
(2, 'VODA_BNDL', 'Vodafasta Internet Bundles', 'Vodafasta Internet Bundles', 'Kuuza Intaneti kwa Vodafasta', '2DAYS', 1),
(3, 'VODA_BNDL', 'Vodafasta Internet Bundles', 'Vodafasta Internet Bundles', 'Kuuza Intaneti kwa Vodafasta', 'WEEKLY', 1),
(4, 'VODA_BNDL', 'Vodafasta Internet Bundles', 'Vodafasta Internet Bundles', 'Kuuza Intaneti kwa Vodafasta', 'MONTHLY', 1),
(5, 'VODA_CHEKA', 'Cheka Bundles', 'Cheka Bundles', 'Vifurushi vya Cheka', 'ALL NETWORKS', 1),
(6, 'VODA_CHEKA', 'Cheka Bundles', 'Cheka Bundles', 'Vifurushi vya Cheka', 'VODACOM-VODACOM', 1),
(7, 'VODA_RED', 'RED RLX', 'RED RLX', 'Kuuza RED RLX', 'GOLD=TSH.50,000', 1),
(8, 'VODA_PP', 'PINDUAPINDUA', 'PINDUAPINDUA', 'PINDUAPINDUA', '24 HOURS', 1),
(9, 'VODA_PP', 'PINDUAPINDUA', 'PINDUAPINDUA', 'PINDUAPINDUA', '7 DAYS', 1),
(10, 'VODA_PP', 'PINDUAPINDUA', 'PINDUAPINDUA', 'PINDUAPINDUA', '30 DAYS', 1),
(11, 'VODA_BNDL', 'Vodafasta Internet Bundles', 'Vodafasta Internet Bundles', 'Kuuza Intaneti kwa Vodafasta', 'DAILY', 1),
(12, 'VODA_BNDL', 'Vodafasta Internet Bundles', 'Vodafasta Internet Bundles', 'Kuuza Intaneti kwa Vodafasta', '2DAYS', 1),
(13, 'VODA_BNDL', 'Vodafasta Internet Bundles', 'Vodafasta Internet Bundles', 'Kuuza Intaneti kwa Vodafasta', 'WEEKLY', 1),
(14, 'VODA_BNDL', 'Vodafasta Internet Bundles', 'Vodafasta Internet Bundles', 'Kuuza Intaneti kwa Vodafasta', 'MONTHLY', 1),
(15, 'VODA_CHEKA', 'Cheka Bundles', 'Cheka Bundles', 'Vifurushi vya Cheka', 'ALL NETWORKS', 1),
(16, 'VODA_CHEKA', 'Cheka Bundles', 'Cheka Bundles', 'Vifurushi vya Cheka', 'VODACOM-VODACOM', 1),
(17, 'VODA_RED', 'RED RLX', 'RED RLX', 'Kuuza RED RLX', 'GOLD=TSH.50,000', 1),
(18, 'VODA_PP', 'PINDUAPINDUA', 'PINDUAPINDUA', 'PINDUAPINDUA', '24 HOURS', 1),
(19, 'VODA_PP', 'PINDUAPINDUA', 'PINDUAPINDUA', 'PINDUAPINDUA', '7 DAYS', 1),
(20, 'VODA_PP', 'PINDUAPINDUA', 'PINDUAPINDUA', 'PINDUAPINDUA', '30 DAYS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menuitem`
--

CREATE TABLE `menuitem` (
  `id` int(11) NOT NULL,
  `utilitycode` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `name` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `name_en` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `name_sw` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `description` tinytext COLLATE latin1_general_ci NOT NULL,
  `categorycode` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `amount` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `days` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  `itemcode` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `sequence` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `menuitem`
--

INSERT INTO `menuitem` (`id`, `utilitycode`, `name`, `name_en`, `name_sw`, `description`, `categorycode`, `amount`, `days`, `itemcode`, `sequence`) VALUES
(1, 'VODA_BNDL', 'Tsh.500=70MB', 'Tsh.500=70MB', 'Tsh.500=MB70', 'EN Internet Tsh500. Cost 490. Excl 415.25. Vat 18%. Vat Amount 74.75', 'DAILY', '490', '1', '*147*505', 1),
(2, 'VODA_BNDL', 'Tsh.1000=200MB', 'Tsh.1000=200MB', 'Tsh.1000=MB200', 'EN Internet Tsh1000. Cost 980. Excl 830.51. Vat 18%. Vat Amount 149.49', 'DAILY', '980', '1', '*147*1005', 2),
(3, 'VODA_BNDL', 'Tsh.2000=1GB', 'Tsh.2000=1GB', 'Tsh.2000=GB1', 'EN Internet Tsh2000. Cost 1960. Excl 1661.02. Vat 18%. Vat Amount 298.98', 'DAILY', '1960', '1', '*147*2505', 3),
(4, 'VODA_BNDL', 'Tsh.1000=1.5GB 2hours', 'Tsh.1000=1.5GB 2hours', 'Tsh.1000=GB1.5 Saa2', 'EN Internet 2hrs Tsh1000. Cost 1000. Excl 847.46. Vat 18%. Vat Amount 152.54', 'DAILY', '1000', '0', '*148*1038', 4),
(5, 'VODA_BNDL', 'Tsh.5000=2GB', 'Tsh.5000=2GB', 'Tsh.5000=GB2', 'EN Internet Tsh5000. Cost 5000. Excl 4237.29. Vat 18%. Vat Amount 762.71', '2DAYS', '5000', '2', '*148*5017', 1),
(6, 'VODA_BNDL', 'Tsh.3000=500MB', 'Tsh.3000=500MB', 'Tsh.3000=MB500', 'EN Internet Tsh3000 . Cost 2940. Excl 2491.53. Vat 18%. Vat Amount 448.47', 'WEEKLY', '2940', '7', '*147*2007', 1),
(7, 'VODA_BNDL', 'Tsh.5000=1GB', 'Tsh.5000=1GB', 'Tsh.5000=GB1', 'EN Internet Tsh5000. Cost 4900. Excl 4152.54. Vat 18%. Vat Amount 747.46', 'WEEKLY', '4900', '7', '*147*4005', 2),
(8, 'VODA_BNDL', 'Tsh.10000=2GB', 'Tsh.10000=2GB', 'Tsh.10000=GB2', 'EN Internet Tsh10000. Cost 10000. Excl 8474.58. Vat 18%. Vat Amount 1525.42', 'WEEKLY', '10000', '7', '*147*8007', 3),
(9, 'VODA_BNDL', 'Tsh.15000=10GB', 'Tsh.15000=10GB', 'Tsh.15000=GB10', 'EN Internet Tsh15000. Cost 15000. Excl 12711.86. Vat 18%. Vat Amount 2288.14', 'WEEKLY', '15000', '7', '*147*15001', 4),
(10, 'VODA_BNDL', 'Tsh.5000=500MB', 'Tsh.5000=500MB', 'Tsh.5000=MB500', 'EN Internet Tsh5000. Cost 4900. Excl 4152.54. Vat 18%. Vat Amount 747.46', 'MONTHLY', '4900', '30', '*147*5005', 1),
(11, 'VODA_BNDL', 'Tsh.15000=2GB', 'Tsh.15000=2GB', 'Tsh.15000=GB2', 'EN Internet Tsh15000. Cost 14700. Excl 12457.63. Vat 18%. Vat Amount 2242.37', 'MONTHLY', '14700', '30', '*147*15005', 2),
(12, 'VODA_BNDL', 'Tsh.35000=10GB', 'Tsh.35000=10GB', 'Tsh.35000=GB10', 'EN Internet Tsh35000. Cost 34300. Excl 29067.80. Vat 18%. Vat Amount 5232.20', 'MONTHLY', '34300', '30', '*147*35005', 3),
(13, 'VODA_BNDL', 'Tsh.50000=20GB', 'Tsh.50000=20GB', 'Tsh.50000=GB20', 'EN Internet Tsh50000. Cost 49000. Excl 41525.42. Vat 18%. Vat Amount 7474.58', 'MONTHLY', '49000', '30', '*147*40005', 4),
(14, 'VODA_BNDL', 'Tsh.95000=50GB', 'Tsh.95000=50GB', 'Tsh.95000=GB50', 'EN Internet Tsh95000. Cost 93100. Excl 78898.30. Vat 18%. Vat Amount 14201.70', 'MONTHLY', '93100', '30', '*147*80005', 5),
(15, 'DAILY BUNDLES', 'Tsh.499=7mins,40sms,1MB', 'Tsh.499=7mins,40sms,1MB', 'Tsh.499=dk7,sms40,MB1', 'EN Cheka Tsh499. Cost 489. Excl 414.41. Vat 18%. Vat Amount 74.59', 'All Networks', '489', '1', '*147*499', 1),
(16, 'DAILY BUNDLES', 'Tsh.649=12min,100sms,3MB', 'Tsh.649=12min,100sms,3MB', 'Tsh.649=dk12,sms100,MB3', 'EN Cheka Tsh649. Cost 636. Excl 538.98. Vat 18%. Vat Amount 97.02', 'All Networks', '636', '1', '*147*649', 2),
(17, 'DAILY BUNDLES', 'Tsh.999=22min,unlimited sms,10MB', 'Tsh.999=22min,unlimited sms,10MB', 'Tsh.999=dk22+5mitandao yote,MB10', 'EN Cheka Tsh999. Cost 979. Excl 829.66. Vat 18%. Vat Amount 149.34', 'All Networks', '979', '1', '*147*999', 3),
(18, 'WEEKLY BUNDLES', 'Tsh.1000=Unlimited SMS/7days', 'Tsh.1000=Unlimited SMS/7days', 'Tsh.1000=Sms bila kikomo/Siku7', 'EN Cheka SMS Tsh1000. Cost 980. Excl 830.51. Vat 18%. Vat Amount 149.49', 'All Networks', '980', '7', '*147*540', 1),
(19, 'WEEKLY BUNDLES', 'Tsh.1999=25min,200sms,20MB', 'Tsh.1999=25min,200sms,20MB', 'Tsh.1999=25min,200sms,20MB', 'EN Cheka Tsh1999. Cost 1959. Excl 1660.17. Vat 18%. Vat Amount 298.83', 'All Networks', '1959', '7', '*147*1999', 2),
(20, 'WEEKLY BUNDLES', 'Tsh.4999=73min,500sms,50MB', 'Tsh.4999=73min,500sms,50MB', 'Tsh.4999=73min,500sms,50MB', 'EN Cheka Tsh4999. Cost 4899. Excl 4151.69. Vat 18%. Vat Amount 747.31', 'All Networks', '4899', '7', '*147*4999', 3),
(21, 'WEEKLY BUNDLES', 'Tsh.9999=183min,1000sms,80MB', 'Tsh.9999=183min,1000sms,80MB', 'Tsh.9999=183min,1000sms,80MB', 'EN Cheka Tsh9999. Cost 9799. Excl 8304.24. Vat 18%. Vat Amount 1494.76', 'All Networks', '9799', '7', '*147*9999', 4),
(22, 'MONTHLY', 'Tsh.2000=Unlimited sms/30days', 'Tsh.2000=Unlimited sms/30days', 'Tsh.2000=Sms bila kikomo/Siku30', 'EN Cheka SMS Tsh2000. Cost 1960. Excl 1661.02. Vat 18%. Vat Amount 298.98', 'All Networks', '1960', '30', '*147*1040', 1),
(23, 'MONTHLY', 'Tsh.9999=135min,1000sms,100MB', 'Tsh.9999=135min,1000sms,100MB', 'Tsh.9999=dk135,sms1000,MB100', 'EN Cheka Tsh9999. Cost 9799. Excl 8304.24. Vat 18%. Vat Amount 1494.76', 'All Networks', '9799', '30', '*147*999920', 2),
(24, 'MONTHLY', 'Tsh.14999=210min,1500sms,250MB', 'Tsh.14999=210min,1500sms,250MB', 'Tsh.14999=dk210,sms1500,MB250', 'EN Cheka Tsh14999. Cost 14699. Excl 12456.78. Vat 18%. Vat Amount 2242.22', 'All Networks', '14699', '30', '*147*14999', 3),
(25, 'MONTHLY', 'Tsh.19999=340min,2000sms,250MB', 'Tsh.19999=340min,2000sms,250MB', 'Tsh.19999=dk340,sms2000,MB250', 'EN Cheka Tsh19999. Cost 19599. Excl 16609.32. Vat 18%. Vat Amount 2989.68', 'All Networks', '19599', '30', '*147*19999', 4),
(26, 'MONTHLY', '50000=1000allnetmin,7000sms,7GB', '50000=1000allnetmin,7000sms,7GB', '50000=dk1000Mitandaoyote,SMS7000,GB7', 'EN RED Tsh50000. Cost 47000. Excl 39830.51. Vat 18%. Vat Amount 7169.49', 'All Networks', '47000', '30', '*147*50027', 5),
(27, 'DAILY BUNDLES', 'Tsh.500=14min,2allnet,40sms,1MB', 'Tsh.500=14min,2allnet,40sms,1MB', '500=dk14,2mitandao yote,sms40,MB1', 'EN Cheka Tsh500. Cost 490. Excl 415.25. Vat 18%. Vat Amount 74.75', 'Vodacom-Vodacom', '490', '1', '*147*500', 1),
(28, 'DAILY BUNDLES', 'Tsh.600=30min,2allnet', 'Tsh.600=30min,2allnet', 'Tsh.600=dk30,dk2 mitandao yote', 'EN Cheka Tsh 600. Cost 588. Excl 498.31. Vat 18%. Vat Amount 89.69', 'Vodacom-Vodacom', '588', '1', '*147*600', 2),
(29, 'DAILY BUNDLES', 'Tsh.1000=65min,5allnet,200SMS', 'Tsh.1000=65min,5allnet,200SMS', 'Tsh1000=dk65,5mitandao yote,sms200,MB10', 'EN Cheka Tsh1000. Cost 980. Excl 830.51. Vat 18%. Vat Amount 149.49', 'Vodacom-Vodacom', '980', '1', '*147*1000', 3),
(30, 'WEEKLY BUNDLES', 'Tsh.2000=50min,5allnet,200sms,20MB', 'Tsh.2000=50min,5allnet,200sms,20MB', '2000=dk50+5mitandao yote,SMS200,MB20', 'EN Cheka Tsh2000. Cost 1960. Excl 1661.02. Vat 18%. Vat Amount 298.98', 'Vodacom-Vodacom', '1960', '7', '*147*2000', 1),
(31, 'WEEKLY BUNDLES', 'Tsh.2800=75min,5allnet,300sms,30MB', 'Tsh.2800=75min,5allnet,300sms,30MB', '2800=dk75+5mitandao yote,sms300,MB30', 'EN Cheka Tsh2800. Cost 2744. Excl 2325.42. Vat 18%. Vat Amount 418.58', 'Vodacom-Vodacom', '2744', '7', '*147*2800', 2),
(32, 'WEEKLY BUNDLES', 'Tsh.4000=130min,5allnet,500sms,50MB', 'Tsh.4000=130min,5allnet,500sms,50MB', '4000=dk130,5mitandao yote,sms500,MB50', 'EN Cheka Tsh4000. Cost 3920. Excl 3322.03. Vat 18%. Vat Amount 597.97', 'Vodacom-Vodacom', '3920', '7', '*147*4000', 3),
(33, 'MONTHLY BUNDLES', 'Tsh.10000=300min,20allnet,1000sms,20MB', 'Tsh.10000=300min,20allnet,1000sms,20MB', '10000=dk300,20mitandaoyote,sms1000,MB20', 'EN Cheka Tsh10000. Cost 9800. Excl 8305.08. Vat 18%. Vat Amount 1494.92', 'Vodacom-Vodacom', '9800', '30', '*147*10000123', 1),
(34, 'MONTHLY BUNDLES', 'Tsh.15000=450min,20allnet,250MB', 'Tsh.15000=450min,20allnet,250MB', '15000=dk450,20mitandao yote,MB250', 'EN Cheka Tsh15000. Cost 14700. Excl 12457.63. Vat 18%. Vat Amount 2242.37', 'Vodacom-Vodacom', '14700', '30', '*147*15000', 2),
(35, 'MONTHLY BUNDLES', 'Tsh.20000=750min,20allnet,250MB', 'Tsh.20000=750min,20allnet,250MB', '20000=dk750,20mitandao yote,MB250', 'EN Cheka Tsh20000. Cost 19600. Excl 16610.17. Vat 18%. Vat Amount 2989.83', 'Vodacom-Vodacom', '19600', '30', '*147*20000', 3),
(36, 'VODA_RED', '600Allnet Mins,3000SMS,3GB/30days', '600Allnet Mins,3000SMS,3GB/30days', 'dk600Mitandao yote,SMS3000,GB3/Siku 30', 'EN RED Tsh30000. Cost 28000. Excl 23728.81. Vat 18%. Vat Amount 4271.19', 'SILVER=TSH.30,000', '28000', '30', '*148*30027', 1),
(37, 'VODA_RED', '300Allnet Mins,300SMS, 5GB/30days', '300Allnet Mins,300SMS, 5GB/30days', 'dk300Mitandao yote,SMS300,GB5/Siku 30', 'EN RED Tsh30000. Cost 28000. Excl 23728.81. Vat 18%. Vat Amount 4271.19', 'SILVER=TSH.30,000', '28000', '30', '*148*30029', 2),
(38, 'VODA_RED', '1000Allnet Mins,7000SMS, 7GB/30days', '1000Allnet Mins,7000SMS, 7GB/30days', 'dk1000Mitandao yote,SMS7000, GB7/siku 30', 'EN RED Tsh50000. Cost 47000. Excl 39830.51. Vat 18%. Vat Amount 7169.49', 'GOLD=TSH.50,000', '47000', '30', '*148*50027', 1),
(39, 'VODA_RED', '300Allnet Mins,300SMS, 15GB/30days', '300Allnet Mins,300SMS, 15GB/30days', 'dk300Mitandao yote,SMS300, GB15/siku 30', 'EN RED Tsh50000. Cost 47000. Excl 39830.51. Vat 18%. Vat Amount 7169.49', 'GOLD=TSH.50,000', '47000', '30', '*148*50029', 2),
(40, 'VODA_RED', '2500Mins,30 Intl Mins,15000SMS, 3GB/30days', '2500Mins,30 Intl Mins,15000SMS, 3GB/30days', 'dakika2500,30 kimataifa,SMS 15000, GB3/siku 30', 'EN RED Tsh95000. Cost 90000. Excl 76271.19. Vat 18%. Vat Amount 13728.81', 'PLATINUM=TSH.95,000', '90000', '30', '*148*95027', 1),
(41, 'VODA_RED', '600Minutes,10 Intl Mins, 600SMS, 30GB/30days', '600Minutes,10 Intl Mins, 600SMS, 30GB/30days', 'dakika600,10 kimataifa, SMS 600,GB30/siku 30', 'EN RED Tsh95000. Cost 90000. Excl 76271.19. Vat 18%. Vat Amount 13728.81', 'PLATINUM=TSH.95,000', '90000', '30', '*148*95029', 2),
(42, 'VODA_PP', 'Tsh.1000=100units', 'Tsh.1000=100units', 'Tsh.1000=Uniti100', 'EN Pindua Tsh1000. Cost 980. Excl 830.51. Vat 18%. Vat Amount 149.49', '24 HOURS', '980', '1', '*148*1087', 1),
(43, 'VODA_PP', 'Tsh.2000=260units', 'Tsh.2000=260units', 'Tsh.2000=Uniti260', 'EN Pindua Tsh2000. Cost 1960. Excl 1661.02. Vat 18%. Vat Amount 298.98', '24 HOURS', '1960', '1', '*148*2087', 2),
(44, 'VODA_PP', 'Tsh.5000=500units', 'Tsh.5000=500units', 'Tsh.5000=Uniti 500', 'EN Pindua Tsh5000. Cost 4900. Excl 4152.54. Vat 18%. Vat Amount 747.46', '7 DAYS', '4900', '7', '*148*5087', 1),
(45, 'VODA_PP', 'Tsh.10000=1200units', 'Tsh.10000=1200units', 'Tsh.10000=Uniti 1200', 'EN Pindua Tsh10000. Cost 9800. Excl 8305.08. Vat 18%. Vat Amount 1494.92', '7 DAYS', '9800', '7', '*148*10087', 2),
(46, 'VODA_PP', 'Tsh.15000=1800units', 'Tsh.15000=1800units', 'Tsh.15000=Uniti 1800', 'EN Pindua Tsh15000. Cost 14700. Excl 12457.63. Vat 18%. Vat Amount 2242.37', '30 DAYS', '14700', '30', '*148*15087', 1),
(47, 'VODA_PP', 'Tsh.20000=2500units', 'Tsh.20000=2500units', 'Tsh.20000=Uniti 2500', 'EN Pindua Tsh20000. Cost 19600. Excl 16610.17. Vat 18%. Vat Amount 2989.83', '30 DAYS', '19600', '30', '*148*20087', 2),
(48, 'VODA_BNDL', 'Tsh.500=70MB', 'Tsh.500=70MB', 'Tsh.500=MB70', 'EN Internet Tsh500. Cost 490. Excl 415.25. Vat 18%. Vat Amount 74.75', 'DAILY', '490', '1', '*147*505', 1),
(49, 'VODA_BNDL', 'Tsh.1000=200MB', 'Tsh.1000=200MB', 'Tsh.1000=MB200', 'EN Internet Tsh1000. Cost 980. Excl 830.51. Vat 18%. Vat Amount 149.49', 'DAILY', '980', '1', '*147*1005', 2),
(50, 'VODA_BNDL', 'Tsh.2000=1GB', 'Tsh.2000=1GB', 'Tsh.2000=GB1', 'EN Internet Tsh2000. Cost 1960. Excl 1661.02. Vat 18%. Vat Amount 298.98', 'DAILY', '1960', '1', '*147*2505', 3),
(51, 'VODA_BNDL', 'Tsh.1000=1.5GB 2hours', 'Tsh.1000=1.5GB 2hours', 'Tsh.1000=GB1.5 Saa2', 'EN Internet 2hrs Tsh1000. Cost 1000. Excl 847.46. Vat 18%. Vat Amount 152.54', 'DAILY', '1000', '0', '*148*1038', 4),
(52, 'VODA_BNDL', 'Tsh.5000=2GB', 'Tsh.5000=2GB', 'Tsh.5000=GB2', 'EN Internet Tsh5000. Cost 5000. Excl 4237.29. Vat 18%. Vat Amount 762.71', '2DAYS', '5000', '2', '*148*5017', 1),
(53, 'VODA_BNDL', 'Tsh.3000=500MB', 'Tsh.3000=500MB', 'Tsh.3000=MB500', 'EN Internet Tsh3000 . Cost 2940. Excl 2491.53. Vat 18%. Vat Amount 448.47', 'WEEKLY', '2940', '7', '*147*2007', 1),
(54, 'VODA_BNDL', 'Tsh.5000=1GB', 'Tsh.5000=1GB', 'Tsh.5000=GB1', 'EN Internet Tsh5000. Cost 4900. Excl 4152.54. Vat 18%. Vat Amount 747.46', 'WEEKLY', '4900', '7', '*147*4005', 2),
(55, 'VODA_BNDL', 'Tsh.10000=2GB', 'Tsh.10000=2GB', 'Tsh.10000=GB2', 'EN Internet Tsh10000. Cost 10000. Excl 8474.58. Vat 18%. Vat Amount 1525.42', 'WEEKLY', '10000', '7', '*147*8007', 3),
(56, 'VODA_BNDL', 'Tsh.15000=10GB', 'Tsh.15000=10GB', 'Tsh.15000=GB10', 'EN Internet Tsh15000. Cost 15000. Excl 12711.86. Vat 18%. Vat Amount 2288.14', 'WEEKLY', '15000', '7', '*147*15001', 4),
(57, 'VODA_BNDL', 'Tsh.5000=500MB', 'Tsh.5000=500MB', 'Tsh.5000=MB500', 'EN Internet Tsh5000. Cost 4900. Excl 4152.54. Vat 18%. Vat Amount 747.46', 'MONTHLY', '4900', '30', '*147*5005', 1),
(58, 'VODA_BNDL', 'Tsh.15000=2GB', 'Tsh.15000=2GB', 'Tsh.15000=GB2', 'EN Internet Tsh15000. Cost 14700. Excl 12457.63. Vat 18%. Vat Amount 2242.37', 'MONTHLY', '14700', '30', '*147*15005', 2),
(59, 'VODA_BNDL', 'Tsh.35000=10GB', 'Tsh.35000=10GB', 'Tsh.35000=GB10', 'EN Internet Tsh35000. Cost 34300. Excl 29067.80. Vat 18%. Vat Amount 5232.20', 'MONTHLY', '34300', '30', '*147*35005', 3),
(60, 'VODA_BNDL', 'Tsh.50000=20GB', 'Tsh.50000=20GB', 'Tsh.50000=GB20', 'EN Internet Tsh50000. Cost 49000. Excl 41525.42. Vat 18%. Vat Amount 7474.58', 'MONTHLY', '49000', '30', '*147*40005', 4),
(61, 'VODA_BNDL', 'Tsh.95000=50GB', 'Tsh.95000=50GB', 'Tsh.95000=GB50', 'EN Internet Tsh95000. Cost 93100. Excl 78898.30. Vat 18%. Vat Amount 14201.70', 'MONTHLY', '93100', '30', '*147*80005', 5),
(62, 'DAILY BUNDLES', 'Tsh.499=7mins,40sms,1MB', 'Tsh.499=7mins,40sms,1MB', 'Tsh.499=dk7,sms40,MB1', 'EN Cheka Tsh499. Cost 489. Excl 414.41. Vat 18%. Vat Amount 74.59', 'All Networks', '489', '1', '*147*499', 1),
(63, 'DAILY BUNDLES', 'Tsh.649=12min,100sms,3MB', 'Tsh.649=12min,100sms,3MB', 'Tsh.649=dk12,sms100,MB3', 'EN Cheka Tsh649. Cost 636. Excl 538.98. Vat 18%. Vat Amount 97.02', 'All Networks', '636', '1', '*147*649', 2),
(64, 'DAILY BUNDLES', 'Tsh.999=22min,unlimited sms,10MB', 'Tsh.999=22min,unlimited sms,10MB', 'Tsh.999=dk22+5mitandao yote,MB10', 'EN Cheka Tsh999. Cost 979. Excl 829.66. Vat 18%. Vat Amount 149.34', 'All Networks', '979', '1', '*147*999', 3),
(65, 'WEEKLY BUNDLES', 'Tsh.1000=Unlimited SMS/7days', 'Tsh.1000=Unlimited SMS/7days', 'Tsh.1000=Sms bila kikomo/Siku7', 'EN Cheka SMS Tsh1000. Cost 980. Excl 830.51. Vat 18%. Vat Amount 149.49', 'All Networks', '980', '7', '*147*540', 1),
(66, 'WEEKLY BUNDLES', 'Tsh.1999=25min,200sms,20MB', 'Tsh.1999=25min,200sms,20MB', 'Tsh.1999=25min,200sms,20MB', 'EN Cheka Tsh1999. Cost 1959. Excl 1660.17. Vat 18%. Vat Amount 298.83', 'All Networks', '1959', '7', '*147*1999', 2),
(67, 'WEEKLY BUNDLES', 'Tsh.4999=73min,500sms,50MB', 'Tsh.4999=73min,500sms,50MB', 'Tsh.4999=73min,500sms,50MB', 'EN Cheka Tsh4999. Cost 4899. Excl 4151.69. Vat 18%. Vat Amount 747.31', 'All Networks', '4899', '7', '*147*4999', 3),
(68, 'WEEKLY BUNDLES', 'Tsh.9999=183min,1000sms,80MB', 'Tsh.9999=183min,1000sms,80MB', 'Tsh.9999=183min,1000sms,80MB', 'EN Cheka Tsh9999. Cost 9799. Excl 8304.24. Vat 18%. Vat Amount 1494.76', 'All Networks', '9799', '7', '*147*9999', 4),
(69, 'MONTHLY', 'Tsh.2000=Unlimited sms/30days', 'Tsh.2000=Unlimited sms/30days', 'Tsh.2000=Sms bila kikomo/Siku30', 'EN Cheka SMS Tsh2000. Cost 1960. Excl 1661.02. Vat 18%. Vat Amount 298.98', 'All Networks', '1960', '30', '*147*1040', 1),
(70, 'MONTHLY', 'Tsh.9999=135min,1000sms,100MB', 'Tsh.9999=135min,1000sms,100MB', 'Tsh.9999=dk135,sms1000,MB100', 'EN Cheka Tsh9999. Cost 9799. Excl 8304.24. Vat 18%. Vat Amount 1494.76', 'All Networks', '9799', '30', '*147*999920', 2),
(71, 'MONTHLY', 'Tsh.14999=210min,1500sms,250MB', 'Tsh.14999=210min,1500sms,250MB', 'Tsh.14999=dk210,sms1500,MB250', 'EN Cheka Tsh14999. Cost 14699. Excl 12456.78. Vat 18%. Vat Amount 2242.22', 'All Networks', '14699', '30', '*147*14999', 3),
(72, 'MONTHLY', 'Tsh.19999=340min,2000sms,250MB', 'Tsh.19999=340min,2000sms,250MB', 'Tsh.19999=dk340,sms2000,MB250', 'EN Cheka Tsh19999. Cost 19599. Excl 16609.32. Vat 18%. Vat Amount 2989.68', 'All Networks', '19599', '30', '*147*19999', 4),
(73, 'MONTHLY', '50000=1000allnetmin,7000sms,7GB', '50000=1000allnetmin,7000sms,7GB', '50000=dk1000Mitandaoyote,SMS7000,GB7', 'EN RED Tsh50000. Cost 47000. Excl 39830.51. Vat 18%. Vat Amount 7169.49', 'All Networks', '47000', '30', '*147*50027', 5),
(74, 'DAILY BUNDLES', 'Tsh.500=14min,2allnet,40sms,1MB', 'Tsh.500=14min,2allnet,40sms,1MB', '500=dk14,2mitandao yote,sms40,MB1', 'EN Cheka Tsh500. Cost 490. Excl 415.25. Vat 18%. Vat Amount 74.75', 'Vodacom-Vodacom', '490', '1', '*147*500', 1),
(75, 'DAILY BUNDLES', 'Tsh.600=30min,2allnet', 'Tsh.600=30min,2allnet', 'Tsh.600=dk30,dk2 mitandao yote', 'EN Cheka Tsh 600. Cost 588. Excl 498.31. Vat 18%. Vat Amount 89.69', 'Vodacom-Vodacom', '588', '1', '*147*600', 2),
(76, 'DAILY BUNDLES', 'Tsh.1000=65min,5allnet,200SMS', 'Tsh.1000=65min,5allnet,200SMS', 'Tsh1000=dk65,5mitandao yote,sms200,MB10', 'EN Cheka Tsh1000. Cost 980. Excl 830.51. Vat 18%. Vat Amount 149.49', 'Vodacom-Vodacom', '980', '1', '*147*1000', 3),
(77, 'WEEKLY BUNDLES', 'Tsh.2000=50min,5allnet,200sms,20MB', 'Tsh.2000=50min,5allnet,200sms,20MB', '2000=dk50+5mitandao yote,SMS200,MB20', 'EN Cheka Tsh2000. Cost 1960. Excl 1661.02. Vat 18%. Vat Amount 298.98', 'Vodacom-Vodacom', '1960', '7', '*147*2000', 1),
(78, 'WEEKLY BUNDLES', 'Tsh.2800=75min,5allnet,300sms,30MB', 'Tsh.2800=75min,5allnet,300sms,30MB', '2800=dk75+5mitandao yote,sms300,MB30', 'EN Cheka Tsh2800. Cost 2744. Excl 2325.42. Vat 18%. Vat Amount 418.58', 'Vodacom-Vodacom', '2744', '7', '*147*2800', 2),
(79, 'WEEKLY BUNDLES', 'Tsh.4000=130min,5allnet,500sms,50MB', 'Tsh.4000=130min,5allnet,500sms,50MB', '4000=dk130,5mitandao yote,sms500,MB50', 'EN Cheka Tsh4000. Cost 3920. Excl 3322.03. Vat 18%. Vat Amount 597.97', 'Vodacom-Vodacom', '3920', '7', '*147*4000', 3),
(80, 'MONTHLY BUNDLES', 'Tsh.10000=300min,20allnet,1000sms,20MB', 'Tsh.10000=300min,20allnet,1000sms,20MB', '10000=dk300,20mitandaoyote,sms1000,MB20', 'EN Cheka Tsh10000. Cost 9800. Excl 8305.08. Vat 18%. Vat Amount 1494.92', 'Vodacom-Vodacom', '9800', '30', '*147*10000123', 1),
(81, 'MONTHLY BUNDLES', 'Tsh.15000=450min,20allnet,250MB', 'Tsh.15000=450min,20allnet,250MB', '15000=dk450,20mitandao yote,MB250', 'EN Cheka Tsh15000. Cost 14700. Excl 12457.63. Vat 18%. Vat Amount 2242.37', 'Vodacom-Vodacom', '14700', '30', '*147*15000', 2),
(82, 'MONTHLY BUNDLES', 'Tsh.20000=750min,20allnet,250MB', 'Tsh.20000=750min,20allnet,250MB', '20000=dk750,20mitandao yote,MB250', 'EN Cheka Tsh20000. Cost 19600. Excl 16610.17. Vat 18%. Vat Amount 2989.83', 'Vodacom-Vodacom', '19600', '30', '*147*20000', 3),
(83, 'VODA_RED', '600Allnet Mins,3000SMS,3GB/30days', '600Allnet Mins,3000SMS,3GB/30days', 'dk600Mitandao yote,SMS3000,GB3/Siku 30', 'EN RED Tsh30000. Cost 28000. Excl 23728.81. Vat 18%. Vat Amount 4271.19', 'SILVER=TSH.30,000', '28000', '30', '*148*30027', 1),
(84, 'VODA_RED', '300Allnet Mins,300SMS, 5GB/30days', '300Allnet Mins,300SMS, 5GB/30days', 'dk300Mitandao yote,SMS300,GB5/Siku 30', 'EN RED Tsh30000. Cost 28000. Excl 23728.81. Vat 18%. Vat Amount 4271.19', 'SILVER=TSH.30,000', '28000', '30', '*148*30029', 2),
(85, 'VODA_RED', '1000Allnet Mins,7000SMS, 7GB/30days', '1000Allnet Mins,7000SMS, 7GB/30days', 'dk1000Mitandao yote,SMS7000, GB7/siku 30', 'EN RED Tsh50000. Cost 47000. Excl 39830.51. Vat 18%. Vat Amount 7169.49', 'GOLD=TSH.50,000', '47000', '30', '*148*50027', 1),
(86, 'VODA_RED', '300Allnet Mins,300SMS, 15GB/30days', '300Allnet Mins,300SMS, 15GB/30days', 'dk300Mitandao yote,SMS300, GB15/siku 30', 'EN RED Tsh50000. Cost 47000. Excl 39830.51. Vat 18%. Vat Amount 7169.49', 'GOLD=TSH.50,000', '47000', '30', '*148*50029', 2),
(87, 'VODA_RED', '2500Mins,30 Intl Mins,15000SMS, 3GB/30days', '2500Mins,30 Intl Mins,15000SMS, 3GB/30days', 'dakika2500,30 kimataifa,SMS 15000, GB3/siku 30', 'EN RED Tsh95000. Cost 90000. Excl 76271.19. Vat 18%. Vat Amount 13728.81', 'PLATINUM=TSH.95,000', '90000', '30', '*148*95027', 1),
(88, 'VODA_RED', '600Minutes,10 Intl Mins, 600SMS, 30GB/30days', '600Minutes,10 Intl Mins, 600SMS, 30GB/30days', 'dakika600,10 kimataifa, SMS 600,GB30/siku 30', 'EN RED Tsh95000. Cost 90000. Excl 76271.19. Vat 18%. Vat Amount 13728.81', 'PLATINUM=TSH.95,000', '90000', '30', '*148*95029', 2),
(89, 'VODA_PP', 'Tsh.1000=100units', 'Tsh.1000=100units', 'Tsh.1000=Uniti100', 'EN Pindua Tsh1000. Cost 980. Excl 830.51. Vat 18%. Vat Amount 149.49', '24 HOURS', '980', '1', '*148*1087', 1),
(90, 'VODA_PP', 'Tsh.2000=260units', 'Tsh.2000=260units', 'Tsh.2000=Uniti260', 'EN Pindua Tsh2000. Cost 1960. Excl 1661.02. Vat 18%. Vat Amount 298.98', '24 HOURS', '1960', '1', '*148*2087', 2),
(91, 'VODA_PP', 'Tsh.5000=500units', 'Tsh.5000=500units', 'Tsh.5000=Uniti 500', 'EN Pindua Tsh5000. Cost 4900. Excl 4152.54. Vat 18%. Vat Amount 747.46', '7 DAYS', '4900', '7', '*148*5087', 1),
(92, 'VODA_PP', 'Tsh.10000=1200units', 'Tsh.10000=1200units', 'Tsh.10000=Uniti 1200', 'EN Pindua Tsh10000. Cost 9800. Excl 8305.08. Vat 18%. Vat Amount 1494.92', '7 DAYS', '9800', '7', '*148*10087', 2),
(93, 'VODA_PP', 'Tsh.15000=1800units', 'Tsh.15000=1800units', 'Tsh.15000=Uniti 1800', 'EN Pindua Tsh15000. Cost 14700. Excl 12457.63. Vat 18%. Vat Amount 2242.37', '30 DAYS', '14700', '30', '*148*15087', 1),
(94, 'VODA_PP', 'Tsh.20000=2500units', 'Tsh.20000=2500units', 'Tsh.20000=Uniti 2500', 'EN Pindua Tsh20000. Cost 19600. Excl 16610.17. Vat 18%. Vat Amount 2989.83', '30 DAYS', '19600', '30', '*148*20087', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menuitem`
--
ALTER TABLE `menuitem`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `menuitem`
--
ALTER TABLE `menuitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
