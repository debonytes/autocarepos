-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 03, 2024 at 02:54 AM
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
-- Database: `app_autocarepos`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_name` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `created_at`, `updated_at`, `first_name`, `middle_name`, `last_name`, `business_name`, `phone`, `email`, `address_line1`, `address_line2`, `city`, `zip_code`, `state`, `country`) VALUES
(1, '2024-07-30 06:43:09', '2024-07-30 06:43:09', 'John', 'Andrew', 'Smith', 'Hello World GenZ', '352-221-4775', 'john@helloworld.io', '2483 Long Street', '', 'Gainesville', '32607', 'FL', 231);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `phone_code`) VALUES
(1, 'Afghanistan', 'AF', 93),
(2, 'Albania', 'AL', 355),
(3, 'Algeria', 'DZ', 213),
(4, 'American Samoa', 'AS', 1684),
(5, 'Andorra', 'AD', 376),
(6, 'Angola', 'AO', 244),
(7, 'Anguilla', 'AI', 1264),
(8, 'Antarctica', 'AQ', 0),
(9, 'Antigua And Barbuda', 'AG', 1268),
(10, 'Argentina', 'AR', 54),
(11, 'Armenia', 'AM', 374),
(12, 'Aruba', 'AW', 297),
(13, 'Australia', 'AU', 61),
(14, 'Austria', 'AT', 43),
(15, 'Azerbaijan', 'AZ', 994),
(16, 'Bahamas The', 'BS', 1242),
(17, 'Bahrain', 'BH', 973),
(18, 'Bangladesh', 'BD', 880),
(19, 'Barbados', 'BB', 1246),
(20, 'Belarus', 'BY', 375),
(21, 'Belgium', 'BE', 32),
(22, 'Belize', 'BZ', 501),
(23, 'Benin', 'BJ', 229),
(24, 'Bermuda', 'BM', 1441),
(25, 'Bhutan', 'BT', 975),
(26, 'Bolivia', 'BO', 591),
(27, 'Bosnia and Herzegovina', 'BA', 387),
(28, 'Botswana', 'BW', 267),
(29, 'Bouvet Island', 'BV', 0),
(30, 'Brazil', 'BR', 55),
(31, 'British Indian Ocean Territory', 'IO', 246),
(32, 'Brunei', 'BN', 673),
(33, 'Bulgaria', 'BG', 359),
(34, 'Burkina Faso', 'BF', 226),
(35, 'Burundi', 'BI', 257),
(36, 'Cambodia', 'KH', 855),
(37, 'Cameroon', 'CM', 237),
(38, 'Canada', 'CA', 1),
(39, 'Cape Verde', 'CV', 238),
(40, 'Cayman Islands', 'KY', 1345),
(41, 'Central African Republic', 'CF', 236),
(42, 'Chad', 'TD', 235),
(43, 'Chile', 'CL', 56),
(44, 'China', 'CN', 86),
(45, 'Christmas Island', 'CX', 61),
(46, 'Cocos (Keeling) Islands', 'CC', 672),
(47, 'Colombia', 'CO', 57),
(48, 'Comoros', 'KM', 269),
(49, 'Republic Of The Congo', 'CG', 242),
(50, 'Democratic Republic Of The Congo', 'CD', 242),
(51, 'Cook Islands', 'CK', 682),
(52, 'Costa Rica', 'CR', 506),
(53, 'Cote D\'\'Ivoire (Ivory Coast)', 'CI', 225),
(54, 'Croatia (Hrvatska)', 'HR', 385),
(55, 'Cuba', 'CU', 53),
(56, 'Cyprus', 'CY', 357),
(57, 'Czech Republic', 'CZ', 420),
(58, 'Denmark', 'DK', 45),
(59, 'Djibouti', 'DJ', 253),
(60, 'Dominica', 'DM', 1767),
(61, 'Dominican Republic', 'DO', 1809),
(62, 'East Timor', 'TP', 670),
(63, 'Ecuador', 'EC', 593),
(64, 'Egypt', 'EG', 20),
(65, 'El Salvador', 'SV', 503),
(66, 'Equatorial Guinea', 'GQ', 240),
(67, 'Eritrea', 'ER', 291),
(68, 'Estonia', 'EE', 372),
(69, 'Ethiopia', 'ET', 251),
(70, 'External Territories of Australia', 'XA', 61),
(71, 'Falkland Islands', 'FK', 500),
(72, 'Faroe Islands', 'FO', 298),
(73, 'Fiji Islands', 'FJ', 679),
(74, 'Finland', 'FI', 358),
(75, 'France', 'FR', 33),
(76, 'French Guiana', 'GF', 594),
(77, 'French Polynesia', 'PF', 689),
(78, 'French Southern Territories', 'TF', 0),
(79, 'Gabon', 'GA', 241),
(80, 'Gambia The', 'GM', 220),
(81, 'Georgia', 'GE', 995),
(82, 'Germany', 'DE', 49),
(83, 'Ghana', 'GH', 233),
(84, 'Gibraltar', 'GI', 350),
(85, 'Greece', 'GR', 30),
(86, 'Greenland', 'GL', 299),
(87, 'Grenada', 'GD', 1473),
(88, 'Guadeloupe', 'GP', 590),
(89, 'Guam', 'GU', 1671),
(90, 'Guatemala', 'GT', 502),
(91, 'Guernsey and Alderney', 'XU', 44),
(92, 'Guinea', 'GN', 224),
(93, 'Guinea-Bissau', 'GW', 245),
(94, 'Guyana', 'GY', 592),
(95, 'Haiti', 'HT', 509),
(96, 'Heard and McDonald Islands', 'HM', 0),
(97, 'Honduras', 'HN', 504),
(98, 'Hong Kong S.A.R.', 'HK', 852),
(99, 'Hungary', 'HU', 36),
(100, 'Iceland', 'IS', 354),
(101, 'India', 'IN', 91),
(102, 'Indonesia', 'ID', 62),
(103, 'Iran', 'IR', 98),
(104, 'Iraq', 'IQ', 964),
(105, 'Ireland', 'IE', 353),
(106, 'Israel', 'IL', 972),
(107, 'Italy', 'IT', 39),
(108, 'Jamaica', 'JM', 1876),
(109, 'Japan', 'JP', 81),
(110, 'Jersey', 'XJ', 44),
(111, 'Jordan', 'JO', 962),
(112, 'Kazakhstan', 'KZ', 7),
(113, 'Kenya', 'KE', 254),
(114, 'Kiribati', 'KI', 686),
(115, 'Korea North', 'KP', 850),
(116, 'Korea South', 'KR', 82),
(117, 'Kuwait', 'KW', 965),
(118, 'Kyrgyzstan', 'KG', 996),
(119, 'Laos', 'LA', 856),
(120, 'Latvia', 'LV', 371),
(121, 'Lebanon', 'LB', 961),
(122, 'Lesotho', 'LS', 266),
(123, 'Liberia', 'LR', 231),
(124, 'Libya', 'LY', 218),
(125, 'Liechtenstein', 'LI', 423),
(126, 'Lithuania', 'LT', 370),
(127, 'Luxembourg', 'LU', 352),
(128, 'Macau S.A.R.', 'MO', 853),
(129, 'Macedonia', 'MK', 389),
(130, 'Madagascar', 'MG', 261),
(131, 'Malawi', 'MW', 265),
(132, 'Malaysia', 'MY', 60),
(133, 'Maldives', 'MV', 960),
(134, 'Mali', 'ML', 223),
(135, 'Malta', 'MT', 356),
(136, 'Man (Isle of)', 'XM', 44),
(137, 'Marshall Islands', 'MH', 692),
(138, 'Martinique', 'MQ', 596),
(139, 'Mauritania', 'MR', 222),
(140, 'Mauritius', 'MU', 230),
(141, 'Mayotte', 'YT', 269),
(142, 'Mexico', 'MX', 52),
(143, 'Micronesia', 'FM', 691),
(144, 'Moldova', 'MD', 373),
(145, 'Monaco', 'MC', 377),
(146, 'Mongolia', 'MN', 976),
(147, 'Montserrat', 'MS', 1664),
(148, 'Morocco', 'MA', 212),
(149, 'Mozambique', 'MZ', 258),
(150, 'Myanmar', 'MM', 95),
(151, 'Namibia', 'NA', 264),
(152, 'Nauru', 'NR', 674),
(153, 'Nepal', 'NP', 977),
(154, 'Netherlands Antilles', 'AN', 599),
(155, 'Netherlands The', 'NL', 31),
(156, 'New Caledonia', 'NC', 687),
(157, 'New Zealand', 'NZ', 64),
(158, 'Nicaragua', 'NI', 505),
(159, 'Niger', 'NE', 227),
(160, 'Nigeria', 'NG', 234),
(161, 'Niue', 'NU', 683),
(162, 'Norfolk Island', 'NF', 672),
(163, 'Northern Mariana Islands', 'MP', 1670),
(164, 'Norway', 'NO', 47),
(165, 'Oman', 'OM', 968),
(166, 'Pakistan', 'PK', 92),
(167, 'Palau', 'PW', 680),
(168, 'Palestinian Territory Occupied', 'PS', 970),
(169, 'Panama', 'PA', 507),
(170, 'Papua new Guinea', 'PG', 675),
(171, 'Paraguay', 'PY', 595),
(172, 'Peru', 'PE', 51),
(173, 'Philippines', 'PH', 63),
(174, 'Pitcairn Island', 'PN', 0),
(175, 'Poland', 'PL', 48),
(176, 'Portugal', 'PT', 351),
(177, 'Puerto Rico', 'PR', 1787),
(178, 'Qatar', 'QA', 974),
(179, 'Reunion', 'RE', 262),
(180, 'Romania', 'RO', 40),
(181, 'Russia', 'RU', 70),
(182, 'Rwanda', 'RW', 250),
(183, 'Saint Helena', 'SH', 290),
(184, 'Saint Kitts And Nevis', 'KN', 1869),
(185, 'Saint Lucia', 'LC', 1758),
(186, 'Saint Pierre and Miquelon', 'PM', 508),
(187, 'Saint Vincent And The Grenadines', 'VC', 1784),
(188, 'Samoa', 'WS', 684),
(189, 'San Marino', 'SM', 378),
(190, 'Sao Tome and Principe', 'ST', 239),
(191, 'Saudi Arabia', 'SA', 966),
(192, 'Senegal', 'SN', 221),
(193, 'Serbia', 'RS', 381),
(194, 'Seychelles', 'SC', 248),
(195, 'Sierra Leone', 'SL', 232),
(196, 'Singapore', 'SG', 65),
(197, 'Slovakia', 'SK', 421),
(198, 'Slovenia', 'SI', 386),
(199, 'Smaller Territories of the UK', 'XG', 44),
(200, 'Solomon Islands', 'SB', 677),
(201, 'Somalia', 'SO', 252),
(202, 'South Africa', 'ZA', 27),
(203, 'South Georgia', 'GS', 0),
(204, 'South Sudan', 'SS', 211),
(205, 'Spain', 'ES', 34),
(206, 'Sri Lanka', 'LK', 94),
(207, 'Sudan', 'SD', 249),
(208, 'Suriname', 'SR', 597),
(209, 'Svalbard And Jan Mayen Islands', 'SJ', 47),
(210, 'Swaziland', 'SZ', 268),
(211, 'Sweden', 'SE', 46),
(212, 'Switzerland', 'CH', 41),
(213, 'Syria', 'SY', 963),
(214, 'Taiwan', 'TW', 886),
(215, 'Tajikistan', 'TJ', 992),
(216, 'Tanzania', 'TZ', 255),
(217, 'Thailand', 'TH', 66),
(218, 'Togo', 'TG', 228),
(219, 'Tokelau', 'TK', 690),
(220, 'Tonga', 'TO', 676),
(221, 'Trinidad And Tobago', 'TT', 1868),
(222, 'Tunisia', 'TN', 216),
(223, 'Turkey', 'TR', 90),
(224, 'Turkmenistan', 'TM', 7370),
(225, 'Turks And Caicos Islands', 'TC', 1649),
(226, 'Tuvalu', 'TV', 688),
(227, 'Uganda', 'UG', 256),
(228, 'Ukraine', 'UA', 380),
(229, 'United Arab Emirates', 'AE', 971),
(230, 'United Kingdom', 'GB', 44),
(231, 'United States', 'US', 1),
(232, 'United States Minor Outlying Islands', 'UM', 1),
(233, 'Uruguay', 'UY', 598),
(234, 'Uzbekistan', 'UZ', 998),
(235, 'Vanuatu', 'VU', 678),
(236, 'Vatican City State (Holy See)', 'VA', 39),
(237, 'Venezuela', 'VE', 58),
(238, 'Vietnam', 'VN', 84),
(239, 'Virgin Islands (British)', 'VG', 1284),
(240, 'Virgin Islands (US)', 'VI', 1340),
(241, 'Wallis And Futuna Islands', 'WF', 681),
(242, 'Western Sahara', 'EH', 212),
(243, 'Yemen', 'YE', 967),
(244, 'Yugoslavia', 'YU', 38),
(245, 'Zambia', 'ZM', 260),
(246, 'Zimbabwe', 'ZW', 26);

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_06_23_144835_create_clients_table', 1),
(5, '2024_06_23_144934_create_products_table', 1),
(6, '2024_06_23_145004_create_receipts_table', 1),
(7, '2024_06_29_033946_add_columns_to_clients_table', 1),
(8, '2024_06_29_081858_add_columns_to_products_table', 1),
(9, '2024_06_30_143059_create_countries_table', 1),
(10, '2024_07_13_045053_add_uuid_to_table_products', 1),
(11, '2024_07_30_015709_create_states_table', 1),
(12, '2024_07_30_020823_create_roles_table', 1),
(13, '2024_07_30_021935_create_role_permissions_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `categories` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dimensions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_price` decimal(8,2) DEFAULT NULL,
  `retail_price` decimal(8,2) DEFAULT NULL,
  `product_uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `created_at`, `updated_at`, `product_name`, `sku`, `description`, `summary`, `categories`, `image`, `stock`, `weight`, `dimensions`, `supplier_price`, `retail_price`, `product_uuid`) VALUES
(1, '2024-07-30 07:51:24', '2024-07-30 07:51:24', 'Car suspension', 'CS102534', 'Lorem ipsum dolor sit amet consectetur adipiscing elit diam class commodo, blandit turpis mollis lacus himenaeos montes tristique tincidunt mi senectus, sapien semper ullamcorper cursus nec scelerisque eu viverra cubilia.', 'Faucibus tortor eros diam feugiat rutrum in tristique interdum natoque parturient', NULL, NULL, 30, '2.5 lbs', '5w X 10h inches', 100.00, 150.00, '123-Z5X-1234');

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `level` int(11) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `permission_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0LSvJhJOA43h7aTOI6WYsaRhGnH33a7pD3E6OI83', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSktaQldrNjFMdHQ2QURsVmtKdE1mRHphNlk1TGs0eDNwZW1vQ2lqWSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321529),
('1Y9IDNcI8gZFL0THwjvOhVaGMfSasr8cQyr4pdeX', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMTdFbG1ZdG1IaUl1dUZDeFFYbXVqUnc1dEpINWViSkpUYXlLbW4yaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly9hdXRvY2FyZXBvcy50ZXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321331),
('1ya4rUvZLBv2MmVLdo0tWXPwn72H214dRjPpbnX4', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWk9EaUI5N0JBZTFGaXFuRXFKelZkVHh6YWx3VXFJbWV3VldKajRDRCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321403),
('20fTftRrVfnuAxcon4G3hOPwoXj44c6FfzQccwoM', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaWtRNUtnWFhsMjJnSGJ1VE5MOGhEenV3QThMalhBR2ZQTTdISHlXeCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321499),
('2YV8wGlR7J5sDgLYhebRxOjo3GKs7LlKkUT4Cpqb', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUJVdkNDYkdPOFVMZkg2RWJFZ1VWV3BwWjg5ZTg5RHhxV3VONlZLeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9hdXRvY2FyZXBvcy50ZXN0L3JlZ2lzdGVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321366),
('5aT1867eGWi2rREmm2z7gYDvwj9IotBZy8Q7Iy76', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUmZzWktjckNaQ21scVZMZ0dHd3NiNWl4Q3NMdFNSZ1hZckY5cVVSNyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321591),
('8ci6f3vur86ethOrajE44T80SJLRTPJJNAvaDNPS', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWVhXMlBDMGJhZnVEelkya3I3SVJqN2FUM1Z1czY0UHJXdEdUUW9NSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9hdXRvY2FyZXBvcy50ZXN0L2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321524),
('9hYabeGAe1lO3alU0M0xEIZkj5WgPFynqQ6ZNMQm', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiekltbUtUa3ZjU3g0YnhBMW9LSkdqaWprNkZIS1JpYURncUVKbTh0ciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly9hdXRvY2FyZXBvcy50ZXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321328),
('bG0RAB34MYOkO0EaS6HGvmtscC24quMl4VPEcTZH', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUtaYjkxRVZSV0l2UTFTN2FOMFhSdGRiaVNZN2ZwNDZLaUNjY3MxQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly9hdXRvY2FyZXBvcy50ZXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321336),
('dRwxYpyIVUckWf9DpGsSsYiJbqOVJKAmWmFBdSeJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZzFhNlJMd1dneUVpOUdBMXRhbmtxTzVYQXdVaDVud3lLVzJQZDAzbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9hdXRvY2FyZXBvcy50ZXN0L2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321585),
('gjf0eEy7wxOtR3VmwwUHBdJM0stnvqJZYgmcZpXK', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmwzV0V1cW1tY0IwMXhTaDRvTzdjMXdLd1FUekphVEg3VGxtRnhaaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly9hdXRvY2FyZXBvcy50ZXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321330),
('I7WYDEfKSlqKlHFUcujd6iMrG6YlocdnREeOehuV', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ2gyVnBqSDdtNzJjRkVWNEFKS0NuZkQ0cGZpUlptc3BIdzRJTWh4bSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly9hdXRvY2FyZXBvcy50ZXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321330),
('JeQVBQiijVkI9i5hk01kPq8SUsDyO1EK4f3vQB7J', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYzY0Zk50djl1MkhPQm9qRzhRWXFzaERralBRRGFkMnBNV25JQUxvNiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321345),
('JTSwofufaptnOtNOd2febPS29FyAFvqGsuEVHLxV', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzlrT05haVdWY2dZOGRZZmNsdzZxNGVLcUlFa3BjdTdQYlN2bzJocSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly9hdXRvY2FyZXBvcy50ZXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321243),
('jWofLp0CAPT6p7mheaZT9mQmUyBpDaH2b0KG7IOl', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNld5d2NVczBqN1M1d3B2M2hISjJ1VHNXNnV2Vk9oQ01sSG5CM3BNdSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321358),
('KJoSbvXaDqSkAarh5y32yrNSwinrYXaKYSuGwgAD', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoic3p2SHFPNld4UXptRHlxYXNHdU5FcHVCcEZUYm1wSnFOaWg5ODd0UCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321408),
('N8yWDJ27ZuSBclnpNZxtSTtotZqYDu4qFvPuDM74', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZURlT05PY2JUajVZMUpNMGF0T21CNlV2WGY3M05HUUNxT0hWbmoySyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321495),
('NQmU7svpcQdn0FOyRxK2bnvQqfYOTLP6cQEzFkl6', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUM1V0dOSUVrS29SSnpDalhVS3RZYzVwQXRoNFlvcDZwcmxWU0lWbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly9hdXRvY2FyZXBvcy50ZXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321503),
('nTzGUJ0BVXkZsg1cuiLzVHsCjIH0lr0h3Zikohyh', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid3ZvY1kxN0N4Zlo2OGJOalBaQWFzR29yTmU1WG41aDVvRGYyaE5WcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly9hdXRvY2FyZXBvcy50ZXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321330),
('ooo7Im2wH4qrXajTHVs6kMBCkwt3D2i6JCFOp37F', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiV1lZN05Bb3JRaFZWa3VLMFN5NGtEWlVkV0JBMHpuUkc0bGNqM21zdSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321595),
('Q21rukSeoZ1pOjhnx7CJ1BjklbxsfDS7smAkFeKi', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTmNROWQ4QnEydEVSbDA4Y2RVc3lLckt5WUFkV05jaVpWNVdiZ2FlUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly9hdXRvY2FyZXBvcy50ZXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321523),
('Q4NcPfwyvCBQrojOrPOGFKFcflBXPXJ19DG7AZIr', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRDJaNkloTUpjaHlXNjRkZjMzaFlBTWdrWGVDbjlVZ1d1NkxwVE1YeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9hdXRvY2FyZXBvcy50ZXN0L2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321485),
('QdCFDd8oDHwY2iEMJmgr8Q7mKKECuqgpWLubJros', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiTkh2QUg0OEhrQ2FNNzJ1bnBzZmcwZUVDbUVtdXZ0MUJqRUN6d2ticyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9hdXRvY2FyZXBvcy50ZXN0L3Byb2R1Y3RzIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3MjIzMjIwNTc7fX0=', 1722325913),
('qmQJ32B7XSYw0rCXhRAiWyvLXkkn4UaDFgdKsEpq', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidEZ1NkVLWVdyd1ZoS08wZDRjMjBKakN6dDNod0pQSng0MVVsQXhYNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9hdXRvY2FyZXBvcy50ZXN0L2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321245),
('RfSFVf5GW3b8ttjJKZZB61897l69MqgBYh5Fyb4g', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibDd6WTFOY0V0VDhQU3N6U2xueXVKMVhjWGhXU2l5N1lRZU52OU5sQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321580),
('So75fLeUKlCkpiW9YkllmSKNvcLfeApmk5ZtHIA2', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOTlTT2IybGlQQms5eDlVeXlkWEo4MHpPRzJwcGp0aDJvN0dZSHBVWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321350),
('tgUbcgkEff9MStGdtu0ipT7fRkM588OZMTyFZ6cq', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieDVlaWFCZWxUeUh0RHMzNVdGejRBbU1LemFwMnJINkx3cUFBQmhWRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly9hdXRvY2FyZXBvcy50ZXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321584),
('U0QMboXE5khNhoVxCDHcXySN4SLwDvo5i09hRi4J', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGdxMTVwMTFjREFhVlRjRlA4TTNsNldGcENnRmJUN1h4V2tLN3FUVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9hdXRvY2FyZXBvcy50ZXN0L2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321418),
('vevd0sWz1pFQsOQRINNBe9lqapLiOHKwkhsc4t1J', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidXNKc3k4S20yOHhDQWFJNDJwWVVQTld0Ymx1RklmMUJrZVQ3ek9XbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321361),
('x685EKDSwYVChKZImYW1XXVOxGjXHkTHq50L9EfI', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT09BT0Mxdm1jbExoeXh1UTU5RzdaUmN6N3NrZldpdERjQnM4MEZkUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly9hdXRvY2FyZXBvcy50ZXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321331),
('xAn6NiwFf1dk7UeW2QXff7OPeLxq482PLUrVhugc', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUk2bVI2eHRZeXY5em01Y21MQlNmNFlwQVgxSEtxN2hpMWlpUGk3YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly9hdXRvY2FyZXBvcy50ZXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321330);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `code`, `country_id`) VALUES
(1, 'Alabama', 'AL', 231),
(2, 'Alaska', 'AK', 231),
(3, 'Arizona', 'AZ', 231),
(4, 'Arkansas', 'AR', 231),
(5, 'American Samoa', 'AS', 231),
(6, 'California', 'CA', 231),
(7, 'Colorado', 'CO', 231),
(8, 'Connecticut', 'CT', 231),
(9, 'Delaware', 'DE', 231),
(10, 'District of Columbia', 'DC', 231),
(11, 'Florida', 'FL', 231),
(12, 'Georgia', 'GA', 231),
(13, 'Guam', 'GU', 231),
(14, 'Hawaii', 'HI', 231),
(15, 'Idaho', 'ID', 231),
(16, 'Illinois', 'IL', 231),
(17, 'Indiana', 'IN', 231),
(18, 'Iowa', 'IA', 231),
(19, 'Kansas', 'KS', 231),
(20, 'Kentucky', 'KY', 231),
(21, 'Louisiana', 'LA', 231),
(22, 'Maine', 'ME', 231),
(23, 'Maryland', 'MD', 231),
(24, 'Massachusetts', 'MA', 231),
(25, 'Michigan', 'MI', 231),
(26, 'Minnesota', 'MN', 231),
(27, 'Mississippi', 'MS', 231),
(28, 'Missouri', 'MO', 231),
(29, 'Montana', 'MT', 231),
(30, 'Nebraska', 'NE', 231),
(31, 'Nevada', 'NV', 231),
(32, 'New Hampshire', 'NH', 231),
(33, 'New Jersey', 'NJ', 231),
(34, 'New Mexico', 'NM', 231),
(35, 'New York', 'NY', 231),
(36, 'North Carolina', 'NC', 231),
(37, 'North Dakota', 'ND', 231),
(38, 'Northern Mariana Islands', 'MP', 231),
(39, 'Ohio', 'OH', 231),
(40, 'Oklahoma', 'OK', 231),
(41, 'Oregon', 'OR', 231),
(42, 'Pennsylvania', 'PA', 231),
(43, 'Puerto Rico', 'PR', 231),
(44, 'Rhode Island', 'RI', 231),
(45, 'South Carolina', 'SC', 231),
(46, 'South Dakota', 'SD', 231),
(47, 'Tennessee', 'TN', 231),
(48, 'Texas', 'TX', 231),
(49, 'Trust Territories', 'TT', 231),
(50, 'Utah', 'UT', 231),
(51, 'Vermont', 'VT', 231),
(52, 'Virginia', 'VA', 231),
(53, 'Virgin Islands', 'VI', 231),
(54, 'Washington', 'WA', 231),
(55, 'West Virginia', 'WV', 231),
(56, 'Wisconsin', 'WI', 231),
(57, 'Wyoming', 'WY', 231);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `picture`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'admin', NULL, 'admin@creativ356.com', '2024-07-30 06:33:15', '$2y$12$ILdMhUV5fUmCl9TouCyMdOVsUNdd72ARM/UzZpUNU0R2pChWKQ0Ei', NULL, NULL, '2024-07-30 06:33:16', '2024-07-30 06:33:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_name_unique` (`name`),
  ADD UNIQUE KEY `countries_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD KEY `role_permissions_role_id_index` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
