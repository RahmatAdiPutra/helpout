-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 11, 2020 at 06:14 PM
-- Server version: 5.7.28-0ubuntu0.18.04.4
-- PHP Version: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_card_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Default','Basic','Premium') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Basic',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `id_card_number`, `name`, `gender`, `birthday`, `religion`, `city`, `address`, `phone_number`, `email`, `email_verified_at`, `token`, `password`, `status`, `remember_token`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'Customer', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 'Default', NULL, NULL, '2020-01-10 08:37:08', '2020-01-10 08:37:08', NULL),
(2, 'ef6781f7-99af-3f74-acbd-13589de28849', 'Jarrell Klein', 'female', '1975-05-19', 'Konghucu', 'Lake Jodie', '8117 Dare Club Suite 720\nBatzberg, NH 74195', '468-385-2417', '239523619will.crooks@yahoo.com', NULL, NULL, 'de51967567065dc6818f5b802abdf177e918131245997b5f0ca90104400892e6', 'Premium', NULL, '16', '2020-01-10 08:37:08', '2020-01-10 08:37:08', NULL),
(3, '2ead8928-db0a-3d8a-8d41-7646ba795f92', 'Rozella Ondricka', 'male', '2006-01-31', 'Kristen', 'East Daltonshire', '8568 Florencio Mountain Suite 147\nNew Tristianmouth, HI 76213-1653', '1-845-785-5011 x245', '386452georgianna.schuppe@yahoo.com', NULL, NULL, '824c759df619fa93fbf02d768eb0ae7df0fb7c07efb602cdd8d607c77fc87e30', 'Basic', NULL, '2', '2020-01-10 08:37:08', '2020-01-10 08:37:08', NULL),
(4, '937f545c-ff9f-3bd7-b758-a78669fe79ee', 'Cassandre Schiller', 'female', '1978-05-06', 'Kristen', 'West Maye', '6194 Emard Motorway Apt. 350\nSouth Dorrisport, AZ 66166-8539', '556.841.5502 x38741', '2090553breanna.cummerata@hotmail.com', NULL, NULL, 'caa71be02f0f8d886c9bf5c4e37c7498b5ed12853fd19ba7c6f70f1a84917c02', 'Basic', NULL, '20', '2020-01-10 08:37:09', '2020-01-10 08:37:09', NULL),
(5, 'd8738584-b61e-3601-a994-28c34a0bcc22', 'Dominique Lehner', 'male', '2008-05-11', 'Islam', 'North Shanie', '61615 Gina Mountain Suite 944\nWest Edythemouth, MS 14795', '286-789-0905 x34576', '8smueller@hotmail.com', NULL, NULL, 'cec82974c3cc2c41b767c70ec81db6011ef72c0623e632e6b1e8feb54a5b8a7c', 'Premium', NULL, '6', '2020-01-10 08:37:09', '2020-01-10 08:37:09', NULL),
(6, '020c0e06-8919-38d3-8419-33ec9d066538', 'Dr. Augustus Jacobson IV', 'male', '2006-09-11', 'Islam', 'Predovicland', '2295 Kari Forge\nNew Denafurt, SD 33193-5944', '729.296.8054 x3950', '3672treutel.astrid@yahoo.com', NULL, NULL, 'fdd0ab2156eabaadd6a537af3b20a198e6b0687ddf617dbc7fc7e676f3e6b405', 'Basic', NULL, '15', '2020-01-10 08:37:09', '2020-01-10 08:37:09', NULL),
(7, '06a69f59-67be-38a5-a0c1-5a336c07b23c', 'Dr. Kasey Kertzmann Jr.', 'female', '1986-10-22', 'Islam', 'West Kenyahaven', '527 Tressa Plains Suite 178\nNorth Michelletown, OK 67811', '+1.954.549.0319', '49932daren30@hotmail.com', NULL, NULL, 'e536d346182ac07580cc8ff53d0fd6a946c72524f4272e5a2d4e980f90938b3c', 'Basic', NULL, '10', '2020-01-10 08:37:09', '2020-01-10 08:37:09', NULL),
(8, 'a165291e-4721-36cd-a0d8-16f689a3c2a8', 'Ms. Kaci O\'Kon', 'male', '1975-09-22', 'Budha', 'North Emmanuel', '968 Irving Underpass Apt. 277\nRusselton, NY 32044-2689', '1-714-202-4322', '4quitzon.jeremy@gmail.com', NULL, NULL, 'e942d6972a007cf6be28cbdfb1c16c00b9174773e9816d3ee9509f4279b91238', 'Premium', NULL, '7', '2020-01-10 08:37:09', '2020-01-10 08:37:09', NULL),
(9, '0088a4a8-0301-395e-8ba8-0e7f9fefdea3', 'Haven Funk', 'female', '1994-09-05', 'Islam', 'Clevestad', '38145 Welch Streets Apt. 140\nRamirotown, NM 97216', '+1-925-600-3641', '196lincoln.doyle@yahoo.com', NULL, NULL, '2955197daf79cf2d96849e821295192fbbcf0b9229c6c0cfff40d45fdb62cc76', 'Premium', NULL, '9', '2020-01-10 08:37:09', '2020-01-10 08:37:09', NULL),
(10, 'ad9e2991-b4c1-3bc8-aa6f-f5b334476e78', 'Hipolito Reichert', 'female', '1975-09-12', 'Kristen', 'Lake Orionshire', '3664 Isabel Plaza\nEast Kaleystad, SD 13226', '+1-926-201-8185', '187oran.hermann@yahoo.com', NULL, NULL, 'dfba714104d656fa399f931a86d1617f25892d2a854cc2afcb44ab4cfcfe70d8', 'Basic', NULL, '7', '2020-01-10 08:37:09', '2020-01-10 08:37:09', NULL),
(11, '2793d7ec-bbb7-3ca7-9eea-1f7b7d535dc9', 'Jaron Bogan', 'male', '1995-06-28', 'Islam', 'Ernserhaven', '1226 Wiza Views Apt. 278\nLake Muhammadfort, CO 52921', '(886) 386-4379 x566', '2728saul14@hotmail.com', NULL, NULL, '82d6af1d5557e02f3052f2f1d5572f4c415038825a6f8c606fa7a4cdd11a5f58', 'Basic', NULL, '17', '2020-01-10 08:37:09', '2020-01-10 08:37:09', NULL),
(12, '5dd647b4-f25b-32f2-8a43-3f17c1a2e231', 'Darwin Auer', 'male', '2010-08-12', 'Islam', 'Lake Brendon', '6510 Annie Ways\nLake Franz, MA 39919-4607', '(749) 850-5581', '35793658mwolff@yahoo.com', NULL, NULL, '24d40d7eda12d94cf365d5efcc10cbc399b2e8014eff9821e9c464229877887c', 'Premium', NULL, '17', '2020-01-10 08:37:09', '2020-01-10 08:37:09', NULL),
(13, 'c54fa8be-c641-395e-a0a7-9277c771c269', 'Raven Runte', 'female', '1993-06-14', 'Islam', 'Marvinview', '161 Rowe Coves\nColbybury, IN 46216-6544', '796-209-9939 x18767', '4ekozey@hotmail.com', NULL, NULL, 'ccfa0a393a9a056e19fc4219366e3464bea9ab4dd542154aa9cf680b24ca1a22', 'Premium', NULL, '3', '2020-01-10 08:37:09', '2020-01-10 08:37:09', NULL),
(14, 'ee1e15f1-1d8b-38d6-bf9b-12d6ca395d3b', 'Mr. Isom Roob II', 'female', '2004-09-03', 'Hindu', 'New Mortimer', '6397 Lockman Ramp Suite 225\nSouth Shawnashire, TN 13432-7732', '(420) 800-5812', '1624gleason.burdette@gmail.com', NULL, NULL, 'b2100c23015191be1ffaff5cc22b016a29bd60986649d74008699bb2edc0c698', 'Premium', NULL, '19', '2020-01-10 08:37:09', '2020-01-10 08:37:09', NULL),
(15, 'cf0f472a-0fe2-3820-be34-19ef4ec309a2', 'Prof. Ahmed Turcotte I', 'female', '1980-06-13', 'Budha', 'Leuschkestad', '9773 Kris Streets Suite 245\nNew Sven, OR 07653-5158', '1-714-578-4384', '4149253bria58@hotmail.com', NULL, NULL, '784a08ce95df936b3239e2df91d2cfe19b2a19cc0eba814c1518b689304e1c38', 'Basic', NULL, '17', '2020-01-10 08:37:09', '2020-01-10 08:37:09', NULL),
(16, 'a612db32-1e71-37ee-93cf-3802db3cf5fc', 'Isaias Ernser', 'female', '2006-01-02', 'Kristen', 'Cristburgh', '47806 Ryan Springs\nMcGlynnbury, GA 41434', '(905) 987-4886 x31437', '7saige.pfannerstill@hotmail.com', NULL, NULL, '2e85a7d5eeac35c3ea94b0b029a62c7bbff7b0981e9d49f8cf8e94f4e75b5c0e', 'Premium', NULL, '8', '2020-01-10 08:37:09', '2020-01-10 08:37:09', NULL),
(17, 'e51f17bf-e416-3911-bce9-cd8e63da0e84', 'Barney Quitzon', 'female', '1989-02-14', 'Islam', 'Mohrview', '7384 Parisian Mission Suite 993\nNorth Tillmanmouth, AK 76975-5634', '(384) 440-6079', '4122kitty19@yahoo.com', NULL, NULL, 'fbca3f10db840603994700927a3ab8b77253d1390a417a966b441bdf98430444', 'Premium', NULL, '6', '2020-01-10 08:37:09', '2020-01-10 08:37:09', NULL),
(18, '37f14e65-3660-3eed-bb2d-df71b4dffda8', 'Tamia Okuneva', 'female', '1977-07-29', 'Budha', 'Lake Alvinaport', '566 Shanahan Track\nNew Ibrahim, NH 99687-4963', '+1-254-256-6828', '76363433ischultz@hotmail.com', NULL, NULL, '4e60fd0b43436e86052405e6265f6514437a658fd7c3503af628b33ce990fe5a', 'Basic', NULL, '14', '2020-01-10 08:37:09', '2020-01-10 08:37:09', NULL),
(19, '03ab9978-3158-3c3f-bfa0-1ff7b16d58e3', 'Brando Maggio', 'male', '2016-06-06', 'Hindu', 'Hansenstad', '82820 Delaney Estates Suite 409\nGottliebfurt, KY 97065', '284.338.9161 x872', '42913401assunta84@yahoo.com', NULL, NULL, 'e88f6dbc5e1e880f562ff6b4dcc904b00cce4de888cef622b6b1480f2d7a5198', 'Basic', NULL, '2', '2020-01-10 08:37:09', '2020-01-10 08:37:09', NULL),
(20, '5fa31dac-8e41-33ef-9f96-3d32f9d312e2', 'Ms. Gisselle Reynolds Sr.', 'male', '1970-05-21', 'Islam', 'Howellbury', '534 Roberts Fords\nSabinahaven, NY 81606', '439.415.3628', '8gordon81@gmail.com', NULL, NULL, '87e308af78e5230dc6af8753ae555f6d62c92d2a4730b12c18a83a96d099ce35', 'Basic', NULL, '6', '2020-01-10 08:37:09', '2020-01-10 08:37:09', NULL),
(21, 'd0814244-c907-3578-87ae-0e14a047c1b8', 'Emely Daugherty', 'female', '1990-01-05', 'Hindu', 'Port Gilbertomouth', '13588 Amira Plains Suite 708\nBrianashire, OH 05053', '1-326-835-2136 x0208', '8180prosacco.albin@gmail.com', NULL, NULL, '3f501179e25190039872c15ddbbf45d38d2ec533534fb7b3b15409b2556957f0', 'Premium', NULL, '20', '2020-01-10 08:37:09', '2020-01-10 08:37:09', NULL),
(22, '11ae18c4-5296-3b54-bbe3-c0ea1e524722', 'Otho Price', 'female', '1970-09-20', 'Hindu', 'Port Emilia', '687 Ward Brooks Apt. 783\nO\'Connershire, MA 72117-9620', '+1.495.947.7379', '219192730gideon.gutmann@hotmail.com', NULL, NULL, '4825966be79816b6b554280a660cfb4552d06f082f6de5bb09be8661bdf72c6f', 'Premium', NULL, '16', '2020-01-10 08:37:09', '2020-01-10 08:37:09', NULL),
(23, 'a93e02cf-a635-3a71-9ff2-c1e69ca46e27', 'Naomi Jacobs', 'male', '2004-04-07', 'Kristen', 'Foresthaven', '46354 Ebert Port Suite 841\nPort Dominiquetown, NE 62762-6014', '1-769-351-8579', '955580deon.welch@gmail.com', NULL, NULL, '8677b7f97f3ee09e3d7212acb3fb5b84b694f5c1325defe8e76bf8c27fc7df8f', 'Basic', NULL, '1', '2020-01-10 08:37:09', '2020-01-10 08:37:09', NULL),
(24, '8a02be00-9b6c-3cb7-83f5-cf85958b53e4', 'Ms. Lera Kovacek', 'female', '1986-11-23', 'Kristen', 'Lake Toney', '26850 Ryan Ferry Suite 972\nNew Jamar, DE 61192-9994', '560-276-9320 x39427', '3360barton.minnie@yahoo.com', NULL, NULL, '462cf2b5bf5f2fd1a9afd12402a8fb5420635cdcf2dda6d7da2b8e8a44da520c', 'Premium', NULL, '9', '2020-01-10 08:37:09', '2020-01-10 08:37:09', NULL),
(25, '04b0631e-ad23-3259-966a-7b4289ed6c3b', 'Dr. Rudolph Ratke DDS', 'male', '2013-09-16', 'Konghucu', 'Marvinton', '162 Kirlin Forks\nLake Ayanachester, NE 92009', '948-844-3248', '522979kling.leon@gmail.com', NULL, NULL, 'e03cea17a2bc8fb92e771aa59e84acbe72aae425c62d9c967dc77913aea0ba6b', 'Basic', NULL, '1', '2020-01-10 08:37:10', '2020-01-10 08:37:10', NULL),
(26, 'ac1d0bc8-0f39-3c71-95d1-c88688b36edb', 'Jaida Howell', 'male', '1985-09-10', 'Budha', 'North Enriquefurt', '3242 Lynch Union\nWilliamsonton, DE 67699-6066', '+12188943467', '9566418afton83@gmail.com', NULL, NULL, '878dadd85748f5d97af8a861595bd3bced5e24a02b1592ac5baa225df1b2dc00', 'Basic', NULL, '1', '2020-01-10 08:37:10', '2020-01-10 08:37:10', NULL),
(27, '1ef585c1-bf6e-36ff-9cfb-b557516dc0f3', 'Miss Alejandra Runolfsdottir IV', 'female', '1999-07-30', 'Hindu', 'Bernhardton', '40010 Casper Vista\nPort Cyrilmouth, MT 33919', '(480) 584-2314', '21predovic.krista@gmail.com', NULL, NULL, '253075c2a585f069c2078f5a0a446c1f2cfd9f76f2cda1236892ad267c8ba02f', 'Basic', NULL, '6', '2020-01-10 08:37:10', '2020-01-10 08:37:10', NULL),
(28, 'cfdfa9c5-b616-39ad-96a8-b1d8ebe95e08', 'Prof. Stephon Tillman V', 'male', '1985-09-05', 'Konghucu', 'South Yasmine', '1785 Jaqueline Circle Suite 717\nPort Lomaville, MA 19313', '1-754-769-2727 x71067', '53mitchell.oscar@hotmail.com', NULL, NULL, '4e6ee7923c040b116375d1532cd1785841ca23ec4031be9bf72b7c17eece90c0', 'Premium', NULL, '2', '2020-01-10 08:37:10', '2020-01-10 08:37:10', NULL),
(29, '2ed00783-a46d-3bd6-87c3-0a72ef4cefa0', 'Mr. Kaleb Flatley MD', 'female', '1999-06-22', 'Islam', 'Lake Lizzietown', '555 Rutherford Islands Apt. 533\nWatsicafort, WA 82248', '(608) 574-8533', '3luettgen.jessy@gmail.com', NULL, NULL, '69ad0172b7cb57030c726ffafec5f0ea389fd006f0530d9cf575c55a7a8779bb', 'Premium', NULL, '1', '2020-01-10 08:37:10', '2020-01-10 08:37:10', NULL),
(30, '9c8be915-dc82-335a-8544-b874b0bb1b54', 'Sheldon Rau', 'male', '1999-02-15', 'Hindu', 'Brandonfort', '87433 Borer Ford Suite 598\nPort Darwin, CA 48426', '327-819-9468 x83242', '482reginald62@gmail.com', NULL, NULL, '8450890004ed78bf203f479ec16191d7bc7be670ab14954dbad631451f769105', 'Basic', NULL, '10', '2020-01-10 08:37:10', '2020-01-10 08:37:10', NULL),
(31, '106b18cb-0acb-3ebd-af35-36eb3a1d4b70', 'Gertrude Kovacek', 'male', '1979-10-17', 'Islam', 'Lake Eddie', '86884 Dena Run Apt. 798\nLake Angelita, GA 72119-1901', '602-373-7482 x766', '169trodriguez@gmail.com', NULL, NULL, '951fd934aee38303d4100168560454fcd7956810a184b9ce5ef999659fc39481', 'Basic', NULL, '3', '2020-01-10 08:37:10', '2020-01-10 08:37:10', NULL),
(32, '74bde798-eaa1-3871-8af4-a9977cc5b863', 'Leonel Welch', 'female', '1998-08-05', 'Hindu', 'New Carole', '9559 Gusikowski Path Apt. 898\nWest Lupeport, MN 26612', '(486) 936-8843 x6360', '57martine.lindgren@yahoo.com', NULL, NULL, '91e391358e233c1dee4bac8fc801b43e6cbaf72b88546449428202c0f1efe56f', 'Basic', NULL, '13', '2020-01-10 08:37:10', '2020-01-10 08:37:10', NULL),
(33, 'f51be753-f068-33d8-b018-a40c863c0d86', 'Gina Schoen', 'male', '1980-08-19', 'Hindu', 'New Dustyhaven', '736 Fadel Drive\nStrackeborough, AK 53669-6609', '585.758.3327 x989', '7schmidt.else@hotmail.com', NULL, NULL, '4f98246bb0b14f0ac6b44e380c9d18aacfc529cce456f1d75da780352548595b', 'Basic', NULL, '5', '2020-01-10 08:37:10', '2020-01-10 08:37:10', NULL),
(34, '73f51a54-0b75-3b86-a77e-858436470bee', 'Mrs. Tessie Sipes DDS', 'female', '2005-08-05', 'Islam', 'West Don', '1531 Cronin Valley Apt. 546\nFlaviostad, CA 01780', '(894) 456-6212', '1608konopelski.trever@hotmail.com', NULL, NULL, 'ecdd073175772af3cf56c2379e5f6f9ea9c523c2f4c3544e6adcf7cda0513979', 'Basic', NULL, '10', '2020-01-10 08:37:10', '2020-01-10 08:37:10', NULL),
(35, '4f28dc14-b340-313b-adb6-e453ccaed1cf', 'Saul Borer', 'male', '1983-01-09', 'Islam', 'East Floridamouth', '60323 Hartmann Mission\nNiashire, AZ 96740-5517', '518.410.3438 x8747', '9212cjohns@gmail.com', NULL, NULL, 'b66f83128efe61129de56373458fa5df17b8a55750b773f590b2984b1e492d34', 'Premium', NULL, '9', '2020-01-10 08:37:10', '2020-01-10 08:37:10', NULL),
(36, 'c9a765d4-5d8b-3237-9411-e7d51115ceca', 'Ethyl Quitzon', 'female', '1985-07-22', 'Islam', 'New Evelyn', '454 Gleichner Fall\nSouth Heber, WY 79177-2691', '608-794-7212 x76209', '7301186fraynor@yahoo.com', NULL, NULL, '154fe72a24e3997c626c9002487bd1eca62a70c57c2e45ca9fd30535c4b9aebc', 'Premium', NULL, '19', '2020-01-10 08:37:10', '2020-01-10 08:37:10', NULL),
(37, 'adbd7281-e71f-330e-8dce-6b7cb2edc9ca', 'Kadin Jerde', 'male', '1971-03-21', 'Kristen', 'East Kayleefort', '59005 Swift Well Apt. 148\nHoracemouth, TX 12258-4240', '910.852.8474', '92833055kbuckridge@yahoo.com', NULL, NULL, 'b6dbd4fbb117d4d9aa53385a471642464010b9e2eb756d3b5e7568ba07d03404', 'Basic', NULL, '5', '2020-01-10 08:37:10', '2020-01-10 08:37:10', NULL),
(38, '90d84841-5ae1-347c-865c-4a7bb32cd0ee', 'Agustin Abbott DVM', 'female', '1987-05-27', 'Konghucu', 'Lake Rebeka', '8162 Mueller Streets\nEast Freddy, LA 72840', '571-702-6304', '282186186loyal.kutch@gmail.com', NULL, NULL, '736ac3e5b567da7bddd1ad31e7a69ad8d2ec0c30148c0d45f6aa989ecf4e2962', 'Basic', NULL, '7', '2020-01-10 08:37:10', '2020-01-10 08:37:10', NULL),
(39, '57e6860b-c3f2-3453-b70b-4ef6e5d8c995', 'Walton Gleason', 'female', '1995-09-19', 'Kristen', 'Port Isabell', '129 Krystel Isle\nPort Dakotabury, ID 40310-4703', '+1 (952) 707-4379', '9576brooks63@yahoo.com', NULL, NULL, '58fb3bf74f2dd74dfb7699aea6f2539423660a05e5e5222fa8e6b7e369b4229f', 'Premium', NULL, '5', '2020-01-10 08:37:10', '2020-01-10 08:37:10', NULL),
(40, '70467d03-f6d6-3afe-8bd6-732c40841574', 'Prof. Ilene Pagac Sr.', 'female', '1988-02-24', 'Budha', 'Amelieside', '9966 Jast Port Suite 706\nReeseview, AK 90301-6349', '(964) 929-0998 x104', '61tondricka@yahoo.com', NULL, NULL, 'dccf1b1af2779615456fbb5d3486d701de949fe7664a9245819372573a12deef', 'Premium', NULL, '20', '2020-01-10 08:37:10', '2020-01-10 08:37:10', NULL),
(41, 'f4bd2b5e-3f11-3950-be12-967496f5fb21', 'Marcos Parisian', 'female', '1985-08-22', 'Budha', 'North Justineborough', '729 Heber Terrace Suite 877\nLylashire, WV 43669-3077', '(529) 531-4296 x3614', '680theodora43@hotmail.com', NULL, NULL, '10f80c52a7629c24f8bdfd3ccad9c60df27ab6ece8b7af11a1c884b79775d9fa', 'Premium', NULL, '15', '2020-01-10 08:37:10', '2020-01-10 08:37:10', NULL),
(42, 'c6e1decd-e20d-34eb-ac91-40e668404fba', 'Graham Parisian', 'female', '1973-07-16', 'Hindu', 'South Carmel', '860 Hodkiewicz Row\nSchmidtborough, ME 92241', '362-704-4467 x2585', '78804hirthe.hubert@gmail.com', NULL, NULL, '005c82ab8efbc6d907da6e006610bdfe42f72d85ef0b3dc60face1d0474fd1bb', 'Basic', NULL, '2', '2020-01-10 08:37:10', '2020-01-10 08:37:10', NULL),
(43, 'd4659457-b70e-326d-91e1-7b31e02072dd', 'Astrid Kovacek', 'male', '2014-06-14', 'Kristen', 'Lake Lorenhaven', '97878 Ruth Manors Suite 132\nKrisbury, GA 04240', '554.788.1445 x5991', '2562shawna.schaefer@hotmail.com', NULL, NULL, 'affe2115ddf1718b5c491296ca4b1b61021f54395314bf4f4940734734ac12e7', 'Premium', NULL, '15', '2020-01-10 08:37:10', '2020-01-10 08:37:10', NULL),
(44, '20d89aff-16e6-3fc5-be34-eb6a9523aad5', 'Dr. Bernita Lindgren Sr.', 'male', '1989-11-02', 'Konghucu', 'Prohaskaburgh', '27496 Joanie Drive\nNew Pierceland, TX 71094', '1-912-806-2234', '4386ronny.ritchie@gmail.com', NULL, NULL, '76a8430b4f45f1c8792c6599b8df03746a7bbd1af35aa4d474396406d9375145', 'Premium', NULL, '4', '2020-01-10 08:37:10', '2020-01-10 08:37:10', NULL),
(45, 'c60cfb3c-3cff-39b6-bde4-aa0d6bb2285b', 'Ms. Lavonne McClure', 'male', '1999-12-03', 'Hindu', 'Feliciaville', '210 Welch Turnpike\nSouth Maverick, MD 15503-3142', '+1.573.208.5041', '9902377ashton66@hotmail.com', NULL, NULL, '4450dd82e63fb7d66174767062c80aa9e7871060f81308b364a3c0a35e75ee38', 'Basic', NULL, '16', '2020-01-10 08:37:10', '2020-01-10 08:37:10', NULL),
(46, 'c0757cc6-2c1a-3fac-8766-0b378e443b98', 'Prof. Ezra Eichmann', 'male', '1970-07-25', 'Konghucu', 'Lake Kristian', '34082 Florian Mews\nPort Darrion, OR 46873', '1-597-993-2692 x5244', '51975brown.marlene@hotmail.com', NULL, NULL, '63b5a22bf40066799e2ad8b15a58d22cf516f80c628020f5a7861ac1f5dff676', 'Basic', NULL, '11', '2020-01-10 08:37:11', '2020-01-10 08:37:11', NULL),
(47, 'e4f0b8fa-eb23-3538-a937-de0fd464de05', 'Emilio Keebler', 'male', '1977-08-28', 'Budha', 'Towneton', '567 Jeff Port Apt. 029\nPort Melisa, PA 22680', '(916) 385-6387', '38ambrose01@yahoo.com', NULL, NULL, 'c0f8fc24ce005502f2cab5ca77f1702d25da31950d6780eefa9d93d7dd7c8c9b', 'Premium', NULL, '4', '2020-01-10 08:37:11', '2020-01-10 08:37:11', NULL),
(48, 'ebfcc6e3-174b-38f7-b2d2-ea87db94d126', 'Lacey Weber III', 'male', '1977-10-18', 'Konghucu', 'Joanieside', '311 Frederique Streets\nNew Garryhaven, MT 27900-9724', '1-884-827-7825 x6041', '4delilah82@yahoo.com', NULL, NULL, '8395ed9219d3144af3ba87093e9a1c20919121850034bdeada53b1ba7d04adbc', 'Basic', NULL, '17', '2020-01-10 08:37:11', '2020-01-10 08:37:11', NULL),
(49, 'f0614dc7-be31-370a-8bce-a58bb753c661', 'Prof. Maudie West Sr.', 'female', '1984-12-04', 'Hindu', 'Brakusmouth', '50819 Wilderman Rapids\nEast Prudence, NE 32660-6822', '+1 (652) 330-3379', '3843136pearlie75@yahoo.com', NULL, NULL, 'fc6394059014890bea3c79ab0f6fe30e1c1933c7285703e8f9b35890d2c8af38', 'Premium', NULL, '20', '2020-01-10 08:37:11', '2020-01-10 08:37:11', NULL),
(50, 'efecefb5-0a12-33cf-ad63-4d9f023fde13', 'General Rippin', 'male', '2008-03-07', 'Budha', 'Kulasport', '76135 Hamill Stream Apt. 366\nWest Kianburgh, LA 87644', '1-506-543-1143', '57herman.marcelo@hotmail.com', NULL, NULL, 'bb1be2b3b2b0804e56ab59f4848d359031ca63e3692edf083cdebd20c7e0b585', 'Premium', NULL, '18', '2020-01-10 08:37:11', '2020-01-10 08:37:11', NULL),
(51, 'cdd6ed69-3997-350a-9ebd-63fd0e706c2c', 'Mohammad Schuppe', 'male', '1995-03-09', 'Konghucu', 'Magnoliaberg', '3195 Greenholt Green\nEast Chanelleview, ID 96814-5535', '487.740.0555 x7032', '81462298gutkowski.eugene@hotmail.com', NULL, NULL, '530c66044e22d4a49af7097c4433438a1b7639e5e60f87b3ef520bed1f98ab25', 'Premium', NULL, '15', '2020-01-10 08:37:11', '2020-01-10 08:37:11', NULL),
(52, '314da548-25ba-3052-bd0e-15cd997aaa92', 'Jamarcus Cole', 'male', '2013-07-17', 'Budha', 'Adrielburgh', '646 Huels Club\nPort Haskell, ND 85039-3235', '441-410-3919 x810', '2526justen.cronin@hotmail.com', NULL, NULL, 'c95275bcdc226a6402e3e506e9505e321fcafec25d7c8e1d510947c3e95caf5f', 'Premium', NULL, '18', '2020-01-10 08:37:11', '2020-01-10 08:37:11', NULL),
(53, 'f182efe1-458f-3799-8440-09955dce5f0c', 'Dora Wintheiser', 'female', '1979-12-11', 'Hindu', 'New Vanceberg', '27844 Logan Cliffs\nNew Emmanuelleland, NE 35088', '909-434-0536 x4679', '223099treutel.francis@gmail.com', NULL, NULL, 'c5449a3619c65db0bda93b9c0168ea301c2abeece84811045036f4bcd1edba19', 'Premium', NULL, '9', '2020-01-10 08:37:11', '2020-01-10 08:37:11', NULL),
(54, '078d284b-7b88-3067-9b07-11f0fd81a0ac', 'Adriel Mueller', 'female', '1987-07-12', 'Hindu', 'North Cotyberg', '434 Maryjane Course\nVickiehaven, NH 53386-6075', '867.319.3904 x8612', '1648510coby28@gmail.com', NULL, NULL, '5b51f6af214b9a0662b6744538ab66d94a8ca11b2fd80a67642772d6564d4776', 'Basic', NULL, '8', '2020-01-10 08:37:11', '2020-01-10 08:37:11', NULL),
(55, 'bb131f60-8c5c-39f9-9d6d-b5ca6732d84e', 'Geovanni Runte', 'female', '1985-07-03', 'Budha', 'North Layne', '193 Christiana Corner Suite 666\nSouth Pollyshire, OR 49637', '412.605.9382 x2287', '674394brycen65@hotmail.com', NULL, NULL, '0a60f4a95f6841006b684214c869c0c7a566be584fe4432327c588f026ef7fe0', 'Premium', NULL, '5', '2020-01-10 08:37:11', '2020-01-10 08:37:11', NULL),
(56, '21a95cef-bd5d-3439-bc7d-b45a9a322d70', 'Jarrod Olson', 'male', '2005-03-21', 'Islam', 'Greenfeldermouth', '715 Isabel Skyway\nNorth Margrethaven, IA 43997', '790-621-9656', '4uquitzon@yahoo.com', NULL, NULL, '14f074129956f9e8740f71ff10a9814988f881e6084486cd8af37aa839f6d15e', 'Premium', NULL, '19', '2020-01-10 08:37:11', '2020-01-10 08:37:11', NULL),
(57, 'd17ac0d8-d921-37ce-937c-f0d531d53a12', 'Deontae Zieme', 'male', '2015-01-31', 'Konghucu', 'Walterton', '3447 Natalia Street\nNorth Marian, WY 59054', '+1 (728) 504-4502', '350469955ngaylord@gmail.com', NULL, NULL, '48f4869f9f0a9fd37d1bd10dfd8b6588fb69e1e2df1bf21ef5148ba4f24be4e0', 'Basic', NULL, '8', '2020-01-10 08:37:11', '2020-01-10 08:37:11', NULL),
(58, 'fc00637e-6a08-3fee-8c92-e0999045fbe8', 'Prof. Watson Weissnat', 'female', '1973-06-11', 'Konghucu', 'North London', '7013 Aisha Junction\nEast Luciano, DE 94685', '442.503.3481', '37013517lurline22@hotmail.com', NULL, NULL, 'faf732e6616b4c1a914560127fe7ac0252d096d89c30a4c295f1cb4bb2c3663e', 'Basic', NULL, '18', '2020-01-10 08:37:11', '2020-01-10 08:37:11', NULL),
(59, '49a5e7c7-a067-323a-aadb-2e7f1c35e3c7', 'Viola White', 'female', '1977-04-30', 'Islam', 'Crawfordhaven', '2247 Goyette Garden\nSouth Marquise, NV 13451', '1-238-282-2474', '10wilfredo.kris@yahoo.com', NULL, NULL, 'ac1a0b2d27d305ea68d14ccc5c65c0178efb7a4d893f927e23a7d8aa58ba8009', 'Premium', NULL, '10', '2020-01-10 08:37:11', '2020-01-10 08:37:11', NULL),
(60, '63c00170-de66-3359-9138-fca93e5ac535', 'Dr. Sigurd Gutmann', 'female', '1999-02-21', 'Kristen', 'Lake Bruce', '8061 Labadie Cliff\nRosemaryton, ME 57997-8359', '857.526.6232 x899', '172804304carey22@hotmail.com', NULL, NULL, 'ad81d64950ed9280f1b9b19a1e9c9efcfcb6657615471f19ed17e05dd1dcf789', 'Basic', NULL, '11', '2020-01-10 08:37:11', '2020-01-10 08:37:11', NULL),
(61, 'b13504dc-de11-36a3-b704-689a2e9e0824', 'D\'angelo Satterfield', 'female', '1986-02-15', 'Budha', 'Kuhlmanmouth', '599 Bridget Plains Apt. 083\nWest Freddiefurt, ME 16931-5944', '1-461-856-0472 x0673', '6jgerlach@hotmail.com', NULL, NULL, '6e2b1124924b09db98e634e580c47bb40593b2c41840ba7172e28ca6ad1b38d0', 'Basic', NULL, '11', '2020-01-10 08:37:11', '2020-01-10 08:37:11', NULL),
(62, '0dbbb33c-e7a8-34a0-8652-13012063e0f0', 'Veronica Larson', 'female', '2016-01-19', 'Islam', 'Marlonshire', '3294 Jerde Shores Suite 588\nLamberttown, MA 51748-9410', '(553) 758-3884', '5bobbie95@hotmail.com', NULL, NULL, '9a648d5e9f6777d8f3d6478163b62599e599abb2d9da0aa4b6663c905cb99a91', 'Premium', NULL, '16', '2020-01-10 08:37:12', '2020-01-10 08:37:12', NULL),
(63, '4ac1f9a5-2e5f-32ea-abf9-7d819f9c8581', 'Kianna Mosciski', 'male', '2007-05-20', 'Konghucu', 'Lake Cortezland', '868 Dorothy Junction\nNew Dawnport, IA 20269-0731', '(689) 631-9341', '724herman.alta@gmail.com', NULL, NULL, '38f93f81a02877c487190afd59ed68a93a012dcb3a5b4459a418dce8470479c6', 'Premium', NULL, '11', '2020-01-10 08:37:12', '2020-01-10 08:37:12', NULL),
(64, 'de6ce87f-5d00-374a-ae5a-ae1573ca7ca2', 'Mr. Augustus Bode', 'male', '2016-02-23', 'Konghucu', 'Hodkiewiczland', '76196 Adams Loaf\nLake Jayden, IL 47659-7592', '538.909.7474', '46101raphael.kerluke@yahoo.com', NULL, NULL, '3b6d30352503f19bb4a237594fce13588ee5cc088cfdf12ae29e44dbea9b65c2', 'Premium', NULL, '12', '2020-01-10 08:37:12', '2020-01-10 08:37:12', NULL),
(65, '5fd7baa2-4772-329b-b31f-1aa5e1167c2b', 'Alfredo Greenholt', 'female', '2009-01-24', 'Islam', 'New Agustinaberg', '48898 Bayer Harbor\nLake Rosanna, NV 13754-2661', '1-885-393-3972 x99818', '646rogahn.bernardo@gmail.com', NULL, NULL, '706cbd40a5ea68793b822d16b0a4eb7ed14376c367094a5d76fc29d3100c5526', 'Premium', NULL, '2', '2020-01-10 08:37:12', '2020-01-10 08:37:12', NULL),
(66, '4fb0e648-936f-307e-9b8c-72223021df07', 'Alessia Feest', 'male', '1981-11-26', 'Islam', 'Tomasaville', '2736 Ryan Shoal\nPort Lisette, NE 01271-0677', '1-645-729-2739 x6374', '85025592ozella.stoltenberg@gmail.com', NULL, NULL, '4686b7fba48863f4af96b9574ed2d63d2ba6315c68e562f5772aca590f4bdee0', 'Basic', NULL, '4', '2020-01-10 08:37:12', '2020-01-10 08:37:12', NULL),
(67, 'e78ea661-94a0-3bcc-b407-41ba94ba443a', 'Laron Boyle', 'male', '2013-03-27', 'Hindu', 'Haleyview', '400 Sabryna Mews Apt. 351\nWest Xander, WY 38719-4586', '818.992.0525', '72293brad87@hotmail.com', NULL, NULL, '4fa750b03b539563dfb765fd2f448d9532a084b4f120b42c5e6191bf258b5e9c', 'Premium', NULL, '16', '2020-01-10 08:37:12', '2020-01-10 08:37:12', NULL),
(68, '89146e98-4581-3e34-8eba-5208517dbc34', 'Tad Morar', 'male', '1985-07-08', 'Konghucu', 'Gillianville', '1751 Eveline Light Suite 983\nWest Murphy, FL 82910', '397-948-3981 x06877', '765ireichert@hotmail.com', NULL, NULL, '7ab70729d7056f378b9c7f61cbed33abba8a2f2473e7ae622a78de8210e0991c', 'Premium', NULL, '20', '2020-01-10 08:37:12', '2020-01-10 08:37:12', NULL),
(69, '7cc9075a-51b0-3792-bc0b-957cb87db4f2', 'Susana Waelchi', 'male', '2007-08-03', 'Kristen', 'South Adaline', '6112 Amiya Stravenue\nMarcelomouth, NE 47753-7516', '+1.468.536.6085', '58garett83@hotmail.com', NULL, NULL, '9fee01cdc2ad62aa06b0d868f81f22f11fb04e1de8130fc70ff219774569bab0', 'Premium', NULL, '20', '2020-01-10 08:37:12', '2020-01-10 08:37:12', NULL),
(70, 'febed150-58d1-3d2e-9a69-6c2213130511', 'Kenneth Dooley', 'male', '1982-04-16', 'Hindu', 'South Emilio', '39605 Dereck Bypass\nEast Kathryn, AZ 45056', '1-275-408-0620 x313', '4omari.cummings@yahoo.com', NULL, NULL, '698d28c81219d090b6ec7241732918b2198a56c99c4a1ecde4473e0bda47aa36', 'Basic', NULL, '12', '2020-01-10 08:37:12', '2020-01-10 08:37:12', NULL),
(71, '2474bebf-2529-33cc-926a-377b42ff3e3b', 'Libbie Hegmann', 'male', '1974-12-15', 'Hindu', 'Hillaryburgh', '816 Abe Hollow Suite 718\nWest Enola, KS 63827-8848', '756.434.3463', '6gcorkery@gmail.com', NULL, NULL, '4014585b26cccdfa7550e5622136b1242a68b4a2ebd892ab815eba3f3899657d', 'Premium', NULL, '18', '2020-01-10 08:37:12', '2020-01-10 08:37:12', NULL),
(72, 'd0944ace-7d34-30e9-a3a7-46c15c413997', 'Prof. Rasheed Bailey', 'male', '2002-07-29', 'Konghucu', 'Kshlerinfort', '592 Eunice Lights Apt. 415\nLucienneshire, NJ 12669', '+1.485.736.4310', '25952hkovacek@gmail.com', NULL, NULL, 'fad3025f25bdb9b7ae4cf584ba9f57fac831c6e33e5a3cbddf2b8b2fbae54a77', 'Basic', NULL, '4', '2020-01-10 08:37:12', '2020-01-10 08:37:12', NULL),
(73, '4cff332f-5b0a-35dc-ac6c-ea634da30994', 'Karen Williamson III', 'male', '1995-12-09', 'Konghucu', 'Lake Lizzie', '6643 Hassan Drive Suite 410\nWest Abigayle, AK 81878', '545-743-9275', '8885robert40@yahoo.com', NULL, NULL, 'e5e42bb37483ce5f811f1bc7efb7640080039a1e8d620096bcac4be3f0e39dab', 'Premium', NULL, '1', '2020-01-10 08:37:12', '2020-01-10 08:37:12', NULL),
(74, 'fb4e1904-a258-3761-8b56-b70e95e39f1c', 'Mr. Reilly Ritchie PhD', 'male', '1983-08-04', 'Islam', 'Aracelymouth', '325 Halvorson Parks Apt. 775\nAllenville, MI 43768', '+1.845.366.4907', '648578607juanita25@gmail.com', NULL, NULL, '8254a39a116a394d7a52ff8260e4eefcb176bfb3b786203ce831d6a41cd116b3', 'Premium', NULL, '5', '2020-01-10 08:37:12', '2020-01-10 08:37:12', NULL),
(75, '6aebe5f3-08d5-3470-a933-c03c49016034', 'Norene Robel', 'male', '1976-05-17', 'Kristen', 'South Norbert', '638 Uriel Harbor Apt. 895\nPort Nestorberg, DE 14811', '+1-624-727-8206', '819168omarquardt@hotmail.com', NULL, NULL, '6a268c7f21e1ab27de9725c7420847a5ed477c5feb9cf5c227ffc1ab85a2c787', 'Premium', NULL, '17', '2020-01-10 08:37:12', '2020-01-10 08:37:12', NULL),
(76, '53c6cc07-9464-3b21-8759-45f78883803c', 'Miss Joy Jacobson', 'female', '1992-01-20', 'Budha', 'South Marisolhaven', '122 Auer Avenue\nJastshire, GA 25414-5287', '371.675.0633', '24751241swillms@yahoo.com', NULL, NULL, 'a0f18514717c84ad19b6cfd9f5c287d9051b62489f02faac228d821cbf03eb1a', 'Basic', NULL, '9', '2020-01-10 08:37:12', '2020-01-10 08:37:12', NULL),
(77, '73966ae5-1909-35d2-b06c-4dcc5ce06e15', 'Raphael Conn', 'female', '2014-11-13', 'Konghucu', 'New Antonetta', '1377 Joana Road\nWest Roderickmouth, WA 30732-0380', '+1.345.961.1573', '199218hagenes.merle@hotmail.com', NULL, NULL, '00ac093bf9b1dadd57098c9756028025d55c41ca90f4196d42e6b35daa2d8baf', 'Premium', NULL, '1', '2020-01-10 08:37:12', '2020-01-10 08:37:12', NULL),
(78, 'ff3e001d-3fd3-3989-ae97-117ce9bfa012', 'Turner Purdy', 'female', '1994-01-14', 'Hindu', 'West Aracelimouth', '27096 Francis Bypass Suite 765\nRennerville, AL 58422-8885', '1-236-602-4981 x336', '71832449keeling.tamara@gmail.com', NULL, NULL, '979e0096face445d0aabe26b5c365849587602723751ead88e733c049b4249fd', 'Basic', NULL, '19', '2020-01-10 08:37:12', '2020-01-10 08:37:12', NULL),
(79, 'bb3fe2c6-6a10-3c84-8847-1458035c831b', 'Mr. Aiden Quigley MD', 'male', '1998-11-21', 'Hindu', 'Carmenport', '591 Reichel Loop\nSouth Henrietteton, TN 67094-7536', '1-251-431-9203', '68esawayn@yahoo.com', NULL, NULL, '4cb041a9713f1cf9f42ac81350fa9cd6857adecb357f3a53427478d2e84fc387', 'Premium', NULL, '18', '2020-01-10 08:37:12', '2020-01-10 08:37:12', NULL),
(80, 'ea74078b-1d51-3cea-bcd5-84bbc13eedd3', 'Sammie Sporer', 'female', '1973-05-27', 'Budha', 'Esthershire', '56039 Smitham Circle Suite 875\nEast Anissahaven, MA 80735', '(470) 223-4672', '122079kevin.armstrong@hotmail.com', NULL, NULL, 'c02444085497fb5e6e2a061455a557fd20fda8de0c907625ed1e6f25921ed68a', 'Basic', NULL, '1', '2020-01-10 08:37:12', '2020-01-10 08:37:12', NULL),
(81, '26c20e8e-6bcc-3fb1-8ff7-253cb66a3735', 'Matteo Labadie', 'female', '1979-03-13', 'Islam', 'Paytontown', '89445 Yost Parkway Apt. 721\nMoiseschester, IN 42558-8486', '1-478-984-5489', '5381158zbeahan@gmail.com', NULL, NULL, 'bc9a2b1ed8f959c6dcebca0d039e092c13ce05520303a9122384d08a8432b894', 'Basic', NULL, '9', '2020-01-10 08:37:12', '2020-01-10 08:37:12', NULL),
(82, '1dd95e10-7e96-32aa-93bc-708a11888471', 'Adrienne Larkin', 'female', '1995-08-12', 'Budha', 'South Bridie', '249 Beatty Keys\nLoymouth, IL 72096-8215', '652.837.3140 x981', '454873xcummings@hotmail.com', NULL, NULL, '1f80698657e6fa5ae5ea4f2799b2644fc30c285820d579135992b207d0127b9b', 'Premium', NULL, '11', '2020-01-10 08:37:12', '2020-01-10 08:37:12', NULL),
(83, 'cdd2fdfc-418c-3a9d-9123-1b0557c40947', 'Dr. Alia Kemmer PhD', 'female', '1990-10-09', 'Budha', 'New Edwinamouth', '1578 Louvenia Prairie\nBentonshire, WA 64448', '(480) 286-3090 x746', '3lois.beatty@gmail.com', NULL, NULL, 'a933452e20253924c10b591dbc6e5de450b3007345e5d6831814cf2f3c01ad21', 'Premium', NULL, '4', '2020-01-10 08:37:12', '2020-01-10 08:37:12', NULL),
(84, '7c17df6b-fc92-35c0-bfd8-fe87dd28f233', 'Alexzander Sanford DDS', 'female', '1986-06-15', 'Hindu', 'Schadenmouth', '487 Reggie Plains\nNaderchester, AL 35289', '327-755-5518 x95379', '8680800cummings.donavon@hotmail.com', NULL, NULL, 'db072273610ad661005ba6d4e7432edf46c6b26ee4d6b2451abfc71119b5ab84', 'Premium', NULL, '1', '2020-01-10 08:37:13', '2020-01-10 08:37:13', NULL),
(85, '95a6ecb0-ecdc-3125-a0f0-64952483978b', 'Dr. Hipolito Armstrong Jr.', 'female', '2007-08-22', 'Hindu', 'Keeblerville', '5819 Brekke Grove Apt. 256\nNew Enafort, WV 36403', '+1 (424) 870-8447', '44012787wkoepp@gmail.com', NULL, NULL, '7d677e98cb59d1424cadb4e57ae6a4f26f41cb8484576c26012c0bb7c547f871', 'Premium', NULL, '14', '2020-01-10 08:37:13', '2020-01-10 08:37:13', NULL),
(86, '3cdefe40-1abc-3481-9e8a-5cab898c1052', 'Mr. Liam Kuhlman DDS', 'male', '1971-11-23', 'Islam', 'West Gretchen', '25419 Russel Underpass\nNew Cletus, HI 61971-2927', '(931) 951-2429 x0499', '961826478bmuller@hotmail.com', NULL, NULL, 'bf934d6c8d5673a35a258028102925873e8df43b65c5b0ae51821b9f1ce05ef7', 'Premium', NULL, '18', '2020-01-10 08:37:13', '2020-01-10 08:37:13', NULL),
(87, 'ead8f6f9-b0a0-3fea-9623-6fc552135326', 'Jarod Lebsack', 'female', '1993-01-26', 'Budha', 'Donnellytown', '9576 Lemke Forks Suite 089\nErdmanfurt, HI 44962-8939', '712-215-1641', '567823066gblanda@gmail.com', NULL, NULL, '1b6bc12fbc8720029f607c435283bf68cd1ad1074159def1b8214f7a59bf3920', 'Basic', NULL, '18', '2020-01-10 08:37:13', '2020-01-10 08:37:13', NULL),
(88, 'd200c7bb-0a08-367d-9729-79ec93db6567', 'Trystan Boyer', 'female', '1988-03-10', 'Hindu', 'Abeside', '74634 Velma Union\nPort Eulah, TN 19289', '778-934-4698', '6324kkub@gmail.com', NULL, NULL, '806b6c551f6a9eb848ba42cc74285f3a9fb11e8431b1a8fef27cce4fd3792ea1', 'Basic', NULL, '18', '2020-01-10 08:37:13', '2020-01-10 08:37:13', NULL),
(89, 'c23626c5-7ee4-3407-b19a-e285b0c51a9f', 'Prof. Jordane Schinner I', 'male', '1973-04-01', 'Islam', 'Dorotheafort', '200 Neva Drives Suite 283\nCoralieland, MO 05280-0320', '221-922-4724 x6369', '56halvorson.reggie@hotmail.com', NULL, NULL, '72e0e7e47acf6f69900074f4e461c27c17e45aa02d701935717637e1a18a07ea', 'Premium', NULL, '4', '2020-01-10 08:37:13', '2020-01-10 08:37:13', NULL),
(90, 'cdf2dc81-0cea-36cb-851d-93950a9b8399', 'Raphael Dach', 'female', '1975-09-03', 'Islam', 'West Keshawnton', '51037 Lockman Drives Apt. 937\nNew Arelyburgh, CA 05388', '384.262.4511', '6rschmitt@gmail.com', NULL, NULL, '8a512934996afeedb98fa5779041b3d279ad0aa8f00b43ee3ccb1a8ee15e9328', 'Premium', NULL, '10', '2020-01-10 08:37:13', '2020-01-10 08:37:13', NULL),
(91, '9a64c22b-74ea-3f60-a8d8-303450dcb33d', 'Max Halvorson', 'female', '1999-06-11', 'Hindu', 'Giachester', '114 Reese Wells Suite 358\nOberbrunnershire, LA 65878-3657', '+1-293-528-6808', '28kohler.larue@yahoo.com', NULL, NULL, 'ba5c5503f44634dd68f2ee7f9e4984eff28cfe674266642a33a774f440a6d39b', 'Basic', NULL, '15', '2020-01-10 08:37:13', '2020-01-10 08:37:13', NULL),
(92, 'a822f500-05e8-32fb-ab0f-f113d727392a', 'Johnnie Herzog', 'female', '1998-04-01', 'Hindu', 'Maximilianmouth', '88127 Mason Key\nPort Letatown, MN 68520', '468-513-3738 x20277', '775twiza@yahoo.com', NULL, NULL, 'd87cb8b810cf4b5c410ad1f097d925231d6f285768daf06a1ec2a531781ce64b', 'Basic', NULL, '5', '2020-01-10 08:37:13', '2020-01-10 08:37:13', NULL),
(93, 'c2e28548-0e97-3cc2-a694-f7fb560af22a', 'Dayana Dicki', 'female', '1973-05-29', 'Hindu', 'East Emmettfort', '9886 Bill Courts\nGersonport, KY 37416-1096', '1-730-616-4250', '36uhirthe@yahoo.com', NULL, NULL, '27b8ce713aa63115ce3d9760ff388c9eadfcdede4cc4916d8bd2fe5e37b17e59', 'Basic', NULL, '6', '2020-01-10 08:37:13', '2020-01-10 08:37:13', NULL),
(94, '2cb805e5-7563-3e08-81c9-5a792fba8576', 'Angela Bode', 'female', '2015-12-16', 'Konghucu', 'North Caroleland', '12211 Webster Field Suite 197\nLoganville, SC 92348', '727-544-3242 x702', '533xjohnson@hotmail.com', NULL, NULL, 'e7e2af6acf9b60e9f75b1c87b2dcc72c08f50e56cdfcb34c2cf667b8bc740e57', 'Premium', NULL, '10', '2020-01-10 08:37:13', '2020-01-10 08:37:13', NULL),
(95, 'a62a99d2-7194-3b52-b14a-bbb928422897', 'Octavia Gottlieb', 'male', '2008-02-01', 'Konghucu', 'Zulaufchester', '924 Cara Divide Suite 615\nNorth Joel, AK 31227-7965', '316.532.3986 x46942', '98jorge62@hotmail.com', NULL, NULL, 'dc97035556c7ae50fbbf2cd24fb7cd25a2141549dde929e7f09b81f4594a27dd', 'Premium', NULL, '7', '2020-01-10 08:37:13', '2020-01-10 08:37:13', NULL),
(96, '43f88ab6-400e-34c5-a703-4124383ddd21', 'Prof. Audreanne Quigley I', 'male', '2014-02-24', 'Hindu', 'New Abigayle', '33336 Wendell Curve Suite 878\nMckaylaside, CA 89714-2939', '1-932-548-7685 x9604', '795471592jensen.weimann@yahoo.com', NULL, NULL, '7c2c47fe85b4c59fcdd88d3aac59421168f19f11ef39e2c29600e13d73635d79', 'Basic', NULL, '19', '2020-01-10 08:37:13', '2020-01-10 08:37:13', NULL),
(97, '7ecd92ae-af3a-3420-a4c4-c61a0147cdd7', 'Zakary Nicolas II', 'female', '2005-08-03', 'Konghucu', 'Port Justicechester', '1648 Crooks Road\nSanfordtown, TN 34996', '1-948-692-6886', '4714808garland.braun@yahoo.com', NULL, NULL, '00d1bad727191d0b753001ea564d09571f246c946fb4f5fe71fbb26aa2646256', 'Premium', NULL, '9', '2020-01-10 08:37:13', '2020-01-10 08:37:13', NULL),
(98, 'e5ddc90e-99fd-39f9-92ab-eb99875d4b8c', 'Robbie Heathcote', 'male', '1979-10-29', 'Budha', 'Pedroport', '8689 Hessel Village\nSouth Linnie, AL 63096-0558', '864.540.3704', '44margarett.hauck@yahoo.com', NULL, NULL, '6e9e1f42009151786c7bc14a7da5c71eb02e1425d4253a60395d0afc2f1f1831', 'Premium', NULL, '20', '2020-01-10 08:37:13', '2020-01-10 08:37:13', NULL),
(99, 'fbb6e8d3-b136-3013-ba7e-e4f444e59dad', 'Elta Rempel', 'female', '1984-09-05', 'Islam', 'South Monserrate', '64845 Aditya Freeway\nDenesikmouth, ME 40326', '+1.235.478.6752', '5monserrate.pfeffer@hotmail.com', NULL, NULL, 'e0f99c6ed2e2b524fceb8181d52028b88ddb70c9dd26b35ebff67d069b3de9d9', 'Basic', NULL, '2', '2020-01-10 08:37:13', '2020-01-10 08:37:13', NULL),
(100, 'f913f835-ad49-313a-a2eb-6e683e734e86', 'Dr. Alexane Hackett', 'male', '1994-04-17', 'Islam', 'Port Moriah', '912 Kennedy Walks Apt. 040\nDaltonchester, AZ 02708', '+1-874-313-3834', '659369chad.swift@yahoo.com', NULL, NULL, '1a4fcfdfd675b9fb630b48d5363e1c6c5dde312a2ac3edbde1e7cb94ab4f0d4f', 'Premium', NULL, '20', '2020-01-10 08:37:13', '2020-01-10 08:37:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `position_id` bigint(20) UNSIGNED NOT NULL,
  `id_card_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('Male','Female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `position_id`, `id_card_number`, `name`, `gender`, `birthday`, `religion`, `city`, `address`, `phone_number`, `email`, `email_verified_at`, `token`, `password`, `status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'e3409bbb-0724-35bb-92c6-bebd810f7b6f', 'Aman', 'Male', '1992-08-16', 'Konghucu', 'East Lucilebury', '5626 Darian Estate Suite 410\nHoppeberg, TN 23454-9476', '(476) 932-2732 x043', 'aman@gmail.com', NULL, '8uESWDnQXKWo5X10Vs7F', '$2y$10$yebXMC1KpJR4ZXQ4SNyQmuu2.RLxN1e1/yFLQic4K/6FGwu5pATL.', 1, NULL, '2020-01-10 08:37:01', '2020-01-11 04:05:17', NULL),
