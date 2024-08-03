-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 30, 2024 at 04:42 AM
-- Server version: 8.0.17
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_autoshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `adjustments`
--

CREATE TABLE `adjustments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `reference_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `total_products` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adjustment_items`
--

CREATE TABLE `adjustment_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adjustment_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` double DEFAULT NULL,
  `method_type` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `base_units`
--

CREATE TABLE `base_units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `base_units`
--

INSERT INTO `base_units` (`id`, `name`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'piece', 1, '2024-07-29 11:01:58', '2024-07-29 11:01:59'),
(2, 'meter', 1, '2024-07-29 11:01:58', '2024-07-29 11:01:59'),
(3, 'kilogram', 1, '2024-07-29 11:01:58', '2024-07-29 11:01:59');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(170) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_code` varchar(170) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_code` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `short_code`, `phone_code`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'AF', 93, NULL, NULL),
(2, 'Albania', 'AL', 355, NULL, NULL),
(3, 'Algeria', 'DZ', 213, NULL, NULL),
(4, 'American Samoa', 'AS', 1684, NULL, NULL),
(5, 'Andorra', 'AD', 376, NULL, NULL),
(6, 'Angola', 'AO', 244, NULL, NULL),
(7, 'Anguilla', 'AI', 1264, NULL, NULL),
(8, 'Antarctica', 'AQ', 0, NULL, NULL),
(9, 'Antigua And Barbuda', 'AG', 1268, NULL, NULL),
(10, 'Argentina', 'AR', 54, NULL, NULL),
(11, 'Armenia', 'AM', 374, NULL, NULL),
(12, 'Aruba', 'AW', 297, NULL, NULL),
(13, 'Australia', 'AU', 61, NULL, NULL),
(14, 'Austria', 'AT', 43, NULL, NULL),
(15, 'Azerbaijan', 'AZ', 994, NULL, NULL),
(16, 'Bahamas The', 'BS', 1242, NULL, NULL),
(17, 'Bahrain', 'BH', 973, NULL, NULL),
(18, 'Bangladesh', 'BD', 880, NULL, NULL),
(19, 'Barbados', 'BB', 1246, NULL, NULL),
(20, 'Belarus', 'BY', 375, NULL, NULL),
(21, 'Belgium', 'BE', 32, NULL, NULL),
(22, 'Belize', 'BZ', 501, NULL, NULL),
(23, 'Benin', 'BJ', 229, NULL, NULL),
(24, 'Bermuda', 'BM', 1441, NULL, NULL),
(25, 'Bhutan', 'BT', 975, NULL, NULL),
(26, 'Bolivia', 'BO', 591, NULL, NULL),
(27, 'Bosnia and Herzegovina', 'BA', 387, NULL, NULL),
(28, 'Botswana', 'BW', 267, NULL, NULL),
(29, 'Bouvet Island', 'BV', 0, NULL, NULL),
(30, 'Brazil', 'BR', 55, NULL, NULL),
(31, 'British Indian Ocean Territory', 'IO', 246, NULL, NULL),
(32, 'Brunei', 'BN', 673, NULL, NULL),
(33, 'Bulgaria', 'BG', 359, NULL, NULL),
(34, 'Burkina Faso', 'BF', 226, NULL, NULL),
(35, 'Burundi', 'BI', 257, NULL, NULL),
(36, 'Cambodia', 'KH', 855, NULL, NULL),
(37, 'Cameroon', 'CM', 237, NULL, NULL),
(38, 'Canada', 'CA', 1, NULL, NULL),
(39, 'Cape Verde', 'CV', 238, NULL, NULL),
(40, 'Cayman Islands', 'KY', 1345, NULL, NULL),
(41, 'Central African Republic', 'CF', 236, NULL, NULL),
(42, 'Chad', 'TD', 235, NULL, NULL),
(43, 'Chile', 'CL', 56, NULL, NULL),
(44, 'China', 'CN', 86, NULL, NULL),
(45, 'Christmas Island', 'CX', 61, NULL, NULL),
(46, 'Cocos (Keeling) Islands', 'CC', 672, NULL, NULL),
(47, 'Colombia', 'CO', 57, NULL, NULL),
(48, 'Comoros', 'KM', 269, NULL, NULL),
(49, 'Republic Of The Congo', 'CG', 242, NULL, NULL),
(50, 'Democratic Republic Of The Congo', 'CD', 242, NULL, NULL),
(51, 'Cook Islands', 'CK', 682, NULL, NULL),
(52, 'Costa Rica', 'CR', 506, NULL, NULL),
(53, 'Cote D\'\'Ivoire (Ivory Coast)', 'CI', 225, NULL, NULL),
(54, 'Croatia (Hrvatska)', 'HR', 385, NULL, NULL),
(55, 'Cuba', 'CU', 53, NULL, NULL),
(56, 'Cyprus', 'CY', 357, NULL, NULL),
(57, 'Czech Republic', 'CZ', 420, NULL, NULL),
(58, 'Denmark', 'DK', 45, NULL, NULL),
(59, 'Djibouti', 'DJ', 253, NULL, NULL),
(60, 'Dominica', 'DM', 1767, NULL, NULL),
(61, 'Dominican Republic', 'DO', 1809, NULL, NULL),
(62, 'East Timor', 'TP', 670, NULL, NULL),
(63, 'Ecuador', 'EC', 593, NULL, NULL),
(64, 'Egypt', 'EG', 20, NULL, NULL),
(65, 'El Salvador', 'SV', 503, NULL, NULL),
(66, 'Equatorial Guinea', 'GQ', 240, NULL, NULL),
(67, 'Eritrea', 'ER', 291, NULL, NULL),
(68, 'Estonia', 'EE', 372, NULL, NULL),
(69, 'Ethiopia', 'ET', 251, NULL, NULL),
(70, 'External Territories of Australia', 'XA', 61, NULL, NULL),
(71, 'Falkland Islands', 'FK', 500, NULL, NULL),
(72, 'Faroe Islands', 'FO', 298, NULL, NULL),
(73, 'Fiji Islands', 'FJ', 679, NULL, NULL),
(74, 'Finland', 'FI', 358, NULL, NULL),
(75, 'France', 'FR', 33, NULL, NULL),
(76, 'French Guiana', 'GF', 594, NULL, NULL),
(77, 'French Polynesia', 'PF', 689, NULL, NULL),
(78, 'French Southern Territories', 'TF', 0, NULL, NULL),
(79, 'Gabon', 'GA', 241, NULL, NULL),
(80, 'Gambia The', 'GM', 220, NULL, NULL),
(81, 'Georgia', 'GE', 995, NULL, NULL),
(82, 'Germany', 'DE', 49, NULL, NULL),
(83, 'Ghana', 'GH', 233, NULL, NULL),
(84, 'Gibraltar', 'GI', 350, NULL, NULL),
(85, 'Greece', 'GR', 30, NULL, NULL),
(86, 'Greenland', 'GL', 299, NULL, NULL),
(87, 'Grenada', 'GD', 1473, NULL, NULL),
(88, 'Guadeloupe', 'GP', 590, NULL, NULL),
(89, 'Guam', 'GU', 1671, NULL, NULL),
(90, 'Guatemala', 'GT', 502, NULL, NULL),
(91, 'Guernsey and Alderney', 'XU', 44, NULL, NULL),
(92, 'Guinea', 'GN', 224, NULL, NULL),
(93, 'Guinea-Bissau', 'GW', 245, NULL, NULL),
(94, 'Guyana', 'GY', 592, NULL, NULL),
(95, 'Haiti', 'HT', 509, NULL, NULL),
(96, 'Heard and McDonald Islands', 'HM', 0, NULL, NULL),
(97, 'Honduras', 'HN', 504, NULL, NULL),
(98, 'Hong Kong S.A.R.', 'HK', 852, NULL, NULL),
(99, 'Hungary', 'HU', 36, NULL, NULL),
(100, 'Iceland', 'IS', 354, NULL, NULL),
(101, 'India', 'IN', 91, NULL, NULL),
(102, 'Indonesia', 'ID', 62, NULL, NULL),
(103, 'Iran', 'IR', 98, NULL, NULL),
(104, 'Iraq', 'IQ', 964, NULL, NULL),
(105, 'Ireland', 'IE', 353, NULL, NULL),
(106, 'Israel', 'IL', 972, NULL, NULL),
(107, 'Italy', 'IT', 39, NULL, NULL),
(108, 'Jamaica', 'JM', 1876, NULL, NULL),
(109, 'Japan', 'JP', 81, NULL, NULL),
(110, 'Jersey', 'XJ', 44, NULL, NULL),
(111, 'Jordan', 'JO', 962, NULL, NULL),
(112, 'Kazakhstan', 'KZ', 7, NULL, NULL),
(113, 'Kenya', 'KE', 254, NULL, NULL),
(114, 'Kiribati', 'KI', 686, NULL, NULL),
(115, 'Korea North', 'KP', 850, NULL, NULL),
(116, 'Korea South', 'KR', 82, NULL, NULL),
(117, 'Kuwait', 'KW', 965, NULL, NULL),
(118, 'Kyrgyzstan', 'KG', 996, NULL, NULL),
(119, 'Laos', 'LA', 856, NULL, NULL),
(120, 'Latvia', 'LV', 371, NULL, NULL),
(121, 'Lebanon', 'LB', 961, NULL, NULL),
(122, 'Lesotho', 'LS', 266, NULL, NULL),
(123, 'Liberia', 'LR', 231, NULL, NULL),
(124, 'Libya', 'LY', 218, NULL, NULL),
(125, 'Liechtenstein', 'LI', 423, NULL, NULL),
(126, 'Lithuania', 'LT', 370, NULL, NULL),
(127, 'Luxembourg', 'LU', 352, NULL, NULL),
(128, 'Macau S.A.R.', 'MO', 853, NULL, NULL),
(129, 'Macedonia', 'MK', 389, NULL, NULL),
(130, 'Madagascar', 'MG', 261, NULL, NULL),
(131, 'Malawi', 'MW', 265, NULL, NULL),
(132, 'Malaysia', 'MY', 60, NULL, NULL),
(133, 'Maldives', 'MV', 960, NULL, NULL),
(134, 'Mali', 'ML', 223, NULL, NULL),
(135, 'Malta', 'MT', 356, NULL, NULL),
(136, 'Man (Isle of)', 'XM', 44, NULL, NULL),
(137, 'Marshall Islands', 'MH', 692, NULL, NULL),
(138, 'Martinique', 'MQ', 596, NULL, NULL),
(139, 'Mauritania', 'MR', 222, NULL, NULL),
(140, 'Mauritius', 'MU', 230, NULL, NULL),
(141, 'Mayotte', 'YT', 269, NULL, NULL),
(142, 'Mexico', 'MX', 52, NULL, NULL),
(143, 'Micronesia', 'FM', 691, NULL, NULL),
(144, 'Moldova', 'MD', 373, NULL, NULL),
(145, 'Monaco', 'MC', 377, NULL, NULL),
(146, 'Mongolia', 'MN', 976, NULL, NULL),
(147, 'Montserrat', 'MS', 1664, NULL, NULL),
(148, 'Morocco', 'MA', 212, NULL, NULL),
(149, 'Mozambique', 'MZ', 258, NULL, NULL),
(150, 'Myanmar', 'MM', 95, NULL, NULL),
(151, 'Namibia', 'NA', 264, NULL, NULL),
(152, 'Nauru', 'NR', 674, NULL, NULL),
(153, 'Nepal', 'NP', 977, NULL, NULL),
(154, 'Netherlands Antilles', 'AN', 599, NULL, NULL),
(155, 'Netherlands The', 'NL', 31, NULL, NULL),
(156, 'New Caledonia', 'NC', 687, NULL, NULL),
(157, 'New Zealand', 'NZ', 64, NULL, NULL),
(158, 'Nicaragua', 'NI', 505, NULL, NULL),
(159, 'Niger', 'NE', 227, NULL, NULL),
(160, 'Nigeria', 'NG', 234, NULL, NULL),
(161, 'Niue', 'NU', 683, NULL, NULL),
(162, 'Norfolk Island', 'NF', 672, NULL, NULL),
(163, 'Northern Mariana Islands', 'MP', 1670, NULL, NULL),
(164, 'Norway', 'NO', 47, NULL, NULL),
(165, 'Oman', 'OM', 968, NULL, NULL),
(166, 'Pakistan', 'PK', 92, NULL, NULL),
(167, 'Palau', 'PW', 680, NULL, NULL),
(168, 'Palestinian Territory Occupied', 'PS', 970, NULL, NULL),
(169, 'Panama', 'PA', 507, NULL, NULL),
(170, 'Papua new Guinea', 'PG', 675, NULL, NULL),
(171, 'Paraguay', 'PY', 595, NULL, NULL),
(172, 'Peru', 'PE', 51, NULL, NULL),
(173, 'Philippines', 'PH', 63, NULL, NULL),
(174, 'Pitcairn Island', 'PN', 0, NULL, NULL),
(175, 'Poland', 'PL', 48, NULL, NULL),
(176, 'Portugal', 'PT', 351, NULL, NULL),
(177, 'Puerto Rico', 'PR', 1787, NULL, NULL),
(178, 'Qatar', 'QA', 974, NULL, NULL),
(179, 'Reunion', 'RE', 262, NULL, NULL),
(180, 'Romania', 'RO', 40, NULL, NULL),
(181, 'Russia', 'RU', 70, NULL, NULL),
(182, 'Rwanda', 'RW', 250, NULL, NULL),
(183, 'Saint Helena', 'SH', 290, NULL, NULL),
(184, 'Saint Kitts And Nevis', 'KN', 1869, NULL, NULL),
(185, 'Saint Lucia', 'LC', 1758, NULL, NULL),
(186, 'Saint Pierre and Miquelon', 'PM', 508, NULL, NULL),
(187, 'Saint Vincent And The Grenadines', 'VC', 1784, NULL, NULL),
(188, 'Samoa', 'WS', 684, NULL, NULL),
(189, 'San Marino', 'SM', 378, NULL, NULL),
(190, 'Sao Tome and Principe', 'ST', 239, NULL, NULL),
(191, 'Saudi Arabia', 'SA', 966, NULL, NULL),
(192, 'Senegal', 'SN', 221, NULL, NULL),
(193, 'Serbia', 'RS', 381, NULL, NULL),
(194, 'Seychelles', 'SC', 248, NULL, NULL),
(195, 'Sierra Leone', 'SL', 232, NULL, NULL),
(196, 'Singapore', 'SG', 65, NULL, NULL),
(197, 'Slovakia', 'SK', 421, NULL, NULL),
(198, 'Slovenia', 'SI', 386, NULL, NULL),
(199, 'Smaller Territories of the UK', 'XG', 44, NULL, NULL),
(200, 'Solomon Islands', 'SB', 677, NULL, NULL),
(201, 'Somalia', 'SO', 252, NULL, NULL),
(202, 'South Africa', 'ZA', 27, NULL, NULL),
(203, 'South Georgia', 'GS', 0, NULL, NULL),
(204, 'South Sudan', 'SS', 211, NULL, NULL),
(205, 'Spain', 'ES', 34, NULL, NULL),
(206, 'Sri Lanka', 'LK', 94, NULL, NULL),
(207, 'Sudan', 'SD', 249, NULL, NULL),
(208, 'Suriname', 'SR', 597, NULL, NULL),
(209, 'Svalbard And Jan Mayen Islands', 'SJ', 47, NULL, NULL),
(210, 'Swaziland', 'SZ', 268, NULL, NULL),
(211, 'Sweden', 'SE', 46, NULL, NULL),
(212, 'Switzerland', 'CH', 41, NULL, NULL),
(213, 'Syria', 'SY', 963, NULL, NULL),
(214, 'Taiwan', 'TW', 886, NULL, NULL),
(215, 'Tajikistan', 'TJ', 992, NULL, NULL),
(216, 'Tanzania', 'TZ', 255, NULL, NULL),
(217, 'Thailand', 'TH', 66, NULL, NULL),
(218, 'Togo', 'TG', 228, NULL, NULL),
(219, 'Tokelau', 'TK', 690, NULL, NULL),
(220, 'Tonga', 'TO', 676, NULL, NULL),
(221, 'Trinidad And Tobago', 'TT', 1868, NULL, NULL),
(222, 'Tunisia', 'TN', 216, NULL, NULL),
(223, 'Turkey', 'TR', 90, NULL, NULL),
(224, 'Turkmenistan', 'TM', 7370, NULL, NULL),
(225, 'Turks And Caicos Islands', 'TC', 1649, NULL, NULL),
(226, 'Tuvalu', 'TV', 688, NULL, NULL),
(227, 'Uganda', 'UG', 256, NULL, NULL),
(228, 'Ukraine', 'UA', 380, NULL, NULL),
(229, 'United Arab Emirates', 'AE', 971, NULL, NULL),
(230, 'United Kingdom', 'GB', 44, NULL, NULL),
(231, 'United States', 'US', 1, NULL, NULL),
(232, 'United States Minor Outlying Islands', 'UM', 1, NULL, NULL),
(233, 'Uruguay', 'UY', 598, NULL, NULL),
(234, 'Uzbekistan', 'UZ', 998, NULL, NULL),
(235, 'Vanuatu', 'VU', 678, NULL, NULL),
(236, 'Vatican City State (Holy See)', 'VA', 39, NULL, NULL),
(237, 'Venezuela', 'VE', 58, NULL, NULL),
(238, 'Vietnam', 'VN', 84, NULL, NULL),
(239, 'Virgin Islands (British)', 'VG', 1284, NULL, NULL),
(240, 'Virgin Islands (US)', 'VI', 1340, NULL, NULL),
(241, 'Wallis And Futuna Islands', 'WF', 681, NULL, NULL),
(242, 'Western Sahara', 'EH', 212, NULL, NULL),
(243, 'Yemen', 'YE', 967, NULL, NULL),
(244, 'Yugoslavia', 'YU', 38, NULL, NULL),
(245, 'Zambia', 'ZM', 260, NULL, NULL),
(246, 'Zimbabwe', 'ZW', 26, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupon_codes`
--

CREATE TABLE `coupon_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `how_many_time_can_use` int(11) NOT NULL,
  `discount_type` int(11) NOT NULL,
  `discount` double NOT NULL,
  `how_many_time_used` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_product`
--

CREATE TABLE `coupon_product` (
  `coupon_code_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `created_at`, `updated_at`) VALUES
