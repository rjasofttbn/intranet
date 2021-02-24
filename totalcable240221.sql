-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2021 at 02:08 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `totalcable`
--

-- --------------------------------------------------------

--
-- Table structure for table `archives`
--

CREATE TABLE `archives` (
  `id` int(15) NOT NULL,
  `package_customer_id` int(15) NOT NULL,
  `content` varchar(1000) COLLATE utf8_bin NOT NULL,
  `user_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `archives`
--

INSERT INTO `archives` (`id`, `package_customer_id`, `content`, `user_id`) VALUES
(1, 306, 'Card no: , Exp. date: , CVV Code: , Zip Code: 11554, Address: ', 9),
(2, 306, 'Card no: 11111111111, Exp. date: 01/21, CVV Code: 111, Zip Code: 111111, Address: NY', 9),
(3, 3488, 'Card no: , Exp. date: , CVV Code: , Zip Code: 10462, Address: ', 99);

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` int(111) NOT NULL,
  `name` varchar(111) NOT NULL,
  `package_customer_id` int(15) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`id`, `name`, `package_customer_id`, `created`, `user_id`) VALUES
(1, '1483442154.pdf', 9229, '2017-01-03 08:15:54', 9),
(2, '1483652793.pdf', 3079, '2017-01-05 18:46:33', 128),
(3, '1483653241.pdf', 3076, '2017-01-05 18:54:01', 128),
(4, '1483654563.pdf', 9971, '2017-01-05 19:16:03', 128),
(5, '1483685205.pdf', 9205, '2017-01-06 03:46:45', 9),
(6, '1483880600.pdf', 23, '2017-01-08 10:03:20', 128),
(7, '1483930511.pdf', 25, '2017-01-08 23:55:11', 128),
(10008, '1505067165.jpeg', 11532, '2017-09-10 15:12:45', 92),
(10009, '1505067203.jpeg', 1679, '2017-09-10 15:13:23', 92),
(10010, '1505131840.png', 2216, '2017-09-11 09:10:40', 92);

-- --------------------------------------------------------

--
-- Table structure for table `auto_recurrings`
--