(2, 1, '26186d7e-61e4-3566-abb2-9ab456c91083', 'Danielle Kuhic', 'Female', '2019-02-18', 'Islam', 'Meaghanbury', '27360 Prohaska Forks\nBarrowsside, MS 76325-4840', '302-402-6101', '5402807reese.buckridge@gmail.com', NULL, NULL, '14d0cae854f12f218f1a271e0dbf5b040c64b4eb383a5ea2a558d5090edbe027', 1, NULL, '2020-01-10 08:37:01', '2020-01-10 08:37:01', NULL),
(3, 2, '923304bb-9ef9-3980-90f0-54bf45c4b233', 'Muhammad Hermann', 'Female', '2011-02-12', 'Budha', 'Port Daniellaport', '5929 Emard Spring Apt. 298\nJovanview, UT 28592-5976', '938.400.2422', '64torphy.ada@hotmail.com', NULL, NULL, '20eb384552a7e3f50d678fa474e03c9a4d76a0e796a05424ee60466c55017d94', 0, NULL, '2020-01-10 08:37:01', '2020-01-10 08:37:01', NULL),
(4, 3, 'e6dca9e9-ea4b-3602-a9ce-7987a979fe3a', 'Casandra Cartwright', 'Female', '1996-12-05', 'Budha', 'West Aarontown', '70520 Major Island\nLake Vergie, VT 94219-5977', '525-626-9721 x724', '74292244norma.mante@yahoo.com', NULL, NULL, 'ccd7a9393177edcc8aca396749f2114f97b68c437f53846dec5c01e95fe62381', 0, NULL, '2020-01-10 08:37:01', '2020-01-10 08:37:01', NULL),
(5, 1, 'f91b23a4-41f4-38f9-81f0-04e3b26a39eb', 'Luz Walter', 'Female', '2015-11-01', 'Kristen', 'Lake Cassandrehaven', '62848 Marianne Road Suite 005\nSouth Elmer, KS 26362-2872', '+18695966230', '330822185audreanne.tromp@yahoo.com', NULL, NULL, 'e49e3f32309daa0ce3e5cf0dc213eae8be91bf4d0c24694a01e80ba39222aabc', 1, NULL, '2020-01-10 08:37:01', '2020-01-10 08:37:01', NULL),
(6, 1, 'd9f766fd-4f1f-3be3-a324-eaf80a7ae0a4', 'Prof. Ethyl Johnson DVM', 'Male', '1980-02-14', 'Kristen', 'Lake Kylaside', '71905 Ritchie Ferry\nNew Dustyton, IA 59669', '(864) 564-9005 x542', '4443halle12@gmail.com', NULL, NULL, '3204d6684123b5180b8be4e00d89508cb8a96e5e5c5725fb4b69405672b81c91', 0, NULL, '2020-01-10 08:37:01', '2020-01-10 08:37:01', NULL),
(7, 2, '110d397d-eae1-30af-9131-9af511a0205d', 'Tristian Reichel', 'Female', '2014-08-29', 'Kristen', 'Port Gwendolyn', '38287 Kellie Ville Apt. 829\nLake Jarrell, HI 08194', '376-581-9629', '265853botsford.fleta@gmail.com', NULL, NULL, '06b8f15776924889e651fbfd28f181c407338fc5828df437a0120d7e2c02957a', 0, NULL, '2020-01-10 08:37:01', '2020-01-10 08:37:01', NULL),
(8, 1, '54bdaf18-80e2-3834-b1d4-5e739a1cb052', 'Dale Farrell', 'Female', '1983-08-24', 'Hindu', 'Lake German', '84814 Tillman Center\nPort Toneymouth, NE 32123', '(325) 882-2567 x7338', '14720stephon.will@hotmail.com', NULL, NULL, '888600edb1ddd24c09782a312ccc290068770aa55404638cbb78170053c18b5a', 0, NULL, '2020-01-10 08:37:01', '2020-01-10 08:37:01', NULL),
(9, 2, '089679d5-d9af-3baf-b236-8c5afbd4f369', 'Wilhelmine Beier PhD', 'Female', '2002-03-21', 'Islam', 'Amymouth', '250 Lemke Port Suite 037\nNew Furmanshire, NM 84391-4455', '+14296880382', '9031jharber@gmail.com', NULL, NULL, '9f6e9860529b7942de6f37df9384005ed9f835381353de49da0d6211a4c84e27', 1, NULL, '2020-01-10 08:37:01', '2020-01-10 08:37:01', NULL),
(10, 5, '94ce6fb1-1dab-3cad-9c4f-7465ab3011e4', 'Gennaro Farrell Jr.', 'Female', '2001-09-04', 'Islam', 'Brodyhaven', '373 O\'Reilly Mall Suite 753\nDurganton, HI 04390', '(904) 295-9158', '4cortney45@gmail.com', NULL, NULL, '8e29a5b21df347eaf6bd9d90d49a17cd87fa5bcb39d6c066d1e3fa47e88ccb59', 1, NULL, '2020-01-10 08:37:01', '2020-01-10 08:37:01', NULL),
(11, 4, 'd4500ba6-9c86-37e9-be91-db4cfddc7487', 'Dr. Isidro Schaden II', 'Female', '2011-01-02', 'Konghucu', 'Houstonmouth', '176 Rosie Walks\nEdmouth, OK 58357', '369.571.4125 x369', '995907313brandy41@yahoo.com', NULL, NULL, '1c7d8f9f95fbb4d817528ec81f57d05c2891ecb78e928d054bd901f414f59ac3', 0, NULL, '2020-01-10 08:37:01', '2020-01-10 08:37:01', NULL),
(12, 5, '04984450-ce6d-3db1-a690-5ec872381942', 'Peggie Tremblay', 'Male', '2017-02-08', 'Hindu', 'Beierfurt', '64065 Manuel Hollow\nCaspershire, NM 82250', '(597) 409-1231 x53801', '3891hettie42@gmail.com', NULL, NULL, '5fa1c2cc9b24d9c8e1cdd972fc1f5c1856d928cfc40ca98b58b1b64fca9f9920', 0, NULL, '2020-01-10 08:37:01', '2020-01-10 08:37:01', NULL),
(13, 1, '21c4233c-5d24-3eea-9408-7b8e71b2de4f', 'Miss Lera Roob', 'Female', '2011-03-11', 'Budha', 'Jackychester', '3025 Audrey Forks\nNorth Gavinview, MA 50423-8721', '+18038270632', '63kenyatta.beahan@hotmail.com', NULL, NULL, 'abb7de59304bd97e92f455f859b75e611725c91940eed5f9942f25c314981cb3', 0, NULL, '2020-01-10 08:37:01', '2020-01-10 08:37:01', NULL),
(14, 3, 'a21c4e26-81b7-3235-8965-98a4c241a3a0', 'Lorine Fadel DDS', 'Female', '2001-11-21', 'Hindu', 'West Lysanneland', '1014 Bosco Lodge\nZboncakborough, NY 21124-6221', '(314) 798-2604 x4059', '1fernando15@gmail.com', NULL, NULL, '81571bd2c17735bbe15e7c3294876b4bad9f2b45b7fe102696a71af9b7b32b7b', 1, NULL, '2020-01-10 08:37:01', '2020-01-10 08:37:01', NULL),
(15, 5, 'bb082e48-de44-3018-ab16-4059d1662f81', 'Darwin Kulas', 'Male', '2012-04-06', 'Islam', 'Altaville', '5820 Isac Parks\nCooperville, NV 20120', '706.244.6919 x594', '4402helmer.bins@yahoo.com', NULL, NULL, 'bbe9d59a43ea0406353156208b7bd6e428c30b4c59429b6ce2942cd67e64fd72', 0, NULL, '2020-01-10 08:37:01', '2020-01-10 08:37:01', NULL),
(16, 1, 'd030ca5f-b59a-3606-bb50-3514acf34650', 'Braeden Fahey', 'Male', '1984-01-18', 'Islam', 'Javonteport', '50621 Bogan Islands Suite 212\nSchadenstad, DE 44548', '+1.452.573.5554', '73207andre.kerluke@yahoo.com', NULL, NULL, '62130b6ec3defc61636ada590845c3c6c3a2eaefc40845c1122dfbd4e8ca26c2', 0, NULL, '2020-01-10 08:37:02', '2020-01-10 08:37:02', NULL),
(17, 5, '1e7e457e-c73a-36bd-baa1-1103a4d9656b', 'Miss Sharon Friesen V', 'Male', '1989-07-04', 'Konghucu', 'Ebertton', '737 Sierra Cliff Apt. 374\nSouth Ronfurt, MD 74239', '+1 (639) 385-5713', '3305estefania.stanton@hotmail.com', NULL, NULL, '93b138e0d9c10f20577d9867c55c1e337680838040a270d28086c74dd5562d17', 0, NULL, '2020-01-10 08:37:02', '2020-01-10 08:37:02', NULL),
(18, 1, '5c3c75ba-8bf6-3df7-8469-bdd0ac98391a', 'Jasen Wyman', 'Male', '1981-06-19', 'Islam', 'New Destany', '104 Deontae Cape\nEast Cortezside, CT 39342', '709.438.2510 x49755', '2344652esatterfield@gmail.com', NULL, NULL, 'c54890f2b08781e6ede6dbb71ba8883c93f0593a18f4ce3f3c9a6a7f8f334a01', 1, NULL, '2020-01-10 08:37:02', '2020-01-10 08:37:02', NULL),
(19, 5, 'f6bc5131-bb1c-3a9b-971f-4d4053ab5d9a', 'Avery Donnelly', 'Male', '2011-10-24', 'Konghucu', 'Loraineborough', '963 Kassulke Locks Apt. 619\nCreminside, ID 36247-1946', '+1-378-433-2788', '552912skuhlman@hotmail.com', NULL, NULL, '6f3d7011a60bf4013b1b75660bb96f1aa66d26299acd8bf5547c519ff2a7783e', 0, NULL, '2020-01-10 08:37:02', '2020-01-10 08:37:02', NULL),
(20, 4, '1b699017-c574-300a-a059-9ae4dd987a32', 'Ms. Hailee Kulas', 'Female', '2008-06-26', 'Kristen', 'Port Marcellechester', '8703 Andre Center Suite 066\nPort Heberport, AR 79954', '+12396995848', '930726zhickle@yahoo.com', NULL, NULL, '4b3509853b360784922c9b8e2a1ac14058917fab695f3a713ad6809b145094cb', 1, NULL, '2020-01-10 08:37:02', '2020-01-10 08:37:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_has_roles`
--

CREATE TABLE `employee_has_roles` (
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_has_roles`
--

INSERT INTO `employee_has_roles` (`employee_id`, `role_id`) VALUES
(1, 2),
(2, 1),
(2, 1),
(3, 2),
(3, 2),
(4, 1),
(5, 2),
(6, 2),
(7, 1),
(8, 1),
(8, 1),
(9, 2),
(9, 1),
(10, 1),
(11, 1),
(12, 2),
(12, 1),
(13, 1),
(13, 1),
(14, 2),
(14, 2),
(15, 2),
(15, 1),
(16, 2),
(17, 2),
(17, 2),
(18, 1),
(18, 1),
(19, 1),
(20, 2),
(20, 2),
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_type_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase` decimal(10,2) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT '0',
  `discount` decimal(3,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_type_id`, `name`, `purchase`, `price`, `stock`, `discount`, `description`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'sunt', '371198.00', '427185.00', 16, '0.00', 'Dolores occaecati sunt assumenda excepturi.', '19', '2020-01-10 08:37:14', '2020-01-10 08:47:04', NULL),
(2, 2, 'tenetur', '718282.00', '731033.00', 1, '0.55', 'Et ut non minima sint optio.', '3', '2020-01-10 08:37:14', '2020-01-10 08:47:35', NULL),
(3, 2, 'aut', '767732.00', '883619.00', 1, '0.73', 'Et est officiis incidunt amet.', '5', '2020-01-10 08:37:14', '2020-01-10 08:47:42', NULL),
(4, 2, 'non', '151418.00', '413859.00', 0, '0.19', 'Aut nihil facere cum aut.', '8', '2020-01-10 08:37:14', '2020-01-10 08:47:34', NULL),
(5, 1, 'consequuntur', '325504.00', '802348.00', 23, '0.00', 'Quasi itaque voluptatum omnis culpa velit.', '17', '2020-01-10 08:37:14', '2020-01-10 08:47:03', NULL),
(6, 1, 'neque', '858166.00', '910369.00', 5, '0.91', 'Quo et perspiciatis aut.', '13', '2020-01-10 08:37:14', '2020-01-10 08:47:43', NULL),
(7, 1, 'ex', '558199.00', '872070.00', 31, '0.00', 'Nulla quas at tempora autem dolor.', '20', '2020-01-10 08:37:14', '2020-01-10 08:47:26', NULL),
(8, 1, 'non', '275133.00', '291858.00', 2, '0.00', 'Sequi recusandae animi accusamus ratione.', '2', '2020-01-10 08:37:14', '2020-01-10 08:47:37', NULL),
(9, 2, 'pariatur', '847520.00', '988775.00', 10, '0.00', 'At aut repellat omnis ut.', '17', '2020-01-10 08:37:14', '2020-01-10 08:37:19', NULL),
(10, 2, 'ad', '545808.00', '946282.00', 5, '0.25', 'Ipsa in est aliquid aliquid.', '1', '2020-01-10 08:37:15', '2020-01-10 08:47:25', NULL),
(11, 2, 'voluptate', '687481.00', '704738.00', 48, '0.90', 'In et est mollitia omnis in dolorem eos.', '5', '2020-01-10 08:37:15', '2020-01-10 08:47:19', NULL),
(12, 1, 'animi', '652570.00', '776490.00', 27, '0.51', 'Saepe omnis animi in culpa error.', '13', '2020-01-10 08:37:15', '2020-01-10 08:47:30', NULL),
(13, 1, 'eveniet', '211637.00', '408560.00', 55, '0.28', 'Est repudiandae et tenetur doloremque.', '8', '2020-01-10 08:37:15', '2020-01-10 08:47:26', NULL),
(14, 2, 'est', '705192.00', '852823.00', 0, '0.00', 'Impedit quisquam esse impedit.', '20', '2020-01-10 08:37:15', '2020-01-10 08:47:40', NULL),
(15, 2, 'omnis', '77380.00', '917892.00', 50, '0.83', 'Libero distinctio quo consectetur itaque.', '2', '2020-01-10 08:37:15', '2020-01-10 08:47:24', NULL),
(16, 1, 'quam', '499529.00', '543712.00', 0, '0.81', 'Ex optio dolorum aspernatur saepe.', '17', '2020-01-10 08:37:15', '2020-01-10 08:37:15', NULL),
(17, 1, 'ipsam', '712838.00', '947357.00', 6, '0.66', 'Exercitationem magnam culpa ut dolores.', '12', '2020-01-10 08:37:15', '2020-01-10 08:47:42', NULL),
(18, 1, 'magni', '66758.00', '609928.00', 7, '1.00', 'Vitae est sit amet.', '16', '2020-01-10 08:37:15', '2020-01-10 08:47:39', NULL),
(19, 2, 'est', '76261.00', '144420.00', 1, '0.24', 'Dolores praesentium et ea aperiam.', '5', '2020-01-10 08:37:15', '2020-01-10 08:47:18', NULL),
(20, 1, 'nemo', '821742.00', '853225.00', 4, '0.00', 'Cumque voluptas minima odio et est.', '1', '2020-01-10 08:37:15', '2020-01-10 08:47:32', NULL),
(21, 2, 'quasi', '445193.00', '475302.00', 5, '0.00', 'Possimus nesciunt suscipit doloremque.', '5', '2020-01-10 08:37:15', '2020-01-10 08:47:24', NULL),
(22, 1, 'aut', '121756.00', '463064.00', 26, '0.00', 'Itaque ad aut atque sequi et ut.', '17', '2020-01-10 08:37:16', '2020-01-10 08:37:16', NULL),
(23, 2, 'ea', '772306.00', '809951.00', 26, '0.26', 'Soluta deleniti impedit modi sit sint.', '18', '2020-01-10 08:37:16', '2020-01-10 08:47:35', NULL),
(24, 2, 'sapiente', '192438.00', '747753.00', 0, '0.00', 'Nisi aut quis aut minus doloribus ab iste.', '9', '2020-01-10 08:37:16', '2020-01-10 08:47:16', NULL),
(25, 2, 'neque', '676516.00', '885656.00', 1, '0.00', 'Quia maiores enim et voluptas ut.', '14', '2020-01-10 08:37:16', '2020-01-10 08:47:33', NULL),
(26, 1, 'cum', '166600.00', '194500.00', 45, '0.74', 'Incidunt voluptatum eum aut corporis minus velit.', '6', '2020-01-10 08:37:16', '2020-01-10 08:47:26', NULL),
(27, 1, 'qui', '391442.00', '898307.00', 41, '0.00', 'Enim repudiandae placeat est dolore facere.', '15', '2020-01-10 08:37:16', '2020-01-10 08:46:59', NULL),
(28, 2, 'culpa', '762450.00', '944060.00', 3, '0.00', 'Voluptatem enim nemo mollitia et numquam.', '17', '2020-01-10 08:37:16', '2020-01-10 08:47:39', NULL),
(29, 2, 'reprehenderit', '929053.00', '963121.00', 8, '0.00', 'Harum beatae quis culpa.', '9', '2020-01-10 08:37:16', '2020-01-10 08:47:05', NULL),
(30, 2, 'eveniet', '88719.00', '465439.00', 20, '0.00', 'Nam quia suscipit asperiores ullam et expedita.', '17', '2020-01-10 08:37:16', '2020-01-10 08:47:40', NULL),
(31, 1, 'voluptates', '726928.00', '971319.00', 11, '0.00', 'Nihil pariatur occaecati ducimus non ad.', '1', '2020-01-10 08:37:16', '2020-01-10 08:47:40', NULL),
(32, 1, 'ipsum', '94531.00', '323376.00', 35, '1.00', 'Voluptatem quod tempore ut dolore explicabo.', '11', '2020-01-10 08:37:17', '2020-01-10 08:47:23', NULL),
(33, 1, 'id', '746444.00', '787346.00', 28, '0.28', 'Dolorum est maxime omnis ad.', '19', '2020-01-10 08:37:17', '2020-01-10 08:47:43', NULL),
(34, 2, 'suscipit', '475951.00', '499396.00', 10, '0.00', 'Commodi et vel sit cum.', '11', '2020-01-10 08:37:17', '2020-01-10 08:47:22', NULL),
(35, 2, 'vel', '178491.00', '740984.00', 0, '0.00', 'Rerum et nesciunt repellat dicta provident.', '19', '2020-01-10 08:37:17', '2020-01-10 08:47:28', NULL),
(36, 2, 'praesentium', '45159.00', '143575.00', 73, '0.35', 'Aspernatur et sapiente perferendis minus sed.', '19', '2020-01-10 08:37:17', '2020-01-10 08:47:09', NULL),
(37, 1, 'eum', '819970.00', '974223.00', 0, '0.07', 'Autem occaecati veniam beatae beatae aut rerum.', '6', '2020-01-10 08:37:17', '2020-01-10 08:47:03', NULL),
(38, 2, 'vel', '353616.00', '944900.00', 18, '0.20', 'Sed iure est aut corrupti.', '4', '2020-01-10 08:37:17', '2020-01-10 08:47:23', NULL),
(39, 1, 'officia', '67726.00', '145621.00', 0, '0.59', 'Et eligendi in debitis ad.', '10', '2020-01-10 08:37:17', '2020-01-10 08:47:18', NULL),
(40, 1, 'distinctio', '242004.00', '906502.00', 8, '0.00', 'Qui voluptas non magni recusandae.', '6', '2020-01-10 08:37:17', '2020-01-10 08:46:58', NULL),
(41, 1, 'sunt', '803855.00', '988643.00', 1, '0.00', 'Quidem aut rerum vel provident necessitatibus.', '5', '2020-01-10 08:37:17', '2020-01-10 08:47:21', NULL),
(42, 1, 'architecto', '411771.00', '724880.00', 5, '0.00', 'Voluptatibus vel voluptatem atque quis ullam.', '4', '2020-01-10 08:37:18', '2020-01-10 08:47:44', NULL),
(43, 1, 'corrupti', '818480.00', '905417.00', 0, '0.62', 'Ratione sit dolorum praesentium laborum.', '13', '2020-01-10 08:37:18', '2020-01-10 08:47:19', NULL),
(44, 1, 'et', '247011.00', '448921.00', 1, '0.00', 'Dicta occaecati omnis enim est.', '9', '2020-01-10 08:37:18', '2020-01-10 08:47:39', NULL),
(45, 1, 'nisi', '991271.00', '996415.00', 1, '0.00', 'Sunt culpa suscipit et ut.', '4', '2020-01-10 08:37:18', '2020-01-10 08:47:42', NULL),
(46, 1, 'et', '365067.00', '857089.00', 9, '0.69', 'Qui et culpa non sit cumque.', '10', '2020-01-10 08:37:18', '2020-01-10 08:47:42', NULL),
(47, 2, 'non', '455478.00', '711954.00', 22, '0.89', 'Autem qui ea sit qui.', '4', '2020-01-10 08:37:18', '2020-01-10 08:47:35', NULL),
(48, 2, 'labore', '390855.00', '476310.00', 67, '0.00', 'Aut consectetur cum hic deleniti est.', '5', '2020-01-10 08:37:18', '2020-01-10 08:47:21', NULL),
(49, 1, 'itaque', '378872.00', '681512.00', 47, '0.00', 'Vitae illo suscipit ea et.', '18', '2020-01-10 08:37:18', '2020-01-10 08:47:42', NULL),
(50, 2, 'vel', '946749.00', '988449.00', 47, '0.00', 'Culpa voluptas totam odio quidem sit.', '8', '2020-01-10 08:37:18', '2020-01-10 08:46:59', NULL),
(51, 1, 'asperiores', '480866.00', '724850.00', 33, '0.47', 'Non ut et error dolor.', '9', '2020-01-10 08:38:57', '2020-01-10 08:47:03', NULL),
(52, 2, 'debitis', '142801.00', '432094.00', 2, '0.17', 'Est ea ducimus eos rerum animi fuga.', '5', '2020-01-10 08:38:57', '2020-01-10 08:47:38', NULL),
(53, 1, 'at', '883914.00', '949409.00', 1, '0.00', 'Id sit voluptatum aut dignissimos corrupti.', '12', '2020-01-10 08:38:57', '2020-01-10 08:47:32', NULL),
(54, 1, 'ad', '367718.00', '551073.00', 9, '0.60', 'Molestiae ut vero quae incidunt porro vel.', '9', '2020-01-10 08:38:57', '2020-01-10 08:47:43', NULL),
(55, 2, 'at', '39639.00', '536177.00', 15, '0.00', 'Eaque quos in dolor cupiditate.', '17', '2020-01-10 08:38:57', '2020-01-10 08:47:35', NULL),
(56, 1, 'culpa', '194300.00', '786609.00', 4, '0.00', 'Pariatur incidunt culpa quia.', '12', '2020-01-10 08:38:57', '2020-01-10 08:47:30', NULL),
(57, 2, 'esse', '375625.00', '690893.00', 56, '0.46', 'Officiis consectetur ut aut non qui.', '2', '2020-01-10 08:38:57', '2020-01-10 08:47:20', NULL),
(58, 1, 'nisi', '492306.00', '718413.00', 2, '0.07', 'Qui at ducimus omnis enim.', '6', '2020-01-10 08:38:57', '2020-01-10 08:47:32', NULL),
(59, 1, 'dolore', '363685.00', '521660.00', 51, '0.00', 'Velit occaecati in aliquid.', '14', '2020-01-10 08:38:58', '2020-01-10 08:47:11', NULL),
(60, 2, 'magnam', '163519.00', '766677.00', 86, '0.53', 'Saepe possimus fugit sed recusandae ea odio.', '19', '2020-01-10 08:38:58', '2020-01-10 08:38:58', NULL),
(61, 2, 'consequatur', '64589.00', '189031.00', 8, '0.53', 'Nihil minima nesciunt delectus.', '8', '2020-01-10 08:38:58', '2020-01-10 08:47:01', NULL),
(62, 1, 'atque', '545705.00', '638411.00', 0, '0.00', 'Saepe eligendi et sed minima quas aut.', '7', '2020-01-10 08:38:58', '2020-01-10 08:47:37', NULL),
(63, 2, 'sit', '579482.00', '872311.00', 0, '0.11', 'Quo deserunt sit consequuntur suscipit.', '20', '2020-01-10 08:38:58', '2020-01-10 08:47:41', NULL),
(64, 2, 'quam', '535786.00', '905024.00', 80, '0.00', 'Enim sint dolorem rerum numquam sapiente.', '6', '2020-01-10 08:38:58', '2020-01-10 08:38:58', NULL),
(65, 2, 'ad', '756650.00', '803848.00', 14, '0.13', 'Earum aut deserunt rerum.', '10', '2020-01-10 08:38:58', '2020-01-10 08:47:27', NULL),
(66, 1, 'vitae', '890316.00', '947211.00', 32, '0.00', 'Sequi et quos et ipsam quibusdam.', '5', '2020-01-10 08:38:58', '2020-01-10 08:47:36', NULL),
(67, 2, 'necessitatibus', '799369.00', '974666.00', 44, '0.00', 'Aut iste unde sunt libero et.', '7', '2020-01-10 08:38:58', '2020-01-10 08:47:43', NULL),
(68, 2, 'repudiandae', '170818.00', '891662.00', 2, '0.00', 'Delectus commodi nesciunt quae qui.', '4', '2020-01-10 08:38:58', '2020-01-10 08:47:17', NULL),
(69, 1, 'commodi', '990785.00', '992504.00', 24, '0.00', 'Eligendi excepturi enim officiis modi.', '7', '2020-01-10 08:38:58', '2020-01-10 08:47:14', NULL),
(70, 1, 'et', '517024.00', '766765.00', 41, '0.00', 'Laboriosam ab officia sed dolorem.', '11', '2020-01-10 08:38:58', '2020-01-10 08:47:33', NULL),
(71, 1, 'assumenda', '870068.00', '877374.00', 5, '0.84', 'Esse non voluptatem suscipit.', '7', '2020-01-10 08:38:59', '2020-01-10 08:47:25', NULL),
(72, 1, 'quis', '702145.00', '752685.00', 0, '0.00', 'Vel officiis iure sint voluptatem asperiores.', '15', '2020-01-10 08:38:59', '2020-01-10 08:47:10', NULL),
(73, 2, 'consequatur', '96144.00', '428615.00', 1, '0.00', 'Quas odit quam doloremque mollitia.', '5', '2020-01-10 08:38:59', '2020-01-10 08:47:21', NULL),
(74, 1, 'fugiat', '646996.00', '952922.00', 0, '0.00', 'Dolores esse provident beatae.', '1', '2020-01-10 08:38:59', '2020-01-10 08:47:27', NULL),
(75, 1, 'eum', '678637.00', '897796.00', 1, '0.50', 'Fugit asperiores nobis non omnis.', '19', '2020-01-10 08:38:59', '2020-01-10 08:47:32', NULL),
(76, 1, 'rerum', '374020.00', '712229.00', 0, '0.70', 'Eos minus neque debitis incidunt incidunt.', '6', '2020-01-10 08:38:59', '2020-01-10 08:46:58', NULL),
(77, 1, 'quia', '290656.00', '601216.00', 0, '0.13', 'Quam autem iure quaerat ut eaque et quidem aut.', '9', '2020-01-10 08:38:59', '2020-01-10 08:47:38', NULL),
(78, 1, 'quasi', '38435.00', '56247.00', 8, '0.81', 'Laboriosam et iure atque et.', '5', '2020-01-10 08:38:59', '2020-01-10 08:47:06', NULL),
(79, 2, 'iusto', '831458.00', '998099.00', 75, '0.00', 'Qui beatae sint quibusdam odio sunt.', '20', '2020-01-10 08:38:59', '2020-01-10 08:47:16', NULL),
(80, 1, 'animi', '750889.00', '822932.00', 0, '0.46', 'Officia rem consequatur esse et.', '12', '2020-01-10 08:38:59', '2020-01-10 08:47:44', NULL),
(81, 1, 'hic', '280805.00', '399488.00', 15, '0.99', 'A velit quidem aut dolore tenetur.', '19', '2020-01-10 08:38:59', '2020-01-10 08:47:37', NULL),
(82, 2, 'maxime', '635574.00', '656933.00', 35, '0.14', 'Consequatur nihil molestiae occaecati.', '1', '2020-01-10 08:39:00', '2020-01-10 08:47:05', NULL),
(83, 1, 'ea', '76397.00', '253063.00', 0, '0.80', 'Qui nulla et est debitis.', '18', '2020-01-10 08:39:00', '2020-01-10 08:47:14', NULL),
(84, 1, 'ea', '826309.00', '841528.00', 82, '0.00', 'Et est officiis sit enim et.', '3', '2020-01-10 08:39:00', '2020-01-10 08:47:44', NULL),
(85, 1, 'laboriosam', '76099.00', '420164.00', 31, '0.00', 'Nam sit nihil doloremque quia ut.', '5', '2020-01-10 08:39:00', '2020-01-10 08:47:32', NULL),
(86, 2, 'saepe', '104447.00', '831300.00', 0, '0.80', 'Aut unde accusantium enim tempore.', '7', '2020-01-10 08:39:00', '2020-01-10 08:47:29', NULL),
(87, 2, 'ea', '319223.00', '976463.00', 74, '0.79', 'Accusantium maiores ipsam vero.', '6', '2020-01-10 08:39:00', '2020-01-10 08:47:29', NULL),
(88, 1, 'corrupti', '227773.00', '519641.00', 58, '0.00', 'Sit aut quae laboriosam minus.', '3', '2020-01-10 08:39:00', '2020-01-10 08:39:00', NULL),
(89, 2, 'maiores', '613213.00', '711000.00', 3, '0.00', 'Mollitia unde ut et aliquam.', '12', '2020-01-10 08:39:00', '2020-01-10 08:47:31', NULL),
(90, 2, 'sed', '260749.00', '384764.00', 11, '0.00', 'Commodi perspiciatis explicabo earum et.', '9', '2020-01-10 08:39:00', '2020-01-10 08:47:40', NULL),
(91, 2, 'sapiente', '234309.00', '775339.00', 2, '0.03', 'Eum assumenda laudantium non id tempore.', '19', '2020-01-10 08:39:00', '2020-01-10 08:47:44', NULL),
(92, 2, 'quae', '911425.00', '970082.00', 64, '0.00', 'Est sed voluptas voluptas rerum non ipsum error.', '10', '2020-01-10 08:39:00', '2020-01-10 08:47:08', NULL),
(93, 1, 'culpa', '787604.00', '945086.00', 83, '0.07', 'Voluptatibus sed odit libero unde.', '17', '2020-01-10 08:39:01', '2020-01-10 08:47:31', NULL),
(94, 1, 'in', '274334.00', '412046.00', 9, '0.50', 'Explicabo sed labore ut corrupti.', '17', '2020-01-10 08:39:01', '2020-01-10 08:47:40', NULL),
(95, 1, 'animi', '212835.00', '705394.00', 48, '0.30', 'Quis quo quis a.', '14', '2020-01-10 08:39:01', '2020-01-10 08:39:01', NULL),
(96, 1, 'atque', '344000.00', '808435.00', 0, '0.67', 'Enim officiis alias ea aut.', '13', '2020-01-10 08:39:01', '2020-01-10 08:47:28', NULL),
(97, 2, 'eum', '547721.00', '578103.00', 0, '0.00', 'Veniam eaque provident vel officiis.', '5', '2020-01-10 08:39:01', '2020-01-10 08:39:01', NULL),
(98, 2, 'voluptates', '408457.00', '453444.00', 9, '0.00', 'Sint omnis maxime distinctio ut.', '8', '2020-01-10 08:39:01', '2020-01-10 08:47:37', NULL),
(99, 2, 'optio', '138299.00', '348195.00', 56, '0.01', 'Sed autem eius facere est libero sed velit.', '2', '2020-01-10 08:39:01', '2020-01-10 08:47:21', NULL),
(100, 1, 'praesentium', '87334.00', '382712.00', 5, '0.00', 'Blanditiis eligendi omnis qui et et qui.', '9', '2020-01-10 08:39:01', '2020-01-10 08:47:28', NULL),
(101, 2, 'ullam', '573313.00', '857845.00', 43, '0.62', 'Adipisci id doloremque non natus aut.', '6', '2020-01-10 08:39:01', '2020-01-10 08:47:31', NULL),
(102, 1, 'aliquam', '705359.00', '824369.00', 6, '0.57', 'Modi maxime consequatur quis ipsum.', '18', '2020-01-10 08:39:01', '2020-01-10 08:47:40', NULL),
(103, 2, 'qui', '445276.00', '620083.00', 2, '0.00', 'Unde in nobis eos voluptatem ex quo.', '14', '2020-01-10 08:39:02', '2020-01-10 08:47:13', NULL),
(104, 1, 'amet', '694477.00', '719398.00', 0, '0.11', 'Qui optio vel qui ab omnis soluta quibusdam.', '1', '2020-01-10 08:39:02', '2020-01-10 08:47:18', NULL),
(105, 1, 'expedita', '835192.00', '857937.00', 1, '0.51', 'Magnam corrupti voluptate aut error ullam.', '1', '2020-01-10 08:39:02', '2020-01-10 08:47:37', NULL),
(106, 1, 'rem', '283896.00', '967347.00', 0, '0.00', 'Quis debitis sunt sapiente veniam blanditiis.', '20', '2020-01-10 08:39:02', '2020-01-10 08:47:10', NULL),
(107, 2, 'eos', '663200.00', '721119.00', 0, '0.00', 'Modi rem voluptatum iste animi.', '1', '2020-01-10 08:39:02', '2020-01-10 08:47:39', NULL),
(108, 2, 'omnis', '623390.00', '745211.00', 13, '0.19', 'Delectus at non ut similique odit esse odit.', '3', '2020-01-10 08:39:02', '2020-01-10 08:47:30', NULL),
(109, 2, 'qui', '245404.00', '984958.00', 10, '0.25', 'Vitae quia eaque qui veniam expedita.', '3', '2020-01-10 08:39:02', '2020-01-10 08:47:43', NULL),
(110, 1, 'vitae', '197193.00', '637236.00', 80, '0.00', 'Neque ipsam eum quis omnis aut ut illum.', '20', '2020-01-10 08:39:02', '2020-01-10 08:47:39', NULL),
(111, 1, 'aut', '286215.00', '598018.00', 13, '0.00', 'Earum ad quos atque occaecati est reprehenderit.', '5', '2020-01-10 08:39:03', '2020-01-10 08:47:35', NULL),
(112, 2, 'explicabo', '452873.00', '921704.00', 29, '0.91', 'Et praesentium quaerat consequatur quidem ex et.', '1', '2020-01-10 08:39:03', '2020-01-10 08:39:03', NULL),
(113, 2, 'in', '806721.00', '876731.00', 0, '0.00', 'Quo fuga sequi nihil qui.', '9', '2020-01-10 08:39:03', '2020-01-10 08:39:03', NULL),
(114, 1, 'ullam', '912595.00', '931145.00', 35, '1.00', 'Non sit placeat eos magnam est deleniti.', '20', '2020-01-10 08:39:03', '2020-01-10 08:47:38', NULL),
(115, 1, 'repudiandae', '754102.00', '838163.00', 66, '0.93', 'Reiciendis a quis qui id quae quo.', '2', '2020-01-10 08:39:03', '2020-01-10 08:47:12', NULL),
(116, 1, 'perspiciatis', '87627.00', '212733.00', 5, '0.00', 'Et qui illum debitis aliquam delectus porro.', '12', '2020-01-10 08:39:03', '2020-01-10 08:47:31', NULL),
(117, 2, 'est', '612348.00', '973080.00', 0, '0.78', 'Quod dolore voluptatem magni minus ea impedit.', '15', '2020-01-10 08:39:03', '2020-01-10 08:47:30', NULL),
(118, 1, 'ratione', '551573.00', '611417.00', 19, '0.00', 'Quia provident atque sed alias.', '3', '2020-01-10 08:39:03', '2020-01-10 08:47:18', NULL),
(119, 2, 'est', '483734.00', '774132.00', 13, '0.00', 'Quas quia asperiores nemo amet et.', '13', '2020-01-10 08:39:03', '2020-01-10 08:47:35', NULL),
(120, 1, 'unde', '283645.00', '553966.00', 1, '0.00', 'Voluptatum cum tenetur dignissimos alias quasi.', '5', '2020-01-10 08:39:03', '2020-01-10 08:47:41', NULL),
(121, 2, 'quasi', '727941.00', '737492.00', 0, '0.13', 'Facilis harum nemo distinctio quo placeat aut.', '4', '2020-01-10 08:39:03', '2020-01-10 08:47:36', NULL),
(122, 2, 'deserunt', '722824.00', '866069.00', 44, '0.36', 'Quia minima nemo facilis quod.', '17', '2020-01-10 08:39:03', '2020-01-10 08:47:32', NULL),
(123, 1, 'adipisci', '998235.00', '999498.00', 40, '0.00', 'Non laudantium enim maxime quisquam esse.', '20', '2020-01-10 08:39:04', '2020-01-10 08:47:37', NULL),
(124, 1, 'officia', '263002.00', '469483.00', 0, '0.00', 'Deleniti ut nobis qui adipisci distinctio quae.', '16', '2020-01-10 08:39:04', '2020-01-10 08:39:04', NULL),
(125, 1, 'et', '257521.00', '332268.00', 13, '0.00', 'Officia culpa qui saepe dolor.', '1', '2020-01-10 08:39:04', '2020-01-10 08:39:04', NULL),
(126, 1, 'quibusdam', '752320.00', '815782.00', 0, '0.02', 'Porro et accusamus vel distinctio quia.', '18', '2020-01-10 08:39:04', '2020-01-10 08:47:42', NULL),
(127, 1, 'et', '551285.00', '814104.00', 65, '0.58', 'Eius est dolor unde nobis explicabo.', '10', '2020-01-10 08:39:04', '2020-01-10 08:47:22', NULL),
(128, 1, 'ut', '830266.00', '955807.00', 48, '0.00', 'Nisi numquam architecto sapiente cumque non.', '1', '2020-01-10 08:39:04', '2020-01-10 08:47:44', NULL),
(129, 2, 'ipsa', '344664.00', '768253.00', 0, '0.00', 'Inventore soluta distinctio eaque libero.', '10', '2020-01-10 08:39:04', '2020-01-10 08:47:37', NULL),
(130, 2, 'similique', '397840.00', '935606.00', 23, '0.02', 'Eaque modi et aspernatur iste distinctio eum.', '3', '2020-01-10 08:39:04', '2020-01-10 08:47:44', NULL),
(131, 1, 'ut', '442712.00', '451999.00', 64, '0.00', 'Et et qui aut perferendis id possimus.', '10', '2020-01-10 08:39:04', '2020-01-10 08:47:34', NULL),
(132, 2, 'et', '715043.00', '889307.00', 0, '0.31', 'Qui eum id placeat.', '4', '2020-01-10 08:39:04', '2020-01-10 08:47:23', NULL),
(133, 1, 'et', '234524.00', '555128.00', 42, '0.00', 'Nisi et amet illum eum et laborum doloremque.', '2', '2020-01-10 08:39:04', '2020-01-10 08:47:00', NULL),
(134, 1, 'provident', '503313.00', '826147.00', 10, '0.00', 'Voluptas laudantium sit optio amet aut delectus.', '3', '2020-01-10 08:39:04', '2020-01-10 08:47:36', NULL),
(135, 1, 'quaerat', '581184.00', '671988.00', 6, '0.04', 'Dolores sit id optio aliquid similique soluta.', '3', '2020-01-10 08:39:05', '2020-01-10 08:47:42', NULL),
(136, 2, 'ullam', '338003.00', '443921.00', 17, '0.41', 'Voluptatem ea veritatis accusamus.', '7', '2020-01-10 08:39:05', '2020-01-10 08:47:31', NULL),
(137, 2, 'est', '634804.00', '963034.00', 3, '0.00', 'Debitis quam ex molestiae quis deleniti.', '9', '2020-01-10 08:39:05', '2020-01-10 08:47:38', NULL),
(138, 2, 'ex', '59138.00', '321409.00', 0, '0.00', 'Qui et aliquid officiis dolorem nam.', '7', '2020-01-10 08:39:05', '2020-01-10 08:47:07', NULL),
(139, 1, 'earum', '22209.00', '874810.00', 16, '0.70', 'Sunt id nihil debitis enim perferendis quia.', '7', '2020-01-10 08:39:05', '2020-01-10 08:47:24', NULL),
(140, 2, 'magnam', '991138.00', '998466.00', 7, '0.67', 'Reprehenderit maiores non soluta.', '9', '2020-01-10 08:39:05', '2020-01-10 08:47:35', NULL),
(141, 1, 'consequatur', '219691.00', '811902.00', 4, '0.00', 'Provident quam quasi blanditiis sunt magnam.', '17', '2020-01-10 08:39:05', '2020-01-10 08:47:22', NULL),
(142, 1, 'aut', '568240.00', '751995.00', 1, '0.45', 'Aut dolor sunt quisquam.', '4', '2020-01-10 08:39:05', '2020-01-10 08:47:39', NULL),
(143, 2, 'deleniti', '242249.00', '497511.00', 0, '0.00', 'Possimus laboriosam tempore eum.', '18', '2020-01-10 08:39:05', '2020-01-10 08:47:40', NULL),
(144, 1, 'voluptas', '858055.00', '943242.00', 64, '0.00', 'Cupiditate sapiente sapiente fuga enim qui.', '10', '2020-01-10 08:39:05', '2020-01-10 08:47:28', NULL),
(145, 2, 'nobis', '873991.00', '999788.00', 38, '0.71', 'Ut rerum autem unde reiciendis.', '6', '2020-01-10 08:39:05', '2020-01-10 08:47:22', NULL),
(146, 2, 'voluptas', '645946.00', '892353.00', 0, '0.18', 'Est est architecto voluptatem qui quasi.', '4', '2020-01-10 08:39:05', '2020-01-10 08:47:36', NULL),
(147, 1, 'illo', '799802.00', '905515.00', 14, '0.00', 'In at deserunt asperiores architecto.', '11', '2020-01-10 08:39:06', '2020-01-10 08:47:01', NULL),
(148, 1, 'sint', '848716.00', '928555.00', 4, '0.40', 'Saepe dolorum et provident non et quia fugiat.', '12', '2020-01-10 08:39:06', '2020-01-10 08:47:41', NULL),
(149, 2, 'qui', '445916.00', '731163.00', 6, '0.05', 'Esse expedita harum sapiente unde nemo nisi quia.', '11', '2020-01-10 08:39:06', '2020-01-10 08:47:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_histories`
--

CREATE TABLE `item_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `purchase` decimal(10,2) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `discount` decimal(3,2) DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_histories`
--

INSERT INTO `item_histories` (`id`, `item_id`, `purchase`, `price`, `quantity`, `discount`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '371198.00', '427185.00', 16, '0.00', '19', '2020-01-10 08:37:14', '2020-01-10 08:37:14', NULL),
(2, 2, '718282.00', '731033.00', 12, '0.55', '3', '2020-01-10 08:37:14', '2020-01-10 08:37:14', NULL),
(3, 3, '767732.00', '883619.00', 82, '0.73', '5', '2020-01-10 08:37:14', '2020-01-10 08:37:14', NULL),
(4, 4, '151418.00', '413859.00', 54, '0.19', '8', '2020-01-10 08:37:14', '2020-01-10 08:37:14', NULL),
(5, 5, '325504.00', '802348.00', 49, '0.00', '17', '2020-01-10 08:37:14', '2020-01-10 08:37:14', NULL),
(6, 6, '858166.00', '910369.00', 39, '0.91', '13', '2020-01-10 08:37:14', '2020-01-10 08:37:14', NULL),
(7, 7, '558199.00', '872070.00', 54, '0.00', '20', '2020-01-10 08:37:14', '2020-01-10 08:37:14', NULL),
(8, 8, '275133.00', '291858.00', 40, '0.00', '2', '2020-01-10 08:37:14', '2020-01-10 08:37:14', NULL),
(9, 9, '847520.00', '988775.00', 22, '0.00', '17', '2020-01-10 08:37:15', '2020-01-10 08:37:15', NULL),
(10, 10, '545808.00', '946282.00', 12, '0.25', '1', '2020-01-10 08:37:15', '2020-01-10 08:37:15', NULL),
(11, 11, '687481.00', '704738.00', 59, '0.90', '5', '2020-01-10 08:37:15', '2020-01-10 08:37:15', NULL),
(12, 12, '652570.00', '776490.00', 97, '0.51', '13', '2020-01-10 08:37:15', '2020-01-10 08:37:15', NULL),
(13, 13, '211637.00', '408560.00', 83, '0.28', '8', '2020-01-10 08:37:15', '2020-01-10 08:37:15', NULL),
(14, 14, '705192.00', '852823.00', 10, '0.00', '20', '2020-01-10 08:37:15', '2020-01-10 08:37:15', NULL),
(15, 15, '77380.00', '917892.00', 54, '0.83', '2', '2020-01-10 08:37:15', '2020-01-10 08:37:15', NULL),
(16, 16, '499529.00', '543712.00', 0, '0.81', '17', '2020-01-10 08:37:15', '2020-01-10 08:37:15', NULL),
(17, 17, '712838.00', '947357.00', 11, '0.66', '12', '2020-01-10 08:37:15', '2020-01-10 08:37:15', NULL),
(18, 18, '66758.00', '609928.00', 94, '1.00', '16', '2020-01-10 08:37:15', '2020-01-10 08:37:15', NULL),
(19, 19, '76261.00', '144420.00', 9, '0.24', '5', '2020-01-10 08:37:15', '2020-01-10 08:37:15', NULL),
(20, 20, '821742.00', '853225.00', 26, '0.00', '1', '2020-01-10 08:37:15', '2020-01-10 08:37:15', NULL),
(21, 21, '445193.00', '475302.00', 41, '0.00', '5', '2020-01-10 08:37:16', '2020-01-10 08:37:16', NULL),
(22, 22, '121756.00', '463064.00', 26, '0.00', '17', '2020-01-10 08:37:16', '2020-01-10 08:37:16', NULL),
(23, 23, '772306.00', '809951.00', 89, '0.26', '18', '2020-01-10 08:37:16', '2020-01-10 08:37:16', NULL),
(24, 24, '192438.00', '747753.00', 77, '0.00', '9', '2020-01-10 08:37:16', '2020-01-10 08:37:16', NULL),
(25, 25, '676516.00', '885656.00', 3, '0.00', '14', '2020-01-10 08:37:16', '2020-01-10 08:37:16', NULL),
(26, 26, '166600.00', '194500.00', 88, '0.74', '6', '2020-01-10 08:37:16', '2020-01-10 08:37:16', NULL),
(27, 27, '391442.00', '898307.00', 55, '0.00', '15', '2020-01-10 08:37:16', '2020-01-10 08:37:16', NULL),
(28, 28, '762450.00', '944060.00', 97, '0.00', '17', '2020-01-10 08:37:16', '2020-01-10 08:37:16', NULL),
(29, 29, '929053.00', '963121.00', 10, '0.00', '9', '2020-01-10 08:37:16', '2020-01-10 08:37:16', NULL),
(30, 30, '88719.00', '465439.00', 87, '0.00', '17', '2020-01-10 08:37:16', '2020-01-10 08:37:16', NULL),
(31, 31, '726928.00', '971319.00', 26, '0.00', '1', '2020-01-10 08:37:16', '2020-01-10 08:37:16', NULL),
(32, 32, '94531.00', '323376.00', 35, '1.00', '11', '2020-01-10 08:37:17', '2020-01-10 08:37:17', NULL),
(33, 33, '746444.00', '787346.00', 28, '0.28', '19', '2020-01-10 08:37:17', '2020-01-10 08:37:17', NULL),
(34, 34, '475951.00', '499396.00', 38, '0.00', '11', '2020-01-10 08:37:17', '2020-01-10 08:37:17', NULL),
(35, 35, '178491.00', '740984.00', 11, '0.00', '19', '2020-01-10 08:37:17', '2020-01-10 08:37:17', NULL),
(36, 36, '45159.00', '143575.00', 73, '0.35', '19', '2020-01-10 08:37:17', '2020-01-10 08:37:17', NULL),
(37, 37, '819970.00', '974223.00', 7, '0.07', '6', '2020-01-10 08:37:17', '2020-01-10 08:37:17', NULL),
(38, 38, '353616.00', '944900.00', 86, '0.20', '4', '2020-01-10 08:37:17', '2020-01-10 08:37:17', NULL),
(39, 39, '67726.00', '145621.00', 90, '0.59', '10', '2020-01-10 08:37:17', '2020-01-10 08:37:17', NULL),
(40, 40, '242004.00', '906502.00', 8, '0.00', '6', '2020-01-10 08:37:17', '2020-01-10 08:37:17', NULL),
(41, 41, '803855.00', '988643.00', 32, '0.00', '5', '2020-01-10 08:37:17', '2020-01-10 08:37:17', NULL),
(42, 42, '411771.00', '724880.00', 23, '0.00', '4', '2020-01-10 08:37:18', '2020-01-10 08:37:18', NULL),
(43, 43, '818480.00', '905417.00', 8, '0.62', '13', '2020-01-10 08:37:18', '2020-01-10 08:37:18', NULL),
(44, 44, '247011.00', '448921.00', 29, '0.00', '9', '2020-01-10 08:37:18', '2020-01-10 08:37:18', NULL),
(45, 45, '991271.00', '996415.00', 39, '0.00', '4', '2020-01-10 08:37:18', '2020-01-10 08:37:18', NULL),
(46, 46, '365067.00', '857089.00', 37, '0.69', '10', '2020-01-10 08:37:18', '2020-01-10 08:37:18', NULL),
(47, 47, '455478.00', '711954.00', 49, '0.89', '4', '2020-01-10 08:37:18', '2020-01-10 08:37:18', NULL),
(48, 48, '390855.00', '476310.00', 77, '0.00', '5', '2020-01-10 08:37:18', '2020-01-10 08:37:18', NULL),
(49, 49, '378872.00', '681512.00', 83, '0.00', '18', '2020-01-10 08:37:18', '2020-01-10 08:37:18', NULL),
(50, 50, '946749.00', '988449.00', 97, '0.00', '8', '2020-01-10 08:37:18', '2020-01-10 08:37:18', NULL),
(51, 51, '480866.00', '724850.00', 93, '0.47', '9', '2020-01-10 08:38:57', '2020-01-10 08:38:57', NULL),
(52, 52, '142801.00', '432094.00', 81, '0.17', '5', '2020-01-10 08:38:57', '2020-01-10 08:38:57', NULL),
(53, 53, '883914.00', '949409.00', 2, '0.00', '12', '2020-01-10 08:38:57', '2020-01-10 08:38:57', NULL),
(54, 54, '367718.00', '551073.00', 18, '0.60', '9', '2020-01-10 08:38:57', '2020-01-10 08:38:57', NULL),
(55, 55, '39639.00', '536177.00', 47, '0.00', '17', '2020-01-10 08:38:57', '2020-01-10 08:38:57', NULL),
(56, 56, '194300.00', '786609.00', 72, '0.00', '12', '2020-01-10 08:38:57', '2020-01-10 08:38:57', NULL),
(57, 57, '375625.00', '690893.00', 77, '0.46', '2', '2020-01-10 08:38:57', '2020-01-10 08:38:57', NULL),
(58, 58, '492306.00', '718413.00', 5, '0.07', '6', '2020-01-10 08:38:57', '2020-01-10 08:38:57', NULL),
(59, 59, '363685.00', '521660.00', 51, '0.00', '14', '2020-01-10 08:38:58', '2020-01-10 08:38:58', NULL),
(60, 60, '163519.00', '766677.00', 86, '0.53', '19', '2020-01-10 08:38:58', '2020-01-10 08:38:58', NULL),
(61, 61, '64589.00', '189031.00', 34, '0.53', '8', '2020-01-10 08:38:58', '2020-01-10 08:38:58', NULL),
(62, 62, '545705.00', '638411.00', 14, '0.00', '7', '2020-01-10 08:38:58', '2020-01-10 08:38:58', NULL),
(63, 63, '579482.00', '872311.00', 14, '0.11', '20', '2020-01-10 08:38:58', '2020-01-10 08:38:58', NULL),
(64, 64, '535786.00', '905024.00', 80, '0.00', '6', '2020-01-10 08:38:58', '2020-01-10 08:38:58', NULL),
(65, 65, '756650.00', '803848.00', 21, '0.13', '10', '2020-01-10 08:38:58', '2020-01-10 08:38:58', NULL),
(66, 66, '890316.00', '947211.00', 35, '0.00', '5', '2020-01-10 08:38:58', '2020-01-10 08:38:58', NULL),
(67, 67, '799369.00', '974666.00', 75, '0.00', '7', '2020-01-10 08:38:58', '2020-01-10 08:38:58', NULL),
(68, 68, '170818.00', '891662.00', 3, '0.00', '4', '2020-01-10 08:38:58', '2020-01-10 08:38:58', NULL),
(69, 69, '990785.00', '992504.00', 53, '0.00', '7', '2020-01-10 08:38:58', '2020-01-10 08:38:58', NULL),
(70, 70, '517024.00', '766765.00', 72, '0.00', '11', '2020-01-10 08:38:58', '2020-01-10 08:38:58', NULL),
(71, 71, '870068.00', '877374.00', 53, '0.84', '7', '2020-01-10 08:38:59', '2020-01-10 08:38:59', NULL),
(72, 72, '702145.00', '752685.00', 8, '0.00', '15', '2020-01-10 08:38:59', '2020-01-10 08:38:59', NULL),
(73, 73, '96144.00', '428615.00', 45, '0.00', '5', '2020-01-10 08:38:59', '2020-01-10 08:38:59', NULL),
(74, 74, '646996.00', '952922.00', 92, '0.00', '1', '2020-01-10 08:38:59', '2020-01-10 08:38:59', NULL),
(75, 75, '678637.00', '897796.00', 11, '0.50', '19', '2020-01-10 08:38:59', '2020-01-10 08:38:59', NULL),
(76, 76, '374020.00', '712229.00', 22, '0.70', '6', '2020-01-10 08:38:59', '2020-01-10 08:38:59', NULL),
(77, 77, '290656.00', '601216.00', 58, '0.13', '9', '2020-01-10 08:38:59', '2020-01-10 08:38:59', NULL),
(78, 78, '38435.00', '56247.00', 10, '0.81', '5', '2020-01-10 08:38:59', '2020-01-10 08:38:59', NULL),
(79, 79, '831458.00', '998099.00', 75, '0.00', '20', '2020-01-10 08:38:59', '2020-01-10 08:38:59', NULL),
(80, 80, '750889.00', '822932.00', 48, '0.46', '12', '2020-01-10 08:38:59', '2020-01-10 08:38:59', NULL),
(81, 81, '280805.00', '399488.00', 19, '0.99', '19', '2020-01-10 08:39:00', '2020-01-10 08:39:00', NULL),
(82, 82, '635574.00', '656933.00', 35, '0.14', '1', '2020-01-10 08:39:00', '2020-01-10 08:39:00', NULL),
(83, 83, '76397.00', '253063.00', 1, '0.80', '18', '2020-01-10 08:39:00', '2020-01-10 08:39:00', NULL),
(84, 84, '826309.00', '841528.00', 82, '0.00', '3', '2020-01-10 08:39:00', '2020-01-10 08:39:00', NULL),
(85, 85, '76099.00', '420164.00', 57, '0.00', '5', '2020-01-10 08:39:00', '2020-01-10 08:39:00', NULL),
(86, 86, '104447.00', '831300.00', 25, '0.80', '7', '2020-01-10 08:39:00', '2020-01-10 08:39:00', NULL),
(87, 87, '319223.00', '976463.00', 75, '0.79', '6', '2020-01-10 08:39:00', '2020-01-10 08:39:00', NULL),
(88, 88, '227773.00', '519641.00', 58, '0.00', '3', '2020-01-10 08:39:00', '2020-01-10 08:39:00', NULL),
(89, 89, '613213.00', '711000.00', 5, '0.00', '12', '2020-01-10 08:39:00', '2020-01-10 08:39:00', NULL),
(90, 90, '260749.00', '384764.00', 64, '0.00', '9', '2020-01-10 08:39:00', '2020-01-10 08:39:00', NULL),
(91, 91, '234309.00', '775339.00', 17, '0.03', '19', '2020-01-10 08:39:00', '2020-01-10 08:39:00', NULL),
(92, 92, '911425.00', '970082.00', 85, '0.00', '10', '2020-01-10 08:39:00', '2020-01-10 08:39:00', NULL),
(93, 93, '787604.00', '945086.00', 83, '0.07', '17', '2020-01-10 08:39:01', '2020-01-10 08:39:01', NULL),
(94, 94, '274334.00', '412046.00', 79, '0.50', '17', '2020-01-10 08:39:01', '2020-01-10 08:39:01', NULL),
(95, 95, '212835.00', '705394.00', 48, '0.30', '14', '2020-01-10 08:39:01', '2020-01-10 08:39:01', NULL),
(96, 96, '344000.00', '808435.00', 2, '0.67', '13', '2020-01-10 08:39:01', '2020-01-10 08:39:01', NULL),
(97, 97, '547721.00', '578103.00', 0, '0.00', '5', '2020-01-10 08:39:01', '2020-01-10 08:39:01', NULL),
(98, 98, '408457.00', '453444.00', 82, '0.00', '8', '2020-01-10 08:39:01', '2020-01-10 08:39:01', NULL),
(99, 99, '138299.00', '348195.00', 56, '0.01', '2', '2020-01-10 08:39:01', '2020-01-10 08:39:01', NULL),
(100, 100, '87334.00', '382712.00', 62, '0.00', '9', '2020-01-10 08:39:01', '2020-01-10 08:39:01', NULL),
(101, 101, '573313.00', '857845.00', 53, '0.62', '6', '2020-01-10 08:39:01', '2020-01-10 08:39:01', NULL),
(102, 102, '705359.00', '824369.00', 18, '0.57', '18', '2020-01-10 08:39:01', '2020-01-10 08:39:01', NULL),
(103, 103, '445276.00', '620083.00', 13, '0.00', '14', '2020-01-10 08:39:02', '2020-01-10 08:39:02', NULL),
(104, 104, '694477.00', '719398.00', 17, '0.11', '1', '2020-01-10 08:39:02', '2020-01-10 08:39:02', NULL),
(105, 105, '835192.00', '857937.00', 33, '0.51', '1', '2020-01-10 08:39:02', '2020-01-10 08:39:02', NULL),
(106, 106, '283896.00', '967347.00', 39, '0.00', '20', '2020-01-10 08:39:02', '2020-01-10 08:39:02', NULL),
(107, 107, '663200.00', '721119.00', 97, '0.00', '1', '2020-01-10 08:39:02', '2020-01-10 08:39:02', NULL),
(108, 108, '623390.00', '745211.00', 13, '0.19', '3', '2020-01-10 08:39:02', '2020-01-10 08:39:02', NULL),
(109, 109, '245404.00', '984958.00', 49, '0.25', '3', '2020-01-10 08:39:02', '2020-01-10 08:39:02', NULL),
(110, 110, '197193.00', '637236.00', 87, '0.00', '20', '2020-01-10 08:39:03', '2020-01-10 08:39:03', NULL),
(111, 111, '286215.00', '598018.00', 53, '0.00', '5', '2020-01-10 08:39:03', '2020-01-10 08:39:03', NULL),
(112, 112, '452873.00', '921704.00', 29, '0.91', '1', '2020-01-10 08:39:03', '2020-01-10 08:39:03', NULL),
(113, 113, '806721.00', '876731.00', 0, '0.00', '9', '2020-01-10 08:39:03', '2020-01-10 08:39:03', NULL),
(114, 114, '912595.00', '931145.00', 88, '1.00', '20', '2020-01-10 08:39:03', '2020-01-10 08:39:03', NULL),
(115, 115, '754102.00', '838163.00', 66, '0.93', '2', '2020-01-10 08:39:03', '2020-01-10 08:39:03', NULL),
(116, 116, '87627.00', '212733.00', 46, '0.00', '12', '2020-01-10 08:39:03', '2020-01-10 08:39:03', NULL),
(117, 117, '612348.00', '973080.00', 65, '0.78', '15', '2020-01-10 08:39:03', '2020-01-10 08:39:03', NULL),
(118, 118, '551573.00', '611417.00', 87, '0.00', '3', '2020-01-10 08:39:03', '2020-01-10 08:39:03', NULL),
(119, 119, '483734.00', '774132.00', 88, '0.00', '13', '2020-01-10 08:39:03', '2020-01-10 08:39:03', NULL),
(120, 120, '283645.00', '553966.00', 16, '0.00', '5', '2020-01-10 08:39:03', '2020-01-10 08:39:03', NULL),
(121, 121, '727941.00', '737492.00', 7, '0.13', '4', '2020-01-10 08:39:03', '2020-01-10 08:39:03', NULL),
(122, 122, '722824.00', '866069.00', 72, '0.36', '17', '2020-01-10 08:39:04', '2020-01-10 08:39:04', NULL),
(123, 123, '998235.00', '999498.00', 87, '0.00', '20', '2020-01-10 08:39:04', '2020-01-10 08:39:04', NULL),
(124, 124, '263002.00', '469483.00', 0, '0.00', '16', '2020-01-10 08:39:04', '2020-01-10 08:39:04', NULL),
(125, 125, '257521.00', '332268.00', 13, '0.00', '1', '2020-01-10 08:39:04', '2020-01-10 08:39:04', NULL),
(126, 126, '752320.00', '815782.00', 69, '0.02', '18', '2020-01-10 08:39:04', '2020-01-10 08:39:04', NULL),
(127, 127, '551285.00', '814104.00', 82, '0.58', '10', '2020-01-10 08:39:04', '2020-01-10 08:39:04', NULL),
(128, 128, '830266.00', '955807.00', 60, '0.00', '1', '2020-01-10 08:39:04', '2020-01-10 08:39:04', NULL),
(129, 129, '344664.00', '768253.00', 28, '0.00', '10', '2020-01-10 08:39:04', '2020-01-10 08:39:04', NULL),
(130, 130, '397840.00', '935606.00', 65, '0.02', '3', '2020-01-10 08:39:04', '2020-01-10 08:39:04', NULL),
(131, 131, '442712.00', '451999.00', 70, '0.00', '10', '2020-01-10 08:39:04', '2020-01-10 08:39:04', NULL),
(132, 132, '715043.00', '889307.00', 7, '0.31', '4', '2020-01-10 08:39:04', '2020-01-10 08:39:04', NULL),
(133, 133, '234524.00', '555128.00', 51, '0.00', '2', '2020-01-10 08:39:04', '2020-01-10 08:39:04', NULL),
(134, 134, '503313.00', '826147.00', 11, '0.00', '3', '2020-01-10 08:39:05', '2020-01-10 08:39:05', NULL),
(135, 135, '581184.00', '671988.00', 76, '0.04', '3', '2020-01-10 08:39:05', '2020-01-10 08:39:05', NULL),
(136, 136, '338003.00', '443921.00', 22, '0.41', '7', '2020-01-10 08:39:05', '2020-01-10 08:39:05', NULL),
(137, 137, '634804.00', '963034.00', 8, '0.00', '9', '2020-01-10 08:39:05', '2020-01-10 08:39:05', NULL),
(138, 138, '59138.00', '321409.00', 18, '0.00', '7', '2020-01-10 08:39:05', '2020-01-10 08:39:05', NULL),
(139, 139, '22209.00', '874810.00', 91, '0.70', '7', '2020-01-10 08:39:05', '2020-01-10 08:39:05', NULL),
(140, 140, '991138.00', '998466.00', 10, '0.67', '9', '2020-01-10 08:39:05', '2020-01-10 08:39:05', NULL),
(141, 141, '219691.00', '811902.00', 85, '0.00', '17', '2020-01-10 08:39:05', '2020-01-10 08:39:05', NULL),
(142, 142, '568240.00', '751995.00', 65, '0.45', '4', '2020-01-10 08:39:05', '2020-01-10 08:39:05', NULL),
(143, 143, '242249.00', '497511.00', 3, '0.00', '18', '2020-01-10 08:39:05', '2020-01-10 08:39:05', NULL),
(144, 144, '858055.00', '943242.00', 64, '0.00', '10', '2020-01-10 08:39:05', '2020-01-10 08:39:05', NULL),
(145, 145, '873991.00', '999788.00', 75, '0.71', '6', '2020-01-10 08:39:05', '2020-01-10 08:39:05', NULL),
(146, 146, '645946.00', '892353.00', 76, '0.18', '4', '2020-01-10 08:39:06', '2020-01-10 08:39:06', NULL),
(147, 147, '799802.00', '905515.00', 27, '0.00', '11', '2020-01-10 08:39:06', '2020-01-10 08:39:06', NULL),
(148, 148, '848716.00', '928555.00', 75, '0.40', '12', '2020-01-10 08:39:06', '2020-01-10 08:39:06', NULL),
(149, 149, '445916.00', '731163.00', 22, '0.05', '11', '2020-01-10 08:39:06', '2020-01-10 08:39:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_types`
--

CREATE TABLE `item_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_types`
--

INSERT INTO `item_types` (`id`, `name`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'doloribus', '15', '2020-01-10 08:37:14', '2020-01-10 08:37:14', NULL),
(2, 'eius', '2', '2020-01-10 08:37:14', '2020-01-10 08:37:14', NULL);

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
(4, '2019_12_19_102502_create_settings_table', 1),
(5, '2019_12_19_102503_create_positions_table', 1),
(6, '2019_12_19_102510_create_employees_table', 1),
(7, '2019_12_19_102516_create_roles_table', 1),
(8, '2019_12_19_102523_create_permissions_table', 1),
(9, '2019_12_19_102531_create_employee_has_roles_table', 1),
(10, '2019_12_19_102538_create_role_has_permissions_table', 1),
(11, '2019_12_19_102545_create_customers_table', 1),
(12, '2019_12_19_102552_create_item_types_table', 1),
(13, '2019_12_19_102559_create_items_table', 1),
(14, '2019_12_19_102560_create_item_histories_table', 1),
(15, '2019_12_19_102605_create_orders_table', 1),
(16, '2019_12_19_102611_create_order_has_items_table', 1),
(17, '2019_12_19_102612_create_payment_methods_table', 1),
(18, '2019_12_19_102613_create_payments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 58, '2', '2020-01-10 08:37:18', '2020-01-10 08:37:18', NULL),
(2, 17, '1', '2020-01-10 08:46:58', '2020-01-10 08:46:58', NULL),
(3, 79, '20', '2020-01-10 08:46:58', '2020-01-10 08:46:58', NULL),
(4, 88, '1', '2020-01-10 08:46:59', '2020-01-10 08:46:59', NULL),
(5, 50, '19', '2020-01-10 08:46:59', '2020-01-10 08:46:59', NULL),
(6, 35, '14', '2020-01-10 08:47:00', '2020-01-10 08:47:00', NULL),
(7, 10, '17', '2020-01-10 08:47:00', '2020-01-10 08:47:00', NULL),
(8, 36, '4', '2020-01-10 08:47:01', '2020-01-10 08:47:01', NULL),
(9, 88, '16', '2020-01-10 08:47:01', '2020-01-10 08:47:01', NULL),
(10, 21, '19', '2020-01-10 08:47:02', '2020-01-10 08:47:02', NULL),
(11, 55, '13', '2020-01-10 08:47:02', '2020-01-10 08:47:02', NULL),
(12, 65, '1', '2020-01-10 08:47:03', '2020-01-10 08:47:03', NULL),
(13, 12, '14', '2020-01-10 08:47:03', '2020-01-10 08:47:03', NULL),
(14, 29, '14', '2020-01-10 08:47:03', '2020-01-10 08:47:03', NULL),
(15, 66, '19', '2020-01-10 08:47:04', '2020-01-10 08:47:04', NULL),
(16, 75, '11', '2020-01-10 08:47:05', '2020-01-10 08:47:05', NULL),
(17, 86, '18', '2020-01-10 08:47:05', '2020-01-10 08:47:05', NULL),
(18, 90, '16', '2020-01-10 08:47:06', '2020-01-10 08:47:06', NULL),
(19, 15, '3', '2020-01-10 08:47:06', '2020-01-10 08:47:06', NULL),
(20, 83, '13', '2020-01-10 08:47:06', '2020-01-10 08:47:06', NULL),
(21, 3, '10', '2020-01-10 08:47:07', '2020-01-10 08:47:07', NULL),
(22, 34, '16', '2020-01-10 08:47:08', '2020-01-10 08:47:08', NULL),
(23, 66, '10', '2020-01-10 08:47:08', '2020-01-10 08:47:08', NULL),
(24, 35, '1', '2020-01-10 08:47:09', '2020-01-10 08:47:09', NULL),
(25, 63, '20', '2020-01-10 08:47:09', '2020-01-10 08:47:09', NULL),
(26, 24, '6', '2020-01-10 08:47:09', '2020-01-10 08:47:09', NULL),
(27, 16, '5', '2020-01-10 08:47:10', '2020-01-10 08:47:10', NULL),
(28, 46, '13', '2020-01-10 08:47:11', '2020-01-10 08:47:11', NULL),
(29, 66, '7', '2020-01-10 08:47:11', '2020-01-10 08:47:11', NULL),
(30, 36, '18', '2020-01-10 08:47:12', '2020-01-10 08:47:12', NULL),
(31, 58, '6', '2020-01-10 08:47:12', '2020-01-10 08:47:12', NULL),
(32, 48, '19', '2020-01-10 08:47:13', '2020-01-10 08:47:13', NULL),
(33, 16, '13', '2020-01-10 08:47:13', '2020-01-10 08:47:13', NULL),
(34, 99, '12', '2020-01-10 08:47:13', '2020-01-10 08:47:13', NULL),
(35, 99, '13', '2020-01-10 08:47:14', '2020-01-10 08:47:14', NULL),
(36, 74, '14', '2020-01-10 08:47:14', '2020-01-10 08:47:14', NULL),
(37, 94, '4', '2020-01-10 08:47:15', '2020-01-10 08:47:15', NULL),
(38, 88, '4', '2020-01-10 08:47:15', '2020-01-10 08:47:15', NULL),
(39, 91, '20', '2020-01-10 08:47:16', '2020-01-10 08:47:16', NULL),
(40, 36, '12', '2020-01-10 08:47:16', '2020-01-10 08:47:16', NULL),
(41, 25, '15', '2020-01-10 08:47:17', '2020-01-10 08:47:17', NULL),
(42, 39, '19', '2020-01-10 08:47:17', '2020-01-10 08:47:17', NULL),
(43, 15, '18', '2020-01-10 08:47:18', '2020-01-10 08:47:18', NULL),
(44, 82, '18', '2020-01-10 08:47:18', '2020-01-10 08:47:18', NULL),
(45, 57, '14', '2020-01-10 08:47:19', '2020-01-10 08:47:19', NULL),
(46, 61, '4', '2020-01-10 08:47:19', '2020-01-10 08:47:19', NULL),
(47, 39, '20', '2020-01-10 08:47:19', '2020-01-10 08:47:19', NULL),
(48, 67, '10', '2020-01-10 08:47:20', '2020-01-10 08:47:20', NULL),
(49, 10, '5', '2020-01-10 08:47:21', '2020-01-10 08:47:21', NULL),
(50, 19, '6', '2020-01-10 08:47:21', '2020-01-10 08:47:21', NULL),
(51, 40, '20', '2020-01-10 08:47:22', '2020-01-10 08:47:22', NULL),
(52, 37, '5', '2020-01-10 08:47:22', '2020-01-10 08:47:22', NULL),
(53, 13, '17', '2020-01-10 08:47:22', '2020-01-10 08:47:22', NULL),
(54, 64, '8', '2020-01-10 08:47:23', '2020-01-10 08:47:23', NULL),
(55, 26, '4', '2020-01-10 08:47:23', '2020-01-10 08:47:23', NULL),
(56, 99, '13', '2020-01-10 08:47:23', '2020-01-10 08:47:23', NULL),
(57, 36, '17', '2020-01-10 08:47:24', '2020-01-10 08:47:24', NULL),
(58, 32, '17', '2020-01-10 08:47:24', '2020-01-10 08:47:24', NULL),
(59, 45, '12', '2020-01-10 08:47:25', '2020-01-10 08:47:25', NULL),
(60, 50, '8', '2020-01-10 08:47:25', '2020-01-10 08:47:25', NULL),
(61, 9, '2', '2020-01-10 08:47:26', '2020-01-10 08:47:26', NULL),
(62, 30, '3', '2020-01-10 08:47:27', '2020-01-10 08:47:27', NULL),
(63, 79, '10', '2020-01-10 08:47:27', '2020-01-10 08:47:27', NULL),
(64, 56, '1', '2020-01-10 08:47:27', '2020-01-10 08:47:27', NULL),
(65, 84, '11', '2020-01-10 08:47:28', '2020-01-10 08:47:28', NULL),
(66, 96, '9', '2020-01-10 08:47:28', '2020-01-10 08:47:28', NULL),
(67, 67, '17', '2020-01-10 08:47:29', '2020-01-10 08:47:29', NULL),
(68, 43, '17', '2020-01-10 08:47:29', '2020-01-10 08:47:29', NULL),
(69, 92, '15', '2020-01-10 08:47:30', '2020-01-10 08:47:30', NULL),
(70, 27, '13', '2020-01-10 08:47:30', '2020-01-10 08:47:30', NULL),
(71, 81, '12', '2020-01-10 08:47:30', '2020-01-10 08:47:30', NULL),
(72, 24, '8', '2020-01-10 08:47:31', '2020-01-10 08:47:31', NULL),
(73, 92, '7', '2020-01-10 08:47:31', '2020-01-10 08:47:31', NULL),
(74, 30, '6', '2020-01-10 08:47:32', '2020-01-10 08:47:32', NULL),
(75, 9, '5', '2020-01-10 08:47:32', '2020-01-10 08:47:32', NULL),
(76, 68, '7', '2020-01-10 08:47:33', '2020-01-10 08:47:33', NULL),
(77, 95, '4', '2020-01-10 08:47:33', '2020-01-10 08:47:33', NULL),
(78, 36, '18', '2020-01-10 08:47:33', '2020-01-10 08:47:33', NULL),
(79, 39, '19', '2020-01-10 08:47:34', '2020-01-10 08:47:34', NULL),
(80, 25, '19', '2020-01-10 08:47:34', '2020-01-10 08:47:34', NULL),
(81, 32, '7', '2020-01-10 08:47:35', '2020-01-10 08:47:35', NULL),
(82, 53, '14', '2020-01-10 08:47:35', '2020-01-10 08:47:35', NULL),
(83, 21, '8', '2020-01-10 08:47:36', '2020-01-10 08:47:36', NULL),
(84, 44, '10', '2020-01-10 08:47:37', '2020-01-10 08:47:37', NULL),
(85, 22, '17', '2020-01-10 08:47:37', '2020-01-10 08:47:37', NULL),
(86, 1, '2', '2020-01-10 08:47:37', '2020-01-10 08:47:37', NULL),
(87, 19, '19', '2020-01-10 08:47:38', '2020-01-10 08:47:38', NULL),
(88, 84, '4', '2020-01-10 08:47:38', '2020-01-10 08:47:38', NULL),
(89, 31, '1', '2020-01-10 08:47:38', '2020-01-10 08:47:38', NULL),
(90, 98, '16', '2020-01-10 08:47:39', '2020-01-10 08:47:39', NULL),
(91, 81, '20', '2020-01-10 08:47:39', '2020-01-10 08:47:39', NULL),
(92, 8, '19', '2020-01-10 08:47:40', '2020-01-10 08:47:40', NULL),
(93, 71, '4', '2020-01-10 08:47:40', '2020-01-10 08:47:40', NULL),
(94, 68, '11', '2020-01-10 08:47:40', '2020-01-10 08:47:40', NULL),
(95, 82, '6', '2020-01-10 08:47:41', '2020-01-10 08:47:41', NULL),
(96, 33, '7', '2020-01-10 08:47:41', '2020-01-10 08:47:41', NULL),
(97, 98, '10', '2020-01-10 08:47:42', '2020-01-10 08:47:42', NULL),
(98, 35, '3', '2020-01-10 08:47:42', '2020-01-10 08:47:42', NULL),
(99, 66, '19', '2020-01-10 08:47:43', '2020-01-10 08:47:43', NULL),
(100, 61, '2', '2020-01-10 08:47:44', '2020-01-10 08:47:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_has_items`
--

CREATE TABLE `order_has_items` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `discount` decimal(3,2) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_has_items`
--

INSERT INTO `order_has_items` (`order_id`, `item_id`, `price`, `quantity`, `discount`, `amount`) VALUES
(1, 39, '145621.00', 80, '0.59', '4776368.80'),
(1, 24, '747753.00', 61, '0.00', '45612933.00'),
(1, 9, '988775.00', 12, '0.00', '11865300.00'),
(2, 40, '906502.00', 4, '0.00', '3626008.00'),
(2, 45, '996415.00', 10, '0.00', '9964150.00'),
(2, 117, '973080.00', 51, '0.78', '10917957.60'),
(2, 48, '476310.00', 31, '0.00', '14765610.00'),
(3, 77, '601216.00', 20, '0.13', '12024320.00'),
(3, 127, '814104.00', 17, '0.58', '5812702.56'),
(3, 35, '740984.00', 1, '0.00', '740984.00'),
(3, 76, '712229.00', 22, '0.70', '4700711.40'),
(3, 12, '776490.00', 3, '0.51', '1141440.30'),
(4, 27, '898307.00', 14, '0.00', '12576298.00'),
(4, 50, '988449.00', 23, '0.00', '22734327.00'),
(4, 28, '944060.00', 82, '0.00', '77412920.00'),
(4, 149, '731163.00', 16, '0.05', '11698608.00'),
(4, 67, '974666.00', 16, '0.00', '15594656.00'),
(5, 122, '866069.00', 22, '0.36', '19053518.00'),
(5, 120, '553966.00', 4, '0.00', '2215864.00'),
(5, 50, '988449.00', 27, '0.00', '26688123.00'),
(6, 141, '811902.00', 81, '0.00', '65764062.00'),
(6, 6, '910369.00', 2, '0.91', '163866.42'),
(6, 73, '428615.00', 43, '0.00', '18430445.00'),
(7, 67, '974666.00', 15, '0.00', '14619990.00'),
(7, 74, '952922.00', 41, '0.00', '39069802.00'),
(7, 103, '620083.00', 11, '0.00', '6820913.00'),
(7, 133, '555128.00', 9, '0.00', '4996152.00'),
(8, 3, '883619.00', 40, '0.73', '9543085.20'),
(8, 58, '718413.00', 4, '0.07', '2873652.00'),
(8, 80, '822932.00', 17, '0.46', '13989844.00'),
(8, 137, '963034.00', 2, '0.00', '1926068.00'),
(9, 61, '189031.00', 26, '0.53', '2309958.82'),
(9, 52, '432094.00', 74, '0.17', '31974956.00'),
(9, 34, '499396.00', 28, '0.00', '13983088.00'),
(9, 147, '905515.00', 13, '0.00', '11771695.00'),
(9, 39, '145621.00', 7, '0.59', '417932.27'),
(10, 148, '928555.00', 4, '0.40', '3714220.00'),
(10, 74, '952922.00', 14, '0.00', '13340908.00'),
(10, 129, '768253.00', 13, '0.00', '9987289.00'),
(10, 116, '212733.00', 24, '0.00', '5105592.00'),
(11, 43, '905417.00', 6, '0.62', '2064350.76'),
(11, 30, '465439.00', 21, '0.00', '9774219.00'),
(11, 37, '974223.00', 6, '0.07', '5845338.00'),
(12, 5, '802348.00', 26, '0.00', '20861048.00'),
(12, 56, '786609.00', 44, '0.00', '34610796.00'),
(12, 38, '944900.00', 63, '0.20', '59528700.00'),
(12, 37, '974223.00', 1, '0.07', '974223.00'),
(12, 57, '690893.00', 21, '0.46', '14508753.00'),
(13, 20, '853225.00', 4, '0.00', '3412900.00'),
(13, 142, '751995.00', 60, '0.45', '45119700.00'),
(13, 51, '724850.00', 60, '0.47', '43491000.00'),
(14, 39, '145621.00', 3, '0.59', '179113.83'),
(14, 73, '428615.00', 1, '0.00', '428615.00'),
(14, 100, '382712.00', 2, '0.00', '765424.00'),
(14, 38, '944900.00', 5, '0.20', '4724500.00'),
(14, 141, '811902.00', 4, '0.00', '3247608.00'),
(15, 1, '427185.00', 14, '0.00', '5980590.00'),
(15, 82, '656933.00', 7, '0.14', '4598531.00'),
(15, 134, '826147.00', 1, '0.00', '826147.00'),
(16, 143, '497511.00', 1, '0.00', '497511.00'),
(16, 123, '999498.00', 20, '0.00', '19989960.00'),
(16, 41, '988643.00', 16, '0.00', '15818288.00'),
(16, 41, '988643.00', 14, '0.00', '13841002.00'),
(16, 69, '992504.00', 29, '0.00', '28782616.00'),
(17, 29, '963121.00', 2, '0.00', '1926242.00'),
(17, 47, '711954.00', 12, '0.89', '939779.28'),
(17, 53, '949409.00', 1, '0.00', '949409.00'),
(17, 106, '967347.00', 37, '0.00', '35791839.00'),
(17, 129, '768253.00', 17, '0.00', '13060301.00'),
(18, 107, '721119.00', 72, '0.00', '51920568.00'),
(18, 139, '874810.00', 79, '0.70', '20732997.00'),
(18, 115, '838163.00', 45, '0.93', '2640213.45'),
(19, 46, '857089.00', 25, '0.69', '6642439.75'),
(19, 19, '144420.00', 3, '0.24', '433260.00'),
(19, 78, '56247.00', 2, '0.81', '21373.86'),
(19, 77, '601216.00', 34, '0.13', '20441344.00'),
(20, 92, '970082.00', 21, '0.00', '20371722.00'),
(20, 98, '453444.00', 66, '0.00', '29927304.00'),
(20, 129, '768253.00', 4, '0.00', '3073012.00'),
(20, 120, '553966.00', 5, '0.00', '2769830.00'),
(20, 20, '853225.00', 18, '0.00', '15358050.00'),
(21, 107, '721119.00', 26, '0.00', '18749094.00'),
(21, 101, '857845.00', 10, '0.62', '3259811.00'),
(21, 138, '321409.00', 18, '0.00', '5785362.00'),
(21, 140, '998466.00', 2, '0.67', '658987.56'),
(21, 100, '382712.00', 32, '0.00', '12246784.00'),
(22, 132, '889307.00', 1, '0.31', '889307.00'),
(22, 123, '999498.00', 33, '0.00', '32983434.00'),
(22, 36, '143575.00', 12, '0.35', '1722900.00'),
(23, 92, '970082.00', 46, '0.00', '44623772.00'),
(23, 122, '866069.00', 50, '0.36', '43303450.00'),
(23, 70, '766765.00', 68, '0.00', '52140020.00'),
(23, 36, '143575.00', 61, '0.35', '8758075.00'),
(24, 111, '598018.00', 38, '0.00', '22724684.00'),
(24, 121, '737492.00', 4, '0.13', '2949968.00'),
(25, 44, '448921.00', 12, '0.00', '5387052.00'),
(25, 72, '752685.00', 4, '0.00', '3010740.00'),
(25, 18, '609928.00', 52, '1.00', '0.00'),
(25, 42, '724880.00', 12, '0.00', '8698560.00'),
(26, 57, '690893.00', 33, '0.46', '22799469.00'),
(26, 62, '638411.00', 6, '0.00', '3830466.00'),
(26, 45, '996415.00', 1, '0.00', '996415.00'),
(26, 118, '611417.00', 51, '0.00', '31182267.00'),
(26, 109, '984958.00', 37, '0.25', '36443446.00'),
(27, 106, '967347.00', 2, '0.00', '1934694.00'),
(27, 55, '536177.00', 27, '0.00', '14476779.00'),
(27, 72, '752685.00', 8, '0.00', '6021480.00'),
(27, 74, '952922.00', 47, '0.00', '44787334.00'),
(27, 26, '194500.00', 33, '0.74', '1668810.00'),
(28, 145, '999788.00', 38, '0.71', '11017663.76'),
(28, 59, '521660.00', 36, '0.00', '18779760.00'),
(28, 35, '740984.00', 1, '0.00', '740984.00'),
(29, 2, '731033.00', 4, '0.55', '1315859.40'),
(29, 114, '931145.00', 45, '1.00', '0.00'),
(29, 134, '826147.00', 11, '0.00', '9087617.00'),
(29, 127, '814104.00', 53, '0.58', '18121955.04'),
(30, 115, '838163.00', 59, '0.93', '3461613.19'),
(30, 116, '212733.00', 7, '0.00', '1489131.00'),
(30, 54, '551073.00', 14, '0.60', '3086008.80'),
(30, 74, '952922.00', 3, '0.00', '2858766.00'),
(31, 19, '144420.00', 3, '0.24', '433260.00'),
(31, 119, '774132.00', 69, '0.00', '53415108.00'),
(32, 103, '620083.00', 1, '0.00', '620083.00'),
(32, 104, '719398.00', 4, '0.11', '2877592.00'),
(33, 4, '413859.00', 50, '0.19', '20692950.00'),
(33, 109, '984958.00', 39, '0.25', '38413362.00'),
(34, 101, '857845.00', 35, '0.62', '11409338.50'),
(34, 69, '992504.00', 22, '0.00', '21835088.00'),
(35, 24, '747753.00', 14, '0.00', '10468542.00'),
(35, 83, '253063.00', 1, '0.80', '50612.60'),
(35, 26, '194500.00', 5, '0.74', '252850.00'),
(35, 128, '955807.00', 12, '0.00', '11469684.00'),
(36, 120, '553966.00', 4, '0.00', '2215864.00'),
(36, 142, '751995.00', 2, '0.45', '1503990.00'),
(36, 21, '475302.00', 6, '0.00', '2851812.00'),
(37, 135, '671988.00', 68, '0.04', '45695184.00'),
(37, 43, '905417.00', 1, '0.62', '344058.46'),
(37, 126, '815782.00', 12, '0.02', '9789384.00'),
(37, 137, '963034.00', 4, '0.00', '3852136.00'),
(38, 75, '897796.00', 1, '0.50', '448898.00'),
(38, 84, '841528.00', 17, '0.00', '14305976.00'),
(38, 79, '998099.00', 12, '0.00', '11977188.00'),
(38, 79, '998099.00', 5, '0.00', '4990495.00'),
(39, 12, '776490.00', 50, '0.51', '19024005.00'),
(39, 7, '872070.00', 9, '0.00', '7848630.00'),
(39, 56, '786609.00', 24, '0.00', '18878616.00'),
(39, 24, '747753.00', 2, '0.00', '1495506.00'),
(40, 121, '737492.00', 3, '0.13', '2212476.00'),
(40, 25, '885656.00', 1, '0.00', '885656.00'),
(40, 142, '751995.00', 3, '0.45', '2255985.00'),
(40, 146, '892353.00', 51, '0.18', '45510003.00'),
(40, 130, '935606.00', 54, '0.02', '50522724.00'),
(41, 102, '824369.00', 6, '0.57', '2126872.02'),
(41, 28, '944060.00', 3, '0.00', '2832180.00'),
(41, 68, '891662.00', 1, '0.00', '891662.00'),
(42, 130, '935606.00', 33, '0.02', '30874998.00'),
(42, 117, '973080.00', 43, '0.78', '9205336.80'),
(42, 45, '996415.00', 25, '0.00', '24910375.00'),
(42, 54, '551073.00', 9, '0.60', '1983862.80'),
(42, 39, '145621.00', 3, '0.59', '179113.83'),
(43, 118, '611417.00', 68, '0.00', '41576356.00'),
(43, 19, '144420.00', 2, '0.24', '288840.00'),
(43, 41, '988643.00', 1, '0.00', '988643.00'),
(43, 104, '719398.00', 17, '0.11', '12229766.00'),
(43, 116, '212733.00', 41, '0.00', '8722053.00'),
(44, 52, '432094.00', 1, '0.17', '432094.00'),
(44, 2, '731033.00', 9, '0.55', '2960683.65'),
(44, 44, '448921.00', 17, '0.00', '7631657.00'),
(45, 65, '803848.00', 7, '0.13', '5626936.00'),
(45, 132, '889307.00', 4, '0.31', '3557228.00'),
(45, 21, '475302.00', 20, '0.00', '9506040.00'),
(46, 43, '905417.00', 1, '0.62', '344058.46'),
(46, 11, '704738.00', 11, '0.90', '775211.80'),
(47, 126, '815782.00', 12, '0.02', '9789384.00'),
(47, 149, '731163.00', 5, '0.05', '3655815.00'),
(47, 134, '826147.00', 2, '0.00', '1652294.00'),
(47, 134, '826147.00', 5, '0.00', '4130735.00'),
(47, 135, '671988.00', 5, '0.04', '3359940.00'),
(48, 57, '690893.00', 28, '0.46', '19345004.00'),
(48, 75, '897796.00', 7, '0.50', '3142286.00'),
(48, 41, '988643.00', 1, '0.00', '988643.00'),
(48, 99, '348195.00', 49, '0.01', '17061555.00'),
(49, 89, '711000.00', 2, '0.00', '1422000.00'),
(49, 80, '822932.00', 11, '0.46', '9052252.00'),
(49, 73, '428615.00', 1, '0.00', '428615.00'),
(50, 139, '874810.00', 37, '0.70', '9710391.00'),
(50, 3, '883619.00', 36, '0.73', '8588776.68'),
(50, 23, '809951.00', 63, '0.26', '51026913.00'),
(50, 48, '476310.00', 10, '0.00', '4763100.00'),
(51, 53, '949409.00', 1, '0.00', '949409.00'),
(51, 127, '814104.00', 29, '0.58', '9915786.72'),
(52, 141, '811902.00', 3, '0.00', '2435706.00'),
(52, 116, '212733.00', 1, '0.00', '212733.00'),
(52, 34, '499396.00', 1, '0.00', '499396.00'),
(53, 145, '999788.00', 37, '0.71', '10727725.24'),
(53, 96, '808435.00', 1, '0.67', '266783.55'),
(53, 4, '413859.00', 1, '0.19', '413859.00'),
(54, 31, '971319.00', 8, '0.00', '7770552.00'),
(54, 32, '323376.00', 14, '1.00', '0.00'),
(55, 132, '889307.00', 3, '0.31', '2667921.00'),
(55, 122, '866069.00', 6, '0.36', '5196414.00'),
(55, 62, '638411.00', 5, '0.00', '3192055.00'),
(56, 86, '831300.00', 24, '0.80', '3990240.00'),
(56, 85, '420164.00', 8, '0.00', '3361312.00'),
(56, 38, '944900.00', 5, '0.20', '4724500.00'),
(56, 58, '718413.00', 1, '0.07', '718413.00'),
(56, 139, '874810.00', 38, '0.70', '9972834.00'),
(57, 13, '408560.00', 28, '0.28', '11439680.00'),
(57, 74, '952922.00', 1, '0.00', '952922.00'),
(57, 6, '910369.00', 7, '0.91', '573532.47'),
(57, 21, '475302.00', 10, '0.00', '4753020.00'),
(57, 77, '601216.00', 3, '0.13', '1803648.00'),
(58, 15, '917892.00', 4, '0.83', '624166.56'),
(58, 129, '768253.00', 6, '0.00', '4609518.00'),
(58, 10, '946282.00', 7, '0.25', '6623974.00'),
(58, 74, '952922.00', 2, '0.00', '1905844.00'),
(58, 71, '877374.00', 48, '0.84', '6738232.32'),
(59, 70, '766765.00', 51, '0.00', '39105015.00'),
(59, 77, '601216.00', 1, '0.13', '601216.00'),
(59, 23, '809951.00', 5, '0.26', '4049755.00'),
(60, 91, '775339.00', 15, '0.03', '11630085.00'),
(60, 13, '408560.00', 26, '0.28', '10622560.00'),
(60, 144, '943242.00', 20, '0.00', '18864840.00'),
(61, 26, '194500.00', 5, '0.74', '252850.00'),
(61, 7, '872070.00', 14, '0.00', '12208980.00'),
(61, 75, '897796.00', 1, '0.50', '448898.00'),
(62, 126, '815782.00', 49, '0.02', '39973318.00'),
(62, 74, '952922.00', 1, '0.00', '952922.00'),
(62, 30, '465439.00', 8, '0.00', '3723512.00'),
(63, 108, '745211.00', 1, '0.19', '745211.00'),
(63, 96, '808435.00', 1, '0.67', '266783.55'),
(63, 65, '803848.00', 14, '0.13', '11253872.00'),
(63, 102, '824369.00', 2, '0.57', '708957.34'),
(64, 96, '808435.00', 1, '0.67', '266783.55'),
(64, 102, '824369.00', 1, '0.57', '354478.67'),
(64, 91, '775339.00', 15, '0.03', '11630085.00'),
(64, 100, '382712.00', 25, '0.00', '9567800.00'),
(65, 144, '943242.00', 14, '0.00', '13205388.00'),
(65, 62, '638411.00', 3, '0.00', '1915233.00'),
(65, 143, '497511.00', 2, '0.00', '995022.00'),
(66, 35, '740984.00', 10, '0.00', '7409840.00'),
(66, 80, '822932.00', 34, '0.46', '27979688.00'),
(66, 86, '831300.00', 1, '0.80', '166260.00'),
(67, 80, '822932.00', 1, '0.46', '822932.00'),
(67, 87, '976463.00', 1, '0.79', '205057.23'),
(68, 109, '984958.00', 9, '0.25', '8864622.00'),
(68, 56, '786609.00', 2, '0.00', '1573218.00'),
(68, 77, '601216.00', 1, '0.13', '601216.00'),
(68, 108, '745211.00', 13, '0.19', '9687743.00'),
(69, 12, '776490.00', 17, '0.51', '6468161.70'),
(69, 117, '973080.00', 22, '0.78', '4709707.20'),
(70, 6, '910369.00', 25, '0.91', '2048330.25'),
(70, 28, '944060.00', 4, '0.00', '3776240.00'),
(70, 146, '892353.00', 37, '0.18', '33017061.00'),
(71, 146, '892353.00', 21, '0.18', '18739413.00'),
(71, 55, '536177.00', 5, '0.00', '2680885.00'),
(71, 136, '443921.00', 5, '0.41', '2219605.00'),
(72, 101, '857845.00', 38, '0.62', '12387281.80'),
(72, 93, '945086.00', 9, '0.07', '8505774.00'),
(72, 116, '212733.00', 3, '0.00', '638199.00'),
(72, 89, '711000.00', 3, '0.00', '2133000.00'),
(73, 53, '949409.00', 1, '0.00', '949409.00'),
(73, 119, '774132.00', 18, '0.00', '13934376.00'),
(73, 20, '853225.00', 4, '0.00', '3412900.00'),
(73, 122, '866069.00', 1, '0.36', '866069.00'),
(74, 146, '892353.00', 17, '0.18', '15170001.00'),
(74, 58, '718413.00', 2, '0.07', '1436826.00'),
(75, 85, '420164.00', 18, '0.00', '7562952.00'),
(75, 75, '897796.00', 9, '0.50', '4040082.00'),
(75, 17, '947357.00', 2, '0.66', '644202.76'),
(76, 90, '384764.00', 25, '0.00', '9619100.00'),
(76, 25, '885656.00', 2, '0.00', '1771312.00'),
(76, 44, '448921.00', 9, '0.00', '4040289.00'),
(77, 8, '291858.00', 24, '0.00', '7004592.00'),
(77, 111, '598018.00', 2, '0.00', '1196036.00'),
(77, 70, '766765.00', 31, '0.00', '23769715.00'),
(78, 143, '497511.00', 1, '0.00', '497511.00'),
(78, 131, '451999.00', 6, '0.00', '2711994.00'),
(78, 45, '996415.00', 11, '0.00', '10960565.00'),
(79, 107, '721119.00', 69, '0.00', '49757211.00'),
(79, 114, '931145.00', 46, '1.00', '0.00'),
(79, 4, '413859.00', 3, '0.19', '1241577.00'),
(80, 23, '809951.00', 17, '0.26', '13769167.00'),
(80, 23, '809951.00', 8, '0.26', '6479608.00'),
(80, 33, '787346.00', 26, '0.28', '20470996.00'),
(80, 55, '536177.00', 6, '0.00', '3217062.00'),
(80, 111, '598018.00', 4, '0.00', '2392072.00'),
(81, 140, '998466.00', 1, '0.67', '329493.78'),
(81, 2, '731033.00', 2, '0.55', '657929.70'),
(81, 119, '774132.00', 6, '0.00', '4644792.00'),
(81, 47, '711954.00', 15, '0.89', '1174724.10'),
(82, 148, '928555.00', 2, '0.40', '1857110.00'),
(82, 14, '852823.00', 5, '0.00', '4264115.00'),
(82, 146, '892353.00', 1, '0.18', '892353.00'),
(83, 121, '737492.00', 3, '0.13', '2212476.00'),
(83, 66, '947211.00', 3, '0.00', '2841633.00'),
(83, 45, '996415.00', 2, '0.00', '1992830.00'),
(83, 3, '883619.00', 39, '0.73', '9304508.07'),
(83, 134, '826147.00', 1, '0.00', '826147.00'),
(84, 8, '291858.00', 14, '0.00', '4086012.00'),
(84, 105, '857937.00', 32, '0.51', '13452452.16'),
(84, 98, '453444.00', 7, '0.00', '3174108.00'),
(85, 62, '638411.00', 9, '0.00', '5745699.00'),
(85, 81, '399488.00', 4, '0.99', '15979.52'),
(86, 123, '999498.00', 27, '0.00', '26986446.00'),
(86, 129, '768253.00', 1, '0.00', '768253.00'),
(86, 17, '947357.00', 3, '0.66', '966304.14'),
(87, 84, '841528.00', 19, '0.00', '15989032.00'),
(88, 114, '931145.00', 7, '1.00', '0.00'),
(88, 77, '601216.00', 1, '0.13', '601216.00'),
(89, 52, '432094.00', 4, '0.17', '1728376.00'),
(89, 137, '963034.00', 1, '0.00', '963034.00'),
(90, 135, '671988.00', 2, '0.04', '1343976.00'),
(90, 142, '751995.00', 2, '0.45', '1503990.00'),
(90, 28, '944060.00', 5, '0.00', '4720300.00'),
(90, 110, '637236.00', 7, '0.00', '4460652.00'),
(91, 18, '609928.00', 87, '1.00', '0.00'),
(91, 148, '928555.00', 64, '0.40', '59427520.00'),
(91, 44, '448921.00', 2, '0.00', '897842.00'),
(91, 107, '721119.00', 2, '0.00', '1442238.00'),
(91, 30, '465439.00', 35, '0.00', '16290365.00'),
(92, 102, '824369.00', 5, '0.57', '1772393.35'),
(92, 90, '384764.00', 15, '0.00', '5771460.00'),
(92, 143, '497511.00', 1, '0.00', '497511.00'),
(92, 80, '822932.00', 1, '0.46', '822932.00'),
(93, 90, '384764.00', 13, '0.00', '5001932.00'),
(93, 42, '724880.00', 18, '0.00', '13047840.00'),
(93, 31, '971319.00', 15, '0.00', '14569785.00'),
(93, 30, '465439.00', 3, '0.00', '1396317.00'),
(94, 14, '852823.00', 5, '0.00', '4264115.00'),
(94, 94, '412046.00', 70, '0.50', '14421610.00'),
(94, 148, '928555.00', 5, '0.40', '4642775.00'),
(95, 46, '857089.00', 3, '0.69', '797092.77'),
(95, 120, '553966.00', 2, '0.00', '1107932.00'),
(95, 63, '872311.00', 10, '0.11', '8723110.00'),
(95, 63, '872311.00', 4, '0.11', '3489244.00'),
(96, 45, '996415.00', 1, '0.00', '996415.00'),
(96, 135, '671988.00', 6, '0.04', '4031928.00'),
(96, 46, '857089.00', 4, '0.69', '1062790.36'),
(96, 17, '947357.00', 4, '0.66', '1288405.52'),
(97, 3, '883619.00', 6, '0.73', '1431462.78'),
(97, 126, '815782.00', 8, '0.02', '6526256.00'),
(97, 49, '681512.00', 36, '0.00', '24534432.00'),
(98, 109, '984958.00', 1, '0.25', '984958.00'),
(98, 67, '974666.00', 13, '0.00', '12670658.00'),
(98, 54, '551073.00', 6, '0.60', '1322575.20'),
(98, 6, '910369.00', 1, '0.91', '81933.21'),
(98, 33, '787346.00', 9, '0.28', '7086114.00'),
(99, 128, '955807.00', 13, '0.00', '12425491.00'),
(99, 91, '775339.00', 2, '0.03', '1550678.00'),
(99, 42, '724880.00', 2, '0.00', '1449760.00'),
(99, 84, '841528.00', 51, '0.00', '42917928.00'),
(100, 130, '935606.00', 9, '0.02', '8420454.00'),
(100, 80, '822932.00', 1, '0.46', '822932.00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_method_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `card_number` bigint(20) DEFAULT NULL,
  `due_date` datetime NOT NULL,
  `total_amount` decimal(12,2) NOT NULL,
  `status` enum('Submitted','Completed','Canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Submitted',
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_method_id`, `order_id`, `card_number`, `due_date`, `total_amount`, `status`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4, 1, 5356247100042502, '2020-01-11 15:37:19', '62254601.80', 'Submitted', '2', '2020-01-10 08:37:19', '2020-01-10 08:37:19', NULL),
(2, 2, 2, 4346433548693, '2020-01-11 15:46:58', '39273725.60', 'Canceled', '1', '2020-01-10 08:46:58', '2020-01-10 08:46:58', NULL),
(3, 1, 3, 4916126235636956, '2020-01-11 15:46:59', '24420158.26', 'Submitted', '20', '2020-01-10 08:46:59', '2020-01-10 08:46:59', NULL),
(4, 1, 4, 4929501784330, '2020-01-11 15:46:59', '140016809.00', 'Completed', '1', '2020-01-10 08:46:59', '2020-01-10 08:46:59', NULL),
(5, 1, 5, 5364079593873576, '2020-01-11 15:47:00', '47957505.00', 'Submitted', '19', '2020-01-10 08:47:00', '2020-01-10 08:47:00', NULL),
(6, 1, 6, 5417048240117346, '2020-01-11 15:47:00', '84358373.42', 'Submitted', '14', '2020-01-10 08:47:00', '2020-01-10 08:47:00', NULL),
(7, 1, 7, 5245502334168266, '2020-01-11 15:47:01', '65506857.00', 'Completed', '17', '2020-01-10 08:47:01', '2020-01-10 08:47:01', NULL),
(8, 2, 8, 2720846230654163, '2020-01-11 15:47:01', '28332649.20', 'Canceled', '4', '2020-01-10 08:47:01', '2020-01-10 08:47:01', NULL),
(9, 3, 9, 4485900545561844, '2020-01-11 15:47:02', '60457630.09', 'Completed', '16', '2020-01-10 08:47:02', '2020-01-10 08:47:02', NULL),
(10, 2, 10, 5196403168163011, '2020-01-11 15:47:02', '32148009.00', 'Canceled', '19', '2020-01-10 08:47:02', '2020-01-10 08:47:02', NULL),
(11, 3, 11, 5522892632383855, '2020-01-11 15:47:03', '17683907.76', 'Submitted', '13', '2020-01-10 08:47:03', '2020-01-10 08:47:03', NULL),
(12, 4, 12, 346482216776362, '2020-01-11 15:47:03', '130483520.00', 'Submitted', '1', '2020-01-10 08:47:03', '2020-01-10 08:47:03', NULL),
(13, 3, 13, 2720003431277614, '2020-01-11 15:47:03', '92023600.00', 'Completed', '14', '2020-01-10 08:47:03', '2020-01-10 08:47:03', NULL),
(14, 4, 14, 4532785961229254, '2020-01-11 15:47:04', '9345260.83', 'Canceled', '14', '2020-01-10 08:47:04', '2020-01-10 08:47:04', NULL),
(15, 5, 15, 2615056918410908, '2020-01-11 15:47:04', '11405268.00', 'Canceled', '19', '2020-01-10 08:47:04', '2020-01-10 08:47:04', NULL),
(16, 3, 16, 2221902649810427, '2020-01-11 15:47:05', '78929377.00', 'Completed', '11', '2020-01-10 08:47:05', '2020-01-10 08:47:05', NULL),
(17, 4, 17, 2720216616093982, '2020-01-11 15:47:06', '52667570.28', 'Completed', '18', '2020-01-10 08:47:06', '2020-01-10 08:47:06', NULL),
(18, 1, 18, 2342973093008077, '2020-01-11 15:47:06', '75293778.45', 'Canceled', '16', '2020-01-10 08:47:06', '2020-01-10 08:47:06', NULL),
(19, 3, 19, 4539515454637231, '2020-01-11 15:47:06', '27538417.61', 'Completed', '3', '2020-01-10 08:47:06', '2020-01-10 08:47:06', NULL),
(20, 5, 20, 6011139443646153, '2020-01-11 15:47:07', '71499918.00', 'Completed', '13', '2020-01-10 08:47:07', '2020-01-10 08:47:07', NULL),
(21, 5, 21, 6011416543741971, '2020-01-11 15:47:08', '40700038.56', 'Completed', '10', '2020-01-10 08:47:08', '2020-01-10 08:47:08', NULL),
(22, 5, 22, 4485996760564174, '2020-01-11 15:47:08', '35595641.00', 'Canceled', '16', '2020-01-10 08:47:08', '2020-01-10 08:47:08', NULL),
(23, 5, 23, 2221115621686307, '2020-01-11 15:47:08', '148825317.00', 'Canceled', '10', '2020-01-10 08:47:08', '2020-01-10 08:47:08', NULL),
(24, 2, 24, 4024007127615390, '2020-01-11 15:47:09', '25674652.00', 'Submitted', '1', '2020-01-10 08:47:09', '2020-01-10 08:47:09', NULL),
(25, 1, 25, 4916547470781662, '2020-01-11 15:47:09', '17096352.00', 'Canceled', '20', '2020-01-10 08:47:09', '2020-01-10 08:47:09', NULL),
(26, 3, 26, 4716617027168655, '2020-01-11 15:47:10', '95252063.00', 'Canceled', '6', '2020-01-10 08:47:10', '2020-01-10 08:47:10', NULL),
(27, 4, 27, 6011181568317202, '2020-01-11 15:47:11', '68889097.00', 'Completed', '5', '2020-01-10 08:47:11', '2020-01-10 08:47:11', NULL),
(28, 1, 28, 5323290861569818, '2020-01-11 15:47:11', '30538407.76', 'Canceled', '13', '2020-01-10 08:47:11', '2020-01-10 08:47:11', NULL),
(29, 5, 29, 4916575407790548, '2020-01-11 15:47:12', '28525431.44', 'Canceled', '7', '2020-01-10 08:47:12', '2020-01-10 08:47:12', NULL),
(30, 5, 30, 6011150271197599, '2020-01-11 15:47:12', '10895518.99', 'Canceled', '18', '2020-01-10 08:47:12', '2020-01-10 08:47:12', NULL),
(31, 4, 31, 5208610370029642, '2020-01-11 15:47:13', '53848368.00', 'Completed', '6', '2020-01-10 08:47:13', '2020-01-10 08:47:13', NULL),
(32, 5, 32, 2221105444095950, '2020-01-11 15:47:13', '3497675.00', 'Canceled', '19', '2020-01-10 08:47:13', '2020-01-10 08:47:13', NULL),
(33, 1, 33, 4532632589374387, '2020-01-11 15:47:13', '59106312.00', 'Completed', '13', '2020-01-10 08:47:13', '2020-01-10 08:47:13', NULL),
(34, 2, 34, 4916532673400, '2020-01-11 15:47:13', '33244426.50', 'Canceled', '12', '2020-01-10 08:47:13', '2020-01-10 08:47:13', NULL),
(35, 3, 35, 5289648093622758, '2020-01-11 15:47:14', '22241688.60', 'Completed', '13', '2020-01-10 08:47:14', '2020-01-10 08:47:14', NULL),
(36, 5, 36, 4556831848704753, '2020-01-11 15:47:14', '6571666.00', 'Submitted', '14', '2020-01-10 08:47:14', '2020-01-10 08:47:14', NULL),
(37, 5, 37, 4539255943376717, '2020-01-11 15:47:15', '59680762.46', 'Submitted', '4', '2020-01-10 08:47:15', '2020-01-10 08:47:15', NULL),
(38, 2, 38, 4716606383717635, '2020-01-11 15:47:15', '31722557.00', 'Canceled', '4', '2020-01-10 08:47:15', '2020-01-10 08:47:15', NULL),
(39, 2, 39, 2221004141708157, '2020-01-11 15:47:16', '47246757.00', 'Completed', '20', '2020-01-10 08:47:16', '2020-01-10 08:47:16', NULL),
(40, 5, 40, 4024007131980269, '2020-01-11 15:47:17', '101386844.00', 'Canceled', '12', '2020-01-10 08:47:17', '2020-01-10 08:47:17', NULL),
(41, 4, 41, 349946897269548, '2020-01-11 15:47:17', '5850714.02', 'Completed', '15', '2020-01-10 08:47:17', '2020-01-10 08:47:17', NULL),
(42, 5, 42, 5328287817754796, '2020-01-11 15:47:18', '67153686.43', 'Submitted', '19', '2020-01-10 08:47:18', '2020-01-10 08:47:18', NULL),
(43, 2, 43, 2221882702070434, '2020-01-11 15:47:18', '63805658.00', 'Submitted', '18', '2020-01-10 08:47:18', '2020-01-10 08:47:18', NULL),
(44, 2, 44, 5491826359304113, '2020-01-11 15:47:19', '11024434.65', 'Submitted', '18', '2020-01-10 08:47:19', '2020-01-10 08:47:19', NULL),
(45, 2, 45, 4556241782085187, '2020-01-11 15:47:19', '18690204.00', 'Submitted', '14', '2020-01-10 08:47:19', '2020-01-10 08:47:19', NULL),
(46, 2, 46, 4539355870718624, '2020-01-11 15:47:19', '1119270.26', 'Submitted', '4', '2020-01-10 08:47:19', '2020-01-10 08:47:19', NULL),
(47, 3, 47, 4485340296695543, '2020-01-11 15:47:20', '22588168.00', 'Canceled', '20', '2020-01-10 08:47:20', '2020-01-10 08:47:20', NULL),
(48, 3, 48, 4556880276776, '2020-01-11 15:47:20', '40537488.00', 'Canceled', '10', '2020-01-10 08:47:20', '2020-01-10 08:47:20', NULL),
(49, 3, 49, 341398007022607, '2020-01-11 15:47:21', '10902867.00', 'Completed', '5', '2020-01-10 08:47:21', '2020-01-10 08:47:21', NULL),
(50, 4, 50, 4278769593579854, '2020-01-11 15:47:21', '74089180.68', 'Completed', '6', '2020-01-10 08:47:21', '2020-01-10 08:47:21', NULL),
(51, 3, 51, 4716171816959, '2020-01-11 15:47:22', '10865195.72', 'Canceled', '20', '2020-01-10 08:47:22', '2020-01-10 08:47:22', NULL),
(52, 2, 52, 5379449853101898, '2020-01-11 15:47:22', '3147835.00', 'Canceled', '5', '2020-01-10 08:47:22', '2020-01-10 08:47:22', NULL),
(53, 5, 53, 4539507666218579, '2020-01-11 15:47:23', '11408367.79', 'Submitted', '17', '2020-01-10 08:47:23', '2020-01-10 08:47:23', NULL),
(54, 4, 54, 4485577390734, '2020-01-11 15:47:23', '7770552.00', 'Canceled', '8', '2020-01-10 08:47:23', '2020-01-10 08:47:23', NULL),
(55, 4, 55, 2615654353574046, '2020-01-11 15:47:23', '11056390.00', 'Completed', '4', '2020-01-10 08:47:23', '2020-01-10 08:47:23', NULL),
(56, 3, 56, 4485327691308, '2020-01-11 15:47:24', '22767299.00', 'Submitted', '13', '2020-01-10 08:47:24', '2020-01-10 08:47:24', NULL),
(57, 3, 57, 2497399664899889, '2020-01-11 15:47:24', '19522802.47', 'Submitted', '17', '2020-01-10 08:47:24', '2020-01-10 08:47:24', NULL),
(58, 5, 58, 5282833812631036, '2020-01-11 15:47:25', '20501734.88', 'Submitted', '17', '2020-01-10 08:47:25', '2020-01-10 08:47:25', NULL),
(59, 5, 59, 342776821527845, '2020-01-11 15:47:25', '43755986.00', 'Canceled', '12', '2020-01-10 08:47:25', '2020-01-10 08:47:25', NULL),
(60, 3, 60, 5217355276221302, '2020-01-11 15:47:26', '41117485.00', 'Canceled', '8', '2020-01-10 08:47:26', '2020-01-10 08:47:26', NULL),
(61, 4, 61, 340190975005370, '2020-01-11 15:47:27', '12910728.00', 'Completed', '2', '2020-01-10 08:47:27', '2020-01-10 08:47:27', NULL),
(62, 2, 62, 374691551400777, '2020-01-11 15:47:27', '44649752.00', 'Submitted', '3', '2020-01-10 08:47:27', '2020-01-10 08:47:27', NULL),
(63, 5, 63, 2305004267153690, '2020-01-11 15:47:27', '12974823.89', 'Canceled', '10', '2020-01-10 08:47:27', '2020-01-10 08:47:27', NULL),
(64, 2, 64, 6011238549482529, '2020-01-11 15:47:28', '21819147.22', 'Submitted', '1', '2020-01-10 08:47:28', '2020-01-10 08:47:28', NULL),
(65, 1, 65, 6011110939525904, '2020-01-11 15:47:28', '16115643.00', 'Canceled', '11', '2020-01-10 08:47:28', '2020-01-10 08:47:28', NULL),
(66, 2, 66, 4532002690938217, '2020-01-11 15:47:29', '35555788.00', 'Submitted', '9', '2020-01-10 08:47:29', '2020-01-10 08:47:29', NULL),
(67, 3, 67, 5357178049236237, '2020-01-11 15:47:29', '1027989.23', 'Submitted', '17', '2020-01-10 08:47:29', '2020-01-10 08:47:29', NULL),
(68, 3, 68, 372418580115446, '2020-01-11 15:47:29', '20726799.00', 'Canceled', '17', '2020-01-10 08:47:29', '2020-01-10 08:47:29', NULL),
(69, 4, 69, 4519222351913, '2020-01-11 15:47:30', '11177868.90', 'Submitted', '15', '2020-01-10 08:47:30', '2020-01-10 08:47:30', NULL),
(70, 1, 70, 2458466026803516, '2020-01-11 15:47:30', '38841631.25', 'Submitted', '13', '2020-01-10 08:47:30', '2020-01-10 08:47:30', NULL),
(71, 5, 71, 4716675089501403, '2020-01-11 15:47:31', '23639903.00', 'Completed', '12', '2020-01-10 08:47:31', '2020-01-10 08:47:31', NULL),
(72, 1, 72, 6011927927468700, '2020-01-11 15:47:31', '23664254.80', 'Canceled', '8', '2020-01-10 08:47:31', '2020-01-10 08:47:31', NULL),
(73, 5, 73, 2412004072280456, '2020-01-11 15:47:32', '19162754.00', 'Canceled', '7', '2020-01-10 08:47:32', '2020-01-10 08:47:32', NULL),
(74, 3, 74, 4532404239308649, '2020-01-11 15:47:32', '16606827.00', 'Submitted', '6', '2020-01-10 08:47:32', '2020-01-10 08:47:32', NULL),
(75, 5, 75, 4024007118772176, '2020-01-11 15:47:33', '12247236.76', 'Submitted', '5', '2020-01-10 08:47:33', '2020-01-10 08:47:33', NULL),
(76, 5, 76, 4916960254194, '2020-01-11 15:47:33', '15430701.00', 'Completed', '7', '2020-01-10 08:47:33', '2020-01-10 08:47:33', NULL),
(77, 5, 77, 4024007137114103, '2020-01-11 15:47:33', '31970343.00', 'Submitted', '4', '2020-01-10 08:47:33', '2020-01-10 08:47:33', NULL),
(78, 1, 78, 4532342004417767, '2020-01-11 15:47:34', '14170070.00', 'Completed', '18', '2020-01-10 08:47:34', '2020-01-10 08:47:34', NULL),
(79, 1, 79, 2437907624941378, '2020-01-11 15:47:34', '50998788.00', 'Completed', '19', '2020-01-10 08:47:34', '2020-01-10 08:47:34', NULL),
(80, 1, 80, 2643432727637997, '2020-01-11 15:47:35', '46328905.00', 'Canceled', '19', '2020-01-10 08:47:35', '2020-01-10 08:47:35', NULL),
(81, 2, 81, 5543431489482968, '2020-01-11 15:47:35', '6806939.58', 'Submitted', '7', '2020-01-10 08:47:35', '2020-01-10 08:47:35', NULL),
(82, 3, 82, 4916867387034447, '2020-01-11 15:47:36', '7013578.00', 'Completed', '14', '2020-01-10 08:47:36', '2020-01-10 08:47:36', NULL),
(83, 3, 83, 6011233541779576, '2020-01-11 15:47:36', '17177594.07', 'Submitted', '8', '2020-01-10 08:47:36', '2020-01-10 08:47:36', NULL),
(84, 4, 84, 2570464489559025, '2020-01-11 15:47:37', '20712572.16', 'Submitted', '10', '2020-01-10 08:47:37', '2020-01-10 08:47:37', NULL),
(85, 4, 85, 4532962520583071, '2020-01-11 15:47:37', '5761678.52', 'Submitted', '17', '2020-01-10 08:47:37', '2020-01-10 08:47:37', NULL),
(86, 5, 86, 4556973395979345, '2020-01-11 15:47:37', '28721003.14', 'Submitted', '2', '2020-01-10 08:47:37', '2020-01-10 08:47:37', NULL),
(87, 4, 87, 4916398716540458, '2020-01-11 15:47:38', '15989032.00', 'Canceled', '19', '2020-01-10 08:47:38', '2020-01-10 08:47:38', NULL),
(88, 3, 88, 373003115045646, '2020-01-11 15:47:38', '601216.00', 'Completed', '4', '2020-01-10 08:47:38', '2020-01-10 08:47:38', NULL),
(89, 5, 89, 6011682547066760, '2020-01-11 15:47:38', '2691410.00', 'Completed', '1', '2020-01-10 08:47:38', '2020-01-10 08:47:38', NULL),
(90, 5, 90, 379636406104830, '2020-01-11 15:47:39', '12028918.00', 'Completed', '16', '2020-01-10 08:47:39', '2020-01-10 08:47:39', NULL),
(91, 5, 91, 4485474335758, '2020-01-11 15:47:39', '78057965.00', 'Completed', '20', '2020-01-10 08:47:39', '2020-01-10 08:47:39', NULL),
(92, 1, 92, 2310168601611581, '2020-01-11 15:47:40', '8864296.35', 'Completed', '19', '2020-01-10 08:47:40', '2020-01-10 08:47:40', NULL),
(93, 1, 93, 2720885341653763, '2020-01-11 15:47:40', '34015874.00', 'Completed', '4', '2020-01-10 08:47:40', '2020-01-10 08:47:40', NULL),
(94, 3, 94, 341545468434636, '2020-01-11 15:47:41', '23328500.00', 'Submitted', '11', '2020-01-10 08:47:41', '2020-01-10 08:47:41', NULL),
(95, 4, 95, 4532915059180, '2020-01-11 15:47:41', '14117378.77', 'Completed', '6', '2020-01-10 08:47:41', '2020-01-10 08:47:41', NULL),
(96, 4, 96, 6011102937216214, '2020-01-11 15:47:42', '7379538.88', 'Canceled', '7', '2020-01-10 08:47:42', '2020-01-10 08:47:42', NULL),
(97, 3, 97, 4744598176831, '2020-01-11 15:47:42', '32492150.78', 'Completed', '10', '2020-01-10 08:47:42', '2020-01-10 08:47:42', NULL),
(98, 1, 98, 5130098043548532, '2020-01-11 15:47:43', '22146238.41', 'Canceled', '3', '2020-01-10 08:47:43', '2020-01-10 08:47:43', NULL),
(99, 1, 99, 4539850107411, '2020-01-11 15:47:44', '58343857.00', 'Canceled', '19', '2020-01-10 08:47:44', '2020-01-10 08:47:44', NULL),
(100, 5, 100, 2221379752957396, '2020-01-11 15:47:44', '9243386.00', 'Submitted', '2', '2020-01-10 08:47:44', '2020-01-10 08:47:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'MasterCard', '12', '2020-01-10 08:37:08', '2020-01-10 08:37:08', NULL),
(2, 'Visa', '4', '2020-01-10 08:37:08', '2020-01-10 08:37:08', NULL),
(3, 'MasterCard', '20', '2020-01-10 08:37:08', '2020-01-10 08:37:08', NULL),
(4, 'Visa', '6', '2020-01-10 08:37:08', '2020-01-10 08:37:08', NULL),
(5, 'Visa', '20', '2020-01-10 08:37:08', '2020-01-10 08:37:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'position.*', '1', '2020-01-10 08:37:02', '2020-01-10 08:37:02', NULL),
(2, 'position.data', '3', '2020-01-10 08:37:02', '2020-01-10 08:37:02', NULL),
(3, 'position.show', '2', '2020-01-10 08:37:02', '2020-01-10 08:37:02', NULL),
(4, 'position.post', '14', '2020-01-10 08:37:02', '2020-01-10 08:37:02', NULL),
(5, 'position.destroy', '1', '2020-01-10 08:37:02', '2020-01-10 08:37:02', NULL),
(6, 'employee.*', '19', '2020-01-10 08:37:02', '2020-01-10 08:37:02', NULL),
(7, 'employee.data', '5', '2020-01-10 08:37:02', '2020-01-10 08:37:02', NULL),
(8, 'employee.show', '11', '2020-01-10 08:37:02', '2020-01-10 08:37:02', NULL),
(9, 'employee.post', '16', '2020-01-10 08:37:02', '2020-01-10 08:37:02', NULL),
(10, 'employee.destroy', '16', '2020-01-10 08:37:02', '2020-01-10 08:37:02', NULL),
(11, 'role.*', '10', '2020-01-10 08:37:02', '2020-01-10 08:37:02', NULL),
(12, 'role.data', '5', '2020-01-10 08:37:02', '2020-01-10 08:37:02', NULL),
(13, 'role.show', '7', '2020-01-10 08:37:02', '2020-01-10 08:37:02', NULL),
(14, 'role.post', '20', '2020-01-10 08:37:02', '2020-01-10 08:37:02', NULL),
(15, 'role.destroy', '1', '2020-01-10 08:37:02', '2020-01-10 08:37:02', NULL),
(16, 'permission.*', '1', '2020-01-10 08:37:02', '2020-01-10 08:37:02', NULL),
(17, 'permission.data', '12', '2020-01-10 08:37:02', '2020-01-10 08:37:02', NULL),
(18, 'permission.show', '9', '2020-01-10 08:37:02', '2020-01-10 08:37:02', NULL),
(19, 'permission.post', '2', '2020-01-10 08:37:03', '2020-01-10 08:37:03', NULL),
(20, 'permission.destroy', '3', '2020-01-10 08:37:03', '2020-01-10 08:37:03', NULL),
(21, 'customer.*', '10', '2020-01-10 08:37:03', '2020-01-10 08:37:03', NULL),
(22, 'customer.data', '3', '2020-01-10 08:37:03', '2020-01-10 08:37:03', NULL),
(23, 'customer.show', '15', '2020-01-10 08:37:03', '2020-01-10 08:37:03', NULL),
(24, 'customer.post', '12', '2020-01-10 08:37:03', '2020-01-10 08:37:03', NULL),
(25, 'customer.destroy', '9', '2020-01-10 08:37:03', '2020-01-10 08:37:03', NULL),
(26, 'item-type.*', '12', '2020-01-10 08:37:03', '2020-01-10 08:37:03', NULL),
(27, 'item-type.data', '10', '2020-01-10 08:37:03', '2020-01-10 08:37:03', NULL),
(28, 'item-type.show', '8', '2020-01-10 08:37:03', '2020-01-10 08:37:03', NULL),
(29, 'item-type.post', '12', '2020-01-10 08:37:03', '2020-01-10 08:37:03', NULL),
(30, 'item-type.destroy', '11', '2020-01-10 08:37:03', '2020-01-10 08:37:03', NULL),
(31, 'item.*', '1', '2020-01-10 08:37:03', '2020-01-10 08:37:03', NULL),
(32, 'item.data', '15', '2020-01-10 08:37:03', '2020-01-10 08:37:03', NULL),
(33, 'item.show', '10', '2020-01-10 08:37:03', '2020-01-10 08:37:03', NULL),
(34, 'item.post', '10', '2020-01-10 08:37:03', '2020-01-10 08:37:03', NULL),
(35, 'item.destroy', '18', '2020-01-10 08:37:03', '2020-01-10 08:37:03', NULL),
(36, 'item-history.*', '17', '2020-01-10 08:37:03', '2020-01-10 08:37:03', NULL),
(37, 'item-history.data', '3', '2020-01-10 08:37:03', '2020-01-10 08:37:03', NULL),
(38, 'item-history.show', '16', '2020-01-10 08:37:04', '2020-01-10 08:37:04', NULL),
(39, 'item-history.post', '1', '2020-01-10 08:37:04', '2020-01-10 08:37:04', NULL),
(40, 'item-history.destroy', '6', '2020-01-10 08:37:04', '2020-01-10 08:37:04', NULL),
(41, 'order.*', '3', '2020-01-10 08:37:04', '2020-01-10 08:37:04', NULL),
(42, 'order.data', '8', '2020-01-10 08:37:04', '2020-01-10 08:37:04', NULL),
(43, 'order.show', '13', '2020-01-10 08:37:04', '2020-01-10 08:37:04', NULL),
(44, 'order.post', '12', '2020-01-10 08:37:04', '2020-01-10 08:37:04', NULL),
(45, 'order.destroy', '19', '2020-01-10 08:37:04', '2020-01-10 08:37:04', NULL),
(46, 'payment-method.*', '4', '2020-01-10 08:37:04', '2020-01-10 08:37:04', NULL),
(47, 'payment-method.data', '11', '2020-01-10 08:37:04', '2020-01-10 08:37:04', NULL),
(48, 'payment-method.show', '13', '2020-01-10 08:37:04', '2020-01-10 08:37:04', NULL),
(49, 'payment-method.post', '12', '2020-01-10 08:37:04', '2020-01-10 08:37:04', NULL),
(50, 'payment-method.destroy', '4', '2020-01-10 08:37:04', '2020-01-10 08:37:04', NULL),
(51, 'payment.*', '13', '2020-01-10 08:37:04', '2020-01-10 08:37:04', NULL),
(52, 'payment.data', '9', '2020-01-10 08:37:04', '2020-01-10 08:37:04', NULL),
(53, 'payment.show', '1', '2020-01-10 08:37:04', '2020-01-10 08:37:04', NULL),
(54, 'payment.post', '11', '2020-01-10 08:37:04', '2020-01-10 08:37:04', NULL),
(55, 'payment.destroy', '7', '2020-01-10 08:37:04', '2020-01-10 08:37:04', NULL),
(56, 'employee-register.*', '1', '2020-01-11 03:54:42', '2020-01-11 03:54:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `name`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Health Services Manager', '1', '2020-01-10 08:37:01', '2020-01-11 00:22:49', NULL),
(2, 'Automotive Glass Installers', '1', '2020-01-10 08:37:01', '2020-01-11 00:00:01', NULL),
(3, 'Signal Repairer OR Track Switch Repairer', '1', '2020-01-10 08:37:01', '2020-01-10 08:37:01', NULL),
(4, 'Driver-Sales Worker', '6', '2020-01-10 08:37:01', '2020-01-10 08:37:01', NULL),
(5, 'Computer Operator', '3', '2020-01-10 08:37:01', '2020-01-10 08:37:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Operator', '1', '2020-01-10 08:37:02', '2020-01-10 09:12:08', NULL),
(2, 'Admin', '1', '2020-01-10 08:37:02', '2020-01-10 09:11:39', NULL),
(3, 'Root', '1', '2020-01-10 09:16:28', '2020-01-10 09:16:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`role_id`, `permission_id`) VALUES
(1, 41),
(3, 41),
(3, 31),
(3, 21),
(3, 26),
(3, 36),
(3, 51),
(3, 16),
(3, 56),
(3, 1),
(3, 41),
(3, 21),
(3, 41),
(2, 31),
(2, 31),
(2, 11),
(2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `var` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`var`, `value`) VALUES
('menuPermission', '{\"menu\":[\"position.\",\"employee.\",\"role.\",\"permission.\",\"customer.\",\"item-type.\",\"item.\",\"item-history.\",\"order.\",\"payment-method.\",\"payment.\"],\"permission\":[\"*\",\"data\",\"show\",\"post\",\"destroy\"]}'),
('gender', '[\"Male\",\"Female\"]'),
('religion', '[\"Islam\",\"Kristen\",\"Hindu\",\"Budha\",\"Konghucu\"]'),
('employee', '{\"status\":[\"Not Active\",\"Active\"]}'),
('customer', '{\"status\":[\"Default\",\"Basic\",\"Premium\"],\"allow\":[\"Basic\",\"Premium\"]}'),
('payment', '{\"status\":[\"Submitted\",\"Completed\",\"Canceled\"],\"allow\":[\"Submitted\",\"Completed\"],\"default\":{\"method\":\"Cash\",\"status\":\"Submitted\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_position_id_foreign` (`position_id`);

--
-- Indexes for table `employee_has_roles`
--
ALTER TABLE `employee_has_roles`
  ADD KEY `employee_has_roles_employee_id_foreign` (`employee_id`),
  ADD KEY `employee_has_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_item_type_id_foreign` (`item_type_id`);

--
-- Indexes for table `item_histories`
--
ALTER TABLE `item_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_histories_item_id_foreign` (`item_id`);

--
-- Indexes for table `item_types`
--
ALTER TABLE `item_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `order_has_items`
--
ALTER TABLE `order_has_items`
  ADD KEY `order_has_items_order_id_foreign` (`order_id`),
  ADD KEY `order_has_items_item_id_foreign` (`item_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `payments_order_id_foreign` (`order_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`),
  ADD KEY `role_has_permissions_permission_id_foreign` (`permission_id`);

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
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
--
-- AUTO_INCREMENT for table `item_histories`
--
ALTER TABLE `item_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
--
-- AUTO_INCREMENT for table `item_types`
--
ALTER TABLE `item_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employee_has_roles`
--
ALTER TABLE `employee_has_roles`
  ADD CONSTRAINT `employee_has_roles_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_item_type_id_foreign` FOREIGN KEY (`item_type_id`) REFERENCES `item_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item_histories`
--
ALTER TABLE `item_histories`
  ADD CONSTRAINT `item_histories_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_has_items`
--
ALTER TABLE `order_has_items`
  ADD CONSTRAINT `order_has_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_has_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