(1, 'United States', 'US', '$', '2024-07-29 11:02:05', '2024-07-29 11:02:05');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `dob`, `country`, `city`, `address`, `created_at`, `updated_at`) VALUES
(1, 'walk-in-customer', 'customer@creativ356.com', '123456789', NULL, 'United States', 'Florida', '864 Pleasant Hill Road , Fort Pierce', '2024-07-29 11:02:05', '2024-07-29 11:02:05');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `expense_category_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `reference_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holds`
--

CREATE TABLE `holds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `grand_total` double DEFAULT NULL,
  `received_amount` double DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hold_items`
--

CREATE TABLE `hold_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hold_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_price` double DEFAULT NULL,
  `net_unit_price` double DEFAULT NULL,
  `tax_type` int(11) NOT NULL,
  `tax_value` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount_type` int(11) NOT NULL,
  `discount_value` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `sale_unit` int(11) NOT NULL,
  `quantity` double DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `iso_code`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Arabic', 'ar', 0, '2024-07-29 11:01:59', '2024-07-29 11:01:59'),
(2, 'Chinese', 'cn', 0, '2024-07-29 11:01:59', '2024-07-29 11:01:59'),
(3, 'English', 'en', 1, '2024-07-29 11:01:59', '2024-07-29 11:01:59'),
(4, 'French', 'fr', 0, '2024-07-29 11:01:59', '2024-07-29 11:01:59'),
(5, 'German', 'gr', 0, '2024-07-29 11:01:59', '2024-07-29 11:01:59'),
(6, 'Spanish', 'sp', 0, '2024-07-29 11:01:59', '2024-07-29 11:01:59'),
(7, 'Turkish', 'tr', 0, '2024-07-29 11:01:59', '2024-07-29 11:01:59'),
(8, 'vietnamese', 'vi', 0, '2024-07-29 11:01:59', '2024-07-29 11:01:59');