CREATE TABLE `auto_recurrings` (
  `id` int(15) NOT NULL,
  `package_customer_id` int(15) NOT NULL,
  `amount` float NOT NULL,
  `status` varchar(31) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `backup_package_customers`
--

CREATE TABLE `backup_package_customers` (
  `id` int(15) NOT NULL DEFAULT '0',
  `issue_id` int(3) DEFAULT NULL,
  `service_type` char(20) DEFAULT NULL,
  `first_name` varchar(25) DEFAULT NULL,
  `middle_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `house_no` varchar(51) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `apartment` varchar(50) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zip` varchar(11) DEFAULT NULL,
  `home` varchar(20) DEFAULT NULL,
  `cell` varchar(20) DEFAULT NULL,
  `fax` varchar(17) DEFAULT NULL,
  `c_acc_no` int(15) DEFAULT NULL,
  `email` varchar(41) DEFAULT NULL,
  `mac` varchar(220) DEFAULT NULL,
  `system` varchar(200) DEFAULT NULL,
  `referred_name` varchar(111) DEFAULT NULL,
  `referred_phone` varchar(111) DEFAULT NULL,
  `deposit` float DEFAULT NULL,
  `monthly_bill` float DEFAULT NULL,
  `others` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `payment_type` varchar(20) DEFAULT NULL COMMENT 'card (debit/credit)',
  `money_order` varchar(20) DEFAULT NULL,
  `ch_signature` varchar(71) DEFAULT NULL COMMENT 'card holder signature',
  `id_card` varchar(20) DEFAULT NULL,
  `card_type` varchar(27) DEFAULT NULL,
  `repair_type` enum('old','new') DEFAULT NULL,
  `bank_name` varchar(31) DEFAULT NULL,
  `card_username` varchar(71) DEFAULT NULL,
  `card_check_no` varchar(31) DEFAULT NULL,
  `exp_date` varchar(11) DEFAULT NULL,
  `package_exp_date` date DEFAULT NULL,
  `cvv_code` varchar(17) DEFAULT NULL,
  `charge_amount` float DEFAULT NULL,
  `address_on_card` varchar(41) DEFAULT NULL,
  `same_address` varchar(1000) DEFAULT NULL,
  `equipment_router` varchar(11) DEFAULT NULL,
  `equipment_top_box` varchar(11) DEFAULT NULL,
  `equipment_hdmi` varchar(11) DEFAULT NULL,
  `equipment_wi_fi` varchar(11) DEFAULT NULL,
  `equipment_ethernet` varchar(11) DEFAULT NULL,
  `equipment_remote` varchar(11) DEFAULT NULL,
  `equipment_adapter` varchar(11) DEFAULT NULL,
  `warranty_hdmi_av` varchar(11) DEFAULT NULL,
  `warranty_adapter` varchar(11) DEFAULT NULL,
  `warranty_remote` varchar(11) DEFAULT NULL,
  `wire` varchar(20) DEFAULT NULL,
  `current_isp_speed` varchar(31) DEFAULT NULL,
  `current_service_provider` varchar(21) DEFAULT NULL,
  `install_method` varchar(15) DEFAULT NULL,
  `technician_name` varchar(11) DEFAULT NULL,
  `ethernet_wire` varchar(11) DEFAULT NULL,
  `shipment` int(1) DEFAULT '0',
  `driving_socialsecurity` varchar(50) DEFAULT NULL,
  `customer_utility` varchar(25) DEFAULT NULL,
  `cfirst_name` varchar(50) DEFAULT NULL,
  `clast_name` varchar(50) DEFAULT NULL,
  `czip` varchar(30) DEFAULT NULL,
  `shipment_equipment` varchar(200) DEFAULT NULL,
  `shipment_note` text,
  `remote_no` int(2) DEFAULT NULL,
  `attachment` varchar(50) DEFAULT NULL,
  `follow_up` varchar(10) DEFAULT '0',
  `follow_date` varchar(40) DEFAULT NULL,
  `c_signature` varchar(31) CHARACTER SET utf8 COLLATE utf8_estonian_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `ip` varchar(21) DEFAULT NULL,
  `status` enum('active','blocked','canceled','requested','done','ready','old_ready','scheduled','Request to cancel','Request to hold','Request to unhold','hold','unhold','Request to reconnection','post pone','done','rescheduled','reconnection','done by tech','done by admin') DEFAULT 'requested',
  `dealer` varchar(101) DEFAULT NULL,
  `psetting_id` int(11) DEFAULT '0',
  `custom_package_id` int(11) DEFAULT NULL,
  `user_id` int(15) DEFAULT '0',
  `created` date DEFAULT NULL,
  `technician_id` int(15) DEFAULT NULL,
  `from` varchar(21) DEFAULT NULL COMMENT 'from date for technician',
  `to` varchar(21) DEFAULT NULL COMMENT 'this fields for technician  to date',
  `schedule` varchar(31) DEFAULT NULL,
  `comments` varchar(551) DEFAULT NULL,
  `new_addr` text,
  `stbs` int(2) DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cancel_mac` varchar(51) DEFAULT NULL,
  `cancelled_date` varchar(21) DEFAULT NULL,
  `pickup_date` varchar(21) DEFAULT NULL,
  `unhold_date` varchar(21) DEFAULT NULL,
  `hold_date` varchar(21) DEFAULT NULL,
  `reconnect_date` varchar(21) DEFAULT NULL,
  `reactive_date` varchar(21) DEFAULT NULL,
  `schedule_date` varchar(31) DEFAULT NULL,
  `auto_r` enum('yes','no') DEFAULT NULL COMMENT 'auto recurring',
  `r_duration` char(3) DEFAULT NULL COMMENT 'auto recurring',
  `r_form` date DEFAULT NULL,
  `approved` int(1) DEFAULT '0',
  `ticket_generated` tinyint(4) DEFAULT '0',
  `printed` tinyint(4) DEFAULT '0',
  `invoice_no` varchar(200) DEFAULT NULL,
  `invoice_created` tinyint(4) DEFAULT '0',
  `ins_by` varchar(101) DEFAULT NULL,
  `tech_payment` tinyint(4) DEFAULT '0',
  `pc_id` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `backup_package_customers`
--

INSERT INTO `backup_package_customers` (`id`, `issue_id`, `service_type`, `first_name`, `middle_name`, `last_name`, `house_no`, `street`, `apartment`, `city`, `state`, `zip`, `home`, `cell`, `fax`, `c_acc_no`, `email`, `mac`, `system`, `referred_name`, `referred_phone`, `deposit`, `monthly_bill`, `others`, `total`, `payment_type`, `money_order`, `ch_signature`, `id_card`, `card_type`, `repair_type`, `bank_name`, `card_username`, `card_check_no`, `exp_date`, `package_exp_date`, `cvv_code`, `charge_amount`, `address_on_card`, `same_address`, `equipment_router`, `equipment_top_box`, `equipment_hdmi`, `equipment_wi_fi`, `equipment_ethernet`, `equipment_remote`, `equipment_adapter`, `warranty_hdmi_av`, `warranty_adapter`, `warranty_remote`, `wire`, `current_isp_speed`, `current_service_provider`, `install_method`, `technician_name`, `ethernet_wire`, `shipment`, `driving_socialsecurity`, `customer_utility`, `cfirst_name`, `clast_name`, `czip`, `shipment_equipment`, `shipment_note`, `remote_no`, `attachment`, `follow_up`, `follow_date`, `c_signature`, `role_id`, `ip`, `status`, `dealer`, `psetting_id`, `custom_package_id`, `user_id`, `created`, `technician_id`, `from`, `to`, `schedule`, `comments`, `new_addr`, `stbs`, `modified`, `cancel_mac`, `cancelled_date`, `pickup_date`, `unhold_date`, `hold_date`, `reconnect_date`, `reactive_date`, `schedule_date`, `auto_r`, `r_duration`, `r_form`, `approved`, `ticket_generated`, `printed`, `invoice_no`, `invoice_created`, `ins_by`, `tech_payment`, `pc_id`) VALUES
(0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'requested', NULL, 0, NULL, 0, '2017-04-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-20 17:16:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, ''),
(7, 34, '3 MONTHS', 'ABDUL', 'KARIM', 'JAHANGIR', '32 45', '69 ST', '2H', 'WOODSIDE', 'NY', '11377', '347-355-7268', '9176905584', '', 0, '', '["4A4606 "]', '["CMS1"]', '', '', NULL, NULL, NULL, NULL, '', '', '', '', '', 'old', '', '', '', '', '0000-00-00', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, '', '', '', '', '', 'OTHER', '', 1, '', '0', '0000-00-00', '', 0, '', 'done', '', 2, 0, 128, '2016-10-05', 0, '', '', NULL, 'DONE', '', 0, '2016-12-07 02:20:16', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', 'no', '', '0000-00-00', 1, 0, 0, '', 0, '', 0, ''),
(15, 35, '1 MONTH', 'MOHAMMED', 'DIN', 'ISLAM', '2063', 'ANTHONY', '1', 'BRONX', 'NY', '10457', '718-772-0859', '6465450171', '', 0, 'kislamd@ymail.com', '["F36823 "]', '["CMS1"]', 'DCC', '', NULL, NULL, NULL, NULL, '', '', '', '', '', 'old', '', '', '', '', '0000-00-00', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, '', '', '', '', '', '', '', 0, '', '0', '0000-00-00', '', 0, '', 'active', '', NULL, 37, 120, '2016-09-27', 0, '', '', NULL, '<div class="waffle-data-validation-cell-wrapper" style="height: 36px;">\r\n<div class="waffle-data-validation-content-left" style="vertical-align: middle; height: 36px;width:197px;"><span style="font-family:arial; font-size:100%">BILL PAID BOX EXPIRED</span></div>\r\n</div>\r\n', '', 0, '2016-09-14 09:35:14', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', 'no', '', '0000-00-00', 0, 0, 0, '', 0, '', 0, ''),
(52, 0, '6 MONTHS', 'ABDUL', 'KABIR', 'CHOWDHURY', '24 ST', 'HOWELL AVE', '', 'CENTEREACH', 'NY', '11720', '631-747-9779', '6314964058', '', 0, '', '8131EF 12001\nBD1368 14899', '', '', '', 0, 0, 0, 240, '', '', '', '', '', 'old', '', '', '', '', '0000-00-00', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, '', '', '', '', '', '', '', 0, '', '0', '0000-00-00', '', 0, '', 'done', '', 0, 0, 89, '2016-10-05', 0, '', '', NULL, '', '', 0, '2016-10-05 00:27:46', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', 'no', '', '0000-00-00', 1, 0, 0, '', 0, '', 0, ''),
(53, 0, '6 MONTHS', 'ABDUL', '', 'KADIR', '85 15', '152 ST', '', 'JAMAICA', 'NY', '11432', '347-264-3069', '7186581019', '', 0, '', '4A3FB7 11617\n\n4A45E0 11435\nBD13EE 14550', '', '', '', 0, 0, 0, 0, '', '', '', '', '', 'old', '', '', '', '', '0000-00-00', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, '', '', '', '', '', '', '', 0, '', '0', '0000-00-00', '', 0, '', 'active', '', 0, 0, 0, '2016-09-27', 0, '', '', NULL, '', '', 0, '0000-00-00 00:00:00', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', 'no', '', '0000-00-00', 0, 0, 0, '', 0, '', 0, ''),
(54, 0, '1 MONTH', 'ABDUL', '', 'KAIYUM', '35 63', '88TH STREET', '5O', 'JACKSON HEIGHTS', 'NY', '11372', '718-779-7502', '6467176151', '', 0, '', 'EBDAE6 8226', '', '', '', 0, 0, 0, 55, '', '', '', '', '', 'old', '', '', '', '', '0000-00-00', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, '', '', '', '', '', '', '', 0, '', '0', '0000-00-00', '', 0, '', 'active', '', 0, 0, 0, '2016-09-27', 0, '', '', NULL, '', '', 0, '0000-00-00 00:00:00', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', 'no', '', '0000-00-00', 0, 0, 0, '', 0, '', 0, ''),
(13494, NULL, NULL, 'SK MONIRUL', '', 'ALAM', '57 B', ' BARKING RD', '', 'LONDON ', 'LONDON ', 'E6 1PY', '', '7877452721', '', NULL, '', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '/', NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, 0, '', NULL, '', '', '', '', '', NULL, '', '0', '', NULL, NULL, NULL, 'requested', 'ZUBAYER/ MUKUL', NULL, NULL, 147, '2017-08-13', NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-08-13 12:45:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, ''),
(13514, NULL, NULL, 'SAYED', '', 'AHMMED', '', '', '', 'BROOKLYN', 'NY', '11208', '3477288962', '', '', NULL, '', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '/', NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, 0, '', NULL, '', '', '', '', '', NULL, '', '1 ', '08/28/2017', NULL, NULL, NULL, 'requested', '', NULL, NULL, 172, '2017-08-16', NULL, NULL, NULL, NULL, 'HE WILL CALL US LATER', NULL, NULL, '2017-08-16 22:20:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, ''),
(13528, NULL, NULL, 'SABBIR', '', 'SABBIR', '', '', '', 'ASTORIA', 'NY', '11103', '6464270221', '6464270221', '', NULL, '', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '/', NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, 0, '', NULL, '', '', '', '', '', NULL, '', '1 ', '08/20/2017', NULL, NULL, NULL, 'requested', '', 4, 0, 165, '2017-08-18', NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-09-09 14:59:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, ''),
(13539, NULL, NULL, 'SOLEMAN ', '', 'MIAH', '1155', ' WALTON AVE  ', '6A', ' BRONX', ' NY ', '10452', '6466100058', '', '', NULL, '', NULL, NULL, 'AAGL-ALAMGIR A MANNAN', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '/', NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, 0, '', NULL, '', '', '', '', '', NULL, '', '1 ', '08/19/2017', NULL, NULL, NULL, 'requested', '', NULL, NULL, 180, '2017-08-19', NULL, NULL, NULL, NULL, 'NEED TO CALL HIM , HE WILL TAKE OUR SERVICE , 200% SURE ', NULL, NULL, '2017-08-19 16:04:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, ''),
(13695, NULL, NULL, 'delete', 'delete1', 'delete2', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '/', NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, 0, '', NULL, '', '', '', '', '', NULL, '', '0', '', NULL, NULL, NULL, 'requested', '', NULL, NULL, 195, '2017-11-09', NULL, NULL, NULL, NULL, '', NULL, NULL, '2017-11-09 10:23:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, '127.0.1.1 192.168.50.125 2017-11-09 08:24:17am Faruk');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `_id` tinyint(11) NOT NULL,
  `name` varchar(11111) NOT NULL,
  `description` varchar(111) NOT NULL,
  `active` tinyint(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`_id`, `name`, `description`, `active`) VALUES
(2, 'old', 'asd', 0),
(3, 'present', 'adas', 1),
(4, 'To All', 'To All Subscriber', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(3) NOT NULL,
  `user_id` int(15) NOT NULL,
  `pc_id` varchar(255) NOT NULL,
  `name` varchar(155) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `user_id`, `pc_id`, `name`, `created`, `modified`) VALUES
(1, 211, '', 'Dhaka', '2018-01-03 01:19:58', '2018-01-03'),
(2, 211, '', 'Rajshahi', '2018-01-04 00:27:58', '2018-01-04');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(15) NOT NULL,
  `package_customer_id` int(15) NOT NULL,
  `content` varchar(351) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `pc_id` varchar(151) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `package_customer_id`, `content`, `created`, `modified`, `user_id`, `pc_id`) VALUES
(1, 0, 'this is for testing', '2016-04-11 11:52:58', '0000-00-00', 0, ''),
(2, 9237, 'this is for testing', '2016-04-11 12:06:15', '0000-00-00', 2, ''),
(3, 9230, 'ready to install', '2016-04-11 12:07:50', '0000-00-00', 0, ''),
(4, 0, '', '2016-04-15 04:57:03', '0000-00-00', 0, ''),
(2708, 4802, 'werwer', '2018-07-06 21:10:38', '2018-07-07', 83, ''),
(2709, 4802, 'done by manager......', '2018-07-06 21:14:17', '2018-07-07', 83, ''),
(2710, 7271, '', '2018-08-08 04:31:51', '2018-08-08', 83, '');

-- --------------------------------------------------------

--
-- Table structure for table `contactuses`
--

CREATE TABLE `contactuses` (
  `id` int(11) NOT NULL,
  `name` varchar(111) NOT NULL,
  `phone_number` varchar(13) NOT NULL,
  `email` varchar(121) NOT NULL,
  `message` varchar(651) NOT NULL,
  `status` enum('checked','not checked') NOT NULL DEFAULT 'not checked',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(41) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(121) NOT NULL,
  `sex` varchar(5) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(121) NOT NULL,
  `phone` varchar(20) NOT NULL COMMENT 'phone/cell',
  `email_content` varchar(1111) NOT NULL,
  `service_type` enum('new','repair','cancel','others') NOT NULL,
  `city` varchar(51) NOT NULL,
  `state` varchar(51) NOT NULL,
  `home_business` varchar(111) NOT NULL,
  `internet_provider` varchar(1000) NOT NULL,
  `internet_speed` varchar(111) NOT NULL,
  `information_source` varchar(1000) NOT NULL,
  `other_source` varchar(1000) DEFAULT NULL,
  `reference_name` varchar(111) DEFAULT NULL,
  `reference_no` varchar(20) DEFAULT NULL,
  `sale_status` varchar(11) NOT NULL,
  `zip` int(11) NOT NULL,
  `cell` varchar(13) NOT NULL,
  `note` text NOT NULL,
  `submitted_by` varchar(111) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` enum('not checked','checked') NOT NULL DEFAULT 'not checked',
  `fax` int(10) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_packages`
--

CREATE TABLE `custom_packages` (
  `id` int(11) NOT NULL,
  `duration` varchar(111) NOT NULL,
  `charge` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `custom_packages`
--

INSERT INTO `custom_packages` (`id`, `duration`, `charge`) VALUES
(1, '3', 90),
(2, '3', 90),
(3, '1', 30),
(4, '6', 240),
(5, '6', 300),
(20067, '12', 300),
(20068, '12', 240),
(20069, '12', 360);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `user_id` int(15) NOT NULL,
  `name` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `user_id`, `name`, `created`, `modified`) VALUES
(1, 2, 'Installation', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2, 'Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 2, 'Manager', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 2, 'Quality Assurance', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 2, 'Account ', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(3) NOT NULL,
  `user_id` int(15) NOT NULL,
  `pc_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `user_id`, `pc_id`, `name`, `created`, `modified`) VALUES
(1, 154, 'gjhgj', 'Executive', '2017-12-28 18:00:00', '2017-12-30'),
(2, 0, '', 'jhk', '2017-12-30 01:37:58', '2017-12-30'),
(3, 0, '', 'sdf', '2017-12-30 02:23:56', '2017-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `emps`
--

CREATE TABLE `emps` (
  `id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `staff_id` varchar(7) NOT NULL,
  `city_id` int(11) NOT NULL,
  `department_id` int(15) NOT NULL,
  `designation_id` int(15) NOT NULL,
  `ref_city_id` int(7) NOT NULL,
  `nid` varchar(21) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `mother_name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `present_address` varchar(351) NOT NULL,
  `permanent_address` varchar(351) NOT NULL,
  `marital_status` varchar(41) NOT NULL,
  `date_of_join` date NOT NULL,
  `ac_no` varchar(11) NOT NULL,
  `work_location` varchar(51) NOT NULL,
  `payment_mode` varchar(31) NOT NULL,
  `cheque_no` varchar(31) NOT NULL,
  `cell_no` varchar(12) NOT NULL,
  `b_group` varchar(3) NOT NULL,
  `ref_name` varchar(255) NOT NULL,
  `ref_address` varchar(255) DEFAULT NULL,
  `ref_cell` varchar(12) DEFAULT NULL,
  `ref_alternate_phone` varchar(12) DEFAULT NULL,
  `alternate_phone` varchar(12) DEFAULT NULL,
  `ref_relationship` varchar(51) DEFAULT NULL,
  `ref_zip_code` int(7) NOT NULL,
  `zip_code` varchar(7) NOT NULL,
  `sick` tinyint(2) NOT NULL,
  `casual` tinyint(2) NOT NULL,
  `earn_leave` tinyint(2) NOT NULL,
  `r_leave` int(2) NOT NULL COMMENT 'Remaining Leave',
  `pc_id` varchar(151) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emps`
--

INSERT INTO `emps` (`id`, `user_id`, `staff_id`, `city_id`, `department_id`, `designation_id`, `ref_city_id`, `nid`, `father_name`, `mother_name`, `dob`, `present_address`, `permanent_address`, `marital_status`, `date_of_join`, `ac_no`, `work_location`, `payment_mode`, `cheque_no`, `cell_no`, `b_group`, `ref_name`, `ref_address`, `ref_cell`, `ref_alternate_phone`, `alternate_phone`, `ref_relationship`, `ref_zip_code`, `zip_code`, `sick`, `casual`, `earn_leave`, `r_leave`, `pc_id`, `created`, `modified`) VALUES
(1, 211, '5241', 0, 1, 1, 0, '666666666666666666666', 'komol', 'monira', '2018-01-09', 'Khulana', 'Comilla', 'married', '2010-01-01', '55555555555', 'tbn24', '', '', '6465161', 'ab-', 'Md. Ali ahamed', 'Natur', '058754221', '859632', '8888888888', 'Brother', 8526, '9632', 9, 9, 9, 11, '192.168.50.241 Developer 2017-12-30 09:14:45am EMP', '2017-12-29 21:14:45', '2018-08-30'),
(2, 122, '01245', 0, 5, 2, 0, '', 'Fahim montansir', 'Anowara', '1965-01-01', 'Shylhet', 'Barishal1', '', '0000-00-00', '', '', '', '', '978464', 'a+', 'Md. Ali1011 azahar', '441', '4654651', NULL, '', 'Uncle1', 0, '', 4, 3, 2, 0, '192.168.50.241 Developer 2018-01-01 02:48:37am FPC', '2017-12-31 14:48:37', '2018-08-25'),
(3, 125, '7777777', 1, 5, 3, 1, '6456456', 'Robin', 'Rekha', '1987-01-11', 'Comilla', 'Dhaka', 'Married', '2001-01-01', '45554444444', 'Total IT Solution', '', '', '000000001', 'AB+', 'Md. Amin Moha', 'Chittagong', '85214711', '111111111111', '147852', 'Uncle', 1234, '1236', 0, 0, 0, 0, '192.168.50.241 Developer 2018-01-01 04:34:49am EMP', '2017-12-31 16:34:49', '2018-01-04'),
(4, 117, '5555555', 2, 1, 1, 1, '145222222', 'Robin', 'Rekha', '1965-01-01', '453', 'Barishal', 'Single', '2001-01-01', '45554444444', 'TBN24', 'Cheque', '85214jj', '66666666aaaa', 'B-', 'Md. Ali012 azahar', '441', '4654651', '111111111111', '999999999999', 'Uncle', 1236, '1236', 0, 0, 0, 0, '192.168.50.241 Developer 2018-01-04 08:03:01am EMP', '2018-01-03 20:03:01', '2018-01-04'),
(5, 199, '5245', 2, 1, 2, 1, '6548798723123', 'Amir hossain', 'Omita', '2001-01-01', 'Dhaka', 'Comilla', 'Married', '2018-05-01', '85963214', 'TBN24', 'Cheque', '526314', '018524786', 'AB+', 'A', 'D', '0182654789', '018526344', '0178965432', 'Brother', 8562, '2541', 10, 10, 3, 20, '192.168.50.196 Developer 2018-08-20 02:50:54am Md. Ayub azahar', '2018-08-19 14:50:54', '2018-08-26');

-- --------------------------------------------------------

--
-- Table structure for table `installations`
--

CREATE TABLE `installations` (
  `id` int(15) NOT NULL,
  `package_customer_id` int(15) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'as technician',
  `assign_by` int(15) NOT NULL,
  `schedule_date` varchar(31) NOT NULL,
  `date` date NOT NULL,
  `from` varchar(31) NOT NULL,
  `to` varchar(31) NOT NULL,
  `status` enum('active','blocked','canceled','requested','done','ready','old_ready','scheduled','Request to cancel','Request to hold','Request to unhold','hold','unhold','Request to reconnection','post pone','done','rescheduled','reconnection','done by tech','done by admin') NOT NULL,
  `instruction_tech` text NOT NULL,
  `c_inform` char(15) NOT NULL COMMENT 'Customer informed',
  `tech_mac` varchar(300) NOT NULL COMMENT 'Tech will give mac information',
  `tech_payment` varchar(300) NOT NULL COMMENT 'Technicians will write customer payment information ',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created` date NOT NULL,
  `pc_id` varchar(151) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `installations`
--

INSERT INTO `installations` (`id`, `package_customer_id`, `user_id`, `assign_by`, `schedule_date`, `date`, `from`, `to`, `status`, `instruction_tech`, `c_inform`, `tech_mac`, `tech_payment`, `modified`, `created`, `pc_id`) VALUES
(7, 9310, 114, 9, '07/12/2016 12:00 am to 2:00pm', '0000-00-00', '00:00:00', '00:00:00', 'post pone', '', '', '', '', '2016-10-04 17:29:13', '2016-07-11', ''),
(8, 9251, 114, 9, '07/13/2016 12:00 am to 2:00pm', '0000-00-00', '00:00:00', '00:00:00', 'rescheduled', '', '', '', '', '2016-10-04 17:30:12', '2016-07-11', ''),
(9, 9251, 121, 9, '07/11/2016 testing ', '0000-00-00', '00:00:00', '00:00:00', 'canceled', '', '', '', '', '2016-08-19 01:29:58', '2016-07-11', ''),
(2600, 4848, 173, 83, '', '2018-07-11', '9:23:45 AM', '9:23:45 PM', 'rescheduled', 'reschedule test....', 'VM', '', '', '2018-07-06 05:42:49', '2018-07-06', ''),
(2601, 4848, 173, 83, '', '2018-07-31', '9:44:45 AM', '9:44:45 PM', 'rescheduled', 'done  this task', 'Yes', '', '', '2018-07-06 05:45:14', '2018-07-06', ''),
(2602, 4802, 173, 83, '', '2018-07-15', '12:20:15 AM', '12:20:15 PM', 'rescheduled', 'Test action.....', 'VM', '', '', '2018-07-06 20:56:46', '2018-07-07', ''),
(2603, 4802, 173, 83, '', '2018-07-11', '1:10:30 AM', '1:10:30 PM', 'rescheduled', 'werwer', 'VM', '', '', '2018-07-06 21:10:38', '2018-07-07', '');

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE `issues` (
  `id` int(20) NOT NULL,
  `user_id` int(15) NOT NULL,
  `name` text NOT NULL,
  `modified` datetime NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`id`, `user_id`, `name`, `modified`, `created`) VALUES
(0, 0, 'Payment', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1, 0, 'Installation', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 0, 'Complain', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 0, 'Tv problem ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 0, 'Specific channel problem ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 0, 'Remote problem ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 0, 'Router problem ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 0, 'Old box buffering', '2017-08-09 02:40:51', '0000-00-00 00:00:00'),
(8, 0, 'Phone Problem ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 0, 'Sales Query', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 0, 'Single play 1 Box ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 0, 'Single play 2 Box', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 0, 'Single play 3 box ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 0, '2nd Box', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 0, '3rd Box ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 0, '2nd & 3rd Box ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 0, '4th Box ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 0, 'Moving ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 0, 'Billing Problem ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 0, 'Wants to pay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 0, 'Service Cancel ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 0, 'Service Hold ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 0, 'Referral Issue ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 0, 'Security deposit issue', '2017-08-09 02:42:01', '0000-00-00 00:00:00'),
(24, 0, 'Service Unhold ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 0, 'Promotional package ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 0, 'Calling Card ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 0, 'Service Reconnect', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 0, 'Additional Box Cancel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 0, 'Additional Box Reconnect ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 0, 'Additional Box Hold ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 0, 'Additional Box Unhold', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 0, 'Box Activation ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 0, 'Service Interruption  ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 0, 'Developer Team', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 0, 'Other', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 0, 'Edit Customer Data', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 0, 'Box Replace', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 0, 'No signal', '2017-08-09 01:49:21', '0000-00-00 00:00:00'),
(103, 0, 'Wants to know', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 0, 'Card Info Taken', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 0, 'Due bill out bound', '2017-08-09 01:52:45', '0000-00-00 00:00:00'),
(106, 0, 'Current date problem', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 0, 'Back Date', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 0, 'Resolution problem', '2017-08-09 01:49:02', '0000-00-00 00:00:00'),
(109, 0, 'White screen cursor', '2017-08-09 01:48:53', '0000-00-00 00:00:00'),
(110, 0, 'Internet problem', '2017-08-09 01:48:40', '0000-00-00 00:00:00'),
(111, 0, 'Current Bill Out bound', '2017-09-08 09:53:08', '0000-00-00 00:00:00'),
(112, 0, 'Single play 1 box regular', '2017-08-09 01:48:06', '0000-00-00 00:00:00'),
(113, 0, 'Single play 2 box regular', '2017-08-09 01:47:58', '0000-00-00 00:00:00'),
(114, 0, 'Single play 3 box regular', '2017-08-09 01:47:46', '0000-00-00 00:00:00'),
(115, 0, 'Single play 4 box regular', '2017-08-09 01:47:32', '0000-00-00 00:00:00'),
(116, 0, 'Single play 1 box 3 month', '2017-08-09 01:54:31', '0000-00-00 00:00:00'),
(117, 0, 'Single play 2 box 3 month', '2017-08-09 01:46:51', '0000-00-00 00:00:00'),
(118, 0, 'Single play 3 box 3 month', '2017-08-09 01:46:30', '0000-00-00 00:00:00'),
(119, 0, 'Single play 4 box 3 month', '2017-08-09 01:46:18', '0000-00-00 00:00:00'),
(120, 0, 'Single play 1 box 6 month', '2017-08-09 01:46:02', '0000-00-00 00:00:00'),
(121, 0, 'Single play 2 box 6 month', '2017-08-09 01:45:32', '0000-00-00 00:00:00'),
(122, 0, 'Single play 3 box 6 month', '2017-08-09 01:45:18', '0000-00-00 00:00:00'),
(123, 0, 'Single play 4 box 6 month', '2017-08-09 01:44:59', '0000-00-00 00:00:00'),
(124, 0, 'Single play 1 box 1 year', '2017-08-09 01:44:36', '0000-00-00 00:00:00'),
(125, 0, 'Single play 2 box 1 year', '2017-08-09 01:44:05', '0000-00-00 00:00:00'),
(126, 0, 'Single play 3 box 1 year', '2017-08-09 01:43:50', '0000-00-00 00:00:00'),
(127, 0, 'Single play 4 box 1 year', '2017-08-09 01:43:30', '0000-00-00 00:00:00'),
(128, 0, 'Nabc 1 box 3 month', '2017-08-09 01:43:13', '0000-00-00 00:00:00'),
(129, 0, 'Nabc 2 box 3 month', '2017-08-09 01:42:55', '0000-00-00 00:00:00'),
(130, 0, 'Nabc 3 box 3 month', '2017-08-09 01:42:44', '0000-00-00 00:00:00'),
(131, 0, 'Nabc 1 box 6 month', '2017-08-09 01:42:19', '0000-00-00 00:00:00'),
(132, 0, 'Nabc 2 box 6 month', '2017-08-09 01:42:01', '0000-00-00 00:00:00'),
(133, 0, 'Nabc 3 box 6 month', '2017-08-09 01:41:50', '0000-00-00 00:00:00'),
(134, 0, 'Nabc 1 box 1 year', '2017-08-09 01:41:33', '0000-00-00 00:00:00'),
(135, 0, 'Nabc 2 box 1 year', '2017-08-09 01:41:20', '0000-00-00 00:00:00'),
(136, 0, 'Nabc 3 box 1 year', '2017-08-09 01:41:09', '0000-00-00 00:00:00'),
(137, 0, 'box expired', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 0, 'Loading Please Wait', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 0, 'Loading Portal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 0, 'Declined card out bound', '2017-08-09 01:52:36', '0000-00-00 00:00:00'),
(141, 0, 'You tube problem', '2017-08-09 01:40:49', '0000-00-00 00:00:00'),
(142, 0, 'Sound problem', '2017-08-09 01:40:07', '0000-00-00 00:00:00'),
(143, 0, 'Tbn 24 Problem', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 0, 'Star Jalsha problem', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 0, 'Tbn & Jalsha Problem', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 0, 'VOD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 0, 'Cancel From Dealer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 0, 'Call us later', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 0, 'Cancel from agent', '2017-08-09 03:34:17', '0000-00-00 00:00:00'),
(150, 0, 'Cancel From Hold', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 0, 'Check Send', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 0, 'Additional Box Installation', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 0, 'Money order online payment', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 0, 'Moving (Room change)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 0, 'Wire Problem', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 0, 'Charged By Autorized', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 0, 'HDMI Problem', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 0, 'Channel stuck/Channel Freadging', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 0, 'In progress & call us later out bound', '2017-08-09 01:52:29', '0000-00-00 00:00:00'),
(160, 0, 'Remote out bound', '2017-08-09 01:52:21', '0000-00-00 00:00:00'),
(161, 0, 'Schedule out bound', '2017-08-09 01:52:14', '0000-00-00 00:00:00'),
(162, 0, 'Special out bound', '2017-08-09 01:52:05', '0000-00-00 00:00:00'),
(163, 0, 'Sales query out bound', '2017-08-09 01:51:56', '0000-00-00 00:00:00'),
(164, 0, 'Qc out bound', '2017-08-09 01:51:49', '0000-00-00 00:00:00'),
(165, 0, 'New installation out bound', '2017-08-09 01:51:42', '0000-00-00 00:00:00'),
(166, 0, 'Replace box out bound', '2017-08-09 01:51:13', '0000-00-00 00:00:00'),
(167, 0, 'New service order cancel', '2017-08-09 01:39:49', '0000-00-00 00:00:00'),
(168, 0, '3rd & 4th Box', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 0, '4th & 5th Box', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 0, '5th Box', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 0, 'Dongle', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 0, 'Credit issue', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 0, 'Adapter', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 0, 'Mode Not supported', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 0, 'Box shipment out bound', '2017-08-09 01:51:05', '0000-00-00 00:00:00'),
(176, 0, 'Equipment shipment out bound', '2017-08-09 01:50:54', '0000-00-00 00:00:00'),
(177, 0, 'Recovery out bound', '2017-08-09 01:50:44', '0000-00-00 00:00:00'),
(178, 0, 'Service interruption follow up out bound', '2017-08-09 01:50:29', '0000-00-00 00:00:00'),
(179, 0, 'Channel Missing', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 0, 'Found Zero Recording', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 0, 'Cancel  From Due Bill', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 0, 'Charge back out bound', '2017-08-09 01:50:19', '0000-00-00 00:00:00'),
(183, 0, 'Bounced check out bound', '2017-08-09 01:50:11', '0000-00-00 00:00:00'),
(184, 0, 'Dialer problem outbound', '2017-08-09 01:54:06', '2017-05-08 16:36:16'),
(185, 0, 'Outbound', '2017-08-09 01:53:04', '2017-05-15 06:43:56'),
(186, 0, 'Zooming problem', '2017-08-09 01:39:36', '2017-05-19 17:02:22'),
(187, 0, 'Channel List Favourite', '2017-06-22 18:38:08', '2017-06-22 12:38:08'),
(188, 0, 'Special sales out bound', '2017-08-09 01:49:58', '2017-06-23 12:34:39'),
(189, 0, 'Package Migration', '2017-07-16 14:05:30', '2017-07-16 08:05:30'),
(190, 0, 'Money order send', '2017-08-09 01:39:27', '2017-07-29 10:44:36'),
(191, 0, 'Box Damaged', '2017-07-31 20:31:06', '2017-07-31 14:31:06'),
(192, 0, 'Moving by technician', '2017-08-09 01:39:11', '2017-08-05 07:24:36'),
(193, 0, 'Dvr problem in new box', '2017-08-09 01:38:23', '2017-08-05 09:01:54'),
(194, 0, 'PVR problem in old box', '2017-08-09 01:38:04', '2017-08-05 09:02:19'),
(195, 0, 'Box picked up technician', '2017-08-09 01:55:01', '2017-08-08 19:55:01'),
(196, 0, 'Box picked up dealer', '2017-08-09 01:55:11', '2017-08-08 19:55:11'),
(197, 0, 'Box picked up wood-side office', '2017-08-09 01:55:15', '2017-08-08 19:55:15'),
(198, 0, 'Box need to pick by tech', '2017-08-09 01:55:20', '2017-08-08 19:55:20'),
(199, 0, 'Box need to pick by dealer', '2017-08-09 01:55:25', '2017-08-08 19:55:25'),
(200, 0, 'Box need to pick by wood-side office', '2017-08-09 01:55:30', '2017-08-08 19:55:30'),
(201, 0, 'Dongle/ Wifi Extender Setup', '2017-08-09 02:19:36', '2017-08-08 20:19:36'),
(202, 0, 'Showing Advance Date', '2017-08-09 02:39:26', '2017-08-08 20:20:25'),
(203, 0, 'Box Not Getting Power', '2017-08-09 02:38:08', '2017-08-08 20:20:34'),
(204, 0, 'Promise To pay', '2017-08-09 02:37:44', '2017-08-08 20:20:53'),
(205, 0, 'Showing Reading Data', '2017-08-09 02:39:49', '2017-08-08 20:39:49'),
(206, 0, 'New Box Buffering', '2017-08-09 02:40:34', '2017-08-08 20:40:34'),
(207, 0, 'Authentication problem', '2017-08-09 02:42:24', '2017-08-08 20:42:24'),
(208, 0, 'Bill Paid Box Expired', '2017-08-09 13:08:00', '2017-08-09 07:08:00'),
(209, 0, 'Page Loading Error', '2017-08-09 13:09:43', '2017-08-09 07:09:43'),
(210, 0, 'Billing Query', '2017-08-09 13:13:18', '2017-08-09 07:13:18'),
(211, 0, 'Black Screen', '2017-09-24 13:48:53', '2017-08-09 07:22:06'),
(212, 0, 'Test Support inbound 2', '2017-08-09 13:22:12', '2017-08-09 07:22:12'),
(213, 0, 'Test Support inbound 3', '2017-08-09 13:22:20', '2017-08-09 07:22:20'),
(214, 0, 'Test Support Outbound 1', '2017-08-09 13:22:38', '2017-08-09 07:22:38'),
(215, 0, 'Test Support Outbound 2', '2017-08-09 13:22:43', '2017-08-09 07:22:43'),
(216, 0, 'Test Accounts Outbound 1', '2017-08-09 13:22:55', '2017-08-09 07:22:55'),
(217, 0, 'Test Accounts Outbound 2', '2017-08-09 13:23:00', '2017-08-09 07:23:00'),
(218, 0, 'Test Accounts Inbound 1', '2017-08-09 13:23:15', '2017-08-09 07:23:15'),
(219, 0, 'Test Accounts Inbound 2', '2017-08-09 13:23:19', '2017-08-09 07:23:19'),
(220, 0, 'Test Accounts Inbound 3', '2017-08-09 13:23:23', '2017-08-09 07:23:23'),
(221, 0, 'Already Address Change', '2017-08-19 08:12:47', '2017-08-19 02:12:47'),
(222, 0, 'Shipment Return Issue', '2017-08-19 08:27:56', '2017-08-19 02:27:56'),
(223, 0, 'Equipment shipment Return out bound', '2017-08-19 08:28:01', '2017-08-19 02:28:01'),
(224, 0, 'Box shipment Return out bound', '2017-08-19 08:28:06', '2017-08-19 02:28:06'),
(225, 0, 'Transfer to Senior', '2017-08-25 23:37:44', '2017-08-25 17:37:44'),
(226, 0, 'Transfer to Shift In Charge', '2017-08-25 23:38:10', '2017-08-25 17:38:10'),
(227, 0, 'Back To Channel List (Old Box)', '2017-09-08 09:43:31', '2017-09-08 03:43:31'),
(228, 0, 'Back To Channel List (New Box)', '2017-09-08 09:43:42', '2017-09-08 03:43:42'),
(229, 83, 'Moving (Others)', '2018-02-16 10:11:18', '2018-02-16 04:11:18');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(15) NOT NULL,
  `emp_id` int(15) NOT NULL COMMENT 'relation with emp table',
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `total` int(2) NOT NULL COMMENT 'total leave days',
  `nature_leave` enum('c/l','e/l','s/l','marital','maternity','parental') NOT NULL,
  `purpose` enum('family','personal') NOT NULL,
  `si_id` int(15) NOT NULL COMMENT 'that is user id',
  `si_approve_date` datetime DEFAULT NULL,
  `si_comment` text NOT NULL,
  `admin_id` int(15) NOT NULL COMMENT 'that is user id',
  `admin_approve_date` datetime DEFAULT NULL,
  `admin_comment` text NOT NULL,
  `canceled_by` varchar(151) NOT NULL,
  `canceled_date` date NOT NULL,
  `shift_name` varchar(71) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `comment` text NOT NULL,
  `status` enum('requested','si_approved','admin_approved','canceled') NOT NULL,
  `pc_id` varchar(151) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `emp_id`, `from_date`, `to_date`, `total`, `nature_leave`, `purpose`, `si_id`, `si_approve_date`, `si_comment`, `admin_id`, `admin_approve_date`, `admin_comment`, `canceled_by`, `canceled_date`, `shift_name`, `date`, `comment`, `status`, `pc_id`, `created`, `modified`) VALUES
(1, 1, '2018-08-25', '2018-08-26', 1, 'maternity', 'family', 199, '2018-08-30 00:00:00', 'ok.....', 199, '2018-08-30 00:00:00', 'oi', '', '0000-00-00', NULL, '2018-08-24', 'zsdsd serewr ewrwer', 'admin_approved', '192.168.50.196 Developer 2018-08-30 06:46:55am Md. Ayub azahar', '2018-08-24 03:02:00', '2018-08-30');

-- --------------------------------------------------------

--
-- Table structure for table `logistics_maintenances`
--

CREATE TABLE `logistics_maintenances` (
  `id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `product_id` int(15) NOT NULL,
  `requisition_date` date NOT NULL,
  `requisition_by` varchar(255) NOT NULL,
  `allocated_time` varchar(71) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `approved_by` varchar(255) NOT NULL,
  `received_condition` varchar(51) NOT NULL,
  `received_date` date NOT NULL,
  `receiver_name` varchar(255) NOT NULL,
  `product_receive_date` date NOT NULL,
  `hand_over_condition` varchar(71) NOT NULL,
  `hand_over_by` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logistics_maintenances`
--

INSERT INTO `logistics_maintenances` (`id`, `user_id`, `product_id`, `requisition_date`, `requisition_by`, `allocated_time`, `from_date`, `to_date`, `approved_by`, `received_condition`, `received_date`, `receiver_name`, `product_receive_date`, `hand_over_condition`, `hand_over_by`, `created`, `modified`) VALUES
(2, 195, 2, '2017-12-13', 'aaa', '', '2017-12-25', '2017-12-26', 'ff', 'good', '0000-00-00', 'anil', '0000-00-00', 'no', 'anower', '2017-12-11 02:31:41', '2017-12-11'),
(3, 195, 2, '2017-12-13', 'aaa', '', '2017-12-25', '2017-12-26', 'ff', 'good', '2017-12-07', 'anil', '2017-12-31', 'no', 'anower', '2017-12-11 02:33:40', '2017-12-11'),
(4, 195, 2, '2017-12-07', 'Shaif', '', '2017-12-01', '2017-12-08', 'aww', 'empty', '2017-12-21', 'de', '1969-12-31', 'good', 'agg', '2017-12-11 15:02:34', '2017-12-11'),
(5, 195, 4, '2017-12-01', 'Shaif', '', '2017-12-02', '2017-12-03', 'Somun71', 'damaged', '2017-12-04', 'Shaifs', '2017-12-05', 'repaired', 'Somun52', '2017-12-11 14:32:57', '2017-12-11'),
(6, 195, 2, '2017-12-29', 'KK', '', '2017-12-01', '2017-12-31', 'somun', 'repaired', '2017-12-21', 'Anis', '2017-12-27', 'damaged', 'Alif', '2017-12-11 04:01:41', '2017-12-11'),
(7, 209, 1, '2017-12-08', 'Ashirf', '', '2017-12-08', '2017-12-12', 'Mohoshin', 'good', '2017-12-13', 'Mohoshin', '2017-12-13', 'good', 'Ashirf', '2017-12-12 13:50:43', '2017-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(51) NOT NULL,
  `user_id` int(15) NOT NULL,
  `role_id` int(15) NOT NULL,
  `class_name` varchar(151) NOT NULL,
  `function_name` varchar(151) NOT NULL,
  `insert_id` int(11) DEFAULT NULL,
  `ip` varchar(115) NOT NULL,
  `pc_name` varchar(101) NOT NULL,
  `pc_id` text NOT NULL,
  `insert_date` date NOT NULL,
  `modified` date NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `role_id`, `class_name`, `function_name`, `insert_id`, `ip`, `pc_name`, `pc_id`, `insert_date`, `modified`, `created`) VALUES
(527, 195, 15, 'customers', 'delete', NULL, '192.168.50.119', 'Developer', '', '2018-01-20', '2018-01-20', '2018-01-20 01:41:41'),
(528, 195, 15, 'admins', 'data_transfer_id_wise', NULL, '192.168.50.119', 'Developer', '', '2018-01-20', '2018-01-20', '2018-01-20 02:04:17'),
(575, 83, 1, 'customers', 'registration', 7270, '192.168.50.196', 'Developer', '', '2018-07-04', '2018-07-04', '2018-07-04 05:18:44'),
(576, 83, 1, 'customers', 'registration', 7271, '192.168.50.196', 'Developer', '', '2018-08-08', '2018-08-08', '2018-08-08 04:31:51');

-- --------------------------------------------------------

--
-- Table structure for table `macs`
--

CREATE TABLE `macs` (
  `id` int(25) NOT NULL,
  `user_id` int(15) NOT NULL,
  `package_customer_id` int(15) NOT NULL,
  `mac` text NOT NULL,
  `system` text NOT NULL,
  `installed_by` text NOT NULL,
  `installation_date` text NOT NULL,
  `status` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL,
  `pc_id` varchar(151) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table for individual mac information';

--
-- Dumping data for table `macs`
--

INSERT INTO `macs` (`id`, `user_id`, `package_customer_id`, `mac`, `system`, `installed_by`, `installation_date`, `status`, `created`, `modified`, `pc_id`) VALUES
(1, 83, 4796, '852147', 'PORTAL1', '143', '04/18/2018', 'active', '2018-04-16 22:57:55', '2018-04-17 10:57:55', '192.168.50.119 Developer 2018-04-17 11:31:06am Md. Omar Faruk'),
(2, 83, 4796, '4A401C', 'PORTAL1', '143', '04/18/2018', 'active', '2018-04-16 22:57:55', '2018-04-18 06:27:32', '192.168.50.119 Developer 2018-04-17 11:31:06am Md. Omar Faruk'),
(3, 83, 4796, '4A3D4C', 'PORTAL1', '143', '04/18/2018', 'active', '2018-04-16 22:57:55', '2018-04-18 06:27:32', '192.168.50.119 Developer 2018-04-17 11:31:06am Md. Omar Faruk'),
(4, 83, 4799, '852144', 'CMS1', '188', '04/16/2018', 'active', '2018-04-16 23:31:06', '2018-04-18 04:00:44', '192.168.50.119 Developer 2018-04-17 11:31:06am Md. Omar Faruk');

-- --------------------------------------------------------

--
-- Table structure for table `mac_details`
--

CREATE TABLE `mac_details` (
  `id` int(25) NOT NULL,
  `user_id` int(15) NOT NULL,
  `package_customer_id` int(15) NOT NULL,
  `mac_id` int(25) NOT NULL,
  `system` text NOT NULL,
  `installed_by` text NOT NULL,
  `installation_date` text NOT NULL,
  `status` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL,
  `pc_id` varchar(151) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table for mac life history information';

--
-- Dumping data for table `mac_details`
--

INSERT INTO `mac_details` (`id`, `user_id`, `package_customer_id`, `mac_id`, `system`, `installed_by`, `installation_date`, `status`, `created`, `modified`, `pc_id`) VALUES
(1, 83, 4796, 1, 'PORTAL1', '143', '04/18/2018', 'active', '2018-04-16 22:57:55', '2018-04-17 10:57:55', '192.168.50.119 Developer 2018-04-17 11:31:06am Md. Omar Faruk'),
(2, 83, 4796, 2, 'PORTAL1', '143', '04/18/2018', 'active', '2018-04-16 22:57:55', '2018-04-18 06:11:25', '192.168.50.119 Developer 2018-04-17 11:31:06am Md. Omar Faruk'),
(3, 83, 4796, 3, 'PORTAL1', '143', '04/18/2018', 'active', '2018-04-16 22:57:55', '2018-04-18 06:11:24', '192.168.50.119 Developer 2018-04-17 11:31:06am Md. Omar Faruk'),
(4, 83, 4799, 4, 'CMS1', '188', '04/16/2018', 'active', '2018-04-16 23:31:06', '2018-04-17 11:46:36', '192.168.50.119 Developer 2018-04-17 11:31:06am Md. Omar Faruk');

-- --------------------------------------------------------

--
-- Table structure for table `mac_histories`
--

CREATE TABLE `mac_histories` (
  `id` int(25) NOT NULL,
  `user_id` int(15) NOT NULL,
  `package_customer_id` int(15) NOT NULL,
  `mac` text NOT NULL,
  `system` text NOT NULL,
  `installed_by` text NOT NULL,
  `installation_date` text NOT NULL,
  `status` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL,
  `pc_id` varchar(151) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mac_histories`
--

INSERT INTO `mac_histories` (`id`, `user_id`, `package_customer_id`, `mac`, `system`, `installed_by`, `installation_date`, `status`, `created`, `modified`, `pc_id`) VALUES
(1, 195, 7167, '', '', '', '', 'shipment', '2018-01-02 00:25:21', '2018-01-02 06:25:21', '192.168.50.241 Developer 2018-01-02 06:25:20am Faruk'),
(2, 5, 7169, '', '', '', '', 'shipment', '2018-01-02 00:53:33', '2018-01-02 06:53:33', '192.168.50.241 Developer 2018-01-02 06:53:33am Faruk'),
(3, 195, 7170, '', '', '', '', 'sales done', '2018-01-02 00:58:09', '2018-01-02 06:58:09', '192.168.50.241 Developer 2018-01-02 06:58:08am Faruk'),
(4, 195, 7171, '', '', '', '', 'shipment', '2018-01-02 01:00:23', '2018-01-02 07:00:23', '192.168.50.241 Developer 2018-01-02 07:00:23am Faruk'),
(5, 195, 7218, '', '', '', '', 'sales done', '2018-01-06 01:12:59', '2018-01-06 07:12:59', '192.168.50.241 Developer 2018-01-06 07:12:59am Faruk'),
(6, 195, 7218, '["321564"]', '["PORTAL"]', '["125"]', '["01\\/31\\/2018"]', '["active"]', '2018-01-06 01:15:51', '2018-01-06 07:15:51', '192.168.50.241 Developer 2018-01-06 07:15:51am Faruk'),
(7, 195, 7219, '', '', '', '', 'sales done', '2018-01-26 23:06:34', '2018-01-27 05:06:34', '192.168.50.119 Developer 2018-01-27 05:06:34am Faruk'),
(8, 195, 7220, '', '', '', '', 'sales done', '2018-01-26 23:06:41', '2018-01-27 05:06:41', '192.168.50.119 Developer 2018-01-27 05:06:41am Faruk'),
(9, 195, 7221, '', '', '', '', 'sales done', '2018-01-26 23:07:33', '2018-01-27 05:07:33', '192.168.50.119 Developer 2018-01-27 05:07:33am Faruk'),
(10, 195, 7232, '', '', '', '', 'sales done', '2018-01-27 01:17:00', '2018-01-27 07:17:00', '192.168.50.119 Developer 2018-01-27 07:16:59am Faruk'),
(76, 199, 4796, '["4645645picked up","0000000","852147","965874","81383B","813A99"]', '["CMS1","PORTAL1","PORTAL1","PORTAL","CMS1","CMS2"]', '["122","143","143","210","122","122"]', '["08\\/18\\/2018","04\\/18\\/2018","04\\/18\\/2018","04\\/16\\/2018","07\\/04\\/2014","07\\/04\\/2014"]', '["active","active","active","active","active","active"]', '2018-08-17 20:13:29', '2018-08-18 02:13:29', '192.168.50.196 Developer 2018-08-18 02:13:28am Md. Ayub azahar'),
(77, 199, 4796, '["4645645picked up","0000000","852147","965874","81383B","813A99 (Note)"]', '["CMS1","PORTAL1","PORTAL1","PORTAL","CMS1","CMS2"]', '["122","143","143","210","122","122"]', '["08\\/18\\/2018","04\\/18\\/2018","04\\/18\\/2018","04\\/16\\/2018","07\\/04\\/2014","07\\/04\\/2014"]', '["active","active","active","active","active","active"]', '2018-08-17 20:15:36', '2018-08-18 02:15:37', '192.168.50.196 Developer 2018-08-18 02:15:36am Md. Ayub azahar');

-- --------------------------------------------------------

--
-- Table structure for table `mac_inventory`
--

CREATE TABLE `mac_inventory` (
  `id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `delar_id` int(15) NOT NULL,
  `tech_id` int(15) NOT NULL,
  `package_customer_id` int(15) NOT NULL,
  `mac_id` int(15) NOT NULL,
  `location` varchar(451) NOT NULL,
  `damaged_reason` text NOT NULL,
  `office_date` date NOT NULL,
  `work_done_by` int(15) NOT NULL,
  `modified` date NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pc_id` varchar(251) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `assign_id` int(11) DEFAULT NULL COMMENT 'Who will see and read this message.',
  `role_id` int(11) DEFAULT NULL COMMENT 'Which department will see and read this message.',
  `message` text CHARACTER SET utf8 NOT NULL,
  `status` enum('open','close') NOT NULL DEFAULT 'open',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `assign_id`, `role_id`, `message`, `status`, `created`) VALUES
(1, 128, 122, 6, '<div>à¦¨à§‹à¦Ÿà¦¿à¦¶&nbsp;&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>à¦†à¦œ à¦¥à§‡à¦•à§‡ à¦†à¦®à¦°à¦¾ à¦¸à¦¬ à¦§à¦°à¦£à§‡à¦° à¦•à¦² CRM à¦ à¦°à¦¾à¦–à¦¬à§‹à¥¤ à¦¯à¦¦à¦¿ à¦•à§‹à¦¨à§‹ à¦•à¦¾à¦¸à§à¦Ÿà¦®à¦¾à¦° à¦•à§‡ à¦–à§à¦à¦œà§‡ à¦¨à¦¾ à¦ªà¦¾à¦“à§Ÿà¦¾ à¦¯à¦¾à§Ÿ à¦¤à¦¬à§‡ à¦¸à§‡ à¦•à¦¾à¦¸à§à¦Ÿà¦®à¦¾à¦° à¦à¦° à¦ªà§à¦°à§‹à¦«à¦¾à¦‡à¦² à¦¨à¦¤à§à¦¨ à¦•à¦°à§‡ à¦¤à§ˆà¦°à§€ à¦•à¦°à§‡ à¦•à¦² à¦Ÿà¦¿ à¦¸à¦‚à¦°à¦•à§à¦·à¦£ à¦•à¦°à¦¬à§‹à¥¤ &nbsp;à¦¯à§‡ à¦•à§‹à¦¨à§‹ à¦•à¦¾à¦°à§à¦¡ CRM &nbsp;à¦à¦° à¦¸à¦¾à¦¹à¦¾à¦¯à§à¦¯à§‡ à¦šà¦¾à¦°à§à¦œ à¦•à¦°à¦¬à§‹à¥¤&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>CRM &nbsp;à¦ à¦•à§‹à¦¨à§‹ &nbsp;à¦¸à¦®à¦¸à§à¦¯à¦¾ à¦ªà§‡à¦²à§‡ &nbsp;à¦à¦¸.à¦†à¦‡ à¦•à§‡ à¦œà¦¾à¦¨à¦¾à¦¬à§‡à¦¨à¥¤ &nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><span style="color:#000000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; à¦§à¦¨à§à¦¯à¦¬à¦¾à¦¦</span></div>\r\n\r\n<div><span style="color:#000000">à¦¨à¦¿à¦¹à¦¾à¦¦ à¦‡à¦¶à¦¤à¦¿à§Ÿà¦¾à¦•&nbsp;</span></div>\r\n\r\n<div>&nbsp;</div>\r\n', 'close', '2016-11-25 07:01:46'),
(2, 128, 122, 6, '&nbsp;', 'close', '2016-11-27 04:40:08'),
(3, 128, NULL, 7, '<div>à¦¨à§‹à¦Ÿà¦¿à¦¶&nbsp;&nbsp;</div>\r\n\r\n<div><br />\r\nà¦†à¦œ à¦¥à§‡à¦•à§‡ à¦†à¦®à¦°à¦¾ à¦¸à¦¬ à¦§à¦°à¦£à§‡à¦° à¦•à¦² CRM à¦ à¦°à¦¾à¦–à¦¬à§‹à¥¤ à¦¯à¦¦à¦¿ à¦•à§‹à¦¨à§‹ à¦•à¦¾à¦¸à§à¦Ÿà¦®à¦¾à¦° à¦•à§‡ à¦–à§à¦à¦œà§‡ à¦¨à¦¾ à¦ªà¦¾à¦“à§Ÿà¦¾ à¦¯à¦¾à§Ÿ à¦¤à¦¬à§‡ à¦¸à§‡ à¦•à¦¾à¦¸à§à¦Ÿà¦®à¦¾à¦° à¦à¦° à¦ªà§à¦°à§‹à¦«à¦¾à¦‡à¦² à¦¨à¦¤à§à¦¨ à¦•à¦°à§‡ à¦¤à§ˆà¦°à§€ à¦•à¦°à§‡ à¦•à¦² à¦Ÿà¦¿ à¦¸à¦‚à¦°à¦•à§à¦·à¦£ à¦•à¦°à¦¬à§‹à¥¤ &nbsp;à¦¯à§‡ à¦•à§‹à¦¨à§‹ à¦•à¦¾à¦°à§à¦¡ CRM &nbsp;à¦à¦° à¦¸à¦¾à¦¹à¦¾à¦¯à§à¦¯à§‡ à¦šà¦¾à¦°à§à¦œ à¦•à¦°à¦¬à§‹à¥¤&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>CRM &nbsp;à¦ à¦•à§‹à¦¨à§‹ &nbsp;à¦¸à¦®à¦¸à§à¦¯à¦¾ à¦ªà§‡à¦²à§‡ &nbsp;à¦à¦¸.à¦†à¦‡ à¦•à§‡ à¦œà¦¾à¦¨à¦¾à¦¬à§‡à¦¨à¥¤ &nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color:#B22222">à¦§à¦¨à§à¦¯à¦¬à¦¾à¦¦</span></div>\r\n\r\n<div><span style="color:#B22222">à¦¨à¦¿à¦¹à¦¾à¦¦ à¦‡à¦¶à¦¤à¦¿à§Ÿà¦¾à¦•&nbsp;</span></div>\r\n', 'close', '2016-11-27 04:47:41'),
(4, 128, NULL, 1, '<div>à¦¨à§‹à¦Ÿà¦¿à¦¶&nbsp;&nbsp;</div>\r\n\r\n<div><br />\r\nà¦†à¦œ à¦¥à§‡à¦•à§‡ à¦†à¦®à¦°à¦¾ à¦¸à¦¬ à¦§à¦°à¦£à§‡à¦° à¦•à¦² CRM à¦ à¦°à¦¾à¦–à¦¬à§‹à¥¤ à¦¯à¦¦à¦¿ à¦•à§‹à¦¨à§‹ à¦•à¦¾à¦¸à§à¦Ÿà¦®à¦¾à¦° à¦•à§‡ à¦–à§à¦à¦œà§‡ à¦¨à¦¾ à¦ªà¦¾à¦“à§Ÿà¦¾ à¦¯à¦¾à§Ÿ à¦¤à¦¬à§‡ à¦¸à§‡ à¦•à¦¾à¦¸à§à¦Ÿà¦®à¦¾à¦° à¦à¦° à¦ªà§à¦°à§‹à¦«à¦¾à¦‡à¦² à¦¨à¦¤à§à¦¨ à¦•à¦°à§‡ à¦¤à§ˆà¦°à§€ à¦•à¦°à§‡ à¦•à¦² à¦Ÿà¦¿ à¦¸à¦‚à¦°à¦•à§à¦·à¦£ à¦•à¦°à¦¬à§‹à¥¤ &nbsp;à¦¯à§‡ à¦•à§‹à¦¨à§‹ à¦•à¦¾à¦°à§à¦¡ CRM &nbsp;à¦à¦° à¦¸à¦¾à¦¹à¦¾à¦¯à§à¦¯à§‡ à¦šà¦¾à¦°à§à¦œ à¦•à¦°à¦¬à§‹à¥¤&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>CRM &nbsp;à¦ à¦•à§‹à¦¨à§‹ &nbsp;à¦¸à¦®à¦¸à§à¦¯à¦¾ à¦ªà§‡à¦²à§‡ &nbsp;à¦à¦¸.à¦†à¦‡ à¦•à§‡ à¦œà¦¾à¦¨à¦¾à¦¬à§‡à¦¨à¥¤ &nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color:#B22222">à¦§à¦¨à§à¦¯à¦¬à¦¾à¦¦</span></div>\r\n\r\n<div><span style="color:#B22222">à¦¨à¦¿à¦¹à¦¾à¦¦ à¦‡à¦¶à¦¤à¦¿à§Ÿà¦¾à¦•&nbsp;</span></div>\r\n', 'close', '2016-11-27 04:48:03'),
(5, 128, 98, NULL, '<div>à¦¨à§‹à¦Ÿà¦¿à¦¶&nbsp;&nbsp;</div>\r\n\r\n<div><br />\r\nà¦†à¦œ à¦¥à§‡à¦•à§‡ à¦†à¦®à¦°à¦¾ à¦¸à¦¬ à¦§à¦°à¦£à§‡à¦° à¦•à¦² CRM à¦ à¦°à¦¾à¦–à¦¬à§‹à¥¤ à¦¯à¦¦à¦¿ à¦•à§‹à¦¨à§‹ à¦•à¦¾à¦¸à§à¦Ÿà¦®à¦¾à¦° à¦•à§‡ à¦–à§à¦à¦œà§‡ à¦¨à¦¾ à¦ªà¦¾à¦“à§Ÿà¦¾ à¦¯à¦¾à§Ÿ à¦¤à¦¬à§‡ à¦¸à§‡ à¦•à¦¾à¦¸à§à¦Ÿà¦®à¦¾à¦° à¦à¦° à¦ªà§à¦°à§‹à¦«à¦¾à¦‡à¦² à¦¨à¦¤à§à¦¨ à¦•à¦°à§‡ à¦¤à§ˆà¦°à§€ à¦•à¦°à§‡ à¦•à¦² à¦Ÿà¦¿ à¦¸à¦‚à¦°à¦•à§à¦·à¦£ à¦•à¦°à¦¬à§‹à¥¤ &nbsp;à¦¯à§‡ à¦•à§‹à¦¨à§‹ à¦•à¦¾à¦°à§à¦¡ CRM &nbsp;à¦à¦° à¦¸à¦¾à¦¹à¦¾à¦¯à§à¦¯à§‡ à¦šà¦¾à¦°à§à¦œ à¦•à¦°à¦¬à§‹à¥¤&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>CRM &nbsp;à¦ à¦•à§‹à¦¨à§‹ &nbsp;à¦¸à¦®à¦¸à§à¦¯à¦¾ à¦ªà§‡à¦²à§‡ &nbsp;à¦à¦¸.à¦†à¦‡ à¦•à§‡ à¦œà¦¾à¦¨à¦¾à¦¬à§‡à¦¨à¥¤ &nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color:#B22222">à¦§à¦¨à§à¦¯à¦¬à¦¾à¦¦</span></div>\r\n\r\n<div><span style="color:#B22222">à¦¨à¦¿à¦¹à¦¾à¦¦ à¦‡à¦¶à¦¤à¦¿à§Ÿà¦¾à¦•&nbsp;</span></div>\r\n', 'close', '2016-11-27 04:48:26'),
(6, 128, 99, NULL, '<div>à¦¨à§‹à¦Ÿà¦¿à¦¶&nbsp;&nbsp;</div>\r\n\r\n<div><br />\r\nà¦†à¦œ à¦¥à§‡à¦•à§‡ à¦†à¦®à¦°à¦¾ à¦¸à¦¬ à¦§à¦°à¦£à§‡à¦° à¦•à¦² CRM à¦ à¦°à¦¾à¦–à¦¬à§‹à¥¤ à¦¯à¦¦à¦¿ à¦•à§‹à¦¨à§‹ à¦•à¦¾à¦¸à§à¦Ÿà¦®à¦¾à¦° à¦•à§‡ à¦–à§à¦à¦œà§‡ à¦¨à¦¾ à¦ªà¦¾à¦“à§Ÿà¦¾ à¦¯à¦¾à§Ÿ à¦¤à¦¬à§‡ à¦¸à§‡ à¦•à¦¾à¦¸à§à¦Ÿà¦®à¦¾à¦° à¦à¦° à¦ªà§à¦°à§‹à¦«à¦¾à¦‡à¦² à¦¨à¦¤à§à¦¨ à¦•à¦°à§‡ à¦¤à§ˆà¦°à§€ à¦•à¦°à§‡ à¦•à¦² à¦Ÿà¦¿ à¦¸à¦‚à¦°à¦•à§à¦·à¦£ à¦•à¦°à¦¬à§‹à¥¤ &nbsp;à¦¯à§‡ à¦•à§‹à¦¨à§‹ à¦•à¦¾à¦°à§à¦¡ CRM &nbsp;à¦à¦° à¦¸à¦¾à¦¹à¦¾à¦¯à§à¦¯à§‡ à¦šà¦¾à¦°à§à¦œ à¦•à¦°à¦¬à§‹à¥¤&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>CRM &nbsp;à¦ à¦•à§‹à¦¨à§‹ &nbsp;à¦¸à¦®à¦¸à§à¦¯à¦¾ à¦ªà§‡à¦²à§‡ &nbsp;à¦à¦¸.à¦†à¦‡ à¦•à§‡ à¦œà¦¾à¦¨à¦¾à¦¬à§‡à¦¨à¥¤ &nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color:#B22222">à¦§à¦¨à§à¦¯à¦¬à¦¾à¦¦</span></div>\r\n\r\n<div><span style="color:#B22222">à¦¨à¦¿à¦¹à¦¾à¦¦ à¦‡à¦¶à¦¤à¦¿à§Ÿà¦¾à¦•&nbsp;</span></div>\r\n', 'close', '2016-11-27 04:48:38'),
(7, 128, 131, NULL, '<div>à¦¨à§‹à¦Ÿà¦¿à¦¶&nbsp;&nbsp;</div>\r\n\r\n<div><br />\r\nà¦†à¦œ à¦¥à§‡à¦•à§‡ à¦†à¦®à¦°à¦¾ à¦¸à¦¬ à¦§à¦°à¦£à§‡à¦° à¦•à¦² CRM à¦ à¦°à¦¾à¦–à¦¬à§‹à¥¤ à¦¯à¦¦à¦¿ à¦•à§‹à¦¨à§‹ à¦•à¦¾à¦¸à§à¦Ÿà¦®à¦¾à¦° à¦•à§‡ à¦–à§à¦à¦œà§‡ à¦¨à¦¾ à¦ªà¦¾à¦“à§Ÿà¦¾ à¦¯à¦¾à§Ÿ à¦¤à¦¬à§‡ à¦¸à§‡ à¦•à¦¾à¦¸à§à¦Ÿà¦®à¦¾à¦° à¦à¦° à¦ªà§à¦°à§‹à¦«à¦¾à¦‡à¦² à¦¨à¦¤à§à¦¨ à¦•à¦°à§‡ à¦¤à§ˆà¦°à§€ à¦•à¦°à§‡ à¦•à¦² à¦Ÿà¦¿ à¦¸à¦‚à¦°à¦•à§à¦·à¦£ à¦•à¦°à¦¬à§‹à¥¤ &nbsp;à¦¯à§‡ à¦•à§‹à¦¨à§‹ à¦•à¦¾à¦°à§à¦¡ CRM &nbsp;à¦à¦° à¦¸à¦¾à¦¹à¦¾à¦¯à§à¦¯à§‡ à¦šà¦¾à¦°à§à¦œ à¦•à¦°à¦¬à§‹à¥¤&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>CRM &nbsp;à¦ à¦•à§‹à¦¨à§‹ &nbsp;à¦¸à¦®à¦¸à§à¦¯à¦¾ à¦ªà§‡à¦²à§‡ &nbsp;à¦à¦¸.à¦†à¦‡ à¦•à§‡ à¦œà¦¾à¦¨à¦¾à¦¬à§‡à¦¨à¥¤ &nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color:#B22222">à¦§à¦¨à§à¦¯à¦¬à¦¾à¦¦</span></div>\r\n\r\n<div><span style="color:#B22222">à¦¨à¦¿à¦¹à¦¾à¦¦ à¦‡à¦¶à¦¤à¦¿à§Ÿà¦¾à¦•&nbsp;</span></div>\r\n', 'close', '2016-11-27 04:48:47'),
(8, 128, 94, NULL, '<div>à¦¨à§‹à¦Ÿà¦¿à¦¶&nbsp;&nbsp;</div>\r\n\r\n<div><br />\r\nà¦†à¦œ à¦¥à§‡à¦•à§‡ à¦†à¦®à¦°à¦¾ à¦¸à¦¬ à¦§à¦°à¦£à§‡à¦° à¦•à¦² CRM à¦ à¦°à¦¾à¦–à¦¬à§‹à¥¤ à¦¯à¦¦à¦¿ à¦•à§‹à¦¨à§‹ à¦•à¦¾à¦¸à§à¦Ÿà¦®à¦¾à¦° à¦•à§‡ à¦–à§à¦à¦œà§‡ à¦¨à¦¾ à¦ªà¦¾à¦“à§Ÿà¦¾ à¦¯à¦¾à§Ÿ à¦¤à¦¬à§‡ à¦¸à§‡ à¦•à¦¾à¦¸à§à¦Ÿà¦®à¦¾à¦° à¦à¦° à¦ªà§à¦°à§‹à¦«à¦¾à¦‡à¦² à¦¨à¦¤à§à¦¨ à¦•à¦°à§‡ à¦¤à§ˆà¦°à§€ à¦•à¦°à§‡ à¦•à¦² à¦Ÿà¦¿ à¦¸à¦‚à¦°à¦•à§à¦·à¦£ à¦•à¦°à¦¬à§‹à¥¤ &nbsp;à¦¯à§‡ à¦•à§‹à¦¨à§‹ à¦•à¦¾à¦°à§à¦¡ CRM &nbsp;à¦à¦° à¦¸à¦¾à¦¹à¦¾à¦¯à§à¦¯à§‡ à¦šà¦¾à¦°à§à¦œ à¦•à¦°à¦¬à§‹à¥¤&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>CRM &nbsp;à¦ à¦•à§‹à¦¨à§‹ &nbsp;à¦¸à¦®à¦¸à§à¦¯à¦¾ à¦ªà§‡à¦²à§‡ &nbsp;à¦à¦¸.à¦†à¦‡ à¦•à§‡ à¦œà¦¾à¦¨à¦¾à¦¬à§‡à¦¨à¥¤ &nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color:#B22222">à¦§à¦¨à§à¦¯à¦¬à¦¾à¦¦</span></div>\r\n\r\n<div><span style="color:#B22222">à¦¨à¦¿à¦¹à¦¾à¦¦ à¦‡à¦¶à¦¤à¦¿à§Ÿà¦¾à¦•&nbsp;</span></div>\r\n', 'close', '2016-11-27 04:49:05'),
(9, 128, 120, NULL, '<div>à¦¨à§‹à¦Ÿà¦¿à¦¶&nbsp;&nbsp;</div>\r\n\r\n<div><br />\r\nà¦†à¦œ à¦¥à§‡à¦•à§‡ à¦†à¦®à¦°à¦¾ à¦¸à¦¬ à¦§à¦°à¦£à§‡à¦° à¦•à¦² CRM à¦ à¦°à¦¾à¦–à¦¬à§‹à¥¤ à¦¯à¦¦à¦¿ à¦•à§‹à¦¨à§‹ à¦•à¦¾à¦¸à§à¦Ÿà¦®à¦¾à¦° à¦•à§‡ à¦–à§à¦à¦œà§‡ à¦¨à¦¾ à¦ªà¦¾à¦“à§Ÿà¦¾ à¦¯à¦¾à§Ÿ à¦¤à¦¬à§‡ à¦¸à§‡ à¦•à¦¾à¦¸à§à¦Ÿà¦®à¦¾à¦° à¦à¦° à¦ªà§à¦°à§‹à¦«à¦¾à¦‡à¦² à¦¨à¦¤à§à¦¨ à¦•à¦°à§‡ à¦¤à§ˆà¦°à§€ à¦•à¦°à§‡ à¦•à¦² à¦Ÿà¦¿ à¦¸à¦‚à¦°à¦•à§à¦·à¦£ à¦•à¦°à¦¬à§‹à¥¤ &nbsp;à¦¯à§‡ à¦•à§‹à¦¨à§‹ à¦•à¦¾à¦°à§à¦¡ CRM &nbsp;à¦à¦° à¦¸à¦¾à¦¹à¦¾à¦¯à§à¦¯à§‡ à¦šà¦¾à¦°à§à¦œ à¦•à¦°à¦¬à§‹à¥¤&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>CRM &nbsp;à¦ à¦•à§‹à¦¨à§‹ &nbsp;à¦¸à¦®à¦¸à§à¦¯à¦¾ à¦ªà§‡à¦²à§‡ &nbsp;à¦à¦¸.à¦†à¦‡ à¦•à§‡ à¦œà¦¾à¦¨à¦¾à¦¬à§‡à¦¨à¥¤ &nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color:#B22222">à¦§à¦¨à§à¦¯à¦¬à¦¾à¦¦</span></div>\r\n\r\n<div><span style="color:#B22222">à¦¨à¦¿à¦¹à¦¾à¦¦ à¦‡à¦¶à¦¤à¦¿à§Ÿà¦¾à¦•&nbsp;</span></div>\r\n', 'close', '2016-11-27 04:49:17'),
(10, 128, 89, NULL, '<div>à¦¨à§‹à¦Ÿà¦¿à¦¶&nbsp;&nbsp;</div>\r\n\r\n<div><br />\r\nà¦†à¦œ à¦¥à§‡à¦•à§‡ à¦†à¦®à¦°à¦¾ à¦¸à¦¬ à¦§à¦°à¦£à§‡à¦° à¦•à¦² CRM à¦ à¦°à¦¾à¦–à¦¬à§‹à¥¤ à¦¯à¦¦à¦¿ à¦•à§‹à¦¨à§‹ à¦•à¦¾à¦¸à§à¦Ÿà¦®à¦¾à¦° à¦•à§‡ à¦–à§à¦à¦œà§‡ à¦¨à¦¾ à¦ªà¦¾à¦“à§Ÿà¦¾ à¦¯à¦¾à§Ÿ à¦¤à¦¬à§‡ à¦¸à§‡ à¦•à¦¾à¦¸à§à¦Ÿà¦®à¦¾à¦° à¦à¦° à¦ªà§à¦°à§‹à¦«à¦¾à¦‡à¦² à¦¨à¦¤à§à¦¨ à¦•à¦°à§‡ à¦¤à§ˆà¦°à§€ à¦•à¦°à§‡ à¦•à¦² à¦Ÿà¦¿ à¦¸à¦‚à¦°à¦•à§à¦·à¦£ à¦•à¦°à¦¬à§‹à¥¤ &nbsp;à¦¯à§‡ à¦•à§‹à¦¨à§‹ à¦•à¦¾à¦°à§à¦¡ CRM &nbsp;à¦à¦° à¦¸à¦¾à¦¹à¦¾à¦¯à§à¦¯à§‡ à¦šà¦¾à¦°à§à¦œ à¦•à¦°à¦¬à§‹à¥¤&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>CRM &nbsp;à¦ à¦•à§‹à¦¨à§‹ &nbsp;à¦¸à¦®à¦¸à§à¦¯à¦¾ à¦ªà§‡à¦²à§‡ &nbsp;à¦à¦¸.à¦†à¦‡ à¦•à§‡ à¦œà¦¾à¦¨à¦¾à¦¬à§‡à¦¨à¥¤ &nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color:#B22222">à¦§à¦¨à§à¦¯à¦¬à¦¾à¦¦</span></div>\r\n\r\n<div><span style="color:#B22222">à¦¨à¦¿à¦¹à¦¾à¦¦ à¦‡à¦¶à¦¤à¦¿à§Ÿà¦¾à¦•&nbsp;</span></div>\r\n', 'close', '2016-11-27 04:49:26'),
(134, 128, 122, 5, '<p>Dear Al.</p>\r\n\r\n<p>Please do not charge any autorecurring customer&#39;s card &quot;MANUALLY&quot;</p>\r\n\r\n<p>If any query please contact with NIHAD</p>\r\n', 'open', '2017-09-07 11:32:02'),
(135, 128, 122, 5, '<p><span style="font-size:20px"><span style="color:rgb(38, 50, 56); font-family:arial,sans-serif">Dear All,</span></span><br />\r\n<span style="font-size:18px"><span style="color:rgb(38, 50, 56); font-family:arial,sans-serif">If Any One calls for taking part as a technician at our Company, PLase take his/her Name &amp; Valid Phone </span></span></p>\r\n\r\n<p><span style="font-size:20px"><span style="color:rgb(38, 50, 56); font-family:arial,sans-serif">Number and also tell to sent a CV to &quot;tech.tcbd@gmail.com&quot; </span></span></p>\r\n\r\n<p><span style="font-size:20px"><span style="color:rgb(38, 50, 56); font-family:arial,sans-serif">NIHAD ISHTIAQ</span></span></p>\r\n', 'open', '2017-09-08 20:50:08');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `pc_id` varchar(151) NOT NULL,
  `name` varchar(151) NOT NULL,
  `category` varchar(101) NOT NULL,
  `hero` varchar(151) NOT NULL,
  `heroin` varchar(151) NOT NULL,
  `release_year` year(4) NOT NULL,
  `imdb_rating` varchar(51) NOT NULL,
  `duration` time NOT NULL,
  `on_air_date` date NOT NULL,
  `on_air_time` time NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `user_id`, `pc_id`, `name`, `category`, `hero`, `heroin`, `release_year`, `imdb_rating`, `duration`, `on_air_date`, `on_air_time`, `created`, `modified`) VALUES
(1, 185, '', 'Voli', 'action adventure horror romantic', 'Amir khan', 'EOM', 2019, '71', '02:45:13', '2017-12-21', '00:00:00', '2017-12-26 07:11:33', '2017-12-30'),
(2, 195, '192.168.50.241 Developer 2017-12-27 04:51:16am Faruk', 'Time machine', 'adventure comedy horror', 'Shakib khan', 'Apu bishash', 2002, '51', '30:00:00', '2017-12-27', '00:00:00', '2017-12-26 22:51:16', '2017-12-29'),
(3, 195, '192.168.50.241 Developer 2017-12-27 05:05:12am Faruk', 'Black Dimond', '', 'EM', 'EOM', 2006, '61', '30:10:00', '2017-12-02', '00:00:00', '2017-12-26 23:05:12', '2017-12-28'),
(4, 195, '192.168.50.241 Developer 2017-12-27 05:37:30am Faruk', '3idiot', '', 'Amir khan', 'Karina', 2016, '511', '03:00:01', '2017-12-25', '00:00:00', '2017-12-26 23:37:30', '2017-12-28'),
(5, 195, '192.168.50.241 Developer 2017-12-27 06:43:27am Faruk', 'Ordonari', 'action , romantic', 'Unnon', 'Unnon', 2005, '61', '03:00:00', '2017-12-28', '00:00:00', '2017-12-27 00:43:27', '2017-12-27'),
(6, 195, '192.168.50.241 Developer 2017-12-29 12:46:37am Faruk', 'Movie1', 'action , horror', 'Arifin', 'Moom', 2017, '57', '03:00:00', '0000-00-00', '00:00:00', '2017-12-28 18:46:37', '2017-12-29'),
(7, 195, '192.168.50.241 Developer 2017-12-29 06:49:46am Faruk', 'Rongbag', 'action romantic', 'Shakib khan', 'Mim', 2016, '57', '03:00:00', '0000-00-00', '00:00:00', '2017-12-29 00:49:46', '2017-12-29'),
(8, 195, '192.168.50.241 Developer 2017-12-29 07:22:35am Faruk', 'Pair ho ga', 'action horror romantic', 'Kajol', 'Sharukh', 2002, '57', '03:00:00', '0000-00-00', '00:00:00', '2017-12-29 01:22:35', '2017-12-29');

-- --------------------------------------------------------

--
-- Table structure for table `movie_details`
--

CREATE TABLE `movie_details` (
  `id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `movie_id` int(15) NOT NULL,
  `pc_id` varchar(151) NOT NULL,
  `name` varchar(151) NOT NULL,
  `movie_history_id` int(15) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movie_details`
--

INSERT INTO `movie_details` (`id`, `user_id`, `movie_id`, `pc_id`, `name`, `movie_history_id`, `date`, `time`, `created`, `modified`) VALUES
(10, 195, 8, '192.168.50.241 Developer 2017-12-30 02:24:22am Faruk', '', 3, '2017-12-11', '00:00:00', '2017-12-29 20:24:22', '2017-12-30'),
(11, 195, 7, '192.168.50.241 Developer 2017-12-30 02:24:22am Faruk', '', 3, '2017-12-11', '03:00:00', '2017-12-29 20:24:23', '2017-12-30'),
(12, 195, 6, '192.168.50.241 Developer 2017-12-30 02:24:22am Faruk', '', 3, '2017-12-11', '06:00:00', '2017-12-29 20:24:23', '2017-12-30'),
(13, 195, 5, '192.168.50.241 Developer 2017-12-30 02:24:22am Faruk', '', 3, '2017-12-11', '09:00:00', '2017-12-29 20:24:23', '2017-12-30'),
(14, 195, 4, '192.168.50.241 Developer 2017-12-30 02:24:22am Faruk', '', 3, '2017-12-11', '11:30:00', '2017-12-29 20:24:23', '2017-12-30'),
(15, 195, 2, '192.168.50.241 Developer 2017-12-30 02:24:22am Faruk', '', 3, '2017-12-11', '14:00:00', '2017-12-29 20:24:23', '2017-12-30'),
(16, 195, 1, '192.168.50.241 Developer 2017-12-30 02:24:22am Faruk', '', 3, '2017-12-11', '16:30:00', '2017-12-29 20:24:23', '2017-12-30'),
(17, 195, 8, '192.168.50.241 Developer 2017-12-30 02:24:22am Faruk', '', 3, '2017-12-11', '19:00:00', '2017-12-29 20:24:23', '2017-12-30'),
(18, 195, 7, '192.168.50.241 Developer 2017-12-30 02:24:22am Faruk', '', 3, '2017-12-11', '21:30:00', '2017-12-29 20:24:23', '2017-12-30'),
(19, 195, 1, '192.168.50.241 Developer 2017-12-30 02:27:46am Faruk', '', 6, '2017-12-14', '00:00:00', '2017-12-29 20:27:46', '2017-12-30'),
(20, 195, 2, '192.168.50.241 Developer 2017-12-30 02:27:46am Faruk', '', 6, '2017-12-14', '03:00:00', '2017-12-29 20:27:46', '2017-12-30'),
(21, 195, 3, '192.168.50.241 Developer 2017-12-30 02:27:46am Faruk', '', 6, '2017-12-14', '06:00:00', '2017-12-29 20:27:46', '2017-12-30'),
(22, 195, 4, '192.168.50.241 Developer 2017-12-30 02:27:46am Faruk', '', 6, '2017-12-14', '09:00:00', '2017-12-29 20:27:46', '2017-12-30'),
(23, 195, 5, '192.168.50.241 Developer 2017-12-30 02:27:46am Faruk', '', 6, '2017-12-14', '11:30:00', '2017-12-29 20:27:46', '2017-12-30'),
(24, 195, 6, '192.168.50.241 Developer 2017-12-30 02:27:46am Faruk', '', 6, '2017-12-14', '14:00:00', '2017-12-29 20:27:46', '2017-12-30'),
(25, 195, 7, '192.168.50.241 Developer 2017-12-30 02:27:46am Faruk', '', 6, '2017-12-14', '16:30:00', '2017-12-29 20:27:46', '2017-12-30'),
(26, 195, 8, '192.168.50.241 Developer 2017-12-30 02:27:46am Faruk', '', 6, '2017-12-14', '19:00:00', '2017-12-29 20:27:47', '2017-12-30'),
(27, 195, 1, '192.168.50.241 Developer 2017-12-30 02:27:46am Faruk', '', 6, '2017-12-14', '21:30:00', '2017-12-29 20:27:47', '2017-12-30'),
(85, 195, 1, '192.168.50.241 Developer 2017-12-30 05:29:49am Faruk', '', 5, '2017-12-03', '00:00:00', '2017-12-29 23:29:49', '2017-12-30'),
(86, 195, 2, '192.168.50.241 Developer 2017-12-30 05:29:49am Faruk', '', 5, '2017-12-03', '03:00:00', '2017-12-29 23:29:49', '2017-12-30'),
(87, 195, 3, '192.168.50.241 Developer 2017-12-30 05:29:49am Faruk', '', 5, '2017-12-03', '06:00:00', '2017-12-29 23:29:49', '2017-12-30'),
(88, 195, 4, '192.168.50.241 Developer 2017-12-30 05:29:49am Faruk', '', 5, '2017-12-03', '09:00:00', '2017-12-29 23:29:49', '2017-12-30'),
(89, 195, 5, '192.168.50.241 Developer 2017-12-30 05:29:49am Faruk', '', 5, '2017-12-03', '11:30:00', '2017-12-29 23:29:49', '2017-12-30'),
(90, 195, 6, '192.168.50.241 Developer 2017-12-30 05:29:49am Faruk', '', 5, '2017-12-03', '14:00:00', '2017-12-29 23:29:50', '2017-12-30'),
(91, 195, 7, '192.168.50.241 Developer 2017-12-30 05:29:49am Faruk', '', 5, '2017-12-03', '16:30:00', '2017-12-29 23:29:50', '2017-12-30'),
(92, 195, 8, '192.168.50.241 Developer 2017-12-30 05:29:49am Faruk', '', 5, '2017-12-03', '19:00:00', '2017-12-29 23:29:50', '2017-12-30'),
(93, 195, 1, '192.168.50.241 Developer 2017-12-30 05:29:49am Faruk', '', 5, '2017-12-03', '21:30:00', '2017-12-29 23:29:50', '2017-12-30'),
(121, 195, 1, '192.168.50.241 Developer 2017-12-30 05:36:27am Faruk', '', 4, '2017-12-30', '03:00:00', '2017-12-29 23:36:27', '2017-12-30'),
(122, 195, 3, '192.168.50.241 Developer 2017-12-30 05:36:27am Faruk', '', 4, '2017-12-30', '03:00:00', '2017-12-29 23:36:27', '2017-12-30'),
(123, 195, 2, '192.168.50.241 Developer 2017-12-30 05:36:27am Faruk', '', 4, '2017-12-30', '06:00:00', '2017-12-29 23:36:27', '2017-12-30'),
(124, 195, 4, '192.168.50.241 Developer 2017-12-30 05:36:27am Faruk', '', 4, '2017-12-30', '09:00:00', '2017-12-29 23:36:27', '2017-12-30'),
(125, 195, 5, '192.168.50.241 Developer 2017-12-30 05:36:27am Faruk', '', 4, '2017-12-30', '11:30:00', '2017-12-29 23:36:27', '2017-12-30'),
(126, 195, 6, '192.168.50.241 Developer 2017-12-30 05:36:27am Faruk', '', 4, '2017-12-30', '14:00:00', '2017-12-29 23:36:27', '2017-12-30'),
(127, 195, 7, '192.168.50.241 Developer 2017-12-30 05:36:27am Faruk', '', 4, '2017-12-30', '16:30:00', '2017-12-29 23:36:27', '2017-12-30'),
(128, 195, 8, '192.168.50.241 Developer 2017-12-30 05:36:27am Faruk', '', 4, '2017-12-30', '19:00:00', '2017-12-29 23:36:27', '2017-12-30'),
(129, 195, 1, '192.168.50.241 Developer 2017-12-30 05:36:27am Faruk', '', 4, '2017-12-30', '21:30:00', '2017-12-29 23:36:27', '2017-12-30'),
(130, 195, 1, '192.168.50.241 Developer 2017-12-30 05:45:12am Faruk', '', 7, '2017-12-15', '00:00:00', '2017-12-29 23:45:12', '2017-12-30'),
(131, 195, 4, '192.168.50.241 Developer 2017-12-30 05:45:12am Faruk', '', 7, '2017-12-15', '03:00:00', '2017-12-29 23:45:12', '2017-12-30'),
(132, 195, 1, '192.168.50.241 Developer 2017-12-30 05:45:12am Faruk', '', 7, '2017-12-15', '06:00:00', '2017-12-29 23:45:12', '2017-12-30'),
(133, 195, 1, '192.168.50.241 Developer 2017-12-30 05:45:12am Faruk', '', 7, '2017-12-15', '09:00:00', '2017-12-29 23:45:12', '2017-12-30'),
(134, 195, 7, '192.168.50.241 Developer 2017-12-30 05:45:12am Faruk', '', 7, '2017-12-15', '11:30:00', '2017-12-29 23:45:12', '2017-12-30'),
(135, 195, 1, '192.168.50.241 Developer 2017-12-30 05:45:12am Faruk', '', 7, '2017-12-15', '14:00:00', '2017-12-29 23:45:12', '2017-12-30'),
(136, 195, 1, '192.168.50.241 Developer 2017-12-30 05:45:12am Faruk', '', 7, '2017-12-15', '16:30:00', '2017-12-29 23:45:12', '2017-12-30'),
(137, 195, 1, '192.168.50.241 Developer 2017-12-30 05:45:12am Faruk', '', 7, '2017-12-15', '19:00:00', '2017-12-29 23:45:12', '2017-12-30'),
(138, 195, 1, '192.168.50.241 Developer 2017-12-30 05:45:12am Faruk', '', 7, '2017-12-15', '21:30:00', '2017-12-29 23:45:12', '2017-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `movie_histories`
--

CREATE TABLE `movie_histories` (
  `id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `pc_id` varchar(151) NOT NULL,
  `date` date NOT NULL,
  `day_name` varchar(41) NOT NULL,
  `m1t` time DEFAULT NULL,
  `m1` varchar(51) NOT NULL,
  `m2t` time DEFAULT NULL,
  `m2` varchar(51) NOT NULL,
  `m3t` time DEFAULT NULL,
  `m3` varchar(51) NOT NULL,
  `m4t` time DEFAULT NULL,
  `m4` varchar(51) NOT NULL,
  `m5t` time DEFAULT NULL,
  `m5` varchar(51) NOT NULL,
  `m6t` time DEFAULT NULL,
  `m6` varchar(51) NOT NULL,
  `m7t` time DEFAULT NULL,
  `m7` varchar(51) NOT NULL,
  `m8t` time DEFAULT NULL,
  `m8` varchar(51) NOT NULL,
  `m9t` time DEFAULT NULL,
  `m9` varchar(51) NOT NULL,
  `m10t` time DEFAULT NULL,
  `m10` varchar(51) NOT NULL,
  `m11t` time DEFAULT NULL,
  `m11` varchar(51) NOT NULL,
  `m12t` time DEFAULT NULL,
  `m12` varchar(51) NOT NULL,
  `status` enum('no','yes') NOT NULL DEFAULT 'no',
  `created` date NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movie_histories`
--

INSERT INTO `movie_histories` (`id`, `user_id`, `pc_id`, `date`, `day_name`, `m1t`, `m1`, `m2t`, `m2`, `m3t`, `m3`, `m4t`, `m4`, `m5t`, `m5`, `m6t`, `m6`, `m7t`, `m7`, `m8t`, `m8`, `m9t`, `m9`, `m10t`, `m10`, `m11t`, `m11`, `m12t`, `m12`, `status`, `created`, `modified`) VALUES
(3, 195, '192.168.50.241 Developer 2017-12-30 02:24:22am Faruk', '2017-12-11', 'Monday', '00:00:00', '8', '03:00:00', '7', '06:00:00', '6', '09:00:00', '5', '11:30:00', '4', '14:00:00', '2', '16:30:00', '1', '19:00:00', '8', '21:30:00', '7', NULL, '', NULL, '', NULL, '', 'yes', '2017-12-30', '2017-12-29 20:24:22'),
(4, 195, '192.168.50.241 Developer 2017-12-30 05:36:27am Faruk', '2017-12-30', 'Saturday', '03:00:00', '1', '03:00:00', '3', '06:00:00', '2', '09:00:00', '4', '11:30:00', '5', '14:00:00', '6', '16:30:00', '7', '19:00:00', '8', '21:30:00', '1', NULL, '', NULL, '', NULL, '', 'yes', '2017-12-30', '2017-12-29 23:36:27'),
(5, 195, '192.168.50.241 Developer 2017-12-30 05:29:49am Faruk', '2017-12-03', 'Sunday', '00:00:00', '1', '03:00:00', '2', '06:00:00', '3', '09:00:00', '4', '11:30:00', '5', '14:00:00', '6', '16:30:00', '7', '19:00:00', '8', '21:30:00', '1', NULL, '', NULL, '', NULL, '', 'yes', '2017-12-30', '2017-12-29 23:29:49'),
(6, 195, '192.168.50.241 Developer 2017-12-30 02:27:46am Faruk', '2017-12-14', 'Thursday', '00:00:00', '1', '03:00:00', '2', '06:00:00', '3', '09:00:00', '4', '11:30:00', '5', '14:00:00', '6', '16:30:00', '7', '19:00:00', '8', '21:30:00', '1', NULL, '', NULL, '', NULL, '', 'yes', '2017-12-30', '2017-12-29 20:27:46'),
(7, 195, '192.168.50.241 Developer 2017-12-30 05:45:12am Faruk', '2017-12-15', 'Friday', '00:00:00', '1', '03:00:00', '4', '06:00:00', '1', '09:00:00', '1', '11:30:00', '7', '14:00:00', '1', '16:30:00', '1', '19:00:00', '1', '21:30:00', '1', NULL, '', NULL, '', NULL, '', 'yes', '2017-12-30', '2017-12-29 23:45:12');

-- --------------------------------------------------------

--
-- Table structure for table `mtfpcs`
--

CREATE TABLE `mtfpcs` (
  `id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `pc_id` varchar(151) NOT NULL,
  `date` date NOT NULL,
  `day_name` varchar(41) NOT NULL,
  `m1t` time DEFAULT NULL,
  `m1` varchar(51) NOT NULL,
  `m2t` time DEFAULT NULL,
  `m2` varchar(51) NOT NULL,
  `m3t` time DEFAULT NULL,
  `m3` varchar(51) NOT NULL,
  `m4t` time DEFAULT NULL,
  `m4` varchar(51) NOT NULL,
  `m5t` time DEFAULT NULL,
  `m5` varchar(51) NOT NULL,
  `m6t` time DEFAULT NULL,
  `m6` varchar(51) NOT NULL,
  `m7t` time DEFAULT NULL,
  `m7` varchar(51) NOT NULL,
  `m8t` time DEFAULT NULL,
  `m8` varchar(51) NOT NULL,
  `m9t` time DEFAULT NULL,
  `m9` varchar(51) NOT NULL,
  `m10t` time DEFAULT NULL,
  `m10` varchar(51) NOT NULL,
  `m11t` time DEFAULT NULL,
  `m11` varchar(51) NOT NULL,
  `m12t` time DEFAULT NULL,
  `m12` varchar(51) NOT NULL,
  `created` date NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtfpcs`
--

INSERT INTO `mtfpcs` (`id`, `user_id`, `pc_id`, `date`, `day_name`, `m1t`, `m1`, `m2t`, `m2`, `m3t`, `m3`, `m4t`, `m4`, `m5t`, `m5`, `m6t`, `m6`, `m7t`, `m7`, `m8t`, `m8`, `m9t`, `m9`, `m10t`, `m10`, `m11t`, `m11`, `m12t`, `m12`, `created`, `modified`) VALUES
(1, 195, '', '2017-12-27', 'Wednesday', '00:00:00', 'MVB4', '03:00:00', 'MVB5', '06:00:00', 'MVB6', '09:00:00', 'MVB7', '11:30:00', 'MVB8', '14:00:00', 'MVB9', '16:30:00', 'MVB10', '19:00:00', 'MVB11', '21:30:00', 'MVB12', NULL, '', NULL, '', NULL, '', '2017-12-26', '2017-12-29 02:32:58'),
(2, 83, '', '2017-12-26', 'Tuesday', '00:00:00', 'MVH55', '03:00:00', 'MVB1', '06:00:00', 'MVB2', '09:00:00', 'MVB3', '11:30:00', 'MVB4', '14:00:00', 'MVB5', '16:30:00', 'MVB6', '19:00:00', 'MVB7', '21:30:00', 'MVB8', NULL, '', NULL, '', NULL, '', '0000-00-00', '2017-12-29 21:39:35'),
(3, 185, '', '2017-12-25', 'Monday', '00:00:00', 'MVH4', '03:00:00', 'MVA9', '06:00:00', 'MVA10', '09:00:00', 'MVA11', '11:30:00', 'MVA12', '14:00:00', 'MVB1', '16:30:00', 'MVB2', '19:00:00', 'MVB3', '21:30:00', 'MVB4', NULL, '', NULL, '', NULL, '', '2017-12-27', '2017-12-26 04:02:06'),
(4, 195, '192.168.50.241 Developer 2017-12-26 06:05:12am Faruk', '2017-12-23', 'Saturday', '00:00:00', 'MVH2', '03:00:00', 'MVA1', '06:00:00', 'MVA2', '09:00:00', 'MVA3', '11:30:00', 'MVA4', '14:00:00', 'MVA5', '16:30:00', 'MVA6', '19:00:00', 'MVA7', '21:30:00', 'MVA8', NULL, '', NULL, '', NULL, '', '2017-12-26', '2017-12-26 03:59:05'),
(5, 195, '192.168.50.241 Developer 2017-12-26 06:57:43am Faruk', '2017-12-24', 'Sunday', '00:00:00', 'MVH3', '03:00:00', 'MVA5', '06:00:00', 'MVA6', '09:00:00', 'MVA7', '11:30:00', 'MVA8', '14:00:00', 'MVA9', '16:30:00', 'MVA10', '19:00:00', 'MVA11', '21:30:00', 'MVA12', NULL, '', NULL, '', NULL, '', '2017-12-26', '2017-12-26 04:00:07'),
(6, 195, '192.168.50.241 Developer 2017-12-26 08:05:59am Faruk', '2017-12-21', 'Thursday', '00:00:00', 'MVH7', '03:00:00', 'MVB9', '06:00:00', 'MVB10', '09:00:00', 'MVB11', '11:30:00', 'MVB12', '14:00:00', 'MVB13', '16:30:00', 'MVB14', '19:00:00', 'MVB15', '21:30:00', 'MVB16', NULL, '', NULL, '', NULL, '', '2017-12-26', '2017-12-26 04:04:16'),
(7, 195, '192.168.50.241 Developer 2017-12-26 08:08:23am Faruk', '2017-12-22', 'Friday', '00:00:00', 'MVH1', '03:00:00', 'MVB13', '06:00:00', 'MVB14', '09:00:00', 'MVB15', '11:30:00', 'MVB16', '14:00:00', 'MVB17', '16:30:00', 'MVA2', '19:00:00', 'MVA3', '21:30:00', 'MVA4', NULL, '', NULL, '', NULL, '', '2017-12-26', '2017-12-29 02:33:15');

-- --------------------------------------------------------

--
-- Table structure for table `others_payments`
--

CREATE TABLE `others_payments` (
  `id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `technician_id` int(15) NOT NULL,
  `note` text NOT NULL,
  `payamount` float NOT NULL,
  `payment_date` date NOT NULL,
  `status` enum('open','canceled','done') NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `others_payments`
--

INSERT INTO `others_payments` (`id`, `user_id`, `technician_id`, `note`, `payamount`, `payment_date`, `status`, `modified`, `created`) VALUES
(1, 87, 89, 'gjj', 11, '0000-00-00', 'done', '2016-08-04 02:21:52', '2016-08-04'),
(8, 87, 93, 'fghfg', 43, '2016-08-19', 'done', '2016-08-04 02:08:14', '2016-08-04'),
(9, 87, 94, 'ljsdaflkj asdfljkl \r\npipwer\r\njlj', 13, '2016-08-31', 'done', '2016-08-04 02:21:44', '2016-08-04'),
(10, 87, 94, 'gfjhfg', 47, '2016-08-15', 'canceled', '2016-08-04 02:08:18', '2016-08-04'),
(11, 87, 88, 'gjksdfgs\r\ngfh\r\ngfjfg', 17, '2016-08-13', 'done', '2016-08-04 11:29:06', '2016-08-04'),
(12, 87, 20, 'ghd', 43, '2016-08-19', 'open', '2016-08-04 02:22:36', '2016-08-04'),
(13, 83, 114, 'test ', 29, '2016-08-31', 'done', '2016-08-04 03:26:21', '2016-08-04'),
(14, 128, 132, 'NEW INSTALLATION', 25, '2017-02-26', 'done', '2017-08-10 12:12:53', '2017-02-26'),
(15, 128, 132, 'ADDITIONAL', 15, '2017-02-26', 'open', '2017-02-26 04:08:21', '2017-02-26'),
(16, 9, 173, 'Payment for troubleshoot', 20, '2017-06-21', 'done', '2017-06-21 01:22:32', '2017-06-21');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `name` varchar(51) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `created`) VALUES
(4, 'Full package', '2015-07-11 02:44:37'),
(5, 'NABC special package', '2015-07-11 02:44:49'),
(6, 'New York', '2016-02-02 10:59:27'),
(11, 'New Jersey', '2016-02-02 07:14:52'),
(12, 'Michigan', '2016-02-02 07:15:01'),
(13, 'Texas', '2016-02-02 07:15:10'),
(14, 'Canada', '2016-02-02 07:15:17'),
(15, 'UK', '2016-02-02 07:15:26');

-- --------------------------------------------------------

--
-- Table structure for table `package_customers`
--

CREATE TABLE `package_customers` (
  `id` int(15) NOT NULL,
  `auto_recurring_failed` int(15) NOT NULL DEFAULT '0',
  `extra_invoice` varchar(100) NOT NULL,
  `issue_id` int(3) DEFAULT NULL,
  `issue_date` date NOT NULL,
  `c_acc_no` int(15) DEFAULT NULL,
  `service_type` char(20) DEFAULT NULL,
  `first_name` varchar(25) DEFAULT NULL,
  `middle_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `address` varchar(1000) NOT NULL,
  `house_no` varchar(51) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `apartment` varchar(50) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `new_addr` text,
  `stbs` int(2) DEFAULT NULL,
  `zip` varchar(11) DEFAULT NULL,
  `home` varchar(20) DEFAULT NULL,
  `cell` varchar(20) DEFAULT NULL,
  `fax` varchar(17) DEFAULT NULL,
  `email` varchar(41) DEFAULT NULL,
  `mac` varchar(500) DEFAULT NULL,
  `cancel_mac` varchar(51) DEFAULT NULL,
  `shipment_equipment` varchar(200) DEFAULT NULL,
  `shipment_note` text,
  `remote_no` int(2) DEFAULT NULL,
  `attachment` varchar(50) DEFAULT NULL,
  `system` varchar(500) DEFAULT NULL,
  `referred` int(15) DEFAULT NULL,
  `referred_phone` varchar(111) DEFAULT NULL,
  `deposit` float DEFAULT NULL,
  `monthly_bill` float DEFAULT NULL,
  `others` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `payment_type` varchar(20) DEFAULT NULL COMMENT 'card (debit/credit)',
  `money_order` varchar(20) DEFAULT NULL,
  `ch_signature` varchar(71) DEFAULT NULL COMMENT 'card holder signature',
  `id_card` varchar(20) DEFAULT NULL,
  `card_type` varchar(27) DEFAULT NULL,
  `repair_type` enum('old','new') DEFAULT NULL,
  `bank_name` varchar(31) DEFAULT NULL,
  `card_username` varchar(71) DEFAULT NULL,
  `card_check_no` varchar(31) DEFAULT NULL,
  `exp_date` varchar(11) DEFAULT NULL,
  `cvv_code` varchar(17) DEFAULT NULL,
  `charge_amount` float DEFAULT NULL,
  `address_on_card` varchar(41) DEFAULT NULL,
  `same_address` varchar(1000) DEFAULT NULL,
  `equipment_router` varchar(11) DEFAULT NULL,
  `equipment_top_box` varchar(11) DEFAULT NULL,
  `equipment_hdmi` varchar(11) DEFAULT NULL,
  `equipment_wi_fi` varchar(11) DEFAULT NULL,
  `equipment_ethernet` varchar(11) DEFAULT NULL,
  `equipment_remote` varchar(11) DEFAULT NULL,
  `equipment_adapter` varchar(11) DEFAULT NULL,
  `warranty_hdmi_av` varchar(11) DEFAULT NULL,
  `warranty_adapter` varchar(11) DEFAULT NULL,
  `warranty_remote` varchar(11) DEFAULT NULL,
  `wire` varchar(20) DEFAULT NULL,
  `current_isp_speed` varchar(31) DEFAULT NULL,
  `current_service_provider` varchar(21) DEFAULT NULL,
  `install_method` varchar(15) DEFAULT NULL,
  `date` date NOT NULL,
  `technician_name` varchar(11) DEFAULT NULL,
  `ethernet_wire` varchar(11) DEFAULT NULL,
  `shipment` int(1) DEFAULT '0',
  `driving_socialsecurity` varchar(50) DEFAULT NULL,
  `customer_utility` varchar(25) DEFAULT NULL,
  `cfirst_name` varchar(50) DEFAULT NULL,
  `clast_name` varchar(50) DEFAULT NULL,
  `czip` varchar(30) DEFAULT NULL,
  `follow_up` varchar(10) DEFAULT '0',
  `follow_date` varchar(40) DEFAULT NULL,
  `c_signature` varchar(31) CHARACTER SET utf8 COLLATE utf8_estonian_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `ip` varchar(21) DEFAULT NULL,
  `status` varchar(501) DEFAULT NULL,
  `mac_status` varchar(15) NOT NULL,
  `approved` int(1) DEFAULT '0',
  `ticket_generated` tinyint(4) DEFAULT '0',
  `printed` tinyint(4) DEFAULT '0',
  `dealer` varchar(101) DEFAULT NULL,
  `psetting_id` int(11) DEFAULT '0',
  `custom_package_id` int(11) DEFAULT NULL,
  `user_id` int(15) DEFAULT '0',
  `comments` text,
  `tech_comments` text NOT NULL,
  `hold_date` varchar(21) DEFAULT NULL,
  `unhold_date` varchar(21) DEFAULT NULL,
  `cancelled_date` varchar(21) DEFAULT NULL,
  `pickup_date` varchar(21) DEFAULT NULL,
  `reconnect_date` varchar(21) DEFAULT NULL,
  `reactive_date` varchar(21) DEFAULT NULL,
  `schedule_date` varchar(31) DEFAULT NULL,
  `troubleshoot_moving_issue` varchar(15) DEFAULT NULL COMMENT 'trouble shoot related issue',
  `troubleshoot_moving_date` date DEFAULT NULL,
  `auto_r` enum('yes','no') DEFAULT NULL COMMENT 'auto recurring',
  `next_recurring` enum('yes','no') NOT NULL DEFAULT 'no',
  `next_r_duration` char(3) DEFAULT NULL,
  `next_r_date` date DEFAULT NULL,
  `next_r_payable_amount` float NOT NULL,
  `next_r_comment` varchar(551) NOT NULL,
  `recurring_date` int(2) NOT NULL,
  `r_duration` char(3) DEFAULT NULL COMMENT 'auto recurring',
  `r_form` date DEFAULT NULL,
  `package_exp_date` date DEFAULT NULL,
  `installation_date` text NOT NULL,
  `installed_by` text NOT NULL,
  `created` date DEFAULT NULL,
  `modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `technician_id` int(15) DEFAULT NULL,
  `from` varchar(21) DEFAULT NULL COMMENT 'from date for technician',
  `to` varchar(21) DEFAULT NULL COMMENT 'this fields for technician  to date',
  `schedule` varchar(31) DEFAULT NULL,
  `invoice_no` varchar(200) DEFAULT NULL,
  `invoice_created` tinyint(4) DEFAULT '0',
  `payable_amount` float NOT NULL,
  `ins_by` varchar(101) DEFAULT NULL,
  `tech_payment` tinyint(4) DEFAULT '0',
  `reward6` varchar(101) NOT NULL,
  `reward12` varchar(101) NOT NULL,
  `pc_id` varchar(151) DEFAULT NULL,
  `post_pone` char(1) NOT NULL DEFAULT '0' COMMENT 'customer 1 means post pone , 0 means no',
  `troubleshoot_postpone` int(1) NOT NULL DEFAULT '0' COMMENT 'trouble shoot 1 means you have reshedule , 0 means schedule',
  `troubleshoot_shipment` char(3) DEFAULT NULL COMMENT 'data type trouble shoot or shipment'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `package_customers`
--

INSERT INTO `package_customers` (`id`, `auto_recurring_failed`, `extra_invoice`, `issue_id`, `issue_date`, `c_acc_no`, `service_type`, `first_name`, `middle_name`, `last_name`, `address`, `house_no`, `street`, `apartment`, `city`, `state`, `new_addr`, `stbs`, `zip`, `home`, `cell`, `fax`, `email`, `mac`, `cancel_mac`, `shipment_equipment`, `shipment_note`, `remote_no`, `attachment`, `system`, `referred`, `referred_phone`, `deposit`, `monthly_bill`, `others`, `total`, `payment_type`, `money_order`, `ch_signature`, `id_card`, `card_type`, `repair_type`, `bank_name`, `card_username`, `card_check_no`, `exp_date`, `cvv_code`, `charge_amount`, `address_on_card`, `same_address`, `equipment_router`, `equipment_top_box`, `equipment_hdmi`, `equipment_wi_fi`, `equipment_ethernet`, `equipment_remote`, `equipment_adapter`, `warranty_hdmi_av`, `warranty_adapter`, `warranty_remote`, `wire`, `current_isp_speed`, `current_service_provider`, `install_method`, `date`, `technician_name`, `ethernet_wire`, `shipment`, `driving_socialsecurity`, `customer_utility`, `cfirst_name`, `clast_name`, `czip`, `follow_up`, `follow_date`, `c_signature`, `role_id`, `ip`, `status`, `mac_status`, `approved`, `ticket_generated`, `printed`, `dealer`, `psetting_id`, `custom_package_id`, `user_id`, `comments`, `tech_comments`, `hold_date`, `unhold_date`, `cancelled_date`, `pickup_date`, `reconnect_date`, `reactive_date`, `schedule_date`, `troubleshoot_moving_issue`, `troubleshoot_moving_date`, `auto_r`, `next_recurring`, `next_r_duration`, `next_r_date`, `next_r_payable_amount`, `next_r_comment`, `recurring_date`, `r_duration`, `r_form`, `package_exp_date`, `installation_date`, `installed_by`, `created`, `modified`, `technician_id`, `from`, `to`, `schedule`, `invoice_no`, `invoice_created`, `payable_amount`, `ins_by`, `tech_payment`, `reward6`, `reward12`, `pc_id`, `post_pone`, `troubleshoot_postpone`, `troubleshoot_shipment`) VALUES
(2555, 0, '', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'old_ready', '', 0, 0, 0, NULL, 0, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '191', '2018-05-31', NULL, 'no', NULL, NULL, 0, '', 0, NULL, NULL, NULL, '', '', '2018-05-08', '2018-05-08 03:25:18', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, '', '', NULL, '0', 0, 'tro'),
(4796, 0, '', 0, '0000-00-00', 0, '6 MONTHS', 'MD', 'KHURSHID', 'ALI', '', '407', 'PINE ST', '3R', 'BROOKLYN', 'NY', '', 2, '11208', '3476123356', '3476082108', '', '', '["4645645picked up","0000000","852147","965874","81383B","813A99 (Note)"]', '', '', '', 0, '', '["CMS1","PORTAL1","PORTAL1","PORTAL","CMS1","CMS2"]', 0, '', 0, 0, 0, 0, '', '', '', '', '', 'old', '', '', '', '2018-03-01', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2014-07-04', NULL, '', 0, '', '', '', '', '', '0', '0000-00-00', '', 0, '', 'active', 'Active', 0, 0, 0, '', 0, 11298, 0, 'HE ALREADY SEND US CHECK.\r\n\r\nCITI BANK\r\n$240\r\n\r\n\r\nINSTALLATION PAYMENT PAID BY ARIF ON 4TH JUL.WE DIDN''T GET THE BILL. SO OPENED HIS BOX ON 10TH AUG. RUBA 7/23/2014', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', NULL, NULL, 'no', '', NULL, NULL, 0, '', 0, '', '0000-00-00', '2018-02-28', '0000-00-00', '', '2016-09-27', '2018-08-17 20:15:37', 0, '', '', NULL, '', 0, 0, '', 0, '', '', '', '0', 0, NULL),
(4797, 0, '', 154, '2018-07-20', 0, '3 MONTHS', 'MD', '', 'LASKER', '', '166 05', 'HIGHLAND AVE', '6H', 'JAMAICA', 'NY', '', 3, '11432', '3472945153', '7182004595', '', '', '["8139ki","8137FC","813AA9","81399B"]', '["8139ki"]', '', '', NULL, '', '["CMS2","CMS1","CMS2","CMS2"]', 0, '', NULL, NULL, NULL, 0, '', '', '', '', '', 'new', '', '', '', '/', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2014-05-10', NULL, '', 0, '', '', '', '', '', '0', '0000-00-00', '', 0, '', 'old_ready', 'Active', 0, 0, 1, '', 1, 9516, 83, 'test.....', 'test.....', '04/29/2018', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '2018-05-03', '154', NULL, 'no', '', NULL, NULL, 0, '', 0, '', '0000-00-00', '2017-10-31', '0000-00-00', '', '2016-09-27', '2018-08-08 01:01:18', 173, '5:02:45 AM', '8:02:45 PM', NULL, '', 0, 0, '', 0, '', '', '', '0', 0, NULL),
(4798, 0, '', 21, '0000-00-00', 0, '3 MONTHS', 'MD', 'LIAQUAT', 'ALI', '', '37 16', '83RD ST', '', 'JACKSON HEIGHTS', 'NY', '', 1, '11372', '6319922012', '2177669306', '', 'MDLAIQUATALI@YAHOO.COM', '["7412589","1A:79:2B:45:2B"]', '["0"]', '', '', NULL, '', '["PORTAL","PORTAL"]', 0, '', NULL, NULL, NULL, 0, '', '', '', '', '', 'old', '', '', '', '2018-01-01', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2015-05-15', NULL, '', 0, '', '', '', '', '', '0', '0000-00-00', '', 0, '', 'Request to hold', 'Active', 0, 0, 1, '', 13, 0, 199, 'hold pls........', '', '04/13/2018', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', NULL, NULL, 'no', '', NULL, NULL, 0, '', 0, '', '0000-00-00', '2017-12-31', '0000-00-00', '', '2016-09-27', '2018-04-12 00:48:55', 0, '', '', NULL, '0', 0, 0, '', 0, '', '', '192.168.50.119 Developer 2018-04-12 06:46:06am Md. Ayub azahar', '0', 0, NULL),
(4799, 0, '', 0, '0000-00-00', 0, '3 MONTHS', 'MD', 'LITON', 'ALIM', '', '12115', 'GALLAGHER ST', '', 'HAMTRAMCK', 'MI', '', 1, '48201', '313-289-0128', '3132890128', '', '', '["852144","4A404F"]', '', '', '', 0, '', '["CMS1","CMS1"]', 0, '', 0, 0, 0, 75, '', '', '', '', '', 'old', '', '', '', '16-12-1', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', NULL, '', 0, '', '', '', '', '', '0', '0000-00-00', '', 0, '', 'post pone', 'Active', 0, 0, 0, '', 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', NULL, NULL, NULL, '', '3', '2018-01-02', 21, 'Test data', 0, '', '0000-00-00', '0000-00-00', '0000-00-00', '', '2016-09-27', '2018-04-17 05:31:06', 0, '', '', NULL, '', 1, 0, '', 0, '', '', '', '0', 0, NULL),
(4800, 0, '', 21, '0000-00-00', 0, '3 MONTHS', 'MD', 'LUKMAN', 'KHA', '', '81 15', '101 AVE', 'BASEMENT', 'OZONE PARK', 'NY', '', 1, '11416', '3472645603', '7188480965', '', '', '["8133FF","8133FF"]', '["8133FF"]', 'OLD REMOTE', '', NULL, '', '["PORTAL","CMS1"]', 0, '', NULL, NULL, NULL, 0, '', '', '', '', '', 'old', '', '', '', '2017-09-01', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2014-06-17', NULL, '', 0, '', '', '', '', '', '0', '0000-00-00', '', 0, '', 'requested', 'Active', 0, 0, 0, '', 0, 0, 83, 'sdf', '', '04/28/2018', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', NULL, NULL, NULL, '', '2', '2018-01-02', 51, 'Test data', 0, '', '0000-00-00', '2017-08-31', '0000-00-00', '', '2016-09-27', '2018-04-27 04:44:57', 0, '', '', NULL, '0', 1, 0, '', 0, '', '', '', '0', 0, NULL),
(4801, 0, '', 154, '2018-07-06', 0, '6 MONTHS', 'MD', 'LUTFOR', 'RAHMAN', '', '42 32', 'ITHACA STREET', '1SEMI BASEMENT', 'ELMHURST', 'NY', '', 1, '11373', '6466916133', '3478228482', '', '', '["1A:79:32:9A:91"]', '', '', '', 0, '', '["PORTAL"]', 0, '', 0, 0, 0, 0, '', '', '', '', '', 'old', '', '', '', '2018-04-01', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2015-12-15', NULL, '', 0, '', '', '', '', '', '0', '0000-00-00', '', 0, '', 'old_ready', '', 0, 0, 0, '', 4, 0, 0, '', 'here', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '154', NULL, 'no', '', NULL, NULL, 0, '', 0, '', '0000-00-00', '2018-03-31', '0000-00-00', '', '2016-09-27', '2018-07-06 05:44:34', 0, '', '', NULL, '', 0, 0, '', 0, '', '', '', '0', 0, NULL),
(4802, 0, '', 5, '0000-00-00', 0, '6 MONTHS', 'MD', 'M', 'ALAM', '', '584', 'UNION AVE', '3A', 'BRONX', 'NY', '', 1, '10455', '6463387920', '3478206614', '', '', '["46:20:2A"]', '', 'NEW REMOTE', 'REMOTE NOT WORKING', 1, '', '["PORTAL1"]', 0, '', NULL, NULL, NULL, 0, '', '', '', '', '', 'new', '', '', '', '2017-11-01', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2015-06-29', NULL, '', 2, '', '', '', '', '', '0', '0000-00-00', '', 0, '', 'done', '', 1, 0, 1, '', 3, 0, 119, '<span style="color:#000000; font-family:arial; font-size:100%">$10 ADJUST WITH NEXT BILL</span>', 'done by tech.......', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '2018-07-11', NULL, '2018-07-11', 'no', '', NULL, NULL, 0, '', 0, '', '0000-00-00', '2017-10-31', '2018-07-07', '83', '2016-09-27', '2018-07-06 21:14:17', 173, '1:10:30 AM', '1:10:30 PM', NULL, '', 0, 0, '', 0, '1 month free', '', '', '1', 1, ''),
(4803, 0, '', 21, '0000-00-00', 0, '6 MONTHS', 'MD', 'M', 'ALAM', '', '10 84', 'FULTON ST', '2ND FL', 'BROOKLYN', 'NY', '', 2, '11238', '6465958618', '3472612654', '3472824232', '', '["4A401C"]', '["4A3D4C","4A401C "]', '', '', NULL, '', '["CMS1"]', 0, '', NULL, NULL, NULL, 0, '', '', '', '', '', 'old', '', '', '', '2017-01-01', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2017-01-06', NULL, '', 0, '', '', '', '', '', '0', '0000-00-00', '', 0, '', 'Request to hold', 'Hold', 0, 0, 0, '', 0, 0, 83, 'adf', '', '04/11/2018', '0000-00-00', '0000-00-00', '0000-00-00', '04/16/2018', '', '', NULL, NULL, 'no', '', NULL, NULL, 0, '', 0, '', '0000-00-00', '2017-01-06', '0000-00-00', '', '2016-09-27', '2018-04-28 00:46:39', 0, '', '', NULL, '', 0, 0, '', 0, '', '', '', '0', 0, NULL),
(4804, 0, '', 154, '2018-02-16', 0, '6 MONTHS', 'MD', 'M', 'ALAMGIR', '', '24 16', '38 AVE', '3H', 'LONG ISLAND CITY', 'NY', '', 3, '11101', '917-945-5386', '6464008523', '', 'redwonh@yahoo.com', '["4A42CA","1A:79:33:14:56","812F5D"]', '', '', '', 0, '', '["CMS1","PORTAL","CMS1"]', 0, '', 0, 0, 0, 0, '', '', '', '', '', 'old', '', '', '', '/', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', NULL, '', 0, '', '', '', '', '', '0', '0000-00-00', '', 0, '', 'done', '', 0, 0, 0, '', 0, 4525, 0, 'CANCEL FROM 6/16/2016...........RAHAT', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', NULL, NULL, 'no', '', NULL, NULL, 0, '', 0, '', '0000-00-00', '0000-00-00', '0000-00-00', '', '2016-10-02', '2018-02-15 23:27:15', 0, '', '', NULL, '', 0, 0, '', 0, '', '', '', '0', 0, NULL),
(7262, 0, '', NULL, '0000-00-00', NULL, NULL, 'CHITTA52', 'RANJAN', 'CHAKRAVORTY', '', '', 'KINGSTONE PLACE', '', 'JAMAICA', 'NY', NULL, NULL, '11432', '17188644385', '', '', '', NULL, NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '/', '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '2018-06-29', NULL, NULL, 0, '', NULL, '', '', '', '0', '', NULL, NULL, NULL, 'requested', '', 0, 0, 0, '', NULL, NULL, 83, 'test other data', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, 0, '', 0, NULL, NULL, NULL, '', '', '2018-06-29', '2018-06-29 01:05:53', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, '', '', NULL, '0', 0, NULL),
(7263, 0, '', NULL, '0000-00-00', NULL, NULL, 'ABDUL', 'ahad', 'BHUIYAN', '', '', 'STONY POINT PLACE', '', 'POMONA', 'CA', NULL, NULL, '91769', '8185727476', '', '', 'isshermin@gmail.com', NULL, NULL, '', '', NULL, '', NULL, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'new', NULL, NULL, '', '/', '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '2018-06-29', NULL, NULL, 0, '', NULL, '', '', '', '0', '08/31/2018', NULL, NULL, NULL, 'requested', '', 0, 0, 0, '', NULL, NULL, 83, 'Follow up', '', NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-11', NULL, NULL, NULL, 'no', NULL, NULL, 0, '', 0, NULL, NULL, NULL, '', '', '2018-06-29', '2018-06-29 01:53:20', 173, '5:51:30 AM', '5:51:30 PM', NULL, NULL, 0, 0, NULL, 0, '', '', NULL, '0', 0, NULL),
(7264, 0, '', NULL, '0000-00-00', NULL, NULL, 'ABDUL', 'KABIR', 'AKHAND', '', '782', 'CALDWELL AVE', '', 'VALLEY STREAM', 'NY', NULL, NULL, '11581', '678-799-0667', '5168252464', '', '', NULL, NULL, '', '', NULL, '', NULL, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'new', NULL, NULL, '', '/', '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '2018-07-03', NULL, NULL, 0, '', NULL, '', '', '', '0', '08/31/2018', NULL, NULL, NULL, 'rescheduled', '', 0, 0, 0, '', NULL, NULL, 83, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-18', NULL, '2018-07-18', NULL, 'no', NULL, NULL, 0, '', 0, NULL, NULL, NULL, '', '', '2018-07-03', '2018-07-03 04:57:59', 173, '8:55:45 AM', '8:55:45 PM', NULL, NULL, 0, 0, NULL, 0, '', '', NULL, '1', 0, NULL),
(7265, 0, '', NULL, '0000-00-00', NULL, NULL, 'CHITTA', 'RANJAN', 'CHAKRAVORTY', '', '87 50', 'KINGSTONE PLACE', '4B', 'JAMAICA', 'NY', NULL, NULL, '11432', '718-864-4385', '6315688278', '', '', NULL, NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'new', NULL, NULL, '', '/', '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '2018-07-04', NULL, NULL, 1, '', NULL, '', '', '', '0', '', NULL, NULL, NULL, 'done', '', 1, 0, 0, '', NULL, NULL, 83, 'Test shipment data.....', 'Complete task.......', NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-19', NULL, '2018-07-19', NULL, 'no', NULL, NULL, 0, '', 0, NULL, NULL, NULL, '2018-07-04', '83', '2018-07-04', '2018-07-03 23:13:57', 173, '3:05:00 AM', '3:05:00 PM', NULL, NULL, 0, 0, NULL, 0, '', '', NULL, '0', 0, NULL),
(7266, 0, '', NULL, '0000-00-00', NULL, NULL, 'CHITTA_', 'RANJAN_', 'CHAKRAVORTY', '', '87 50', 'KINGSTONE PLACE', '4B', 'JAMAICA', 'NY', NULL, NULL, '11432', '718-864-4385', '63156882781', '', '', NULL, NULL, '', '', NULL, '', NULL, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'new', NULL, NULL, '', '/', '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '2018-07-04', NULL, NULL, 0, '', NULL, '', '', '', '0', '', NULL, NULL, NULL, 'done', '', 1, 0, 0, '', NULL, NULL, 83, 'Test follow up data.....', 'complete.....', NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-15', NULL, '2018-07-15', NULL, 'no', NULL, NULL, 0, '', 0, NULL, NULL, NULL, '2018-07-04', '83', '2018-07-04', '2018-07-03 23:16:40', 173, '2:59:15 AM', '2:59:15 PM', NULL, NULL, 0, 0, NULL, 0, '', '', NULL, '0', 0, NULL),
(7267, 0, '', NULL, '0000-00-00', NULL, NULL, 'CHITTA_d', 'RANJAN_d', 'CHAKRAVORTY', '', '87 50', 'KINGSTONE PLACE', '4B', 'JAMAICA', 'NY', NULL, NULL, '11432', '718-864-4385', '6315688181', '', '', NULL, NULL, '', '', NULL, '', NULL, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'new', NULL, NULL, '', '/', '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '2018-07-04', NULL, NULL, 0, '', NULL, '', '', '', '0', '', NULL, NULL, NULL, 'done', '', 1, 0, 0, 'Ahsan', NULL, NULL, 83, 'Test dealer up data.....', 'Dealer data test......', NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-17', NULL, '2018-07-17', NULL, 'no', NULL, NULL, 0, '', 0, NULL, NULL, NULL, '2018-07-04', '83', '2018-07-04', '2018-07-03 23:00:20', 173, '2:56:00 AM', '2:56:00 PM', NULL, NULL, 0, 0, NULL, 0, '', '', NULL, '1', 0, NULL),
(7268, 0, '', NULL, '0000-00-00', NULL, NULL, 'CHITTA_no', 'RANJAN_no', 'CHAKRAVORTY', '', '87 50', 'KINGSTONE PLACE', '4B', 'JAMAICA', 'NY', NULL, NULL, '11432', '718-864-4385', '6314688181', '', '', NULL, NULL, '', '', NULL, '', NULL, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'new', NULL, NULL, '', '/', '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '2018-07-04', NULL, NULL, 0, '', NULL, '', '', '', '0', '', NULL, NULL, NULL, 'done', '', 1, 0, 0, '', NULL, NULL, 83, 'Test data.....', 'Installation complete......:-)', NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-15', NULL, '2018-07-15', NULL, 'no', NULL, NULL, 0, '', 0, NULL, NULL, NULL, '2018-07-04', '83', '2018-07-04', '2018-07-03 23:08:14', 173, '1:54:00 AM', '1:54:00 PM', NULL, NULL, 0, 0, NULL, 0, '', '', NULL, '1', 0, NULL),
(7269, 0, '', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'canceled', '', 0, 0, 0, NULL, 0, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, 0, '', 0, NULL, NULL, NULL, '', '', '2018-07-04', '2018-07-03 23:21:56', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, '', '', NULL, '0', 0, NULL),
(7270, 0, '', NULL, '0000-00-00', NULL, NULL, 'Ahsan', '', '', '', '', 'KINGSTONE PLACE', '', 'JAMAICA', 'NY', NULL, NULL, '11432', '7188644385', '', '', '', NULL, NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '/', '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '2018-07-04', NULL, NULL, 0, '', NULL, '', '', '', '1 ', '07/31/2018', NULL, NULL, NULL, 'requested', '', 0, 0, 0, '', NULL, NULL, 83, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, 0, '', 0, NULL, NULL, NULL, '', '', '2018-07-04', '2018-07-04 05:18:44', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, '', '', NULL, '0', 0, NULL),
(7271, 0, '', NULL, '0000-00-00', NULL, NULL, 'A', 'M', 'Kamrul', '', '3250', '70ST', '3K', 'EAST ELMHURST', 'NY', NULL, NULL, '11370', '7184581109', '9172924065', '', 'Kamrul@YAHOO.COM', NULL, NULL, '', '', NULL, '', NULL, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '/', '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '2018-08-08', NULL, NULL, 0, '', NULL, '', '', '', '0', '', NULL, NULL, NULL, 'requested', '', 0, 0, 0, '', 9, NULL, 83, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, 0, '', 0, NULL, NULL, NULL, '', '', '2018-08-08', '2018-08-08 04:31:51', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, '', '', NULL, '0', 0, NULL),
(7272, 0, '', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, '', 0, 0, 1, NULL, 0, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, 0, '', 0, NULL, NULL, NULL, '', '', '2018-09-10', '2018-09-10 02:31:42', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, '', '', NULL, '0', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `paid_customers`
--

CREATE TABLE `paid_customers` (
  `id` int(11) NOT NULL,
  `psetting_id` int(11) NOT NULL,
  `fname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `lname` varchar(50) NOT NULL,
  `cell` varchar(13) NOT NULL,
  `card_no` varchar(100) NOT NULL,
  `zip_code` varchar(50) NOT NULL,
  `due` float NOT NULL,
  `exp_date` varchar(20) NOT NULL,
  `package_exp_date` date NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('canceled','hold','continue','reconnect') NOT NULL DEFAULT 'continue'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paid_customers`
--

INSERT INTO `paid_customers` (`id`, `psetting_id`, `fname`, `lname`, `cell`, `card_no`, `zip_code`, `due`, `exp_date`, `package_exp_date`, `created`, `status`) VALUES
(1, 0, 'Ahmodul K', 'Barobhuiya', '01882514783', '38000000000006', '11365', 1, '09/16', '2016-02-01', '2016-02-15 20:23:20', 'hold'),
(2, 0, 'Syed S', 'Ahmed', '01882514787', '5424000000000015\n', '11365', 1, '04/19', '2016-01-04', '2016-02-17 18:13:24', 'reconnect'),
(3, 0, 'Syed ', 'Ahmed', '01882514784', '60115400566762811', '11365', 1, '08/19', '2016-01-01', '2016-02-15 18:08:59', 'canceled'),
(4, 0, 'Jay', 'Bari', '01882214783', '4012888818888', '07029', 1, '03/19', '2016-02-08', '2016-02-18 16:40:37', 'canceled'),
(46, 0, 'Md.', 'akter1', '01882514583', '4566', '1111', 654654, '02/17', '0000-00-00', '2016-02-15 20:27:01', 'reconnect'),
(47, 0, 'Md.', 'akter1', '01862514783', '4566', '1111', 654654, '02/17', '1970-01-01', '2016-02-11 14:48:48', 'continue'),
(48, 0, 'Md.', 'akter1', '01882525883', '4566', '1111', 654654, '02/17', '0000-00-00', '2016-02-11 14:49:07', 'continue'),
(49, 0, 'Md.', 'akter1', '01882514765', '4566', '1111', 654654, '02/17', '1970-01-01', '2016-02-11 14:48:56', 'continue'),
(50, 4, 'Md.', 'akter', '01882514357', '54879', '345', 1035, '02/16', '0000-00-00', '2016-02-11 14:49:18', 'continue'),
(51, 3, 'Md.', 'akter', '01882514482', '54879', '345', 702, '02/16', '0000-00-00', '2016-02-11 14:49:31', 'continue'),
(52, 3, 'Md.', 'akter', '01882159783', '54879', '345', 702, '02/16', '2016-08-10', '2016-02-11 14:49:39', 'continue');

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(15) NOT NULL,
  `issue_id` varchar(15) NOT NULL,
  `payment` float NOT NULL,
  `user_id` int(15) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `name` varchar(151) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `name`, `created`, `modified`) VALUES
(1, 195, 'Pen', '2017-12-11 10:00:25', '2017-12-11'),
(2, 195, 'Chair', '2017-12-10 22:40:38', '2017-12-11'),
(4, 195, 'Table', '2017-12-10 23:03:07', '2017-12-11'),
(5, 209, 'Camera', '2017-12-12 13:32:48', '2017-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `psettings`
--

CREATE TABLE `psettings` (
  `id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `duration` int(2) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `amount` float DEFAULT NULL,
  `offer` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `psettings`
--

INSERT INTO `psettings` (`id`, `package_id`, `duration`, `name`, `amount`, `offer`, `created`) VALUES
(1, 4, 1, '1 month package $40', 40, '<ul><li>Bill (For 1st Box): <strong>$40</strong></li><li>Security Deposit (SD): <strong>$50</strong></li><li>Bonus: <strong>N/A</strong></li></ul>', '2016-02-21 18:06:12'),
(2, 4, 3, '3 month package $90', 90, '<ul><li>Bill (For 1st Box): <strong>$90</strong></li><li>Security Deposit (SD): <strong>$50</strong></li><li>Bonus: <strong>N/A</strong></li></ul>', '2016-02-21 18:07:29'),
(3, 4, 6, '6 month package $180', 180, '<ul>\r\n<li>Bill (For 1st Box): <strong>$180</strong></li>\r\n<li>Security Deposit (SD): <strong>$50</strong></li>\r\n<li>Bonus: <strong>1 Months addition or $40 calling card</strong></li>\r\n</ul>', '2016-02-21 18:07:05'),
(4, 4, 12, '1 year package $360', 360, '<ul>\r\n<li>Bill (For 1st Box): <strong>$360</strong></li>\r\n<li>Security Deposit (SD): <strong>$50</strong></li>\r\n<li>Bonus: <strong>3 Months addition or $100 calling card</strong></li>\r\n</ul>', '2016-02-21 18:08:07'),
(5, 5, 1, '1 month package $19.99', 19.99, '<ul>\r\n<li>Bill (For 1st Box): <strong>$19.99</strong></li>\r\n<li>Security Deposit (SD): <strong>$50</strong></li>\r\n<li>Bonus: <strong>N/A</strong></li>\r\n</ul>', '2016-02-21 18:08:48'),
(6, 5, 3, '3 month package $60', 60, '<ul>\r\n<li>Bill (For 1st Box): <strong>$60</strong></li>\r\n<li>Security Deposit (SD): <strong>$50</strong></li>\r\n<li>Bonus: <strong>N/A</strong></li>\r\n</ul>', '2016-02-21 18:09:04'),
(7, 5, 6, '6 month package $120', 120, '<ul>\r\n<li>Bill (For 1st Box): <strong>$120</strong></li>\r\n<li>Security Deposit (SD): <strong>$50</strong></li>\r\n<li>Bonus: <strong>N/A</strong></li>\r\n</ul>', '2016-02-21 18:09:30'),
(8, 5, 12, '1 year package $240', 240, '<ul>\r\n<li>Bill (For 1st Box): <strong>$240</strong></li>\r\n<li>Security Deposit (SD): <strong>$50</strong></li>\r\n<li>Bonus: <strong>N/A</strong></li>\r\n</ul>', '2016-02-21 18:09:50'),
(9, 6, 1, '1 month package $40', 40, '<ul>\r\n<li>Bill (For 1st Box): <strong>$40</strong></li>\r\n<li>Security Deposit (SD): <strong>$50</strong></li>\r\n<li>Bonus: <strong>N/A</strong></li>\r\n</ul>', '2016-02-21 18:10:05'),
(10, 6, 3, '3 month package $90', 90, '<ul>\r\n<li>Bill (For 1st Box): <strong>$90</strong></li>\r\n<li>Security Deposit (SD): <strong>$50</strong></li>\r\n<li>Bonus: <strong>N/A</strong></li>\r\n</ul>', '2016-02-21 18:10:25'),
(11, 6, 6, '6 month package $180', 180, '<ul>\r\n<li>Bill (For 1st Box): <strong>$180</strong></li>\r\n<li>Security Deposit (SD): <strong>$50</strong></li>\r\n<li>Bonus: <strong>1 Months addition or $40 calling card</strong></li>\r\n</ul>', '2016-02-21 18:10:41'),
(12, 6, 12, '1 year package $360', 360, '<ul>\r\n<li>Bill (For 1st Box): <strong>$360</strong></li>\r\n<li>Security Deposit (SD): <strong>$50</strong></li>\r\n<li>Bonus: <strong>3 Months addition or $100 calling card</strong></li>\r\n</ul>', '2016-02-21 18:11:12'),
(13, 11, 1, '1 month package $40', 40, '<ul>\r\n<li>Bill (For 1st Box): <strong>$40</strong></li>\r\n<li>Security Deposit (SD): <strong>$50</strong></li>\r\n<li>Bonus: <strong>N/A</strong></li>\r\n</ul>', '2016-02-21 18:11:20'),
(14, 11, 3, '3 month package $90', 90, '<ul>\r\n<li>Bill (For 1st Box): <strong>$90</strong></li>\r\n<li>Security Deposit (SD): <strong>$50</strong></li>\r\n<li>Bonus: <strong>N/A</strong></li>\r\n</ul>', '2016-02-21 18:11:35'),
(15, 11, 6, '6 month package $180', 180, '<ul>\r\n<li>Bill (For 1st Box): <strong>$180</strong></li>\r\n<li>Security Deposit (SD): <strong>$50</strong></li>\r\n<li>Bonus: <strong>1 Months addition or $40 calling card</strong></li>\r\n</ul>', '2016-02-21 18:12:06'),
(16, 11, 12, '1 year package  $360', 360, '<ul>\r\n<li>Bill (For 1st Box): <strong>$360</strong></li>\r\n<li>Security Deposit (SD): <strong>$50</strong></li>\r\n<li>Bonus: <strong>3 Months addition or $100 calling card</strong></li>\r\n</ul>', '2016-02-21 18:12:47'),
(17, 12, 1, '1 month package $30', 30, '<ul>\r\n<li>Bill (For 1st Box): <strong>$30</strong></li>\r\n<li>Security Deposit (SD): <strong>$50</strong></li>\r\n<li>Bonus: <strong>N/A</strong></li>\r\n</ul>', '2016-02-21 18:13:04'),
(18, 12, 3, '3 month package $75', 75, '<ul>\r\n<li>Bill (For 1st Box): <strong>$75</strong></li>\r\n<li>Security Deposit (SD): <strong>$50</strong></li>\r\n<li>Bonus: <strong>N/A</strong></li>\r\n</ul>', '2016-02-21 18:13:21'),
(19, 12, 6, '6 month package $150', 150, '<ul>\r\n<li>Bill (For 1st Box): <strong>$150</strong></li>\r\n<li>Security Deposit (SD): <strong>$50</strong></li>\r\n<li>Bonus: <strong>1 Months addition or $40 calling card</strong></li>\r\n</ul>', '2016-02-21 18:13:37'),
(20, 12, 12, '1 year package $300', 300, '<ul>\r\n<li>Bill (For 1st Box): <strong>$300</strong></li>\r\n<li>Security Deposit (SD): <strong>$50</strong></li>\r\n<li>Bonus: <strong>3 Months addition or $100 calling card</strong></li>\r\n</ul>', '2016-02-21 18:13:53'),
(21, 13, 1, '1 month package $30', 30, '<ul>\r\n<li>Bill (For 1st Box): <strong>$30</strong></li>\r\n<li>Security Deposit (SD): <strong>$50</strong></li>\r\n<li>Bonus: <strong>N/A</strong></li>\r\n</ul>', '2016-02-21 18:14:04'),
(22, 13, 3, '3 month package $90', 90, '<ul>\r\n<li>Bill (For 1st Box): <strong>$90</strong></li>\r\n<li>Security Deposit (SD): <strong>$50</strong></li>\r\n<li>Bonus: <strong>N/A</strong></li>\r\n</ul>', '2016-02-21 18:14:17'),
(23, 13, 6, '6 month package $180', 180, '<ul>\r\n<li>Bill (For 1st Box): <strong>$180</strong></li>\r\n<li>Security Deposit (SD): <strong>$50</strong></li>\r\n<li>Bonus: <strong>1 Months addition or $40 calling card</strong></li>\r\n</ul>', '2016-02-21 18:14:38'),
(24, 13, 12, '1 year package $ 360 ', 360, '<ul>\r\n<li>Bill (For 1st Box): <strong>$360</strong></li>\r\n<li>Security Deposit (SD): <strong>$50</strong></li>\r\n<li>Bonus: <strong>3 Months addition or $100 calling card</strong></li>\r\n</ul>', '2016-02-21 18:15:03'),
(25, 14, 1, '1 month package $25', 25, '<ul>\r\n<li>Bill (For 1st Box): <strong>c$25</strong></li>\r\n<li>Security Deposit (SD): <strong>c$50</strong></li>\r\n<li>Bonus: <strong>N/A</strong></li>\r\n</ul>', '2016-02-21 18:15:24'),
(26, 14, 3, '1 month package $75', 75, '<ul>\r\n<li>Bill (For 1st Box): <strong>c$75</strong></li>\r\n<li>Security Deposit (SD): <strong>c$50</strong></li>\r\n<li>Bonus: <strong>N/A</strong></li>\r\n</ul>', '2016-02-21 18:15:41'),
(27, 14, 6, '6 month package $150', 150, '<ul>\r\n<li>Bill (For 1st Box): <strong>c$150</strong></li>\r\n<li>Security Deposit (SD): <strong>c$50</strong></li>\r\n<li>Bonus: <strong>1 Months addition or c$40 calling card</strong></li>\r\n</ul>', '2016-02-21 18:15:57'),
(28, 14, 12, '1 year package $300', 300, '<ul>\r\n<li>Bill (For 1st Box): <strong>c$300</strong></li>\r\n<li>Security Deposit (SD): <strong>c$50</strong></li>\r\n<li>Bonus: <strong>3 Months addition or c$100 calling card</strong></li>\r\n</ul>', '2016-02-21 18:16:18'),
(29, 15, 12, '1 year package $85', 85, '<ul>\r\n<li>Bill (For 1st Box): <strong>&pound;85</strong></li>\r\n<li>Security Deposit (SD): <strong>&pound;50</strong></li>\r\n<li>Bonus: <strong>N/A</strong></li>\r\n</ul>', '2016-02-21 18:16:39'),
(35, 16, 1, '', 0, '<ul>\n                                                                    <li>Bill (For 1st Box): <strong>$25</strong></li>\n                                                                    <li>Security Deposit (SD): <strong>$50</strong></li>                                            \n                                                                    <li>Bonus: <strong>N/A</strong></li>\n                                                                </ul>', '2016-02-05 19:36:44'),
(36, 16, 3, '', 0, '<ul>\r\n                                                                    <li>Bill (For 1st Box): <strong>$75</strong></li>\r\n                                                                    <li>Security Deposit (SD): <strong>$50</strong></li>                                            \r\n                                                                    <li>Bonus: <strong>N/A</strong></li>\r\n                                                                </ul>', '2016-02-05 18:59:35'),
(37, 16, 6, '', 0, '<ul>\r\n                                                                    <li>Bill (For 1st Box): <strong>$150</strong></li>\r\n                                                                    <li>Security Deposit (SD): <strong>$50</strong></li>                                            \r\n                                                                    <li>Bonus: <strong>1 Months addition or $40 calling card</strong></li>\r\n                                                                </ul>', '2016-02-05 19:00:10'),
(38, 16, 12, '', 0, '<ul>\r\n                                                                    <li>Bill (For 1st Box): <strong>$300</strong></li>\r\n                                                                    <li>Security Deposit (SD): <strong>$50</strong></li>                                           \r\n                                                                    <li>Bonus: <strong>3 Months addition or $100 calling card</strong></li>\r\n                                                                </ul>', '2016-02-05 19:00:56');

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `note` text NOT NULL,
  `package_customer_id` int(15) NOT NULL COMMENT 'package_customer_id(old customer)',
  `ref_name` varchar(255) NOT NULL,
  `ref_cell` varchar(13) NOT NULL,
  `referred_for` int(15) NOT NULL COMMENT 'New customer',
  `bonus` int(3) DEFAULT NULL,
  `verified_by` enum('no','si','admin') NOT NULL DEFAULT 'no',
  `status` enum('hold','canceled','approved') NOT NULL DEFAULT 'hold',
  `modified` date NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `referrals`
--

INSERT INTO `referrals` (`id`, `user_id`, `note`, `package_customer_id`, `ref_name`, `ref_cell`, `referred_for`, `bonus`, `verified_by`, `status`, `modified`, `created`) VALUES
(1, 195, 'Done by si..', 6335, 'NAZNIN  SULTANA', '9794924748', 7123, 21, 'si', 'hold', '2017-12-14', '2017-12-04 21:08:21'),
(2, 195, '', 4807, 'MD M HAQUE', '7188384601', 7124, 20, 'si', 'hold', '2017-12-05', '2017-12-04 21:17:56'),
(3, 195, 'Is it done.............', 4818, 'MD M KHAN', '9173406406', 7125, 20, 'si', 'canceled', '2017-12-05', '2017-12-04 21:24:50'),
(4, 195, '', 4818, 'MD M KHAN', '9173406406', 7126, 20, 'si', 'canceled', '2017-12-21', '2017-12-05 00:58:52'),
(5, 195, 'Done...........', 4812, 'MD M HOSSAIN', '3478101867', 7127, 20, 'si', 'hold', '2017-12-05', '2017-12-05 03:55:20'),
(6, 195, 'He will get $20 on 06/03/2018', 6011, 'MOZAMMEL  MAZUMDER', '4692471179', 7128, 21, 'si', 'hold', '2017-12-06', '2017-12-06 01:10:47'),
(7, 195, '', 6335, 'NAZNIN  SULTANA', '9794924748', 7129, 20, 'no', 'canceled', '2017-12-06', '2017-12-06 02:37:20'),
(8, 195, '', 4796, 'MD KHURSHID ALI', '3476082108', 7136, 20, 'no', 'hold', '2017-12-09', '2017-12-09 02:16:51'),
(9, 195, '', 4798, 'MD LIAQUAT ALI', '2177669306', 7137, 20, 'no', 'hold', '2017-12-09', '2017-12-09 04:06:13'),
(10, 83, 'done', 7122, 'Md. Amin Mohammad', '963214587', 7140, 21, 'si', 'canceled', '2017-12-13', '2017-12-11 19:25:19'),
(11, 195, '', 6335, 'NAZNIN  SULTANA', '9794924748', 7144, 20, 'no', 'hold', '2017-12-13', '2017-12-12 22:09:03'),
(12, 83, '', 4814, 'MD M ISLAM', '6092149914', 7145, 21, 'no', 'hold', '2017-12-14', '2017-12-14 03:55:19'),
(13, 195, 'Now done for test!', 4819, 'MD M MUKTA', '3472614710', 7149, 31, 'si', 'approved', '2017-12-21', '2017-12-20 19:51:31'),
(14, 195, 'done', 4806, 'MD M CHOWDHURY', '2676795472', 7150, 31, 'si', 'approved', '2017-12-21', '2017-12-20 20:16:17'),
(15, 0, '', 0, '', '', 0, NULL, 'no', 'hold', '2017-12-21', '2017-12-20 20:48:28'),
(16, 195, 'done', 4802, 'MD M ALAM', '3478206614', 7151, 95, 'si', 'approved', '2017-12-21', '2017-12-20 21:27:23'),
(17, 195, 'Test by si', 4819, 'MD M MUKTA', '3472614710', 7152, 31, 'si', 'approved', '2017-12-21', '2017-12-20 22:29:38'),
(18, 195, 'Checked by si', 4803, 'MD M ALAM', '3472612654', 7153, 41, 'no', 'hold', '2017-12-21', '2017-12-20 22:50:08'),
(19, 195, '', 4806, 'MD M CHOWDHURY', '2676795472', 7154, 21, 'si', 'approved', '2017-12-21', '2017-12-20 23:15:39'),
(20, 83, '', 4798, 'MD LIAQUAT ALI', '2177669306', 7157, 20, 'si', 'approved', '2017-12-21', '2017-12-21 02:50:18'),
(21, 83, '', 4798, 'MD LIAQUAT ALI', '2177669306', 7163, 21, 'no', 'hold', '2017-12-21', '2017-12-21 03:50:04'),
(22, 83, '', 4798, 'MD LIAQUAT ALI', '2177669306', 7164, 95, 'no', 'hold', '2017-12-21', '2017-12-21 03:52:08'),
(23, 83, '', 4798, 'MD LIAQUAT ALI', '2177669306', 7166, 54, 'si', 'hold', '2017-12-21', '2017-12-21 03:52:55'),
(24, 195, '', 4798, 'MD LIAQUAT ALI', '2177669306', 7167, 31, 'si', 'hold', '2018-04-25', '2018-01-02 00:25:20'),
(25, 5, '', 4797, 'MD  LASKER', '7182004595', 7169, 21, 'no', 'hold', '2018-01-02', '2018-01-02 00:53:33'),
(26, 195, '', 4797, 'MD  LASKER', '7182004595', 7170, 95, 'no', 'hold', '2018-01-02', '2018-01-02 00:58:08'),
(27, 195, '', 4797, 'MD  LASKER', '7182004595', 7171, 21, 'no', 'approved', '2018-01-02', '2018-01-02 01:00:23'),
(28, 195, '', 4798, 'MD LIAQUAT ALI', '2177669306', 7218, 20, 'si', 'approved', '2018-01-06', '2018-01-06 01:12:59'),
(29, 195, 'Ref bonus', 5826, '', '', 0, NULL, 'no', 'hold', '2018-01-23', '2018-01-22 22:31:44'),
(30, 195, 'ref bonus..............', 5055, '', '', 5057, NULL, 'no', 'hold', '2018-01-23', '2018-01-22 22:36:33'),
(31, 195, 'test referral', 5826, '', '', 5057, NULL, 'no', 'hold', '2018-01-23', '2018-01-23 00:17:37'),
(32, 195, 'ggdf dsfse', 5716, '', '', 5058, NULL, 'no', 'hold', '2018-01-23', '2018-01-23 01:09:59'),
(33, 195, 'The referral', 5826, '', '', 5057, NULL, 'no', 'hold', '2018-01-23', '2018-01-23 01:11:24'),
(34, 195, 'dsfg dfgre', 5826, '', '', 5057, 15, 'no', 'hold', '2018-01-23', '2018-01-23 01:13:06'),
(35, 195, 'dsfg dfgre', 5826, '', '', 5057, 15, 'no', 'hold', '2018-01-23', '2018-01-23 01:13:19'),
(36, 195, 'dfg dfgd', 5826, '', '', 5057, 311, 'no', 'hold', '2018-01-23', '2018-01-23 01:23:57'),
(37, 195, 'dfg dfgd', 5826, '', '', 5057, 311, 'no', 'hold', '2018-01-23', '2018-01-23 01:24:27'),
(38, 195, 'dfg dfgd', 5826, '', '', 5057, 311, 'no', 'hold', '2018-01-23', '2018-01-23 01:24:48'),
(39, 0, '', 0, '', '', 0, NULL, 'si', 'hold', '2018-04-25', '2018-04-25 03:02:16'),
(40, 0, '', 0, '', '', 0, NULL, 'si', 'hold', '2018-04-25', '2018-04-25 03:20:04'),
(41, 0, '', 0, '', '', 0, NULL, 'si', 'hold', '2018-04-27', '2018-04-26 23:19:19'),
(42, 0, '', 0, '', '', 0, NULL, 'si', 'hold', '2018-04-27', '2018-04-26 23:51:12'),
(43, 83, '', 6131, 'ARIF  CHOUDHURY', '2143562651', 7247, NULL, 'si', 'hold', '2018-05-03', '2018-04-26 23:57:57'),
(44, 0, '', 0, '', '', 0, NULL, 'si', 'hold', '2018-04-27', '2018-04-27 01:52:03'),
(45, 0, '', 0, '', '', 0, NULL, 'si', 'hold', '2018-04-27', '2018-04-27 02:12:46'),
(46, 83, '', 4798, 'MD LIAQUAT ALI', '2177669306', 7248, NULL, 'si', 'hold', '2018-04-28', '2018-04-27 19:31:01'),
(47, 0, '', 0, '', '', 0, NULL, 'si', 'hold', '2018-05-09', '2018-05-08 22:52:09'),
(48, 0, '', 0, '', '', 0, NULL, 'si', 'hold', '2018-05-09', '2018-05-08 23:19:04'),
(49, 83, '', 4882, 'MD N AHMED', '3476666015', 7260, 22, 'no', 'hold', '2018-06-29', '2018-06-28 22:20:46'),
(50, 83, '', 4880, 'MD  MUNIM', '3475539746', 7261, 20, 'no', 'hold', '2018-06-29', '2018-06-28 22:23:32'),
(51, 83, '', 4799, 'MD LITON ALIM', '3132890128', 7263, NULL, 'no', 'hold', '2018-06-29', '2018-06-29 01:41:28'),
(52, 83, '', 4799, 'MD LITON ALIM', '3132890128', 7264, NULL, 'no', 'hold', '2018-07-03', '2018-07-02 22:24:33'),
(53, 83, '', 7250, 'CHITTA RANJAN CHAKRAVORTY', '6315688278', 7266, NULL, 'no', 'hold', '2018-07-04', '2018-07-03 21:11:27'),
(54, 83, '', 7266, 'CHITTA_ RANJAN_ CHAKRAVORTY', '63156882781', 7267, NULL, 'no', 'hold', '2018-07-04', '2018-07-03 21:12:36'),
(55, 83, '', 7267, 'CHITTA_d RANJAN_d CHAKRAVORTY', '6315688181', 7268, NULL, 'no', 'hold', '2018-07-04', '2018-07-03 21:13:25'),
(56, 83, '', 4797, 'MD  LASKER', '7182004595', 7271, NULL, 'no', 'hold', '2018-08-08', '2018-08-08 04:31:51');

-- --------------------------------------------------------

--
-- Table structure for table `resellers`
--

CREATE TABLE `resellers` (
  `id` int(11) NOT NULL,
  `name` varchar(111) NOT NULL,
  `phone_no` varchar(21) NOT NULL,
  `email` varchar(111) NOT NULL,
  `message` text NOT NULL,
  `status` enum('not checked','active','canceled') NOT NULL DEFAULT 'not checked',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roasters_histories`
--

CREATE TABLE `roasters_histories` (
  `id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `pc_id` varchar(151) NOT NULL,
  `day_name` varchar(21) NOT NULL,
  `shift_name_time` varchar(71) DEFAULT NULL,
  `shift_incharge_id` int(15) DEFAULT NULL,
  `shift_incharge2_id` int(15) DEFAULT NULL,
  `shift_incharge3_id` int(15) DEFAULT NULL,
  `alphabet_a` char(1) NOT NULL,
  `a1_id` int(15) DEFAULT NULL,
  `a2` int(15) DEFAULT NULL,
  `a3` int(15) DEFAULT NULL,
  `a4` int(15) DEFAULT NULL,
  `a5` int(15) DEFAULT NULL,
  `a6` int(15) DEFAULT NULL,
  `a7` int(15) DEFAULT NULL,
  `a8` int(15) DEFAULT NULL,
  `a9` int(15) DEFAULT NULL,
  `a10` int(15) DEFAULT NULL,
  `a11` int(15) DEFAULT NULL,
  `afshift_name_time2` varchar(71) DEFAULT NULL,
  `afshift_incharge_id` int(15) DEFAULT NULL,
  `afshift_incharge2_id` int(15) DEFAULT NULL,
  `afshift_incharge3_id` int(15) DEFAULT NULL,
  `alphabet_b` char(1) NOT NULL,
  `afa1_id` int(15) DEFAULT NULL,
  `afa2` int(15) DEFAULT NULL,
  `afa3` int(15) DEFAULT NULL,
  `afa4` int(15) DEFAULT NULL,
  `afa5` int(15) DEFAULT NULL,
  `afa6` int(15) DEFAULT NULL,
  `afa7` int(15) DEFAULT NULL,
  `afa8` int(15) DEFAULT NULL,
  `afa9` int(15) DEFAULT NULL,
  `afa10` int(15) DEFAULT NULL,
  `afa11` int(15) DEFAULT NULL,
  `nishift_name_time3` varchar(71) DEFAULT NULL,
  `nishift_incharge_id` int(15) DEFAULT NULL,
  `nishift_incharge2_id` int(15) DEFAULT NULL,
  `nishift_incharge3_id` int(15) DEFAULT NULL,
  `alphabet_c` char(1) NOT NULL,
  `nia1_id` int(15) DEFAULT NULL,
  `nia2` int(15) DEFAULT NULL,
  `nia3` int(15) DEFAULT NULL,
  `nia4` int(15) DEFAULT NULL,
  `nia5` int(15) DEFAULT NULL,
  `nia6` int(15) DEFAULT NULL,
  `nia7` int(15) DEFAULT NULL,
  `nia8` int(15) DEFAULT NULL,
  `nia9` int(15) DEFAULT NULL,
  `nia10` int(15) DEFAULT NULL,
  `nia11` int(15) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` enum('yes','no') NOT NULL DEFAULT 'no',
  `alphabet` char(1) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roasters_histories`
--

INSERT INTO `roasters_histories` (`id`, `user_id`, `pc_id`, `day_name`, `shift_name_time`, `shift_incharge_id`, `shift_incharge2_id`, `shift_incharge3_id`, `alphabet_a`, `a1_id`, `a2`, `a3`, `a4`, `a5`, `a6`, `a7`, `a8`, `a9`, `a10`, `a11`, `afshift_name_time2`, `afshift_incharge_id`, `afshift_incharge2_id`, `afshift_incharge3_id`, `alphabet_b`, `afa1_id`, `afa2`, `afa3`, `afa4`, `afa5`, `afa6`, `afa7`, `afa8`, `afa9`, `afa10`, `afa11`, `nishift_name_time3`, `nishift_incharge_id`, `nishift_incharge2_id`, `nishift_incharge3_id`, `alphabet_c`, `nia1_id`, `nia2`, `nia3`, `nia4`, `nia5`, `nia6`, `nia7`, `nia8`, `nia9`, `nia10`, `nia11`, `date`, `status`, `alphabet`, `created`, `modified`) VALUES
(12, 199, '192.168.50.196 Developer 2018-08-29 09:14:57am Md. Ayub azahar', 'Wednesday', 'Morning (07:30 - 01:00)', 94, NULL, NULL, '', 172, 119, 174, 175, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Afternoon (01:00 - 09:00)', 98, NULL, NULL, '', 104, 147, 119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Night (09:00 - 03:00)', 111, NULL, NULL, '', 154, 178, 156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-29', 'yes', 'A', '2018-08-29 03:14:57', '2018-08-29'),
(13, 199, '192.168.50.196 Developer 2018-08-30 03:40:15am Md. Ayub azahar', 'Thursday', 'Morning (07:30 - 01:00)', 131, NULL, 144, '', 189, 146, 119, 174, 175, 0, NULL, NULL, NULL, NULL, NULL, 'Afternoon (01:00 - 09:00)', 131, 94, 98, '', 175, 165, 178, 147, 169, NULL, NULL, NULL, NULL, NULL, NULL, 'Night (09:00 - 03:00)', 131, NULL, NULL, '', 179, 189, 156, 157, 122, 122, NULL, NULL, NULL, NULL, NULL, '2018-08-30', 'yes', 'A', '2018-08-29 21:40:15', '2018-08-30'),
(20, 199, '192.168.50.196 Developer 2018-09-01 09:40:08am Md. Ayub azahar', 'Wednesday', 'Morning (07:30 - 01:00)', 105, 97, NULL, '', 156, 188, 180, 167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Afternoon (01:00 - 09:00)', 98, 187, NULL, '', 178, 172, 157, 119, 124, 158, NULL, NULL, NULL, NULL, NULL, 'Night (09:00 - 03:00)', 94, 97, NULL, '', 156, 188, 154, 190, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-05', 'yes', 'A', '2018-09-01 03:40:08', '2018-09-01'),
(21, 199, '192.168.50.196 Developer 2018-09-01 09:55:56am Md. Ayub azahar', 'Monday', 'Morning (07:30 - 01:00)', 99, 97, 105, 'A', 104, 106, 169, 119, 124, 157, 167, NULL, NULL, NULL, NULL, 'Afternoon (01:00 - 09:00)', 98, NULL, NULL, 'B', 164, 165, 166, 117, 119, 124, 170, 169, NULL, NULL, NULL, 'Night (09:00 - 03:00)', 131, 94, 99, 'C', 154, 148, 156, 124, 153, 166, 194, 189, 165, 194, NULL, '2018-09-03', 'yes', 'A', '2018-09-01 03:55:56', '2018-09-03'),
(22, 199, '192.168.50.196 Developer 2018-09-04 04:08:51am Md. Ayub azahar', 'Friday', 'Morning (07:30 - 01:00)', 187, 144, 131, 'A', 165, 172, 160, 119, 124, 147, 167, 179, 182, NULL, NULL, 'Afternoon (01:00 - 09:00)', 187, 105, 120, 'B', 194, 192, 191, 190, 189, 188, 182, 181, 180, 154, NULL, 'Night (09:00 - 03:00)', 187, 183, 162, 'C', 194, 192, 191, 190, 189, 188, 182, 181, 180, 177, NULL, '2018-09-07', 'yes', '', '2018-09-03 22:08:51', '2018-09-04'),
(23, 199, '192.168.50.196 Developer 2018-09-10 02:42:14am Md. Ayub azahar', 'Monday', 'Morning (07:30 - 01:00)', 187, 185, 183, 'A', 172, NULL, 174, 175, 176, 177, 178, 179, 180, 181, NULL, 'Afternoon (01:00 - 09:00)', 162, 163, NULL, 'B', 164, 165, 166, 167, 168, 169, 170, 171, 172, NULL, NULL, 'Night (09:00 - 03:00)', 131, 130, NULL, 'C', 154, 148, 156, 157, 158, 122, 124, 119, 106, NULL, NULL, '2018-09-10', 'yes', '', '2018-09-09 20:42:14', '2018-09-10');

-- --------------------------------------------------------

--
-- Table structure for table `roaster_details`
--

CREATE TABLE `roaster_details` (
  `id` int(255) NOT NULL,
  `inserted_by` int(15) NOT NULL COMMENT 'who is creator of this roaster',
  `user_id` int(15) NOT NULL,
  `pc_id` varchar(151) NOT NULL COMMENT 'emp logout approve information',
  `roasters_histories_id` int(15) NOT NULL,
  `shift_name_time` varchar(41) NOT NULL,
  `alphabet` char(1) NOT NULL COMMENT 'A = Morning, b = Afternoon, c = Night',
  `date` date NOT NULL,
  `in_time` time DEFAULT NULL,
  `late_time` time NOT NULL,
  `out_time` time DEFAULT NULL,
  `total_duty` time NOT NULL,
  `extra_time` time DEFAULT NULL,
  `attend_status` enum('no','start','complete','request','approve','leave','absent','holiday','swap') NOT NULL DEFAULT 'no',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT 'this two string for data update',
  `comment_swap` text NOT NULL,
  `user_login_info` varchar(151) NOT NULL COMMENT 'first log info of user',
  `user_logout_info` varchar(151) NOT NULL COMMENT 'user logout info',
  `si_approve_pc_info` varchar(151) NOT NULL COMMENT 'From which pc si approve.',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roaster_details`
--

INSERT INTO `roaster_details` (`id`, `inserted_by`, `user_id`, `pc_id`, `roasters_histories_id`, `shift_name_time`, `alphabet`, `date`, `in_time`, `late_time`, `out_time`, `total_duty`, `extra_time`, `attend_status`, `status`, `comment_swap`, `user_login_info`, `user_logout_info`, `si_approve_pc_info`, `created`, `modified`) VALUES
(1, 199, 122, '192.168.50.119 Developer 2018-04-21 08:24:45am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', '', '2018-04-03', '00:00:00', '00:00:00', '10:14:47', '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 02:24:45', '2018-08-29'),
(2, 83, 211, '192.168.50.119 Developer 2018-04-21 08:24:45am Md. Omar Faruk', 0, 'Morning (07.30 - 01.00)', 'A', '2018-08-25', '05:59:00', '00:29:00', '00:00:00', '05:30:00', '00:00:00', 'leave', 0, '', '', '', '', '2018-04-21 02:24:45', '2018-08-30'),
(3, 83, 131, '192.168.50.119 Developer 2018-04-21 08:24:45am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', '', '2018-04-13', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 02:24:45', '2018-04-21'),
(4, 83, 165, '192.168.50.119 Developer 2018-04-21 08:24:45am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', '', '2018-04-13', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 02:24:45', '2018-04-21'),
(5, 83, 172, '192.168.50.119 Developer 2018-04-21 08:24:45am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', '', '2018-04-13', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 02:24:45', '2018-04-21'),
(6, 83, 172, '192.168.50.119 Developer 2018-04-21 08:24:45am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', '', '2018-04-13', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 02:24:45', '2018-04-21'),
(7, 83, 175, '192.168.50.119 Developer 2018-04-21 08:24:45am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', '', '2018-04-13', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 02:24:45', '2018-04-21'),
(8, 83, 178, '192.168.50.119 Developer 2018-04-21 08:24:45am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', '', '2018-04-13', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 02:24:45', '2018-04-21'),
(9, 83, 194, '192.168.50.119 Developer 2018-04-21 08:24:45am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', '', '2018-04-13', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 02:24:45', '2018-04-21'),
(10, 83, 189, '192.168.50.119 Developer 2018-04-21 08:24:45am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', '', '2018-04-13', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 02:24:46', '2018-04-21'),
(11, 83, 175, '192.168.50.119 Developer 2018-04-21 08:24:45am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', '', '2018-04-13', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 02:24:46', '2018-04-21'),
(12, 199, 160, '192.168.50.119 Developer 2018-04-21 08:27:57am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', '', '2018-04-13', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 02:27:57', '2018-08-19'),
(13, 83, 105, '192.168.50.119 Developer 2018-04-21 08:27:57am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', '', '2018-04-13', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 02:27:57', '2018-04-21'),
(14, 83, 120, '192.168.50.119 Developer 2018-04-21 08:27:57am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', '', '2018-04-13', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 02:27:57', '2018-04-21'),
(15, 83, 194, '192.168.50.119 Developer 2018-04-21 08:27:57am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', '', '2018-04-13', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 02:27:57', '2018-04-21'),
(16, 83, 192, '192.168.50.119 Developer 2018-04-21 08:27:57am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', '', '2018-04-13', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 02:27:58', '2018-04-21'),
(17, 83, 191, '192.168.50.119 Developer 2018-04-21 08:27:57am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', '', '2018-04-13', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 02:27:58', '2018-04-21'),
(18, 83, 190, '192.168.50.119 Developer 2018-04-21 08:27:57am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', '', '2018-04-13', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 02:27:58', '2018-04-21'),
(19, 83, 189, '192.168.50.119 Developer 2018-04-21 08:27:57am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', '', '2018-04-13', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 02:27:58', '2018-04-21'),
(20, 83, 188, '192.168.50.119 Developer 2018-04-21 08:27:57am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', '', '2018-04-13', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 02:27:58', '2018-04-21'),
(21, 83, 181, '192.168.50.119 Developer 2018-04-21 08:27:57am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', '', '2018-04-13', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 02:27:58', '2018-04-21'),
(22, 83, 180, '192.168.50.119 Developer 2018-04-21 08:27:57am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', '', '2018-04-13', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 02:27:58', '2018-04-21'),
(23, 83, 92, '192.168.50.119 Developer 2018-04-21 08:27:57am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', '', '2018-04-13', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 02:27:58', '2018-04-21'),
(24, 83, 187, '192.168.50.119 Developer 2018-04-21 08:28:51am Md. Omar Faruk', 0, 'Night (20.00-02.00)', '', '2018-04-13', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 02:28:51', '2018-04-21'),
(25, 83, 194, '192.168.50.119 Developer 2018-04-21 08:28:51am Md. Omar Faruk', 0, 'Night (20.00-02.00)', '', '2018-04-13', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 02:28:51', '2018-04-21'),
(26, 83, 192, '192.168.50.119 Developer 2018-04-21 08:28:51am Md. Omar Faruk', 0, 'Night (20.00-02.00)', '', '2018-04-13', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 02:28:51', '2018-04-21'),
(27, 83, 191, '192.168.50.119 Developer 2018-04-21 08:28:51am Md. Omar Faruk', 0, 'Night (20.00-02.00)', '', '2018-04-13', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 02:28:51', '2018-04-21'),
(28, 83, 190, '192.168.50.119 Developer 2018-04-21 08:28:51am Md. Omar Faruk', 0, 'Night (20.00-02.00)', '', '2018-04-13', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 02:28:51', '2018-04-21'),
(29, 83, 189, '192.168.50.119 Developer 2018-04-21 08:28:51am Md. Omar Faruk', 0, 'Night (20.00-02.00)', '', '2018-04-13', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 02:28:51', '2018-04-21'),
(30, 83, 188, '192.168.50.119 Developer 2018-04-21 08:28:51am Md. Omar Faruk', 0, 'Night (20.00-02.00)', '', '2018-04-13', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 02:28:51', '2018-04-21'),
(31, 83, 105, '192.168.50.119 Developer 2018-04-21 09:32:56am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:32:56', '2018-04-21'),
(32, 83, 183, '192.168.50.119 Developer 2018-04-21 09:32:56am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:32:56', '2018-04-21'),
(33, 83, 172, '192.168.50.119 Developer 2018-04-21 09:32:56am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:32:56', '2018-04-21'),
(34, 83, 92, '192.168.50.119 Developer 2018-04-21 09:32:56am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:32:56', '2018-04-21'),
(35, 83, 175, '192.168.50.119 Developer 2018-04-21 09:32:56am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:32:56', '2018-04-21'),
(36, 83, 174, '192.168.50.119 Developer 2018-04-21 09:32:56am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:32:56', '2018-04-21'),
(37, 83, 177, '192.168.50.119 Developer 2018-04-21 09:32:56am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:32:56', '2018-04-21'),
(38, 83, 178, '192.168.50.119 Developer 2018-04-21 09:32:56am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:32:56', '2018-04-21'),
(39, 83, 179, '192.168.50.119 Developer 2018-04-21 09:32:56am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:32:56', '2018-04-21'),
(40, 83, 180, '192.168.50.119 Developer 2018-04-21 09:32:56am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:32:56', '2018-04-21'),
(41, 83, 181, '192.168.50.119 Developer 2018-04-21 09:32:56am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:32:56', '2018-04-21'),
(42, 83, 162, '192.168.50.119 Developer 2018-04-21 09:36:52am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:36:52', '2018-04-21'),
(43, 83, 163, '192.168.50.119 Developer 2018-04-21 09:36:52am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:36:52', '2018-04-21'),
(44, 83, 98, '192.168.50.119 Developer 2018-04-21 09:36:52am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:36:52', '2018-04-21'),
(45, 83, 156, '192.168.50.119 Developer 2018-04-21 09:36:52am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:36:52', '2018-04-21'),
(46, 83, 165, '192.168.50.119 Developer 2018-04-21 09:36:52am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:36:52', '2018-04-21'),
(47, 83, 158, '192.168.50.119 Developer 2018-04-21 09:36:52am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:36:52', '2018-04-21'),
(48, 83, 165, '192.168.50.119 Developer 2018-04-21 09:36:52am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:36:52', '2018-04-21'),
(49, 83, 180, '192.168.50.119 Developer 2018-04-21 09:36:52am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:36:52', '2018-04-21'),
(50, 83, 169, '192.168.50.119 Developer 2018-04-21 09:36:52am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:36:52', '2018-04-21'),
(51, 83, 191, '192.168.50.119 Developer 2018-04-21 09:36:52am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:36:52', '2018-04-21'),
(52, 83, 171, '192.168.50.119 Developer 2018-04-21 09:36:52am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:36:52', '2018-04-21'),
(53, 83, 172, '192.168.50.119 Developer 2018-04-21 09:36:52am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:36:52', '2018-04-21'),
(54, 83, 92, '192.168.50.119 Developer 2018-04-21 09:36:52am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:36:52', '2018-04-21'),
(55, 83, 131, '192.168.50.119 Developer 2018-04-21 09:59:53am Md. Omar Faruk', 0, 'Night (20.00-02.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:59:53', '2018-04-21'),
(56, 83, 154, '192.168.50.119 Developer 2018-04-21 09:59:53am Md. Omar Faruk', 0, 'Night (20.00-02.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:59:54', '2018-04-21'),
(57, 83, 156, '192.168.50.119 Developer 2018-04-21 09:59:53am Md. Omar Faruk', 0, 'Night (20.00-02.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:59:54', '2018-04-21'),
(58, 83, 157, '192.168.50.119 Developer 2018-04-21 09:59:53am Md. Omar Faruk', 0, 'Night (20.00-02.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:59:54', '2018-04-21'),
(59, 83, 158, '192.168.50.119 Developer 2018-04-21 09:59:53am Md. Omar Faruk', 0, 'Night (20.00-02.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:59:54', '2018-04-21'),
(61, 83, 119, '192.168.50.119 Developer 2018-04-21 09:59:53am Md. Omar Faruk', 0, 'Night (20.00-02.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:59:54', '2018-04-21'),
(62, 83, 92, '192.168.50.119 Developer 2018-04-21 09:59:53am Md. Omar Faruk', 0, 'Night (20.00-02.00)', '', '2018-04-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 03:59:54', '2018-04-21'),
(63, 0, 0, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '10:04:19', '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-21 04:04:19', '2018-04-21'),
(64, 0, 0, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '04:48:06', '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-26 22:48:07', '2018-04-27'),
(65, 0, 0, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '01:36:50', '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-04-27 19:36:50', '2018-04-28'),
(66, 0, 0, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '11:45:32', '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-05-02 05:45:33', '2018-05-02'),
(67, 0, 0, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '10:07:33', '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-05-03 04:07:33', '2018-05-03'),
(68, 0, 0, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '03:09:50', '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-05-16 21:09:50', '2018-05-17'),
(69, 0, 0, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '06:10:47', '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-06-27 00:10:47', '2018-06-27'),
(70, 0, 0, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '06:26:20', '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-06-27 00:26:20', '2018-06-27'),
(71, 0, 0, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '06:26:40', '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-06-27 00:26:40', '2018-06-27'),
(72, 0, 0, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '06:34:35', '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-06-27 00:34:35', '2018-06-27'),
(73, 0, 0, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '06:35:41', '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-06-27 00:35:41', '2018-06-27'),
(74, 0, 0, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '03:40:19', '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-06-27 21:40:19', '2018-06-28'),
(75, 0, 0, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '04:26:24', '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-06-27 22:26:24', '2018-06-28'),
(76, 0, 0, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '04:30:10', '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-06-27 22:30:10', '2018-06-28'),
(77, 0, 0, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '08:53:11', '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-06-28 02:53:11', '2018-06-28'),
(78, 0, 0, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '06:02:51', '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-06-29 00:02:51', '2018-06-29'),
(79, 0, 0, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '06:03:52', '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-06-29 00:03:52', '2018-06-29'),
(80, 0, 0, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '09:21:58', '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-02 03:21:58', '2018-07-02'),
(81, 0, 0, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '09:24:40', '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-02 03:24:40', '2018-07-02'),
(82, 0, 0, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '02:49:55', '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-02 20:49:55', '2018-07-03'),
(83, 0, 0, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '02:24:52', '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-06 20:24:53', '2018-07-07'),
(84, 0, 0, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '08:31:23', '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-16 02:31:23', '2018-07-16'),
(85, 0, 0, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '09:16:24', '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-16 03:16:24', '2018-07-16'),
(86, 0, 0, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '09:17:51', '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-16 03:17:51', '2018-07-16'),
(87, 0, 0, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '09:18:37', '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-16 03:18:37', '2018-07-16'),
(88, 0, 0, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '06:09:53', '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-17 00:09:53', '2018-07-17'),
(89, 0, 0, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '06:10:14', '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-17 00:10:14', '2018-07-17'),
(90, 0, 1001, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '06:16:49', '00:00:00', NULL, 'approve', 0, '', '', '', '', '2018-07-17 00:16:49', '2018-07-17'),
(91, 0, 1001, '', 0, '', '', '0000-00-00', '06:12:43', '00:00:00', '04:20:26', '00:00:00', NULL, 'approve', 0, '', '', '', '', '2018-07-17 00:20:05', '2018-07-17'),
(92, 0, 1001, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '06:21:32', '00:00:00', NULL, 'approve', 0, '', '', '', '', '2018-07-17 00:21:32', '2018-07-17'),
(93, 0, 0, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '07:46:39', '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-17 01:46:39', '2018-07-17'),
(95, 0, 0, '', 0, '', '', '0000-00-00', NULL, '00:00:00', '07:51:17', '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-17 01:51:17', '2018-07-17'),
(97, 0, 1001, '', 0, '', '', '2018-07-17', '08:23:43', '00:00:00', '06:39:21', '00:00:00', NULL, 'approve', 0, '', '', '', '', '2018-07-17 03:14:16', '2018-07-17'),
(98, 0, 1001, '', 0, '', '', '2018-07-17', '08:23:43', '00:00:00', '06:39:21', '00:00:00', NULL, 'approve', 0, '', '', '', '', '2018-07-17 05:26:49', '2018-07-17'),
(99, 83, 98, '192.168.50.196 Developer 2018-07-17 11:28:47am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', '', '2018-07-17', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-17 05:28:47', '2018-07-17'),
(101, 83, 92, '192.168.50.196 Developer 2018-07-17 11:28:47am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', '', '2018-07-17', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-17 05:28:47', '2018-07-17'),
(102, 83, 174, '192.168.50.196 Developer 2018-07-17 11:28:47am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', '', '2018-07-17', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-17 05:28:47', '2018-07-17'),
(107, 199, 133, '192.168.50.196 Developer 2018-07-20 11:32:38am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', 'A', '2018-07-20', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-20 05:32:38', '2018-08-18'),
(108, 83, 144, '192.168.50.196 Developer 2018-07-20 11:32:38am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', 'A', '2018-07-20', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-20 05:32:38', '2018-07-20'),
(109, 83, 131, '192.168.50.196 Developer 2018-07-20 11:32:38am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', 'A', '2018-07-20', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-20 05:32:38', '2018-07-20'),
(110, 83, 165, '192.168.50.196 Developer 2018-07-20 11:32:38am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', 'A', '2018-07-20', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-20 05:32:38', '2018-07-20'),
(111, 83, 172, '192.168.50.196 Developer 2018-07-20 11:32:38am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', 'A', '2018-07-20', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-20 05:32:38', '2018-07-20'),
(112, 83, 172, '192.168.50.196 Developer 2018-07-20 11:32:38am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', 'A', '2018-07-20', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-20 05:32:38', '2018-07-20'),
(113, 83, 175, '192.168.50.196 Developer 2018-07-20 11:32:38am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', 'A', '2018-07-20', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-20 05:32:39', '2018-07-20'),
(114, 83, 178, '192.168.50.196 Developer 2018-07-20 11:32:38am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', 'A', '2018-07-20', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-20 05:32:39', '2018-07-20'),
(115, 83, 194, '192.168.50.196 Developer 2018-07-20 11:32:38am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', 'A', '2018-07-20', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-20 05:32:39', '2018-07-20'),
(116, 83, 189, '192.168.50.196 Developer 2018-07-20 11:32:38am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', 'A', '2018-07-20', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-20 05:32:39', '2018-07-20'),
(117, 83, 175, '192.168.50.196 Developer 2018-07-20 11:32:38am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', 'A', '2018-07-20', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-20 05:32:39', '2018-07-20'),
(118, 199, 167, '192.168.50.196 Developer 2018-07-20 11:34:29am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', 'B', '2018-07-20', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-20 05:34:29', '2018-08-18'),
(119, 83, 105, '192.168.50.196 Developer 2018-07-20 11:34:29am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', 'B', '2018-07-20', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-20 05:34:29', '2018-07-20'),
(120, 83, 120, '192.168.50.196 Developer 2018-07-20 11:34:29am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', 'B', '2018-07-20', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-20 05:34:29', '2018-07-20'),
(121, 83, 194, '192.168.50.196 Developer 2018-07-20 11:34:29am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', 'B', '2018-07-20', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-20 05:34:29', '2018-07-20'),
(122, 83, 192, '192.168.50.196 Developer 2018-07-20 11:34:29am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', 'B', '2018-07-20', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-20 05:34:29', '2018-07-20'),
(123, 83, 191, '192.168.50.196 Developer 2018-07-20 11:34:29am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', 'B', '2018-07-20', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-20 05:34:29', '2018-07-20'),
(124, 83, 190, '192.168.50.196 Developer 2018-07-20 11:34:29am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', 'B', '2018-07-20', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-20 05:34:29', '2018-07-20'),
(125, 83, 189, '192.168.50.196 Developer 2018-07-20 11:34:29am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', 'B', '2018-07-20', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-20 05:34:29', '2018-07-20'),
(126, 83, 188, '192.168.50.196 Developer 2018-07-20 11:34:29am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', 'B', '2018-07-20', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-20 05:34:29', '2018-07-20'),
(127, 83, 181, '192.168.50.196 Developer 2018-07-20 11:34:29am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', 'B', '2018-07-20', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-20 05:34:30', '2018-07-20'),
(128, 83, 180, '192.168.50.196 Developer 2018-07-20 11:34:29am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', 'B', '2018-07-20', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-20 05:34:30', '2018-07-20'),
(129, 83, 122, '192.168.50.196 Developer 2018-07-20 11:34:29am Md. Omar Faruk', 0, 'Afternoon (12.00 - 20.00)', 'B', '2018-07-20', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-20 05:34:30', '2018-07-20'),
(131, 83, 122, '192.168.50.196 Developer 2018-07-21 02:52:34am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', 'A', '2018-07-17', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-20 20:52:34', '2018-07-21'),
(134, 83, 105, '192.168.50.196 Developer 2018-07-21 04:03:46am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', 'A', '2018-07-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-20 22:03:46', '2018-07-21'),
(135, 83, 172, '192.168.50.196 Developer 2018-07-21 04:03:46am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', 'A', '2018-07-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-20 22:03:46', '2018-07-21'),
(136, 83, 92, '192.168.50.196 Developer 2018-07-21 04:03:46am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', 'A', '2018-07-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-20 22:03:46', '2018-07-21'),
(137, 83, 122, '192.168.50.196 Developer 2018-07-21 04:03:46am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', 'A', '2018-07-21', '11:59:27', '00:00:00', '00:00:00', '00:00:00', NULL, 'start', 0, '', '', '', '', '2018-07-20 22:03:46', '2018-07-21'),
(138, 0, 1001, '', 0, '', '', '2018-07-21', '04:12:08', '00:00:00', '00:00:00', '00:00:00', NULL, 'start', 0, '', '', '', '', '2018-07-20 22:46:59', '2018-07-21'),
(139, 0, 1001, '', 0, '', '', '2018-07-21', '04:12:08', '00:00:00', '04:59:20', '00:00:00', NULL, 'approve', 0, '', '', '', '', '2018-07-20 23:00:11', '2018-07-21'),
(140, 0, 1001, '', 0, '', '', '2018-07-21', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, 'approve', 0, '', '', '', '', '2018-07-20 23:13:02', '2018-07-21'),
(141, 0, 1001, '', 0, '', '', '2018-07-21', '05:17:50', '00:00:00', '00:00:00', '00:00:00', NULL, 'start', 0, '', '', '', '', '2018-07-20 23:19:31', '2018-07-21'),
(142, 83, 98, '192.168.50.196 Developer 2018-07-21 07:33:18am Md. Omar Faruk', 0, 'Night (20.00-02.00)', 'C', '2018-07-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-21 01:33:18', '2018-07-21'),
(143, 83, 211, '192.168.50.196 Developer 2018-07-21 07:33:18am Md. Omar Faruk', 0, 'Night (20.00-02.00)', 'C', '2018-08-26', '00:00:00', '00:00:00', NULL, '06:00:00', NULL, 'leave', 0, '', '', '', '', '2018-07-21 01:33:18', '2018-08-30'),
(144, 83, 156, '192.168.50.196 Developer 2018-07-21 07:33:18am Md. Omar Faruk', 0, 'Night (20.00-02.00)', 'C', '2018-07-21', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-21 01:33:18', '2018-07-21'),
(145, 83, 94, '192.168.50.196 Developer 2018-07-22 06:50:56am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', 'A', '2018-07-22', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-22 00:50:56', '2018-07-22'),
(146, 83, 122, '192.168.50.196 Developer 2018-07-22 06:50:56am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', 'A', '2018-07-22', '06:53:10', '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-22 00:50:57', '2018-07-22'),
(147, 83, 92, '192.168.50.196 Developer 2018-07-22 06:50:56am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', 'A', '2018-07-22', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-22 00:50:57', '2018-07-22'),
(148, 83, 174, '192.168.50.196 Developer 2018-07-22 06:50:56am Md. Omar Faruk', 0, 'Morning (07.30 - 12.00)', 'A', '2018-07-22', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-22 00:50:57', '2018-07-22'),
(149, 83, 98, '192.168.50.196 Developer 2018-07-24 08:04:47am Md. Omar Faruk', 0, 'Morning (07:30 - 12:00)', 'A', '2018-07-24', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-24 02:04:47', '2018-07-24'),
(150, 83, 122, '192.168.50.196 Developer 2018-07-24 08:04:47am Md. Omar Faruk', 0, 'Morning (07:30 - 12:00)', 'A', '2018-07-24', '09:45:55', '00:00:00', '14:12:48', '00:00:00', NULL, 'approve', 0, '', '', '', '', '2018-07-24 02:04:47', '2018-07-24'),
(151, 83, 92, '192.168.50.196 Developer 2018-07-24 08:04:47am Md. Omar Faruk', 0, 'Morning (07:30 - 12:00)', 'A', '2018-07-24', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-24 02:04:47', '2018-07-24'),
(152, 83, 174, '192.168.50.196 Developer 2018-07-24 08:04:47am Md. Omar Faruk', 0, 'Morning (07:30 - 12:00)', 'A', '2018-07-24', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-24 02:04:47', '2018-07-24'),
(153, 83, 99, '192.168.50.196 Developer 2018-07-24 09:20:41am Md. Omar Faruk', 0, 'Afternoon (12:00 - 20:00)', 'B', '2018-08-18', NULL, '00:12:00', NULL, '00:00:00', NULL, 'absent', 0, '', '', '', '', '2018-07-24 03:20:41', '2018-07-24'),
(154, 83, 211, '192.168.50.196 Developer 2018-07-24 09:20:41am Md. Omar Faruk', 0, 'Afternoon (12:00 - 20:00)', 'B', '2018-08-25', '00:00:00', '00:00:00', NULL, '08:00:00', NULL, 'leave', 0, '', '', '', '', '2018-07-24 03:20:41', '2018-08-30'),
(155, 199, 92, '192.168.50.196 Developer 2018-07-24 09:20:41am Md. Omar Faruk', 0, 'Afternoon (12:00 - 20:00)', 'B', '2018-08-18', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, 'sdsd', '', '', '', '2018-07-24 03:20:41', '2018-08-18'),
(156, 83, 122, '192.168.50.196 Developer 2018-07-24 09:20:41am Md. Omar Faruk', 0, 'Night (09:00 - 03:00)', 'B', '2018-08-16', '20:45:00', '00:00:00', '00:00:00', '06:00:00', '00:15:00', 'start', 0, '', '', '', '', '2018-07-24 03:20:42', '2018-08-16'),
(157, 199, 104, '192.168.50.196 Developer 2018-07-30 08:16:35am Md. Omar Faruk', 0, 'Morning (07:30 - 12:00)', 'A', '2018-08-18', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-30 02:16:35', '2018-08-19'),
(158, 188, 211, '192.168.50.196 Developer 2018-07-30 08:16:35am Md. Omar Faruk', 0, 'Morning (07:30 - 12:00)', 'A', '2018-08-26', '05:39:00', '00:09:00', NULL, '05:30:00', NULL, 'leave', 0, 'test', '', '', '', '2018-07-30 02:16:35', '2018-08-30'),
(159, 199, 188, '192.168.50.196 Developer 2018-07-30 08:16:35am Md. Omar Faruk', 0, 'Morning (07:30 - 12:00)', 'A', '2018-08-18', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, 'test swap.......', '', '', '', '2018-07-30 02:16:35', '2018-08-18'),
(160, 83, 174, '192.168.50.196 Developer 2018-07-30 08:16:35am Md. Omar Faruk', 0, 'Morning (07:30 - 12:00)', 'A', '2018-08-18', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-30 02:16:35', '2018-08-17'),
(161, 83, 105, '192.168.50.196 Developer 2018-07-30 08:17:32am Md. Omar Faruk', 0, 'Night (20:00-02:00)', 'C', '2018-07-30', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-30 02:17:32', '2018-07-30'),
(162, 83, 122, '192.168.50.196 Developer 2018-07-30 08:17:32am Md. Omar Faruk', 0, 'Night (20:00-02:00)', 'C', '2018-08-18', NULL, '00:00:00', NULL, '00:00:00', NULL, 'absent', 0, '', '', '', '', '2018-07-30 02:17:32', '2018-07-30'),
(163, 83, 92, '192.168.50.196 Developer 2018-07-30 08:17:32am Md. Omar Faruk', 0, 'Night (20:00-02:00)', 'C', '2018-08-18', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-30 02:17:32', '2018-07-30'),
(164, 83, 122, '192.168.50.196 Developer 2018-07-30 08:17:32am Md. Omar Faruk', 0, 'Night (20:00-02:00)', 'C', '2018-07-26', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-07-30 02:17:32', '2018-07-30'),
(165, 83, 122, '192.168.50.196 Developer 2018-07-30 08:17:32am Md. Omar Faruk', 0, 'Night (20:00-02:00)', 'C', '2018-08-18', NULL, '00:00:00', NULL, '00:00:00', NULL, 'absent', 0, '', '', '', '', '2018-07-30 02:17:32', '2018-07-30'),
(166, 199, 122, '192.168.50.196 Developer 2018-08-09 01:44:52am Md. Ayub azahar', 0, 'Morning (07:30 - 01:00)', 'A', '2018-08-15', '12:45:00', '00:17:00', '00:00:00', '05:12:00', '05:52:00', 'start', 0, '', '', '', '', '2018-08-08 19:44:52', '2018-08-15'),
(167, 199, 99, '192.168.50.196 Developer 2018-08-09 01:44:52am Md. Ayub azahar', 0, 'Morning (07:30 - 12:00)', 'A', '2018-08-19', '07:45:00', '00:00:00', '01:00:00', '05:30:00', NULL, 'approve', 0, '', '', '', '', '2018-08-08 19:44:52', '2018-08-15'),
(168, 199, 104, '192.168.50.196 Developer 2018-08-09 01:44:52am Md. Ayub azahar', 0, 'Morning (07:30 - 12:00)', 'A', '2018-08-15', '07:50:09', '00:00:00', '01:00:00', '05:09:00', NULL, 'approve', 0, '', '', '', '', '2018-08-08 19:44:52', '2018-08-15'),
(169, 199, 119, '192.168.50.196 Developer 2018-08-09 01:44:52am Md. Ayub azahar', 0, 'Morning (07:30 - 12:00)', 'A', '2018-08-15', '07:16:54', '00:00:00', '01:00:00', '05:58:00', '00:13:00', 'approve', 0, '', '', '', '', '2018-08-08 19:44:52', '2018-08-15'),
(170, 199, 98, '192.168.50.196 Developer 2018-08-18 06:25:42am Md. Ayub azahar', 0, 'Afternoon (01:00 - 09:00)', 'B', '2018-08-18', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-18 00:25:42', '2018-08-18'),
(171, 199, 122, '192.168.50.196 Developer 2018-08-18 06:25:42am Md. Ayub azahar', 0, 'Afternoon (01:00 - 09:00)', 'B', '2018-08-18', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, 'Test comments........', '', '', '', '2018-08-18 00:25:42', '2018-08-18'),
(172, 199, 154, '192.168.50.196 Developer 2018-08-18 06:25:42am Md. Ayub azahar', 0, 'Afternoon (01:00 - 09:00)', 'B', '2018-08-18', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-18 00:25:42', '2018-08-18'),
(173, 199, 147, '192.168.50.196 Developer 2018-08-18 06:25:42am Md. Ayub azahar', 0, 'Afternoon (01:00 - 09:00)', 'B', '2018-08-18', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-18 00:25:42', '2018-08-18'),
(174, 199, 94, '192.168.50.196 Developer 2018-08-29 09:14:57am Md. Ayub azahar', 0, 'Morning (07:30 - 01:00)', 'A', '2018-08-29', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-29 03:14:57', '2018-08-29'),
(175, 199, 199, '192.168.50.196 Developer 2018-08-29 09:14:57am Md. Ayub azahar', 0, 'Morning (07:30 - 01:00)', 'A', '2018-08-29', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-29 03:14:57', '2018-08-31'),
(176, 199, 119, '192.168.50.196 Developer 2018-08-29 09:14:57am Md. Ayub azahar', 0, 'Morning (07:30 - 01:00)', 'A', '2018-08-29', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-29 03:14:57', '2018-08-29'),
(177, 199, 174, '192.168.50.196 Developer 2018-08-29 09:14:57am Md. Ayub azahar', 0, 'Morning (07:30 - 01:00)', 'A', '2018-08-29', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-29 03:14:57', '2018-08-29'),
(178, 199, 175, '192.168.50.196 Developer 2018-08-29 09:14:57am Md. Ayub azahar', 0, 'Morning (07:30 - 01:00)', 'A', '2018-08-29', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-29 03:14:57', '2018-08-29'),
(179, 199, 98, '192.168.50.196 Developer 2018-08-29 09:17:47am Md. Ayub azahar', 0, 'Afternoon (01:00 - 09:00)', 'B', '2018-08-29', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-29 03:17:47', '2018-08-29'),
(180, 199, 104, '192.168.50.196 Developer 2018-08-29 09:17:47am Md. Ayub azahar', 0, 'Afternoon (01:00 - 09:00)', 'B', '2018-08-29', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-29 03:17:47', '2018-08-29'),
(181, 199, 147, '192.168.50.196 Developer 2018-08-29 09:17:47am Md. Ayub azahar', 0, 'Afternoon (01:00 - 09:00)', 'B', '2018-08-29', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-29 03:17:47', '2018-08-29'),
(182, 199, 119, '192.168.50.196 Developer 2018-08-29 09:17:47am Md. Ayub azahar', 0, 'Afternoon (01:00 - 09:00)', 'B', '2018-08-29', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-29 03:17:47', '2018-08-29'),
(183, 199, 111, '192.168.50.196 Developer 2018-08-29 09:18:49am Md. Ayub azahar', 0, 'Night (09:00 - 03:00)', 'C', '2018-08-29', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-29 03:18:49', '2018-08-29'),
(184, 199, 154, '192.168.50.196 Developer 2018-08-29 09:18:49am Md. Ayub azahar', 0, 'Night (09:00 - 03:00)', 'C', '2018-08-29', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-29 03:18:49', '2018-08-29'),
(185, 199, 188, '192.168.50.196 Developer 2018-08-29 09:18:49am Md. Ayub azahar', 0, 'Night (09:00 - 03:00)', 'C', '2018-08-29', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-29 03:18:49', '2018-08-30'),
(186, 199, 156, '192.168.50.196 Developer 2018-08-29 09:18:49am Md. Ayub azahar', 0, 'Night (09:00 - 03:00)', 'C', '2018-08-29', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-29 03:18:49', '2018-08-29'),
(187, 199, 131, '192.168.50.196 Developer 2018-08-30 03:40:15am Md. Ayub azahar', 0, 'Morning (07:30 - 01:00)', 'A', '2018-08-30', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-29 21:40:16', '2018-08-30'),
(188, 199, 144, '192.168.50.196 Developer 2018-08-30 03:40:15am Md. Ayub azahar', 0, 'Morning (07:30 - 01:00)', 'A', '2018-08-30', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-29 21:40:16', '2018-08-30'),
(189, 199, 189, '192.168.50.196 Developer 2018-08-30 03:40:15am Md. Ayub azahar', 0, 'Morning (07:30 - 01:00)', 'A', '2018-08-30', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-29 21:40:16', '2018-08-30'),
(190, 199, 146, '192.168.50.196 Developer 2018-08-30 03:40:15am Md. Ayub azahar', 0, 'Morning (07:30 - 01:00)', 'A', '2018-08-30', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-29 21:40:16', '2018-08-30'),
(191, 199, 119, '192.168.50.196 Developer 2018-08-30 03:40:15am Md. Ayub azahar', 0, 'Morning (07:30 - 01:00)', 'A', '2018-08-30', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-29 21:40:16', '2018-08-30'),
(192, 199, 174, '192.168.50.196 Developer 2018-08-30 03:40:15am Md. Ayub azahar', 0, 'Morning (07:30 - 01:00)', 'A', '2018-08-30', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-29 21:40:16', '2018-08-30'),
(193, 199, 175, '192.168.50.196 Developer 2018-08-30 03:40:15am Md. Ayub azahar', 0, 'Morning (07:30 - 01:00)', 'A', '2018-08-30', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-29 21:40:16', '2018-08-30'),
(194, 199, 131, '192.168.50.196 Developer 2018-08-30 03:41:47am Md. Ayub azahar', 0, 'Afternoon (01:00 - 09:00)', 'B', '2018-08-30', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-29 21:41:48', '2018-08-30'),
(195, 199, 94, '192.168.50.196 Developer 2018-08-30 03:41:47am Md. Ayub azahar', 0, 'Afternoon (01:00 - 09:00)', 'B', '2018-08-30', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-29 21:41:48', '2018-08-30'),
(196, 199, 98, '192.168.50.196 Developer 2018-08-30 03:41:47am Md. Ayub azahar', 0, 'Afternoon (01:00 - 09:00)', 'B', '2018-08-30', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-29 21:41:48', '2018-08-30'),
(197, 199, 175, '192.168.50.196 Developer 2018-08-30 03:41:47am Md. Ayub azahar', 0, 'Afternoon (01:00 - 09:00)', 'B', '2018-08-30', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-29 21:41:48', '2018-08-30'),
(198, 199, 165, '192.168.50.196 Developer 2018-08-30 03:41:47am Md. Ayub azahar', 0, 'Afternoon (01:00 - 09:00)', 'B', '2018-08-30', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-29 21:41:48', '2018-08-30'),
(199, 199, 178, '192.168.50.196 Developer 2018-08-30 03:41:47am Md. Ayub azahar', 0, 'Afternoon (01:00 - 09:00)', 'B', '2018-08-30', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-29 21:41:48', '2018-08-30'),
(200, 199, 147, '192.168.50.196 Developer 2018-08-30 03:41:47am Md. Ayub azahar', 0, 'Afternoon (01:00 - 09:00)', 'B', '2018-08-30', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-29 21:41:48', '2018-08-30'),
(201, 199, 169, '192.168.50.196 Developer 2018-08-30 03:41:47am Md. Ayub azahar', 0, 'Afternoon (01:00 - 09:00)', 'B', '2018-08-30', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-29 21:41:48', '2018-08-30'),
(202, 199, 131, '192.168.50.196 Developer 2018-08-30 03:42:21am Md. Ayub azahar', 0, 'Night (09:00 - 03:00)', 'C', '2018-08-30', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-29 21:42:22', '2018-08-30'),
(203, 199, 179, '192.168.50.196 Developer 2018-08-30 03:42:21am Md. Ayub azahar', 0, 'Night (09:00 - 03:00)', 'C', '2018-08-30', NULL, '00:00:00', NULL, '00:00:00', NULL, 'no', 0, '', '', '', '', '2018-08-29 21:42:22', '2018-08-30');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `user_id` int(15) NOT NULL,
  `name` varchar(40) NOT NULL,
  `modified` datetime NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `user_id`, `name`, `modified`, `created`) VALUES
(1, 0, 'sadmin', '0000-00-00 00:00:00', '2015-07-01 00:00:00'),
(3, 0, 'admin', '0000-00-00 00:00:00', '2015-08-11 05:36:07'),
(4, 0, 'accounts', '0000-00-00 00:00:00', '2015-11-12 05:10:10'),
(5, 0, 'general', '0000-00-00 00:00:00', '2016-02-19 13:54:09'),
(6, 0, 'TRAINEE', '0000-00-00 00:00:00', '2016-02-19 13:54:22'),
(7, 0, 'supervisor', '0000-00-00 00:00:00', '2016-02-19 13:56:49'),
(8, 0, 'manager', '0000-00-00 00:00:00', '2016-02-19 13:57:03'),
(9, 0, 'technician', '0000-00-00 00:00:00', '2016-02-19 19:48:17'),
(10, 0, 'installation', '0000-00-00 00:00:00', '1899-11-23 02:27:37'),
(11, 0, 'dealer', '0000-00-00 00:00:00', '2016-04-18 06:38:51'),
(12, 0, 'Test2', '0000-00-00 00:00:00', '2016-06-22 07:15:14'),
(13, 0, 'TRAINEE', '0000-00-00 00:00:00', '2017-03-13 21:28:37'),
(14, 0, 'Agent', '0000-00-00 00:00:00', '2017-03-14 08:28:52'),
(15, 83, 'developer', '2017-10-25 11:25:57', '2017-10-25 11:25:57'),
(16, 195, 'logistics', '2017-12-12 07:15:11', '2017-12-12 07:15:11'),
(17, 195, 'fpcadmin', '2017-12-26 09:40:08', '2017-12-26 09:40:08'),
(18, 195, 'EMP', '2017-12-30 07:47:57', '2017-12-30 07:47:57'),
(19, 83, 'verification', '2018-06-27 06:04:51', '2018-06-27 06:04:51');

-- --------------------------------------------------------

--
-- Table structure for table `static_roasters`
--

CREATE TABLE `static_roasters` (
  `id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `pc_id` varchar(151) NOT NULL,
  `day_name` varchar(21) NOT NULL,
  `shift_name_time` varchar(71) DEFAULT NULL,
  `shift_incharge_id` int(15) DEFAULT NULL,
  `shift_incharge2_id` int(15) DEFAULT NULL,
  `shift_incharge3_id` int(15) DEFAULT NULL,
  `alphabet_a` char(1) NOT NULL,
  `a1_id` int(15) DEFAULT NULL,
  `a2` int(15) DEFAULT NULL,
  `a3` int(15) DEFAULT NULL,
  `a4` int(15) DEFAULT NULL,
  `a5` int(15) DEFAULT NULL,
  `a6` int(15) DEFAULT NULL,
  `a7` int(15) DEFAULT NULL,
  `a8` int(15) DEFAULT NULL,
  `a9` int(15) DEFAULT NULL,
  `a10` int(15) DEFAULT NULL,
  `a11` int(15) DEFAULT NULL,
  `afshift_name_time2` varchar(71) DEFAULT NULL,
  `afshift_incharge_id` int(15) DEFAULT NULL,
  `afshift_incharge2_id` int(15) DEFAULT NULL,
  `afshift_incharge3_id` int(15) DEFAULT NULL,
  `alphabet_b` char(1) NOT NULL,
  `afa1_id` int(15) DEFAULT NULL,
  `afa2` int(15) DEFAULT NULL,
  `afa3` int(15) DEFAULT NULL,
  `afa4` int(15) DEFAULT NULL,
  `afa5` int(15) DEFAULT NULL,
  `afa6` int(15) DEFAULT NULL,
  `afa7` int(15) DEFAULT NULL,
  `afa8` int(15) DEFAULT NULL,
  `afa9` int(15) DEFAULT NULL,
  `afa10` int(15) DEFAULT NULL,
  `afa11` int(15) DEFAULT NULL,
  `nishift_name_time3` varchar(71) DEFAULT NULL,
  `nishift_incharge_id` int(15) DEFAULT NULL,
  `nishift_incharge2_id` int(15) DEFAULT NULL,
  `nishift_incharge3_id` int(15) DEFAULT NULL,
  `alphabet_c` char(1) NOT NULL,
  `nia1_id` int(15) DEFAULT NULL,
  `nia2` int(15) DEFAULT NULL,
  `nia3` int(15) DEFAULT NULL,
  `nia4` int(15) DEFAULT NULL,
  `nia5` int(15) DEFAULT NULL,
  `nia6` int(15) DEFAULT NULL,
  `nia7` int(15) DEFAULT NULL,
  `nia8` int(15) DEFAULT NULL,
  `nia9` int(15) DEFAULT NULL,
  `nia10` int(15) DEFAULT NULL,
  `nia11` int(15) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` enum('yes','no') NOT NULL DEFAULT 'no',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `static_roasters`
--

INSERT INTO `static_roasters` (`id`, `user_id`, `pc_id`, `day_name`, `shift_name_time`, `shift_incharge_id`, `shift_incharge2_id`, `shift_incharge3_id`, `alphabet_a`, `a1_id`, `a2`, `a3`, `a4`, `a5`, `a6`, `a7`, `a8`, `a9`, `a10`, `a11`, `afshift_name_time2`, `afshift_incharge_id`, `afshift_incharge2_id`, `afshift_incharge3_id`, `alphabet_b`, `afa1_id`, `afa2`, `afa3`, `afa4`, `afa5`, `afa6`, `afa7`, `afa8`, `afa9`, `afa10`, `afa11`, `nishift_name_time3`, `nishift_incharge_id`, `nishift_incharge2_id`, `nishift_incharge3_id`, `alphabet_c`, `nia1_id`, `nia2`, `nia3`, `nia4`, `nia5`, `nia6`, `nia7`, `nia8`, `nia9`, `nia10`, `nia11`, `date`, `status`, `created`, `modified`) VALUES
(1, 199, '', 'Saturday', 'Morning (07:30 - 01:00)', 105, NULL, NULL, 'A', 172, 119, 170, 169, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Afternoon (01:00 - 09:00)', 120, NULL, NULL, 'B', 148, 161, 171, 190, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Night (09:00 - 03:00)', 98, NULL, NULL, 'C', 194, 192, 191, 189, 182, NULL, NULL, NULL, NULL, NULL, 0, '2018-01-08', 'no', '2018-01-07 17:19:00', '2018-09-04'),
(2, 199, '', 'Sunday', 'Morning (07:30 - 01:00)', 99, NULL, NULL, 'A', 167, 161, 170, 191, 119, NULL, NULL, NULL, NULL, NULL, 0, 'Afternoon (01:00 - 09:00)', 105, NULL, NULL, 'B', 153, 122, 156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Night (09:00 - 03:00)', 111, NULL, NULL, 'C', 154, 148, 106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2018-01-08', 'no', '2018-01-07 11:19:00', '2018-08-29'),
(3, 195, '', 'Monday', 'Morning (07:30 - 01:00)', 187, 185, 183, 'A', 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 0, 'Afternoon (01:00 - 09:00)', 162, 163, 0, 'B', 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 0, 'Night (09:00 - 03:00)', 131, 130, 153, 'C', 154, 148, 156, 157, 158, 122, 124, 119, 106, 92, 0, '2018-01-08', 'no', '2018-01-07 11:19:00', '2018-01-08'),
(4, 195, '', 'Tuesday', 'Morning (07:30 - 01:00)', 98, 97, 111, 'A', 172, 92, 174, 175, 176, 177, 178, 179, 180, 181, 0, 'Afternoon (01:00 - 09:00)', 162, 163, 0, 'B', 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 0, 'Night (09:00 - 03:00)', 131, 130, 153, 'C', 154, 148, 156, 157, 158, 122, 124, 119, 106, 92, 0, '2018-01-08', 'no', '2018-01-07 11:19:00', '2018-01-09'),
(5, 199, '', 'Wednesday', 'Morning (07:30 - 01:00)', 105, 97, NULL, 'A', 156, 188, 180, 167, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Afternoon (01:00 - 09:00)', 98, 187, NULL, 'B', 178, 172, 157, 119, 124, 158, NULL, NULL, NULL, NULL, 0, 'Night (09:00 - 03:00)', 94, 97, NULL, 'C', 156, 188, 154, 190, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2018-01-08', 'no', '2018-01-07 11:19:00', '2018-09-01'),
(6, 195, '', 'Thursday', 'Morning (07:30 - 01:00)', 131, 130, 144, 'A', 189, 106, 168, 174, 191, 175, 178, 179, 180, 181, 0, 'Afternoon (01:00 - 09:00)', 162, 163, 0, 'B', 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 0, 'Night (09:00 - 03:00)', 131, 130, 153, 'C', 154, 148, 156, 157, 158, 122, 124, 119, 106, 92, 0, '2018-01-08', 'no', '2018-01-07 11:19:00', '2018-01-09'),
(7, 199, '', 'Friday', 'Morning (07:30 - 01:00)', 187, 144, 131, 'A', 165, 172, 160, 119, 124, 147, 167, 179, 182, 194, 0, 'Afternoon (01:00 - 09:00)', 187, 105, 120, 'B', 194, 192, 191, 190, 189, 188, 182, 181, 180, 178, 0, 'Night (09:00 - 03:00)', 187, 183, 162, 'C', 194, 192, 191, 190, 189, 188, 182, 181, 180, 179, 0, '2018-01-08', 'no', '2018-01-07 11:19:00', '2018-09-01');

-- --------------------------------------------------------

--
-- Table structure for table `status_histories`
--

CREATE TABLE `status_histories` (
  `id` int(15) NOT NULL,
  `log_user_id` int(15) NOT NULL,
  `package_customer_id` int(15) NOT NULL,
  `mac` text NOT NULL,
  `system` text NOT NULL,
  `user_id` text NOT NULL,
  `status` text NOT NULL,
  `date` text NOT NULL,
  `modified` datetime NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status_histories`
--

INSERT INTO `status_histories` (`id`, `log_user_id`, `package_customer_id`, `mac`, `system`, `user_id`, `status`, `date`, `modified`, `created`) VALUES
(21949, 0, 296, '', '', '', 'Request to hold', '08-19-2017', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21950, 0, 1720, '', '', '', 'Request to hold', '08-19-2017', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21951, 0, 13534, '', '', '', 'sales done', '2017-08-19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21952, 0, 13535, '', '', '', 'sales query', '2017-08-19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21953, 0, 8396, '["1A:79:31:05:4B (HOLD)","1A:79:31:05:2E"]', '', '["","92"]', '["","active"]', '["",""]', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21954, 0, 13536, '', '', '', 'sales done', '2017-08-19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21955, 0, 13537, '', '', '', 'sales query', '2017-08-19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21956, 0, 13538, '', '', '', 'sales query', '2017-08-19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21957, 0, 8396, '["1A:79:31:05:4B (HOLD)","1A:79:31:05:2E"]', '', '["","92"]', '["hold","active"]', '["",""]', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27387, 169, 3960, '["EBD962"]', '["CMS1"]', '["122"]', '["active"]', '["07\\/11\\/2015"]', '2017-10-25 07:11:48', '2017-10-25 08:11:48'),
(43704, 83, 7267, '', '', '', 'sales done', '2018-07-04', '2018-07-04 03:12:36', '2018-07-03 21:12:36'),
(43705, 83, 7268, '', '', '', 'sales done', '2018-07-04', '2018-07-04 03:13:25', '2018-07-03 21:13:25'),
(43706, 83, 7270, '', '', '', 'sales query', '2018-07-04', '2018-07-04 11:18:44', '2018-07-04 05:18:44'),
(43707, 83, 7271, '', '', '', 'sales done', '2018-08-08', '2018-08-08 10:31:51', '2018-08-08 04:31:51'),
(43708, 199, 4796, '["4645645","0000000","852147","965874","81383B","813A99"]', '["CMS1","PORTAL1","PORTAL1","PORTAL","CMS1","CMS2"]', '["122","143","143","210","122","122"]', '["active","active","active","active","active","active"]', '["08\\/18\\/2018","04\\/18\\/2018","04\\/18\\/2018","04\\/16\\/2018","07\\/04\\/2014","07\\/04\\/2014"]', '2018-08-18 02:10:57', '2018-08-17 20:10:57'),
(43709, 199, 4796, '["4645645picked up","0000000","852147","965874","81383B","813A99"]', '["CMS1","PORTAL1","PORTAL1","PORTAL","CMS1","CMS2"]', '["122","143","143","210","122","122"]', '["active","active","active","active","active","active"]', '["08\\/18\\/2018","04\\/18\\/2018","04\\/18\\/2018","04\\/16\\/2018","07\\/04\\/2014","07\\/04\\/2014"]', '2018-08-18 02:13:28', '2018-08-17 20:13:28'),
(43710, 199, 4796, '["4645645picked up","0000000","852147","965874","81383B","813A99 (Note)"]', '["CMS1","PORTAL1","PORTAL1","PORTAL","CMS1","CMS2"]', '["122","143","143","210","122","122"]', '["active","active","active","active","active","active"]', '["08\\/18\\/2018","04\\/18\\/2018","04\\/18\\/2018","04\\/16\\/2018","07\\/04\\/2014","07\\/04\\/2014"]', '2018-08-18 02:15:36', '2018-08-17 20:15:36');

-- --------------------------------------------------------

--
-- Table structure for table `swaps`
--

CREATE TABLE `swaps` (
  `id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `pc_id` varchar(151) NOT NULL,
  `swap_type` varchar(35) NOT NULL COMMENT 'who is request for swap',
  `swap_by` int(15) NOT NULL COMMENT 'new emp',
  `swap_for` int(15) NOT NULL COMMENT 'old emp',
  `shift_name` varchar(71) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `comment` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `swaps`
--

INSERT INTO `swaps` (`id`, `user_id`, `pc_id`, `swap_type`, `swap_by`, `swap_for`, `shift_name`, `date`, `comment`, `created`, `modified`) VALUES
(6, 199, '192.168.50.196 Developer 2018-08-18 10:19:34am Md. Ayub azahar', 'request', 188, 92, 'Afternoon (12:00 - 20:00)', '2018-08-18', 'dsdfg sdf', '2018-08-18 04:19:34', '2018-08-18'),
(7, 199, '192.168.50.196 Developer 2018-08-18 10:22:56am Md. Ayub azahar', 'request', 92, 188, 'Afternoon (12:00 - 20:00)', '2018-08-18', 'test .....', '2018-08-18 04:22:56', '2018-08-18');

-- --------------------------------------------------------

--
-- Table structure for table `temproasterdetails`
--

CREATE TABLE `temproasterdetails` (
  `id` int(15) NOT NULL,
  `a_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `roaster_detail_id` int(15) NOT NULL,
  `emp_id` bigint(15) NOT NULL,
  `pc_id` varchar(151) NOT NULL,
  `roasters_histories_id` int(15) NOT NULL,
  `shift_name_time` varchar(41) NOT NULL,
  `date` date NOT NULL,
  `time` time DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0' COMMENT 'this two string for data update',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `temproasterdetails`
--

INSERT INTO `temproasterdetails` (`id`, `a_id`, `user_id`, `roaster_detail_id`, `emp_id`, `pc_id`, `roasters_histories_id`, `shift_name_time`, `date`, `time`, `status`, `created`, `modified`) VALUES
(0, 1, 199, 0, 98, '', 17, 'Morning (07.30 - 12.00)', '2018-03-06', NULL, 0, '2018-03-06 23:42:05', '2018-03-07'),
(0, 2, 199, 0, 172, '', 17, 'Morning (07.30 - 12.00)', '2018-03-06', NULL, 0, '2018-03-06 23:42:05', '2018-03-07'),
(0, 3, 199, 0, 92, '', 17, 'Morning (07.30 - 12.00)', '2018-03-06', NULL, 0, '2018-03-06 23:42:05', '2018-03-07'),
(0, 4, 199, 0, 174, '', 17, 'Morning (07.30 - 12.00)', '2018-03-06', NULL, 0, '2018-03-06 23:42:05', '2018-03-07'),
(0, 5, 199, 0, 175, '', 17, 'Morning (07.30 - 12.00)', '2018-03-06', NULL, 0, '2018-03-06 23:42:05', '2018-03-07'),
(0, 6, 83, 0, 131, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 16:58:10', '2018-04-12'),
(0, 7, 83, 0, 144, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 16:58:10', '2018-04-12'),
(0, 8, 83, 0, 122, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 16:58:10', '2018-04-12'),
(0, 9, 83, 0, 174, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 16:58:10', '2018-04-12'),
(0, 10, 83, 0, 191, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 16:58:10', '2018-04-12'),
(0, 11, 83, 0, 175, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 16:58:10', '2018-04-12'),
(0, 12, 83, 0, 178, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 16:58:10', '2018-04-12'),
(0, 13, 83, 0, 179, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 16:58:10', '2018-04-12'),
(0, 14, 83, 0, 180, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 16:58:10', '2018-04-12'),
(0, 15, 83, 0, 181, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 16:58:10', '2018-04-12'),
(0, 16, 83, 0, 131, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 16:58:22', '2018-04-12'),
(0, 17, 83, 0, 144, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 16:58:22', '2018-04-12'),
(0, 18, 83, 0, 122, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 16:58:22', '2018-04-12'),
(0, 19, 83, 0, 174, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 16:58:22', '2018-04-12'),
(0, 20, 83, 0, 191, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 16:58:22', '2018-04-12'),
(0, 21, 83, 0, 175, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 16:58:23', '2018-04-12'),
(0, 22, 83, 0, 178, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 16:58:23', '2018-04-12'),
(0, 23, 83, 0, 179, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 16:58:23', '2018-04-12'),
(0, 24, 83, 0, 180, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 16:58:23', '2018-04-12'),
(0, 25, 83, 0, 181, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 16:58:23', '2018-04-12'),
(0, 26, 83, 0, 131, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 17:00:46', '2018-04-12'),
(0, 27, 83, 0, 144, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 17:00:46', '2018-04-12'),
(0, 28, 83, 0, 122, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 17:00:46', '2018-04-12'),
(0, 29, 83, 0, 174, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 17:00:46', '2018-04-12'),
(0, 30, 83, 0, 191, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 17:00:46', '2018-04-12'),
(0, 31, 83, 0, 175, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 17:00:46', '2018-04-12'),
(0, 32, 83, 0, 178, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 17:00:46', '2018-04-12'),
(0, 33, 83, 0, 179, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 17:00:46', '2018-04-12'),
(0, 34, 83, 0, 180, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 17:00:46', '2018-04-12'),
(0, 35, 83, 0, 181, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 17:00:46', '2018-04-12'),
(0, 36, 83, 0, 131, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 17:06:14', '2018-04-12'),
(0, 37, 83, 0, 144, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 17:06:14', '2018-04-12'),
(0, 38, 83, 0, 122, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 17:06:14', '2018-04-12'),
(0, 39, 83, 0, 174, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 17:06:14', '2018-04-12'),
(0, 40, 83, 0, 191, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 17:06:14', '2018-04-12'),
(0, 41, 83, 0, 175, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 17:06:14', '2018-04-12'),
(0, 42, 83, 0, 178, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 17:06:14', '2018-04-12'),
(0, 43, 83, 0, 179, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 17:06:14', '2018-04-12'),
(0, 44, 83, 0, 180, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 17:06:14', '2018-04-12'),
(0, 45, 83, 0, 181, '', 1, 'Morning (07.30 - 12.00)', '2018-04-12', NULL, 0, '2018-04-12 17:06:14', '2018-04-12');

-- --------------------------------------------------------

--
-- Table structure for table `temp_rs`
--

CREATE TABLE `temp_rs` (
  `id` int(15) NOT NULL,
  `date` date NOT NULL,
  `day_name` varchar(31) NOT NULL,
  `total_day` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(15) NOT NULL,
  `auto_recurring` float NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `priority` enum('low','medium','high') NOT NULL DEFAULT 'low',
  `payment_process` int(1) NOT NULL DEFAULT '1' COMMENT 'For payments success means 2 or failed means 3',
  `status` varchar(20) NOT NULL DEFAULT 'open',
  `verification_solve` text CHARACTER SET utf8 COMMENT 'When task is solve',
  `verification_not_solve` text CHARACTER SET utf8 NOT NULL COMMENT 'When task is not solve',
  `verification_date` date NOT NULL,
  `pc_info` varchar(151) DEFAULT NULL COMMENT 'When QA will verify ',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `auto_recurring`, `content`, `priority`, `payment_process`, `status`, `verification_solve`, `verification_not_solve`, `verification_date`, `pc_info`, `created`, `modified`) VALUES
(8540, 0, '<p>INTERNET PROBLEM CALL HIS INTERNET PROVIDER</p>\r\n\r\n<p>RAKIBUL</p>\r\n', 'low', 1, 'solved', NULL, '', '0000-00-00', NULL, '2016-12-29 10:37:36', '2016-12-25 14:12:39'),
(8541, 0, 'Comcast Problem.', 'low', 1, 'solved', NULL, '', '0000-00-00', NULL, '2016-12-29 10:37:36', '2016-12-25 14:14:31'),
(8542, 0, '<p>INTERNET PROBLEM CALL HIS INTERNET PROVIDER</p>\r\n\r\n<p>RAKIBUL</p>\r\n', 'low', 1, 'solved', NULL, '', '0000-00-00', NULL, '2016-12-29 10:37:36', '2016-12-25 14:15:59'),
(8543, 0, '<p><span style="font-family:georgia; font-size:100%">TOLD HIM TO CALL HIS INTERNET PROVIDER.</span></p>\r\n\r\n<p><span style="font-family:georgia; font-size:100%">RAKIBUL</span></p>\r\n', 'low', 1, 'solved', NULL, '', '0000-00-00', NULL, '2016-12-29 10:37:36', '2016-12-25 14:18:51'),
(8544, 0, 'NEW BOX ACTIVATION REQUEST. M:38:53:FD.', 'low', 1, 'solved', NULL, '', '0000-00-00', NULL, '2016-12-29 10:37:36', '2016-12-25 14:24:55'),
(8545, 0, 'TOLD HIM TO TALK WITH HIS INTERNET PROVIDER.', 'low', 1, 'solved', NULL, '', '0000-00-00', NULL, '2016-12-29 10:37:36', '2016-12-25 14:29:54'),
(8546, 0, 'USING COMCAST, TOLD HIM TO TALK TO HIS INTERNET PROVIDER.', 'low', 1, 'solved', NULL, '', '0000-00-00', NULL, '2016-12-29 10:37:36', '2016-12-25 14:36:03'),
(8547, 0, 'TOLD HIM TO TALK TO HIS INTERNET PROVIDER.', 'low', 1, 'solved', NULL, '', '0000-00-00', NULL, '2016-12-29 10:37:36', '2016-12-25 14:42:24'),
(79497, 0, 'moving test', 'low', 1, 'solved', NULL, '', '0000-00-00', NULL, '2018-07-06 03:35:26', '2018-07-06 03:35:26'),
(79498, 0, 'moving room..........', 'low', 1, 'open', NULL, '', '0000-00-00', NULL, '2018-07-06 05:44:34', '2018-07-06 05:44:34'),
(79499, 0, 'moving room change........', 'low', 1, 'open', NULL, '', '0000-00-00', NULL, '2018-07-20 02:07:26', '2018-07-20 02:07:26'),
(79500, 0, 'picked 123544', 'low', 1, 'solved', NULL, '', '0000-00-00', NULL, '2018-08-17 20:14:52', '2018-08-17 20:14:52');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_departments`
--

CREATE TABLE `ticket_departments` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket_departments`
--

INSERT INTO `ticket_departments` (`id`, `name`, `created`, `modified`) VALUES
(1, 'gdfg', '2017-12-30 00:04:30', '2017-12-30 06:34:40');

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

CREATE TABLE `tracks` (
  `id` int(15) NOT NULL,
  `issue_id` int(11) NOT NULL,
  `ticket_id` int(20) NOT NULL,
  `forwarded_by` int(151) NOT NULL,
  `solved_by` int(15) NOT NULL,
  `unsolved_by` int(15) NOT NULL,
  `role_id` int(20) DEFAULT NULL,
  `user_id` int(15) DEFAULT NULL,
  `package_customer_id` int(11) DEFAULT NULL,
  `comment` text NOT NULL,
  `status` enum('closed','solved','unresolved','open','outbound','called','others') NOT NULL DEFAULT 'open',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tracks`
--

INSERT INTO `tracks` (`id`, `issue_id`, `ticket_id`, `forwarded_by`, `solved_by`, `unsolved_by`, `role_id`, `user_id`, `package_customer_id`, `comment`, `status`, `created`) VALUES
(48822, 0, 38116, 147, 0, 0, NULL, NULL, 7852, 'DONE', 'solved', '2017-04-15 11:06:12'),
(48823, 0, 39819, 156, 0, 0, NULL, NULL, 7565, '', 'open', '2017-04-15 11:07:47'),
(48824, 102, 39820, 92, 0, 0, NULL, NULL, 355, '', 'solved', '2017-04-15 11:10:25'),
(48825, 103, 39821, 147, 0, 0, NULL, NULL, 10774, '', 'solved', '2017-04-15 11:12:46'),
(48826, 0, 38112, 147, 0, 0, NULL, NULL, 7729, 'DONE', 'solved', '2017-04-15 11:13:41'),
(102833, 27, 79498, 83, 0, 0, 9, 173, 4801, '', '', '2018-07-06 05:44:34'),
(102834, 27, 79499, 83, 0, 0, NULL, 122, 4797, '', '', '2018-07-20 02:07:26'),
(102835, 27, 79500, 199, 0, 0, NULL, NULL, 4796, '', 'solved', '2018-08-17 20:14:52');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL DEFAULT '0',
  `auto_recurring` int(1) NOT NULL DEFAULT '0',
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `company` varchar(231) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(25) NOT NULL,
  `country` varchar(35) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `email` varchar(35) NOT NULL,
  `error_msg` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL,
  `bonus_for` int(15) NOT NULL COMMENT 'for which customer this bonus',
  `type` varchar(20) NOT NULL,
  `trx_id` varchar(40) NOT NULL,
  `auth_code` varchar(40) NOT NULL,
  `pay_mode` enum('card','check','money order','online bill','cash','refund') NOT NULL,
  `next_payment` date NOT NULL,
  `payable_amount` float NOT NULL,
  `paid_amount` float NOT NULL,
  `package_customer_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `card_no` varchar(200) NOT NULL,
  `exp_date` varchar(15) NOT NULL,
  `cvv_code` varchar(250) NOT NULL,
  `zip_code` varchar(250) NOT NULL,
  `fax` varchar(17) NOT NULL,
  `address` varchar(500) NOT NULL,
  `card_code` varchar(50) DEFAULT NULL,
  `invoice` varchar(40) DEFAULT NULL,
  `sfname` varchar(35) NOT NULL,
  `slname` varchar(35) NOT NULL,
  `saddress` varchar(40) NOT NULL,
  `scity` varchar(30) NOT NULL,
  `sstate` varchar(25) NOT NULL,
  `szip_code` varchar(25) NOT NULL,
  `scountry` varchar(30) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `check_image` varchar(250) NOT NULL,
  `check_info` varchar(500) NOT NULL,
  `cash_by` varchar(100) NOT NULL,
  `pay_to` int(15) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description_tran` varchar(200) NOT NULL,
  `product_type` varchar(100) NOT NULL,
  `quantity` int(5) NOT NULL,
  `rate` float NOT NULL,
  `price` float NOT NULL,
  `discount` float NOT NULL,
  `promotion` float NOT NULL,
  `credit` float NOT NULL,
  `adjustment` float NOT NULL,
  `note` varchar(200) NOT NULL,
  `attachment` varchar(1000) NOT NULL,
  `net_price` float NOT NULL,
  `notify_exp` int(1) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `transaction_id`, `auto_recurring`, `fname`, `lname`, `company`, `city`, `state`, `country`, `phone`, `email`, `error_msg`, `status`, `bonus_for`, `type`, `trx_id`, `auth_code`, `pay_mode`, `next_payment`, `payable_amount`, `paid_amount`, `package_customer_id`, `name`, `card_no`, `exp_date`, `cvv_code`, `zip_code`, `fax`, `address`, `card_code`, `invoice`, `sfname`, `slname`, `saddress`, `scity`, `sstate`, `szip_code`, `scountry`, `description`, `check_image`, `check_info`, `cash_by`, `pay_to`, `user_id`, `description_tran`, `product_type`, `quantity`, `rate`, `price`, `discount`, `promotion`, `credit`, `adjustment`, `note`, `attachment`, `net_price`, `notify_exp`, `created`) VALUES
(34550, 0, 0, NULL, NULL, '', '', '', '', '', '', '', 'open', 0, '', '', '', 'card', '2017-05-01', 90, 0, 5169, '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'SINGLE PLAY 1 BOX', '', 0, 0, '2017-02-12 18:10:55'),
(34551, 0, 0, 'MOHAMMED', 'NABI', '', 'MANASSAS', 'VA', '', '7037957810', 'farjana504@aol.com', '', 'update', 0, '', '', '', 'card', '0000-00-00', 0, 0, 5717, '', '4003447925299705', '04/17', '093', '20109', '', ' HELMSDALE PL ', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', 0, 145, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, '2017-02-12 18:32:44'),
(34552, 27903, 0, 'MOHAMMED', 'NABI', '', 'MANASSAS', 'VA', '', '7037957810', 'farjana504@aol.com', '', 'success', 0, '', '8858858451', '06205B', 'card', '0000-00-00', 120, 0, 5717, '', '4003447925299705', '04-2017', '093', '20109', '', ' HELMSDALE PL ', NULL, NULL, '', '', '', '', '', '', '', 'MB', '', '', '', 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, '2017-02-12 23:33:02'),
(34553, 0, 0, NULL, NULL, '', '', '', '', '', '', '', 'close', 0, '', '', '', 'card', '2017-05-01', 35.57, 0, 5717, '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, '2 BOX 1 MONTH (1ST MAY 2017 TO 19TH MAY 2017) + MERCHANT FEE', '', 0, 0, '2017-05-24 06:18:57'),
(34554, 0, 0, 'NAZIM', 'UDDIN', '', 'WARREN', 'MI', '', '3134423766', '', '', 'update', 0, '', '', '', 'card', '0000-00-00', 0, 0, 6302, '', '4430440068968916', '07/19', '712', '48091', '', ' CYMAN ', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', 0, 145, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, '2017-02-12 19:43:26'),
(34555, 23372, 0, 'NAZIM', 'UDDIN', '', 'WARREN', 'MI', '', '3134423766', '', '', 'success', 0, '', '8858900926', '611935', 'card', '0000-00-00', 30, 0, 6302, '', '4430440068968916', '07-2019', '712', '48091', '', ' CYMAN ', NULL, NULL, '', '', '', '', '', '', '', 'MB', '', '', '', 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, '2017-02-13 00:43:42'),
(34556, 0, 0, NULL, NULL, '', '', '', '', '', '', '', 'close', 0, '', '', '', 'card', '2017-03-01', 30, 0, 6302, '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'MONTHLY BILL', '', 0, 0, '2017-03-09 08:35:38'),
(34557, 27535, 0, 'MOHAMMED', 'GOLAM', '', 'BROOKLYN', 'NY', '', '3474868238', '', '', 'success', 0, '', '8858906477', '025813', 'card', '0000-00-00', 30, 0, 5550, '', '4029445070464421', '09-2020', '948', '11208', '', '85 AUTUMN AVN', NULL, NULL, '', '', '', '', '', '', '', 'MB', '', '', '', 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, '2017-02-13 00:55:30'),
(34558, 0, 0, NULL, NULL, '', '', '', '', '', '', '', 'close', 0, '', '', '', 'card', '2017-03-01', 30, 0, 5550, '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'SINGLE PLAY 1 BOX MONTHLY BILL', '', 0, 0, '2017-03-10 17:48:35'),
(34559, 0, 0, 'HABIBUR', 'RAJU', '', 'CENTER LINE', 'MI', '', '3138998423', '', '', 'update', 0, '', '', '', 'card', '0000-00-00', 0, 0, 1807, '', '4430440020575668', '01/21', '758', '48015', '', ' BERNICE ST ', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', 0, 145, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, '2017-02-12 20:24:52'),
(34560, 24667, 0, 'HABIBUR', 'RAJU', '', 'CENTER LINE', 'MI', '', '3138998423', '', '', 'success', 0, '', '8858924759', '757387', 'card', '0000-00-00', 50, 0, 1807, '', '4430440020575668', '01-2021', '758', '48015', '', ' BERNICE ST ', NULL, NULL, '', '', '', '', '', '', '', 'MB', '', '', '', 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, '2017-02-13 01:25:16'),
(34561, 0, 0, NULL, NULL, '', '', '', '', '', '', '', 'close', 0, '', '', '', 'card', '2017-03-01', 50, 0, 1807, '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'MONTHLY BILL', '', 0, 0, '2017-03-09 18:38:04'),
(34562, 0, 0, 'KAMAL', 'ALI', '', 'NORTH RICHLAND HILLS', 'TX', '', '8177935244', '', '', 'update', 0, '', '', '', 'card', '0000-00-00', 0, 0, 1930, '', '4744721022462455', '03/20', '472', '76180', '', ' ROBINS WAY ', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', 0, 92, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, '2017-02-12 20:32:37'),
(34563, 32011, 0, 'KAMAL', 'ALI', '', 'NORTH RICHLAND HILLS', 'TX', '', '8177935244', '', '', 'success', 0, '', '8858928361', '153065', 'card', '0000-00-00', 30, 0, 1930, '', '4744721022462455', '03-2020', '472', '76180', '', ' ROBINS WAY ', NULL, NULL, '', '', '', '', '', '', '', 'MB', '', '', '', 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, '2017-02-13 01:33:25'),
(34564, 22644, 0, 'NAZMUS', 'M SAKIB', '', 'JACKSON HEIGHTS', 'NY', 'United States', '', '', '', 'success', 0, '', '8858933044', '074600', 'card', '0000-00-00', 30, 0, 2590, '', '4207670154948973', '02-2019', '846', '11372', '', '37 35 90 STREET APT 3A', NULL, NULL, '', '', '', '', '', '', '', 'MB', '', '', '', 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, '2017-02-13 01:43:40'),
(34565, 0, 0, NULL, NULL, '', '', '', '', '', '', '', 'close', 0, '', '', '', 'card', '2017-03-01', 30, 0, 2590, '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'SINGLE PLAY 1 BOX', '', 0, 0, '2017-03-10 22:10:42'),
(80992, 0, 0, NULL, NULL, '', '', '', '', '9797030762', '', '', 'approved', 5057, '', '', '', 'card', '2018-01-19', 311, 0, 0, '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', 0, 195, '', '', 0, 0, 0, 0, 0, 0, 0, 'dfg dfgd', '', 0, 0, '2018-01-23 14:00:04'),
(80993, 0, 0, NULL, NULL, '', '', '', '', '', '', '', 'approved', 0, '', '', '', 'card', '2018-01-23', 311, 0, 5057, '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', 0, 195, '', '', 0, 0, 0, 0, 0, 0, 0, 'ftyhtyv  ghgfh hfh', '', 0, 0, '2018-01-23 14:03:28'),
(80994, 0, 0, 'MD', 'AMIN', '', 'JACKSON HEIGHTS', 'NY', '', '6466269715', '', '', 'update', 0, '', '', '', 'card', '0000-00-00', 0, 0, 4953, '', '5241', '03/20', '715', '11372', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', 0, 195, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, '2018-01-26 23:29:06'),
(80995, 0, 0, 'MD', 'AMIN', '', 'JACKSON HEIGHTS', 'NY', '', '6466269715', '', '', 'update', 0, '', '', '', 'card', '0000-00-00', 0, 0, 4953, '', '', '03/20', '715', '11372', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', 0, 195, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, '2018-01-26 23:29:23'),
(80996, 0, 0, 'MINA', 'BEGUM', '', 'WARREN', 'MI', '', '3137211731', '', '', 'update', 0, '', '', '', 'card', '0000-00-00', 0, 0, 5055, '', '38000000000006', '02/21', '268', '48091', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', 0, 195, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, '2018-01-30 04:04:29'),
(80997, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 0, '', '', '', '', '0000-00-00', 0, 0, 0, '', '', '', '', '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', NULL, '', '', '', '', '', '', '', NULL, '', '', '', 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, '2018-03-03 09:14:28'),
(80998, 0, 0, NULL, NULL, '', '', '', '', '', '', '', 'referral_bonus', 7167, '', '', '', 'card', '2018-06-25', 31, 0, 4798, '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '', '', '', 0, 83, '', '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, '2018-04-25 02:48:13');

-- --------------------------------------------------------

--
-- Table structure for table `tregistrations`
--

CREATE TABLE `tregistrations` (
  `id` int(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(151) NOT NULL,
  `c_password` varchar(151) NOT NULL,
  `f_name` varchar(151) NOT NULL,
  `l_name` varchar(151) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `title` varchar(355) NOT NULL,
  `address` varchar(355) NOT NULL,
  `city` varchar(151) NOT NULL,
  `country` varchar(151) NOT NULL,
  `state` varchar(151) NOT NULL,
  `zip` varchar(9) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `reseller_code` varchar(31) NOT NULL,
  `checked` int(1) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(41) NOT NULL,
  `name` varchar(71) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role_id` int(11) NOT NULL,
  `ip` varchar(21) NOT NULL,
  `last_duty_date` date NOT NULL,
  `last_duty_sift` varchar(41) NOT NULL,
  `last_in_time` time NOT NULL,
  `late_time` time NOT NULL,
  `last_out_time` time NOT NULL,
  `status` enum('active','blocked') NOT NULL DEFAULT 'active',
  `log_status` enum('no','request','complete','approve') NOT NULL DEFAULT 'no',
  `pc_id_user` varchar(151) NOT NULL COMMENT 'From which pc user loged in',
  `user_logout_info` varchar(151) NOT NULL COMMENT 'from where user logout',
  `modified` datetime NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `log_in_out` varchar(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `email`, `name`, `password`, `role_id`, `ip`, `last_duty_date`, `last_duty_sift`, `last_in_time`, `late_time`, `last_out_time`, `status`, `log_status`, `pc_id_user`, `user_logout_info`, `modified`, `created`, `log_in_out`) VALUES
(20, 0, 'marufzannnath@yahoo.com', 'maruf zannath', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 6, '127.0.1.1', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(32, 0, 'rahim.ce.ru@gmail.com', 'md abdur rahim', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 6, '127.0.1.1', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(33, 0, 'rajon@gmail.com', 'Md. rajon', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 6, '127.0.1.1', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'blocked', 'no', '', '', '2017-07-25 00:27:06', '2017-07-25 04:27:06', ''),
(45, 0, 'developer@gmail.com', 'Md. Altaf', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 15, '127.0.1.1', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '2021-02-19 12:02:40', '2021-02-19 17:02:40', 'i'),
(83, 0, 'farukmscse@gmail.com', 'Md. Omar Faruk', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 1, '127.0.1.1', '2018-07-20', '', '02:21:34', '00:00:00', '02:24:24', 'active', 'request', '', '', '2021-02-19 11:59:29', '2021-02-19 16:59:29', 'o'),
(89, 0, 'nchowdhury@totalitsolution.com', 'Nchowdhury', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 1, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '2017-06-08 15:31:37', '2017-06-15 07:09:15', ''),
(94, 0, 'rhossain@totalitsolution.com', 'Gazi Rehab Hossain', '341855909ea47bf287cd72c8d1bb71a08521b86d1f4805e4b15b6cea27719384', 7, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '2017-06-03 09:34:08', '2017-06-03 13:34:08', ''),
(97, 128, 'gkhan@totalitsolution.com', 'Gulam Mujtaba Khan', '0ef1eace7e8675a9145c0a9240fe6376fc2f468a8749cba2d20c449d835395e6', 7, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '2017-07-04 11:31:58', '2017-07-04 15:31:58', ''),
(98, 0, 'rislam@totalitsolution.com', 'Md Raisul Islam', 'ddc5803d1101fcbc826e5aeaec09ff93777f625c387ffa09cda1df5eb12338d8', 7, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(99, 0, 'srahman@totalitsolution.com', 'Md Sarwer Rahman', '514361e8a97381c65c5563a9507259f73bb608486886ea374f2d7ca6addb85c5', 7, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(102, 128, 'hrashid@totalitsolution.com', 'Sk Hasanur Rashid', '749cff57667d1b98b097a4b7ff5c24bd311c887e0120089954cc3c89edffcc89', 1, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '2017-08-29 21:43:24', '2017-08-30 01:43:24', ''),
(104, 0, 'ssalman@totalitsolution.com', 'Saad Salman', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '2018-08-15 05:45:21', '2018-08-15 09:45:21', ''),
(105, 128, 'ziko@totalitsolution.com', 'ZIKO', 'b7222da0b442d5c868dd9232746650649aad296d008934b2674ce456514a30eb', 7, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '2017-06-08 01:50:16', '2017-06-08 05:50:16', ''),
(106, 0, 'zferthus@totalitsolution.com', 'Zannatul Ferthus', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'blocked', 'no', '', '', '2017-07-25 00:23:47', '2017-07-25 04:23:47', ''),
(110, 0, 'rreza@totalitsolution.com', 'Md Raisul Reza', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 6, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'blocked', 'no', '', '', '2017-03-16 02:39:18', '2017-03-16 06:39:18', ''),
(111, 9, 'rpathan@gmail.com', 'Md Rahat Pathan', '253add9bbf0d5ffc13f1f9f77f92aa1c77f953a32adab4da3d3054d23d0ff4e9', 7, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '2017-04-25 05:02:58', '2017-04-25 09:02:58', ''),
(112, 0, 'belal@totalitsolution.com', 'Belal Hossain', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 9, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'blocked', 'no', '', '', '2017-03-16 02:38:44', '2017-03-16 06:38:44', ''),
(114, 83, 'test@gmail.com', 'Test', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 1, '', '2018-07-02', '', '09:22:25', '00:00:00', '09:24:40', 'active', 'request', '', '', '2018-07-02 09:24:40', '2018-07-02 13:24:40', ''),
(117, 128, 'faim@totalitsolution.com', 'FAIM', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'blocked', 'no', '', '', '2017-07-25 00:26:47', '2017-07-25 04:26:47', ''),
(119, 128, 'nhasan@totalitsolution.com', 'NAJMUL', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '2018-08-15 05:43:29', '2018-08-15 09:43:29', ''),
(120, 0, 'skabir@totalitsolution.com', 'SAADMAN', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 7, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(122, 83, 'agent@gmail.com', 'Agent', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '03:00:00', 'active', 'complete', '192.168.50.196 Developer 2018-09-05 09:11:50am Agent', '192.168.50.196 Developer 2018-09-09 09:29:58am Agent', '2018-09-09 09:29:58', '2018-09-09 13:29:58', ''),
(123, 0, 'salam@totalitsolution.com', 'Shahriar Alam', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 7, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'blocked', 'no', '', '', '2017-04-22 11:40:57', '2017-04-22 15:40:57', ''),
(124, 0, 'lsarker@totalitsolution.com', 'Laboynna Sarker', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'blocked', 'no', '', '', '2017-04-22 11:42:27', '2017-04-22 15:42:27', ''),
(125, 0, 'Testing@gmail.com', 'amsforce_Test', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 12, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(128, 0, 'Cnihad@totalitsolution.com', 'NIHAD ISHTIAQ', '9e3fea38dd0901a0dd24a628bea1106c662db76f1da0e14d47db70d855190e25', 1, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '2017-06-10 15:26:01', '2017-06-10 19:26:01', ''),
(130, 0, 'nahid@totalitsolution.com', 'NAHID', 'afa77e85a49cfff1bc8ef44afee47156db865461834dda9910f627ef8c4b2419', 7, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'blocked', 'no', '', '', '2017-07-25 00:25:57', '2017-07-25 04:25:57', ''),
(131, 0, 'ksaleh@totalitsolution.com', 'KAMRUL ISLAM SALEH', 'd05ad378b079022b818a33f524f63472813848e7e21f96c9e2be44d945cad30c', 7, '', '2018-09-05', 'Night (09:00 - 03:00)', '05:49:46', '00:00:00', '00:00:00', 'active', 'request', '192.168.50.196 Developer 2018-09-05 05:49:46am Md. Ayub azahar', '', '2018-09-05 05:49:46', '2018-09-05 09:49:46', ''),
(132, 0, 'hasib@totalitsolution.com', 'HASIB', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 9, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(133, 0, 'sonet@totalitsolution.com', 'SONET', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 9, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(134, 0, 'shahara@totalitsolution.com', 'SHAHARA', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 9, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(136, 0, 'mondal@totalitsolution.com', 'MONDAL', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 9, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(140, 0, 'ins1@gmail.com', 'ins1', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 10, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(142, 0, 'saadmgt@gmail.com', 'Syed Ahmed', '9b5f7d2f8d72ce5a062358e415b93015d73be1dbd876287236a187380589fd9a', 1, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(144, 9, 'tasfiairin@gmail.com', 'TASFIA ISLAM', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 7, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '2017-06-09 11:55:24', '2017-06-09 15:55:24', ''),
(145, 128, 'imanul@totalitsolution.com', 'IMANUL', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'blocked', 'no', '', '', '2017-03-17 18:35:33', '2017-03-17 22:35:33', ''),
(146, 0, 'sridoy@totalitsolution.com', 'SARWAR ALAM RIDOY', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '2017-06-03 09:32:48', '2018-04-06 08:28:27', ''),
(147, 0, 'rakibulss@totalitsolution.com', 'RAKIBUL SUBAN SIDDIQY', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(148, 0, 'rkhan@totalitsolution.com', 'RAFID SHAHRIYAR KHAN', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'blocked', 'no', '', '', '2017-04-22 11:41:36', '2017-04-22 15:41:36', ''),
(150, 0, 'syedislam@totalitsolution.com', 'SYED ISLAM', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 9, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(151, 0, 'shaukat.totaltvs@gmail.com', 'MIR SHAUKAT ALI', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 6, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'blocked', 'no', '', '', '2017-04-22 11:41:51', '2017-04-22 15:41:51', ''),
(152, 4, 'navidtotaltv@gmail.com', 'Navid', 'a277cc8e7ea3bf3831639f25b970d35a62eee1ffabb9b170eddd126d16de9065', 1, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '2017-06-13 15:22:13', '2017-06-13 19:22:13', ''),
(153, 128, 'ajadislam@totalitsolution.com', 'AZAD', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'blocked', 'no', '', '', '2017-07-25 00:26:28', '2017-07-25 04:26:28', ''),
(154, 128, 'shaikot@totalitsolution.com', 'SHAIKOT', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '2017-06-03 14:44:46', '2018-04-06 08:28:43', ''),
(156, 128, 'nniaj@totalitsolution.com', 'NIAJ', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '2017-06-03 15:22:59', '2018-04-06 08:28:48', ''),
(157, 128, 'antorsaha@totalitsolution.com', 'ANTOR', '7b77754f8623c976d44d11221d22a0c0dd2ea1d4cf74c8a9e35b81f5450ae67c', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '2018-08-18 06:38:31', '2018-08-18 10:38:31', ''),
(158, 128, 'imran@totalitsolution.com', 'IMRAN', '077a4a2f9166e4d55ef0c5eb8f04fb680d242dd7a0bedd64a90666f13c759446', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '2017-06-11 23:19:52', '2017-06-12 03:19:52', ''),
(160, 128, 'shanto@totalitsolution.com', 'SHANTO', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'blocked', 'no', '', '', '2017-04-22 11:40:41', '2017-04-22 15:40:41', ''),
(161, 128, 'asif@totalitsolution.com', 'ASIF', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'blocked', 'no', '', '', '2017-04-22 11:43:30', '2017-04-22 15:43:30', ''),
(162, 9, 'supervisor@gmail.com', 'supervisor', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 7, '', '2018-09-10', 'Night (09:00 - 03:00)', '02:44:56', '00:00:00', '00:00:00', 'active', 'request', '192.168.50.196 Developer 2018-09-10 02:44:56am Md. Ayub azahar', '', '2018-09-10 02:44:56', '2018-09-10 06:44:56', ''),
(163, 128, 'saif@totalitsolution.com', 'SAIF KAZI', '8a109630ce189d72324198f033a47cf4c9e72dbc589d9d88774a262568f746e4', 7, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '2017-04-25 05:02:34', '2017-04-25 09:02:34', ''),
(164, 128, 'monti@totalitsolution.com', 'MONTI', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'blocked', 'no', '', '', '2017-07-25 00:28:10', '2017-07-25 04:28:10', ''),
(165, 128, 'salim@totalitsolution.com', 'SALIM HOSSAIN', '1490cef14f2cf74afe888859d4e9f29db1eaf5700202fc2c712743d81247823f', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '2017-06-03 09:34:14', '2017-06-03 13:34:14', ''),
(166, 128, 'rupa@totalitsolution.com', 'UPAMA BEGUM RUPA', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'blocked', 'no', '', '', '2017-07-25 00:24:00', '2017-07-25 04:24:00', ''),
(167, 128, 'nishat@totalitsolution.com', 'PRIOM', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'blocked', 'no', '', '', '2017-07-25 00:25:39', '2017-07-25 04:25:39', ''),
(168, 128, 'abporag@totalitsolution.com', 'ABUL BASAR PORAG', 'efd8dfb1799ae98b334836a5c46439d64da64d0f977e9cd85cc31455dfc93206', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'blocked', 'no', '', '', '2017-07-25 00:26:11', '2017-07-25 04:26:11', ''),
(169, 128, 'maffel@totalitsolution.com', 'RUSSEL S MAFFEL ', 'c1f1f65fc470de500f9a7303ceda73196306f539e56daa3fa896ac3f4597f7da', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '2017-06-03 14:57:43', '2017-06-03 18:57:43', ''),
(170, 128, 'sunzida@totalitsolution.com', 'SUNZIDA ISLAM', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'blocked', 'no', '', '', '2017-07-25 00:24:38', '2017-07-25 04:24:38', ''),
(171, 128, 'joynab@totalitsolution.com', 'JOYNAB SULTANA', 'f60af205868080f1c6b6496cdb1e615802d4f005a24bd632cfcc02ece6cad626', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '2017-08-10 02:12:35', '2017-08-10 06:12:35', ''),
(172, 128, 'faisal@totalitsolution.com', 'FAISAL BIN AZIZ', 'ef9ea2b1ce66e12c95398eec52447aa7c32db33f24c60178dc80aa3991757fd3', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '2017-07-29 17:27:09', '2017-07-29 21:27:09', ''),
(173, 9, 'tech@gmail.com', 'Tech', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 9, '', '2018-07-07', '', '02:25:04', '00:00:00', '00:00:00', 'active', 'request', '', '', '2018-07-07 02:25:04', '2018-07-07 06:25:04', ''),
(174, 128, 'tkhan@totalitsolution.com', 'TOUFIQ KHAN', '3e47f585d81b0a70d22297e9410e0b1903af415828ae8bbdd9f02d184508ade4', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '2017-07-08 08:20:29', '2017-07-08 12:20:29', ''),
(175, 128, 'ashohan@totalitsolution.com', 'MD.SAID AKANDA SHOHAN', 'f8ce72a53ccd464278ac61600a1be90c1d0633454ca58b0f240566e096605e5a', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '2017-07-16 18:50:41', '2017-07-16 22:50:41', ''),
(176, 128, 'sparvin@totalitsolution.com', 'SHAHANARA PERVIN', '05fa7cd996560d09f4ef572244d7dec856608b98ed6d6caca3655ac0d9842f3f', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'blocked', 'no', '', '', '2017-07-25 00:25:11', '2017-07-25 04:25:11', ''),
(177, 128, 'fakter@totalitsolution.com', 'FARHANA AKTER', '05fa7cd996560d09f4ef572244d7dec856608b98ed6d6caca3655ac0d9842f3f', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'active', 'no', '', '', '2017-07-01 19:13:40', '2017-07-01 13:13:40', ''),
(212, 195, 'testu@gmail.com', 'Test user', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 14, '', '0000-00-00', '', '00:00:00', '00:00:00', '00:00:00', 'blocked', 'no', '', '', '2018-01-22 11:31:36', '2018-01-25 13:47:06', ''),
(213, 83, 'verification@gmail.com', 'Verification', '15781d07ef531d50f794c311df797b6d0b2b4695fba76515b2adea62c575b7ca', 19, '', '2018-07-02', '', '08:36:15', '00:00:00', '09:21:58', 'active', 'request', '', '', '2018-07-02 09:21:58', '2018-07-02 13:21:58', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archives`
--
ALTER TABLE `archives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auto_recurrings`
--
ALTER TABLE `auto_recurrings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backup_package_customers`
--
ALTER TABLE `backup_package_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `comments` ADD FULLTEXT KEY `content` (`content`);

--
-- Indexes for table `contactuses`
--
ALTER TABLE `contactuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_packages`
--
ALTER TABLE `custom_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emps`
--
ALTER TABLE `emps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `installations`
--
ALTER TABLE `installations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `logistics_maintenances`
--
ALTER TABLE `logistics_maintenances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `macs`
--
ALTER TABLE `macs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mac_details`
--
ALTER TABLE `mac_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `mac_histories`
--
ALTER TABLE `mac_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mac_inventory`
--
ALTER TABLE `mac_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_details`
--
ALTER TABLE `movie_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_histories`
--
ALTER TABLE `movie_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtfpcs`
--
ALTER TABLE `mtfpcs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `others_payments`
--
ALTER TABLE `others_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_customers`
--
ALTER TABLE `package_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paid_customers`
--
ALTER TABLE `paid_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `psettings`
--
ALTER TABLE `psettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resellers`
--
ALTER TABLE `resellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roasters_histories`
--
ALTER TABLE `roasters_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roaster_details`
--
ALTER TABLE `roaster_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `static_roasters`
--
ALTER TABLE `static_roasters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_histories`
--
ALTER TABLE `status_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `swaps`
--
ALTER TABLE `swaps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temproasterdetails`
--
ALTER TABLE `temproasterdetails`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `temp_rs`
--
ALTER TABLE `temp_rs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_departments`
--
ALTER TABLE `ticket_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracks`
--
ALTER TABLE `tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
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
-- AUTO_INCREMENT for table `archives`
--
ALTER TABLE `archives`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10011;
--
-- AUTO_INCREMENT for table `auto_recurrings`
--
ALTER TABLE `auto_recurrings`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `_id` tinyint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2711;
--
-- AUTO_INCREMENT for table `contactuses`
--
ALTER TABLE `contactuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `custom_packages`
--
ALTER TABLE `custom_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20070;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `emps`
--
ALTER TABLE `emps`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `installations`
--
ALTER TABLE `installations`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2604;
--
-- AUTO_INCREMENT for table `issues`
--
ALTER TABLE `issues`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;
--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `logistics_maintenances`
--
ALTER TABLE `logistics_maintenances`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(51) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=577;
--
-- AUTO_INCREMENT for table `macs`
--
ALTER TABLE `macs`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mac_details`
--
ALTER TABLE `mac_details`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mac_histories`
--
ALTER TABLE `mac_histories`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `mac_inventory`
--
ALTER TABLE `mac_inventory`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `movie_details`
--
ALTER TABLE `movie_details`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
--
-- AUTO_INCREMENT for table `movie_histories`
--
ALTER TABLE `movie_histories`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `mtfpcs`
--
ALTER TABLE `mtfpcs`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `others_payments`
--
ALTER TABLE `others_payments`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `package_customers`
--
ALTER TABLE `package_customers`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7273;
--
-- AUTO_INCREMENT for table `paid_customers`
--
ALTER TABLE `paid_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `psettings`
--
ALTER TABLE `psettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `resellers`
--
ALTER TABLE `resellers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roasters_histories`
--
ALTER TABLE `roasters_histories`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `roaster_details`
--
ALTER TABLE `roaster_details`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `static_roasters`
--
ALTER TABLE `static_roasters`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `status_histories`
--
ALTER TABLE `status_histories`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43711;
--
-- AUTO_INCREMENT for table `swaps`
--
ALTER TABLE `swaps`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `temproasterdetails`
--
ALTER TABLE `temproasterdetails`
  MODIFY `a_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `temp_rs`
--
ALTER TABLE `temp_rs`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79501;
--
-- AUTO_INCREMENT for table `ticket_departments`
--
ALTER TABLE `ticket_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tracks`
--
ALTER TABLE `tracks`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102836;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80999;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
