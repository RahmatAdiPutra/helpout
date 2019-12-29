-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2019 at 12:11 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
(1, NULL, 'Customer', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 'Default', NULL, NULL, '2019-12-27 19:18:45', '2019-12-27 19:18:45', NULL),
(2, 'e0112b55-2d06-3cb4-807f-1a42faefde24', 'Jared Cartwright', 'female', '2002-02-05', 'Islam', 'Port Pamelachester', '8542 Hilario Landing Apt. 232\nMatteoberg, ME 31978-5354', '1-313-523-4424 x63690', '87856858becker.furman@yahoo.com', NULL, NULL, '6d4034b565b32f2a03dbf624fa22160f5bdc88a96ff0694c10fe85c6d19227c7', 'Basic', NULL, '9', '2019-12-27 19:18:45', '2019-12-27 19:18:45', NULL),
(3, '3b6fc5a7-a9f3-3079-a333-60a47a9815a1', 'Elizabeth Stiedemann', 'female', '1992-07-03', 'Kristen', 'West Amelyport', '24792 Ferry Bypass\nLake Alaina, FL 31291', '+1-965-664-9402', '3maximillia.walter@gmail.com', NULL, NULL, 'e37f2df8337fb19b2d9ff71eeeb8829f7a23c700b40c33c9e756d164df802f49', 'Basic', NULL, '12', '2019-12-27 19:18:45', '2019-12-27 19:18:45', NULL),
(4, '2047b05b-d459-3ee4-a474-124255680a91', 'Jamarcus Barrows PhD', 'male', '1999-12-16', 'Hindu', 'Osvaldoview', '6060 Arielle Valley Suite 980\nPort Mandy, UT 48679-9399', '+1-318-296-6399', '536805025bryana.swaniawski@hotmail.com', NULL, NULL, 'fefbd697d6827d294b4f74b4b405a09eb4af4f9f00257dc6d522e3f098748b4d', 'Basic', NULL, '6', '2019-12-27 19:18:45', '2019-12-27 19:18:45', NULL),
(5, 'd7099b63-1585-324c-bdd6-4dfd088c27af', 'Dr. Okey Weissnat DDS', 'male', '1993-11-03', 'Konghucu', 'Hillfort', '25778 Maryam Dale\nJustinemouth, IN 70199', '338-582-2446 x3487', '699paris.erdman@hotmail.com', NULL, NULL, 'd9aac712609d66377e89c539d61b8df886d4c3f9d8f09ac8c3569e4e428bf14d', 'Premium', NULL, '4', '2019-12-27 19:18:45', '2019-12-27 19:18:45', NULL),
(6, 'f4ce7729-5bdb-3c86-a97c-b987acc33272', 'Eunice Volkman DVM', 'female', '2000-04-19', 'Islam', 'North Jordonmouth', '20190 Rath Oval\nAdamstown, LA 50701', '1-736-727-6033', '3kevin67@hotmail.com', NULL, NULL, '37b3eaea3c2feae0c02fedef22e26d01c4b793fdaea9bfac68eb5d292c0581cc', 'Premium', NULL, '2', '2019-12-27 19:18:45', '2019-12-27 19:18:45', NULL),
(7, '14acda6a-90ea-34a9-a4a2-5810c7cf4b6f', 'Kenny Lind', 'female', '1981-03-18', 'Islam', 'Mabellestad', '15090 Boris Brook Apt. 399\nLake Myriam, OR 07113-9446', '(867) 202-1728 x491', '31755739jamir59@hotmail.com', NULL, NULL, 'c8e4fa7baf7c67a9f67de8109ac36f9f76dee53ff48554eef240527dd4fe0ddd', 'Basic', NULL, '14', '2019-12-27 19:18:45', '2019-12-27 19:18:45', NULL),
(8, '6bcd397b-08fa-34a8-a196-93f3f1a587ff', 'Madison Reinger', 'male', '1999-09-16', 'Hindu', 'Port Conner', '62959 Green Ranch Suite 156\nWest Kian, DE 06991-2455', '(375) 944-8274 x761', '6francisco70@hotmail.com', NULL, NULL, 'af1843726d70a919718e56963a11d45808a12844c4e2257da9d8f6343defcb2b', 'Premium', NULL, '16', '2019-12-27 19:18:45', '2019-12-27 19:18:45', NULL),
(9, '6cf10900-c280-3d9e-93ef-45cea79c1e59', 'Rhett Welch', 'female', '1972-05-09', 'Islam', 'Lake Shaynefurt', '88002 Walker Point\nEast Rocioport, OH 57992-7257', '1-339-589-2769 x113', '4500mike.kassulke@yahoo.com', NULL, NULL, '48adc2b82ad452afc76092e6fbf3bcb487ff1b0e1517d8dfa33911bc14ac17ac', 'Basic', NULL, '2', '2019-12-27 19:18:45', '2019-12-27 19:18:45', NULL),
(10, '41bc348c-7969-3e22-b901-a5da7287d676', 'Elyssa Medhurst', 'male', '2003-10-01', 'Hindu', 'North Florineville', '30763 Jasen Manors\nLake Cleo, MA 28604-8778', '1-243-439-8208 x24406', '7314200gschmitt@yahoo.com', NULL, NULL, '208f582d38bf21b18dee27feba51fbadec8b55b5c33b403e07300ae53e25f3ef', 'Premium', NULL, '2', '2019-12-27 19:18:45', '2019-12-27 19:18:45', NULL),
(11, '36f9f0bc-1ea3-383e-a168-6d7278f26563', 'Taya Koss', 'male', '1998-08-13', 'Konghucu', 'East Laneyton', '87112 Braulio Loop Suite 389\nNew Dakota, WI 39435', '+1-554-317-5650', '9539423jcole@yahoo.com', NULL, NULL, '3c4741b7b83a99b4a88c2c365cdb6f810a98e06d1a1d1c7faf0f1d9662c410be', 'Basic', NULL, '20', '2019-12-27 19:18:45', '2019-12-27 19:18:45', NULL),
(12, 'ac4a3b77-1a28-33e5-84e2-2829ed59fb90', 'Shaun Hill', 'male', '1990-02-23', 'Budha', 'Hilpertland', '38365 Lora Passage\nWest Kenside, OK 38083-1502', '1-454-955-6559', '18832ejohnson@gmail.com', NULL, NULL, '17fe1c8da252ef16a0ba0811bb78f8386536f076bd564ae216621576a89d8255', 'Premium', NULL, '18', '2019-12-27 19:18:45', '2019-12-27 19:18:45', NULL),
(13, '4382a7c0-f1d7-334d-8ac7-be2f5832c926', 'Mrs. Anne Gutkowski', 'female', '1989-01-04', 'Islam', 'Strosinstad', '40628 Kenton Stravenue Apt. 013\nNew Euna, ID 12677-6059', '(682) 370-0774 x49601', '85schoen.jordan@hotmail.com', NULL, NULL, 'e252b74cc5efe611a6c288ff857bb54908b4b29d5093157aae63712bd2cc7fc5', 'Basic', NULL, '1', '2019-12-27 19:18:45', '2019-12-27 19:18:45', NULL),
(14, '17bf2f70-9470-3ce0-b13a-df99e3560833', 'Noel Block', 'female', '2019-04-03', 'Hindu', 'Ziemannmouth', '291 Alta Springs Suite 754\nLynchchester, NC 29887-9118', '(591) 646-8734 x64894', '620rossie75@hotmail.com', NULL, NULL, '8664135a642a40b6f731ae506f9c8bae5cdcaeacd15f48096d7f900fb3fe9714', 'Premium', NULL, '13', '2019-12-27 19:18:45', '2019-12-27 19:18:45', NULL),
(15, 'efaf5691-5191-384a-9576-a66a72f2a6de', 'Conor Howell', 'female', '1980-07-19', 'Konghucu', 'Uptonbury', '846 Brown Green Apt. 242\nEast Christianashire, NJ 50411', '264-418-8982 x11956', '1303206west.elvera@gmail.com', NULL, NULL, '491a7588f705b653a746d0a9402b186f5ee85df00d8398531f0cbfc7af712813', 'Premium', NULL, '18', '2019-12-27 19:18:46', '2019-12-27 19:18:46', NULL),
(16, 'f123477c-0e57-33f2-ac22-e7466a41e7fd', 'Rhoda Beatty', 'female', '2014-05-26', 'Budha', 'Hintzville', '8529 Irma Mountain\nColtonland, CO 99010', '1-223-522-8595', '483drice@gmail.com', NULL, NULL, '256d8bc8a667a4a07e9db5dcba3640350311b3cb01a32d5ddbf06acc0e4e8f5e', 'Premium', NULL, '10', '2019-12-27 19:18:46', '2019-12-27 19:18:46', NULL),
(17, 'aaa1fac2-d308-3ed2-907d-ceec9125b5fe', 'Wilber Auer', 'female', '2017-05-06', 'Hindu', 'Pagacland', '91758 Clarabelle Common Suite 392\nLake Dewaynemouth, CO 79633', '1-976-602-5555 x078', '99shany54@yahoo.com', NULL, NULL, '0abf0ef191d6a955ba71cc07848f30107048dd418f85dd9b3fecfbede27e4bfe', 'Basic', NULL, '3', '2019-12-27 19:18:46', '2019-12-27 19:18:46', NULL),
(18, 'bf52b0f5-8eb4-3e71-8cbd-0ff65a8f7591', 'Noemy Walter III', 'male', '1987-08-28', 'Konghucu', 'Jesusview', '9963 Samir Stream\nNew Rogeliofort, NC 07524-5338', '+12069814067', '457harvey.rosie@yahoo.com', NULL, NULL, 'b85b24342ec00a49f27cb34fbd060badccd8ad9fe85d58a38bbcf8386563c355', 'Basic', NULL, '9', '2019-12-27 19:18:46', '2019-12-27 19:18:46', NULL),
(19, 'a76cb86b-5f2a-3bee-a348-fcb99e15739b', 'Mr. Xavier Ledner I', 'male', '1994-11-15', 'Konghucu', 'Schulistberg', '41953 Kaylie Lane Apt. 619\nKemmerstad, WY 95914', '407.344.9435 x6338', '42559151botsford.tiara@hotmail.com', NULL, NULL, '7d2e8cb9fe33db5a175b440d1855b906a04cd9f67e46b564b552d73c3cf3522d', 'Basic', NULL, '20', '2019-12-27 19:18:46', '2019-12-27 19:18:46', NULL),
(20, '2d3fdce5-6dae-30db-be8f-8e1577c40abf', 'Zachery Nolan', 'female', '1976-10-01', 'Kristen', 'Cesarville', '4274 Kshlerin Skyway Apt. 516\nWest Mariah, HI 67385', '237.744.5335 x5465', '8areichert@hotmail.com', NULL, NULL, 'a33857750fe49a1f8432fc04a712d1615de92a8c527b5f8f2f85667aff4685ef', 'Premium', NULL, '5', '2019-12-27 19:18:46', '2019-12-27 19:18:46', NULL),
(21, '7304f5b1-5a10-30a4-808e-0d6c474f4fb1', 'Woodrow Wuckert', 'female', '2011-10-24', 'Konghucu', 'Kuphalton', '56855 Bartell Crest\nWest Edaville, NC 05359', '+18356923137', '141mtrantow@yahoo.com', NULL, NULL, '1b707797eafbc1e113721e4776a484ee440ab47fbe8c09038d2189009ea9e89e', 'Premium', NULL, '5', '2019-12-27 19:18:46', '2019-12-27 19:18:46', NULL),
(22, '38c781d9-b0ae-37cf-a544-ded89d8d89ad', 'Geovanny Medhurst', 'male', '1974-07-16', 'Islam', 'Lake Walterland', '545 Garret Trafficway Apt. 054\nNorth Marcelinaport, ME 45122-0123', '+16607773625', '71raynor.darrel@yahoo.com', NULL, NULL, 'dc44f3a00098578bed133d552ef853b948b3d126db06daa184e22312939406b3', 'Premium', NULL, '5', '2019-12-27 19:18:46', '2019-12-27 19:18:46', NULL),
(23, '4ef0b5cd-313a-3e4e-b6ab-4395fc89dab0', 'Joy Predovic', 'female', '2000-01-09', 'Budha', 'Lake Makaylabury', '6614 Beier Route Apt. 292\nCronamouth, OK 64428-6434', '1-748-327-9697', '9psauer@gmail.com', NULL, NULL, '88e095990e7483eb5ecb8990574e9b38e415e2ea17fceee1a4a9a2f6d7450e99', 'Basic', NULL, '5', '2019-12-27 19:18:46', '2019-12-27 19:18:46', NULL),
(24, '2d32b424-8b58-322b-baa7-c65775ad437a', 'Vernie Nader', 'male', '1996-03-09', 'Budha', 'New Celinefort', '50338 Eleonore Club Apt. 616\nZaneborough, OR 42552-2263', '(519) 429-9279', '6118809bins.nestor@yahoo.com', NULL, NULL, '262390484a862d63169582081adc50dfec515ce8dc2b8def904ecac85b35824e', 'Premium', NULL, '11', '2019-12-27 19:18:46', '2019-12-27 19:18:46', NULL),
(25, '6eeeea33-67e2-3a93-98b0-bc9b3a4f4fc9', 'Lance Wyman Sr.', 'male', '2013-05-01', 'Islam', 'South Mosechester', '9334 Christiana Meadow Apt. 903\nO\'Connerfurt, TX 08557', '921.336.7238', '73726osborne05@gmail.com', NULL, NULL, '0cd9337a57f120414ff33eb2f155dc895235e7a7fe63001121c712e2e28e654d', 'Premium', NULL, '7', '2019-12-27 19:18:46', '2019-12-27 19:18:46', NULL),
(26, '2e978ae7-657a-3dee-bf73-8ce1a8f506b3', 'Kathryn Powlowski', 'male', '2012-01-07', 'Budha', 'Rosenbaumtown', '611 Grimes Canyon Suite 699\nEast Reggie, DC 37537', '+1 (384) 224-7489', '173880hirthe.lera@hotmail.com', NULL, NULL, '1b38857c3fdce6f9b5d0015fdee5bcf666161de667c7a168d56b6cfbe4fd9d45', 'Premium', NULL, '7', '2019-12-27 19:18:46', '2019-12-27 19:18:46', NULL),
(27, 'd1a8cb75-70fb-3cb5-bcd1-c9e104ea1d57', 'Prof. Jamey Kihn PhD', 'male', '1996-08-03', 'Islam', 'Wolfstad', '3690 Alexys Rue\nLake Elizamouth, VA 95684', '+1.380.374.9749', '89429peggie.kirlin@yahoo.com', NULL, NULL, '9a3922d4afe0723bdc390d654e6bee78a7d53c3dfd19403f9a693f4d6e76fafa', 'Premium', NULL, '4', '2019-12-27 19:18:46', '2019-12-27 19:18:46', NULL),
(28, '0988194e-93aa-37c6-8653-757e47868709', 'Eldora Strosin MD', 'male', '2013-04-28', 'Budha', 'New Alberthaview', '14233 Maurine Skyway Apt. 054\nJosieberg, ND 01245', '(389) 219-2086', '2025cartwright.willie@yahoo.com', NULL, NULL, '1e4bf118bde82ca2f38eb90238faa8f8e35bea1d5b94ebee2e4bcb6c03174f68', 'Premium', NULL, '16', '2019-12-27 19:18:46', '2019-12-27 19:18:46', NULL),
(29, '469115dd-633d-3079-9f07-fbfa226874a6', 'Dr. Cesar Harber Jr.', 'female', '1974-09-24', 'Hindu', 'Chandlermouth', '20460 Cayla Lights\nWest Margarettland, CA 63793-4127', '(641) 418-2916 x77256', '54floyd.welch@hotmail.com', NULL, NULL, 'b26ff085cdab3f686e53d9d22f5ec5838f778542325c3e4ecd098c05edc3e463', 'Premium', NULL, '5', '2019-12-27 19:18:46', '2019-12-27 19:18:46', NULL),
(30, '5ed515eb-b63c-3b1b-9ac7-2f2cc737cd9d', 'Jordane Champlin', 'female', '1980-09-04', 'Budha', 'South Adelaton', '1198 Axel Flat\nBernhardberg, SC 13076', '(675) 742-6961 x06941', '379386qlehner@yahoo.com', NULL, NULL, 'f70bf7912349f08b6f0395cd4e284fcd8efef876bf2a0496218581d0e8b3acfa', 'Basic', NULL, '7', '2019-12-27 19:18:46', '2019-12-27 19:18:46', NULL),
(31, '2d11fa3e-b62e-38c4-953a-701ed627ee64', 'Cade Torp', 'female', '1976-05-24', 'Konghucu', 'Marquardtville', '24088 Shyanne Forges Suite 463\nNew Aglaehaven, SD 28720-0591', '368.621.4343 x14772', '532606450nils32@gmail.com', NULL, NULL, 'fb3612c85bb8c144bea935df1f558f0debb2f98bf4273e4a4e8a8bd81cb3da9a', 'Basic', NULL, '7', '2019-12-27 19:18:47', '2019-12-27 19:18:47', NULL),
(32, '1b81affc-9cfb-3730-b801-c7c51f91667f', 'Katlynn Boyle Sr.', 'male', '1984-12-12', 'Budha', 'East Kenyonberg', '658 Cole Orchard Apt. 465\nWest Dameon, SD 68655', '620.961.2429', '86321398laufderhar@yahoo.com', NULL, NULL, '7824fe5ee4efa5fe77e1e5d5da07e175f9bddb77e736f38870c827f973c5eee3', 'Premium', NULL, '3', '2019-12-27 19:18:47', '2019-12-27 19:18:47', NULL),
(33, '03730fbc-4e73-38c3-be12-0674230b4d1e', 'Misty Jacobi', 'female', '2007-09-03', 'Budha', 'Loriland', '7591 Mariela Knoll Suite 725\nEast Yvetteburgh, NM 60178-9401', '526-382-0402 x10274', '853456668izaiah45@hotmail.com', NULL, NULL, '09673fb136ce76c02282cffeed89ce43e8cd1a4517de6f33d0396babcce698b2', 'Premium', NULL, '18', '2019-12-27 19:18:47', '2019-12-27 19:18:47', NULL),
(34, '62f285bd-5791-3331-9974-a1a439e4bdb3', 'Dorothy Lebsack', 'female', '1990-10-23', 'Kristen', 'Johnathanside', '9983 Damien Hill\nSouth Lavon, VT 78481', '+13453876272', '91862035beahan.frederique@gmail.com', NULL, NULL, '81fe895fd3b85e6085a7853b2a77f143213dae2d4158102a109ce77ad31f4453', 'Premium', NULL, '14', '2019-12-27 19:18:47', '2019-12-27 19:18:47', NULL),
(35, '768c053f-f655-3ae5-9efc-aa833df11bf6', 'Aleen Pacocha', 'female', '1977-12-24', 'Kristen', 'New Josephberg', '64667 Beverly Crescent\nNorth Parkerstad, VA 06521-3055', '+1-854-963-7829', '5087conroy.emmie@yahoo.com', NULL, NULL, '2a870a770daef4aafc586f69ce490272baf36420433f0b41dc27406786799fe8', 'Premium', NULL, '1', '2019-12-27 19:18:47', '2019-12-27 19:18:47', NULL),
(36, 'fdfa5e37-b5dd-332b-babe-3f0d111ead1f', 'Unique Dicki', 'female', '1993-10-20', 'Kristen', 'East Lempiton', '57897 Verna Trail\nAlexiechester, VA 06606', '1-339-537-5400', '20tomasa59@yahoo.com', NULL, NULL, '3f98cd834b84b8ab1f7b9d70bcf102be9e2672d5774ca327c2e1c9860dac28da', 'Basic', NULL, '8', '2019-12-27 19:18:47', '2019-12-27 19:18:47', NULL),
(37, 'b1e8d27b-7665-304c-86e6-d83fd1779c1a', 'Magdalen West', 'male', '2005-03-05', 'Islam', 'Joneshaven', '8659 Norris Fords\nBatztown, WI 24237-4106', '(401) 615-4427', '786roselyn.vandervort@yahoo.com', NULL, NULL, '83726f3f71b2c3478a0e4c78ffb623c74b5dd73917110aa50823ee8344f96b91', 'Basic', NULL, '12', '2019-12-27 19:18:47', '2019-12-27 19:18:47', NULL),
(38, '2c45382d-7551-30fe-a0b1-456dbd75ae99', 'Gerry Bayer', 'female', '2013-01-06', 'Islam', 'Farrellview', '348 Labadie Estate Suite 707\nLake Sheldon, IN 75144', '792-668-8189', '4clair16@gmail.com', NULL, NULL, 'b35d62d903728236367cba41a2df554e7aef196b46944a467b21804f78eb7110', 'Basic', NULL, '15', '2019-12-27 19:18:47', '2019-12-27 19:18:47', NULL),
(39, '05b92f5e-d811-3b44-beeb-91b74b65aff0', 'Nola Hamill', 'female', '2002-01-11', 'Konghucu', 'Boylehaven', '44464 Baby Villages\nWest Tomasberg, ME 47196-7133', '1-558-969-5673 x83151', '94leif.turner@yahoo.com', NULL, NULL, '486d40e3304ec61678717f25a89e6b2b7c292c732cf37c94567653b287ce85de', 'Basic', NULL, '1', '2019-12-27 19:18:47', '2019-12-27 19:18:47', NULL),
(40, '1e6ac476-3605-349c-8dc9-d0fd767617f6', 'Rocio Pfeffer', 'male', '1980-10-31', 'Hindu', 'New Devantefort', '776 Fadel Path Apt. 678\nWest Generalborough, IA 72283', '813-280-5457', '176greyson81@gmail.com', NULL, NULL, 'f14b6de721577f41189d71f437bd8a00e0d2b4cee1f12a66b7be020cd9c34720', 'Premium', NULL, '16', '2019-12-27 19:18:47', '2019-12-27 19:18:47', NULL),
(41, '0b095a7f-baf8-3fe8-9707-4a6d2c45f916', 'Camilla Hand', 'male', '1989-03-22', 'Islam', 'Mantefort', '49811 Kenton Fort Suite 295\nLillaview, NH 93918', '358.485.2507', '14136843jbayer@gmail.com', NULL, NULL, '555ccd99edad7cd7bda519bcd9eea64f084032b1271044c52c98b9558464fec6', 'Premium', NULL, '6', '2019-12-27 19:18:47', '2019-12-27 19:18:47', NULL),
(42, '42c8f238-9e41-3459-b211-bda10b27261e', 'Gracie Zieme', 'female', '1991-12-11', 'Budha', 'Emmerichland', '8664 Kristina Drives\nSouth Trystanbury, IL 00482', '(703) 688-1085 x5240', '8011313jany.bode@hotmail.com', NULL, NULL, '7d08429adb1d0da220e705341e4dd7646ad8b9655e9bf37d0e73459501e7fe11', 'Premium', NULL, '4', '2019-12-27 19:18:47', '2019-12-27 19:18:47', NULL),
(43, '990d4b29-bb66-3edc-9fcd-0478a3af6eb4', 'Dr. Jonathan Boyle MD', 'female', '1997-08-30', 'Budha', 'West Harley', '7289 Jenkins Station\nNorth Edmond, NC 88337-8347', '215-878-2133 x6248', '81ian26@yahoo.com', NULL, NULL, 'a3f829bde86dc6d7de85fe5f195dd12fb136f07c3e694ad67e063b29f59b3b8e', 'Premium', NULL, '2', '2019-12-27 19:18:47', '2019-12-27 19:18:47', NULL),
(44, 'd0f2fa08-7ef8-3a99-ac8a-2fd5490640e5', 'Vergie Pollich', 'male', '2014-02-17', 'Kristen', 'New Enoch', '954 Julius River\nDurganland, RI 05685-1689', '1-807-386-8457 x492', '663282akeem.lang@hotmail.com', NULL, NULL, '31ec659fd080f7f16637e258d76f1a0f2dddc06dfe6b75ef89272b1042a283b1', 'Premium', NULL, '17', '2019-12-27 19:18:47', '2019-12-27 19:18:47', NULL),
(45, '21ab879c-7ece-3a7d-a89c-51eb969fe2fd', 'Prof. Liza O\'Reilly Jr.', 'female', '1986-04-15', 'Islam', 'Port Meggiechester', '2240 Lehner Summit\nRetaton, CT 25148', '947.734.0251 x218', '48112marquardt.rasheed@gmail.com', NULL, NULL, 'c4da0945de2530bb19db41d436b2125a468751e71d467f53c2c5de99dd6f9aa9', 'Basic', NULL, '15', '2019-12-27 19:18:47', '2019-12-27 19:18:47', NULL),
(46, 'c62f458c-06ef-3283-93fa-ea4cf8d26f99', 'Chyna Moen', 'male', '1998-01-20', 'Kristen', 'New Haleighbury', '96240 Floy Vista Apt. 484\nBenjamintown, AZ 85483', '429.709.9328', '2959josie.gerhold@gmail.com', NULL, NULL, 'a5cc4db48f5956c7d5b3654e2664e50f43041818ba28583954247eb46dde4992', 'Premium', NULL, '17', '2019-12-27 19:18:47', '2019-12-27 19:18:47', NULL),
(47, '9a703057-ba38-3212-a1c4-7fb1ea300f45', 'Miller Raynor', 'male', '2005-04-01', 'Budha', 'Muhammadmouth', '440 Moen Fords\nBayerborough, AZ 82034-7431', '631.861.9497', '934505helen65@hotmail.com', NULL, NULL, 'b676dc26102eba0bb49d453f446ea5f92ceae3621a94642bd3f8bb4cf32dd60f', 'Premium', NULL, '13', '2019-12-27 19:18:47', '2019-12-27 19:18:47', NULL),
(48, '57a2c3f6-4408-3f3a-9370-b886c7a36b13', 'Dr. Aiden Moore', 'female', '1975-02-01', 'Konghucu', 'North Penelopeside', '120 Kurt Common Apt. 330\nNew Delphiafort, CA 39977', '+1.701.824.5663', '403388dickens.ava@gmail.com', NULL, NULL, '857ca0c3e958ff680fd0f2b4b209231858b626e8637f2efc9004b1205aa037ec', 'Basic', NULL, '10', '2019-12-27 19:18:47', '2019-12-27 19:18:47', NULL),
(49, 'fc238da0-f478-3b1f-baec-b1563a03ff4d', 'Mr. Leland Towne V', 'male', '1989-11-02', 'Islam', 'Conormouth', '264 Beier Mountain Suite 684\nNew Odell, ME 36015', '726-464-1051 x2438', '288580164daisy64@gmail.com', NULL, NULL, '99af53c5c5814d29ace698cc18f6bdf4e4fc10cd2c81208ca9d9939c290afdbe', 'Premium', NULL, '15', '2019-12-27 19:18:47', '2019-12-27 19:18:47', NULL),
(50, 'd3889fc9-5706-30d2-9672-cc1588950d7c', 'Dr. Adrianna Cummings I', 'male', '1999-12-16', 'Kristen', 'North Garettview', '262 Reyes Route Apt. 166\nPort Coltonhaven, KY 24580', '551.284.4800', '25816jlehner@gmail.com', NULL, NULL, '2cee37fe2f71260893c0cb223b5368de924978803f4bcee040d4ac15cab86b82', 'Premium', NULL, '7', '2019-12-27 19:18:47', '2019-12-27 19:18:47', NULL),
(51, 'bcbb01fb-afc7-3271-9bb4-23350c776c63', 'Mr. Russ Haag PhD', 'female', '1973-01-27', 'Islam', 'Dibberttown', '486 Johnson Mountains\nDarrinmouth, VT 45575', '762-641-2028', '93478561nkohler@yahoo.com', NULL, NULL, 'e9c6339f3d46e4447daee5c92c874626537b0ada0ef61153709c8ce99e8d3173', 'Premium', NULL, '10', '2019-12-27 19:18:47', '2019-12-27 19:18:47', NULL),
(52, '45bbdfa0-aa99-3a96-87ab-bab6df4d399f', 'Dr. Darwin Klein PhD', 'female', '2014-09-04', 'Kristen', 'West Emerald', '71764 Homenick Drive Suite 184\nJohnmouth, SC 34498', '1-762-667-5584 x4244', '9118qbednar@hotmail.com', NULL, NULL, '0050e44fa1ec01ae10cfdb6c7ff436b4e4a4577e337b645d0a0ec3579db673f9', 'Basic', NULL, '4', '2019-12-27 19:18:48', '2019-12-27 19:18:48', NULL),
(53, 'b5b96692-10f3-3d8a-80dd-b8134867e04b', 'Dr. Dudley Williamson', 'male', '2002-09-22', 'Kristen', 'Port Coltborough', '167 Heidi Plaza Suite 652\nMarlenhaven, KY 61525-9090', '393.633.6986', '3035nbotsford@gmail.com', NULL, NULL, 'b7d34862bbbbcc600c9a4a173c0596d2ee7cb974948c6ad2905af905af30b2c9', 'Premium', NULL, '16', '2019-12-27 19:18:48', '2019-12-27 19:18:48', NULL),
(54, '853543cf-3572-3583-a0ca-96e6f3f5bd30', 'Hertha Kuphal', 'male', '1995-12-02', 'Hindu', 'Port Orionborough', '79043 Damian Brooks Suite 126\nLake Raymundo, ND 38835', '683.769.4119 x62787', '60618766borer.johnnie@hotmail.com', NULL, NULL, 'f9c120f06478a190277d59ed3f3de56d349268478cc7636502bfa65706a8d47a', 'Premium', NULL, '15', '2019-12-27 19:18:48', '2019-12-27 19:18:48', NULL),
(55, 'f36057f8-6f76-3a6b-b222-5eb5271e6fe4', 'Taryn Zulauf', 'female', '1975-09-20', 'Konghucu', 'South Brooke', '10100 Anne Pines Apt. 095\nSouth Dayton, WV 14525-9861', '835.703.0068 x2560', '47139camille92@hotmail.com', NULL, NULL, 'aaaaafe0b67ff4adf5e03c4c15acd8ba5aa874a87529dddfd4dbedf62bc4c27c', 'Basic', NULL, '16', '2019-12-27 19:18:48', '2019-12-27 19:18:48', NULL),
(56, '6a37a36b-ef60-3150-9f8f-c44236aecad2', 'August Schultz', 'female', '2001-01-09', 'Hindu', 'Haleytown', '660 Muller Skyway\nPort Luraside, SD 81174', '+1-270-712-7867', '1009fahey.haylie@yahoo.com', NULL, NULL, 'dbda4b0011cca80d387d24b26b72ba628878ba1c3ea0121e16609bc4175defe6', 'Basic', NULL, '11', '2019-12-27 19:18:48', '2019-12-27 19:18:48', NULL),
(57, 'e05d6827-2526-3513-83c8-ac99646bfc25', 'Prof. Fausto Heathcote', 'female', '1983-04-25', 'Hindu', 'Sashafurt', '63421 McGlynn Field\nNew Katherineshire, DC 32599', '414-420-4780', '8hlind@hotmail.com', NULL, NULL, '4e396434551d917a9a1ac7f128fc9919d5baf626478492a44ea8dc77b981b682', 'Premium', NULL, '6', '2019-12-27 19:18:48', '2019-12-27 19:18:48', NULL),
(58, '182b334b-6e7d-3c4a-bbfc-21bddf45d18b', 'Beaulah Swift PhD', 'female', '1995-08-30', 'Konghucu', 'Kyleetown', '5027 Bridget Garden\nStoltenbergview, GA 87626-5856', '+1 (887) 443-7081', '30twill@hotmail.com', NULL, NULL, '61688e8bb6aa574e1be8df66f00884a17affd06645f9e4e50e75b943acf3beda', 'Basic', NULL, '4', '2019-12-27 19:18:48', '2019-12-27 19:18:48', NULL),
(59, 'ef929cf1-b412-3806-a03c-9c8c292868b6', 'Prof. Ted Blick', 'female', '2013-01-02', 'Kristen', 'West Pierceton', '2094 Cummerata Plain\nNorth Kelleymouth, MD 44745-9771', '558-466-3878 x62360', '6497jermain20@yahoo.com', NULL, NULL, 'f123f93c21e4cf4a9eb96950aa7aae7a3c26991ebcb386ecc45ed01d6c4b6a5c', 'Premium', NULL, '16', '2019-12-27 19:18:48', '2019-12-27 19:18:48', NULL),
(60, 'd0e51f63-abba-3920-9df5-946a51e35fd2', 'Alene Blanda DVM', 'male', '1988-11-27', 'Budha', 'Lake Annabelle', '17113 Moore Wall\nSouth Dave, KY 82112', '(316) 308-9918 x449', '3mattie72@gmail.com', NULL, NULL, '80848df8887ea88d08decb57e04ba16b5ecf064f0f1ad0a60b36d715f7727a82', 'Premium', NULL, '15', '2019-12-27 19:18:48', '2019-12-27 19:18:48', NULL),
(61, '9b76a925-ed62-367f-9ce2-976a6b51c7e6', 'Mr. Keyon Jakubowski', 'male', '1981-03-30', 'Konghucu', 'West Emerald', '69175 Jaskolski Oval\nTremblayville, IA 85501', '258-376-7288 x49170', '334197carroll.laron@gmail.com', NULL, NULL, 'bef7f6af2cbc242d8499bd9d41f61f4be045aa83a48d592897983e1f15f6ae24', 'Premium', NULL, '17', '2019-12-27 19:18:48', '2019-12-27 19:18:48', NULL),
(62, 'a9bfa722-8126-39b3-b4d9-22aac23d9b45', 'Alvis Russel', 'male', '1974-10-19', 'Hindu', 'Mikaylafurt', '5627 Janis Brook Apt. 831\nSchuppeburgh, OK 71893', '(682) 552-7847', '94711hhegmann@gmail.com', NULL, NULL, 'a223a84998eceff5208f778bc64fca6c99e7f333450d72048046e76629ef7bda', 'Premium', NULL, '19', '2019-12-27 19:18:48', '2019-12-27 19:18:48', NULL),
(63, '32c91b09-fe22-39f5-acb7-6d272ddbb944', 'Mckayla Lang', 'female', '1996-09-17', 'Budha', 'West Chandlermouth', '464 Little Ferry Apt. 537\nLavonberg, NH 32780', '(651) 631-5759 x775', '8xwyman@yahoo.com', NULL, NULL, '4f17ce1ad4e4676aaa6547149743ac069ec0c1f7cdb5fc7229bd7fb619306999', 'Premium', NULL, '15', '2019-12-27 19:18:48', '2019-12-27 19:18:48', NULL),
(64, '47a657e1-d48d-3655-8718-24c21b741c33', 'Prof. Dane Oberbrunner V', 'male', '1970-02-02', 'Hindu', 'Mariahmouth', '6090 Hills Estates\nZulauffort, NE 10773-0438', '+15473121103', '895973bayer.billy@gmail.com', NULL, NULL, '8ad230c5571cb0711435d2cbd6ed8d4d150cf84e7e0473b38d6f6ac391e34db0', 'Premium', NULL, '14', '2019-12-27 19:18:48', '2019-12-27 19:18:48', NULL),
(65, 'fadc9730-b3c7-3a43-85b3-db110bc4e48d', 'Prof. Albin Balistreri', 'male', '1981-10-03', 'Konghucu', 'Port Nash', '889 Frankie Landing Suite 402\nWest Ralph, AZ 46334', '953-972-2830 x090', '8keffertz@yahoo.com', NULL, NULL, 'd8ec5171d724549bc16c7c279d9e760d5430557d757e97255f04ecafd6ed3388', 'Basic', NULL, '13', '2019-12-27 19:18:48', '2019-12-27 19:18:48', NULL),
(66, '86a0f017-d39a-3471-a53b-800d182e7a12', 'Gwendolyn Rice', 'male', '1977-11-08', 'Islam', 'Port Demetrius', '77315 Fisher Lake\nWest Ara, OK 22178-5507', '1-854-356-9954 x77260', '917vwilliamson@gmail.com', NULL, NULL, 'fb3eceace70ae91572458f4bf993bbec092cbaf7729829c4f26e6e07aacdd316', 'Basic', NULL, '14', '2019-12-27 19:18:48', '2019-12-27 19:18:48', NULL),
(67, '9eaa8d00-8b63-398c-9130-daccd02114d5', 'Prof. Virgie Borer III', 'female', '1978-12-24', 'Budha', 'Lueville', '52525 Isaac Springs\nSouth Rosalyn, MN 75045', '781.701.3262 x12110', '497084617anderson.mayer@yahoo.com', NULL, NULL, 'e34582332705151b7469cfa89d2e8651c767c133cbdb72120659557843d882fc', 'Premium', NULL, '2', '2019-12-27 19:18:48', '2019-12-27 19:18:48', NULL),
(68, '45109979-5788-329c-934b-032e99af3d0b', 'Prof. Monserrat Ward II', 'male', '1976-08-11', 'Konghucu', 'East Talon', '53403 Vanessa Bypass\nNew Brown, DC 86970', '(715) 491-1608 x6545', '36471504xoconner@gmail.com', NULL, NULL, '946c80abc2ab1927f02ca65b2705349432a7b2e98ed73fba0277161bb84a65e0', 'Basic', NULL, '13', '2019-12-27 19:18:48', '2019-12-27 19:18:48', NULL),
(69, '38f0ef1e-1efb-31f5-8e99-2004598c399b', 'Ms. Raina Kozey II', 'female', '1999-07-03', 'Kristen', 'New Nadiaton', '20530 Susanna Expressway Apt. 761\nOtiliaville, ND 34719', '+1-228-842-1588', '58297805gaylord.keaton@yahoo.com', NULL, NULL, 'fc7ab3e9a737b44ece904dcc566bf1d440ac34486fe95b5cf60a690e53dfd317', 'Premium', NULL, '3', '2019-12-27 19:18:48', '2019-12-27 19:18:48', NULL),
(70, '1029dc9d-dc44-3701-adc1-1847ef3bd7f1', 'Augustine Gorczany', 'male', '1979-08-03', 'Budha', 'Schoenside', '256 Alvah Land\nEast Yolanda, IN 31853-0514', '654.593.1438 x4764', '80359115bednar.larue@hotmail.com', NULL, NULL, '385e28898196c43f13eac515c3c540a140862cdefe6ac29ed6c036a6464b74dd', 'Premium', NULL, '2', '2019-12-27 19:18:48', '2019-12-27 19:18:48', NULL),
(71, 'fc744357-8d5e-3ff6-a1d4-2d1652465d52', 'Dr. Henri Monahan Sr.', 'male', '2007-07-22', 'Hindu', 'Gustmouth', '5790 Grimes Court Apt. 480\nSouth Isabellberg, PA 40999', '1-365-540-2369 x69047', '68kub.antonetta@gmail.com', NULL, NULL, 'e9b0f1276f60c5019924a15f3b29107587a5539a6f469220fcea4e1021fe0ee6', 'Basic', NULL, '18', '2019-12-27 19:18:48', '2019-12-27 19:18:48', NULL),
(72, '89f291ab-1a52-3f9c-8e65-59d0b5f6dc4b', 'Mr. Ransom Upton PhD', 'male', '2004-01-19', 'Kristen', 'Port Mateostad', '2810 Greenholt Cape Apt. 850\nWest Marcelina, MN 99477-1140', '(706) 485-7910', '273347vada70@yahoo.com', NULL, NULL, 'adf8a11faaad6fc4b2cdd7efdda1a468e9587d9a8e8f2497aa1266af04b978d7', 'Premium', NULL, '2', '2019-12-27 19:18:49', '2019-12-27 19:18:49', NULL),
(73, '1dc86eaa-c190-32f4-8c55-bb89a7f04aa0', 'Herbert Kuhic', 'female', '1988-12-12', 'Kristen', 'South Ericka', '920 Keenan Passage Apt. 854\nEast Oliver, TX 33679-1139', '(552) 554-0395 x16772', '4825kheaney@yahoo.com', NULL, NULL, '88f9c1e9fd83d71f2dca35532da9cab63b4fd9efb0f9f6db12e83e5b1df9a08d', 'Premium', NULL, '3', '2019-12-27 19:18:49', '2019-12-27 19:18:49', NULL),
(74, 'ff8fb11f-795c-378f-a3bc-67dde870673c', 'Prof. Alexane Bashirian IV', 'male', '1990-08-12', 'Budha', 'Sigurdberg', '278 Schamberger Club Apt. 803\nErdmanland, FL 00344-7995', '487.645.5799 x48874', '66linwood.windler@yahoo.com', NULL, NULL, '84b33532ca0c30c93e197a057c8479da33222d2cf73e498e063b4ab10e7fe5c7', 'Premium', NULL, '19', '2019-12-27 19:18:49', '2019-12-27 19:18:49', NULL),
(75, '2316aaf7-18a9-3174-91ba-ba9b7adf887b', 'Miss Ressie Stokes IV', 'male', '2009-04-23', 'Hindu', 'Gordonhaven', '87660 Maida Mission Suite 570\nSouth Soniamouth, DE 73453-1280', '(231) 361-4940 x81176', '303951wbarrows@hotmail.com', NULL, NULL, '1b290252d55bd0e4285ff6a8792cadf6448ccb033e90de86b93b6f611622942c', 'Basic', NULL, '15', '2019-12-27 19:18:49', '2019-12-27 19:18:49', NULL),
(76, '42e68c90-081c-3482-b811-6aa76c26ee19', 'Emmalee Kuhn', 'male', '1992-05-01', 'Islam', 'Derrickshire', '308 Rice Track Suite 436\nSchulisttown, AZ 98489-3456', '+1-468-858-9026', '60kian.hilpert@gmail.com', NULL, NULL, 'b7131b826b103dfe0c71839828c779ef71f05668334c35db9a95fd07ed335f08', 'Basic', NULL, '4', '2019-12-27 19:18:49', '2019-12-27 19:18:49', NULL),
(77, 'ca79bdcc-2879-3cef-a93a-f33ded119805', 'Prof. Jackeline Shields II', 'female', '1995-12-18', 'Budha', 'Lake Daltonburgh', '624 Hodkiewicz Locks Suite 470\nWebsterfurt, CO 55004-0294', '+1-230-446-1718', '9095242dickens.paula@yahoo.com', NULL, NULL, 'c77f417c5c7fc1ce2f2ef38e70876cc0344eb9503cb27f2912fa3faf191b62fe', 'Premium', NULL, '10', '2019-12-27 19:18:49', '2019-12-27 19:18:49', NULL),
(78, 'b1c7787a-d836-36ff-a6c9-3694ca7a73e8', 'Prof. Payton Beier', 'male', '1986-12-03', 'Hindu', 'Lake Amayamouth', '608 Jasmin Forge Apt. 415\nWest Demarcohaven, MS 44727-3334', '905.435.3596', '4kprosacco@yahoo.com', NULL, NULL, '6d9ac2cc2b21020274b6cb4feaac1c253f28447cfb08ddd39e62a6267b1a758e', 'Basic', NULL, '3', '2019-12-27 19:18:49', '2019-12-27 19:18:49', NULL),
(79, 'e48465b5-1c6b-35da-85d1-005d773fc284', 'Francisco Schamberger', 'female', '1982-09-02', 'Hindu', 'Doyleland', '146 Ferry Run Apt. 321\nLake Matt, NV 20672', '(436) 530-0358 x748', '2027259mueller.americo@gmail.com', NULL, NULL, '1b88363f1fb8622378d8fc761d98d9c2f941ae5fd244d9860bd94733d4393726', 'Basic', NULL, '13', '2019-12-27 19:18:49', '2019-12-27 19:18:49', NULL),
(80, '389f0135-0986-32e2-9585-5e183055a634', 'Jonathon Ledner', 'female', '1981-05-06', 'Budha', 'Maribelfort', '964 Lee Isle\nKreigerberg, GA 08446', '472.673.4092', '3806murazik.brielle@yahoo.com', NULL, NULL, 'd7d2c2baf442e681fbdfcdfe90bd7bb5b03fab875529ec2fb2dcef2557e2a305', 'Premium', NULL, '14', '2019-12-27 19:18:49', '2019-12-27 19:18:49', NULL),
(81, 'c9187603-a76d-332c-b520-2f35261b1808', 'Cletus Cole', 'female', '1970-09-12', 'Hindu', 'Quitzonberg', '88672 Feil Gardens Suite 958\nEmmastad, MD 51852', '760.609.8272 x51406', '71113jdach@gmail.com', NULL, NULL, '7a5abf6bf6bb6143f5beea0c6668a7a1023d11336368a5c866aea46740d955c8', 'Premium', NULL, '5', '2019-12-27 19:18:49', '2019-12-27 19:18:49', NULL),
(82, '8ad2b0e9-0ef0-3aac-bca6-b57357639513', 'Mrs. Genevieve Schultz V', 'female', '2017-10-29', 'Budha', 'North Alene', '71858 Huels Cape\nLake Elzaberg, FL 72516-5702', '1-876-221-6884', '30577423osinski.kareem@gmail.com', NULL, NULL, '0175d8799ceb5327eaaae481b1888c2c13e9110f2182d16427deab8b98cb3e6e', 'Basic', NULL, '16', '2019-12-27 19:18:49', '2019-12-27 19:18:49', NULL),
(83, 'bed9ce62-c2dd-3b14-b25b-2f1c02fc25ba', 'Christy Haley', 'male', '2018-12-24', 'Hindu', 'Torphyport', '5490 Dave Spur\nSouth Armando, TN 60215', '274.471.4972 x7969', '9526376patricia41@yahoo.com', NULL, NULL, '60be930bc48a8ad8efb07fe8ec107b1b9be792e91b06da62a3e0705c034db407', 'Basic', NULL, '16', '2019-12-27 19:18:50', '2019-12-27 19:18:50', NULL),
(84, '9dad994e-b531-343d-ae5a-3301d83c11ff', 'Kenna Leannon', 'female', '1984-01-27', 'Hindu', 'Hilpertchester', '737 Mathilde Mountain Suite 619\nDeionfurt, WV 32065', '1-926-776-7495 x9046', '268216554emard.zoie@gmail.com', NULL, NULL, 'd312f7540731abfb17f85d28e662bf77d0efdf96f2cefdca14a983da791cadba', 'Basic', NULL, '17', '2019-12-27 19:18:50', '2019-12-27 19:18:50', NULL),
(85, '8b36ca9b-4586-33cc-a7b3-579c87a80776', 'Lucas O\'Connell', 'male', '1994-04-07', 'Konghucu', 'New Lukas', '177 Padberg Mews Suite 569\nPort Cletus, SC 75329', '+1-841-247-4839', '989878566pfeffer.dillan@gmail.com', NULL, NULL, '0811b05816d92d1b6c630b320f11822d36d55a0072ae8526982b99b18e893f7a', 'Premium', NULL, '5', '2019-12-27 19:18:50', '2019-12-27 19:18:50', NULL),
(86, '896e4d4d-81c8-364c-b959-b69325a7d0e4', 'Chadrick Raynor', 'male', '1978-07-27', 'Konghucu', 'Bobbieberg', '2921 Borer Loaf Suite 436\nSouth Lailahaven, PA 20685-5063', '536-588-5372', '268165142schmitt.dana@hotmail.com', NULL, NULL, '606ea1b225b92f78d67254c021d6612451ad1ca2a668ce79df94e00d9b96b242', 'Premium', NULL, '5', '2019-12-27 19:18:50', '2019-12-27 19:18:50', NULL),
(87, 'cf1eaf8d-9be8-3793-b2e5-7fbfb10f0e0c', 'Ms. Marielle Russel DVM', 'male', '2012-07-31', 'Konghucu', 'Aftonfurt', '958 Anabelle Road\nLempiburgh, HI 98919-1612', '360-374-7652 x33341', '1744537qherzog@hotmail.com', NULL, NULL, 'd3f47752de680bbb211889e9b170447a025584b8e9c65c00690cee9724179a7c', 'Premium', NULL, '18', '2019-12-27 19:18:50', '2019-12-27 19:18:50', NULL),
(88, '10c5a648-667a-3ebe-81d6-b2010c03656e', 'Dr. Jerod Schinner DDS', 'male', '1974-09-12', 'Kristen', 'Lake Asaview', '381 Hailee Mountain\nKlockofort, WV 70590-0321', '1-701-996-9868 x836', '900777094selina.little@gmail.com', NULL, NULL, 'f2fda4b891132f98fab38c170cf89f3a8a5340ff955146c19f85558de012c5a1', 'Premium', NULL, '8', '2019-12-27 19:18:50', '2019-12-27 19:18:50', NULL),
(89, 'fdad6a6d-a8f7-3e01-820f-c62c0074aaa2', 'Lee Stoltenberg', 'female', '1991-05-22', 'Hindu', 'New Hazle', '110 Schmeler Parkway Apt. 690\nHolliemouth, RI 71612-8982', '357.928.6681 x4210', '93189569bud33@hotmail.com', NULL, NULL, '7d802344bc2cad986a619696351cbcd8d18e4665200ba1b4ca89cc160fc586cd', 'Premium', NULL, '14', '2019-12-27 19:18:50', '2019-12-27 19:18:50', NULL),
(90, '75733649-bb77-342a-8f1d-e6f409e6cb85', 'Dr. Ramiro Smitham DDS', 'male', '1986-06-23', 'Konghucu', 'North Nedra', '9867 Bradford Lock Apt. 657\nSchuylerville, WV 66624-1809', '723-213-7402', '75336boehm.jon@gmail.com', NULL, NULL, '3acb5cb5046b09effa38a9ffb2f913eebc11a2cae8a77768e7ced833bb9eebd8', 'Basic', NULL, '16', '2019-12-27 19:18:50', '2019-12-27 19:18:50', NULL),
(91, 'a13b7ab6-23e2-3a33-8076-41c289686a9d', 'Cicero Cormier', 'female', '2003-11-20', 'Budha', 'Kristinport', '972 Vincent Forges Suite 059\nNorth Keatonchester, DC 03288-5395', '(408) 837-1028 x8114', '64087754zgutmann@gmail.com', NULL, NULL, '6dfd1a6ab8fc2baf428941abe745ca90e09ae20d0de47b112e6f5f3b50b51118', 'Premium', NULL, '10', '2019-12-27 19:18:50', '2019-12-27 19:18:50', NULL),
(92, '8e3ae006-a7b7-3892-a32b-6817033e256e', 'Dr. Glenna Boyer', 'male', '1995-07-02', 'Kristen', 'New Bernhard', '22448 Crist Islands\nDarrickchester, TX 18795', '+13585989786', '95413vallie.collins@hotmail.com', NULL, NULL, '4cb3d793761bec68b00679bd4e065e54adb3bf50c18a57921af33fe630560075', 'Premium', NULL, '13', '2019-12-27 19:18:50', '2019-12-27 19:18:50', NULL),
(93, 'cb497328-0642-3ba2-a939-7d8fcbd8ac64', 'Theresia Hill', 'female', '2000-03-09', 'Budha', 'Lake Mae', '95009 Demetris Mission Suite 778\nNew Macie, SD 19113', '1-585-997-5950 x002', '1monahan.karson@gmail.com', NULL, NULL, 'ff67fe565344676f2718d550fb93f8d365f3eb5ace2e218de4ea95e558c300fe', 'Basic', NULL, '4', '2019-12-27 19:18:50', '2019-12-27 19:18:50', NULL),
(94, 'a7ff7546-c1a3-31c6-a267-3fe9e8ed25a8', 'Prof. Agnes Corkery DDS', 'male', '2002-11-30', 'Konghucu', 'New Hadley', '137 Jean Corners\nNew Raymundohaven, FL 42398', '737-504-5913 x38909', '106405661johnston.hillary@gmail.com', NULL, NULL, '2d0ba3f95894d34f74f4bcb9c6366501277c825c75b19cb97f79577ad3b41284', 'Basic', NULL, '19', '2019-12-27 19:18:50', '2019-12-27 19:18:50', NULL),
(95, '52ff4d7a-eff7-39fb-89fc-87e47a584e38', 'Sheridan Smith', 'female', '1988-09-13', 'Budha', 'West Zachary', '24777 Gunner Curve Apt. 262\nPort Arturochester, LA 71220-0099', '(687) 830-9751', '60lamar.wintheiser@gmail.com', NULL, NULL, 'feeb6af8fcf7cbac7ba0b3e4ae881d87fa82c81c210fdad1754750bf3c6b6ddf', 'Premium', NULL, '10', '2019-12-27 19:18:50', '2019-12-27 19:18:50', NULL),
(96, '81bfe7a5-d498-3bb5-b6c0-9f7be656ecef', 'Vickie Morar', 'male', '1994-01-28', 'Hindu', 'Port Cruzchester', '91441 Gorczany Mission Suite 518\nGreysonbury, ME 70593-3918', '574.240.0945 x347', '1260191nhickle@gmail.com', NULL, NULL, '56457673644eb410148d6a476c5418bdc72ddf2976f4d733ea40909b939a71f8', 'Basic', NULL, '14', '2019-12-27 19:18:50', '2019-12-27 19:18:50', NULL),
(97, 'd1e6bfba-1b74-30c4-9506-ae78b498a51c', 'Prof. Jonathan Bauch', 'male', '1974-03-09', 'Budha', 'West Rowan', '6483 Talon Trail Suite 577\nFelixshire, MA 75707', '370.751.6388 x03416', '408195782ubechtelar@yahoo.com', NULL, NULL, '6b2af80a57d9bedbc564dc947fd35b4cfa889e35c9b60ee90dbdb17e6259e308', 'Premium', NULL, '4', '2019-12-27 19:18:50', '2019-12-27 19:18:50', NULL),
(98, '70bb0654-3db8-31f4-b6fb-81901b9b3743', 'Mrs. Liliane Turner I', 'male', '1971-03-12', 'Konghucu', 'North Kathrynemouth', '71214 Kozey Cove Suite 016\nLake Brownland, NM 53943-2781', '819.579.9417 x881', '370346xnader@hotmail.com', NULL, NULL, 'c386cdf478c641f6a4fbfbf0ba3e48624e3edf603b1f314a2adcf0527075e9ec', 'Premium', NULL, '16', '2019-12-27 19:18:50', '2019-12-27 19:18:50', NULL),
(99, 'b4edcd0a-291c-3da2-8d0d-fa1c23cfc14a', 'Tabitha Koch', 'male', '1987-05-03', 'Islam', 'West Lilymouth', '91308 Crist Divide Suite 714\nWest Barneyberg, SD 33939', '997-463-8130', '1541367alycia.cruickshank@hotmail.com', NULL, NULL, '73d93e5b92b91e828415ea997580993baeeb4a605da1d0b0728ac19731906769', 'Basic', NULL, '4', '2019-12-27 19:18:50', '2019-12-27 19:18:50', NULL),
(100, '5321a98c-4fb5-3078-8831-63e3f8b65a55', 'Cathryn Gusikowski', 'male', '2010-07-21', 'Konghucu', 'East Sophia', '5806 Billie Flat\nPort Justyn, NM 99811-3415', '837.232.8338 x2065', '626431381kohler.nicolette@yahoo.com', NULL, NULL, 'b0d9278e22f2c4bad5863051f79ed565e24e1500624a60d3c2c91a6d4726d1b9', 'Basic', NULL, '3', '2019-12-27 19:18:50', '2019-12-27 19:18:50', NULL),
(101, 'c88ae994-0c40-35df-993c-b45aa346d71d', 'Nedra Sawayn', 'male', '2004-07-28', 'Konghucu', 'Cullenton', '65221 Borer Canyon\nSouth Brett, UT 04419-6066', '+1 (984) 480-7695', '85kendrick.wiegand@yahoo.com', NULL, NULL, 'cf58f8f604aa1e54f763b2e03d54b490dc1ebb4de1f856e2f848faa3216b4c99', 'Premium', NULL, '32', '2019-12-27 19:19:00', '2019-12-27 19:19:00', NULL),
(102, 'd56a211c-9284-3129-887e-aa99fe740fbb', 'Tyrel Friesen', 'female', '2006-05-18', 'Islam', 'Ladariusbury', '42305 Luis Vista Suite 185\nHettingermouth, NY 63174-2435', '339-375-0035 x9352', '679armstrong.annette@hotmail.com', NULL, NULL, '902ef93f80858c57d7d127d29a10665338e792e03fdf4c09a3b3532fb9c62384', 'Premium', NULL, '23', '2019-12-27 19:19:00', '2019-12-27 19:19:00', NULL),
(103, 'b350f9be-263c-3df3-99e6-55c38065f279', 'Paris Price', 'male', '1989-08-03', 'Budha', 'Medaberg', '4258 Quitzon Fall\nRohanberg, PA 63946', '1-771-724-5343', '63774ortiz.ricardo@gmail.com', NULL, NULL, 'f5f410344e687f669e9078399444f8864421ba7ce04798f96c84b7998847c49d', 'Premium', NULL, '29', '2019-12-27 19:19:00', '2019-12-27 19:19:00', NULL),
(104, '7b4872e0-8253-3bd6-bec9-7bc2c8f62e63', 'Prof. Darrion Hudson', 'male', '1978-04-15', 'Islam', 'Kundeville', '989 Tod Mountains Suite 462\nWatsicachester, KS 12361', '365-757-3957 x2945', '68tyree83@yahoo.com', NULL, NULL, '1f684dc0e123ee2c10a491ab56aaed65debf2562f38a9f667946fa3ab5dc7865', 'Basic', NULL, '10', '2019-12-27 19:19:01', '2019-12-27 19:19:01', NULL),
(105, '4d764fd5-0bf6-3c67-873a-7eaa254a3b3c', 'Miss Kaitlin Daniel', 'female', '2004-04-07', 'Kristen', 'Evanschester', '8007 Shanahan Avenue Suite 506\nHartmanntown, CT 77677-2962', '1-663-453-6819 x6072', '566327columbus.lebsack@gmail.com', NULL, NULL, 'e93f3bf53c0d19b4a897f44c60999dcd5476cff7e26b15ab3d8457d01daddc05', 'Basic', NULL, '4', '2019-12-27 19:19:01', '2019-12-27 19:19:01', NULL),
(106, '5984475c-e427-38a8-965e-9b27154ae68c', 'Theron Deckow', 'male', '2007-06-26', 'Konghucu', 'New Earnestinemouth', '4139 Swift Plaza Apt. 337\nGrantville, CO 29242-2006', '534.607.4425', '15787fheller@yahoo.com', NULL, NULL, 'f1a4c433546f088b19214fc841aba3e28b3785303dffc9d8b416435ca1bc974a', 'Basic', NULL, '14', '2019-12-27 19:19:01', '2019-12-27 19:19:01', NULL),
(107, '1f2f69b9-82ec-3878-a7c7-508c6ad1e827', 'Pedro Homenick', 'female', '2017-11-08', 'Kristen', 'North Ernestberg', '330 Mohr Hill Apt. 525\nSouth Pat, WI 41725', '234.604.6902 x6929', '7033corkery.shany@gmail.com', NULL, NULL, '96bf8b491c53fece31b597395373098b8171d747db2b561e024fb43475c22923', 'Basic', NULL, '25', '2019-12-27 19:19:01', '2019-12-27 19:19:01', NULL),
(108, 'e60ebdd8-3b34-3f11-85cb-d6d03fde0d4c', 'Bernard McClure', 'female', '1999-02-20', 'Konghucu', 'West Bonita', '9878 Leopoldo Circles Suite 824\nWest Omerhaven, CA 90117', '231-816-6459 x93191', '9242665milo59@yahoo.com', NULL, NULL, 'dd22dc3f75e3b0904ecfdc28dcbefe802a1c5770ebd2dcac15416ed7c6573307', 'Basic', NULL, '8', '2019-12-27 19:19:01', '2019-12-27 19:19:01', NULL),
(109, '4e601d1c-ccdd-30bd-b1f1-3d27d6f31f78', 'Brown Mohr', 'female', '2003-11-15', 'Konghucu', 'Mayerstad', '385 Bednar Springs\nBechtelarville, AR 44977', '+1-426-391-2954', '14bella94@hotmail.com', NULL, NULL, 'b1c0afd08b21c3f041961d3ae8e130df24fb3c91a78097abc04a496a2a1cb622', 'Premium', NULL, '12', '2019-12-27 19:19:01', '2019-12-27 19:19:01', NULL),
(110, 'a44388a0-367b-3d71-bc54-80d9c6aeafdd', 'Santos Conroy', 'male', '2008-06-22', 'Budha', 'North Judd', '574 O\'Keefe Forge Suite 289\nVitaview, TX 69596', '1-860-834-7037', '867felipa66@hotmail.com', NULL, NULL, '697768dc5ae8dd99c84e465c3e58dc781d752ac8ec027bd8377bc8be1c97240f', 'Basic', NULL, '33', '2019-12-27 19:19:01', '2019-12-27 19:19:01', NULL),
(111, 'baf535e4-3f85-34f0-b8ff-63cb06355414', 'Mr. Bo Huel PhD', 'female', '2005-06-25', 'Hindu', 'Kirlinmouth', '84769 Kreiger Stravenue Suite 590\nNew Loren, AK 69853-0415', '(252) 941-0914 x0425', '988297847otilia44@yahoo.com', NULL, NULL, '5ad7926e6a2162617c9cfeca1540f6cee40ea40759753ed70605fcf4e3e3325e', 'Premium', NULL, '12', '2019-12-27 19:19:01', '2019-12-27 19:19:01', NULL),
(112, '3a4d0940-b9a8-3cef-9f9f-5da26159ae9c', 'Armando Robel Sr.', 'male', '1986-11-03', 'Kristen', 'North Kaitlinland', '47617 Kovacek Bypass Suite 704\nNew Houston, GA 86872', '1-312-335-5082 x342', '1098greg.hegmann@gmail.com', NULL, NULL, 'da0bd63a44eae9193a67979eb17969b7b6d8ac2f0ae8d32a01cccaf803a49f89', 'Basic', NULL, '37', '2019-12-27 19:19:01', '2019-12-27 19:19:01', NULL),
(113, 'ca34b848-4399-392b-8094-83f54f33a746', 'Carole Yundt I', 'male', '2019-03-16', 'Hindu', 'West Triston', '9962 Murray Burgs\nPort Emmalee, ND 15305-9646', '835-247-2285 x0723', '83217668wjohnston@gmail.com', NULL, NULL, '7554ee0a6b3a90be86a655a27ea3d5557d447f4b2c007699172b0d72372c0103', 'Basic', NULL, '28', '2019-12-27 19:19:01', '2019-12-27 19:19:01', NULL),
(114, '735a8d19-1a59-3ccd-88d6-959e7c718e7d', 'Jewel Gusikowski', 'female', '1972-07-18', 'Konghucu', 'East Emmie', '877 Evans Canyon\nRunolfssonmouth, CO 29101-7213', '690-736-9766 x0752', '1619tara.bernier@hotmail.com', NULL, NULL, '0bd8c18c6c493a9b6a54b73f12782f0d0f8cf88325ad24932c72f037ff5d2780', 'Basic', NULL, '35', '2019-12-27 19:19:01', '2019-12-27 19:19:01', NULL),
(115, 'e3d5e707-338e-31b8-b8eb-ccf03c4a2f9c', 'Miller Rolfson', 'male', '1992-06-21', 'Kristen', 'Lake Emanuel', '36706 Bartoletti Cove Apt. 217\nMurrayport, NH 56630', '1-514-287-5432 x51775', '0ngoodwin@hotmail.com', NULL, NULL, 'ecad51a48f8dc4ac793ebe3f5410dc3e258f7816d468954f8cbb6e29fce9279f', 'Basic', NULL, '12', '2019-12-27 19:19:01', '2019-12-27 19:19:01', NULL),
(116, '2b09b2ae-cd4f-3db8-9967-53dee0fa9905', 'Johnpaul Schumm', 'male', '1983-01-23', 'Budha', 'Haagton', '97864 Kessler Turnpike Suite 204\nLaurenview, ND 10145-9603', '+1 (641) 544-9698', '1758mueller.antone@yahoo.com', NULL, NULL, 'b82a830147f7e1787134818fc5894686ec3f57ba8682160f889a29232c2660f2', 'Premium', NULL, '3', '2019-12-27 19:19:01', '2019-12-27 19:19:01', NULL),
(117, 'e5d442ff-16ab-34b4-bc0e-25da9886abd0', 'Ms. Winnifred Pagac', 'male', '2008-08-31', 'Islam', 'North Jacintobury', '78880 Sydnie Mission Suite 925\nSkilesburgh, OK 72131', '(725) 475-7501', '91394hettinger.juvenal@gmail.com', NULL, NULL, '78e93f1ad1016d6d52c00260149fb56d6696df67b726e6f5200998b7c569851d', 'Basic', NULL, '32', '2019-12-27 19:19:01', '2019-12-27 19:19:01', NULL),
(118, '0af2a58e-2e30-3529-b039-e18d02b44ade', 'Orin Wisozk', 'male', '2001-03-18', 'Kristen', 'South Shany', '325 Suzanne Avenue\nSouth Drakeville, NV 13411-7650', '(263) 606-1144 x12238', '6271norma.wintheiser@yahoo.com', NULL, NULL, '9e8067a5511ad902ebcb3b7779095fb6a238b1bbef75b3c4ca54a45153e7fbd9', 'Premium', NULL, '10', '2019-12-27 19:19:01', '2019-12-27 19:19:01', NULL),
(119, 'ad235ef8-adae-372e-9d70-fe273b375ca5', 'Casandra Klocko', 'female', '1985-12-17', 'Budha', 'North Antonettefort', '13852 Ryann Highway\nPort Tessmouth, OH 99200', '775.818.3615', '101847buford35@gmail.com', NULL, NULL, '406dd35dd9d62f22b6b7a6d29c85104d5c577007a72172e36f74f05250fc9f56', 'Premium', NULL, '30', '2019-12-27 19:19:01', '2019-12-27 19:19:01', NULL),
(120, 'bc326230-f523-3fcf-8d44-fdd8fe643fb8', 'Otho Cormier', 'female', '2017-11-16', 'Islam', 'Marvinland', '4590 Marianne Shores Suite 469\nBaileyton, IN 15940-5718', '773-460-7279', '524794bailey.susana@yahoo.com', NULL, NULL, 'c57d6ee6ccd429bca92f168a9ef6c8e19b115212ed67950adc1504b51f5812a5', 'Basic', NULL, '11', '2019-12-27 19:19:01', '2019-12-27 19:19:01', NULL),
(121, '98d4fc61-ca25-31e4-b26a-754e34cbec41', 'Keith Will', 'male', '1971-07-03', 'Hindu', 'Gaylordtown', '9353 Jones Extension\nHermanside, VT 99750', '1-584-962-4560 x518', '51179825trice@hotmail.com', NULL, NULL, '725f27a810521ab76b5a5f33e16ff91817147720b12e1acd1313f62b15708cfa', 'Basic', NULL, '27', '2019-12-27 19:19:01', '2019-12-27 19:19:01', NULL),
(122, '68fe349b-f5ce-31b1-a7fd-2430d74ec3cf', 'Earline Gibson IV', 'female', '1974-03-09', 'Budha', 'Micaelaburgh', '441 Kemmer Loop Apt. 048\nKuvalisberg, NC 13821-5874', '(782) 940-1578 x8923', '8203kuhic.melyssa@yahoo.com', NULL, NULL, 'ff0042004e5ac592949a15212d6fbc610bf4ea7785ca018c9589355f58978a44', 'Premium', NULL, '34', '2019-12-27 19:19:01', '2019-12-27 19:19:01', NULL),
(123, 'f271f292-a424-32bc-aafc-7b32b977fc39', 'Prof. Jaeden Wehner', 'female', '2001-05-01', 'Budha', 'Adahbury', '8259 Christ Circle Suite 750\nKautzerstad, MD 06277-6883', '476-333-3511', '6986willa12@gmail.com', NULL, NULL, '670135c883ca8da146f8c0b4aeee8bed0eeb384c66bf6f46bbe0884f3ccc2ba1', 'Premium', NULL, '40', '2019-12-27 19:19:01', '2019-12-27 19:19:01', NULL),
(124, '7d53597a-ed09-32d4-9a47-cb5907cee92f', 'Geo Ullrich', 'female', '1997-04-17', 'Islam', 'New Nyasiaville', '724 Branson Vista Suite 668\nNew Rhea, FL 02333', '+1-748-528-5077', '172534715ikeebler@gmail.com', NULL, NULL, '93d0a9178296adc7f46bac8c4018b935fdf4732430bc38893522c15457eda957', 'Premium', NULL, '6', '2019-12-27 19:19:02', '2019-12-27 19:19:02', NULL),
(125, 'b19d5879-34d0-343a-a4f8-25248f5eb69c', 'Lou Kohler IV', 'male', '1974-03-10', 'Islam', 'Boyerstad', '943 Verner Pass\nRichardbury, VT 13036', '+1-737-968-0248', '823119tad.stroman@hotmail.com', NULL, NULL, '2fbb59f5c61f713658865d1deb1bd322e8de65000ae749f765c11f21b3de9db0', 'Premium', NULL, '34', '2019-12-27 19:19:02', '2019-12-27 19:19:02', NULL),
(126, '4d52ce79-dcdf-3d07-84af-21f0c6df52ae', 'Bertram Huels Sr.', 'male', '1991-07-26', 'Islam', 'New Nannie', '3006 Abbigail Ridges\nLake Tamaramouth, MT 88513-0127', '875-438-9322 x341', '763533001herman22@gmail.com', NULL, NULL, '409d2e7eae6832221c951a74a8f92f4c17e1d7dc21a3ef9472809a0635bce710', 'Premium', NULL, '12', '2019-12-27 19:19:02', '2019-12-27 19:19:02', NULL),
(127, '5f90a11e-c2ae-339e-97cd-5f82a88abd90', 'Austin Funk Jr.', 'male', '2013-12-01', 'Islam', 'Lionelton', '28346 Stehr Underpass\nWest Mackchester, MS 62891', '(641) 580-8852 x139', '37mathilde36@hotmail.com', NULL, NULL, 'bc0830b9a903edca447a2aceae3d85cad1581e0ecb7a11f604ed23919f454118', 'Basic', NULL, '19', '2019-12-27 19:19:02', '2019-12-27 19:19:02', NULL),
(128, '49a2b522-4fc9-31cd-a76b-b8546931cc7b', 'Mrs. Brenna Cremin Sr.', 'female', '1978-09-15', 'Kristen', 'Hackettbury', '7427 Kshlerin Cliff\nHellerland, SC 55454', '731.573.5719', '97984651wschumm@hotmail.com', NULL, NULL, '683fccdffd17c180b68f6cda00100923307a4c45d9c5255968d649c76f40746e', 'Premium', NULL, '11', '2019-12-27 19:19:02', '2019-12-27 19:19:02', NULL),
(129, '803d95c6-991a-31e9-b04e-1d83c1a835dc', 'Winfield Boehm DVM', 'female', '2005-12-28', 'Islam', 'Creminport', '6198 Sauer Square\nZechariahville, CT 19261-1275', '+1 (250) 352-5067', '796dnicolas@gmail.com', NULL, NULL, '44e5ab6ba232fe78d304332c91e30a3b668f2c99e1a39d257d2372c02a011010', 'Premium', NULL, '39', '2019-12-27 19:19:02', '2019-12-27 19:19:02', NULL),
(130, '8e9f6172-6be4-38e3-a72e-e45a829a2593', 'Lurline McLaughlin MD', 'female', '1999-02-19', 'Konghucu', 'North Carrie', '858 Arnold Drive Suite 935\nEmmaleeberg, UT 47127', '+1-575-482-0646', '941702jemard@yahoo.com', NULL, NULL, '0de44963061cf59e4e4edfd09b6e77a7414f2a70c054a32ae8ec3aba0cf4e362', 'Premium', NULL, '17', '2019-12-27 19:19:02', '2019-12-27 19:19:02', NULL),
(131, '22c4bcfc-db42-30f0-9c66-acd833300b13', 'Mrs. Fiona Fritsch', 'female', '2004-06-14', 'Hindu', 'East Corbinmouth', '5006 Cole Villages Suite 129\nPort Daryl, IA 11932-0919', '565.798.1208 x52993', '465453eldon24@hotmail.com', NULL, NULL, 'c6cd885e0f0cf991f7040c9a2bf8c04e11b99a17cb7035936bfaa0cf7cbca824', 'Premium', NULL, '37', '2019-12-27 19:19:02', '2019-12-27 19:19:02', NULL),
(132, '3b847e64-a7a4-3a70-ade8-68ea684aab96', 'Bradford Herman', 'male', '1994-08-10', 'Hindu', 'East Clarkborough', '7801 Dach Club\nBogisichborough, MO 87823', '+1-571-815-8147', '628768danika84@hotmail.com', NULL, NULL, '7fde35bc7f8b544c1b731a8519d86c332fa9090cf4db204b213171fd2314f81f', 'Basic', NULL, '2', '2019-12-27 19:19:02', '2019-12-27 19:19:02', NULL),
(133, 'bf07a448-4d7a-3415-949c-db17ae1cb82a', 'Nat Blanda', 'female', '1988-03-11', 'Hindu', 'South Scarlett', '2506 Bradtke Center\nLebsackview, VA 86819-3487', '+1-310-444-4624', '5525dickens.leonel@gmail.com', NULL, NULL, '20adb27861dd2dbdf4d7256fc59dbb728281afbdae78669227d3d6def39556cd', 'Premium', NULL, '15', '2019-12-27 19:19:03', '2019-12-27 19:19:03', NULL),
(134, '4499ad57-7ed9-3fb1-9399-208434a48a06', 'Mylene Kautzer', 'male', '2010-11-02', 'Konghucu', 'East Kameronton', '856 Heathcote Tunnel Suite 078\nNew Kaylin, OK 14105', '+16183738503', '8990ctoy@gmail.com', NULL, NULL, '7bce1c1091c777f842611184dd2a4c6900936f4eed52884ff3064e0b9f5d145d', 'Premium', NULL, '36', '2019-12-27 19:19:03', '2019-12-27 19:19:03', NULL);
INSERT INTO `customers` (`id`, `id_card_number`, `name`, `gender`, `birthday`, `religion`, `city`, `address`, `phone_number`, `email`, `email_verified_at`, `token`, `password`, `status`, `remember_token`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(135, '70a7ad7d-f572-344d-b79c-9d6b6d50db6a', 'Prof. Brown Strosin IV', 'female', '2013-04-13', 'Kristen', 'New Maxfort', '4769 Dickinson Coves\nWest Maudieshire, ID 57918-8473', '1-612-218-8003 x9200', '4ypouros@hotmail.com', NULL, NULL, '7559a788b83d12e47886d2b2dc0444f70f71eb5250058b84331aa647efc07bcf', 'Basic', NULL, '35', '2019-12-27 19:19:03', '2019-12-27 19:19:03', NULL),
(136, 'ee0773bd-fbed-3aa9-9937-9d76b8f43903', 'Ardella Bruen', 'male', '2018-01-03', 'Kristen', 'North Angiemouth', '768 Sipes Knolls Suite 998\nSchummview, SC 30304-3437', '1-546-295-5931', '79896green.bulah@gmail.com', NULL, NULL, 'e55ca181fa9cea90ed5f1a15e3405a22ac6cde34e08eda3432e0d17aa64d5c9b', 'Basic', NULL, '30', '2019-12-27 19:19:03', '2019-12-27 19:19:03', NULL),
(137, '1bbe94cc-18b2-37a4-884e-2508878e160e', 'Alysson Russel', 'male', '1993-04-11', 'Budha', 'Abbottshire', '64409 Ernie Summit\nPort Tyshawn, MN 33725-3226', '686-648-6817 x175', '566861gmcclure@yahoo.com', NULL, NULL, '0b08e53e3f8f03f278697ed3857d85d3c0a0e2ad54ce42acc50b8dbdc22f3f35', 'Premium', NULL, '1', '2019-12-27 19:19:03', '2019-12-27 19:19:03', NULL),
(138, 'c0b3d5b2-1cf9-3665-b6be-24ac6bfafcc0', 'Aurelio Wisozk', 'male', '1970-03-29', 'Konghucu', 'Loganport', '85477 Katrine Branch\nHandshire, NY 57709', '(767) 346-8529', '917acarroll@hotmail.com', NULL, NULL, 'c0a73fca52ac39ab43ee0efcbca8de36c0330b32ec1877daf6e6d577d1c3131d', 'Basic', NULL, '14', '2019-12-27 19:19:03', '2019-12-27 19:19:03', NULL),
(139, 'cd8c8355-f37c-3ada-b074-59e2f7734d9a', 'Mervin Abernathy Sr.', 'female', '2007-03-08', 'Kristen', 'Felicitabury', '6291 Rau Lane\nKeelingview, KS 88484-1721', '945.972.8461', '608upton.marjorie@hotmail.com', NULL, NULL, '4888f68ceeea89393585721a2d2e12e1692d24a2c41d9bf479f181192a492c9b', 'Premium', NULL, '5', '2019-12-27 19:19:03', '2019-12-27 19:19:03', NULL),
(140, '10a14368-77cd-32e0-b0bb-9907ea20f9af', 'Monique Leannon', 'male', '2011-08-25', 'Konghucu', 'Lelandberg', '950 Ward Squares Apt. 167\nNew Kane, VT 97041-2922', '535-556-8390', '38422665schoen.kobe@hotmail.com', NULL, NULL, 'c92cb3404d57ab022a3bd5f96d42fdf5e22150a72db494852f336511bb2deab0', 'Basic', NULL, '14', '2019-12-27 19:19:03', '2019-12-27 19:19:03', NULL),
(141, 'a81a46a2-b0b9-3afb-952e-9d03a91c1cef', 'Schuyler Barrows I', 'male', '1977-03-20', 'Kristen', 'Joannieville', '867 Lon Ports Suite 512\nDickinsonhaven, TX 31494-8857', '+1 (309) 675-6444', '6932satterfield.eli@yahoo.com', NULL, NULL, '3ab677772473b14eceee23ec608d9a4b9583d255199be73ef09beb83fc87fd78', 'Basic', NULL, '28', '2019-12-27 19:19:03', '2019-12-27 19:19:03', NULL),
(142, 'dba712b5-6a92-386c-8cd9-2d93ccbb74cb', 'Norris Reynolds', 'female', '1978-09-15', 'Hindu', 'Gorczanyborough', '52539 Hermann Light Apt. 538\nBruenchester, AK 20310', '+1-992-303-3038', '783639florian.sanford@hotmail.com', NULL, NULL, '60a86451da2efb81ebfaf30bb797c6bfcabebb12a7f848e636f2724f29b025dd', 'Premium', NULL, '31', '2019-12-27 19:19:03', '2019-12-27 19:19:03', NULL),
(143, '5399aa80-f5eb-32e1-be10-88e410c227ee', 'Mr. Arnoldo Kunze', 'male', '2009-05-26', 'Hindu', 'North Carolynborough', '771 Johnston Shoals\nPort Judge, NH 11287-6518', '252.746.8619', '2tremayne.reinger@yahoo.com', NULL, NULL, '8315dbc0585b98673cdc9ddd3ce0df6f85c8cebfc6712a9761a1a403af3ea36a', 'Basic', NULL, '23', '2019-12-27 19:19:03', '2019-12-27 19:19:03', NULL),
(144, '20972be4-9f23-3a32-a2f8-29450d30b12a', 'Ms. Vida Flatley PhD', 'female', '1993-11-17', 'Kristen', 'Ardithfurt', '240 Kuphal Rapids Suite 946\nPort Coy, AL 85358-9686', '(648) 218-2832', '1fay.queen@hotmail.com', NULL, NULL, 'b7c1515a480a9b29ae19819a51d3c61aea7712360a7fa9120a0f8e7a0530e7c7', 'Basic', NULL, '11', '2019-12-27 19:19:03', '2019-12-27 19:19:03', NULL),
(145, '4fe1eb0e-c5d2-3f30-98d2-4bd4ef602eff', 'Kelly Moore', 'male', '1971-02-02', 'Budha', 'Lake Johathantown', '21609 Raynor Streets Apt. 023\nEast Amparomouth, MS 05214', '1-306-690-5503', '18kelsie.macejkovic@hotmail.com', NULL, NULL, '7f28c52f61490b44f81ea20913a29167f484f66a9adcbadbfba42a861f6ba0b9', 'Basic', NULL, '36', '2019-12-27 19:19:03', '2019-12-27 19:19:03', NULL),
(146, '375e811a-24ee-384e-81a4-daebbd1f4bc1', 'Prof. Rae O\'Connell', 'male', '1987-03-23', 'Hindu', 'North Lacey', '874 Drake Radial Apt. 587\nRandiberg, NM 89829', '(492) 426-5411 x73027', '3pedro.hirthe@hotmail.com', NULL, NULL, '12fd33a802a742f96a66122ad8751958c2d71c99b1eccd6199e02cdd8463fb81', 'Basic', NULL, '18', '2019-12-27 19:19:03', '2019-12-27 19:19:03', NULL),
(147, '19490a3e-3c1c-39bd-9b15-e8141b398d4d', 'Cletus Ruecker', 'male', '2001-03-19', 'Kristen', 'Ortizview', '7923 Kerluke Place\nPort Celiaberg, ID 53030-5110', '+1-314-345-8873', '9twolf@gmail.com', NULL, NULL, '9ca24cec5ac56f028eba0cd3022243da6cdba073c427c6ce2ba3b1ff61775417', 'Basic', NULL, '37', '2019-12-27 19:19:03', '2019-12-27 19:19:03', NULL),
(148, '056d6c66-1819-3361-b371-e8d7e9f5eb43', 'Ibrahim Lesch', 'male', '1972-01-05', 'Konghucu', 'Leoneport', '7469 Stokes Plaza Apt. 744\nIsaifort, MD 57154-8295', '(725) 578-4884 x99670', '7630875luna.ritchie@gmail.com', NULL, NULL, '4114893647b3b1a97c7c274c33ee73f0e2e6d97e104f14e87922e9eb88629cd8', 'Premium', NULL, '27', '2019-12-27 19:19:03', '2019-12-27 19:19:03', NULL),
(149, '7c7ed2ce-fd56-3db7-94a1-9e677282058e', 'Eudora Lockman', 'female', '1984-06-28', 'Kristen', 'North Valeriebury', '22900 Percy Flat\nGleichnershire, IN 74932', '+1-458-996-2456', '39387911isabella95@gmail.com', NULL, NULL, '6c924ef2f47b5f2433272b8ffa709544082ce4caca5c9cfefebfe59ddecb4e4c', 'Premium', NULL, '18', '2019-12-27 19:19:03', '2019-12-27 19:19:03', NULL),
(150, '23457363-4bcc-3460-b1d5-ceecd1ac0d81', 'Prof. Ansley Mann IV', 'female', '1984-03-21', 'Konghucu', 'Kirlinmouth', '8615 Hazel Harbors Apt. 140\nCormierberg, FL 79833-1552', '730.420.7719 x964', '9398095mccullough.jena@yahoo.com', NULL, NULL, 'badfe7782055461d138ca47b19415546768a8b7afdf3829dfc30c9687dac21a6', 'Premium', NULL, '11', '2019-12-27 19:19:03', '2019-12-27 19:19:03', NULL),
(151, 'f323444b-9123-3c18-93f4-579b77202ba5', 'Royal Conroy Sr.', 'male', '1987-12-23', 'Konghucu', 'South Larissa', '797 Bednar Mall\nDenisshire, IL 60124-3244', '990-415-9559', '2453ipadberg@hotmail.com', NULL, NULL, '9a25510d5684892f785a7dbeccf32e9940696c195d8bdf2e77fca726e3b9e278', 'Premium', NULL, '32', '2019-12-27 19:19:03', '2019-12-27 19:19:03', NULL),
(152, 'f5dcce1b-3c41-348e-852f-386572cfa646', 'Maeve Homenick PhD', 'male', '1986-04-26', 'Kristen', 'Greenfelderton', '725 Aileen Port\nSchimmelborough, KY 88377-0880', '(258) 393-1792', '5760moore.rosamond@hotmail.com', NULL, NULL, '883521dc8e222fa47b22ecb84912a549b3125b0c0c8eee4441853cd26e7f5e6f', 'Premium', NULL, '20', '2019-12-27 19:19:03', '2019-12-27 19:19:03', NULL),
(153, '1e4e1099-1e10-375a-8388-e3870f963a63', 'Liliane Jakubowski', 'male', '2019-04-23', 'Islam', 'North Ariview', '4273 Marguerite Mews Suite 069\nWillton, LA 78127', '554.587.1674 x4758', '45418nkihn@hotmail.com', NULL, NULL, 'f176ec6df9657227ec3d6c4dfc7b6d17d03f13266fd5c82c1762acf7a7ca39ed', 'Basic', NULL, '34', '2019-12-27 19:19:04', '2019-12-27 19:19:04', NULL),
(154, '5ea7519c-a9ee-310e-b9c2-72d7b3cb28cb', 'Sydni Lynch', 'male', '1982-02-19', 'Islam', 'Veumborough', '301 Bernie Ridges\nWest Maryjane, MS 26685', '579-840-5941', '800297505eusebio.ledner@yahoo.com', NULL, NULL, '11aef70125da3926544943353152ec56ed672786645317586e6a0bb75618c269', 'Premium', NULL, '20', '2019-12-27 19:19:04', '2019-12-27 19:19:04', NULL),
(155, '4e5c6a2d-547a-3553-8253-d070829cb931', 'Laurel Gislason', 'male', '1984-11-10', 'Islam', 'South Cassandratown', '4429 Prohaska Union\nDemetrischester, FL 18329', '1-958-506-1232', '24malachi85@hotmail.com', NULL, NULL, '7e4bca5f7d1c00217843b87bf883034cf4fbdf6555b83b119830572f1da0494a', 'Basic', NULL, '37', '2019-12-27 19:19:04', '2019-12-27 19:19:04', NULL),
(156, '458c8220-9c9c-37d3-900c-69a2805cc563', 'Gunnar Cartwright', 'female', '2003-12-27', 'Islam', 'Cadenview', '2219 Bauch Trail\nPort Waylon, LA 62644-9942', '(841) 214-4931 x9177', '956567charlie.padberg@gmail.com', NULL, NULL, '814d85014cf020784a5bdd08a437a2291e37b3b998d57f8d41abcc761c74218b', 'Premium', NULL, '39', '2019-12-27 19:19:04', '2019-12-27 19:19:04', NULL),
(157, 'f82775ec-09d5-3daf-b255-43b826619f3b', 'Ms. Hallie Dicki', 'female', '1972-12-28', 'Kristen', 'Donnyberg', '8082 Bradtke Prairie\nMarisolside, CT 25540', '397.695.0770 x30752', '600557387schneider.kaitlin@yahoo.com', NULL, NULL, 'a452621af09f662b624d697842dfe006683241a489178f01150206b36a734934', 'Basic', NULL, '11', '2019-12-27 19:19:04', '2019-12-27 19:19:04', NULL),
(158, '1db7acd7-6442-3e2e-bf33-46597fb9ed84', 'Jayson Dibbert', 'female', '1976-05-22', 'Hindu', 'Leannmouth', '497 Ryan Ford\nWest Norma, IL 95557', '(321) 675-6989 x966', '176hyatt.ray@yahoo.com', NULL, NULL, '35bf1e38b3774ad057403dee3497c553ce640f4408b2392678d02b598c4d6b9e', 'Premium', NULL, '26', '2019-12-27 19:19:04', '2019-12-27 19:19:04', NULL),
(159, '94244e11-1ff6-30e9-818c-9420560133aa', 'Santiago Larkin', 'female', '1973-08-22', 'Kristen', 'North Tomasafurt', '7231 Cummings Causeway\nLemuelshire, IN 19043', '1-352-304-9242 x36707', '5264776jacklyn.robel@hotmail.com', NULL, NULL, 'e40b4324f76ca6beb385252c828bd077cf9551f6f631648cc6fd7af8085ce37e', 'Premium', NULL, '24', '2019-12-27 19:19:04', '2019-12-27 19:19:04', NULL),
(160, '321c7c6e-18ed-3c4e-8768-a05259ab792e', 'Ms. Earline Green DDS', 'male', '1999-09-12', 'Budha', 'Colinchester', '6869 Kuhic Loaf\nEast Forestfort, NJ 77587-1513', '684.776.8529 x1693', '1359363pedro.prosacco@yahoo.com', NULL, NULL, 'cb8f3e4287506c79e552b5e1b0f0a213948808a6c03a0baf1f9dd6d61a435f03', 'Basic', NULL, '8', '2019-12-27 19:19:04', '2019-12-27 19:19:04', NULL),
(161, '2f0e7ff5-a8fa-328d-92d4-2469f7d72b94', 'Dallin Roberts', 'male', '2019-06-03', 'Islam', 'Bartolettichester', '9037 Stanton Mews\nPort Elseberg, ME 54952', '497.641.2116 x70747', '362459elmore.muller@gmail.com', NULL, NULL, '7e463f5f250ad102f52a075a8185273c78d116a119501243c92f21405582954f', 'Premium', NULL, '11', '2019-12-27 19:19:04', '2019-12-27 19:19:04', NULL),
(162, '0d59b895-bb4a-3fc5-9df9-66d61f3213a3', 'Dr. Moises Witting Jr.', 'male', '2016-05-19', 'Kristen', 'Lanechester', '15213 Dickens Knolls Suite 165\nHannahberg, KS 25740', '515-656-5792', '418462stehr.andreanne@hotmail.com', NULL, NULL, 'd395884e8af3793487b28f28b3e22e4b814230a57d91fe4eaa1fa93484a5ae01', 'Premium', NULL, '28', '2019-12-27 19:19:04', '2019-12-27 19:19:04', NULL),
(163, '3faf2965-8ae7-3b98-aacd-313dc8ab86b0', 'Miss Liliana Hirthe', 'female', '1983-04-30', 'Hindu', 'South Elsachester', '44147 Feeney Ranch Apt. 665\nWisokyland, SD 65144-1303', '940.598.1618 x130', '5988jgibson@hotmail.com', NULL, NULL, '2bb3d41593a66de4dab3256d59d5c54c7515f08d6748a2d065e386b915056f93', 'Basic', NULL, '15', '2019-12-27 19:19:04', '2019-12-27 19:19:04', NULL),
(164, '22ec9597-f271-3712-8a01-55434429f6ce', 'Miss Hattie Jerde', 'female', '2019-06-11', 'Budha', 'Cynthiatown', '2430 Veronica Well Suite 498\nRyanfort, CT 32874', '702-804-8899 x48305', '8466feil.kristoffer@hotmail.com', NULL, NULL, '946ca06377e3f961a15a01ad3d315953c0ce2567a10c8f06138eab49c0972f5a', 'Premium', NULL, '31', '2019-12-27 19:19:04', '2019-12-27 19:19:04', NULL),
(165, '8f0a01da-11db-319c-874a-105eb79751c2', 'Matteo Leannon', 'female', '2009-10-06', 'Islam', 'Kossshire', '1313 Lupe Summit\nLake Tyrellborough, ME 39683', '809-660-8670 x8827', '499291mrutherford@yahoo.com', NULL, NULL, '97a49569ae4b324c7335f447f61d9fede2d9c9f4cd58708a59e4628bcadad732', 'Basic', NULL, '18', '2019-12-27 19:19:04', '2019-12-27 19:19:04', NULL),
(166, 'a90be5de-6a15-32f3-99c6-63426a4b1533', 'Mr. Haleigh Grimes DDS', 'male', '2013-09-11', 'Konghucu', 'South Deionview', '431 Hartmann Inlet Suite 182\nDickinsonstad, NY 67660', '+1.865.578.1531', '362289268assunta.hilpert@yahoo.com', NULL, NULL, '5f349f41399c1553b04db33ab6cfaff7d7ed3ba53ed4f59fe9bfb00cbe8f39a1', 'Basic', NULL, '38', '2019-12-27 19:19:04', '2019-12-27 19:19:04', NULL),
(167, '57bc20ef-063f-3140-a3ab-0b242995bf54', 'Chadrick Luettgen', 'male', '1991-09-24', 'Konghucu', 'Lake Tia', '7596 Oral Creek Apt. 551\nAnyaland, NE 60788', '678.282.5812 x5323', '554348skutch@gmail.com', NULL, NULL, '1d0462a188b4da33277b12aab029d9d2defb8162b1eab3bd684e4342f8e7320e', 'Basic', NULL, '22', '2019-12-27 19:19:04', '2019-12-27 19:19:04', NULL),
(168, 'ccb8aaa1-e65e-3900-959a-7487e893228b', 'Carleton Robel', 'male', '1986-09-16', 'Kristen', 'Bernardoville', '3694 Warren Oval Apt. 398\nPort Christy, OR 30342-9705', '(720) 334-7550', '90bergstrom.jillian@hotmail.com', NULL, NULL, '8b0637ccafeb4eadbc0c3848f4add2b738b1cbad1cfc722ad107dc61e7fc4d84', 'Premium', NULL, '3', '2019-12-27 19:19:04', '2019-12-27 19:19:04', NULL),
(169, 'f7231184-a022-3131-a1b4-571d9b3aff42', 'Andre Kuhlman', 'male', '2001-03-09', 'Islam', 'East Clydeland', '925 Klein Knoll\nPeterville, VT 39171-8895', '+1.910.457.3081', '34903634nsatterfield@yahoo.com', NULL, NULL, '5a2a72aeab93814d591dc86a08f0a00ec9c08ec8700df43ffefa0881cef5a3c4', 'Basic', NULL, '26', '2019-12-27 19:19:04', '2019-12-27 19:19:04', NULL),
(170, '9bd05935-af36-310b-a6f8-b03def490a38', 'Filomena Zulauf', 'female', '2008-08-13', 'Islam', 'Bergnaumview', '27190 Corwin Crescent Suite 963\nAthenabury, GA 28935-4768', '793-619-9469 x8385', '921700russel.alexander@gmail.com', NULL, NULL, 'afe95d92bddea8124ab390000bed9403e7b62d150f3b00813367dce9dfc298a8', 'Basic', NULL, '12', '2019-12-27 19:19:04', '2019-12-27 19:19:04', NULL),
(171, '5c53ff01-2653-3cee-8b00-7caf13dd21ae', 'Kirstin Welch', 'male', '1986-02-18', 'Kristen', 'Herminiaburgh', '51815 Abbie Locks Apt. 292\nJoseview, NH 32927-7909', '1-643-366-0539', '9210286heather.mcglynn@hotmail.com', NULL, NULL, 'd0e2c714223d78e26cd8ad04ee6808968f1a98ed09e858a642f1b8298264288f', 'Basic', NULL, '7', '2019-12-27 19:19:05', '2019-12-27 19:19:05', NULL),
(172, 'c72a0c0b-948d-3319-81a5-8d53f31ca2fd', 'Ebba Wolf', 'male', '2003-04-29', 'Hindu', 'Perryport', '39788 Rippin Fort\nEast Vidal, NH 75884', '389.530.3935 x428', '7006joy.sanford@yahoo.com', NULL, NULL, '2a0918ca02adeb36f836e2fcf49b1d0b496923820913ee4354979f5e8f580333', 'Premium', NULL, '37', '2019-12-27 19:19:05', '2019-12-27 19:19:05', NULL),
(173, 'e2107e83-4ae0-3648-a602-3e9e530513ec', 'Mrs. Alexandria Hoppe MD', 'male', '2018-08-15', 'Islam', 'Edgardostad', '4828 Brekke Ports Apt. 832\nShieldston, AZ 79818', '1-996-966-0827 x74876', '3802hickle.adrain@hotmail.com', NULL, NULL, '9dddc2a3b1f25a0f93819bdbae8732233b3ce7a708f2ae675dd1ab116bca14db', 'Basic', NULL, '15', '2019-12-27 19:19:05', '2019-12-27 19:19:05', NULL),
(174, '6a3dd141-2f8a-3393-969a-5563487f350f', 'Liliane Bernhard', 'female', '1977-12-08', 'Budha', 'Mozellebury', '74078 Bethel Shore\nNorth Edenfurt, CT 02187', '(946) 637-3621 x88057', '876loyal59@gmail.com', NULL, NULL, 'ccd32f7c1fa400caeb883873cfdf1638b770a0c7758de0f2170320cb87d3f486', 'Premium', NULL, '31', '2019-12-27 19:19:05', '2019-12-27 19:19:05', NULL),
(175, '823be6aa-31a4-33a1-99fc-c07c09d35631', 'Zaria Kovacek DDS', 'male', '2013-04-14', 'Islam', 'New Felipashire', '3497 Kailey Point Apt. 116\nBrodyfort, CO 17918', '204-207-9551 x789', '7749fiona.ledner@yahoo.com', NULL, NULL, 'c6987325acfdada7591eff252be84149174a70d5a8eda87b908c0ee138ed337f', 'Basic', NULL, '5', '2019-12-27 19:19:05', '2019-12-27 19:19:05', NULL),
(176, '33748478-7f6e-3e79-b1db-44c62a577ba4', 'Ms. Alia Schmitt V', 'male', '2005-08-21', 'Islam', 'North Reynaberg', '2414 Mann Village Suite 091\nLake Zenatown, HI 58512-1411', '996-642-5539', '3pdibbert@gmail.com', NULL, NULL, '571adeabadace79b87dd9bd26ee9206edcad8f0c9e713bbb30bcd81e2b3d09c1', 'Premium', NULL, '33', '2019-12-27 19:19:05', '2019-12-27 19:19:05', NULL),
(177, 'f382b0d5-fa47-35a7-8792-bf69dbc0d659', 'Antonetta Becker', 'female', '2015-07-28', 'Kristen', 'East Lillian', '95910 Davis Center Apt. 549\nDorisborough, CA 14982', '(326) 441-2405 x18883', '6404jacey42@hotmail.com', NULL, NULL, 'b09f3212808e4eb12c74f5d4beb95703ef39f844cb2be952c018f4f7a05fe3e3', 'Premium', NULL, '22', '2019-12-27 19:19:05', '2019-12-27 19:19:05', NULL),
(178, '8991899d-278f-3bad-8b64-0ae8cb939669', 'Keanu Crooks', 'female', '2009-07-16', 'Konghucu', 'Schmittfurt', '41818 Clifton Shoal\nPort Jacquelynchester, MA 37627', '(553) 434-5522 x2134', '45170297vmoen@hotmail.com', NULL, NULL, 'a2d713e66a85897652f27b6191deb6a37ca6f34424e2aa70af848f8a769945f6', 'Basic', NULL, '32', '2019-12-27 19:19:05', '2019-12-27 19:19:05', NULL),
(179, '0710e752-a092-31be-990c-72bf6f9e32f3', 'Earl Ortiz', 'female', '2000-03-21', 'Konghucu', 'New Greenborough', '78214 Princess Mountain\nSouth Viviane, MA 59224-1417', '1-651-365-4230 x8680', '2507256victoria.wiza@yahoo.com', NULL, NULL, 'b36d87090d3b2b75ed9573bb860b60268dd5921eb0a705fd342e3167519b4f71', 'Premium', NULL, '2', '2019-12-27 19:19:05', '2019-12-27 19:19:05', NULL),
(180, '3eabec51-b5b8-3182-a8a5-e8e1492d906c', 'Imogene Jones', 'female', '1999-11-11', 'Konghucu', 'Fayhaven', '37396 Rosario Cove Apt. 691\nSouth Royal, OH 35596-6840', '+19132883914', '9151marian67@yahoo.com', NULL, NULL, 'b57371230d8661e5c1cd3541a0f4dd87488dd6b6af43e210c66354a9ef53472b', 'Basic', NULL, '27', '2019-12-27 19:19:05', '2019-12-27 19:19:05', NULL),
(181, '59269c7a-f8e4-3c66-ad83-1d23e32f05c1', 'Maurine Hickle', 'male', '1978-09-06', 'Budha', 'Port Loganmouth', '701 Torphy Alley Apt. 179\nWest Dangelo, KS 08560', '1-951-402-6072', '613415001dwilkinson@yahoo.com', NULL, NULL, 'd57707115c0f76eb1347b8d42841e5ab61d44e56ae202d4137ee312a4e005c8a', 'Premium', NULL, '10', '2019-12-27 19:19:06', '2019-12-27 19:19:06', NULL),
(182, '67912eff-d895-3336-8d51-01bed787909b', 'Mara Pouros MD', 'male', '2015-09-11', 'Hindu', 'Torrancehaven', '4214 Dooley Ways Apt. 710\nBeattymouth, VA 99039-1863', '1-286-852-5579 x692', '717larissa.rice@hotmail.com', NULL, NULL, '0625beb0307f9c184d8769f85bf22729472847e7ef15e4681d231afc289aaa29', 'Basic', NULL, '30', '2019-12-27 19:19:06', '2019-12-27 19:19:06', NULL),
(183, '2be2962c-b1b4-3354-8c6c-23778afcdf35', 'Miss Demetris Kris DVM', 'female', '2009-07-07', 'Budha', 'South Marshallfurt', '997 Maddison Field Suite 048\nTheronburgh, WA 95103', '+1.648.217.0242', '7ddamore@yahoo.com', NULL, NULL, '1a62ae8c93445d781ec7f3d1fb41e32522ac889b765180acb7fbafaa2dd8c4bc', 'Premium', NULL, '11', '2019-12-27 19:19:06', '2019-12-27 19:19:06', NULL),
(184, '486420dc-5d9c-390a-ba60-1ee2e1112537', 'Serena Schoen', 'male', '1975-07-12', 'Hindu', 'East Constance', '66905 Derrick Trail Apt. 040\nRogerside, WV 36457', '(596) 271-2286', '768chance.reichert@gmail.com', NULL, NULL, '86ffad8ece14b413a99afeb6aa658b20aa45282e0a24b618b77b4025be83e4d8', 'Premium', NULL, '34', '2019-12-27 19:19:06', '2019-12-27 19:19:06', NULL),
(185, '2bbd6b3e-cb2a-3cc5-b182-37fb10feddfc', 'Dejon Olson', 'female', '2006-11-20', 'Kristen', 'Botsfordberg', '77473 Hagenes Vista Apt. 883\nFlorencioborough, NJ 62190', '(905) 780-0944 x9501', '61909279trevion.hilpert@gmail.com', NULL, NULL, '19ee5de17715b6af6ad23e3c89f8c17aa9d749f360857b036357e93244e1d9eb', 'Premium', NULL, '8', '2019-12-27 19:19:06', '2019-12-27 19:19:06', NULL),
(186, 'd40f484f-ce7a-31e9-8422-9f3c1f1a93be', 'Destany Mertz', 'female', '1987-03-04', 'Budha', 'North Ronnyport', '60917 Americo Valleys Suite 478\nOrtizside, AR 93332', '273-460-6672 x106', '67adonis49@yahoo.com', NULL, NULL, '6b3f1faecf79032d73861991c908c0773b93f1aa2cb63119fda1260e852cf45e', 'Basic', NULL, '36', '2019-12-27 19:19:06', '2019-12-27 19:19:06', NULL),
(187, 'fcc3dbb8-7696-3f50-b802-ebf00b428c49', 'Thaddeus Hill', 'male', '1976-04-25', 'Konghucu', 'North Montanaport', '55943 Erica Stream Apt. 402\nHammesview, ID 21688-4312', '+1-548-945-1412', '1jordyn90@yahoo.com', NULL, NULL, '5f3d48b3ef3dbafa99d2ef274ca23e13e6a8a6371791871001f6613dfe94406d', 'Premium', NULL, '19', '2019-12-27 19:19:06', '2019-12-27 19:19:06', NULL),
(188, '62c7f864-98e9-3075-ba6c-b0bc4705fc65', 'Garett Daniel', 'female', '1985-04-01', 'Konghucu', 'Ornberg', '19402 Sunny Lane Suite 705\nHaleyshire, VA 09098-3883', '+1-301-219-2363', '6myrtle78@hotmail.com', NULL, NULL, 'b5d89e132e070b6896936a04cdb86761b311c1d258deb52be44b0b97e59a757b', 'Premium', NULL, '36', '2019-12-27 19:19:06', '2019-12-27 19:19:06', NULL),
(189, '262a13aa-4173-3196-ad4f-1e5b843de096', 'Johnpaul Welch', 'male', '1973-04-23', 'Konghucu', 'Port Verlie', '3367 Krystal Spur\nWalshshire, NH 25826-7251', '705-486-3005 x213', '733nolan69@hotmail.com', NULL, NULL, '5616f837a2d1de23b757e9b27ce16eca768737462d02b8f166f1640cb7527dc6', 'Premium', NULL, '8', '2019-12-27 19:19:06', '2019-12-27 19:19:06', NULL),
(190, '25612dde-6700-3ae1-b137-70b006bf7f7b', 'Miss Laurie Anderson', 'female', '2007-10-02', 'Islam', 'East Art', '77300 Abbott Highway\nSchultzview, ND 21226-7796', '472-549-8458', '915907066andreane33@yahoo.com', NULL, NULL, '023ef5805aa09d957c5378c87753e19df7fc40cdfabd3aaf02223b1ba2eae60c', 'Premium', NULL, '29', '2019-12-27 19:19:06', '2019-12-27 19:19:06', NULL),
(191, '3721cab0-cae4-30dd-a279-4ddc2d7bc8f5', 'Prof. Milton Kuvalis', 'female', '2016-12-05', 'Konghucu', 'South Priscillafort', '69095 Grant Unions Suite 915\nGreggstad, MD 08057', '386-882-7543 x18895', '81179596elinore.gorczany@hotmail.com', NULL, NULL, '36d9d9b6b0b5e3ac912751be7df6fe387fea96eee12aa30aa22c23713f706163', 'Basic', NULL, '39', '2019-12-27 19:19:06', '2019-12-27 19:19:06', NULL),
(192, '4257905e-eee7-3f95-bf62-51d4af5f890f', 'Mrs. Lacey Hodkiewicz IV', 'female', '1987-09-24', 'Hindu', 'Lake Marielle', '7194 Medhurst Springs\nNew Toni, MO 83953-7974', '365.529.5595', '93roderick52@hotmail.com', NULL, NULL, '9ae24d1e05069aa4e27b33f33ffe76600cf4f7c03a40fa859172859756c51f2e', 'Basic', NULL, '15', '2019-12-27 19:19:06', '2019-12-27 19:19:06', NULL),
(193, '0b410f07-3a63-3d48-8e50-969d3ed5ddac', 'Isom Cummings', 'female', '1981-07-22', 'Budha', 'East Jeanne', '7458 Terry Junction\nNew Toyfurt, CT 53897-2919', '+1.973.625.9775', '98elnora74@yahoo.com', NULL, NULL, '5bf5ea7842c9603c55418f0267619829423c1e66ba1c9c32e73038fc850dd421', 'Basic', NULL, '8', '2019-12-27 19:19:06', '2019-12-27 19:19:06', NULL),
(194, '0f5a0b60-927c-367a-8bae-4b2f5524f723', 'Prof. Jamie Lubowitz II', 'female', '1993-10-26', 'Islam', 'East Cierrachester', '98998 Lemuel Glens Apt. 009\r\nWest Ally, NH 91824', '297-278-3970 x128', '1134483remington79@yahoo.com', NULL, NULL, '5a9434eddf6bfbd91b6f711cfb24e6e14377b77fadca72e5a3b653101bbb0199', 'Basic', NULL, '13', '2019-12-27 19:19:06', '2019-12-28 08:05:14', NULL),
(195, 'e87678f8-e52b-32db-9aef-08fadd2e0246', 'Christine Wilkinson', 'female', '1994-05-24', 'Budha', 'Weissnatstad', '233 Price Route\nSouth Katlynnstad, MO 75451', '986-456-9765 x760', '42587mia.labadie@gmail.com', NULL, NULL, 'f3820034671092414d540c141983ef8de3cbd435cc205dd6802f52a6faadf8f9', 'Premium', NULL, '14', '2019-12-27 19:19:06', '2019-12-27 19:19:06', NULL),
(196, 'fa04f57c-20d5-3439-bc5b-66696559e218', 'Dr. Tyrique Swift', 'female', '2017-11-13', 'Kristen', 'Josiannebury', '72882 Jaskolski Track Suite 398\nPort Frank, ID 72489-5624', '949-560-4021 x574', '70100sally67@gmail.com', NULL, NULL, 'ff60a50a62c0f17c220a9eafe2e5096689698f40450e266dc12da6c231f0ce9c', 'Premium', NULL, '2', '2019-12-27 19:19:06', '2019-12-27 19:19:06', NULL),
(197, 'b1a88c12-3d32-349f-b16b-6d25540d2b92', 'Raymundo Kessler II', 'male', '1993-01-15', 'Konghucu', 'New Alejandraberg', '49213 Larkin Forks\nJudahton, OH 64660', '+1.354.769.5910', '76veronica.hauck@yahoo.com', NULL, NULL, '36887eb74611147a502b1c4e4ed0ecda35ed5b7c06a8207f75c495557aa46426', 'Basic', NULL, '20', '2019-12-27 19:19:06', '2019-12-27 19:19:06', NULL),
(198, 'bef18253-e50b-3e27-affc-5e6f9aeb8c4e', 'Horacio White', 'female', '1982-08-14', 'Budha', 'South Maiyaburgh', '873 Reece Terrace Suite 501\nAnabellechester, GA 67349', '736.723.1723 x44704', '866okuneva.adalberto@gmail.com', NULL, NULL, '4cd8365585fb610f3bee309dfb4a2dac9246edd4df59be49bc47c24dce2c20bb', 'Basic', NULL, '2', '2019-12-27 19:19:06', '2019-12-27 19:19:06', NULL),
(199, '365fa637-a360-3eaa-98f2-b6a226f40cf2', 'Robyn Shields', 'female', '1976-11-06', 'Kristen', 'Cronatown', '204 Wuckert Mountains Suite 878\nMarilieport, GA 67952-5246', '1-316-749-6622 x494', '9500937maximillian96@yahoo.com', NULL, NULL, '1e2e6c78d4aa98849ed7bebf0d8a63357da52a5088a732f5c96567a405f788ed', 'Basic', NULL, '35', '2019-12-27 19:19:07', '2019-12-27 19:19:07', NULL),
(200, '2ef914b9-8108-3fef-be67-20a9e3def106', 'Baby Graham', 'female', '1979-11-18', 'Kristen', 'Melbamouth', '7541 Gus Spurs Suite 125\nWest Nashburgh, MA 10272-5183', '+1.802.968.7867', '715719235vonrueden.wilhelmine@hotmail.com', NULL, NULL, '4108d3645f3614e97ec925fc8b5f024c25aeea822a545571ded4a01d0f7986c6', 'Basic', NULL, '10', '2019-12-27 19:19:07', '2019-12-27 19:19:07', NULL);

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
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `position_id`, `id_card_number`, `name`, `gender`, `birthday`, `religion`, `city`, `address`, `phone_number`, `email`, `email_verified_at`, `token`, `password`, `status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, '6021db93-aec1-3a35-b999-641350400f04', 'Imelda Reynolds', 'Female', '1981-09-05', 'Kristen', 'Kristopherberg', '883 Marianne Summit Apt. 809\nGisselleville, AR 69595', '1-482-665-9325', '304122929nadia83@hotmail.com', NULL, NULL, '36bea606ff76c78c3910c22fd09034beeffde9f257c00f33bd524b8beebb2223', 0, NULL, '2019-12-27 19:18:36', '2019-12-27 19:18:36', NULL),
(2, 5, '4e1c3fab-af39-3fc4-a1a7-4d1e48cf95e1', 'Grant Fadel', 'Male', '2002-05-10', 'Islam', 'New Amariburgh', '1721 Connelly Ville\nAracelifurt, MA 58297', '+1-914-219-4022', 'aman@gmail.com', NULL, NULL, '$2y$10$yebXMC1KpJR4ZXQ4SNyQmuu2.RLxN1e1/yFLQic4K/6FGwu5pATL.', 1, '2LDUcNwsZCaZ4gTYuJLIrCUzh2VEMognjt2ODrIa5Ea8cBVXf5HehdXRqtLZ', '2019-12-27 19:18:36', '2019-12-27 19:18:36', NULL),
(3, 5, 'ae0d179d-0980-3626-9dc3-f137bdf6b4fb', 'Asia Hills', 'Male', '1972-09-05', 'Kristen', 'Ruthechester', '2521 Rempel Unions Apt. 670\nCedrickview, MN 77847-6827', '617.325.7306 x73819', '38766christina06@hotmail.com', NULL, NULL, '384b82e078c9dc24bd8fdfdf1386cb2ab3f98a4f37bbd0623a33e2a4aa31bd58', 0, NULL, '2019-12-27 19:18:36', '2019-12-27 19:18:36', NULL),
(4, 3, '9c484082-75f7-3e35-8544-5b670b89a751', 'Katrina Rath', 'Female', '2015-02-10', 'Budha', 'North Ciara', '43075 Eichmann Walks Apt. 737\nAdellmouth, GA 88252-3472', '+1-323-237-8657', '9129xschaefer@yahoo.com', NULL, NULL, '71f6c67224a681f4340653c6bfa31d4aaf65dabd250e9797983152fdcca21477', 1, NULL, '2019-12-27 19:18:37', '2019-12-27 19:18:37', NULL),
(5, 5, '580a56af-28b3-3259-8f93-4b9b8cf0d289', 'Dr. Felton Halvorson V', 'Male', '2006-12-16', 'Islam', 'West Lysanneville', '277 Adelbert Cliffs\nSouth Wellington, MT 15843-3739', '1-213-293-5909 x34758', '5645gail.little@gmail.com', NULL, NULL, '577bfe20f56652d2940c9865fa3a8ba9e75d5a694376dd55bb832cc7865f9fa6', 0, NULL, '2019-12-27 19:18:37', '2019-12-27 19:18:37', NULL),
(6, 5, 'd9cdb3a5-34d6-316c-ae3b-6cdddf1be125', 'Dr. Van Barrows', 'Male', '1974-01-28', 'Hindu', 'Lefflerport', '574 Gorczany Freeway\nEast Ardella, PA 54742-7558', '+1.615.827.7136', '98606npfeffer@gmail.com', NULL, NULL, '50f0931b86c9afff1765f1907260d31d0de6476666ee92e26a06fbc4a3309669', 0, NULL, '2019-12-27 19:18:37', '2019-12-27 19:18:37', NULL),
(7, 2, '375ec337-d5f5-3b1e-a8a4-89bbc214aecf', 'Mr. Bell Muller', 'Female', '1991-08-20', 'Konghucu', 'Olsontown', '9815 Elta Village Suite 935\nChristopherview, WY 44205', '(662) 741-7761 x465', '2gardner61@gmail.com', NULL, NULL, '489644b5cd19ea801af1cbf14d6e41dcd30c39db5f4262e449358e9a03891592', 1, NULL, '2019-12-27 19:18:37', '2019-12-27 19:18:37', NULL),
(8, 2, '78c8ef96-c6e8-3b13-9f2b-6b4792f0dbcd', 'Rusty Wuckert', 'Male', '2017-12-22', 'Hindu', 'New Sam', '4948 Jarred Summit Apt. 003\nLake Darentown, SC 71468-2491', '1-984-225-8511', '770071051keven28@gmail.com', NULL, NULL, '6abd54b87c1aefca879d29bcd61e0ef4b67306b7e5d21d7c69b0d2a3109ce2ec', 1, NULL, '2019-12-27 19:18:37', '2019-12-27 19:18:37', NULL),
(9, 3, 'b15cbf28-e4c3-3f1c-85f3-4864c1387417', 'Kiley Russel', 'Male', '2015-02-06', 'Konghucu', 'Columbuschester', '2411 Sydnie Rapid\nRoobstad, SC 17299', '1-395-839-7429', '4048vstanton@hotmail.com', NULL, NULL, '343e729abfbd83f87a86db2beee3404680308175267c928ef8f87a4d3421ad55', 0, NULL, '2019-12-27 19:18:37', '2019-12-27 19:18:37', NULL),
(10, 2, '2eee6e5a-d451-3ad8-9ec2-6dcf01b2a62d', 'George Torphy', 'Female', '2000-05-28', 'Kristen', 'East Elisefort', '393 Meta Point Apt. 906\nSouth Jensen, LA 20156', '826-856-7317 x228', '710alivia72@yahoo.com', NULL, NULL, '23adc6d3df5f61799ebaaf57da3e6bb25253a84bfe8eea367ad5d0753aeb2470', 0, NULL, '2019-12-27 19:18:37', '2019-12-27 19:18:37', NULL),
(11, 3, 'aee62aa0-d07f-3484-bcab-a1647557a3ff', 'Evert Wolf', 'Female', '1998-02-12', 'Kristen', 'Andyberg', '76841 Kunde Bridge Apt. 528\nEbertstad, ME 49488', '(948) 250-8671', '443grimes.kiel@yahoo.com', NULL, NULL, '2e3c72b9b8763fd6a77965f49da44e9d89c70724069871c81854408f3ba41518', 1, NULL, '2019-12-27 19:18:37', '2019-12-27 19:18:37', NULL),
(12, 1, 'd09fbe22-00c3-39a0-9ec5-e2c5ef206a2d', 'Geraldine Hauck', 'Female', '1992-10-10', 'Budha', 'Port Sonya', '26590 Schmeler Expressway Apt. 682\nLake Dawn, AZ 69566', '+1.575.898.7629', '8122gilberto.beatty@gmail.com', NULL, NULL, 'bbe013f3d7d9cca46d7e8b8c0db323daf71850de7de647ca87764d7cd0bca053', 1, NULL, '2019-12-27 19:18:37', '2019-12-27 19:18:37', NULL),
(13, 3, 'c48dc5a1-daff-39c7-85b3-2ccdc543a3d7', 'Orrin Jones', 'Female', '2006-10-18', 'Kristen', 'Thompsonburgh', '9886 Karli Green\nBeerchester, NJ 63449', '(298) 450-3741', '694590eorn@yahoo.com', NULL, NULL, 'f9bfc23fd45d9422d1a82bb3a3718202f6fe523333bdea7e25c7fb1f38a066f5', 1, NULL, '2019-12-27 19:18:37', '2019-12-27 19:18:37', NULL),
(14, 3, 'fbaac3a1-cb99-393e-bd36-11b3cb4a7d88', 'Montana Zboncak', 'Male', '1970-05-03', 'Hindu', 'Kuhlmanborough', '44821 Clark Village Apt. 663\nHomenickborough, TN 33876-5076', '789.526.3159 x535', '763purdy.sister@gmail.com', NULL, NULL, '88aa4d5667105299b56a8c42f41ee901eea563684e81edaaf38c5d0e2f0a6c02', 0, NULL, '2019-12-27 19:18:37', '2019-12-27 19:18:37', NULL),
(15, 3, '66db1c1b-22d4-34fe-834b-bf0a4f633223', 'Aliya Hermiston', 'Female', '1975-09-05', 'Kristen', 'McLaughlinton', '666 Herman Dam Apt. 151\nKrisfort, IN 48150', '(921) 484-4876', '3paucek.helena@hotmail.com', NULL, NULL, 'b8b3cb696009a82c01428f3c882cd4dfb65dacd2912a0cfeefa7cfaf7e8a4018', 1, NULL, '2019-12-27 19:18:37', '2019-12-27 19:18:37', NULL),
(16, 2, '446737f4-c291-3942-93a0-03b8c9d954f2', 'Prof. Leonor Wilkinson', 'Female', '1972-06-01', 'Islam', 'Lake Theresemouth', '27528 Christophe Highway\nArmstronghaven, ID 18665-6081', '942-715-4834 x0863', '14birdie.quigley@hotmail.com', NULL, NULL, 'ec08e248cdf4ff269ad286d5a9564ef352a7c7cbddc0222bf6fe4fc1d2a4c185', 1, NULL, '2019-12-27 19:18:37', '2019-12-27 19:18:37', NULL),
(17, 5, 'f1d2ba44-c314-3bb2-9c9c-6343f1026131', 'Gabriella Stark', 'Female', '1981-03-24', 'Islam', 'Walterville', '834 O\'Kon Estate\nMuellerview, NY 39723', '1-427-568-1605 x417', '4153831nbrekke@yahoo.com', NULL, NULL, '8b3cb7e53c73a9feb5bf2b58487b40033c17610a864ab140afda675642f88f2b', 1, NULL, '2019-12-27 19:18:37', '2019-12-27 19:18:37', NULL),
(18, 4, '8fb48d82-6d90-364f-b66f-cebbada99939', 'Bonita Brown', 'Male', '2003-10-05', 'Budha', 'Bergstromborough', '556 Selina Point Suite 504\nWilkinsonshire, ND 03405-0067', '+1-665-692-3306', '5221dominic84@yahoo.com', NULL, NULL, '6c8a34b6df53b026a9fe8be530fe9c59f173e403ea21e7226b79b53aa65105af', 0, NULL, '2019-12-27 19:18:37', '2019-12-27 19:18:37', NULL),
(19, 5, '8de93bc6-3220-35d8-ad8c-4f253557d00c', 'Ramon Hoeger DDS', 'Female', '1992-06-20', 'Hindu', 'Gloriamouth', '550 Shanahan Ridges\nPort Melynaville, MO 46278-7053', '392-465-1060 x497', '51200351fay.lula@yahoo.com', NULL, NULL, 'c8a743e6e9bd6f95d195e1b223c4968a73f8818239eea5bdfcbb462aaf21896c', 1, NULL, '2019-12-27 19:18:37', '2019-12-27 19:18:37', NULL),
(20, 4, 'd919c101-d9fe-3f58-b16f-fa8a053e16f9', 'Mara Weimann', 'Female', '1991-09-19', 'Konghucu', 'Hermannmouth', '26832 Veum Mount\nLeoraville, WV 90731-0416', '+1-748-582-8150', '18gspencer@yahoo.com', NULL, NULL, '4b704efbec9993cb15ce51111f548116c5a1ae863ad8c78101a05662e27d2a9d', 0, NULL, '2019-12-27 19:18:37', '2019-12-27 19:18:37', NULL),
(21, 1, '6f15c90b-dc1a-364b-b848-b6bf39726384', 'Lois Yundt', 'Male', '1987-11-27', 'Islam', 'New Davonte', '9072 Schmitt Fords\nNew Alvena, PA 35486', '+1 (302) 696-3055', '14715350jefferey.reilly@hotmail.com', NULL, NULL, 'fd32da55728251e3cb4f1864a0739305f61876678fbed7a3a1ae2a579bc5f3f8', 1, NULL, '2019-12-27 19:18:59', '2019-12-27 19:18:59', NULL),
(22, 8, '7ea9b88f-167d-36fb-b72d-d79395cb6cb1', 'Bernice Beer', 'Male', '2008-12-05', 'Budha', 'Americaville', '473 Peggie Orchard Suite 415\nKiarrastad, ID 62500-2985', '(546) 613-1325', '17901855ggreen@hotmail.com', NULL, NULL, '3240e2faf17a0640c20494f3c00f16895e99d10e8f96a36da79bcd5b34890846', 1, NULL, '2019-12-27 19:18:59', '2019-12-27 19:18:59', NULL),
(23, 2, '4c0a669f-f13d-3ccc-80a0-3c3de81064c6', 'Prof. Kathleen Feil', 'Male', '1993-01-25', 'Konghucu', 'South Gloria', '29196 Hilpert Common\nNorth Alicia, WI 15869', '+1-964-689-3340', '1krista.raynor@gmail.com', NULL, NULL, '4d727e0acb348c528b9e8113db8ae2413353b1193c9eb3c998b567ae5b7ddfb8', 0, NULL, '2019-12-27 19:18:59', '2019-12-27 19:18:59', NULL),
(24, 5, '6d0c5dda-3252-3e0b-80bf-06f26b839c19', 'Dr. Felipa Thiel', 'Female', '2009-08-18', 'Kristen', 'Gislasonport', '708 Yost Valley\nSouth Lunatown, NH 34950-0272', '(471) 220-9510 x307', '7gkoch@hotmail.com', NULL, NULL, '97fce4cac3104b946e41de4509c4a716940410578c5220ae540f2c791fe43cc6', 0, NULL, '2019-12-27 19:18:59', '2019-12-27 19:18:59', NULL),
(25, 2, 'fe24326d-7b88-301b-80cb-755d4e5dd442', 'Ms. Pat Nader', 'Male', '1989-11-26', 'Konghucu', 'South Willa', '46350 Olen Rue\nPort Lucy, WV 66136-1212', '(246) 655-4214 x68608', '8krystal.kuhn@hotmail.com', NULL, NULL, 'c036518014913be22092d38e36860f8168f3f730d2358921b8fb304ab161596d', 0, NULL, '2019-12-27 19:18:59', '2019-12-27 19:18:59', NULL),
(26, 9, '9fa37c5b-21db-3015-ac20-1f9c1ff5bf4a', 'Peyton O\'Hara', 'Female', '1971-05-14', 'Kristen', 'West Ryder', '109 Elouise Summit\nLittelton, AK 48774-6742', '+1-446-825-1386', '376460cruickshank.saul@yahoo.com', NULL, NULL, 'b892de89e15b0da1e09c8ce7bfa3d9d2fd0cfd10b722390a3aebc168dccfeac3', 0, NULL, '2019-12-27 19:18:59', '2019-12-27 19:18:59', NULL),
(27, 4, '05638888-a90a-3426-844c-f2d011bd8242', 'Garrison Tillman', 'Male', '2007-05-13', 'Hindu', 'North Sylvanton', '99879 Keegan Ramp\nLake Everett, CT 96900', '440.771.2182', '4421978mann.kailyn@hotmail.com', NULL, NULL, '343fbf1afd34e01336adf6ac0aba9b9a2c2a8eaba86b962ba5abdd5c1ab3d9f8', 1, NULL, '2019-12-27 19:18:59', '2019-12-27 19:18:59', NULL),
(28, 9, '9be4c5c5-53f4-3326-a4be-9106f65f105a', 'Efren Mosciski III', 'Female', '2010-04-17', 'Hindu', 'South Lolitashire', '2247 Coty Drive Apt. 679\nWelchstad, WY 41398', '934.584.4184', '81444glennie.bergstrom@hotmail.com', NULL, NULL, '9a70277ecf736b8ad83c27f1eee1c0e960de79fc3132ff1412219ae560621ae4', 1, NULL, '2019-12-27 19:18:59', '2019-12-27 19:18:59', NULL),
(29, 6, '8402911d-0cda-386d-b58e-04bbf25d9cda', 'Chance Kunze', 'Female', '1979-12-17', 'Kristen', 'Lake Francescomouth', '9150 Ross Prairie Suite 269\nNorth Duncanfort, ND 27090', '(741) 267-8501 x218', '7411ramiro08@gmail.com', NULL, NULL, '0028889916f3a5b6e1d5fb14060bafa2835a4d606c1126b7e34e661b40f5deca', 0, NULL, '2019-12-27 19:18:59', '2019-12-27 19:18:59', NULL),
(30, 7, '4d653a63-4e6f-3c3c-9d1e-c1cbbacaaf53', 'Jazlyn Kertzmann DVM', 'Male', '2003-12-24', 'Budha', 'South Danialshire', '9213 Adell Fall\nWest Conormouth, DE 19558', '919-704-8650 x271', '586982glenda.hansen@yahoo.com', NULL, NULL, 'f50393a0771482145f3a46a0821f219d1d222b8564ce25a309eab75cfa874c31', 1, NULL, '2019-12-27 19:18:59', '2019-12-27 19:18:59', NULL),
(31, 9, '7b1b19a4-11d3-35c9-91ea-757978a0bbc7', 'Alanna Cummings I', 'Male', '1989-10-25', 'Hindu', 'East Verdie', '766 Bernard Wall Suite 134\nPort Norvaltown, WA 86896', '718-862-2320', '608113000stiedemann.shirley@gmail.com', NULL, NULL, '68b648d7badc64d15a2d75f344b1b51add5f15157cdb3d0ce5e538ef76a7c9c6', 1, NULL, '2019-12-27 19:18:59', '2019-12-27 19:18:59', NULL),
(32, 3, '0eb38248-f720-3b20-9997-92112733e0a5', 'Gordon Ferry', 'Female', '1998-03-19', 'Islam', 'Helgaville', '4184 Hector Estates Suite 086\nUllrichtown, CO 52036', '+17074609069', '4212297kaia.veum@gmail.com', NULL, NULL, 'c7823b4232c2d7ffc080a3356278d65bb27e09beec6ad53f98f31fc8c5f23175', 1, NULL, '2019-12-27 19:18:59', '2019-12-27 19:18:59', NULL),
(33, 8, 'fffd2620-61bc-3a85-83ea-025540dca3b3', 'Ms. Kylee Wintheiser', 'Female', '2014-08-29', 'Kristen', 'North Judsonview', '8145 Becker Roads\nEzrachester, NM 83646-8488', '463-849-7607 x550', '722kole.gleichner@hotmail.com', NULL, NULL, '08f440bbba28cb84531d73c84c82434204be2f85ad4b7195f42595f3b55b6a01', 1, NULL, '2019-12-27 19:18:59', '2019-12-27 19:18:59', NULL),
(34, 5, 'c630b10c-333d-349f-b6aa-fc7f7639094b', 'Korbin Zulauf', 'Female', '2006-07-02', 'Kristen', 'Spinkabury', '38657 Jana Avenue\nFerrychester, ID 14648-4459', '335.805.7183', '841egerhold@hotmail.com', NULL, NULL, '152b09cb7047a56f2ee7f2f43b47c848e92f5017680e02c5470d3f5cf755414e', 0, NULL, '2019-12-27 19:18:59', '2019-12-27 19:18:59', NULL),
(35, 5, 'd112497c-fd6d-30e8-9344-e6cd7775da8f', 'Garett Oberbrunner', 'Male', '1979-10-24', 'Konghucu', 'Swiftfurt', '530 Wolf Underpass Apt. 743\nEast Aditya, IA 85888-1341', '1-829-334-9762 x073', '432436244frieda30@yahoo.com', NULL, NULL, '66eb234f19ec825c31750c22f2226d800733675000169fed58b311ef31edf7b8', 1, NULL, '2019-12-27 19:18:59', '2019-12-27 19:18:59', NULL),
(36, 11, '26e5afd9-d7dc-3124-be43-f82ab82ffa4c', 'Rosario Runte', 'Female', '1981-06-10', 'Islam', 'Port Susanfort', '8678 Evan Manors\r\nO\'Connellmouth, CO 44501-0889', '+1.205.626.5818', '3691idaugherty@gmail.com', NULL, NULL, 'b0c39fbb592746ce4e2eb3fc9bd197e042181ee078928b845fab2bf940ab11dc', 0, NULL, '2019-12-27 19:18:59', '2019-12-28 08:16:17', NULL),
(37, 4, 'a09a01ae-159e-3e1f-a320-f921d1c432ef', 'Ariel Gutmann', 'Female', '1993-10-04', 'Konghucu', 'Port Quintonchester', '8562 Feil Expressway Apt. 942\nPort Napoleonmouth, WI 54382-6965', '+1-708-355-7212', '8ibahringer@gmail.com', NULL, NULL, '7cb37790b74c687be051f3f7bcfb027f47c00fc793d3bd5d4f1c6c038d988b04', 1, NULL, '2019-12-27 19:18:59', '2019-12-27 19:18:59', NULL),
(38, 8, '3d815d1f-09fe-3a7b-91db-be485035a2bc', 'Eden Kiehn', 'Male', '2004-05-13', 'Konghucu', 'East Uriahhaven', '1755 Katarina Path\nReyesfort, CA 83703-1364', '+14243069758', '5753hobart99@gmail.com', NULL, NULL, '86c13426a9d17bd596d3291bfbfb51bfaf508819f7fb4c80cd20399b25d4a085', 0, NULL, '2019-12-27 19:19:00', '2019-12-27 19:19:00', NULL),
(39, 6, '438da2fb-6a4c-327c-a545-aa8aa03d1ad9', 'Winnifred Koepp', 'Male', '2014-07-30', 'Islam', 'Windlerborough', '921 Ruecker Burgs Apt. 506\nAileenfort, WY 30562-8151', '796-599-9602', '59634lizeth.upton@yahoo.com', NULL, NULL, '52d929593a5a09a8d6fbfbd8e962fa3036e26975f43107ec0e8ae424e343c28e', 0, NULL, '2019-12-27 19:19:00', '2019-12-27 19:19:00', NULL),
(40, 1, '65d8f284-23d6-3e64-bb93-b34a359237f4', 'Lilyan Medhurst V', 'Female', '1987-08-26', 'Budha', 'South Adell', '494 Skiles Ferry\nO\'Connerchester, AZ 04952', '(969) 801-6744', '8368937isabella55@yahoo.com', NULL, NULL, '26b85990fd3ae3f7a1d7d65f8149caa1f46a77d51d3fa157e854cd414011783e', 1, NULL, '2019-12-27 19:19:00', '2019-12-27 19:19:00', NULL),
(41, 11, NULL, 'Suntun Jos', 'Male', NULL, NULL, NULL, NULL, NULL, 'test@gmail.com', NULL, NULL, '$2y$10$lfDvff3.3tHDKCpVVosEjOHU15AVzjbDqTsoeRfegTLEiAUqAR4km', 1, NULL, '2019-12-29 03:43:22', '2019-12-29 03:43:22', NULL),
(42, 1, NULL, 'Tania', 'Male', NULL, NULL, NULL, NULL, NULL, 'tania@gmail.com', NULL, NULL, '$2y$10$vQPgfOgotgDqe3OX5mTU3.jv6OhkKcX1ucSLQWP5L/HtZgSY0gEKe', 1, NULL, '2019-12-29 03:53:25', '2019-12-29 03:53:25', NULL),
(43, 6, NULL, 'boy', 'Male', NULL, NULL, NULL, NULL, NULL, 'boy@gmail.com', NULL, NULL, '$2y$10$z/33.J1ykwyNFy1emBsR.OdGM1811RdRBS3GLMStFivLdIcsYlTwy', 1, NULL, '2019-12-29 04:02:49', '2019-12-29 04:02:49', NULL);

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
(1, 1),
(1, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 2),
(4, 2),
(5, 1),
(5, 1),
(6, 1),
(6, 1),
(7, 2),
(8, 2),
(8, 2),
(9, 2),
(10, 1),
(11, 2),
(12, 2),
(13, 2),
(13, 1),
(14, 2),
(15, 1),
(16, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 2),
(19, 2),
(20, 2);

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
  `stock` int(11) NOT NULL DEFAULT 0,
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
(1, 2, 'itaque', '974611.00', '977930.00', 3, '0.00', 'Unde mollitia sit quod tenetur.', '35', '2019-12-27 19:18:51', '2019-12-28 08:38:35', NULL),
(2, 3, 'praesentium', '90851.00', '656146.00', 3, '0.33', 'Itaque et consequatur rerum rerum omnis.', '40', '2019-12-27 19:18:51', '2019-12-28 08:20:56', NULL),
(3, 2, 'corrupti', '77537.00', '611489.00', 0, '0.80', 'Laudantium dicta nostrum non consequatur quis.', '16', '2019-12-27 19:18:51', '2019-12-27 19:20:10', NULL),
(4, 1, 'explicabo', '187335.00', '451341.00', 0, '0.93', 'Totam odio neque ratione nobis.', '12', '2019-12-27 19:18:51', '2019-12-27 19:20:35', NULL),
(5, 1, 'nihil', '595973.00', '759327.00', 4, '0.00', 'Aut numquam quasi impedit voluptatem in.', '11', '2019-12-27 19:18:52', '2019-12-28 19:14:57', NULL),
(6, 2, 'deserunt', '458473.00', '942375.00', 0, '0.00', 'Vero ut ea eos. At ducimus eaque rem ducimus.', '2', '2019-12-27 19:18:52', '2019-12-27 19:21:12', NULL),
(7, 2, 'quia', '736809.00', '891033.00', 0, '0.50', 'Voluptatem quis nulla nesciunt laudantium.', '2', '2019-12-27 19:18:52', '2019-12-27 19:20:36', NULL),
(8, 1, 'sit', '827786.00', '862690.00', 0, '0.81', 'Illum et saepe voluptatem.', '6', '2019-12-27 19:18:52', '2019-12-28 08:37:24', NULL),
(9, 1, 'omnis', '471825.00', '963278.00', 3, '0.00', 'Commodi quibusdam nam ea hic.', '14', '2019-12-27 19:18:52', '2019-12-27 19:21:13', NULL),
(10, 1, 'et', '99912.00', '481958.00', 5, '0.00', 'Ipsum magnam et non dolore nihil et.', '10', '2019-12-27 19:18:52', '2019-12-27 19:21:11', NULL),
(11, 1, 'mollitia', '685270.00', '748672.00', 0, '0.71', 'Quis a eos autem quasi cum voluptatem.', '23', '2019-12-27 19:18:52', '2019-12-28 07:04:14', NULL),
(12, 2, 'error', '127705.00', '419876.00', 0, '0.00', 'Totam omnis quia iusto ea voluptatem fugit.', '13', '2019-12-27 19:18:52', '2019-12-27 19:20:02', NULL),
(13, 1, 'tempore', '243494.00', '357003.00', 1, '0.08', 'Architecto error sit cumque error.', '11', '2019-12-27 19:18:52', '2019-12-27 19:20:59', NULL),
(14, 2, 'delectus', '817818.00', '976772.00', 2, '0.00', 'Voluptatem error ea dolorem occaecati et nisi.', '18', '2019-12-27 19:18:52', '2019-12-27 19:20:55', NULL),
(15, 2, 'quam', '607849.00', '980846.00', 0, '1.00', 'Nostrum porro officiis similique voluptatibus.', '7', '2019-12-27 19:18:53', '2019-12-27 19:20:53', NULL),
(16, 1, 'maiores', '868627.00', '925696.00', 0, '0.00', 'Est unde unde nisi ab beatae qui.', '4', '2019-12-27 19:18:53', '2019-12-27 19:20:37', NULL),
(17, 2, 'voluptates', '837469.00', '845405.00', 0, '0.25', 'Rem omnis est quasi.', '15', '2019-12-27 19:18:53', '2019-12-27 19:21:11', NULL),
(18, 1, 'tenetur', '809022.00', '849355.00', 6, '0.00', 'Ad blanditiis quo ut et ipsum numquam.', '19', '2019-12-27 19:18:53', '2019-12-27 19:21:13', NULL),
(19, 2, 'ducimus', '474081.00', '510574.00', 0, '0.85', 'Qui rerum quam odit dolor omnis vero.', '15', '2019-12-27 19:18:53', '2019-12-27 19:21:02', NULL),
(20, 2, 'corrupti', '104908.00', '819233.00', 0, '0.30', 'Veritatis et accusantium consequatur.', '18', '2019-12-27 19:18:53', '2019-12-27 19:19:42', NULL),
(21, 2, 'harum', '486443.00', '868868.00', 0, '0.00', 'Dicta autem id cupiditate et et voluptas debitis.', '4', '2019-12-27 19:18:53', '2019-12-27 19:20:47', NULL),
(22, 2, 'est', '954271.00', '998983.00', 0, '0.00', 'Aut dolores molestiae adipisci maiores odio.', '17', '2019-12-27 19:18:54', '2019-12-27 19:19:36', NULL),
(23, 2, 'deserunt', '58157.00', '228292.00', 8, '0.00', 'Quisquam molestiae facere dignissimos veritatis.', '18', '2019-12-27 19:18:54', '2019-12-27 19:21:09', NULL),
(24, 2, 'cumque', '386512.00', '828118.00', 20, '0.38', 'Similique voluptatem magnam voluptate nostrum.', '17', '2019-12-27 19:18:54', '2019-12-27 19:20:55', NULL),
(25, 2, 'sit', '473811.00', '950887.00', 0, '0.65', 'Saepe nesciunt qui quos nihil magni voluptatum.', '4', '2019-12-27 19:18:54', '2019-12-27 19:20:10', NULL),
(26, 1, 'iste', '586576.00', '872282.00', 0, '0.00', 'Consequuntur ipsa molestiae sequi.', '12', '2019-12-27 19:18:54', '2019-12-27 19:20:59', NULL),
(27, 1, 'id', '403682.00', '859110.00', 1, '0.97', 'Blanditiis perferendis delectus praesentium modi.', '12', '2019-12-27 19:18:54', '2019-12-27 19:21:12', NULL),
(28, 2, 'modi', '653323.00', '914497.00', 2, '0.00', 'Voluptatem natus inventore voluptatem rerum in.', '2', '2019-12-27 19:18:54', '2019-12-27 19:21:12', NULL),
(29, 2, 'non', '821316.00', '969996.00', 0, '0.00', 'Ipsum minus iure incidunt aut corrupti non.', '12', '2019-12-27 19:18:54', '2019-12-27 19:19:58', NULL),
(30, 1, 'asperiores', '386422.00', '880445.00', 0, '0.00', 'Ex commodi tempore alias dolorem et nobis.', '15', '2019-12-27 19:18:54', '2019-12-27 19:20:24', NULL),
(31, 1, 'et', '718355.00', '766003.00', 0, '0.75', 'Tenetur quaerat aliquam qui sint.', '15', '2019-12-27 19:18:54', '2019-12-27 19:21:04', NULL),
(32, 2, 'laborum', '976012.00', '994344.00', 0, '0.93', 'Inventore at laborum aut.', '7', '2019-12-27 19:18:54', '2019-12-27 19:20:41', NULL),
(33, 1, 'animi', '935772.00', '986106.00', 0, '0.00', 'Mollitia iure ullam dicta quis dolores.', '10', '2019-12-27 19:18:55', '2019-12-27 19:20:37', NULL),
(34, 2, 'perspiciatis', '905574.00', '925857.00', 0, '0.81', 'Iusto quia omnis totam quaerat.', '11', '2019-12-27 19:18:55', '2019-12-27 19:20:08', NULL),
(35, 2, 'voluptatem', '394241.00', '845157.00', 2, '0.00', 'Et assumenda consequuntur error fuga.', '9', '2019-12-27 19:18:55', '2019-12-27 19:21:13', NULL),
(36, 2, 'cumque', '272675.00', '998002.00', 0, '0.37', 'Error velit iusto delectus repudiandae quos.', '11', '2019-12-27 19:18:55', '2019-12-27 19:20:05', NULL),
(37, 2, 'et', '412899.00', '711386.00', 0, '0.29', 'Harum ipsa quia ducimus a et odit.', '10', '2019-12-27 19:18:55', '2019-12-27 19:19:39', NULL),
(38, 2, 'voluptatem', '784824.00', '929926.00', 11, '0.00', 'Et ut itaque autem corrupti minus id dolores.', '16', '2019-12-27 19:18:55', '2019-12-27 19:21:05', NULL),
(39, 1, 'doloribus', '187711.00', '232831.00', 0, '0.00', 'Iure saepe pariatur vel nam est doloremque ipsa.', '10', '2019-12-27 19:18:55', '2019-12-27 19:20:51', NULL),
(40, 1, 'sapiente', '190980.00', '420361.00', 0, '0.58', 'Id eos deserunt totam sit.', '18', '2019-12-27 19:18:55', '2019-12-27 19:19:53', NULL),
(41, 1, 'in', '374261.00', '494180.00', 0, '0.00', 'Reiciendis excepturi numquam qui commodi et est.', '15', '2019-12-27 19:18:55', '2019-12-27 19:19:41', NULL),
(42, 2, 'corporis', '260609.00', '563192.00', 0, '0.97', 'Rerum et dignissimos rerum quam.', '18', '2019-12-27 19:18:55', '2019-12-27 19:20:17', NULL),
(43, 2, 'corporis', '96014.00', '485367.00', 0, '0.74', 'Qui perspiciatis repellendus ipsa distinctio.', '9', '2019-12-27 19:18:56', '2019-12-27 19:20:03', NULL),
(44, 2, 'maiores', '698737.00', '759811.00', 0, '0.00', 'Cum ea fugiat quidem fuga repellat mollitia.', '12', '2019-12-27 19:18:56', '2019-12-27 19:21:02', NULL),
(45, 1, 'aperiam', '818602.00', '927940.00', 0, '0.00', 'Odio optio dolorem repellat autem.', '13', '2019-12-27 19:18:56', '2019-12-27 19:20:15', NULL),
(46, 2, 'doloribus', '662909.00', '836247.00', 0, '0.82', 'Molestiae quae sed autem esse consectetur.', '17', '2019-12-27 19:18:56', '2019-12-27 19:20:41', NULL),
(47, 1, 'alias', '890863.00', '897292.00', 2, '0.00', 'Quibusdam quod quasi nihil aut.', '9', '2019-12-27 19:18:56', '2019-12-27 19:20:57', NULL),
(48, 2, 'libero', '470460.00', '904340.00', 1, '0.00', 'Eius quod hic voluptates quo ipsam ratione vel.', '16', '2019-12-27 19:18:56', '2019-12-27 19:21:07', NULL),
(49, 2, 'qui', '52618.00', '178025.00', 0, '0.80', 'Velit quam quo omnis sit.', '7', '2019-12-27 19:18:56', '2019-12-27 19:21:07', NULL),
(50, 1, 'ab', '372225.00', '407067.00', 4, '0.00', 'Distinctio et magnam veniam ut.', '16', '2019-12-27 19:18:57', '2019-12-27 19:21:12', NULL),
(51, 4, 'sed', '993888.00', '996689.00', 0, '0.00', 'Nemo illo modi id aut et.', '22', '2019-12-27 19:19:07', '2019-12-27 19:19:53', NULL),
(52, 2, 'nostrum', '642129.00', '941991.00', 0, '0.98', 'Molestias ut enim voluptates ab.', '33', '2019-12-27 19:19:07', '2019-12-27 19:21:08', NULL),
(53, 4, 'quo', '580936.00', '581004.00', 0, '0.00', 'Molestiae sequi repellat in in recusandae et.', '19', '2019-12-27 19:19:07', '2019-12-27 19:20:38', NULL),
(54, 4, 'nostrum', '389686.00', '634778.00', 0, '0.00', 'Iste atque eaque eum est id ut id non.', '37', '2019-12-27 19:19:07', '2019-12-27 19:20:19', NULL),
(55, 4, 'illum', '221161.00', '297773.00', 0, '0.48', 'Ut itaque voluptas nesciunt voluptatibus ut.', '6', '2019-12-27 19:19:07', '2019-12-27 19:20:32', NULL),
(56, 3, 'qui', '533466.00', '771033.00', 1, '0.00', 'Et consequatur sint dolorem possimus.', '3', '2019-12-27 19:19:07', '2019-12-27 19:20:50', NULL),
(57, 1, 'fugiat', '338935.00', '711268.00', 0, '0.00', 'Ducimus ea eos aperiam in.', '31', '2019-12-27 19:19:07', '2019-12-27 19:20:07', NULL),
(58, 3, 'voluptatem', '886836.00', '937508.00', 0, '0.00', 'Consequuntur nobis non accusantium omnis.', '27', '2019-12-27 19:19:08', '2019-12-27 19:20:17', NULL),
(59, 1, 'voluptas', '378702.00', '473841.00', 5, '0.00', 'Enim asperiores sapiente dolorum voluptatem.', '10', '2019-12-27 19:19:08', '2019-12-27 19:21:08', NULL),
(60, 3, 'enim', '416576.00', '454319.00', 10, '0.00', 'Voluptas nemo qui iure deserunt sed delectus ut.', '1', '2019-12-27 19:19:08', '2019-12-27 19:20:25', NULL),
(61, 3, 'et', '930528.00', '946390.00', 0, '0.00', 'Esse officiis quam et ipsa provident et.', '1', '2019-12-27 19:19:08', '2019-12-27 19:21:11', NULL),
(62, 1, 'aut', '76045.00', '891517.00', 0, '0.00', 'Ipsam at autem saepe quo nobis hic.', '33', '2019-12-27 19:19:08', '2019-12-27 19:20:32', NULL),
(63, 1, 'iusto', '938000.00', '961162.00', 0, '0.00', 'Perferendis eos inventore et voluptates.', '3', '2019-12-27 19:19:08', '2019-12-27 19:20:51', NULL),
(64, 3, 'ea', '549697.00', '775992.00', 0, '0.00', 'Quia in voluptatem eligendi.', '24', '2019-12-27 19:19:08', '2019-12-27 19:20:41', NULL),
(65, 4, 'aut', '705180.00', '968237.00', 0, '0.00', 'Sint debitis sequi rem qui voluptas est esse.', '32', '2019-12-27 19:19:08', '2019-12-27 19:21:11', NULL),
(66, 2, 'quia', '689014.00', '923318.00', 0, '0.00', 'Est voluptatem itaque voluptate vitae.', '16', '2019-12-27 19:19:09', '2019-12-27 19:19:37', NULL),
(67, 2, 'ut', '46272.00', '659811.00', 9, '0.00', 'Eum quod dicta atque est voluptatem.', '27', '2019-12-27 19:19:09', '2019-12-27 19:20:58', NULL),
(68, 4, 'rem', '879220.00', '931584.00', 0, '0.00', 'Quod maxime repellendus officia ratione.', '33', '2019-12-27 19:19:09', '2019-12-27 19:20:20', NULL),
(69, 3, 'est', '670278.00', '962716.00', 4, '0.00', 'Iste voluptatem velit optio enim laboriosam.', '31', '2019-12-27 19:19:10', '2019-12-27 19:20:38', NULL),
(70, 4, 'tempora', '605603.00', '883145.00', 0, '0.83', 'Sed quod officia id.', '4', '2019-12-27 19:19:10', '2019-12-27 19:20:35', NULL),
(71, 1, 'iusto', '938477.00', '955474.00', 16, '1.00', 'Qui rerum numquam quas consequatur recusandae.', '28', '2019-12-27 19:19:10', '2019-12-27 19:21:07', NULL),
(72, 4, 'maxime', '159673.00', '533562.00', 0, '0.16', 'Quia ab excepturi accusantium dignissimos.', '27', '2019-12-27 19:19:10', '2019-12-27 19:20:27', NULL),
(73, 4, 'dolorum', '639169.00', '830933.00', 16, '0.00', 'Illo aut excepturi qui sunt.', '16', '2019-12-27 19:19:10', '2019-12-27 19:20:54', NULL),
(74, 4, 'delectus', '308272.00', '651351.00', 0, '0.83', 'Minus nisi cupiditate veniam qui est maiores.', '38', '2019-12-27 19:19:10', '2019-12-27 19:19:36', NULL),
(75, 4, 'commodi', '259070.00', '739068.00', 0, '0.00', 'Nulla autem esse aut consequatur dolores.', '5', '2019-12-27 19:19:10', '2019-12-27 19:20:37', NULL),
(76, 2, 'eveniet', '738766.00', '792816.00', 26, '0.00', 'Officia reiciendis ad aut.', '33', '2019-12-27 19:19:10', '2019-12-27 19:21:00', NULL),
(77, 3, 'praesentium', '181102.00', '605309.00', 0, '0.00', 'Rerum ut est aut sequi qui esse illo.', '39', '2019-12-27 19:19:10', '2019-12-27 19:20:24', NULL),
(78, 3, 'modi', '65475.00', '943024.00', 0, '0.96', 'Alias ut quia dolor distinctio quis maxime.', '11', '2019-12-27 19:19:10', '2019-12-27 19:20:35', NULL),
(79, 2, 'ipsam', '169745.00', '951418.00', 0, '0.00', 'Aut ut earum odit voluptas facere non.', '4', '2019-12-27 19:19:10', '2019-12-27 19:20:17', NULL),
(80, 3, 'saepe', '869040.00', '999331.00', 0, '0.57', 'Ad fugit qui fugiat.', '13', '2019-12-27 19:19:11', '2019-12-27 19:19:54', NULL),
(81, 2, 'numquam', '963720.00', '988180.00', 0, '0.57', 'Officia officia veniam voluptas et quam.', '6', '2019-12-27 19:19:11', '2019-12-27 19:19:57', NULL),
(82, 3, 'consequuntur', '621298.00', '635510.00', 1, '0.00', 'Nobis sed nobis adipisci aut sapiente.', '40', '2019-12-27 19:19:11', '2019-12-27 19:20:57', NULL),
(83, 3, 'omnis', '812157.00', '873669.00', 1, '0.87', 'Aperiam omnis praesentium repellat velit ut.', '13', '2019-12-27 19:19:11', '2019-12-27 19:21:13', NULL),
(84, 4, 'sunt', '36019.00', '924117.00', 0, '0.53', 'Ab non distinctio esse omnis.', '20', '2019-12-27 19:19:11', '2019-12-27 19:19:53', NULL),
(85, 2, 'quaerat', '926993.00', '987351.00', 0, '0.00', 'Veniam doloremque modi ut odio ut est quia.', '28', '2019-12-27 19:19:11', '2019-12-27 19:20:42', NULL),
(86, 1, 'quo', '335231.00', '775015.00', 2, '0.00', 'Ut ut et dolor et.', '15', '2019-12-27 19:19:11', '2019-12-27 19:20:57', NULL),
(87, 4, 'blanditiis', '537282.00', '593290.00', 0, '0.40', 'Quidem suscipit sapiente iure explicabo sed.', '23', '2019-12-27 19:19:12', '2019-12-27 19:20:21', NULL),
(88, 3, 'dicta', '941222.00', '971866.00', 0, '0.00', 'Voluptatem et magni et.', '8', '2019-12-27 19:19:12', '2019-12-28 07:41:59', NULL),
(89, 2, 'beatae', '369750.00', '891440.00', 0, '0.00', 'Et vel quis placeat eos sunt quae unde.', '39', '2019-12-27 19:19:12', '2019-12-27 19:20:47', NULL),
(90, 3, 'quia', '458246.00', '618274.00', 3, '0.98', 'Enim nesciunt nesciunt ad qui.', '10', '2019-12-27 19:19:12', '2019-12-27 19:21:13', NULL),
(91, 2, 'aperiam', '312697.00', '623405.00', 0, '0.00', 'Consequatur rerum in molestiae omnis.', '2', '2019-12-27 19:19:12', '2019-12-27 19:20:32', NULL),
(92, 1, 'corporis', '369021.00', '394824.00', 0, '0.00', 'Delectus illum assumenda ut ut esse aliquid.', '24', '2019-12-27 19:19:12', '2019-12-27 19:19:55', NULL),
(93, 4, 'qui', '621058.00', '631321.00', 0, '0.20', 'Voluptatem sunt voluptatibus molestiae est ut.', '14', '2019-12-27 19:19:12', '2019-12-27 19:20:38', NULL),
(94, 4, 'sint', '476164.00', '557816.00', 0, '0.00', 'Enim iusto corrupti quam accusantium magnam.', '28', '2019-12-27 19:19:12', '2019-12-27 19:21:10', NULL),
(95, 1, 'voluptas', '131503.00', '788575.00', 0, '1.00', 'Accusantium enim aperiam quae.', '1', '2019-12-27 19:19:13', '2019-12-27 19:21:08', NULL),
(96, 1, 'sint', '730267.00', '880455.00', 0, '0.90', 'Reiciendis excepturi in nulla dolor.', '19', '2019-12-27 19:19:13', '2019-12-27 19:20:37', NULL),
(97, 4, 'pariatur', '428395.00', '448923.00', 0, '0.90', 'Id dolore quia et et nobis.', '12', '2019-12-27 19:19:13', '2019-12-27 19:21:08', NULL),
(98, 4, 'dignissimos', '892605.00', '989411.00', 1, '0.00', 'Reprehenderit officiis aliquam sint autem ut est.', '1', '2019-12-27 19:19:13', '2019-12-27 19:21:14', NULL),
(99, 4, 'ab', '826952.00', '991478.00', 2, '0.45', 'Nesciunt ut libero tenetur eveniet.', '19', '2019-12-27 19:19:13', '2019-12-27 19:20:50', NULL),
(100, 1, 'iste', '708434.00', '999997.00', 1, '0.30', 'Molestiae sit quaerat dolor sed sit quae.', '2', '2019-12-27 19:19:13', '2019-12-27 19:21:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_histories`
--

CREATE TABLE `item_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `purchase` decimal(10,2) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
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
(1, 1, '974611.00', '977930.00', 68, '0.00', '35', '2019-12-27 19:18:51', '2019-12-28 08:38:35', NULL),
(2, 2, '90851.00', '656146.00', 9, '0.33', '7', '2019-12-27 19:18:51', '2019-12-27 19:18:51', NULL),
(3, 3, '77537.00', '611489.00', 74, '0.80', '16', '2019-12-27 19:18:51', '2019-12-27 19:18:51', NULL),
(4, 4, '187335.00', '451341.00', 12, '0.93', '12', '2019-12-27 19:18:51', '2019-12-27 19:18:51', NULL),
(5, 5, '595973.00', '759327.00', 52, '0.00', '11', '2019-12-27 19:18:52', '2019-12-27 19:18:52', NULL),
(6, 6, '458473.00', '942375.00', 10, '0.00', '2', '2019-12-27 19:18:52', '2019-12-27 19:18:52', NULL),
(7, 7, '736809.00', '891033.00', 34, '0.50', '2', '2019-12-27 19:18:52', '2019-12-27 19:18:52', NULL),
(8, 8, '827786.00', '862690.00', 54, '0.81', '6', '2019-12-27 19:18:52', '2019-12-28 08:37:24', NULL),
(9, 9, '471825.00', '963278.00', 51, '0.00', '14', '2019-12-27 19:18:52', '2019-12-27 19:18:52', NULL),
(10, 10, '99912.00', '481958.00', 62, '0.00', '10', '2019-12-27 19:18:52', '2019-12-27 19:18:52', NULL),
(11, 11, '685270.00', '748672.00', 74, '0.71', '15', '2019-12-27 19:18:52', '2019-12-27 19:18:52', NULL),
(12, 12, '127705.00', '419876.00', 46, '0.00', '13', '2019-12-27 19:18:52', '2019-12-27 19:18:52', NULL),
(13, 13, '243494.00', '357003.00', 72, '0.08', '11', '2019-12-27 19:18:52', '2019-12-27 19:18:52', NULL),
(14, 14, '817818.00', '976772.00', 68, '0.00', '18', '2019-12-27 19:18:52', '2019-12-27 19:18:52', NULL),
(15, 15, '607849.00', '980846.00', 68, '1.00', '7', '2019-12-27 19:18:53', '2019-12-27 19:18:53', NULL),
(16, 16, '868627.00', '925696.00', 89, '0.00', '4', '2019-12-27 19:18:53', '2019-12-27 19:18:53', NULL),
(17, 17, '837469.00', '845405.00', 8, '0.25', '15', '2019-12-27 19:18:53', '2019-12-27 19:18:53', NULL),
(18, 18, '809022.00', '849355.00', 91, '0.00', '19', '2019-12-27 19:18:53', '2019-12-27 19:18:53', NULL),
(19, 19, '474081.00', '510574.00', 77, '0.85', '15', '2019-12-27 19:18:53', '2019-12-27 19:18:53', NULL),
(20, 20, '104908.00', '819233.00', 69, '0.30', '18', '2019-12-27 19:18:53', '2019-12-27 19:18:53', NULL),
(21, 21, '486443.00', '868868.00', 59, '0.00', '4', '2019-12-27 19:18:54', '2019-12-27 19:18:54', NULL),
(22, 22, '954271.00', '998983.00', 3, '0.00', '17', '2019-12-27 19:18:54', '2019-12-27 19:18:54', NULL),
(23, 23, '58157.00', '228292.00', 30, '0.00', '18', '2019-12-27 19:18:54', '2019-12-27 19:18:54', NULL),
(24, 24, '386512.00', '828118.00', 30, '0.38', '17', '2019-12-27 19:18:54', '2019-12-27 19:18:54', NULL),
(25, 25, '473811.00', '950887.00', 80, '0.65', '4', '2019-12-27 19:18:54', '2019-12-27 19:18:54', NULL),
(26, 26, '586576.00', '872282.00', 8, '0.00', '12', '2019-12-27 19:18:54', '2019-12-27 19:18:54', NULL),
(27, 27, '403682.00', '859110.00', 47, '0.97', '12', '2019-12-27 19:18:54', '2019-12-27 19:18:54', NULL),
(28, 28, '653323.00', '914497.00', 96, '0.00', '2', '2019-12-27 19:18:54', '2019-12-27 19:18:54', NULL),
(29, 29, '821316.00', '969996.00', 31, '0.00', '12', '2019-12-27 19:18:54', '2019-12-27 19:18:54', NULL),
(30, 30, '386422.00', '880445.00', 96, '0.00', '15', '2019-12-27 19:18:54', '2019-12-27 19:18:54', NULL),
(31, 31, '718355.00', '766003.00', 94, '0.75', '15', '2019-12-27 19:18:54', '2019-12-27 19:18:54', NULL),
(32, 32, '976012.00', '994344.00', 56, '0.93', '7', '2019-12-27 19:18:54', '2019-12-27 19:18:54', NULL),
(33, 33, '935772.00', '986106.00', 5, '0.00', '10', '2019-12-27 19:18:55', '2019-12-27 19:18:55', NULL),
(34, 34, '905574.00', '925857.00', 3, '0.81', '11', '2019-12-27 19:18:55', '2019-12-27 19:18:55', NULL),
(35, 35, '394241.00', '845157.00', 61, '0.00', '9', '2019-12-27 19:18:55', '2019-12-27 19:18:55', NULL),
(36, 36, '272675.00', '998002.00', 62, '0.37', '11', '2019-12-27 19:18:55', '2019-12-27 19:18:55', NULL),
(37, 37, '412899.00', '711386.00', 90, '0.29', '10', '2019-12-27 19:18:55', '2019-12-27 19:18:55', NULL),
(38, 38, '784824.00', '929926.00', 68, '0.00', '16', '2019-12-27 19:18:55', '2019-12-27 19:18:55', NULL),
(39, 39, '187711.00', '232831.00', 32, '0.00', '10', '2019-12-27 19:18:55', '2019-12-27 19:18:55', NULL),
(40, 40, '190980.00', '420361.00', 69, '0.58', '18', '2019-12-27 19:18:55', '2019-12-27 19:18:55', NULL),
(41, 41, '374261.00', '494180.00', 4, '0.00', '15', '2019-12-27 19:18:55', '2019-12-27 19:18:55', NULL),
(42, 42, '260609.00', '563192.00', 59, '0.97', '18', '2019-12-27 19:18:56', '2019-12-27 19:18:56', NULL),
(43, 43, '96014.00', '485367.00', 16, '0.74', '9', '2019-12-27 19:18:56', '2019-12-27 19:18:56', NULL),
(44, 44, '698737.00', '759811.00', 34, '0.00', '12', '2019-12-27 19:18:56', '2019-12-27 19:18:56', NULL),
(45, 45, '818602.00', '927940.00', 13, '0.00', '13', '2019-12-27 19:18:56', '2019-12-27 19:18:56', NULL),
(46, 46, '662909.00', '836247.00', 36, '0.82', '17', '2019-12-27 19:18:56', '2019-12-27 19:18:56', NULL),
(47, 47, '890863.00', '897292.00', 70, '0.00', '9', '2019-12-27 19:18:56', '2019-12-27 19:18:56', NULL),
(48, 48, '470460.00', '904340.00', 85, '0.00', '16', '2019-12-27 19:18:56', '2019-12-27 19:18:56', NULL),
(49, 49, '52618.00', '178025.00', 15, '0.80', '7', '2019-12-27 19:18:56', '2019-12-27 19:18:56', NULL),
(50, 50, '372225.00', '407067.00', 12, '0.00', '16', '2019-12-27 19:18:57', '2019-12-27 19:18:57', NULL),
(51, 51, '993888.00', '996689.00', 32, '0.00', '22', '2019-12-27 19:19:07', '2019-12-27 19:19:07', NULL),
(52, 52, '642129.00', '941991.00', 80, '0.98', '33', '2019-12-27 19:19:07', '2019-12-27 19:19:07', NULL),
(53, 53, '580936.00', '581004.00', 59, '0.00', '19', '2019-12-27 19:19:07', '2019-12-27 19:19:07', NULL),
(54, 54, '389686.00', '634778.00', 60, '0.00', '37', '2019-12-27 19:19:07', '2019-12-27 19:19:07', NULL),
(55, 55, '221161.00', '297773.00', 70, '0.48', '6', '2019-12-27 19:19:07', '2019-12-27 19:19:07', NULL),
(56, 56, '533466.00', '771033.00', 10, '0.00', '3', '2019-12-27 19:19:07', '2019-12-27 19:19:07', NULL),
(57, 57, '338935.00', '711268.00', 44, '0.00', '31', '2019-12-27 19:19:08', '2019-12-27 19:19:08', NULL),
(58, 58, '886836.00', '937508.00', 90, '0.00', '27', '2019-12-27 19:19:08', '2019-12-27 19:19:08', NULL),
(59, 59, '378702.00', '473841.00', 59, '0.00', '10', '2019-12-27 19:19:08', '2019-12-27 19:19:08', NULL),
(60, 60, '416576.00', '454319.00', 29, '0.00', '1', '2019-12-27 19:19:08', '2019-12-27 19:19:08', NULL),
(61, 61, '930528.00', '946390.00', 77, '0.00', '1', '2019-12-27 19:19:08', '2019-12-27 19:19:08', NULL),
(62, 62, '76045.00', '891517.00', 7, '0.00', '33', '2019-12-27 19:19:08', '2019-12-27 19:19:08', NULL),
(63, 63, '938000.00', '961162.00', 44, '0.00', '3', '2019-12-27 19:19:08', '2019-12-27 19:19:08', NULL),
(64, 64, '549697.00', '775992.00', 97, '0.00', '24', '2019-12-27 19:19:08', '2019-12-27 19:19:08', NULL),
(65, 65, '705180.00', '968237.00', 75, '0.00', '32', '2019-12-27 19:19:08', '2019-12-27 19:19:08', NULL),
(66, 66, '689014.00', '923318.00', 1, '0.00', '16', '2019-12-27 19:19:09', '2019-12-27 19:19:09', NULL),
(67, 67, '46272.00', '659811.00', 87, '0.00', '27', '2019-12-27 19:19:09', '2019-12-27 19:19:09', NULL),
(68, 68, '879220.00', '931584.00', 87, '0.00', '33', '2019-12-27 19:19:09', '2019-12-27 19:19:09', NULL),
(69, 69, '670278.00', '962716.00', 15, '0.00', '31', '2019-12-27 19:19:10', '2019-12-27 19:19:10', NULL),
(70, 70, '605603.00', '883145.00', 61, '0.83', '4', '2019-12-27 19:19:10', '2019-12-27 19:19:10', NULL),
(71, 71, '938477.00', '955474.00', 69, '1.00', '28', '2019-12-27 19:19:10', '2019-12-27 19:19:10', NULL),
(72, 72, '159673.00', '533562.00', 27, '0.16', '27', '2019-12-27 19:19:10', '2019-12-27 19:19:10', NULL),
(73, 73, '639169.00', '830933.00', 97, '0.00', '16', '2019-12-27 19:19:10', '2019-12-27 19:19:10', NULL),
(74, 74, '308272.00', '651351.00', 30, '0.83', '38', '2019-12-27 19:19:10', '2019-12-27 19:19:10', NULL),
(75, 75, '259070.00', '739068.00', 17, '0.00', '5', '2019-12-27 19:19:10', '2019-12-27 19:19:10', NULL),
(76, 76, '738766.00', '792816.00', 73, '0.00', '33', '2019-12-27 19:19:10', '2019-12-27 19:19:10', NULL),
(77, 77, '181102.00', '605309.00', 62, '0.00', '39', '2019-12-27 19:19:10', '2019-12-27 19:19:10', NULL),
(78, 78, '65475.00', '943024.00', 10, '0.96', '11', '2019-12-27 19:19:10', '2019-12-27 19:19:10', NULL),
(79, 79, '169745.00', '951418.00', 43, '0.00', '4', '2019-12-27 19:19:10', '2019-12-27 19:19:10', NULL),
(80, 80, '869040.00', '999331.00', 5, '0.57', '13', '2019-12-27 19:19:11', '2019-12-27 19:19:11', NULL),
(81, 81, '963720.00', '988180.00', 20, '0.57', '6', '2019-12-27 19:19:11', '2019-12-27 19:19:11', NULL),
(82, 82, '621298.00', '635510.00', 85, '0.00', '40', '2019-12-27 19:19:11', '2019-12-27 19:19:11', NULL),
(83, 83, '812157.00', '873669.00', 27, '0.87', '13', '2019-12-27 19:19:11', '2019-12-27 19:19:11', NULL),
(84, 84, '36019.00', '924117.00', 12, '0.53', '20', '2019-12-27 19:19:11', '2019-12-27 19:19:11', NULL),
(85, 85, '926993.00', '987351.00', 76, '0.00', '28', '2019-12-27 19:19:11', '2019-12-27 19:19:11', NULL),
(86, 86, '335231.00', '775015.00', 65, '0.00', '15', '2019-12-27 19:19:11', '2019-12-27 19:19:11', NULL),
(87, 87, '537282.00', '593290.00', 63, '0.40', '23', '2019-12-27 19:19:12', '2019-12-27 19:19:12', NULL),
(88, 88, '941222.00', '971866.00', 14, '0.00', '8', '2019-12-27 19:19:12', '2019-12-27 19:19:12', NULL),
(89, 89, '369750.00', '891440.00', 63, '0.00', '39', '2019-12-27 19:19:12', '2019-12-27 19:19:12', NULL),
(90, 90, '458246.00', '618274.00', 97, '0.98', '10', '2019-12-27 19:19:12', '2019-12-27 19:19:12', NULL),
(91, 91, '312697.00', '623405.00', 44, '0.00', '2', '2019-12-27 19:19:12', '2019-12-27 19:19:12', NULL),
(92, 92, '369021.00', '394824.00', 22, '0.00', '24', '2019-12-27 19:19:12', '2019-12-27 19:19:12', NULL),
(93, 93, '621058.00', '631321.00', 42, '0.20', '14', '2019-12-27 19:19:12', '2019-12-27 19:19:12', NULL),
(94, 94, '476164.00', '557816.00', 73, '0.00', '28', '2019-12-27 19:19:13', '2019-12-27 19:19:13', NULL),
(95, 95, '131503.00', '788575.00', 9, '1.00', '1', '2019-12-27 19:19:13', '2019-12-27 19:19:13', NULL),
(96, 96, '730267.00', '880455.00', 69, '0.90', '19', '2019-12-27 19:19:13', '2019-12-27 19:19:13', NULL),
(97, 97, '428395.00', '448923.00', 52, '0.90', '12', '2019-12-27 19:19:13', '2019-12-27 19:19:13', NULL),
(98, 98, '892605.00', '989411.00', 67, '0.00', '1', '2019-12-27 19:19:13', '2019-12-27 19:19:13', NULL),
(99, 99, '826952.00', '991478.00', 77, '0.45', '19', '2019-12-27 19:19:13', '2019-12-27 19:19:13', NULL),
(100, 100, '708434.00', '999997.00', 39, '0.30', '2', '2019-12-27 19:19:13', '2019-12-27 19:19:13', NULL),
(101, 11, '685270.00', '748672.00', 1, '0.71', '18', '2019-12-28 06:30:36', '2019-12-28 06:30:36', NULL),
(102, 11, '685270.00', '748672.00', 2, '0.71', '28', '2019-12-28 06:43:43', '2019-12-28 06:43:43', NULL),
(103, 11, '685270.00', '748672.00', 4, '0.71', '23', '2019-12-28 07:03:40', '2019-12-28 07:03:40', NULL),
(104, 2, '90851.00', '656146.00', 0, '0.33', '40', '2019-12-28 08:20:56', '2019-12-28 08:20:56', NULL);

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
(1, 'exercitationem', '16', '2019-12-27 19:18:50', '2019-12-27 19:18:50', NULL),
(2, 'dolorem', '13', '2019-12-27 19:18:51', '2019-12-27 19:18:51', NULL),
(3, 'consequuntur', '21', '2019-12-27 19:19:07', '2019-12-27 19:19:07', NULL),
(4, 'architecto', '34', '2019-12-27 19:19:07', '2019-12-27 19:19:07', NULL);

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
(1, 13, '2', '2019-12-27 19:18:57', '2019-12-27 19:18:57', NULL),
(2, 13, '16', '2019-12-27 19:19:13', '2019-12-27 19:19:13', NULL),
(3, 171, '34', '2019-12-27 19:19:27', '2019-12-27 19:19:27', NULL),
(4, 127, '38', '2019-12-27 19:19:28', '2019-12-27 19:19:28', NULL),
(5, 88, '18', '2019-12-27 19:19:29', '2019-12-27 19:19:29', NULL),
(6, 32, '22', '2019-12-27 19:19:30', '2019-12-27 19:19:30', NULL),
(7, 87, '3', '2019-12-27 19:19:30', '2019-12-27 19:19:30', NULL),
(8, 125, '4', '2019-12-27 19:19:31', '2019-12-27 19:19:31', NULL),
(9, 119, '17', '2019-12-27 19:19:31', '2019-12-27 19:19:31', NULL),
(10, 93, '10', '2019-12-27 19:19:32', '2019-12-27 19:19:32', NULL),
(11, 160, '24', '2019-12-27 19:19:33', '2019-12-27 19:19:33', NULL),
(12, 150, '3', '2019-12-27 19:19:34', '2019-12-27 19:19:34', NULL),
(13, 107, '17', '2019-12-27 19:19:34', '2019-12-27 19:19:34', NULL),
(14, 23, '40', '2019-12-27 19:19:35', '2019-12-27 19:19:35', NULL),
(15, 29, '2', '2019-12-27 19:19:36', '2019-12-27 19:19:36', NULL),
(16, 47, '2', '2019-12-27 19:19:36', '2019-12-27 19:19:36', NULL),
(17, 86, '20', '2019-12-27 19:19:37', '2019-12-27 19:19:37', NULL),
(18, 85, '27', '2019-12-27 19:19:38', '2019-12-27 19:19:38', NULL),
(19, 70, '38', '2019-12-27 19:19:39', '2019-12-27 19:19:39', NULL),
(20, 114, '20', '2019-12-27 19:19:40', '2019-12-27 19:19:40', NULL),
(21, 108, '37', '2019-12-27 19:19:41', '2019-12-27 19:19:41', NULL),
(22, 158, '21', '2019-12-27 19:19:42', '2019-12-27 19:19:42', NULL),
(23, 119, '35', '2019-12-27 19:19:42', '2019-12-27 19:19:42', NULL),
(24, 11, '40', '2019-12-27 19:19:43', '2019-12-27 19:19:43', NULL),
(25, 120, '20', '2019-12-27 19:19:44', '2019-12-27 19:19:44', NULL),
(26, 65, '14', '2019-12-27 19:19:44', '2019-12-27 19:19:44', NULL),
(27, 197, '28', '2019-12-27 19:19:45', '2019-12-27 19:19:45', NULL),
(28, 200, '18', '2019-12-27 19:19:46', '2019-12-27 19:19:46', NULL),
(29, 158, '2', '2019-12-27 19:19:46', '2019-12-27 19:19:46', NULL),
(30, 92, '11', '2019-12-27 19:19:47', '2019-12-27 19:19:47', NULL),
(31, 80, '32', '2019-12-27 19:19:48', '2019-12-27 19:19:48', NULL),
(32, 148, '39', '2019-12-27 19:19:48', '2019-12-27 19:19:48', NULL),
(33, 132, '38', '2019-12-27 19:19:49', '2019-12-27 19:19:49', NULL),
(34, 44, '17', '2019-12-27 19:19:49', '2019-12-27 19:19:49', NULL),
(35, 171, '25', '2019-12-27 19:19:50', '2019-12-27 19:19:50', NULL),
(36, 101, '10', '2019-12-27 19:19:50', '2019-12-27 19:19:50', NULL),
(37, 44, '7', '2019-12-27 19:19:51', '2019-12-27 19:19:51', NULL),
(38, 199, '40', '2019-12-27 19:19:52', '2019-12-27 19:19:52', NULL),
(39, 112, '33', '2019-12-27 19:19:52', '2019-12-27 19:19:52', NULL),
(40, 139, '21', '2019-12-27 19:19:53', '2019-12-27 19:19:53', NULL),
(41, 148, '16', '2019-12-27 19:19:54', '2019-12-27 19:19:54', NULL),
(42, 49, '6', '2019-12-27 19:19:54', '2019-12-27 19:19:54', NULL),
(43, 74, '22', '2019-12-27 19:19:55', '2019-12-27 19:19:55', NULL),
(44, 103, '18', '2019-12-27 19:19:55', '2019-12-27 19:19:55', NULL),
(45, 76, '1', '2019-12-27 19:19:56', '2019-12-27 19:19:56', NULL),
(46, 193, '15', '2019-12-27 19:19:57', '2019-12-27 19:19:57', NULL),
(47, 45, '24', '2019-12-27 19:19:57', '2019-12-27 19:19:57', NULL),
(48, 155, '3', '2019-12-27 19:19:58', '2019-12-27 19:19:58', NULL),
(49, 85, '37', '2019-12-27 19:19:59', '2019-12-27 19:19:59', NULL),
(50, 77, '35', '2019-12-27 19:19:59', '2019-12-27 19:19:59', NULL),
(51, 72, '32', '2019-12-27 19:20:00', '2019-12-27 19:20:00', NULL),
(52, 163, '8', '2019-12-27 19:20:01', '2019-12-27 19:20:01', NULL),
(53, 78, '17', '2019-12-27 19:20:02', '2019-12-27 19:20:02', NULL),
(54, 97, '33', '2019-12-27 19:20:02', '2019-12-27 19:20:02', NULL),
(55, 127, '39', '2019-12-27 19:20:03', '2019-12-27 19:20:03', NULL),
(56, 63, '16', '2019-12-27 19:20:04', '2019-12-27 19:20:04', NULL),
(57, 117, '12', '2019-12-27 19:20:04', '2019-12-27 19:20:04', NULL),
(58, 112, '6', '2019-12-27 19:20:05', '2019-12-27 19:20:05', NULL),
(59, 162, '2', '2019-12-27 19:20:05', '2019-12-27 19:20:05', NULL),
(60, 192, '6', '2019-12-27 19:20:06', '2019-12-27 19:20:06', NULL),
(61, 155, '17', '2019-12-27 19:20:07', '2019-12-27 19:20:07', NULL),
(62, 115, '30', '2019-12-27 19:20:08', '2019-12-27 19:20:08', NULL),
(63, 129, '15', '2019-12-27 19:20:08', '2019-12-27 19:20:08', NULL),
(64, 101, '1', '2019-12-27 19:20:09', '2019-12-27 19:20:09', NULL),
(65, 3, '18', '2019-12-27 19:20:09', '2019-12-28 03:50:35', NULL),
(66, 5, '4', '2019-12-27 19:20:10', '2019-12-27 19:20:10', NULL),
(67, 122, '13', '2019-12-27 19:20:10', '2019-12-27 19:20:10', NULL),
(68, 173, '1', '2019-12-27 19:20:11', '2019-12-27 19:20:11', NULL),
(69, 25, '9', '2019-12-27 19:20:12', '2019-12-27 19:20:12', NULL),
(70, 99, '34', '2019-12-27 19:20:12', '2019-12-27 19:20:12', NULL),
(71, 152, '26', '2019-12-27 19:20:13', '2019-12-27 19:20:13', NULL),
(72, 144, '17', '2019-12-27 19:20:13', '2019-12-27 19:20:13', NULL),
(73, 66, '32', '2019-12-27 19:20:14', '2019-12-27 19:20:14', NULL),
(74, 112, '24', '2019-12-27 19:20:15', '2019-12-27 19:20:15', NULL),
(75, 106, '21', '2019-12-27 19:20:15', '2019-12-27 19:20:15', NULL),
(76, 7, '2', '2019-12-27 19:20:16', '2019-12-27 19:20:16', NULL),
(77, 133, '19', '2019-12-27 19:20:17', '2019-12-27 19:20:17', NULL),
(78, 197, '39', '2019-12-27 19:20:17', '2019-12-27 19:20:17', NULL),
(79, 100, '38', '2019-12-27 19:20:18', '2019-12-27 19:20:18', NULL),
(80, 42, '13', '2019-12-27 19:20:18', '2019-12-27 19:20:18', NULL),
(81, 69, '4', '2019-12-27 19:20:18', '2019-12-27 19:20:18', NULL),
(82, 3, '22', '2019-12-27 19:20:19', '2019-12-27 19:20:19', NULL),
(83, 29, '16', '2019-12-27 19:20:19', '2019-12-27 19:20:19', NULL),
(84, 192, '17', '2019-12-27 19:20:20', '2019-12-27 19:20:20', NULL),
(85, 47, '15', '2019-12-27 19:20:21', '2019-12-27 19:20:21', NULL),
(86, 48, '17', '2019-12-27 19:20:21', '2019-12-27 19:20:21', NULL),
(87, 156, '34', '2019-12-27 19:20:22', '2019-12-27 19:20:22', NULL),
(88, 91, '15', '2019-12-27 19:20:22', '2019-12-27 19:20:22', NULL),
(89, 200, '40', '2019-12-27 19:20:23', '2019-12-27 19:20:23', NULL),
(90, 70, '2', '2019-12-27 19:20:24', '2019-12-27 19:20:24', NULL),
(91, 198, '39', '2019-12-27 19:20:24', '2019-12-27 19:20:24', NULL),
(92, 200, '7', '2019-12-27 19:20:25', '2019-12-27 19:20:25', NULL),
(93, 160, '7', '2019-12-27 19:20:26', '2019-12-27 19:20:26', NULL),
(94, 56, '1', '2019-12-27 19:20:26', '2019-12-27 19:20:26', NULL),
(95, 101, '37', '2019-12-27 19:20:29', '2019-12-27 19:20:29', NULL),
(96, 78, '5', '2019-12-27 19:20:30', '2019-12-27 19:20:30', NULL),
(97, 165, '34', '2019-12-27 19:20:31', '2019-12-27 19:20:31', NULL),
(98, 173, '37', '2019-12-27 19:20:31', '2019-12-27 19:20:31', NULL),
(99, 167, '22', '2019-12-27 19:20:32', '2019-12-27 19:20:32', NULL),
(100, 13, '31', '2019-12-27 19:20:32', '2019-12-27 19:20:32', NULL),
(101, 88, '35', '2019-12-27 19:20:33', '2019-12-27 19:20:33', NULL),
(102, 190, '33', '2019-12-27 19:20:33', '2019-12-27 19:20:33', NULL),
(103, 135, '17', '2019-12-27 19:20:34', '2019-12-27 19:20:34', NULL),
(104, 185, '20', '2019-12-27 19:20:34', '2019-12-27 19:20:34', NULL),
(105, 119, '5', '2019-12-27 19:20:35', '2019-12-27 19:20:35', NULL),
(106, 76, '5', '2019-12-27 19:20:35', '2019-12-27 19:20:35', NULL),
(107, 193, '6', '2019-12-27 19:20:36', '2019-12-27 19:20:36', NULL),
(108, 37, '9', '2019-12-27 19:20:36', '2019-12-27 19:20:36', NULL),
(109, 117, '23', '2019-12-27 19:20:36', '2019-12-27 19:20:36', NULL),
(110, 195, '16', '2019-12-27 19:20:37', '2019-12-27 19:20:37', NULL),
(111, 29, '17', '2019-12-27 19:20:37', '2019-12-27 19:20:37', NULL),
(112, 111, '13', '2019-12-27 19:20:37', '2019-12-27 19:20:37', NULL),
(113, 87, '36', '2019-12-27 19:20:38', '2019-12-27 19:20:38', NULL),
(114, 78, '32', '2019-12-27 19:20:38', '2019-12-27 19:20:38', NULL),
(115, 48, '18', '2019-12-27 19:20:39', '2019-12-27 19:20:39', NULL),
(116, 133, '8', '2019-12-27 19:20:39', '2019-12-27 19:20:39', NULL),
(117, 1, '20', '2019-12-27 19:20:40', '2019-12-27 19:20:40', NULL),
(118, 96, '5', '2019-12-27 19:20:41', '2019-12-27 19:20:41', NULL),
(119, 80, '10', '2019-12-27 19:20:41', '2019-12-27 19:20:41', NULL),
(120, 162, '39', '2019-12-27 19:20:41', '2019-12-27 19:20:41', NULL),
(121, 9, '36', '2019-12-27 19:20:42', '2019-12-27 19:20:42', NULL),
(122, 179, '36', '2019-12-27 19:20:43', '2019-12-27 19:20:43', NULL),
(123, 78, '6', '2019-12-27 19:20:43', '2019-12-27 19:20:43', NULL),
(124, 51, '20', '2019-12-27 19:20:44', '2019-12-27 19:20:44', NULL),
(125, 27, '11', '2019-12-27 19:20:44', '2019-12-27 19:20:44', NULL),
(126, 136, '9', '2019-12-27 19:20:45', '2019-12-27 19:20:45', NULL),
(127, 189, '35', '2019-12-27 19:20:45', '2019-12-27 19:20:45', NULL),
(128, 81, '1', '2019-12-27 19:20:45', '2019-12-27 19:20:45', NULL),
(129, 161, '19', '2019-12-27 19:20:46', '2019-12-27 19:20:46', NULL),
(130, 41, '18', '2019-12-27 19:20:46', '2019-12-27 19:20:46', NULL),
(131, 70, '3', '2019-12-27 19:20:47', '2019-12-27 19:20:47', NULL),
(132, 108, '8', '2019-12-27 19:20:47', '2019-12-27 19:20:47', NULL),
(133, 90, '6', '2019-12-27 19:20:47', '2019-12-27 19:20:47', NULL),
(134, 97, '16', '2019-12-27 19:20:47', '2019-12-27 19:20:47', NULL),
(135, 12, '18', '2019-12-27 19:20:48', '2019-12-27 19:20:48', NULL),
(136, 23, '37', '2019-12-27 19:20:49', '2019-12-27 19:20:49', NULL),
(137, 144, '35', '2019-12-27 19:20:49', '2019-12-27 19:20:49', NULL),
(138, 42, '9', '2019-12-27 19:20:50', '2019-12-27 19:20:50', NULL),
(139, 127, '12', '2019-12-27 19:20:50', '2019-12-27 19:20:50', NULL),
(140, 191, '34', '2019-12-27 19:20:51', '2019-12-27 19:20:51', NULL),
(141, 1, '39', '2019-12-27 19:20:51', '2019-12-27 19:20:51', NULL),
(142, 112, '29', '2019-12-27 19:20:51', '2019-12-27 19:20:51', NULL),
(143, 4, '30', '2019-12-27 19:20:52', '2019-12-27 19:20:52', NULL),
(144, 29, '16', '2019-12-27 19:20:52', '2019-12-27 19:20:52', NULL),
(145, 23, '27', '2019-12-27 19:20:53', '2019-12-27 19:20:53', NULL),
(146, 142, '19', '2019-12-27 19:20:53', '2019-12-27 19:20:53', NULL),
(147, 107, '28', '2019-12-27 19:20:53', '2019-12-27 19:20:53', NULL),
(148, 154, '18', '2019-12-27 19:20:54', '2019-12-27 19:20:54', NULL),
(149, 41, '36', '2019-12-27 19:20:54', '2019-12-27 19:20:54', NULL),
(150, 117, '30', '2019-12-27 19:20:54', '2019-12-27 19:20:54', NULL),
(151, 90, '12', '2019-12-27 19:20:55', '2019-12-27 19:20:55', NULL),
(152, 47, '29', '2019-12-27 19:20:57', '2019-12-27 19:20:57', NULL),
(153, 125, '32', '2019-12-27 19:20:58', '2019-12-27 19:20:58', NULL),
(154, 156, '28', '2019-12-27 19:21:00', '2019-12-27 19:21:00', NULL),
(155, 188, '1', '2019-12-27 19:21:01', '2019-12-27 19:21:01', NULL),
(156, 94, '21', '2019-12-27 19:21:01', '2019-12-27 19:21:01', NULL),
(157, 167, '8', '2019-12-27 19:21:01', '2019-12-27 19:21:01', NULL),
(158, 193, '12', '2019-12-27 19:21:02', '2019-12-27 19:21:02', NULL),
(159, 187, '3', '2019-12-27 19:21:02', '2019-12-27 19:21:02', NULL),
(160, 122, '4', '2019-12-27 19:21:03', '2019-12-27 19:21:03', NULL),
(161, 63, '8', '2019-12-27 19:21:03', '2019-12-27 19:21:03', NULL),
(162, 3, '2', '2019-12-27 19:21:04', '2019-12-27 19:21:04', NULL),
(163, 109, '30', '2019-12-27 19:21:04', '2019-12-27 19:21:04', NULL),
(164, 59, '36', '2019-12-27 19:21:04', '2019-12-27 19:21:04', NULL),
(165, 193, '15', '2019-12-27 19:21:04', '2019-12-27 19:21:04', NULL),
(166, 93, '31', '2019-12-27 19:21:05', '2019-12-27 19:21:05', NULL),
(167, 89, '31', '2019-12-27 19:21:05', '2019-12-27 19:21:05', NULL),
(168, 10, '11', '2019-12-27 19:21:05', '2019-12-27 19:21:05', NULL),
(169, 76, '3', '2019-12-27 19:21:05', '2019-12-27 19:21:05', NULL),
(170, 33, '9', '2019-12-27 19:21:06', '2019-12-27 19:21:06', NULL),
(171, 96, '1', '2019-12-27 19:21:07', '2019-12-27 19:21:07', NULL),
(172, 110, '17', '2019-12-27 19:21:07', '2019-12-27 19:21:07', NULL),
(173, 148, '28', '2019-12-27 19:21:07', '2019-12-27 19:21:07', NULL),
(174, 167, '34', '2019-12-27 19:21:07', '2019-12-27 19:21:07', NULL),
(175, 47, '8', '2019-12-27 19:21:08', '2019-12-27 19:21:08', NULL),
(176, 137, '16', '2019-12-27 19:21:08', '2019-12-27 19:21:08', NULL),
(177, 72, '22', '2019-12-27 19:21:09', '2019-12-27 19:21:09', NULL),
(178, 100, '31', '2019-12-27 19:21:10', '2019-12-27 19:21:10', NULL),
(179, 76, '10', '2019-12-27 19:21:10', '2019-12-27 19:21:10', NULL),
(180, 193, '10', '2019-12-27 19:21:10', '2019-12-27 19:21:10', NULL),
(181, 140, '32', '2019-12-27 19:21:11', '2019-12-27 19:21:11', NULL),
(182, 4, '7', '2019-12-27 19:21:11', '2019-12-27 19:21:11', NULL),
(183, 149, '4', '2019-12-27 19:21:11', '2019-12-27 19:21:11', NULL),
(184, 105, '31', '2019-12-27 19:21:11', '2019-12-27 19:21:11', NULL),
(185, 16, '36', '2019-12-27 19:21:11', '2019-12-27 19:21:11', NULL),
(186, 44, '25', '2019-12-27 19:21:12', '2019-12-27 19:21:12', NULL),
(187, 101, '27', '2019-12-27 19:21:12', '2019-12-27 19:21:12', NULL),
(188, 49, '40', '2019-12-27 19:21:12', '2019-12-27 19:21:12', NULL),
(189, 111, '35', '2019-12-27 19:21:13', '2019-12-27 19:21:13', NULL),
(190, 132, '15', '2019-12-27 19:21:13', '2019-12-27 19:21:13', NULL),
(191, 117, '6', '2019-12-27 19:21:13', '2019-12-27 19:21:13', NULL),
(192, 195, '7', '2019-12-27 19:21:14', '2019-12-27 19:21:14', NULL),
(193, 198, '40', '2019-12-27 19:21:14', '2019-12-27 19:21:14', NULL),
(194, 1, '33', '2019-12-28 06:01:13', '2019-12-28 06:30:49', NULL),
(195, 1, '33', '2019-12-28 07:20:45', '2019-12-28 07:20:45', NULL),
(196, 1, '26', '2019-12-28 07:37:50', '2019-12-28 07:40:32', NULL),
(197, 2, '39', '2019-12-28 08:42:57', '2019-12-28 17:34:31', NULL),
(198, 5, '39', '2019-12-28 17:34:57', '2019-12-28 17:34:57', NULL),
(199, 1, '18', '2019-12-28 19:04:22', '2019-12-28 19:04:22', NULL),
(200, 1, '35', '2019-12-28 19:07:18', '2019-12-28 19:07:18', NULL),
(201, 1, '27', '2019-12-28 19:13:47', '2019-12-28 19:13:47', NULL);

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
(1, 36, '998002.00', 55, '0.37', '54890110.00'),
(1, 47, '897292.00', 2, '0.00', '1794584.00'),
(1, 34, '925857.00', 1, '0.81', '175912.83'),
(2, 33, '986106.00', 1, '0.00', '986106.00'),
(2, 25, '950887.00', 48, '0.65', '15974901.60'),
(2, 29, '969996.00', 12, '0.00', '11639952.00'),
(2, 71, '955474.00', 28, '1.00', '0.00'),
(3, 51, '996689.00', 29, '0.00', '28903981.00'),
(3, 78, '943024.00', 3, '0.96', '113162.88'),
(3, 73, '830933.00', 36, '0.00', '29913588.00'),
(3, 44, '759811.00', 23, '0.00', '17475653.00'),
(4, 51, '996689.00', 3, '0.00', '2990067.00'),
(4, 11, '748672.00', 17, '0.71', '3690952.96'),
(4, 72, '533562.00', 4, '0.16', '2134248.00'),
(4, 54, '634778.00', 32, '0.00', '20312896.00'),
(5, 41, '494180.00', 3, '0.00', '1482540.00'),
(5, 95, '788575.00', 2, '1.00', '0.00'),
(5, 77, '605309.00', 60, '0.00', '36318540.00'),
(5, 20, '819233.00', 44, '0.30', '36046252.00'),
(5, 82, '635510.00', 50, '0.00', '31775500.00'),
(6, 53, '581004.00', 9, '0.00', '5229036.00'),
(6, 25, '950887.00', 2, '0.65', '665620.90'),
(6, 15, '980846.00', 3, '1.00', '0.00'),
(7, 22, '998983.00', 2, '0.00', '1997966.00'),
(7, 95, '788575.00', 4, '1.00', '0.00'),
(7, 68, '931584.00', 41, '0.00', '38194944.00'),
(7, 64, '775992.00', 91, '0.00', '70615272.00'),
(8, 79, '951418.00', 40, '0.00', '38056720.00'),
(8, 57, '711268.00', 17, '0.00', '12091556.00'),
(8, 1, '977930.00', 31, '0.00', '30315830.00'),
(8, 37, '711386.00', 16, '0.29', '11382176.00'),
(9, 71, '955474.00', 10, '1.00', '0.00'),
(9, 58, '937508.00', 18, '0.00', '16875144.00'),
(9, 74, '651351.00', 23, '0.83', '2546782.41'),
(9, 37, '711386.00', 60, '0.29', '42683160.00'),
(9, 4, '451341.00', 3, '0.93', '94781.61'),
(10, 24, '828118.00', 19, '0.38', '15734242.00'),
(10, 44, '759811.00', 8, '0.00', '6078488.00'),
(10, 82, '635510.00', 25, '0.00', '15887750.00'),
(10, 57, '711268.00', 3, '0.00', '2133804.00'),
(11, 37, '711386.00', 8, '0.29', '5691088.00'),
(11, 20, '819233.00', 9, '0.30', '7373097.00'),
(11, 3, '611489.00', 58, '0.80', '7093272.40'),
(11, 50, '407067.00', 4, '0.00', '1628268.00'),
(11, 54, '634778.00', 50, '0.00', '31738900.00'),
(12, 49, '178025.00', 3, '0.80', '106815.00'),
(12, 9, '963278.00', 10, '0.00', '9632780.00'),
(12, 55, '297773.00', 29, '0.48', '8635417.00'),
(13, 84, '924117.00', 6, '0.53', '2606009.94'),
(13, 70, '883145.00', 45, '0.83', '6756059.25'),
(13, 69, '962716.00', 6, '0.00', '5776296.00'),
(14, 93, '631321.00', 20, '0.20', '12626420.00'),
(14, 64, '775992.00', 2, '0.00', '1551984.00'),
(14, 28, '914497.00', 25, '0.00', '22862425.00'),
(14, 76, '792816.00', 12, '0.00', '9513792.00'),
(15, 22, '998983.00', 1, '0.00', '998983.00'),
(15, 86, '775015.00', 50, '0.00', '38750750.00'),
(15, 74, '651351.00', 7, '0.83', '775107.69'),
(16, 40, '420361.00', 66, '0.58', '11652406.92'),
(16, 9, '963278.00', 8, '0.00', '7706224.00'),
(16, 14, '976772.00', 21, '0.00', '20512212.00'),
(16, 66, '923318.00', 1, '0.00', '923318.00'),
(16, 51, '996689.00', 1, '0.00', '996689.00'),
(17, 85, '987351.00', 72, '0.00', '71089272.00'),
(17, 54, '634778.00', 1, '0.00', '634778.00'),
(17, 15, '980846.00', 16, '1.00', '0.00'),
(17, 45, '927940.00', 1, '0.00', '927940.00'),
(18, 29, '969996.00', 1, '0.00', '969996.00'),
(18, 87, '593290.00', 29, '0.40', '17205410.00'),
(18, 15, '980846.00', 28, '1.00', '0.00'),
(18, 37, '711386.00', 6, '0.29', '4268316.00'),
(18, 46, '836247.00', 25, '0.82', '3763111.50'),
(19, 9, '963278.00', 7, '0.00', '6742946.00'),
(19, 89, '891440.00', 31, '0.00', '27634640.00'),
(19, 52, '941991.00', 43, '0.98', '810112.26'),
(19, 100, '999997.00', 14, '0.30', '13999958.00'),
(19, 49, '178025.00', 5, '0.80', '178025.00'),
(20, 20, '819233.00', 7, '0.30', '5734631.00'),
(20, 43, '485367.00', 11, '0.74', '1388149.62'),
(20, 16, '925696.00', 64, '0.00', '59244544.00'),
(20, 98, '989411.00', 48, '0.00', '47491728.00'),
(21, 41, '494180.00', 1, '0.00', '494180.00'),
(21, 61, '946390.00', 9, '0.00', '8517510.00'),
(21, 92, '394824.00', 18, '0.00', '7106832.00'),
(21, 15, '980846.00', 33, '1.00', '0.00'),
(21, 31, '766003.00', 80, '0.75', '15320060.00'),
(22, 20, '819233.00', 9, '0.30', '7373097.00'),
(22, 81, '988180.00', 17, '0.57', '7223595.80'),
(22, 29, '969996.00', 6, '0.00', '5819976.00'),
(23, 87, '593290.00', 3, '0.40', '1779870.00'),
(23, 58, '937508.00', 62, '0.00', '58125496.00'),
(23, 6, '942375.00', 8, '0.00', '7539000.00'),
(23, 30, '880445.00', 41, '0.00', '36098245.00'),
(24, 95, '788575.00', 2, '1.00', '0.00'),
(24, 53, '581004.00', 48, '0.00', '27888192.00'),
(24, 18, '849355.00', 53, '0.00', '45015815.00'),
(24, 51, '996689.00', 2, '0.00', '1993378.00'),
(25, 70, '883145.00', 50, '0.83', '7506732.50'),
(25, 8, '862690.00', 22, '0.81', '3606044.20'),
(25, 29, '969996.00', 8, '0.00', '7759968.00'),
(25, 75, '739068.00', 4, '0.00', '2956272.00'),
(25, 51, '996689.00', 1, '0.00', '996689.00'),
(26, 64, '775992.00', 2, '0.00', '1551984.00'),
(26, 50, '407067.00', 1, '0.00', '407067.00'),
(26, 93, '631321.00', 15, '0.20', '9469815.00'),
(27, 58, '937508.00', 64, '0.00', '60000512.00'),
(27, 93, '631321.00', 1, '0.20', '631321.00'),
(28, 3, '611489.00', 3, '0.80', '366893.40'),
(28, 5, '759327.00', 3, '0.00', '2277981.00'),
(28, 25, '950887.00', 26, '0.65', '8653071.70'),
(28, 68, '931584.00', 16, '0.00', '14905344.00'),
(29, 7, '891033.00', 32, '0.50', '14256528.00'),
(29, 84, '924117.00', 9, '0.53', '3909014.91'),
(29, 83, '873669.00', 15, '0.87', '1703654.55'),
(30, 33, '986106.00', 4, '0.00', '3944424.00'),
(30, 83, '873669.00', 9, '0.87', '1022192.73'),
(30, 6, '942375.00', 7, '0.00', '6596625.00'),
(31, 44, '759811.00', 9, '0.00', '6838299.00'),
(31, 4, '451341.00', 5, '0.93', '157969.35'),
(31, 80, '999331.00', 2, '0.57', '859424.66'),
(32, 97, '448923.00', 29, '0.90', '1301876.70'),
(32, 80, '999331.00', 4, '0.57', '1718849.32'),
(32, 62, '891517.00', 3, '0.00', '2674551.00'),
(32, 92, '394824.00', 2, '0.00', '789648.00'),
(32, 56, '771033.00', 7, '0.00', '5397231.00'),
(33, 58, '937508.00', 6, '0.00', '5625048.00'),
(33, 96, '880455.00', 44, '0.90', '3874002.00'),
(33, 60, '454319.00', 17, '0.00', '7723423.00'),
(33, 5, '759327.00', 40, '0.00', '30373080.00'),
(34, 36, '998002.00', 5, '0.37', '4990010.00'),
(34, 27, '859110.00', 33, '0.97', '850518.90'),
(34, 65, '968237.00', 28, '0.00', '27110636.00'),
(35, 87, '593290.00', 15, '0.40', '8899350.00'),
(35, 8, '862690.00', 4, '0.81', '655644.40'),
(35, 10, '481958.00', 45, '0.00', '21688110.00'),
(36, 30, '880445.00', 64, '0.00', '56348480.00'),
(36, 89, '891440.00', 58, '0.00', '51703520.00'),
(36, 38, '929926.00', 50, '0.00', '46496300.00'),
(36, 64, '775992.00', 2, '0.00', '1551984.00'),
(36, 21, '868868.00', 11, '0.00', '9557548.00'),
(37, 67, '659811.00', 8, '0.00', '5278488.00'),
(37, 10, '481958.00', 1, '0.00', '481958.00'),
(37, 33, '986106.00', 2, '0.00', '1972212.00'),
(37, 3, '611489.00', 8, '0.80', '978382.40'),
(37, 84, '924117.00', 3, '0.53', '1303004.97'),
(38, 85, '987351.00', 16, '0.00', '15797616.00'),
(38, 89, '891440.00', 8, '0.00', '7131520.00'),
(38, 48, '904340.00', 63, '0.00', '56973420.00'),
(38, 29, '969996.00', 3, '0.00', '2909988.00'),
(39, 42, '563192.00', 9, '0.97', '152061.84'),
(39, 51, '996689.00', 1, '0.00', '996689.00'),
(39, 84, '924117.00', 3, '0.53', '1303004.97'),
(39, 9, '963278.00', 26, '0.00', '25045228.00'),
(39, 17, '845405.00', 4, '0.25', '3381620.00'),
(40, 25, '950887.00', 2, '0.65', '665620.90'),
(40, 94, '557816.00', 42, '0.00', '23428272.00'),
(40, 40, '420361.00', 3, '0.58', '529654.86'),
(41, 32, '994344.00', 1, '0.93', '69604.08'),
(41, 67, '659811.00', 3, '0.00', '1979433.00'),
(41, 70, '883145.00', 6, '0.83', '900807.90'),
(41, 80, '999331.00', 1, '0.57', '429712.33'),
(42, 54, '634778.00', 9, '0.00', '5713002.00'),
(42, 36, '998002.00', 1, '0.37', '998002.00'),
(42, 72, '533562.00', 20, '0.16', '10671240.00'),
(43, 92, '394824.00', 2, '0.00', '789648.00'),
(43, 34, '925857.00', 1, '0.81', '175912.83'),
(43, 57, '711268.00', 26, '0.00', '18492968.00'),
(44, 90, '618274.00', 10, '0.98', '123654.80'),
(44, 11, '748672.00', 53, '0.71', '11507088.64'),
(44, 32, '994344.00', 19, '0.93', '1322477.52'),
(45, 68, '931584.00', 26, '0.00', '24221184.00'),
(45, 26, '872282.00', 4, '0.00', '3489128.00'),
(45, 16, '925696.00', 19, '0.00', '17588224.00'),
(45, 81, '988180.00', 3, '0.57', '1274752.20'),
(46, 42, '563192.00', 6, '0.97', '101374.56'),
(46, 2, '656146.00', 2, '0.33', '1312292.00'),
(46, 65, '968237.00', 23, '0.00', '22269451.00'),
(46, 52, '941991.00', 51, '0.98', '960830.82'),
(47, 79, '951418.00', 2, '0.00', '1902836.00'),
(47, 62, '891517.00', 2, '0.00', '1783034.00'),
(47, 33, '986106.00', 2, '0.00', '1972212.00'),
(47, 49, '178025.00', 13, '0.80', '462865.00'),
(47, 17, '845405.00', 4, '0.25', '3381620.00'),
(48, 100, '999997.00', 33, '0.30', '32999901.00'),
(48, 8, '862690.00', 26, '0.81', '4261688.60'),
(48, 60, '454319.00', 2, '0.00', '908638.00'),
(48, 52, '941991.00', 10, '0.98', '188398.20'),
(48, 29, '969996.00', 1, '0.00', '969996.00'),
(49, 24, '828118.00', 10, '0.38', '8281180.00'),
(49, 12, '419876.00', 41, '0.00', '17214916.00'),
(49, 19, '510574.00', 59, '0.85', '4518579.90'),
(50, 76, '792816.00', 43, '0.00', '34091088.00'),
(50, 30, '880445.00', 13, '0.00', '11445785.00'),
(50, 36, '998002.00', 1, '0.37', '998002.00'),
(51, 55, '297773.00', 4, '0.48', '1191092.00'),
(51, 96, '880455.00', 16, '0.90', '1408728.00'),
(51, 3, '611489.00', 10, '0.80', '1222978.00'),
(51, 28, '914497.00', 5, '0.00', '4572485.00'),
(52, 10, '481958.00', 8, '0.00', '3855664.00'),
(52, 70, '883145.00', 1, '0.83', '150134.65'),
(52, 77, '605309.00', 1, '0.00', '605309.00'),
(52, 68, '931584.00', 2, '0.00', '1863168.00'),
(52, 63, '961162.00', 14, '0.00', '13456268.00'),
(53, 96, '880455.00', 6, '0.90', '528273.00'),
(53, 97, '448923.00', 12, '0.90', '538707.60'),
(53, 98, '989411.00', 7, '0.00', '6925877.00'),
(53, 12, '419876.00', 5, '0.00', '2099380.00'),
(54, 91, '623405.00', 37, '0.00', '23065985.00'),
(54, 73, '830933.00', 12, '0.00', '9971196.00'),
(54, 43, '485367.00', 5, '0.74', '630977.10'),
(54, 18, '849355.00', 70, '0.00', '59454850.00'),
(55, 61, '946390.00', 15, '0.00', '14195850.00'),
(55, 87, '593290.00', 9, '0.40', '5339610.00'),
(55, 75, '739068.00', 4, '0.00', '2956272.00'),
(56, 55, '297773.00', 42, '0.48', '12506466.00'),
(56, 82, '635510.00', 27, '0.00', '17158770.00'),
(57, 59, '473841.00', 54, '0.00', '25587414.00'),
(57, 13, '357003.00', 52, '0.08', '18564156.00'),
(58, 79, '951418.00', 2, '0.00', '1902836.00'),
(58, 62, '891517.00', 1, '0.00', '891517.00'),
(58, 15, '980846.00', 1, '1.00', '0.00'),
(59, 93, '631321.00', 3, '0.20', '1893963.00'),
(59, 68, '931584.00', 3, '0.00', '2794752.00'),
(59, 36, '998002.00', 1, '0.37', '998002.00'),
(59, 8, '862690.00', 1, '0.81', '163911.10'),
(60, 14, '976772.00', 12, '0.00', '11721264.00'),
(60, 23, '228292.00', 9, '0.00', '2054628.00'),
(60, 65, '968237.00', 3, '0.00', '2904711.00'),
(60, 47, '897292.00', 56, '0.00', '50248352.00'),
(61, 35, '845157.00', 45, '0.00', '38032065.00'),
(61, 64, '775992.00', 1, '0.00', '775992.00'),
(61, 57, '711268.00', 1, '0.00', '711268.00'),
(61, 85, '987351.00', 31, '0.00', '30607881.00'),
(62, 46, '836247.00', 2, '0.82', '301048.92'),
(62, 88, '971866.00', 11, '0.00', '10690526.00'),
(62, 98, '989411.00', 4, '0.00', '3957644.00'),
(62, 42, '563192.00', 42, '0.97', '709621.92'),
(63, 34, '925857.00', 1, '0.81', '175912.83'),
(63, 72, '533562.00', 2, '0.16', '1067124.00'),
(63, 6, '942375.00', 3, '0.00', '2827125.00'),
(63, 75, '739068.00', 7, '0.00', '5173476.00'),
(64, 18, '849355.00', 7, '0.00', '5945485.00'),
(64, 15, '980846.00', 3, '1.00', '0.00'),
(64, 28, '914497.00', 66, '0.00', '60356802.00'),
(66, 47, '897292.00', 2, '0.00', '1794584.00'),
(67, 82, '635510.00', 3, '0.00', '1906530.00'),
(67, 65, '968237.00', 14, '0.00', '13555318.00'),
(67, 82, '635510.00', 4, '0.00', '2542040.00'),
(68, 65, '968237.00', 13, '0.00', '12587081.00'),
(68, 93, '631321.00', 1, '0.20', '631321.00'),
(68, 30, '880445.00', 69, '0.00', '60750705.00'),
(69, 18, '849355.00', 4, '0.00', '3397420.00'),
(69, 33, '986106.00', 3, '0.00', '2958318.00'),
(70, 18, '849355.00', 9, '0.00', '7644195.00'),
(70, 35, '845157.00', 6, '0.00', '5070942.00'),
(70, 13, '357003.00', 11, '0.08', '3927033.00'),
(70, 4, '451341.00', 8, '0.93', '252750.96'),
(71, 42, '563192.00', 25, '0.97', '422394.00'),
(71, 89, '891440.00', 46, '0.00', '41006240.00'),
(71, 73, '830933.00', 28, '0.00', '23266124.00'),
(72, 48, '904340.00', 8, '0.00', '7234720.00'),
(72, 87, '593290.00', 4, '0.40', '2373160.00'),
(72, 95, '788575.00', 2, '1.00', '0.00'),
(72, 28, '914497.00', 27, '0.00', '24691419.00'),
(73, 98, '989411.00', 6, '0.00', '5936466.00'),
(73, 50, '407067.00', 1, '0.00', '407067.00'),
(73, 17, '845405.00', 2, '0.25', '1690810.00'),
(74, 52, '941991.00', 10, '0.98', '188398.20'),
(74, 45, '927940.00', 13, '0.00', '12063220.00'),
(75, 98, '989411.00', 4, '0.00', '3957644.00'),
(75, 39, '232831.00', 8, '0.00', '1862648.00'),
(75, 32, '994344.00', 35, '0.93', '2436142.80'),
(76, 6, '942375.00', 4, '0.00', '3769500.00'),
(76, 28, '914497.00', 24, '0.00', '21947928.00'),
(76, 100, '999997.00', 6, '0.30', '5999982.00'),
(77, 79, '951418.00', 1, '0.00', '951418.00'),
(77, 39, '232831.00', 22, '0.00', '5122282.00'),
(77, 78, '943024.00', 5, '0.96', '188604.80'),
(77, 58, '937508.00', 2, '0.00', '1875016.00'),
(77, 42, '563192.00', 44, '0.97', '743413.44'),
(78, 61, '946390.00', 38, '0.00', '35962820.00'),
(78, 35, '845157.00', 2, '0.00', '1690314.00'),
(79, 91, '623405.00', 3, '0.00', '1870215.00'),
(79, 53, '581004.00', 35, '0.00', '20335140.00'),
(80, 53, '581004.00', 35, '0.00', '20335140.00'),
(81, 59, '473841.00', 58, '0.00', '27482778.00'),
(81, 48, '904340.00', 8, '0.00', '7234720.00'),
(81, 89, '891440.00', 29, '0.00', '25851760.00'),
(82, 55, '297773.00', 13, '0.48', '3871049.00'),
(82, 10, '481958.00', 1, '0.00', '481958.00'),
(82, 53, '581004.00', 8, '0.00', '4648032.00'),
(83, 54, '634778.00', 1, '0.00', '634778.00'),
(83, 44, '759811.00', 9, '0.00', '6838299.00'),
(83, 55, '297773.00', 7, '0.48', '2084411.00'),
(84, 68, '931584.00', 1, '0.00', '931584.00'),
(84, 30, '880445.00', 90, '0.00', '79240050.00'),
(85, 67, '659811.00', 29, '0.00', '19134519.00'),
(85, 96, '880455.00', 1, '0.90', '88045.50'),
(85, 87, '593290.00', 6, '0.40', '3559740.00'),
(86, 9, '963278.00', 2, '0.00', '1926556.00'),
(86, 75, '739068.00', 1, '0.00', '739068.00'),
(87, 72, '533562.00', 3, '0.16', '1600686.00'),
(87, 90, '618274.00', 46, '0.98', '568812.08'),
(87, 89, '891440.00', 31, '0.00', '27634640.00'),
(88, 93, '631321.00', 2, '0.20', '1262642.00'),
(88, 21, '868868.00', 27, '0.00', '23459436.00'),
(88, 88, '971866.00', 5, '0.00', '4859330.00'),
(88, 75, '739068.00', 2, '0.00', '1478136.00'),
(89, 16, '925696.00', 2, '0.00', '1851392.00'),
(89, 94, '557816.00', 3, '0.00', '1673448.00'),
(90, 52, '941991.00', 4, '0.98', '75359.28'),
(90, 91, '623405.00', 4, '0.00', '2493620.00'),
(90, 77, '605309.00', 2, '0.00', '1210618.00'),
(90, 30, '880445.00', 6, '0.00', '5282670.00'),
(91, 17, '845405.00', 2, '0.25', '1690810.00'),
(91, 97, '448923.00', 3, '0.90', '134676.90'),
(91, 63, '961162.00', 30, '0.00', '28834860.00'),
(91, 28, '914497.00', 8, '0.00', '7315976.00'),
(91, 60, '454319.00', 10, '0.00', '4543190.00'),
(92, 52, '941991.00', 2, '0.98', '37679.64'),
(92, 70, '883145.00', 2, '0.83', '300269.30'),
(92, 98, '989411.00', 1, '0.00', '989411.00'),
(93, 14, '976772.00', 6, '0.00', '5860632.00'),
(93, 44, '759811.00', 2, '0.00', '1519622.00'),
(93, 50, '407067.00', 3, '0.00', '1221201.00'),
(94, 83, '873669.00', 6, '0.87', '681461.82'),
(95, 70, '883145.00', 4, '0.83', '600538.60'),
(95, 47, '897292.00', 4, '0.00', '3589168.00'),
(95, 11, '748672.00', 11, '0.71', '2388263.68'),
(96, 27, '859110.00', 3, '0.97', '77319.90'),
(97, 56, '771033.00', 1, '0.00', '771033.00'),
(97, 85, '987351.00', 28, '0.00', '27645828.00'),
(97, 44, '759811.00', 1, '0.00', '759811.00'),
(97, 93, '631321.00', 1, '0.20', '631321.00'),
(98, 8, '862690.00', 1, '0.81', '163911.10'),
(98, 93, '631321.00', 2, '0.20', '1262642.00'),
(98, 23, '228292.00', 21, '0.00', '4794132.00'),
(99, 8, '862690.00', 1, '0.81', '163911.10'),
(99, 59, '473841.00', 6, '0.00', '2843046.00'),
(99, 62, '891517.00', 3, '0.00', '2674551.00'),
(100, 91, '623405.00', 3, '0.00', '1870215.00'),
(100, 55, '297773.00', 4, '0.48', '1191092.00'),
(100, 65, '968237.00', 7, '0.00', '6777659.00'),
(101, 88, '971866.00', 1, '0.00', '971866.00'),
(101, 21, '868868.00', 1, '0.00', '868868.00'),
(102, 71, '955474.00', 27, '1.00', '0.00'),
(102, 82, '635510.00', 7, '0.00', '4448570.00'),
(102, 96, '880455.00', 1, '0.90', '88045.50'),
(103, 16, '925696.00', 2, '0.00', '1851392.00'),
(104, 52, '941991.00', 3, '0.98', '56519.46'),
(104, 11, '748672.00', 7, '0.71', '1519804.16'),
(104, 19, '510574.00', 10, '0.85', '765861.00'),
(105, 70, '883145.00', 4, '0.83', '600538.60'),
(105, 70, '883145.00', 1, '0.83', '150134.65'),
(105, 4, '451341.00', 1, '0.93', '31593.87'),
(106, 89, '891440.00', 19, '0.00', '16937360.00'),
(106, 75, '739068.00', 1, '0.00', '739068.00'),
(106, 78, '943024.00', 2, '0.96', '75441.92'),
(106, 7, '891033.00', 2, '0.50', '891033.00'),
(108, 73, '830933.00', 17, '0.00', '14125861.00'),
(108, 65, '968237.00', 11, '0.00', '10650607.00'),
(109, 5, '759327.00', 2, '0.00', '1518654.00'),
(109, 16, '925696.00', 4, '0.00', '3702784.00'),
(110, 6, '942375.00', 6, '0.00', '5654250.00'),
(110, 96, '880455.00', 2, '0.90', '176091.00'),
(111, 75, '739068.00', 1, '0.00', '739068.00'),
(111, 83, '873669.00', 4, '0.87', '454307.88'),
(111, 33, '986106.00', 1, '0.00', '986106.00'),
(112, 18, '849355.00', 7, '0.00', '5945485.00'),
(113, 13, '357003.00', 32, '0.08', '11424096.00'),
(113, 93, '631321.00', 2, '0.20', '1262642.00'),
(113, 21, '868868.00', 52, '0.00', '45181136.00'),
(113, 94, '557816.00', 15, '0.00', '8367240.00'),
(114, 53, '581004.00', 42, '0.00', '24402168.00'),
(114, 100, '999997.00', 4, '0.30', '3999988.00'),
(114, 69, '962716.00', 5, '0.00', '4813580.00'),
(115, 100, '999997.00', 1, '0.30', '999997.00'),
(116, 88, '971866.00', 6, '0.00', '5831196.00'),
(116, 100, '999997.00', 2, '0.30', '1999994.00'),
(117, 19, '510574.00', 6, '0.85', '459516.60'),
(117, 19, '510574.00', 4, '0.85', '306344.40'),
(117, 49, '178025.00', 9, '0.80', '320445.00'),
(118, 19, '510574.00', 18, '0.85', '1378549.80'),
(118, 88, '971866.00', 6, '0.00', '5831196.00'),
(118, 71, '955474.00', 7, '1.00', '0.00'),
(119, 64, '775992.00', 1, '0.00', '775992.00'),
(119, 32, '994344.00', 36, '0.93', '2505746.88'),
(119, 46, '836247.00', 11, '0.82', '1655769.06'),
(120, 82, '635510.00', 7, '0.00', '4448570.00'),
(120, 85, '987351.00', 1, '0.00', '987351.00'),
(121, 47, '897292.00', 8, '0.00', '7178336.00'),
(121, 99, '991478.00', 69, '0.45', '68411982.00'),
(122, 18, '849355.00', 5, '0.00', '4246775.00'),
(122, 73, '830933.00', 21, '0.00', '17449593.00'),
(123, 21, '868868.00', 2, '0.00', '1737736.00'),
(123, 31, '766003.00', 12, '0.75', '2298009.00'),
(124, 52, '941991.00', 3, '0.98', '56519.46'),
(124, 31, '766003.00', 1, '0.75', '191500.75'),
(125, 67, '659811.00', 29, '0.00', '19134519.00'),
(125, 86, '775015.00', 2, '0.00', '1550030.00'),
(126, 48, '904340.00', 13, '0.00', '11756420.00'),
(127, 76, '792816.00', 33, '0.00', '26162928.00'),
(127, 39, '232831.00', 9, '0.00', '2095479.00'),
(128, 18, '849355.00', 7, '0.00', '5945485.00'),
(128, 23, '228292.00', 14, '0.00', '3196088.00'),
(128, 82, '635510.00', 1, '0.00', '635510.00'),
(129, 18, '849355.00', 2, '0.00', '1698710.00'),
(129, 73, '830933.00', 3, '0.00', '2492799.00'),
(130, 26, '872282.00', 3, '0.00', '2616846.00'),
(130, 49, '178025.00', 8, '0.80', '284840.00'),
(131, 21, '868868.00', 5, '0.00', '4344340.00'),
(132, 89, '891440.00', 5, '0.00', '4457200.00'),
(133, 86, '775015.00', 3, '0.00', '2325045.00'),
(134, 13, '357003.00', 20, '0.08', '7140060.00'),
(134, 14, '976772.00', 23, '0.00', '22465756.00'),
(135, 6, '942375.00', 1, '0.00', '942375.00'),
(135, 61, '946390.00', 14, '0.00', '13249460.00'),
(135, 38, '929926.00', 27, '0.00', '25108002.00'),
(136, 48, '904340.00', 1, '0.00', '904340.00'),
(136, 63, '961162.00', 24, '0.00', '23067888.00'),
(136, 47, '897292.00', 1, '0.00', '897292.00'),
(137, 19, '510574.00', 15, '0.85', '1148791.50'),
(137, 99, '991478.00', 6, '0.45', '5948868.00'),
(137, 63, '961162.00', 13, '0.00', '12495106.00'),
(137, 56, '771033.00', 1, '0.00', '771033.00'),
(138, 63, '961162.00', 15, '0.00', '14417430.00'),
(138, 71, '955474.00', 7, '1.00', '0.00'),
(139, 19, '510574.00', 2, '0.85', '153172.20'),
(140, 49, '178025.00', 3, '0.80', '106815.00'),
(140, 63, '961162.00', 16, '0.00', '15378592.00'),
(141, 39, '232831.00', 1, '0.00', '232831.00'),
(142, 2, '656146.00', 7, '0.33', '4593022.00'),
(142, 11, '748672.00', 2, '0.71', '434229.76'),
(143, 13, '357003.00', 7, '0.08', '2499021.00'),
(143, 14, '976772.00', 10, '0.00', '9767720.00'),
(144, 50, '407067.00', 1, '0.00', '407067.00'),
(144, 67, '659811.00', 14, '0.00', '9237354.00'),
(145, 27, '859110.00', 4, '0.97', '103093.20'),
(145, 94, '557816.00', 7, '0.00', '3904712.00'),
(145, 23, '228292.00', 4, '0.00', '913168.00'),
(146, 15, '980846.00', 2, '1.00', '0.00'),
(147, 86, '775015.00', 10, '0.00', '7750150.00'),
(147, 73, '830933.00', 16, '0.00', '13294928.00'),
(149, 23, '228292.00', 9, '0.00', '2054628.00'),
(149, 17, '845405.00', 1, '0.25', '845405.00'),
(149, 23, '228292.00', 4, '0.00', '913168.00'),
(150, 14, '976772.00', 1, '0.00', '976772.00'),
(150, 24, '828118.00', 13, '0.38', '10765534.00'),
(150, 5, '759327.00', 1, '0.00', '759327.00'),
(151, 86, '775015.00', 2, '0.00', '1550030.00'),
(151, 47, '897292.00', 2, '0.00', '1794584.00'),
(151, 6, '942375.00', 1, '0.00', '942375.00'),
(151, 82, '635510.00', 1, '0.00', '635510.00'),
(152, 82, '635510.00', 1, '0.00', '635510.00'),
(153, 67, '659811.00', 32, '0.00', '21113952.00'),
(153, 26, '872282.00', 1, '0.00', '872282.00'),
(153, 13, '357003.00', 1, '0.08', '357003.00'),
(154, 76, '792816.00', 2, '0.00', '1585632.00'),
(154, 61, '946390.00', 12, '0.00', '11356680.00'),
(155, 59, '473841.00', 12, '0.00', '5686092.00'),
(155, 17, '845405.00', 1, '0.25', '845405.00'),
(155, 19, '510574.00', 1, '0.85', '76586.10'),
(157, 71, '955474.00', 8, '1.00', '0.00'),
(157, 44, '759811.00', 1, '0.00', '759811.00'),
(158, 35, '845157.00', 6, '0.00', '5070942.00'),
(158, 49, '178025.00', 3, '0.80', '106815.00'),
(159, 19, '510574.00', 1, '0.85', '76586.10'),
(159, 28, '914497.00', 31, '0.00', '28349407.00'),
(159, 9, '963278.00', 6, '0.00', '5779668.00'),
(160, 90, '618274.00', 36, '0.98', '445157.28'),
(160, 10, '481958.00', 9, '0.00', '4337622.00'),
(161, 100, '999997.00', 1, '0.30', '999997.00'),
(161, 31, '766003.00', 1, '0.75', '191500.75'),
(162, 38, '929926.00', 40, '0.00', '37197040.00'),
(162, 97, '448923.00', 9, '0.90', '404030.70'),
(162, 59, '473841.00', 46, '0.00', '21796686.00'),
(164, 49, '178025.00', 1, '0.80', '35605.00'),
(165, 11, '748672.00', 17, '0.71', '3690952.96'),
(165, 27, '859110.00', 8, '0.97', '206186.40'),
(165, 98, '989411.00', 1, '0.00', '989411.00'),
(166, 38, '929926.00', 17, '0.00', '15808742.00'),
(169, 94, '557816.00', 9, '0.00', '5020344.00'),
(169, 2, '656146.00', 4, '0.33', '2624584.00'),
(169, 94, '557816.00', 3, '0.00', '1673448.00'),
(170, 48, '904340.00', 1, '0.00', '904340.00'),
(170, 35, '845157.00', 2, '0.00', '1690314.00'),
(172, 71, '955474.00', 6, '1.00', '0.00'),
(173, 49, '178025.00', 1, '0.80', '35605.00'),
(174, 6, '942375.00', 1, '0.00', '942375.00'),
(174, 23, '228292.00', 8, '0.00', '1826336.00'),
(175, 59, '473841.00', 2, '0.00', '947682.00'),
(175, 52, '941991.00', 2, '0.98', '37679.64'),
(176, 11, '748672.00', 2, '0.71', '434229.76'),
(176, 95, '788575.00', 1, '1.00', '0.00'),
(176, 1, '977930.00', 34, '0.00', '33249620.00'),
(176, 10, '481958.00', 10, '0.00', '4819580.00'),
(176, 97, '448923.00', 2, '0.90', '89784.60'),
(177, 28, '914497.00', 1, '0.00', '914497.00'),
(177, 9, '963278.00', 4, '0.00', '3853112.00'),
(177, 23, '228292.00', 4, '0.00', '913168.00'),
(178, 98, '989411.00', 1, '0.00', '989411.00'),
(178, 27, '859110.00', 1, '0.97', '25773.30'),
(179, 94, '557816.00', 1, '0.00', '557816.00'),
(180, 88, '971866.00', 2, '0.00', '1943732.00'),
(182, 61, '946390.00', 3, '0.00', '2839170.00'),
(184, 10, '481958.00', 1, '0.00', '481958.00'),
(185, 65, '968237.00', 3, '0.00', '2904711.00'),
(185, 17, '845405.00', 1, '0.25', '845405.00'),
(186, 50, '407067.00', 1, '0.00', '407067.00'),
(186, 28, '914497.00', 6, '0.00', '5486982.00'),
(186, 27, '859110.00', 1, '0.97', '25773.30'),
(187, 6, '942375.00', 1, '0.00', '942375.00'),
(188, 90, '618274.00', 36, '0.98', '445157.28'),
(189, 9, '963278.00', 1, '0.00', '963278.00'),
(189, 90, '618274.00', 2, '0.98', '24730.96'),
(190, 35, '845157.00', 2, '0.00', '1690314.00'),
(191, 18, '849355.00', 2, '0.00', '1698710.00'),
(191, 83, '873669.00', 1, '0.87', '113576.97'),
(192, 88, '971866.00', 4, '0.00', '3887464.00'),
(192, 5, '759327.00', 1, '0.00', '759327.00'),
(192, 11, '748672.00', 2, '0.71', '434229.76'),
(193, 98, '989411.00', 3, '0.00', '2968233.00'),
(193, 11, '748672.00', 1, '0.71', '217114.88'),
(65, 25, '950887.00', 3, '0.65', '1854229.65'),
(65, 3, '611489.00', 3, '0.80', '366893.40'),
(65, 69, '962716.00', 6, '0.00', '5776296.00'),
(194, 11, '748672.00', 2, '0.71', '1063114.24'),
(195, 88, '971866.00', 13, '0.00', '12634258.00'),
(196, 88, '971866.00', 11, '0.00', '10690526.00'),
(197, 1, '977930.00', 2, '0.00', '1955860.00'),
(198, 11, '748672.00', 1, '0.71', '531557.12'),
(199, 5, '759327.00', 2, '0.00', '1518654.00'),
(200, 5, '759327.00', 2, '0.00', '1518654.00'),
(201, 5, '759327.00', 1, '0.00', '759327.00');

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
(1, 2, 1, 377856888594462, '2019-12-29 02:18:57', '56860606.83', 'Completed', '2', '2019-12-27 19:18:57', '2019-12-27 19:18:57', NULL),
(2, 4, 2, 376082077401085, '2019-12-29 02:19:14', '28600959.60', 'Submitted', '16', '2019-12-27 19:19:14', '2019-12-27 19:19:14', NULL),
(3, 3, 3, 6011383048931178, '2019-12-29 02:19:28', '76406384.88', 'Completed', '34', '2019-12-27 19:19:28', '2019-12-27 19:19:28', NULL),
(4, 7, 4, 5438099390925637, '2019-12-29 02:19:29', '29128163.96', 'Canceled', '38', '2019-12-27 19:19:29', '2019-12-27 19:19:29', NULL),
(5, 10, 5, 4532443712757476, '2019-12-29 02:19:29', '105622832.00', 'Completed', '18', '2019-12-27 19:19:29', '2019-12-27 19:19:29', NULL),
(6, 9, 6, 2221157106728287, '2019-12-29 02:19:30', '5894656.90', 'Submitted', '22', '2019-12-27 19:19:30', '2019-12-27 19:19:30', NULL),
(7, 6, 7, 341359191791316, '2019-12-29 02:19:31', '110808182.00', 'Completed', '3', '2019-12-27 19:19:31', '2019-12-27 19:19:31', NULL),
(8, 10, 8, 4024007125444645, '2019-12-29 02:19:31', '91846282.00', 'Submitted', '4', '2019-12-27 19:19:31', '2019-12-27 19:19:31', NULL),
(9, 2, 9, 5253660625498765, '2019-12-29 02:19:32', '62199868.02', 'Completed', '17', '2019-12-27 19:19:32', '2019-12-27 19:19:32', NULL),
(10, 9, 10, 4024007199577395, '2019-12-29 02:19:33', '39834284.00', 'Canceled', '10', '2019-12-27 19:19:33', '2019-12-27 19:19:33', NULL),
(11, 5, 11, 4929260620634, '2019-12-29 02:19:34', '53524625.40', 'Completed', '24', '2019-12-27 19:19:34', '2019-12-27 19:19:34', NULL),
(12, 4, 12, 4916806405120713, '2019-12-29 02:19:34', '18375012.00', 'Canceled', '3', '2019-12-27 19:19:34', '2019-12-27 19:19:34', NULL),
(13, 1, 13, 4485651864070558, '2019-12-29 02:19:35', '15138365.19', 'Canceled', '17', '2019-12-27 19:19:35', '2019-12-27 19:19:35', NULL),
(14, 3, 14, 376471193025540, '2019-12-29 02:19:36', '46554621.00', 'Submitted', '40', '2019-12-27 19:19:36', '2019-12-27 19:19:36', NULL),
(15, 4, 15, 344282508082970, '2019-12-29 02:19:36', '40524840.69', 'Completed', '2', '2019-12-27 19:19:36', '2019-12-27 19:19:36', NULL),
(16, 7, 16, 375750265799525, '2019-12-29 02:19:37', '41790849.92', 'Completed', '2', '2019-12-27 19:19:37', '2019-12-27 19:19:37', NULL),
(17, 6, 17, 2318564095001150, '2019-12-29 02:19:37', '72651990.00', 'Canceled', '20', '2019-12-27 19:19:37', '2019-12-27 19:19:37', NULL),
(18, 7, 18, 346454663227959, '2019-12-29 02:19:39', '26206833.50', 'Submitted', '27', '2019-12-27 19:19:39', '2019-12-27 19:19:39', NULL),
(19, 4, 19, 4556447950277, '2019-12-29 02:19:40', '49365681.26', 'Canceled', '38', '2019-12-27 19:19:40', '2019-12-27 19:19:40', NULL),
(20, 2, 20, 4929528695717, '2019-12-29 02:19:41', '113859052.62', 'Submitted', '20', '2019-12-27 19:19:41', '2019-12-27 19:19:41', NULL),
(21, 9, 21, 4556157495877, '2019-12-29 02:19:42', '31438582.00', 'Submitted', '37', '2019-12-27 19:19:42', '2019-12-27 19:19:42', NULL),
(22, 4, 22, 2720415323085915, '2019-12-29 02:19:42', '20416668.80', 'Submitted', '21', '2019-12-27 19:19:42', '2019-12-27 19:19:42', NULL),
(23, 4, 23, 2382926139153340, '2019-12-29 02:19:43', '103542611.00', 'Canceled', '35', '2019-12-27 19:19:43', '2019-12-27 19:19:43', NULL),
(24, 4, 24, 2221639971104819, '2019-12-29 02:19:44', '74897385.00', 'Canceled', '40', '2019-12-27 19:19:44', '2019-12-27 19:19:44', NULL),
(25, 7, 25, 5174793797287215, '2019-12-29 02:19:44', '22825705.70', 'Completed', '20', '2019-12-27 19:19:44', '2019-12-27 19:19:44', NULL),
(26, 10, 26, 2422792757243025, '2019-12-29 02:19:45', '11428866.00', 'Submitted', '14', '2019-12-27 19:19:45', '2019-12-27 19:19:45', NULL),
(27, 3, 27, 4556811971041025, '2019-12-29 02:19:46', '60631833.00', 'Completed', '28', '2019-12-27 19:19:46', '2019-12-27 19:19:46', NULL),
(28, 10, 28, 4024007159912, '2019-12-29 02:19:46', '26203290.10', 'Submitted', '18', '2019-12-27 19:19:46', '2019-12-27 19:19:46', NULL),
(29, 1, 29, 2333578280915900, '2019-12-29 02:19:47', '19869197.46', 'Completed', '2', '2019-12-27 19:19:47', '2019-12-27 19:19:47', NULL),
(30, 10, 30, 4539914714175266, '2019-12-29 02:19:47', '11563241.73', 'Canceled', '11', '2019-12-27 19:19:47', '2019-12-27 19:19:47', NULL),
(31, 9, 31, 4556347317997927, '2019-12-29 02:19:48', '7855693.01', 'Canceled', '32', '2019-12-27 19:19:48', '2019-12-27 19:19:48', NULL),
(32, 9, 32, 378576839162073, '2019-12-29 02:19:49', '11882156.02', 'Submitted', '39', '2019-12-27 19:19:49', '2019-12-27 19:19:49', NULL),
(33, 3, 33, 4397763631492, '2019-12-29 02:19:49', '47595553.00', 'Submitted', '38', '2019-12-27 19:19:49', '2019-12-27 19:19:49', NULL),
(34, 6, 34, 4024007156195025, '2019-12-29 02:19:50', '32951164.90', 'Submitted', '17', '2019-12-27 19:19:50', '2019-12-27 19:19:50', NULL),
(35, 1, 35, 4485697449392736, '2019-12-29 02:19:50', '31243104.40', 'Submitted', '25', '2019-12-27 19:19:50', '2019-12-27 19:19:50', NULL),
(36, 5, 36, 5575477844141352, '2019-12-29 02:19:51', '165657832.00', 'Canceled', '10', '2019-12-27 19:19:51', '2019-12-27 19:19:51', NULL),
(37, 10, 37, 4716232300510803, '2019-12-29 02:19:52', '10014045.37', 'Canceled', '7', '2019-12-27 19:19:52', '2019-12-27 19:19:52', NULL),
(38, 6, 38, 4916938173948, '2019-12-29 02:19:52', '82812544.00', 'Submitted', '40', '2019-12-27 19:19:52', '2019-12-27 19:19:52', NULL),
(39, 2, 39, 4485569382838639, '2019-12-29 02:19:53', '30878603.81', 'Submitted', '33', '2019-12-27 19:19:53', '2019-12-27 19:19:53', NULL),
(40, 3, 40, 2457379368652162, '2019-12-29 02:19:53', '24623547.76', 'Submitted', '21', '2019-12-27 19:19:53', '2019-12-27 19:19:53', NULL),
(41, 10, 41, 4532845367200075, '2019-12-29 02:19:54', '3379557.31', 'Submitted', '16', '2019-12-27 19:19:54', '2019-12-27 19:19:54', NULL),
(42, 10, 42, 4485294404164, '2019-12-29 02:19:55', '17382244.00', 'Submitted', '6', '2019-12-27 19:19:55', '2019-12-27 19:19:55', NULL),
(43, 8, 43, 5217791833205067, '2019-12-29 02:19:55', '19458528.83', 'Completed', '22', '2019-12-27 19:19:55', '2019-12-27 19:19:55', NULL),
(44, 1, 44, 4716512025955, '2019-12-29 02:19:56', '12953220.96', 'Completed', '18', '2019-12-27 19:19:56', '2019-12-27 19:19:56', NULL),
(45, 5, 45, 5544930610747602, '2019-12-29 02:19:57', '46573288.20', 'Submitted', '1', '2019-12-27 19:19:57', '2019-12-27 19:19:57', NULL),
(46, 5, 46, 4929181253411365, '2019-12-29 02:19:57', '24643948.38', 'Submitted', '15', '2019-12-27 19:19:57', '2019-12-27 19:19:57', NULL),
(47, 3, 47, 5117117716222170, '2019-12-29 02:19:58', '9502567.00', 'Canceled', '24', '2019-12-27 19:19:58', '2019-12-27 19:19:58', NULL),
(48, 4, 48, 376363841455726, '2019-12-29 02:19:59', '39328621.80', 'Submitted', '3', '2019-12-27 19:19:59', '2019-12-27 19:19:59', NULL),
(49, 8, 49, 2360672816753517, '2019-12-29 02:19:59', '30014675.90', 'Completed', '37', '2019-12-27 19:19:59', '2019-12-27 19:19:59', NULL),
(50, 1, 50, 2558614750955973, '2019-12-29 02:20:00', '46534875.00', 'Canceled', '35', '2019-12-27 19:20:00', '2019-12-27 19:20:00', NULL),
(51, 6, 51, 4539399306593474, '2019-12-29 02:20:01', '8395283.00', 'Completed', '32', '2019-12-27 19:20:01', '2019-12-27 19:20:01', NULL),
(52, 8, 52, 378678903201256, '2019-12-29 02:20:01', '19930543.65', 'Canceled', '8', '2019-12-27 19:20:01', '2019-12-27 19:20:01', NULL),
(53, 2, 53, 2720499429866600, '2019-12-29 02:20:02', '10092237.60', 'Completed', '17', '2019-12-27 19:20:02', '2019-12-27 19:20:02', NULL),
(54, 5, 54, 372188154616828, '2019-12-29 02:20:03', '93123008.10', 'Completed', '33', '2019-12-27 19:20:03', '2019-12-27 19:20:03', NULL),
(55, 4, 55, 4539185785463457, '2019-12-29 02:20:04', '22491732.00', 'Submitted', '39', '2019-12-27 19:20:04', '2019-12-27 19:20:04', NULL),
(56, 2, 56, 6011321330888938, '2019-12-29 02:20:04', '29665236.00', 'Submitted', '16', '2019-12-27 19:20:04', '2019-12-27 19:20:04', NULL),
(57, 10, 57, 4532448204859375, '2019-12-29 02:20:04', '44151570.00', 'Canceled', '12', '2019-12-27 19:20:04', '2019-12-27 19:20:04', NULL),
(58, 5, 58, 372281790481200, '2019-12-29 02:20:05', '2794353.00', 'Submitted', '6', '2019-12-27 19:20:05', '2019-12-27 19:20:05', NULL),
(59, 9, 59, 5352183453822550, '2019-12-29 02:20:06', '5850628.10', 'Submitted', '2', '2019-12-27 19:20:06', '2019-12-27 19:20:06', NULL),
(60, 9, 60, 5135297504839845, '2019-12-29 02:20:07', '66928955.00', 'Completed', '6', '2019-12-27 19:20:07', '2019-12-27 19:20:07', NULL),
(61, 6, 61, 4485479109174, '2019-12-29 02:20:08', '70127206.00', 'Submitted', '17', '2019-12-27 19:20:08', '2019-12-27 19:20:08', NULL),
(62, 4, 62, 4929018862223742, '2019-12-29 02:20:08', '15658840.84', 'Canceled', '30', '2019-12-27 19:20:08', '2019-12-27 19:20:08', NULL),
(63, 9, 63, 4716128120425794, '2019-12-29 02:20:09', '9243637.83', 'Completed', '15', '2019-12-27 19:20:09', '2019-12-27 19:20:09', NULL),
(64, 8, 64, 4485777114639205, '2019-12-29 02:20:09', '66302287.00', 'Canceled', '1', '2019-12-27 19:20:09', '2019-12-27 19:20:09', NULL),
(65, 10, 65, NULL, '2019-12-29 00:00:00', '7997419.05', 'Submitted', '18', '2019-12-27 19:20:10', '2019-12-28 03:51:58', NULL),
(66, 6, 66, 4532055672154179, '2019-12-29 02:20:10', '1794584.00', 'Submitted', '4', '2019-12-27 19:20:10', '2019-12-27 19:20:10', NULL),
(67, 6, 67, 2528234755928391, '2019-12-29 02:20:11', '18003888.00', 'Canceled', '13', '2019-12-27 19:20:11', '2019-12-27 19:20:11', NULL),
(68, 4, 68, 4024007112874564, '2019-12-29 02:20:12', '73969107.00', 'Canceled', '1', '2019-12-27 19:20:12', '2019-12-27 19:20:12', NULL),
(69, 3, 69, 4929086701933995, '2019-12-29 02:20:12', '6355738.00', 'Submitted', '9', '2019-12-27 19:20:12', '2019-12-27 19:20:12', NULL),
(70, 5, 70, 4539324633812165, '2019-12-29 02:20:13', '16894920.96', 'Completed', '34', '2019-12-27 19:20:13', '2019-12-27 19:20:13', NULL),
(71, 2, 71, 4532592120559690, '2019-12-29 02:20:13', '64694758.00', 'Canceled', '26', '2019-12-27 19:20:13', '2019-12-27 19:20:13', NULL),
(72, 2, 72, 4539404163081694, '2019-12-29 02:20:14', '34299299.00', 'Completed', '17', '2019-12-27 19:20:14', '2019-12-27 19:20:14', NULL),
(73, 3, 73, 4532766360861848, '2019-12-29 02:20:15', '8034343.00', 'Submitted', '32', '2019-12-27 19:20:15', '2019-12-27 19:20:15', NULL),
(74, 4, 74, 2648783841360287, '2019-12-29 02:20:15', '12251618.20', 'Submitted', '24', '2019-12-27 19:20:15', '2019-12-27 19:20:15', NULL),
(75, 4, 75, 4539951135840771, '2019-12-29 02:20:16', '8256434.80', 'Canceled', '21', '2019-12-27 19:20:16', '2019-12-27 19:20:16', NULL),
(76, 7, 76, 4024007136209, '2019-12-29 02:20:17', '31717410.00', 'Canceled', '2', '2019-12-27 19:20:17', '2019-12-27 19:20:17', NULL),
(77, 9, 77, 4716951830715315, '2019-12-29 02:20:17', '8880734.24', 'Completed', '19', '2019-12-27 19:20:17', '2019-12-27 19:20:17', NULL),
(78, 7, 78, 4532313229165200, '2019-12-29 02:20:18', '37653134.00', 'Completed', '39', '2019-12-27 19:20:18', '2019-12-27 19:20:18', NULL),
(79, 8, 79, 4539647603253741, '2019-12-29 02:20:18', '22205355.00', 'Canceled', '38', '2019-12-27 19:20:18', '2019-12-27 19:20:18', NULL),
(80, 3, 80, 4485333898707584, '2019-12-29 02:20:18', '20335140.00', 'Canceled', '13', '2019-12-27 19:20:18', '2019-12-27 19:20:18', NULL),
(81, 6, 81, 4716721444682023, '2019-12-29 02:20:19', '60569258.00', 'Canceled', '4', '2019-12-27 19:20:19', '2019-12-27 19:20:19', NULL),
(82, 5, 82, 4556573021109, '2019-12-29 02:20:19', '9001039.00', 'Submitted', '22', '2019-12-27 19:20:19', '2019-12-27 19:20:19', NULL),
(83, 8, 83, 4286648488386, '2019-12-29 02:20:20', '9557488.00', 'Submitted', '16', '2019-12-27 19:20:20', '2019-12-27 19:20:20', NULL),
(84, 6, 84, 4929252185746945, '2019-12-29 02:20:20', '80171634.00', 'Completed', '17', '2019-12-27 19:20:20', '2019-12-27 19:20:20', NULL),
(85, 9, 85, 4539898406388578, '2019-12-29 02:20:21', '22782304.50', 'Completed', '15', '2019-12-27 19:20:21', '2019-12-27 19:20:21', NULL),
(86, 5, 86, 5215885849825405, '2019-12-29 02:20:22', '2665624.00', 'Canceled', '17', '2019-12-27 19:20:22', '2019-12-27 19:20:22', NULL),
(87, 5, 87, 4024007157874115, '2019-12-29 02:20:22', '29804138.08', 'Submitted', '34', '2019-12-27 19:20:22', '2019-12-27 19:20:22', NULL),
(88, 2, 88, 375801262664939, '2019-12-29 02:20:23', '31059544.00', 'Canceled', '15', '2019-12-27 19:20:23', '2019-12-27 19:20:23', NULL),
(89, 5, 89, 4485517426429949, '2019-12-29 02:20:24', '3524840.00', 'Completed', '40', '2019-12-27 19:20:24', '2019-12-27 19:20:24', NULL),
(90, 4, 90, 372789960729653, '2019-12-29 02:20:24', '9062267.28', 'Submitted', '2', '2019-12-27 19:20:24', '2019-12-27 19:20:24', NULL),
(91, 9, 91, 4024007142247476, '2019-12-29 02:20:25', '42519512.90', 'Canceled', '39', '2019-12-27 19:20:25', '2019-12-27 19:20:25', NULL),
(92, 2, 92, 2686553733632793, '2019-12-29 02:20:26', '1327359.94', 'Canceled', '7', '2019-12-27 19:20:26', '2019-12-27 19:20:26', NULL),
(93, 5, 93, 4309257692939362, '2019-12-29 02:20:26', '8601455.00', 'Canceled', '7', '2019-12-27 19:20:26', '2019-12-27 19:20:26', NULL),
(94, 1, 95, 4556684750002132, '2019-12-29 02:20:30', '6577970.28', 'Canceled', '37', '2019-12-27 19:20:30', '2019-12-27 19:20:30', NULL),
(95, 2, 96, 4528776727698300, '2019-12-29 02:20:30', '77319.90', 'Completed', '5', '2019-12-27 19:20:30', '2019-12-27 19:20:30', NULL),
(96, 8, 97, 4126588918646782, '2019-12-29 02:20:31', '29807993.00', 'Completed', '34', '2019-12-27 19:20:31', '2019-12-27 19:20:31', NULL),
(97, 9, 98, 4556628332646502, '2019-12-29 02:20:32', '6220685.10', 'Canceled', '37', '2019-12-27 19:20:32', '2019-12-27 19:20:32', NULL),
(98, 7, 99, 5254689811166810, '2019-12-29 02:20:32', '5681508.10', 'Submitted', '22', '2019-12-27 19:20:32', '2019-12-27 19:20:32', NULL),
(99, 9, 100, 4916724851504605, '2019-12-29 02:20:32', '9838966.00', 'Completed', '31', '2019-12-27 19:20:32', '2019-12-27 19:20:32', NULL),
(100, 3, 101, 346169347203644, '2019-12-29 02:20:33', '1840734.00', 'Canceled', '35', '2019-12-27 19:20:33', '2019-12-27 19:20:33', NULL),
(101, 8, 102, 4716754925827882, '2019-12-29 02:20:34', '4536615.50', 'Canceled', '33', '2019-12-27 19:20:34', '2019-12-27 19:20:34', NULL),
(102, 5, 103, 4485926341586, '2019-12-29 02:20:34', '1851392.00', 'Canceled', '17', '2019-12-27 19:20:34', '2019-12-27 19:20:34', NULL),
(103, 7, 104, 4929430617562821, '2019-12-29 02:20:35', '2342184.62', 'Canceled', '20', '2019-12-27 19:20:35', '2019-12-27 19:20:35', NULL),
(104, 1, 105, 5364696156404422, '2019-12-29 02:20:35', '782267.12', 'Submitted', '5', '2019-12-27 19:20:35', '2019-12-27 19:20:35', NULL),
(105, 3, 106, 4916803505007692, '2019-12-29 02:20:36', '18642902.92', 'Completed', '5', '2019-12-27 19:20:36', '2019-12-27 19:20:36', NULL),
(106, 7, 107, 6011515504946196, '2019-12-29 02:20:36', '0.00', 'Submitted', '6', '2019-12-27 19:20:36', '2019-12-27 19:20:36', NULL),
(107, 3, 108, 5418558496806599, '2019-12-29 02:20:36', '24776468.00', 'Completed', '9', '2019-12-27 19:20:36', '2019-12-27 19:20:36', NULL),
(108, 6, 109, 5537885951006688, '2019-12-29 02:20:37', '5221438.00', 'Completed', '23', '2019-12-27 19:20:37', '2019-12-27 19:20:37', NULL),
(109, 7, 110, 4532393695517431, '2019-12-29 02:20:37', '5830341.00', 'Submitted', '16', '2019-12-27 19:20:37', '2019-12-27 19:20:37', NULL),
(110, 4, 111, 2544966228547296, '2019-12-29 02:20:37', '2179481.88', 'Completed', '17', '2019-12-27 19:20:37', '2019-12-27 19:20:37', NULL),
(111, 10, 112, 5418868979437857, '2019-12-29 02:20:38', '5945485.00', 'Canceled', '13', '2019-12-27 19:20:38', '2019-12-27 19:20:38', NULL),
(112, 9, 113, 5366713293502386, '2019-12-29 02:20:38', '66235114.00', 'Submitted', '36', '2019-12-27 19:20:38', '2019-12-27 19:20:38', NULL),
(113, 6, 114, 2720385876184821, '2019-12-29 02:20:39', '33215736.00', 'Submitted', '32', '2019-12-27 19:20:39', '2019-12-27 19:20:39', NULL),
(114, 8, 115, 4556330540506939, '2019-12-29 02:20:39', '999997.00', 'Canceled', '18', '2019-12-27 19:20:39', '2019-12-27 19:20:39', NULL),
(115, 7, 116, 347516315280930, '2019-12-29 02:20:39', '7831190.00', 'Canceled', '8', '2019-12-27 19:20:39', '2019-12-27 19:20:39', NULL),
(116, 1, 117, 2720310768376905, '2019-12-29 02:20:40', '1086306.00', 'Canceled', '20', '2019-12-27 19:20:40', '2019-12-27 19:20:40', NULL),
(117, 8, 118, 2469895502777546, '2019-12-29 02:20:41', '7209745.80', 'Canceled', '5', '2019-12-27 19:20:41', '2019-12-27 19:20:41', NULL),
(118, 4, 119, 4485036805264, '2019-12-29 02:20:41', '4937507.94', 'Completed', '10', '2019-12-27 19:20:41', '2019-12-27 19:20:41', NULL),
(119, 3, 120, 5134672194187245, '2019-12-29 02:20:42', '5435921.00', 'Completed', '39', '2019-12-27 19:20:42', '2019-12-27 19:20:42', NULL),
(120, 4, 121, 4716598641318597, '2019-12-29 02:20:42', '75590318.00', 'Submitted', '36', '2019-12-27 19:20:42', '2019-12-27 19:20:42', NULL),
(121, 8, 122, 4556002186327322, '2019-12-29 02:20:43', '21696368.00', 'Canceled', '36', '2019-12-27 19:20:43', '2019-12-27 19:20:43', NULL),
(122, 2, 123, 4379073042511, '2019-12-29 02:20:44', '4035745.00', 'Submitted', '6', '2019-12-27 19:20:44', '2019-12-27 19:20:44', NULL),
(123, 8, 124, 4021027488669557, '2019-12-29 02:20:44', '248020.21', 'Completed', '20', '2019-12-27 19:20:44', '2019-12-27 19:20:44', NULL),
(124, 3, 125, 4916201550510613, '2019-12-29 02:20:44', '20684549.00', 'Canceled', '11', '2019-12-27 19:20:44', '2019-12-27 19:20:44', NULL),
(125, 3, 126, 4556601347898350, '2019-12-29 02:20:45', '11756420.00', 'Completed', '9', '2019-12-27 19:20:45', '2019-12-27 19:20:45', NULL),
(126, 6, 127, 6011394887237890, '2019-12-29 02:20:45', '28258407.00', 'Completed', '35', '2019-12-27 19:20:45', '2019-12-27 19:20:45', NULL),
(127, 5, 128, 4532208109833, '2019-12-29 02:20:46', '9777083.00', 'Canceled', '1', '2019-12-27 19:20:46', '2019-12-27 19:20:46', NULL),
(128, 2, 129, 2339856096471332, '2019-12-29 02:20:46', '4191509.00', 'Canceled', '19', '2019-12-27 19:20:46', '2019-12-27 19:20:46', NULL),
(129, 4, 130, 6011747942145491, '2019-12-29 02:20:47', '2901686.00', 'Completed', '18', '2019-12-27 19:20:47', '2019-12-27 19:20:47', NULL),
(130, 5, 131, 4929052512181612, '2019-12-29 02:20:47', '4344340.00', 'Submitted', '3', '2019-12-27 19:20:47', '2019-12-27 19:20:47', NULL),
(131, 9, 132, 4716907743077276, '2019-12-29 02:20:47', '4457200.00', 'Completed', '8', '2019-12-27 19:20:47', '2019-12-27 19:20:47', NULL),
(132, 4, 133, 2679205405017105, '2019-12-29 02:20:47', '2325045.00', 'Completed', '6', '2019-12-27 19:20:47', '2019-12-27 19:20:47', NULL),
(133, 4, 134, 6011315702098696, '2019-12-29 02:20:48', '29605816.00', 'Submitted', '16', '2019-12-27 19:20:48', '2019-12-27 19:20:48', NULL),
(134, 3, 135, 4716960647130964, '2019-12-29 02:20:49', '39299837.00', 'Canceled', '18', '2019-12-27 19:20:49', '2019-12-27 19:20:49', NULL),
(135, 8, 136, 2510836117075230, '2019-12-29 02:20:49', '24869520.00', 'Canceled', '37', '2019-12-27 19:20:49', '2019-12-27 19:20:49', NULL),
(136, 1, 137, 4024007176890480, '2019-12-29 02:20:50', '20363798.50', 'Submitted', '35', '2019-12-27 19:20:50', '2019-12-27 19:20:50', NULL),
(137, 3, 138, 377951354254855, '2019-12-29 02:20:50', '14417430.00', 'Submitted', '9', '2019-12-27 19:20:50', '2019-12-27 19:20:50', NULL),
(138, 8, 139, 2720639339912172, '2019-12-29 02:20:51', '153172.20', 'Completed', '12', '2019-12-27 19:20:51', '2019-12-27 19:20:51', NULL),
(139, 10, 140, 4556032816883, '2019-12-29 02:20:51', '15485407.00', 'Completed', '34', '2019-12-27 19:20:51', '2019-12-27 19:20:51', NULL),
(140, 9, 141, 378676309904705, '2019-12-29 02:20:51', '232831.00', 'Completed', '39', '2019-12-27 19:20:51', '2019-12-27 19:20:51', NULL),
(141, 3, 142, 2221144343131202, '2019-12-29 02:20:52', '5027251.76', 'Canceled', '29', '2019-12-27 19:20:52', '2019-12-27 19:20:52', NULL),
(142, 7, 143, 4539513720089998, '2019-12-29 02:20:52', '12266741.00', 'Submitted', '30', '2019-12-27 19:20:52', '2019-12-27 19:20:52', NULL),
(143, 2, 144, 4539914238914422, '2019-12-29 02:20:53', '9644421.00', 'Completed', '16', '2019-12-27 19:20:53', '2019-12-27 19:20:53', NULL),
(144, 7, 145, 2221492599860184, '2019-12-29 02:20:53', '4920973.20', 'Canceled', '27', '2019-12-27 19:20:53', '2019-12-27 19:20:53', NULL),
(145, 3, 146, 2720427085248862, '2019-12-29 02:20:53', '0.00', 'Submitted', '19', '2019-12-27 19:20:53', '2019-12-27 19:20:53', NULL),
(146, 5, 147, 341671585259340, '2019-12-29 02:20:54', '21045078.00', 'Completed', '28', '2019-12-27 19:20:54', '2019-12-27 19:20:54', NULL),
(147, 6, 148, 4929973670279387, '2019-12-29 02:20:54', '0.00', 'Canceled', '18', '2019-12-27 19:20:54', '2019-12-27 19:20:54', NULL),
(148, 3, 149, 5199969579220290, '2019-12-29 02:20:54', '3813201.00', 'Submitted', '36', '2019-12-27 19:20:54', '2019-12-27 19:20:54', NULL),
(149, 6, 150, 4024007191210748, '2019-12-29 02:20:55', '12501633.00', 'Canceled', '30', '2019-12-27 19:20:55', '2019-12-27 19:20:55', NULL),
(150, 6, 151, 6011586165922214, '2019-12-29 02:20:56', '4922499.00', 'Canceled', '12', '2019-12-27 19:20:56', '2019-12-27 19:20:56', NULL),
(151, 7, 152, 4916198887490032, '2019-12-29 02:20:57', '635510.00', 'Canceled', '29', '2019-12-27 19:20:57', '2019-12-27 19:20:57', NULL),
(152, 5, 153, 4916275347255039, '2019-12-29 02:21:00', '22343237.00', 'Completed', '32', '2019-12-27 19:21:00', '2019-12-27 19:21:00', NULL),
(153, 2, 154, 4485458486831734, '2019-12-29 02:21:00', '12942312.00', 'Completed', '28', '2019-12-27 19:21:00', '2019-12-27 19:21:00', NULL),
(154, 7, 155, 4916761793944481, '2019-12-29 02:21:01', '6608083.10', 'Canceled', '1', '2019-12-27 19:21:01', '2019-12-27 19:21:01', NULL),
(155, 7, 156, 4520723998923056, '2019-12-29 02:21:01', '0.00', 'Completed', '21', '2019-12-27 19:21:01', '2019-12-27 19:21:01', NULL),
(156, 3, 157, 5299813633762609, '2019-12-29 02:21:02', '759811.00', 'Completed', '8', '2019-12-27 19:21:02', '2019-12-27 19:21:02', NULL),
(157, 4, 158, 4556596506196648, '2019-12-29 02:21:02', '5177757.00', 'Submitted', '12', '2019-12-27 19:21:02', '2019-12-27 19:21:02', NULL),
(158, 5, 159, 4929698581627008, '2019-12-29 02:21:03', '34205661.10', 'Submitted', '3', '2019-12-27 19:21:03', '2019-12-27 19:21:03', NULL),
(159, 2, 160, 4929252988707656, '2019-12-29 02:21:03', '4782779.28', 'Canceled', '4', '2019-12-27 19:21:03', '2019-12-27 19:21:03', NULL),
(160, 10, 161, 2405032806838348, '2019-12-29 02:21:04', '1191497.75', 'Completed', '8', '2019-12-27 19:21:04', '2019-12-27 19:21:04', NULL),
(161, 7, 162, 4929412657890270, '2019-12-29 02:21:04', '59397756.70', 'Submitted', '2', '2019-12-27 19:21:04', '2019-12-27 19:21:04', NULL),
(162, 4, 163, 4539032822107574, '2019-12-29 02:21:04', '0.00', 'Submitted', '30', '2019-12-27 19:21:04', '2019-12-27 19:21:04', NULL),
(163, 9, 164, 4024007123181, '2019-12-29 02:21:04', '35605.00', 'Canceled', '36', '2019-12-27 19:21:04', '2019-12-27 19:21:04', NULL),
(164, 5, 165, 4485593619273022, '2019-12-29 02:21:05', '4886550.36', 'Submitted', '15', '2019-12-27 19:21:05', '2019-12-27 19:21:05', NULL),
(165, 10, 166, 4716580953581871, '2019-12-29 02:21:05', '15808742.00', 'Submitted', '31', '2019-12-27 19:21:05', '2019-12-27 19:21:05', NULL),
(166, 7, 167, 4716923604526095, '2019-12-29 02:21:05', '0.00', 'Submitted', '31', '2019-12-27 19:21:05', '2019-12-27 19:21:05', NULL),
(167, 7, 168, 2221284400191507, '2019-12-29 02:21:05', '0.00', 'Submitted', '11', '2019-12-27 19:21:05', '2019-12-27 19:21:05', NULL),
(168, 10, 169, 377404885313063, '2019-12-29 02:21:06', '9318376.00', 'Submitted', '3', '2019-12-27 19:21:06', '2019-12-27 19:21:06', NULL),
(169, 8, 170, 4556067993173979, '2019-12-29 02:21:06', '2594654.00', 'Canceled', '9', '2019-12-27 19:21:06', '2019-12-27 19:21:06', NULL),
(170, 1, 171, 6011406636920533, '2019-12-29 02:21:07', '0.00', 'Completed', '1', '2019-12-27 19:21:07', '2019-12-27 19:21:07', NULL),
(171, 3, 172, 5537146143804237, '2019-12-29 02:21:07', '0.00', 'Canceled', '17', '2019-12-27 19:21:07', '2019-12-27 19:21:07', NULL),
(172, 8, 173, 4345771466232347, '2019-12-29 02:21:07', '35605.00', 'Submitted', '28', '2019-12-27 19:21:07', '2019-12-27 19:21:07', NULL),
(173, 2, 174, 378481714157605, '2019-12-29 02:21:08', '2768711.00', 'Canceled', '34', '2019-12-27 19:21:08', '2019-12-27 19:21:08', NULL),
(174, 1, 175, 378467265114228, '2019-12-29 02:21:08', '985361.64', 'Completed', '8', '2019-12-27 19:21:08', '2019-12-27 19:21:08', NULL),
(175, 4, 176, 5463948492279673, '2019-12-29 02:21:09', '38593214.36', 'Completed', '16', '2019-12-27 19:21:09', '2019-12-27 19:21:09', NULL),
(176, 1, 177, 4556243074241288, '2019-12-29 02:21:09', '5680777.00', 'Canceled', '22', '2019-12-27 19:21:09', '2019-12-27 19:21:09', NULL),
(177, 4, 178, 4539001255952, '2019-12-29 02:21:10', '1015184.30', 'Submitted', '31', '2019-12-27 19:21:10', '2019-12-27 19:21:10', NULL),
(178, 1, 179, 2720857476020134, '2019-12-29 02:21:10', '557816.00', 'Completed', '10', '2019-12-27 19:21:10', '2019-12-27 19:21:10', NULL),
(179, 4, 180, 5108956317270190, '2019-12-29 02:21:10', '1943732.00', 'Completed', '10', '2019-12-27 19:21:10', '2019-12-27 19:21:10', NULL),
(180, 10, 181, 2328682980482745, '2019-12-29 02:21:11', '0.00', 'Completed', '32', '2019-12-27 19:21:11', '2019-12-27 19:21:11', NULL),
(181, 10, 182, 2691401979070109, '2019-12-29 02:21:11', '2839170.00', 'Submitted', '7', '2019-12-27 19:21:11', '2019-12-27 19:21:11', NULL),
(182, 2, 183, 4929252505661691, '2019-12-29 02:21:11', '0.00', 'Submitted', '4', '2019-12-27 19:21:11', '2019-12-27 19:21:11', NULL),
(183, 7, 184, 5232179520633729, '2019-12-29 02:21:11', '481958.00', 'Submitted', '31', '2019-12-27 19:21:11', '2019-12-27 19:21:11', NULL),
(184, 8, 185, 4532888466166078, '2019-12-29 02:21:12', '3750116.00', 'Completed', '36', '2019-12-27 19:21:12', '2019-12-27 19:21:12', NULL),
(185, 3, 186, 4916982534217199, '2019-12-29 02:21:12', '5919822.30', 'Completed', '25', '2019-12-27 19:21:12', '2019-12-27 19:21:12', NULL),
(186, 9, 187, 5564239880028643, '2019-12-29 02:21:12', '942375.00', 'Completed', '27', '2019-12-27 19:21:12', '2019-12-27 19:21:12', NULL),
(187, 7, 188, 4539884562105261, '2019-12-29 02:21:12', '445157.28', 'Submitted', '40', '2019-12-27 19:21:12', '2019-12-27 19:21:12', NULL),
(188, 10, 189, 4532301132195, '2019-12-29 02:21:13', '988008.96', 'Completed', '35', '2019-12-27 19:21:13', '2019-12-27 19:21:13', NULL),
(189, 8, 190, 376603732606675, '2019-12-29 02:21:13', '1690314.00', 'Canceled', '15', '2019-12-27 19:21:13', '2019-12-27 19:21:13', NULL),
(190, 9, 191, 4556733745339180, '2019-12-29 02:21:14', '1812286.97', 'Submitted', '6', '2019-12-27 19:21:14', '2019-12-27 19:21:14', NULL),
(191, 6, 192, 4929942079328145, '2019-12-29 02:21:14', '5081020.76', 'Canceled', '7', '2019-12-27 19:21:14', '2019-12-27 19:21:14', NULL),
(192, 8, 193, 4916024213720654, '2019-12-29 02:21:14', '3185347.88', 'Completed', '40', '2019-12-27 19:21:14', '2019-12-27 19:21:14', NULL),
(193, 10, 194, NULL, '2019-12-29 00:00:00', '1063114.24', 'Submitted', '33', '2019-12-28 07:04:14', '2019-12-28 07:04:14', NULL),
(194, 10, 195, NULL, '2019-12-29 00:00:00', '971866.00', 'Submitted', '33', '2019-12-28 07:26:45', '2019-12-28 07:26:45', NULL),
(195, 10, 196, NULL, '2019-12-29 00:00:00', '10690526.00', 'Submitted', '26', '2019-12-28 07:41:59', '2019-12-28 07:41:59', NULL),
(196, 10, 199, NULL, '2019-12-30 09:04:37', '1518654.00', 'Canceled', '18', '2019-12-28 19:04:50', '2019-12-28 19:06:35', NULL),
(197, 10, 200, NULL, '2019-12-30 09:07:24', '1518654.00', 'Canceled', '26', '2019-12-28 19:07:28', '2019-12-28 19:07:53', NULL),
(198, 10, 201, NULL, '2019-12-30 09:13:36', '759327.00', 'Canceled', '12', '2019-12-28 19:13:47', '2019-12-28 19:14:57', NULL);

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
(1, 'MasterCard', '7', '2019-12-27 19:18:44', '2019-12-27 19:18:44', NULL),
(2, 'MasterCard', '9', '2019-12-27 19:18:44', '2019-12-27 19:18:44', NULL),
(3, 'MasterCard', '3', '2019-12-27 19:18:44', '2019-12-27 19:18:44', NULL),
(4, 'Visa', '4', '2019-12-27 19:18:45', '2019-12-27 19:18:45', NULL),
(5, 'MasterCard', '2', '2019-12-27 19:18:45', '2019-12-27 19:18:45', NULL),
(6, 'Visa', '7', '2019-12-27 19:19:00', '2019-12-27 19:19:00', NULL),
(7, 'Discover Card', '7', '2019-12-27 19:19:00', '2019-12-27 19:19:00', NULL),
(8, 'MasterCard', '34', '2019-12-27 19:19:00', '2019-12-27 19:19:00', NULL),
(9, 'Visa', '27', '2019-12-27 19:19:00', '2019-12-27 19:19:00', NULL),
(10, 'Cash', '31', '2019-12-27 19:19:00', '2019-12-27 21:05:40', NULL);

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
(1, 'Position.*', '14', '2019-12-27 19:18:38', '2019-12-27 19:18:38', NULL),
(2, 'Position.Create', '7', '2019-12-27 19:18:38', '2019-12-27 19:18:38', NULL),
(3, 'Position.Read', '1', '2019-12-27 19:18:38', '2019-12-27 19:18:38', NULL),
(4, 'Position.Update', '15', '2019-12-27 19:18:38', '2019-12-27 19:18:38', NULL),
(5, 'Position.Delete', '4', '2019-12-27 19:18:38', '2019-12-27 19:18:38', NULL),
(6, 'Employee.*', '3', '2019-12-27 19:18:38', '2019-12-27 19:18:38', NULL),
(7, 'Employee.Create', '10', '2019-12-27 19:18:39', '2019-12-27 19:18:39', NULL),
(8, 'Employee.Read', '3', '2019-12-27 19:18:39', '2019-12-27 19:18:39', NULL),
(9, 'Employee.Update', '12', '2019-12-27 19:18:39', '2019-12-27 19:18:39', NULL),
(10, 'Employee.Delete', '5', '2019-12-27 19:18:39', '2019-12-27 19:18:39', NULL),
(11, 'Role.*', '8', '2019-12-27 19:18:39', '2019-12-27 19:18:39', NULL),
(12, 'Role.Create', '19', '2019-12-27 19:18:39', '2019-12-27 19:18:39', NULL),
(13, 'Role.Read', '3', '2019-12-27 19:18:39', '2019-12-27 19:18:39', NULL),
(14, 'Role.Update', '15', '2019-12-27 19:18:39', '2019-12-27 19:18:39', NULL),
(15, 'Role.Delete', '6', '2019-12-27 19:18:39', '2019-12-27 19:18:39', NULL),
(16, 'Permission.*', '12', '2019-12-27 19:18:39', '2019-12-27 19:18:39', NULL),
(17, 'Permission.Create', '10', '2019-12-27 19:18:39', '2019-12-27 19:18:39', NULL),
(18, 'Permission.Read', '14', '2019-12-27 19:18:39', '2019-12-27 19:18:39', NULL),
(19, 'Permission.Update', '5', '2019-12-27 19:18:39', '2019-12-27 19:18:39', NULL),
(20, 'Permission.Delete', '6', '2019-12-27 19:18:39', '2019-12-27 19:18:39', NULL),
(21, 'Customer.*', '18', '2019-12-27 19:18:39', '2019-12-27 19:18:39', NULL),
(22, 'Customer.Create', '11', '2019-12-27 19:18:39', '2019-12-27 19:18:39', NULL),
(23, 'Customer.Read', '7', '2019-12-27 19:18:39', '2019-12-27 19:18:39', NULL),
(24, 'Customer.Update', '17', '2019-12-27 19:18:39', '2019-12-27 19:18:39', NULL),
(25, 'Customer.Delete', '15', '2019-12-27 19:18:39', '2019-12-27 19:18:39', NULL),
(26, 'ItemType.*', '2', '2019-12-27 19:18:39', '2019-12-27 19:18:39', NULL),
(27, 'ItemType.Create', '3', '2019-12-27 19:18:39', '2019-12-27 19:18:39', NULL),
(28, 'ItemType.Read', '8', '2019-12-27 19:18:39', '2019-12-27 19:18:39', NULL),
(29, 'ItemType.Update', '9', '2019-12-27 19:18:40', '2019-12-27 19:18:40', NULL),
(30, 'ItemType.Delete', '2', '2019-12-27 19:18:40', '2019-12-27 19:18:40', NULL),
(31, 'Item.*', '19', '2019-12-27 19:18:40', '2019-12-27 19:18:40', NULL),
(32, 'Item.Create', '12', '2019-12-27 19:18:40', '2019-12-27 19:18:40', NULL),
(33, 'Item.Read', '16', '2019-12-27 19:18:40', '2019-12-27 19:18:40', NULL),
(34, 'Item.Update', '7', '2019-12-27 19:18:40', '2019-12-27 19:18:40', NULL),
(35, 'Item.Delete', '19', '2019-12-27 19:18:40', '2019-12-27 19:18:40', NULL),
(36, 'ItemHistory.*', '6', '2019-12-27 19:18:40', '2019-12-27 19:18:40', NULL),
(37, 'ItemHistory.Create', '15', '2019-12-27 19:18:40', '2019-12-27 19:18:40', NULL),
(38, 'ItemHistory.Read', '1', '2019-12-27 19:18:40', '2019-12-27 19:18:40', NULL),
(39, 'ItemHistory.Update', '19', '2019-12-27 19:18:40', '2019-12-27 19:18:40', NULL),
(40, 'ItemHistory.Delete', '3', '2019-12-27 19:18:40', '2019-12-27 19:18:40', NULL),
(41, 'Order.*', '1', '2019-12-27 19:18:40', '2019-12-27 19:18:40', NULL),
(42, 'Order.Create', '13', '2019-12-27 19:18:40', '2019-12-27 19:18:40', NULL),
(43, 'Order.Read', '3', '2019-12-27 19:18:40', '2019-12-27 19:18:40', NULL),
(44, 'Order.Update', '6', '2019-12-27 19:18:40', '2019-12-27 19:18:40', NULL),
(45, 'Order.Delete', '9', '2019-12-27 19:18:40', '2019-12-27 19:18:40', NULL),
(46, 'PaymentMethod.*', '3', '2019-12-27 19:18:40', '2019-12-27 19:18:40', NULL),
(47, 'PaymentMethod.Create', '10', '2019-12-27 19:18:40', '2019-12-27 19:18:40', NULL),
(48, 'PaymentMethod.Read', '1', '2019-12-27 19:18:40', '2019-12-27 19:18:40', NULL),
(49, 'PaymentMethod.Update', '19', '2019-12-27 19:18:40', '2019-12-27 19:18:40', NULL),
(50, 'PaymentMethod.Delete', '5', '2019-12-27 19:18:40', '2019-12-27 19:18:40', NULL),
(51, 'Payment.*', '4', '2019-12-27 19:18:41', '2019-12-27 19:18:41', NULL),
(52, 'Payment.Create', '18', '2019-12-27 19:18:41', '2019-12-27 19:18:41', NULL),
(53, 'Payment.Read', '12', '2019-12-27 19:18:41', '2019-12-27 19:18:41', NULL),
(54, 'Payment.Update', '3', '2019-12-27 19:18:41', '2019-12-27 19:18:41', NULL),
(55, 'Payment.Delete', '8', '2019-12-27 19:18:41', '2019-12-27 19:18:41', NULL);

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
(1, 'Public Health Social Worker', '9', '2019-12-27 19:18:36', '2019-12-27 19:18:36', NULL),
(2, 'Continuous Mining Machine Operator', '10', '2019-12-27 19:18:36', '2019-12-28 03:17:58', NULL),
(3, 'Inspector', '2', '2019-12-27 19:18:36', '2019-12-27 19:18:36', NULL),
(4, 'Precision Devices Inspector', '4', '2019-12-27 19:18:36', '2019-12-27 19:18:36', NULL),
(5, 'Petroleum Engineer', '8', '2019-12-27 19:18:36', '2019-12-27 19:18:36', NULL),
(6, 'Ophthalmic Laboratory Technician', '3', '2019-12-27 19:18:58', '2019-12-27 19:18:58', NULL),
(7, 'Lay-Out Worker', '7', '2019-12-27 19:18:58', '2019-12-27 19:18:58', NULL),
(8, 'Interviewer', '0', '2019-12-27 19:18:58', '2019-12-27 19:18:58', NULL),
(9, 'Mechanical Drafter', '6', '2019-12-27 19:18:58', '2019-12-27 19:18:58', NULL),
(10, 'Life Scientists', '4', '2019-12-27 19:18:58', '2019-12-27 19:18:58', NULL),
(11, 'Cashier', '2', '2019-12-28 03:18:07', '2019-12-29 03:11:28', NULL);

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
(1, 'autem', '16', '2019-12-27 19:18:38', '2019-12-27 19:18:38', NULL),
(2, 'incidunt', '10', '2019-12-27 19:18:38', '2019-12-27 19:18:38', NULL);

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
(1, 54),
(1, 15),
(2, 26),
(2, 25),
(2, 33),
(2, 19),
(2, 22),
(2, 40),
(2, 5),
(2, 42),
(2, 10),
(2, 52),
(2, 1),
(2, 15),
(2, 11),
(2, 36),
(2, 36),
(2, 18),
(2, 36),
(2, 40),
(2, 14),
(2, 45),
(2, 35),
(2, 7),
(2, 54),
(2, 4),
(2, 2),
(2, 29),
(2, 52),
(2, 28),
(2, 23),
(2, 13),
(2, 17),
(2, 1);

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
('menuPermission', '{\"menu\":[\"Position.\",\"Employee.\",\"Role.\",\"Permission.\",\"Customer.\",\"ItemType.\",\"Item.\",\"ItemHistory.\",\"Order.\",\"PaymentMethod.\",\"Payment.\"],\"permission\":[\"*\",\"Create\",\"Read\",\"Update\",\"Delete\"]}'),
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'aman', 'aman@gmail.com', NULL, '$2y$10$yebXMC1KpJR4ZXQ4SNyQmuu2.RLxN1e1/yFLQic4K/6FGwu5pATL.', NULL, '2019-12-29 00:57:17', '2019-12-29 00:57:17');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `item_histories`
--
ALTER TABLE `item_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `item_types`
--
ALTER TABLE `item_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