-- --------------------------------------------------------

--
-- Table structure for table `mail_templates`
--

CREATE TABLE `mail_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `template_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mail_templates`
--

INSERT INTO `mail_templates` (`id`, `template_name`, `content`, `type`, `created_at`, `updated_at`, `status`) VALUES
(1, 'GREETING TO CUSTOMER ON SALES !', '<p>Hi, {customer_name}</p><p>Your sales Id is {sales_id}</p><p>Sales Date: {sales_date}</p><p>Total Amount: {sales_amount}</p><p>You have paid: {paid_amount}</p><p>Due amount: {due_amount}</p><p>Regards,  {app_name}</p>', '1', '2024-07-29 11:01:58', '2024-07-29 11:01:58', 0),
(2, 'GREETING TO CUSTOMER ON SALES RETURN !', '<p>Hi, {customer_name}</p><p>Your sales return Id is {sales_return_id}</p><p>Sales return Date: {sales_return_date}</p><p>Total Amount: {sales_return_amount}</p><p>Regards,  {app_name}</p>', '2', '2024-07-29 11:01:58', '2024-07-29 11:01:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `main_products`
--

CREATE TABLE `main_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` tinyint(4) NOT NULL COMMENT '1=Single, 2=Variable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manage_stocks`
--

CREATE TABLE `manage_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alert` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `generated_conversions` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Setting', 45, '36693565-53b8-4d43-8dda-60b2b5e12a37', 'settings', 'favicon', 'favicon.png', 'image/png', 'public', 'public', 28721, '[]', '[]', '[]', '[]', 1, '2024-07-29 11:03:17', '2024-07-29 11:03:17');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_18_051026_create_brands', 1),
(6, '2022_02_18_063507_create_media_table', 1),
(7, '2022_02_21_073634_create_permission_tables', 1),
(8, '2022_03_01_045721_add_display_name_into_permissions_and_roles', 1),
(9, '2022_03_02_042109_create_currencies_table', 1),
(10, '2022_03_02_050637_create_product_categories_table', 1),
(11, '2022_03_02_071803_create_units_table', 1),
(12, '2022_03_02_125151_create_warehouse_table', 1),
(13, '2022_03_03_094656_create_product_table', 1),
(14, '2022_03_04_112848_create_customer_table', 1),
(15, '2022_03_05_045741_create_suppliers_table', 1),
(16, '2022_03_05_064104_add_columns_in_users_table', 1),
(17, '2022_03_08_051830_create_sales_table', 1),
(18, '2022_03_08_055549_creat_sale_items_table', 1),
(19, '2022_03_09_095426_create_expense_categories_table', 1),
(20, '2022_03_09_105321_create_expenses_table', 1),
(21, '2022_03_10_101744_create_settings_table', 1),
(22, '2022_03_14_101110_create_purchases_table', 1),
(23, '2022_03_15_072023_create_purchase_items_table', 1),
(24, '2022_03_15_122143_add_column_barcode_symbol_products_table', 1),
(25, '2022_03_16_050519_change_description_filed_type_expense_category_table', 1),
(26, '2022_05_10_104622_add_language_field_in_users', 1),
(27, '2022_05_13_111052_add_title_field_in_expenses', 1),
(28, '2022_05_20_093240_add_new_field_to_sales_table', 1),
(29, '2022_05_23_061225_create_sales_return_table', 1),
(30, '2022_05_23_065104_create_sale_return_items_table', 1),
(31, '2022_05_24_045822_create_purchases_return_table', 1),
(32, '2022_05_24_050431_create_purchases_return_items_table', 1),
(33, '2022_05_31_123143_remove_warehouse_id_field_into_products_table', 1),
(34, '2022_06_01_100610_create_manage_stocks_table', 1),
(35, '2022_07_12_102722_add_new_filed_to_manage_stocks_table', 1),
(36, '2022_07_29_085151_create_sales_payments_table', 1),
(37, '2022_08_04_061313_add_reference_field_to_sales_payments_table', 1),
(38, '2022_08_04_114100_add_received_amount_field_to_sales_payments_table', 1),
(39, '2022_08_05_105849_create_adjustments_table', 1),
(40, '2022_08_05_110241_create_adjustment_items_table', 1),
(41, '2022_08_29_093912_create_transfers_table', 1),
(42, '2022_08_29_094749_create_transfer_items_table', 1),
(43, '2022_09_06_113032_version_1_3_0_seeder', 1),
(44, '2022_09_10_075820_create_mail_templates_table', 1),
(45, '2022_09_12_041933_add_email_template_seeder', 1),
(46, '2022_09_14_050339_create_countries_table', 1),
(47, '2022_09_14_050458_create_states_table', 1),
(48, '2022_09_14_065609_assign_all_permission_seeder', 1),
(49, '2022_09_14_071523_countries_seeder', 1),
(50, '2022_09_15_052207_create_quotations_table', 1),
(51, '2022_09_15_053604_create_quotation_items_table', 1),
(52, '2022_09_15_100204_add_post_code_seeder_migration', 1),
(53, '2022_09_15_104720_add_date_format_seeder_migration', 1),
(54, '2022_09_15_113413_default_email_report_quotation_seeder_migration', 1),
(55, '2022_09_16_062735_add_setting_prefix_code_seeder', 1),
(56, '2022_09_27_103942_add_new_field_in_sales', 1),
(57, '2022_09_27_115534_add_new_field_in_quotations', 1),
(58, '2022_10_03_074141_create_sms_templates_table', 1),
(59, '2022_10_03_090646_add_sms_template_seeder', 1),
(60, '2022_10_03_095418_create_sms_settings_table', 1),
(61, '2022_10_03_102421_add_sms_settings_seeder', 1),
(62, '2022_10_08_074726_add_status_to_mail_templates_table', 1),
(63, '2022_10_08_074912_add_status_to_sms_templates_table', 1),
(64, '2022_10_11_110325_add_default_currency_right_setting_seeder', 1),
(65, '2022_10_14_041746_add_sms_permissions_seeder', 1),
(66, '2022_10_15_044226_add_sale_id_to_sales_return_table', 1),
(67, '2022_10_17_052105_add_is_return_field_to_sales_table', 1),
(68, '2022_10_17_062353_add_sold_quantity_field_to_sale_return_items_table', 1),
(69, '2022_11_08_050601_create_holds_table', 1),
(70, '2022_11_08_051309_create_hold_items_table', 1),
(71, '2022_11_10_105949_add_quantity_limit_to_products_table', 1),
(72, '2022_11_29_070305_create_base_units_table', 1),
(73, '2022_11_30_071556_add_base_units_seeder', 1),
(74, '2022_12_20_044834_add_dob_field_to_customers_table', 1),
(75, '2022_12_22_000000_add_expires_at_to_personal_access_tokens_table', 1),
(76, '2023_01_06_052856_create_languages_table', 1),
(77, '2023_01_06_053950_language_table_seeder', 1),
(78, '2023_01_09_103904_add_is_default_to_base_units_table', 1),
(79, '2023_01_09_104123_add_base_unit_default_seeder', 1),
(80, '2023_01_09_112217_change_datatype_base_unit_field_to_units_table', 1),
(81, '2023_06_13_112717_add_pos_register_table', 1),
(82, '2023_06_16_115153_add_new_field_into_sales_table', 1),
(83, '2023_07_07_064405_create_coupon_codes_table', 1),
(84, '2023_07_07_083655_create_coupon_product_table', 1),
(85, '2023_09_16_000000_rename_password_resets_table', 1),
(86, '2023_11_21_115157_add_manage_variations_permission', 1),
(87, '2023_11_21_123327_create_variations_table', 1),
(88, '2023_11_21_123338_create_variation_types_table', 1),
(89, '2023_12_21_065548_add_product_code_field_in_products_table', 1),
(90, '2023_12_21_090730_add_variation_products_table', 1),
(91, '2023_12_22_064744_create_main_products_table', 1),
(92, '2023_12_22_065109_add_main_product_id_field_in_variation_products_table', 1),
(93, '2023_12_22_065227_fill_up_product_code', 1),
(94, '2023_12_29_064841_add_main_product_id_field_in_products_table', 1),
(95, '2023_12_29_065039_fill_up_main_product_table_data', 1),
(96, '2024_01_12_093843_move_product_images_to_main_product', 1),
(97, '2024_03_01_085230_add_new_field_in_settings_table', 1),
(98, '2024_03_13_103510_add_new_setting_value_in_settings_table', 1),
(99, '2024_05_20_124629_add_new_field_in_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage_adjustments', 'Manage Adjustments', 'web', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(2, 'manage_transfers', 'Manage Transfers', 'web', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(3, 'manage_roles', 'Manage Roles', 'web', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(4, 'manage_brands', 'Manage Brands', 'web', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(5, 'manage_currency', 'Manage Currency', 'web', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(6, 'manage_warehouses', 'Manage Warehouses', 'web', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(7, 'manage_units', 'Manage Units', 'web', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(8, 'manage_product_categories', 'Manage Product Categories', 'web', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(9, 'manage_products', 'Manage Products ', 'web', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(10, 'manage_suppliers', 'Manage Suppliers', 'web', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(11, 'manage_customers', 'Manage Customers', 'web', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(12, 'manage_users', 'Manage Users', 'web', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(13, 'manage_expense_categories', 'Manage Expense Categories', 'web', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(14, 'manage_expenses', 'Manage Expenses', 'web', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(15, 'manage_setting', 'Manage Setting', 'web', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(16, 'manage_dashboard', 'Manage Dashboard', 'web', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(17, 'manage_pos_screen', 'Manage Pos Screen', 'web', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(18, 'manage_purchase', 'Manage Purchase', 'web', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(19, 'manage_sale', 'Manage Sale', 'web', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(20, 'manage_purchase_return', 'Manage Purchase Return', 'web', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(21, 'manage_sale_return', 'Manage Sale Return', 'web', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(22, 'manage_email_templates', 'Manage Email Templates', 'web', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(23, 'manage_reports', 'Manage Reports', 'web', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(24, 'manage_quotations', 'Manage Quotations', 'web', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(25, 'manage_sms_templates', 'Manage Sms Templates', 'web', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(26, 'manage_sms_apis', 'Manage Sms Apis', 'web', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(27, 'manage_language', 'Manage Language', 'web', '2024-07-29 11:01:59', '2024-07-29 11:01:59'),
(28, 'manage_variations', 'Manage Variations', 'web', '2024-07-29 11:01:59', '2024-07-29 11:01:59');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'token', '059e4c0a5b0b6cdf30f9bd251cdd344e593085b09c82662b65652b1815623c9b', '[\"*\"]', '2024-07-29 11:12:07', NULL, '2024-07-29 11:02:25', '2024-07-29 11:12:07'),
(2, 'App\\Models\\User', 1, 'token', '61bce57b97b18afc9ca172cf28c6c1821c63d8a75ea62284c27bfadad4ee128c', '[\"*\"]', '2024-07-29 11:40:06', NULL, '2024-07-29 11:13:40', '2024-07-29 11:40:06'),
(3, 'App\\Models\\User', 1, 'token', '33368ad4bcd9ae274b9491dc145953fbb1443a52b2c86e64633e21557e05e469', '[\"*\"]', '2024-07-29 11:20:04', NULL, '2024-07-29 11:17:55', '2024-07-29 11:20:04');

-- --------------------------------------------------------

--
-- Table structure for table `pos_register`
--

CREATE TABLE `pos_register` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cash_in_hand` double NOT NULL,
  `closed_at` datetime DEFAULT NULL,
  `cash_in_hand_while_closing` double DEFAULT NULL,
  `bank_transfer` double DEFAULT NULL,
  `cheque` double DEFAULT NULL,
  `other` double DEFAULT NULL,
  `total_sale` double DEFAULT NULL,
  `total_return` double DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `main_product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode_symbol` int(11) NOT NULL DEFAULT '1',
  `product_category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `product_cost` double NOT NULL,
  `product_price` double NOT NULL,
  `product_unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_alert` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity_limit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `tax_type` enum('1','2') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `grand_total` double DEFAULT NULL,
  `received_amount` double DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `reference_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases_return`
--

CREATE TABLE `purchases_return` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `grand_total` double DEFAULT NULL,
  `received_amount` double DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `payment_status` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `reference_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases_return_items`
--

CREATE TABLE `purchases_return_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_return_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_cost` double DEFAULT NULL,
  `net_unit_cost` double DEFAULT NULL,
  `tax_type` int(11) NOT NULL,
  `tax_value` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount_type` int(11) NOT NULL,
  `discount_value` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `purchase_unit` int(11) NOT NULL,
  `quantity` double DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_cost` double DEFAULT NULL,
  `net_unit_cost` double DEFAULT NULL,
  `tax_type` int(11) NOT NULL,
  `tax_value` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount_type` int(11) NOT NULL,
  `discount_value` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `purchase_unit` int(11) NOT NULL,
  `quantity` double DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `grand_total` double DEFAULT NULL,
  `received_amount` double DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `is_sale_created` tinyint(1) NOT NULL DEFAULT '0',
  `note` text COLLATE utf8mb4_unicode_ci,
  `reference_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_items`
--

CREATE TABLE `quotation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quotation_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_price` double DEFAULT NULL,
  `net_unit_price` double DEFAULT NULL,
  `tax_type` int(11) NOT NULL,
  `tax_value` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount_type` int(11) NOT NULL,
  `discount_value` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `sale_unit` int(11) NOT NULL,
  `quantity` double DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', ' Admin', 'web', '2024-07-29 11:01:58', '2024-07-29 11:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `is_return` tinyint(1) NOT NULL DEFAULT '0',
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `grand_total` double DEFAULT NULL,
  `received_amount` double DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `reference_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `payment_status` int(11) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_payments`
--

CREATE TABLE `sales_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` date NOT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `received_amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_return`
--

CREATE TABLE `sales_return` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `sale_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `grand_total` double DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `reference_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE `sale_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_price` double DEFAULT NULL,
  `net_unit_price` double DEFAULT NULL,
  `tax_type` int(11) NOT NULL,
  `tax_value` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount_type` int(11) NOT NULL,
  `discount_value` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `sale_unit` int(11) NOT NULL,
  `quantity` double DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_return_items`
--

CREATE TABLE `sale_return_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_return_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_price` double DEFAULT NULL,
  `net_unit_price` double DEFAULT NULL,
  `tax_type` int(11) NOT NULL,
  `tax_value` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount_type` int(11) NOT NULL,
  `discount_value` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `sale_unit` int(11) NOT NULL,
  `quantity` double DEFAULT NULL,
  `sold_quantity` double DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'show_version_on_footer', '1', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(2, 'country', 'United States', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(3, 'state', 'Florida', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(4, 'city', 'Fort Pierce', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(5, 'postcode', '34946', '2024-07-29 11:01:58', '2024-07-29 11:03:17'),
(6, 'date_format', 'y-m-d', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(7, 'purchase_code', 'PU', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(8, 'purchase_return_code', 'PR', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(9, 'sale_code', 'SA', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(10, 'sale_return_code', 'SR', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(11, 'expense_code', 'EX', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(12, 'is_currency_right', 'false', '2024-07-29 11:01:58', '2024-07-29 11:03:17'),
(13, 'show_logo_in_receipt', '1', '2024-07-29 11:01:59', '2024-07-29 11:01:59'),
(14, 'show_app_name_in_sidebar', '1', '2024-07-29 11:01:59', '2024-07-29 11:01:59'),
(15, 'show_note', '1', '2024-07-29 11:01:59', '2024-07-29 11:01:59'),
(16, 'show_phone', '1', '2024-07-29 11:01:59', '2024-07-29 11:01:59'),
(17, 'show_customer', '1', '2024-07-29 11:01:59', '2024-07-29 11:01:59'),
(18, 'show_address', '1', '2024-07-29 11:01:59', '2024-07-29 11:01:59'),
(19, 'show_email', '1', '2024-07-29 11:01:59', '2024-07-29 11:01:59'),
(20, 'show_warehouse', '1', '2024-07-29 11:01:59', '2024-07-29 11:01:59'),
(21, 'show_tax_discount_shipping', '1', '2024-07-29 11:01:59', '2024-07-29 11:01:59'),
(22, 'show_barcode_in_receipt', '1', '2024-07-29 11:01:59', '2024-07-29 11:01:59'),
(23, 'notes', 'Thanks for order', '2024-07-29 11:01:59', '2024-07-29 11:01:59'),
(24, 'currency', '1', '2024-07-29 11:02:05', '2024-07-29 11:02:05'),
(25, 'email', 'support@creativ356.com', '2024-07-29 11:02:05', '2024-07-29 11:02:05'),
(26, 'company_name', 'Creativ356', '2024-07-29 11:02:05', '2024-07-29 11:02:05'),
(27, 'phone', '1234567890', '2024-07-29 11:02:05', '2024-07-29 11:02:05'),
(28, 'developed', 'creativ356', '2024-07-29 11:02:05', '2024-07-29 11:02:05'),
(29, 'footer', '2022 Developed by Creativ356 All rights reserved - v1.1.0', '2024-07-29 11:02:05', '2024-07-29 11:02:05'),
(30, 'default_language', '1', '2024-07-29 11:02:05', '2024-07-29 11:02:05'),
(31, 'default_customer', '1', '2024-07-29 11:02:05', '2024-07-29 11:02:05'),
(32, 'default_warehouse', '1', '2024-07-29 11:02:05', '2024-07-29 11:02:05'),
(33, 'address', '3151 N US Highway 1, Fort Pierce, FL 34946', '2024-07-29 11:02:05', '2024-07-29 11:03:17'),
(34, 'stripe_key', 'pu_test_yBzA1qI1PcfRBAVn1vJG2VuS00HcyhQX9LASERTFDDS', '2024-07-29 11:02:05', '2024-07-29 11:02:05'),
(35, 'stripe_secret', 'pu_test_yBzA1qI1PcfRBAVn1vJG2VuS00HcyhQX9LASERTFDDS', '2024-07-29 11:02:05', '2024-07-29 11:02:05'),
(36, 'sms_gateway', '1', '2024-07-29 11:02:05', '2024-07-29 11:02:05'),
(37, 'twillo_sid', 'asd', '2024-07-29 11:02:05', '2024-07-29 11:02:05'),
(38, 'twillo_token', 'asd', '2024-07-29 11:02:05', '2024-07-29 11:02:05'),
(39, 'twillo_from', 'asd', '2024-07-29 11:02:05', '2024-07-29 11:02:05'),
(40, 'smtp_host', 'mailtrap.io', '2024-07-29 11:02:05', '2024-07-29 11:02:05'),
(41, 'smtp_port', '2525', '2024-07-29 11:02:05', '2024-07-29 11:02:05'),
(42, 'smtp_username', 'test', '2024-07-29 11:02:05', '2024-07-29 11:02:05'),
(43, 'smtp_password', 'test', '2024-07-29 11:02:05', '2024-07-29 11:02:05'),
(44, 'smtp_Encryption', 'tls', '2024-07-29 11:02:05', '2024-07-29 11:02:05'),
(45, 'logo', 'http://autorepairshop.test/uploads/settings/1/favicon.png', '2024-07-29 11:02:05', '2024-07-29 11:03:17');

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

CREATE TABLE `sms_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_settings`
--

INSERT INTO `sms_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'url', 'http://test.com/api/test.php', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(2, 'mobile_key', '', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(3, 'message_key', '', '2024-07-29 11:01:58', '2024-07-29 11:01:58'),
(4, 'payload', '', '2024-07-29 11:01:58', '2024-07-29 11:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `sms_templates`
--

CREATE TABLE `sms_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `template_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_templates`
--

INSERT INTO `sms_templates` (`id`, `template_name`, `content`, `type`, `created_at`, `updated_at`, `status`) VALUES
(1, 'GREETING TO CUSTOMER ON SALES !', 'Hi {customer_name}, Your sales Id is {sales_id}, Sales Date {sales_date}, Total Amount {sales_amount}, You have paid {paid_amount}, and customer total due amount is {due_amount} Thank you visit again', '1', '2024-07-29 11:01:58', '2024-07-29 11:01:58', 0),
(2, 'GREETING TO CUSTOMER ON SALES RETURN !', 'Hi {customer_name}, Your sales return Id is {sales_return_id}, Sales return Date {sales_return_date}, and Total Amount is {sales_return_amount} Thank you visit again', '2', '2024-07-29 11:01:58', '2024-07-29 11:01:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(170) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `code`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'Alabama', 'AL', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Alaska', 'AK', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Arizona', 'AZ', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Arkansas', 'AR', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'American Samoa', 'AS', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'California', 'CA', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Colorado', 'CO', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Connecticut', 'CT', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Delaware', 'DE', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'District of Columbia', 'DC', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Florida', 'FL', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Georgia', 'GA', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Guam', 'GU', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Hawaii', 'HI', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Idaho', 'ID', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Illinois', 'IL', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Indiana', 'IN', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Iowa', 'IA', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Kansas', 'KS', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Kentucky', 'KY', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Louisiana', 'LA', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Maine', 'ME', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Maryland', 'MD', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Massachusetts', 'MA', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Michigan', 'MI', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Minnesota', 'MN', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Mississippi', 'MS', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Missouri', 'MO', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Montana', 'MT', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Nebraska', 'NE', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Nevada', 'NV', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'New Hampshire', 'NH', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'New Jersey', 'NJ', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'New Mexico', 'NM', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'New York', 'NY', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'North Carolina', 'NC', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'North Dakota', 'ND', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Northern Mariana Islands', 'MP', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Ohio', 'OH', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Oklahoma', 'OK', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Oregon', 'OR', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Pennsylvania', 'PA', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Puerto Rico', 'PR', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Rhode Island', 'RI', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'South Carolina', 'SC', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'South Dakota', 'SD', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Tennessee', 'TN', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Texas', 'TX', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Trust Territories', 'TT', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Utah', 'UT', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Vermont', 'VT', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Virginia', 'VA', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Virgin Islands', 'VI', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Washington', 'WA', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'West Virginia', 'WV', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Wisconsin', 'WI', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Wyoming', 'WY', 231, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `from_warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `to_warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `grand_total` double DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `reference_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_items`
--

CREATE TABLE `transfer_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transfer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_price` double DEFAULT NULL,
  `net_unit_price` double DEFAULT NULL,
  `tax_type` int(11) NOT NULL,
  `tax_value` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount_type` int(11) NOT NULL,
  `discount_value` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_unit` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `status`, `language`) VALUES
(1, 'admin', NULL, 'admin@creativ356.com', NULL, '2024-07-29 11:02:05', '$2y$10$soiWLoSGArpuVY3NrofdheJS87C2fWa2bkTT05eGx3DCDjdMXjLqW', NULL, '2024-07-29 11:02:05', '2024-07-29 11:02:05', 1, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

CREATE TABLE `variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `variation_products`
--

CREATE TABLE `variation_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `main_product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `variation_type_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `variation_types`
--

CREATE TABLE `variation_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `phone`, `country`, `city`, `email`, `zip_code`, `created_at`, `updated_at`) VALUES
(1, 'Main Shop', '7722513357', 'United States', 'Florida', 'admin@creativ356.com', '34946', '2024-07-29 11:02:05', '2024-07-29 11:05:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adjustments`
--
ALTER TABLE `adjustments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adjustments_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `adjustment_items`
--
ALTER TABLE `adjustment_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adjustment_items_adjustment_id_foreign` (`adjustment_id`),
  ADD KEY `adjustment_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `base_units`
--
ALTER TABLE `base_units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_units_name_unique` (`name`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_name_unique` (`name`),
  ADD UNIQUE KEY `countries_short_code_unique` (`short_code`);

--
-- Indexes for table `coupon_codes`
--
ALTER TABLE `coupon_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupon_codes_code_unique` (`code`);

--
-- Indexes for table `coupon_product`
--
ALTER TABLE `coupon_product`
  ADD KEY `coupon_product_coupon_code_id_foreign` (`coupon_code_id`),
  ADD KEY `coupon_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currencies_name_unique` (`name`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `expenses_expense_category_id_foreign` (`expense_category_id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `holds`
--
ALTER TABLE `holds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `holds_customer_id_foreign` (`customer_id`),
  ADD KEY `holds_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `hold_items`
--
ALTER TABLE `hold_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hold_items_hold_id_foreign` (`hold_id`),
  ADD KEY `hold_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_iso_code_unique` (`iso_code`);

--
-- Indexes for table `mail_templates`
--
ALTER TABLE `mail_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_products`
--
ALTER TABLE `main_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_stocks`
--
ALTER TABLE `manage_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manage_stocks_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `manage_stocks_product_id_foreign` (`product_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pos_register`
--
ALTER TABLE `pos_register`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_register_user_id_foreign` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_code_unique` (`code`),
  ADD KEY `products_product_category_id_foreign` (`product_category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_main_product_id_foreign` (`main_product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_categories_name_unique` (`name`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_supplier_id_foreign` (`supplier_id`),
  ADD KEY `purchases_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `purchases_return`
--
ALTER TABLE `purchases_return`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_return_supplier_id_foreign` (`supplier_id`),
  ADD KEY `purchases_return_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `purchases_return_items`
--
ALTER TABLE `purchases_return_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_return_items_purchase_return_id_foreign` (`purchase_return_id`),
  ADD KEY `purchases_return_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_items_purchase_id_foreign` (`purchase_id`),
  ADD KEY `purchase_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotations_customer_id_foreign` (`customer_id`),
  ADD KEY `quotations_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `quotation_items`
--
ALTER TABLE `quotation_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotation_items_quotation_id_foreign` (`quotation_id`),
  ADD KEY `quotation_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_customer_id_foreign` (`customer_id`),
  ADD KEY `sales_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `sales_user_id_foreign` (`user_id`);

--
-- Indexes for table `sales_payments`
--
ALTER TABLE `sales_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_payments_sale_id_foreign` (`sale_id`);

--
-- Indexes for table `sales_return`
--
ALTER TABLE `sales_return`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_return_customer_id_foreign` (`customer_id`),
  ADD KEY `sales_return_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `sales_return_sale_id_foreign` (`sale_id`);

--
-- Indexes for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_items_sale_id_foreign` (`sale_id`),
  ADD KEY `sale_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `sale_return_items`
--
ALTER TABLE `sale_return_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_return_items_sale_return_id_foreign` (`sale_return_id`),
  ADD KEY `sale_return_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_templates`
--
ALTER TABLE `sms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `states_country_id_foreign` (`country_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_email_unique` (`email`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfers_from_warehouse_id_foreign` (`from_warehouse_id`),
  ADD KEY `transfers_to_warehouse_id_foreign` (`to_warehouse_id`);

--
-- Indexes for table `transfer_items`
--
ALTER TABLE `transfer_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfer_items_transfer_id_foreign` (`transfer_id`),
  ADD KEY `transfer_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `units_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `variations`
--
ALTER TABLE `variations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `variations_name_unique` (`name`);

--
-- Indexes for table `variation_products`
--
ALTER TABLE `variation_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variation_products_product_id_foreign` (`product_id`),
  ADD KEY `variation_products_variation_id_foreign` (`variation_id`),
  ADD KEY `variation_products_variation_type_id_foreign` (`variation_type_id`),
  ADD KEY `variation_products_main_product_id_foreign` (`main_product_id`);

--
-- Indexes for table `variation_types`
--
ALTER TABLE `variation_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variation_types_variation_id_foreign` (`variation_id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `warehouses_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adjustments`
--
ALTER TABLE `adjustments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adjustment_items`
--
ALTER TABLE `adjustment_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_units`
--
ALTER TABLE `base_units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `coupon_codes`
--
ALTER TABLE `coupon_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holds`
--
ALTER TABLE `holds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hold_items`
--
ALTER TABLE `hold_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mail_templates`
--
ALTER TABLE `mail_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_products`
--
ALTER TABLE `main_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manage_stocks`
--
ALTER TABLE `manage_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pos_register`
--
ALTER TABLE `pos_register`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases_return`
--
ALTER TABLE `purchases_return`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases_return_items`
--
ALTER TABLE `purchases_return_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation_items`
--
ALTER TABLE `quotation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_payments`
--
ALTER TABLE `sales_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_return`
--
ALTER TABLE `sales_return`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_return_items`
--
ALTER TABLE `sale_return_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sms_templates`
--
ALTER TABLE `sms_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfer_items`
--
ALTER TABLE `transfer_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `variations`
--
ALTER TABLE `variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `variation_products`
--
ALTER TABLE `variation_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `variation_types`
--
ALTER TABLE `variation_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adjustments`
--
ALTER TABLE `adjustments`
  ADD CONSTRAINT `adjustments_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `adjustment_items`
--
ALTER TABLE `adjustment_items`
  ADD CONSTRAINT `adjustment_items_adjustment_id_foreign` FOREIGN KEY (`adjustment_id`) REFERENCES `adjustments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `adjustment_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coupon_product`
--
ALTER TABLE `coupon_product`
  ADD CONSTRAINT `coupon_product_coupon_code_id_foreign` FOREIGN KEY (`coupon_code_id`) REFERENCES `coupon_codes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `coupon_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_expense_category_id_foreign` FOREIGN KEY (`expense_category_id`) REFERENCES `expense_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `expenses_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `holds`
--
ALTER TABLE `holds`
  ADD CONSTRAINT `holds_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `holds_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hold_items`
--
ALTER TABLE `hold_items`
  ADD CONSTRAINT `hold_items_hold_id_foreign` FOREIGN KEY (`hold_id`) REFERENCES `holds` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hold_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `manage_stocks`
--
ALTER TABLE `manage_stocks`
  ADD CONSTRAINT `manage_stocks_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `manage_stocks_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pos_register`
--
ALTER TABLE `pos_register`
  ADD CONSTRAINT `pos_register_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_main_product_id_foreign` FOREIGN KEY (`main_product_id`) REFERENCES `main_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchases_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchases_return`
--
ALTER TABLE `purchases_return`
  ADD CONSTRAINT `purchases_return_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchases_return_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchases_return_items`
--
ALTER TABLE `purchases_return_items`
  ADD CONSTRAINT `purchases_return_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchases_return_items_purchase_return_id_foreign` FOREIGN KEY (`purchase_return_id`) REFERENCES `purchases_return` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD CONSTRAINT `purchase_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchase_items_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quotations`
--
ALTER TABLE `quotations`
  ADD CONSTRAINT `quotations_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quotations_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quotation_items`
--
ALTER TABLE `quotation_items`
  ADD CONSTRAINT `quotation_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quotation_items_quotation_id_foreign` FOREIGN KEY (`quotation_id`) REFERENCES `quotations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sales_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_payments`
--
ALTER TABLE `sales_payments`
  ADD CONSTRAINT `sales_payments_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_return`
--
ALTER TABLE `sales_return`
  ADD CONSTRAINT `sales_return_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sales_return_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sales_return_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD CONSTRAINT `sale_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sale_items_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sale_return_items`
--
ALTER TABLE `sale_return_items`
  ADD CONSTRAINT `sale_return_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sale_return_items_sale_return_id_foreign` FOREIGN KEY (`sale_return_id`) REFERENCES `sales_return` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transfers`
--
ALTER TABLE `transfers`
  ADD CONSTRAINT `transfers_from_warehouse_id_foreign` FOREIGN KEY (`from_warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transfers_to_warehouse_id_foreign` FOREIGN KEY (`to_warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transfer_items`
--
ALTER TABLE `transfer_items`
  ADD CONSTRAINT `transfer_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transfer_items_transfer_id_foreign` FOREIGN KEY (`transfer_id`) REFERENCES `transfers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `variation_products`
--
ALTER TABLE `variation_products`
  ADD CONSTRAINT `variation_products_main_product_id_foreign` FOREIGN KEY (`main_product_id`) REFERENCES `main_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `variation_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `variation_products_variation_id_foreign` FOREIGN KEY (`variation_id`) REFERENCES `variations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `variation_products_variation_type_id_foreign` FOREIGN KEY (`variation_type_id`) REFERENCES `variation_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `variation_types`
--
ALTER TABLE `variation_types`
  ADD CONSTRAINT `variation_types_variation_id_foreign` FOREIGN KEY (`variation_id`) REFERENCES `variations` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
