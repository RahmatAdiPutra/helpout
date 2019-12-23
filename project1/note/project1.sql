-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2019 at 04:17 PM
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
  `status` enum('Non Member','Basic','Premium') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Basic',
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
(1, NULL, 'Customer', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 'Non Member', NULL, NULL, '2019-12-22 16:41:17', '2019-12-22 16:41:17', NULL),
(2, '0b57edfc-5211-378e-8d1f-be25dfa0f937', 'Anya Miller DDS', 'male', '2001-07-25', 'Budha', 'Kertzmannville', '67188 Norma Mountain\nHammesview, AL 75086', '1-751-913-8316', '515braun.margret@yahoo.com', NULL, NULL, 'd0b9a67ef52b68de064e2137f73fa80ce8cb39630158ddb9396313e5f1431579', 'Basic', NULL, '11', '2019-12-22 16:41:17', '2019-12-22 16:41:17', NULL),
(3, '44a35f15-6f38-3551-b357-2552c318a95f', 'Prof. Dion Trantow DVM', 'female', '1985-12-05', 'Budha', 'Halvorsonmouth', '423 Avis Island\nEast Nelda, AZ 10597-1840', '346.978.8352 x185', '460701marques63@hotmail.com', NULL, NULL, '1a69339dfbf56678f85e11d1c9a0a99a7d791277ef37af99b6bb356984601a1f', 'Premium', NULL, '17', '2019-12-22 16:41:17', '2019-12-22 16:41:17', NULL),
(4, '3a5e49be-544e-38c0-9306-b2f02e510cbb', 'Augusta Wyman IV', 'female', '2008-01-23', 'Islam', 'North Laurenhaven', '40403 Chesley Park Suite 440\nWest Curtfurt, MT 19611-2061', '695-781-4978', '26407459zhand@hotmail.com', NULL, NULL, 'a9b8990184647491fe87a511e715c83ae186993504143859806ef5c9cc70a077', 'Basic', NULL, '16', '2019-12-22 16:41:17', '2019-12-22 16:41:17', NULL),
(5, 'e643bb5d-90b0-38c4-8696-398ef7924658', 'Eleonore Lang', 'female', '2010-10-26', 'Konghucu', 'Delphineborough', '10021 Catalina Estates Suite 096\nPort Kieranland, KY 64179-7813', '343-661-0833 x380', '24585jefferey42@hotmail.com', NULL, NULL, '64d05a6becad5d01e56a95a3ba51dd11390ec3d013fbc1990510e9f24e30f9b5', 'Premium', NULL, '3', '2019-12-22 16:41:17', '2019-12-22 16:41:17', NULL),
(6, '3792047f-f141-3cb3-8e9b-fc7b55f3ff79', 'Mr. Gardner Larkin', 'female', '2007-11-24', 'Konghucu', 'Adelinehaven', '3452 Sauer Ranch\nArnechester, ME 66167-6693', '(540) 350-8913', '85191hermina.blick@gmail.com', NULL, NULL, '7798e02ad61ea17d423c4929712c11c6cc4c4ac6829f42aa35f087a8a567bf5f', 'Basic', NULL, '1', '2019-12-22 16:41:17', '2019-12-22 16:41:17', NULL),
(7, 'b9d4dce9-1e23-3332-9606-b2d02d1c8dca', 'Prof. Elias Ritchie', 'female', '1970-09-01', 'Kristen', 'Whiteport', '66873 Ronny Streets Suite 555\nNew Teaganville, TX 32412-5115', '924-446-0192', '44alda.collins@hotmail.com', NULL, NULL, 'b15cd6baa7a3765bafb310476426c075850dcf622721c1c99127ecb3bbce806a', 'Premium', NULL, '15', '2019-12-22 16:41:17', '2019-12-22 16:41:17', NULL),
(8, '978d7a12-71d5-319a-976b-00dc4bbb6278', 'Gail Kub', 'female', '1985-06-26', 'Budha', 'Cristophertown', '4616 Wilderman Rest\nWest Heberfort, WV 36442', '(667) 840-1505 x4611', '2jhansen@gmail.com', NULL, NULL, 'bf439a7fd734881e7a5c80923c46c406037bb2b4b173d75acf494422efcd0e24', 'Basic', NULL, '15', '2019-12-22 16:41:18', '2019-12-22 16:41:18', NULL),
(9, '039bade6-57d2-3cc6-8913-e512707ad812', 'Jazlyn Spencer', 'male', '1978-05-28', 'Budha', 'East Keira', '79633 VonRueden Shores\nLake Ansleymouth, MD 61251', '1-643-871-9500 x714', '4690frederick61@yahoo.com', NULL, NULL, 'e362d98fa002e36a211496d4e8dd9ee9eb5897d2b6617baab944b58921efba36', 'Basic', NULL, '6', '2019-12-22 16:41:18', '2019-12-22 16:41:18', NULL),
(10, 'ad703a0a-9326-3f6f-b6a4-91c4f7773d85', 'Wade Lesch', 'female', '2008-06-05', 'Hindu', 'South Oraland', '8707 Rice Park\nNew Earlineside, HI 39670-3477', '+1-915-741-9712', '92816445earnest89@hotmail.com', NULL, NULL, '6f5d62b4cc4ba02edd6d997dda2ff4eaa9ed5851bc43ca0913073b42dddb7065', 'Premium', NULL, '17', '2019-12-22 16:41:18', '2019-12-22 16:41:18', NULL),
(11, '0e6bd612-4b62-3b1b-92c2-be2b341fc5f2', 'Ms. Mozelle Greenfelder PhD', 'female', '1989-08-06', 'Budha', 'West Emoryview', '5390 Belle Mountains Suite 501\nEast Alliefurt, ND 87805-7100', '(894) 898-6913 x378', '7485154fred34@yahoo.com', NULL, NULL, '5dfaa7f8931837ab70f0aca234c5828d6ce3111c459725cfdc4967ac9d1eb959', 'Basic', NULL, '7', '2019-12-22 16:41:18', '2019-12-22 16:41:18', NULL),
(12, 'adffbeb6-5863-37c3-8f56-8cdb0d990abf', 'Jacklyn Corkery', 'female', '2016-12-01', 'Budha', 'Port Fredy', '84362 Justus Cliffs Suite 613\nSouth Demetris, IN 77734', '1-324-512-5573 x762', '93873iva22@hotmail.com', NULL, NULL, '2a58af3118bbb646b3ffc1966b37260067ab2b98149efe8f2f3e836f365633bb', 'Premium', NULL, '17', '2019-12-22 16:41:18', '2019-12-22 16:41:18', NULL),
(13, '162dd11a-d2c8-32f9-b976-ba800ec68570', 'Mr. Arvel Moore', 'female', '2012-04-24', 'Kristen', 'South Janniehaven', '734 Arnoldo Gateway Apt. 994\nMcDermottburgh, CA 06301', '814-768-6610', '1976232mcdermott.sibyl@yahoo.com', NULL, NULL, 'd866114c5c21b2b5a6ed47393b4c334de947f4dc1f508d8c0abf92592f6750da', 'Basic', NULL, '14', '2019-12-22 16:41:18', '2019-12-22 16:41:18', NULL),
(14, 'b054bee9-c161-397f-b98c-9b8fd242f7f6', 'Marilie Bahringer V', 'female', '1995-08-14', 'Budha', 'Lamontborough', '6930 Juanita Terrace Suite 843\nMozellland, MD 21043', '1-419-276-0649 x9773', '23840quinten.hintz@yahoo.com', NULL, NULL, 'f996db36358a71b36be04f45a331d9d194275a47e59941d0239c50f162ae3c63', 'Basic', NULL, '12', '2019-12-22 16:41:18', '2019-12-22 16:41:18', NULL),
(15, '96d3be93-d1ce-3d04-830c-8df256f16772', 'Delta Watsica Jr.', 'female', '1992-11-30', 'Budha', 'Kellyfurt', '37307 Nitzsche Passage Apt. 925\nNorth Gwendolyn, DC 26215', '674-381-8087', '7beatrice.oberbrunner@yahoo.com', NULL, NULL, 'fe8867408831cd83fc4373c4626aa06fc316dd0450c61ccbb8b89859d5967db2', 'Basic', NULL, '14', '2019-12-22 16:41:18', '2019-12-22 16:41:18', NULL),
(16, '3b725b91-727f-3723-9672-9a1671c87d6e', 'Antonietta Frami V', 'female', '2005-04-08', 'Islam', 'Saigetown', '7736 Bins Cape\nDavismouth, OH 40042', '+1 (363) 790-9726', '55372bruen.vivien@gmail.com', NULL, NULL, 'f3aebe7f8ed9400db573c907b7424f9e42ae87a56e9b7b4204f7cf28ef2c851e', 'Premium', NULL, '1', '2019-12-22 16:41:18', '2019-12-22 16:41:18', NULL),
(17, 'f1e75563-5c19-3352-b01a-5201442c5283', 'June Kertzmann', 'male', '2005-07-15', 'Kristen', 'Lake Howard', '570 Johann Mills\nLake Shakira, CT 88809', '529-413-2814', '626christy.fahey@gmail.com', NULL, NULL, 'fad7e7d1603c1604216d3e1aabdb19d406d87c72a943027eb8259c8a3deb972e', 'Basic', NULL, '15', '2019-12-22 16:41:18', '2019-12-22 16:41:18', NULL),
(18, '481e92af-8b00-332c-8c27-2e7fdf5d9195', 'Doris Sawayn II', 'female', '1971-11-10', 'Budha', 'East Elfrieda', '17232 Jerrell Crescent Suite 903\nChadberg, ME 17318-5082', '(806) 389-9673 x655', '49245nannie.oreilly@gmail.com', NULL, NULL, '3e84cf4dd92f442ab255a520881efc143c21f98c04d1ec80462d653eb7518600', 'Premium', NULL, '17', '2019-12-22 16:41:18', '2019-12-22 16:41:18', NULL),
(19, 'a258034a-3518-3497-9090-9a90112c6180', 'Prof. Greg Quitzon DDS', 'male', '1981-04-14', 'Hindu', 'Ryleeberg', '48395 Wilderman Viaduct Apt. 359\nZoeyfort, WY 32629-7570', '(474) 862-0079 x7137', '902sdurgan@hotmail.com', NULL, NULL, '2190c3de4dddf305a52ebf5f5e4d97140cfa8210d50e7d792a8e59f604532fd5', 'Premium', NULL, '18', '2019-12-22 16:41:18', '2019-12-22 16:41:18', NULL),
(20, '114c1c2a-d46e-334b-8b19-1c82f062577d', 'Tatyana Tromp', 'male', '2010-11-19', 'Konghucu', 'Arnobury', '739 Boyle Mews Apt. 968\nSouth Esteban, VA 75074', '545-738-4939 x83869', '158623merlin.gorczany@hotmail.com', NULL, NULL, 'acbc4efdfabbfec2c54d38eac8cda3ed4cbc3760c89463e7ce21dd9dfb87f3fb', 'Premium', NULL, '8', '2019-12-22 16:41:18', '2019-12-22 16:41:18', NULL),
(21, 'fa1cd41c-f691-3bd3-bd16-2c23d8e16512', 'Cara Bosco', 'male', '1999-07-20', 'Kristen', 'Rempelshire', '483 Turcotte Keys\nEast Kiarraville, WA 22198', '(893) 891-5516', '780darby51@gmail.com', NULL, NULL, '795a2e480311b9a840474a80a8a849cd1e8282eaa142eb43f60f11862629a6dd', 'Basic', NULL, '7', '2019-12-22 16:41:18', '2019-12-22 16:41:18', NULL),
(22, '2bbb6065-49ac-318f-8705-8e2a92f5bbfa', 'Kattie Herzog', 'female', '1971-07-28', 'Islam', 'North Madisynport', '906 Evan Square\nWest Gracie, ID 88855-5918', '740.216.8328', '121hayden47@gmail.com', NULL, NULL, '3d9104ec18de4967a5531538b524cc66d73bd9d28cdf33770b59b227debf51a2', 'Premium', NULL, '14', '2019-12-22 16:41:18', '2019-12-22 16:41:18', NULL),
(23, 'dd674282-6c26-30f8-812d-6c535522cccc', 'Melisa Cole', 'male', '2004-10-29', 'Islam', 'New Carley', '74226 Flossie Lake Apt. 783\nNew Octavia, NJ 86863-2280', '(336) 724-4252', '2274fupton@hotmail.com', NULL, NULL, 'b4b501917877774a4fade93d12ac2eb946b5eba8f1b8aa71c047aee5a9489e47', 'Premium', NULL, '13', '2019-12-22 16:41:18', '2019-12-22 16:41:18', NULL),
(24, 'd0219ef8-af86-38ca-bfbd-1c55b5334d16', 'Diamond Schinner', 'male', '2017-12-02', 'Konghucu', 'New Rustyport', '91007 Carmine Viaduct Apt. 248\nThoraton, WA 51240', '(845) 392-1632 x05240', '600armstrong.imogene@gmail.com', NULL, NULL, 'd8b94d4e7dc3e151d8cc69780fbfbb65397e1ab8f9089ff68c3ef1fc04638628', 'Basic', NULL, '5', '2019-12-22 16:41:18', '2019-12-22 16:41:18', NULL),
(25, 'e7b432ad-d96c-3e14-a872-cc299f9eb67a', 'Reyna Tremblay', 'male', '1977-11-12', 'Hindu', 'West Mac', '791 Queen Junctions\nSouth Braulioport, NM 66321', '736.924.8585 x551', '4kenyatta94@gmail.com', NULL, NULL, 'd66f4e6e940a65c1344512f7028a1343f48560526c798f52ffd0d04bb5f59438', 'Basic', NULL, '4', '2019-12-22 16:41:18', '2019-12-22 16:41:18', NULL),
(26, 'd2021f2c-17a0-382f-aa55-8c7a6ffbf521', 'Chesley Denesik', 'male', '2013-02-22', 'Konghucu', 'Port Kayleighport', '914 Schaden Mountain Apt. 271\nNew Alexandremouth, NH 46916-9731', '1-861-917-5804', '17umcglynn@gmail.com', NULL, NULL, '842fc2dfd2a607087770b0f6fa9e73dca075fc0f1ec9e0c003daf9a131715d2b', 'Premium', NULL, '18', '2019-12-22 16:41:18', '2019-12-22 16:41:18', NULL),
(27, 'd69ad567-f478-3e3b-9902-5d77ed5fa06a', 'Prof. Regan Hammes MD', 'female', '1982-08-18', 'Hindu', 'Blaisestad', '881 Gunner Glens\nWest Kay, MO 45919-2012', '557.714.4175 x997', '40940royal48@hotmail.com', NULL, NULL, 'f201925f595edcf17824f0a16ca9788e947da829abc2676a341fe972fa0dd4c3', 'Basic', NULL, '4', '2019-12-22 16:41:18', '2019-12-22 16:41:18', NULL),
(28, 'db7e0d39-aa12-389d-8788-2dc6f5151d04', 'Mr. Watson Weissnat V', 'male', '1975-06-24', 'Budha', 'West Frieda', '6528 Bahringer Common\nSmithamland, NE 14157', '(636) 545-0277', '76srutherford@yahoo.com', NULL, NULL, 'f4b201c2a5c8d0876d7813a88ab4b12c7d855037ba272208f9e11829188938f4', 'Premium', NULL, '1', '2019-12-22 16:41:18', '2019-12-22 16:41:18', NULL),
(29, 'ece9400d-fbb2-3d93-9454-186de7f8ddfe', 'Philip Deckow', 'male', '1997-11-17', 'Hindu', 'Aubreeport', '4583 Konopelski Walks\nPaucekberg, KY 48001-8265', '403-343-6334 x70182', '314adrain.parisian@yahoo.com', NULL, NULL, '8a70e613374f7b122e990da58159488895b9ac43e5da4742df098d65aef7d86c', 'Premium', NULL, '16', '2019-12-22 16:41:18', '2019-12-22 16:41:18', NULL),
(30, 'ac849eff-2beb-33f9-8557-384e9212950e', 'Daisy Herzog', 'male', '1995-01-13', 'Kristen', 'Deborahtown', '98142 Cordie Summit\nPort Ken, MS 91432-2138', '(359) 202-7959', '19057109iratke@yahoo.com', NULL, NULL, 'bb152f74879678447c0c05a2568f92826ced58160c9920145efd622b5e4c297c', 'Premium', NULL, '19', '2019-12-22 16:41:18', '2019-12-22 16:41:18', NULL),
(31, 'fcffff93-d6ff-3e23-b688-45a9e4e23777', 'Ernestine Fadel', 'female', '2005-01-22', 'Islam', 'Lake Milton', '1334 Crist Flat Suite 891\nStewartfort, NM 77752', '804.577.3624', '2wyatt.ullrich@gmail.com', NULL, NULL, '2c65da3a557d8f8477571880c1d895ace44674606135576e0ba5378c71bef98f', 'Basic', NULL, '20', '2019-12-22 16:41:18', '2019-12-22 16:41:18', NULL),
(32, '3a009950-7cc4-3819-9f7f-efd8e54b5d48', 'Tre Ritchie', 'female', '1994-03-24', 'Hindu', 'Fabianville', '665 Olson Well Apt. 440\nRutherfordside, MN 21660', '+1.345.568.9906', '2575ortiz.elisha@gmail.com', NULL, NULL, '43791deaa1d92ee052bd6e25e0584376cbc02b08164ae3ed6cf8a8dc065047e9', 'Premium', NULL, '4', '2019-12-22 16:41:18', '2019-12-22 16:41:18', NULL),
(33, 'c0547eed-7a05-3f64-a96a-67c71e6a101b', 'Wilfredo Crooks', 'female', '1982-10-08', 'Kristen', 'South Chaim', '76830 Schoen Inlet\nTrantowshire, CO 42636', '+1 (340) 866-9997', '478santos.oreilly@yahoo.com', NULL, NULL, 'cce511868bb3ec8bac4bc682e14fdf588560cea9e8119a0e17e3af6cdf9f97e1', 'Premium', NULL, '8', '2019-12-22 16:41:18', '2019-12-22 16:41:18', NULL),
(34, '2af45060-5e3d-3e07-a2a8-afa7f48f32dd', 'Addison Padberg', 'female', '2017-09-15', 'Budha', 'New Murielville', '7636 Maegan Landing Suite 682\nHickleburgh, NC 45220', '360-499-4145', '715citlalli.conn@hotmail.com', NULL, NULL, '911eb9f121062e2c1ba2ee808c283d4a172d2ef5e2d1fa5cf404f275075b69fc', 'Basic', NULL, '11', '2019-12-22 16:41:18', '2019-12-22 16:41:18', NULL),
(35, '2adf914f-bddf-3ac7-8a67-1d7dbbd721b3', 'Porter Murray IV', 'male', '2000-10-24', 'Budha', 'South Amaya', '966 Antonina Vista Suite 181\nEmmerichview, FL 34195-3766', '1-447-794-5196', '9866937emmerich.roger@hotmail.com', NULL, NULL, '68a52c0aa42cf5b3809ced290e7e62f5dc952f214fee8f0d89f9231afc04ef6d', 'Basic', NULL, '16', '2019-12-22 16:41:18', '2019-12-22 16:41:18', NULL),
(36, 'af439e10-fe10-361d-a9b3-2baac02437c3', 'Ottilie Kirlin V', 'male', '2016-07-17', 'Hindu', 'Schultzland', '56270 Irma Creek\nMonahanfurt, NV 61895', '1-851-242-9173 x2690', '3725leone65@yahoo.com', NULL, NULL, '6b9f60979ea11b32af6e75d3ed92885e9b6495949c6cb8dfac4ab572f3478db5', 'Premium', NULL, '19', '2019-12-22 16:41:18', '2019-12-22 16:41:18', NULL),
(37, 'ecdf23dd-3ad7-392f-8ef9-503b6d2dc378', 'Elsa Prohaska', 'female', '1992-01-17', 'Kristen', 'Bayleeberg', '85029 Beer Ferry\nEast Ressie, NC 10101-0279', '+12507872959', '639272392chester.rippin@gmail.com', NULL, NULL, '785dac6e069da50f5a0cffbe9600634edf3713c707fbddc7c700d59c16170ecd', 'Premium', NULL, '12', '2019-12-22 16:41:19', '2019-12-22 16:41:19', NULL),
(38, '017f01b0-9fe3-3186-9033-b7ef63dc0002', 'Teagan Dietrich', 'male', '2011-02-01', 'Islam', 'New Anabelleview', '57280 Ashly Causeway\nPort Bernardofurt, CA 96250-0857', '213-412-8561 x667', '1lcollier@hotmail.com', NULL, NULL, '4881029ed8e5a07655be867afd273f24c96706351da897f767e914d484cfdef1', 'Basic', NULL, '20', '2019-12-22 16:41:19', '2019-12-22 16:41:19', NULL),
(39, '391cff4a-ab72-3625-bac6-1554e510515f', 'German Brekke', 'female', '2019-03-06', 'Budha', 'McDermottmouth', '72862 Alysson Cliff\nDanielfort, IL 19271', '+1.263.632.6885', '8tstamm@hotmail.com', NULL, NULL, '7d88ce032103746bc338e81733eba1c736b7c9979c50839581fbd4141fee7e6d', 'Basic', NULL, '1', '2019-12-22 16:41:19', '2019-12-22 16:41:19', NULL),
(40, '6a7cd883-6dd1-34ec-bd4a-3b28bfdac127', 'Ezekiel Mohr', 'male', '2015-07-18', 'Hindu', 'Taylorport', '7257 Nasir Drive Apt. 980\nNew Keshaunberg, OH 88704', '276.276.7431 x74383', '23163ykoss@gmail.com', NULL, NULL, '3150dd99bc281dd3ba1b64c386e94ee73d8845cb3bee78d181664f685af7ece2', 'Premium', NULL, '17', '2019-12-22 16:41:19', '2019-12-22 16:41:19', NULL),
(41, '67ad983b-2c9b-370f-8180-87c8e314063b', 'Dr. Ransom D\'Amore DDS', 'female', '1996-12-18', 'Hindu', 'New Jake', '71105 Baumbach Vista\nGradyview, WV 33152', '454.487.9285 x567', '983563368lavada65@yahoo.com', NULL, NULL, '7ada5c63047641fca5f435abc497a0910d9ee34f80d06adf45b86ef0cccad78b', 'Basic', NULL, '11', '2019-12-22 16:41:19', '2019-12-22 16:41:19', NULL),
(42, '8d945297-80f8-3782-8336-5bd1e32f20b1', 'Derek Romaguera', 'male', '1978-05-31', 'Kristen', 'North Corinemouth', '95952 Shad Avenue Apt. 643\nNorth Briana, NM 30539', '(445) 338-1251 x426', '2259bernhard.orland@hotmail.com', NULL, NULL, 'aa7ae178d9b504417eba6286a93196fb6beff6555bf985c5b7cf1663fc19cd58', 'Premium', NULL, '15', '2019-12-22 16:41:19', '2019-12-22 16:41:19', NULL),
(43, '2182ccb4-d87f-3151-9360-d1f768d9bc2b', 'Beth Schmidt', 'female', '1978-08-02', 'Konghucu', 'Rueckertown', '83142 Nicholas Garden\nPort Leland, OK 31931', '381.680.4850', '56965322bernadette99@yahoo.com', NULL, NULL, 'eebe23c0272e77cd16909207a12970911b1aeafbb4eb9caff7099019c0fa610c', 'Basic', NULL, '15', '2019-12-22 16:41:19', '2019-12-22 16:41:19', NULL),
(44, '68054bb1-a165-3a62-ba24-964d4141f624', 'Catalina Harber', 'male', '2012-04-15', 'Islam', 'Karifurt', '7344 Domenico Prairie Suite 110\nQueenieburgh, MI 79090-1301', '357.744.1249 x4187', '67abernathy.neoma@hotmail.com', NULL, NULL, '0f7a0920e6ecf21ebdcf10a5147a49b8aeca3f3d5ae1da5d5a59fc26054c49b6', 'Premium', NULL, '14', '2019-12-22 16:41:19', '2019-12-22 16:41:19', NULL),
(45, '2c078a1c-3c3b-3a84-a14b-ce379d9ead2d', 'Rebecca Von', 'male', '2009-04-11', 'Islam', 'South Ashtonfurt', '32948 Bradley Street\nJavonteberg, NY 57621-0560', '(623) 631-3908 x36907', '52judd.waters@hotmail.com', NULL, NULL, 'd2d62cbd1f1e93acf918294b206d96bdf5ed599212df511b9bf74beedc0fd8e4', 'Basic', NULL, '14', '2019-12-22 16:41:19', '2019-12-22 16:41:19', NULL),
(46, 'b6aeccb4-4898-3d98-8acd-eece6f196b92', 'Cale Nitzsche', 'male', '1995-01-21', 'Islam', 'Abigayleborough', '55829 Audie Row\nWest Odellshire, AR 76777-2887', '(452) 818-3588 x342', '3827christa.kulas@gmail.com', NULL, NULL, '7cb480523394f792ca1666e45f60d601e0069ee02497f28a9da938e79e3e2917', 'Premium', NULL, '5', '2019-12-22 16:41:19', '2019-12-22 16:41:19', NULL),
(47, 'f6a0cfe4-3dc3-3fa8-919a-c63c3e92bf0e', 'Terence Hauck', 'female', '2012-07-27', 'Kristen', 'Strosintown', '377 Spencer Burg\nScarlettfurt, HI 07131', '1-276-451-3150 x038', '31246roma21@gmail.com', NULL, NULL, '4214f3c7b43e448e6265376f5952f93e9e364b4e09ba1efa7c437c54e6f1016d', 'Premium', NULL, '3', '2019-12-22 16:41:19', '2019-12-22 16:41:19', NULL),
(48, '7c314dd4-3ea2-3cea-be4b-708a7b1ec454', 'Griffin Gorczany', 'male', '1995-01-31', 'Islam', 'Lake Kari', '96708 Sam Trail\nPort Barneyfurt, WA 53219', '708.557.8858 x7679', '57831068abigail74@gmail.com', NULL, NULL, 'df76a52cc5db1ce155259d84c8eec92460c3d02973b012f922727654b7b94c82', 'Premium', NULL, '11', '2019-12-22 16:41:19', '2019-12-22 16:41:19', NULL),
(49, '15998e41-6da2-3c69-82e8-3c06ab06c527', 'Ibrahim Jakubowski', 'female', '1983-12-05', 'Budha', 'New Emiliomouth', '839 Craig Knolls Suite 816\nWest Blanca, PA 53718', '498-665-5233 x94375', '85113939kub.freddy@yahoo.com', NULL, NULL, '105583e6d39c932010509bd22e292093902c5efe1c1b29ddf3393ecb0245c68c', 'Premium', NULL, '16', '2019-12-22 16:41:19', '2019-12-22 16:41:19', NULL),
(50, 'addac7a4-9c99-3096-8680-666cdec6da24', 'Ms. Kelli Beahan II', 'female', '1978-06-10', 'Konghucu', 'West Rachael', '4896 Gutkowski Key Suite 984\nKennaton, DE 39826-1991', '308.564.5988 x143', '69380348lonnie.wuckert@hotmail.com', NULL, NULL, 'ab0b4393b49aeabce95ef8c3dcd4a5b5703913cad763991390c9c5346d6d6455', 'Premium', NULL, '15', '2019-12-22 16:41:19', '2019-12-22 16:41:19', NULL),
(51, 'a2944b99-df36-3bc9-955f-9b0800a4f700', 'Lorenzo Bernhard IV', 'female', '2004-10-10', 'Hindu', 'West Wilma', '5699 Johnston Road Apt. 986\nEast Thaddeushaven, MA 02735-5465', '846-878-6583 x4390', '43266162lucius.jacobson@yahoo.com', NULL, NULL, '53934a3a5738b24432845ce2598202a7680a505c73ed1e7529d37d4282a440ec', 'Basic', NULL, '11', '2019-12-22 16:41:19', '2019-12-22 16:41:19', NULL),
(52, 'a515875c-621d-36ed-bf35-925fb0d24337', 'Dr. Marcelino Barrows DVM', 'female', '1992-11-09', 'Kristen', 'Port Tierra', '6472 Torp Mission\nLake Stefan, AK 01935', '630-371-6490', '4213mya.rutherford@gmail.com', NULL, NULL, 'c1ea4193b1bd8f1b468ab490f70d1401851e32b3e949018ca7d9749704fefafc', 'Basic', NULL, '5', '2019-12-22 16:41:19', '2019-12-22 16:41:19', NULL),
(53, '08b73b68-da0b-3494-9ce1-762b044d3437', 'Enrique Smitham', 'male', '2010-12-15', 'Budha', 'Lizaville', '50185 Minerva Ford\nWest Mariana, AR 76138-0863', '1-803-283-4906 x7529', '579674941sienna.barrows@gmail.com', NULL, NULL, '08edc1294d85df803b4b1dc1d083c97e66f80b70e85b78277693020e07e09311', 'Premium', NULL, '11', '2019-12-22 16:41:19', '2019-12-22 16:41:19', NULL),
(54, '5defad5a-f207-3c21-938d-75998250f2c2', 'Trudie Beatty', 'male', '1985-07-13', 'Konghucu', 'Dickiton', '1704 Emile Ferry\nNew Paigeshire, MD 63473-1059', '+1-436-338-2307', '241sgraham@yahoo.com', NULL, NULL, '04b1d8cc368f88d6c0b6d0940164c14a7271054599301ff9bc35afe8f57005a8', 'Premium', NULL, '4', '2019-12-22 16:41:19', '2019-12-22 16:41:19', NULL),
(55, '333e7abd-108c-3c54-96a7-20527647cb03', 'Jovan Berge III', 'male', '1992-05-17', 'Kristen', 'North Kariport', '2237 Claudie Common Apt. 948\nWest Wilberhaven, GA 80168-0346', '1-776-370-4553 x2461', '378959genesis.nitzsche@hotmail.com', NULL, NULL, '25c7b261d6debce446da53bccc709a38a4d6c3096bb107f18ae11218543c32bc', 'Basic', NULL, '16', '2019-12-22 16:41:20', '2019-12-22 16:41:20', NULL),
(56, '9e6f4e99-e328-3456-b905-8ed5f1908666', 'Addie Lynch IV', 'male', '2010-12-31', 'Budha', 'North Stoneview', '7131 Shirley Vista\nLysanneton, NC 15721', '456.451.9897 x1637', '1678tatyana.schuster@yahoo.com', NULL, NULL, '2f47bb9df19b5b23ab750c3dc9b229165fbad88b49fdcf4ac4a03d9be591a38a', 'Premium', NULL, '8', '2019-12-22 16:41:20', '2019-12-22 16:41:20', NULL),
(57, '0d7ca0ee-e777-35b0-b687-1435b0234956', 'Dr. Gayle Cummerata IV', 'female', '2011-02-19', 'Konghucu', 'Bartolettiside', '2587 Ernie Turnpike Apt. 088\nSouth Claudine, MD 41893', '1-260-287-5911', '7hoyt.baumbach@gmail.com', NULL, NULL, '19657203c1ca94d3f5fd0f4f24305801f60dd779c3756ef332926e1290aae3fd', 'Premium', NULL, '7', '2019-12-22 16:41:20', '2019-12-22 16:41:20', NULL),
(58, '08456a4e-ad1a-31b4-9cb0-467cdd9195c9', 'Jarrell Rosenbaum', 'male', '2004-12-12', 'Kristen', 'Kassulkechester', '983 Schaefer Greens Suite 532\nLakinmouth, AZ 06289', '1-714-591-6350 x33941', '5880504jonathan66@hotmail.com', NULL, NULL, '154add221f0522e6c94d0e8e46e5b274662ac622b43196e3d05358beed6ec2de', 'Premium', NULL, '12', '2019-12-22 16:41:20', '2019-12-22 16:41:20', NULL),
(59, 'e866d5de-c7d5-35d6-96bd-182cbd75a8eb', 'Prof. Tomas Romaguera', 'male', '2004-08-23', 'Konghucu', 'Larsonstad', '5409 Brice Estates Suite 849\nMustafaville, IA 69760-0551', '1-431-499-9715', '674zdaugherty@hotmail.com', NULL, NULL, '5e5c80d83b3a7e737be25959636d1c33d304bfd3105aacb1c3d3d17417f72ad0', 'Premium', NULL, '11', '2019-12-22 16:41:20', '2019-12-22 16:41:20', NULL),
(60, '27c17adc-620c-3c04-945e-26da18287d7c', 'Joe Renner', 'male', '2007-03-20', 'Islam', 'East Karson', '9743 Morissette Heights Suite 278\nHansenville, KY 70116-8020', '1-706-232-2932', '39126oma.gibson@hotmail.com', NULL, NULL, 'a1e0795478705357924f8da4b21064ba0ad214444d543d311bbf2b7a5d980915', 'Basic', NULL, '14', '2019-12-22 16:41:20', '2019-12-22 16:41:20', NULL),
(61, '26e4c1be-c1bf-36d3-a1cd-83c8b8832abf', 'Lauryn Bergstrom', 'female', '1988-02-26', 'Islam', 'Torphytown', '438 Adam Islands Apt. 960\nJedediahville, SD 26192', '206.742.3224 x3525', '2390dana96@hotmail.com', NULL, NULL, '3b5e81d7d174d73f9a667d289a3b86a6ba04a2d4c81f8f535693ddb2f002fbde', 'Basic', NULL, '1', '2019-12-22 16:41:20', '2019-12-22 16:41:20', NULL),
(62, '42fea5f7-6125-3cab-a536-81ce40245589', 'Harley Hodkiewicz', 'male', '1974-01-13', 'Islam', 'Bradleyside', '163 Walton Spur\nNorth Reynoldfurt, VT 61220', '424-479-3158', '90956681kschumm@yahoo.com', NULL, NULL, 'a7a684fb2810095d4fbdec6ab7f040c3cec8de10c2a2ddc279c7e0e0c5f5a529', 'Premium', NULL, '15', '2019-12-22 16:41:20', '2019-12-22 16:41:20', NULL),
(63, '0a86a523-7bcb-3298-969f-59259cf659c7', 'Dr. Mikayla Herzog DDS', 'male', '2007-04-26', 'Budha', 'Lake Fredy', '324 Blair Center Apt. 508\nKeyonville, WA 92798-3085', '604.372.8517 x6994', '884erin09@yahoo.com', NULL, NULL, 'fa8261c42790e531b5d51cbde2ef3c2ceaa61adbf3099bb7c434f148d3bfd48d', 'Premium', NULL, '11', '2019-12-22 16:41:20', '2019-12-22 16:41:20', NULL),
(64, '98ac33b0-f1a2-3108-84da-e5cb882ec4c9', 'Rosalind Ritchie V', 'female', '1995-12-06', 'Budha', 'South Ardithtown', '4005 Albin Pines Suite 504\nKayleymouth, NE 75200', '1-375-954-3609 x871', '912shana.lakin@yahoo.com', NULL, NULL, 'd550f0a401d186b3040806ad04bdbbacfda9546fa10a88b530502b5e80978da2', 'Basic', NULL, '16', '2019-12-22 16:41:20', '2019-12-22 16:41:20', NULL),
(65, 'b0b10d14-3be1-31e6-820e-eb3744d420e5', 'Tyreek Miller MD', 'male', '1983-11-13', 'Islam', 'Jakubowskiborough', '2213 Hunter Circles\nAlaynaview, IL 40777', '+1-807-430-3950', '621monahan.elta@hotmail.com', NULL, NULL, '9cd6c79ddcbdf7c643fce447f3d5e7518ee9d9e484cbcf012c657c14e7b87bcc', 'Premium', NULL, '7', '2019-12-22 16:41:20', '2019-12-22 16:41:20', NULL),
(66, 'eac7b189-ade0-3066-8514-0dd79364656e', 'Khalid Prohaska', 'female', '1997-11-23', 'Islam', 'Satterfieldstad', '611 Paucek Hill\nDamianbury, AL 71116', '1-601-757-2279', '734999269lzulauf@gmail.com', NULL, NULL, '6a7076db36efbb83b851317b3097a113c2978c4c310dff4fd16e8765376f561f', 'Basic', NULL, '7', '2019-12-22 16:41:20', '2019-12-22 16:41:20', NULL),
(67, 'f4805d7f-b502-30c7-8b3e-722960d066f3', 'Timothy Wiegand', 'female', '2005-08-10', 'Kristen', 'Kuhicstad', '998 Alayna Club\nJuniormouth, MT 72808', '1-484-253-2979 x7011', '681harvey.reinhold@yahoo.com', NULL, NULL, 'a8d22cf793086c4587346a6d692f4b6533ba414e58c6879acb80b8b39429bfa5', 'Basic', NULL, '17', '2019-12-22 16:41:20', '2019-12-22 16:41:20', NULL),
(68, 'bad163fe-eba9-3091-9183-0e0f18e4bd0d', 'Elyssa Nienow II', 'female', '1977-12-12', 'Hindu', 'Bogisichview', '67221 Rusty Gateway Suite 137\nPort Domenicaland, MA 53548-5648', '585.923.7583 x9585', '56abbey25@hotmail.com', NULL, NULL, '40bdcb122e56e19b1e93ba1bffe3e1682e5eb4043282d352c9ff1c477075a10a', 'Basic', NULL, '4', '2019-12-22 16:41:20', '2019-12-22 16:41:20', NULL),
(69, '434c0e34-c970-39de-87bb-8f9b83d90c1e', 'Dr. Ricardo Abshire I', 'male', '2015-05-23', 'Konghucu', 'Cliftonbury', '46230 Sibyl Spring Suite 921\nWendellhaven, NJ 63515-2881', '258.934.8023 x87587', '916616359athena.fisher@yahoo.com', NULL, NULL, '9db18e9cb3ae75a4afe7f99ff716b929ef6b2d3581a6448b232765ff9b7b2e59', 'Basic', NULL, '2', '2019-12-22 16:41:20', '2019-12-22 16:41:20', NULL),
(70, '0eaae351-8038-3926-b2ad-7204b8e8aa54', 'Doyle Jacobi', 'male', '2016-08-05', 'Budha', 'Adrielport', '484 Lueilwitz Land\nHalvorsonchester, KS 08978', '+1-716-274-9147', '8883ferry.belle@yahoo.com', NULL, NULL, 'a08042d0bdd0560b06e76da8b1bfea74d8837495246da27bb61847bc5e34fb31', 'Basic', NULL, '12', '2019-12-22 16:41:20', '2019-12-22 16:41:20', NULL),
(71, 'a62ab32e-5322-37fb-8677-ec4c6a631d90', 'Prof. Sigurd Batz', 'male', '1976-11-14', 'Konghucu', 'Jamisonside', '706 Otha Point Apt. 375\nNew Dustin, VA 54099-2077', '+1.689.730.7234', '762durgan.teresa@yahoo.com', NULL, NULL, '65b9a0af4599774cefbc160371187c1b8e03cdd92660836b520c317d47b50389', 'Premium', NULL, '8', '2019-12-22 16:41:20', '2019-12-22 16:41:20', NULL),
(72, '9d13ecb2-5918-36cc-b75c-f51500edb6fa', 'Mrs. Ruby Leuschke III', 'female', '1973-06-25', 'Islam', 'Montymouth', '8402 Frami Junction Apt. 828\nCarterhaven, UT 13885', '1-404-821-5856 x6685', '445frieda.bauch@yahoo.com', NULL, NULL, 'b684c9023de7adda9642546208874f3e3fc4f5360c5981e5ebd6ef6d202f4e19', 'Basic', NULL, '12', '2019-12-22 16:41:20', '2019-12-22 16:41:20', NULL),
(73, '6e95f92e-5b50-3ce9-afd8-2c5a5bd317bf', 'Dessie Corkery', 'male', '1991-10-27', 'Islam', 'South Luciano', '87303 Ivory Mountains\nPort Abbeyville, ID 60708-7491', '+1 (551) 949-2076', '4675920clovis05@hotmail.com', NULL, NULL, 'f2c9e69750b17187d85a5ed9647fc012b597999154c1c417e9b605bd39ac98d9', 'Premium', NULL, '11', '2019-12-22 16:41:20', '2019-12-22 16:41:20', NULL),
(74, '44440814-4dcf-3ca6-beb2-47fd4b1fbfd6', 'Mr. Jarod Greenholt MD', 'female', '1991-09-18', 'Islam', 'Carliport', '15216 Dare Shores\nYundtside, CA 60283', '663.267.2494', '8926dorcas16@gmail.com', NULL, NULL, 'a2c633e50d4a2da6247a300a724883c1f96d83f699e08d9d5198b1c6562da4ea', 'Premium', NULL, '18', '2019-12-22 16:41:20', '2019-12-22 16:41:20', NULL),
(75, '3d0f1cfa-7cb4-398a-b295-7c5ca45335d2', 'Casey Witting', 'female', '2008-10-02', 'Budha', 'West Loyalmouth', '65330 Nolan Plaza\nNicholeton, CA 63640-3710', '632-789-6146', '7nathaniel.fritsch@hotmail.com', NULL, NULL, 'a911d42e4c322a6ec99869f3dd55a456a013b866f1cbab862b67eb3f50740ad5', 'Premium', NULL, '8', '2019-12-22 16:41:20', '2019-12-22 16:41:20', NULL),
(76, 'e6277784-c886-30b3-9c5d-4e4544f649b2', 'Chaim Hackett', 'male', '2012-01-11', 'Kristen', 'South Tobinview', '753 Powlowski Throughway Apt. 219\nJovannymouth, MO 53535', '1-757-445-1722', '34dandre69@yahoo.com', NULL, NULL, '9cf6cd70921efc8141714f3158c3676619fb5815287eda4b604b37534c55d4ed', 'Premium', NULL, '8', '2019-12-22 16:41:20', '2019-12-22 16:41:20', NULL),
(77, '179e2568-2783-377a-823e-c78724bf2166', 'Aditya Jacobs', 'female', '2002-01-12', 'Hindu', 'Jarrellchester', '19846 Runte Stream Suite 859\nLake Chaztown, ND 99660', '745-775-1025 x950', '730968364lesch.bernhard@gmail.com', NULL, NULL, '061bf96d8e79dd6423a740e62793ad48e224665735e083cc6b54e5112328abc3', 'Basic', NULL, '8', '2019-12-22 16:41:20', '2019-12-22 16:41:20', NULL),
(78, '54e05b5f-7655-375c-b5ee-ae4f2b7d0b2e', 'Dr. Thomas Gusikowski', 'female', '2008-03-06', 'Hindu', 'Port Aprilfurt', '911 Gusikowski Mission Suite 790\nLake Aleenburgh, PA 84955-6664', '1-714-825-6376', '5kmoore@hotmail.com', NULL, NULL, 'dba17ce3cb6a6a83ad60f3c91b6507733f71c41d4c7e4aa5cc1cbd86d4614257', 'Basic', NULL, '7', '2019-12-22 16:41:20', '2019-12-22 16:41:20', NULL),
(79, '5c1de0e8-af74-386b-a76a-0f446a75ea9d', 'Winfield Ferry', 'female', '1974-05-16', 'Kristen', 'Port Alisonbury', '64440 Johathan Course Apt. 596\nVergiestad, VA 78005', '1-676-616-6606', '5eliane48@hotmail.com', NULL, NULL, '4dd0eb548aa3db5c0d238069f58edae714ac24b3af901738f22887ee3992d063', 'Basic', NULL, '8', '2019-12-22 16:41:20', '2019-12-22 16:41:20', NULL),
(80, 'd2c45494-e945-3364-8dae-05bdb794b833', 'Mrs. Sydnee McGlynn', 'female', '1995-06-04', 'Hindu', 'Emmettburgh', '115 Karelle Turnpike Apt. 724\nEast Merlinshire, SD 51122', '1-215-717-7019 x6049', '54217camilla57@yahoo.com', NULL, NULL, '7127fb8e19ccf0736cc7731ab59babf3866962bce6e26cbc9fa11669ad3b0b23', 'Basic', NULL, '12', '2019-12-22 16:41:20', '2019-12-22 16:41:20', NULL),
(81, 'ef16612e-df73-3ccd-8b62-7210ec6f069b', 'Dalton Hand', 'male', '1979-02-27', 'Kristen', 'New Hilarioton', '20452 Josiah Hills Apt. 314\nNew Amina, NM 31230-7311', '(807) 258-3587 x415', '183homenick.lolita@gmail.com', NULL, NULL, 'c53224203b15ac55c5a6ada0dc36ad8e03c34bff0357f29c666be07492f6160e', 'Basic', NULL, '10', '2019-12-22 16:41:21', '2019-12-22 16:41:21', NULL),
(82, '0c680569-607d-34aa-89ec-1b3998f1bde7', 'Mrs. Tracy Stokes', 'male', '1990-08-03', 'Budha', 'Opalstad', '5283 Brekke Meadow\nHermanstad, CA 20791', '985-758-0929 x068', '97weissnat.amaya@hotmail.com', NULL, NULL, '5257e7807d71329cd644830d8aeb7c80ac01009c4e11c369b0ddf20f1721fd27', 'Premium', NULL, '1', '2019-12-22 16:41:21', '2019-12-22 16:41:21', NULL),
(83, '23567d81-dc04-3945-872f-17fe4df65d06', 'Ms. Esta Conn II', 'female', '1990-06-12', 'Hindu', 'South Scot', '54527 Wyman Lake Apt. 976\nNorth Zoeyton, FL 78731', '(476) 312-7704 x467', '6huel.verlie@yahoo.com', NULL, NULL, '583e1bfae2d2298c58f031c05a42674e450302a6e357532ddb519199ea7c69e3', 'Basic', NULL, '10', '2019-12-22 16:41:21', '2019-12-22 16:41:21', NULL),
(84, '001f7be4-9878-3113-ac60-55fca2a11ffd', 'Vinnie Okuneva', 'female', '1973-08-17', 'Konghucu', 'Lake Brionnaland', '785 Carroll Mews Suite 352\nDarioview, WY 86611', '(461) 405-5199', '53089934fledner@yahoo.com', NULL, NULL, '76e5d79ccb51c6e5e2c802138e87e8eb61a33e4cfbdbb2932c6ee8b1ec768f0b', 'Basic', NULL, '10', '2019-12-22 16:41:21', '2019-12-22 16:41:21', NULL),
(85, '56ecf78e-88a3-37e5-92cf-681da2177d74', 'Catharine Brakus', 'female', '2016-07-26', 'Kristen', 'Lake Odellmouth', '1567 Toby Cliff Apt. 581\nZolafurt, RI 52498-5607', '1-323-282-8977', '3819lgusikowski@yahoo.com', NULL, NULL, '019ae99ec613c6d44d96eb42d8076311110b2ded236999abcd60d697209f4554', 'Basic', NULL, '10', '2019-12-22 16:41:21', '2019-12-22 16:41:21', NULL),
(86, 'd586c41d-c6cb-3b31-912c-4da2db72b768', 'Oscar Blick', 'female', '2003-08-12', 'Hindu', 'Gerlachside', '94664 Conroy Lodge Apt. 819\nPresleyborough, PA 22627-7298', '687.740.9403 x4180', '187842ashly73@gmail.com', NULL, NULL, 'f5b09abf3b1256509d30aaaaa08e4553155cf80a5c266fa0d78fdcac2326f525', 'Premium', NULL, '19', '2019-12-22 16:41:21', '2019-12-22 16:41:21', NULL),
(87, '68167c79-cb35-31db-8e30-6c49519b0556', 'Karina Jacobi', 'male', '1996-11-29', 'Konghucu', 'North Deliaberg', '13054 Connelly Stravenue\nBodeport, RI 21926', '(528) 552-9374 x5894', '990236dennis.schamberger@yahoo.com', NULL, NULL, 'f2d57516a2d2e03f5944a23d3d34b8887fa2c56b90bc13944d74469d9b80f90f', 'Premium', NULL, '19', '2019-12-22 16:41:21', '2019-12-22 16:41:21', NULL),
(88, 'db3a6242-cce1-308d-b11f-ea224215baba', 'Wanda Predovic', 'female', '1979-04-10', 'Kristen', 'North Jayceemouth', '281 Isabelle Drive\nChristaside, AK 92637-0095', '710.955.4486', '11esmeralda21@hotmail.com', NULL, NULL, 'c40b7b59b6c87cb881471a5468f7c4fd25412fdee40e1c7fae054e98be10823e', 'Basic', NULL, '4', '2019-12-22 16:41:21', '2019-12-22 16:41:21', NULL),
(89, 'b26cfcd0-08a5-3613-ac30-3222dbaee32e', 'Ms. Abigail VonRueden Sr.', 'female', '1971-04-09', 'Konghucu', 'Thompsonmouth', '5554 Spencer Square\nStephanstad, AL 93949', '850-222-8981 x635', '0alford81@hotmail.com', NULL, NULL, '7e9459c4ea06ec526dda0ab0977c86bad9dc1116ba7cb0ed279199eed1f36fb4', 'Basic', NULL, '6', '2019-12-22 16:41:21', '2019-12-22 16:41:21', NULL),
(90, '6189cdfd-1a09-39cb-9c3b-11cc62421b67', 'Adella Balistreri IV', 'male', '1973-10-19', 'Islam', 'South Davebury', '38019 Raynor Common\nSouth Alainabury, KY 38301-4298', '504-673-1689', '381736660gschamberger@gmail.com', NULL, NULL, 'e742f6690e31eeb8039a7c1144d91d627f6677cc804d2053c0ba92ec36fb442e', 'Basic', NULL, '15', '2019-12-22 16:41:21', '2019-12-22 16:41:21', NULL),
(91, '0d3b55d7-3b1c-33b3-9eb3-5422a625cf65', 'Emilie Carroll', 'female', '2010-01-22', 'Budha', 'Lake Jose', '79048 Ryan Row\nNew Frederick, IL 88569', '1-337-936-0978 x47555', '948867barry.tromp@hotmail.com', NULL, NULL, 'b4f74b072a871f651596d1163f29832945630b600df2b56e47a7d7da7c6da4f8', 'Basic', NULL, '1', '2019-12-22 16:41:21', '2019-12-22 16:41:21', NULL),
(92, 'a52d6a44-ef2b-38d2-93f4-b39c4159272e', 'Lilliana Simonis', 'male', '2012-01-14', 'Konghucu', 'South Brandt', '355 Kaia Mission\nJaimemouth, RI 04767', '+1 (415) 639-7499', '5201222barbara.murazik@hotmail.com', NULL, NULL, '55bd84fd01efa2d3b1e5b0b0839ae21ba52cfdfd1bb3d9c7e222574e7dc63f49', 'Basic', NULL, '20', '2019-12-22 16:41:21', '2019-12-22 16:41:21', NULL),
(93, '87b1c4da-ddbd-3a1b-b067-01a2962d5e29', 'Alivia Koepp', 'female', '1998-08-10', 'Budha', 'Bertmouth', '1451 Anibal Rapid\nMacshire, NV 67811-4690', '995-291-3745 x361', '9vkilback@gmail.com', NULL, NULL, 'f64d68f1dc523130922164527094c05966bf889a7b0617a275f13f6e010cde8f', 'Premium', NULL, '8', '2019-12-22 16:41:21', '2019-12-22 16:41:21', NULL),
(94, '111444a5-b50f-38b6-80c8-8ffca2ea893d', 'Amanda Greenholt', 'male', '1982-10-30', 'Kristen', 'Lake Daneborough', '18944 Ratke Village Suite 494\nKennethshire, RI 60869-9267', '(430) 481-4225', '3rosie.farrell@hotmail.com', NULL, NULL, '40e4e9082351166a2e0359eb1b527234462d242b371cd2144f76418a125fcf77', 'Premium', NULL, '14', '2019-12-22 16:41:21', '2019-12-22 16:41:21', NULL),
(95, 'af09d782-980e-3ee1-8f89-c0306599f155', 'Arch Stiedemann', 'female', '2005-02-01', 'Islam', 'South Darrelberg', '45270 Considine Canyon Suite 723\nBradtkefort, LA 34439-3080', '904.498.6751 x075', '590846154nader.ryder@hotmail.com', NULL, NULL, '9126f22547308bb7d09d2cd00532f974879cc67f38f0b2e2a7d62d5a66e46a7b', 'Premium', NULL, '7', '2019-12-22 16:41:21', '2019-12-22 16:41:21', NULL),
(96, 'ac376991-d09e-36ec-9cfa-8f2e99506fad', 'Marisol Klocko', 'male', '1987-11-08', 'Islam', 'Germanshire', '79836 Titus Ferry Apt. 241\nNew Reganberg, MI 15299', '548.335.7906', '6378gcrooks@hotmail.com', NULL, NULL, '61b415dacd107232f1f51fbb8e74f28b4917f5c5120518323640b33f22f7eaf0', 'Basic', NULL, '1', '2019-12-22 16:41:21', '2019-12-22 16:41:21', NULL),
(97, '2c7d96b2-bb1a-32f1-9736-9510c87d3341', 'Sandy Kassulke', 'male', '2019-01-29', 'Budha', 'Collierport', '86216 Veum Crest\nNorth Emeliachester, KS 94489-9017', '(474) 669-2020 x09898', '48755759mcdermott.magali@hotmail.com', NULL, NULL, '74e1fff794c350b20bdc866faaffac9f53d48a3f00667efb895a8279fe3cba3b', 'Basic', NULL, '5', '2019-12-22 16:41:21', '2019-12-22 16:41:21', NULL),
(98, 'a4421f66-f734-39b9-8200-a657d452a0c0', 'Mr. Cesar Witting', 'female', '2019-01-24', 'Konghucu', 'East Rozella', '1085 Berniece Street Suite 727\nLake Aureliafort, NC 08865', '1-253-828-5836 x54539', '798873933kkirlin@gmail.com', NULL, NULL, '0020ff05d3bb4826698a9c3fe6034aacc1e5d90ab20cc3db797f7cac1f13c2e9', 'Basic', NULL, '18', '2019-12-22 16:41:22', '2019-12-22 16:41:22', NULL),
(99, 'fcee0671-3aab-3d17-8356-50c1c085f774', 'Lillie Schumm', 'male', '1993-01-08', 'Konghucu', 'East Xzavierport', '4400 Simonis Way\nKuhntown, TN 09479-2795', '825.976.1395', '99036460jamar82@yahoo.com', NULL, NULL, '461743b9a1dd02cb7e33182e782e175f95359c062e1948bcb69c0034b1eb133c', 'Basic', NULL, '19', '2019-12-22 16:41:22', '2019-12-22 16:41:22', NULL),
(100, '5245dcfd-ffa1-33a1-ad45-4cff57a96005', 'Carlos Wiza', 'female', '1989-09-20', 'Konghucu', 'Brigitteborough', '427 Ondricka River Suite 231\nPort Maudefort, NC 17266-2226', '+1 (297) 535-2286', '134irma40@gmail.com', NULL, NULL, '92648ba654e85f76e5cbeb937cfa4d6bd00ab7f4a89b84f9c15c3da6b64c48db', 'Premium', NULL, '3', '2019-12-22 16:41:22', '2019-12-22 16:41:22', NULL),
(101, 'dfaec920-6d56-3bfc-84a3-ce6e90aa9dd5', 'Kiara Altenwerth', 'female', '2009-08-17', 'Islam', 'Littleburgh', '45587 Jarrell Roads Suite 052\nTorpshire, NV 29052-1109', '+1 (830) 482-0633', '9torp.tyreek@yahoo.com', NULL, NULL, '5dba2ca5b161bf865122f0f58be787493baf0d752ffd0cba90947dcae99c6491', 'Basic', NULL, '13', '2019-12-22 16:41:34', '2019-12-22 16:41:34', NULL),
(102, '40900eac-08b5-3f6d-b6dc-85d3c7d5fea4', 'Randall Witting', 'male', '1994-08-16', 'Kristen', 'Alejandrinside', '555 Meta Landing Apt. 718\nWest Maiyaberg, AZ 40424-7899', '+14019863612', '6okshlerin@yahoo.com', NULL, NULL, 'fc9b62aeba5ca1a5d3a48d663c500c66cf1c04fd8886afaa50344dc00696e4b3', 'Basic', NULL, '39', '2019-12-22 16:41:34', '2019-12-22 16:41:34', NULL),
(103, '7279df09-0d1c-3efa-b53d-ca14b1a2d8ff', 'Myah Rodriguez', 'male', '1983-03-27', 'Konghucu', 'Port Ellen', '71146 Morissette Divide Suite 441\nElmorebury, AZ 41232-6059', '913.712.5507 x765', '5shilpert@hotmail.com', NULL, NULL, '33839ae134c1eb7e14e6ffae0b5a308a5d9619c7d4b9b380b4d9594ebff6386d', 'Premium', NULL, '22', '2019-12-22 16:41:34', '2019-12-22 16:41:34', NULL),
(104, 'e9980644-d190-3062-a9c2-77c46b5312cf', 'Abdiel Wilderman', 'male', '2009-12-10', 'Islam', 'Port Casandra', '7839 Gene Crest Suite 495\nSouth Haylieshire, OK 37424-2921', '1-674-849-1876 x66283', '8936105morar.samson@gmail.com', NULL, NULL, 'f5b0227f44187c022788d10ae97d9326513a9198fcf2bac4cbe101c50249e6cb', 'Premium', NULL, '16', '2019-12-22 16:41:34', '2019-12-22 16:41:34', NULL),
(105, '9d49795b-0f72-356b-9e98-39a687dc7348', 'Briana Schiller', 'female', '1992-10-17', 'Konghucu', 'West Britney', '721 Bernhard Creek Apt. 179\nTorranceberg, VA 29405', '223-574-3106 x1972', '59542vhuels@gmail.com', NULL, NULL, '836e1993b1d1257ea57994544b6d0f51059f16070fec24b49b954adb4cce63af', 'Premium', NULL, '23', '2019-12-22 16:41:34', '2019-12-22 16:41:34', NULL),
(106, 'dbf63fcd-2ab8-3b43-8f78-9851fbc1d71d', 'Cornelius Corwin II', 'female', '2010-05-09', 'Hindu', 'Fayfurt', '703 Eldridge Parkways\nNorth Dawsonview, DC 04714', '+1 (370) 854-5720', '753671859ibatz@yahoo.com', NULL, NULL, 'df2337ea3c5980f9fe63a4e16dae026fa82e8578aa41c12279825392a5419207', 'Basic', NULL, '11', '2019-12-22 16:41:34', '2019-12-22 16:41:34', NULL),
(107, '4f85c86d-dcf7-3757-9e3b-3688a85b2dcb', 'Chadd Zemlak', 'male', '1975-08-03', 'Kristen', 'North Jasper', '792 Wilderman Walks\nPort Roelville, MA 30848', '(630) 254-3221 x977', '836443436kiarra.leffler@gmail.com', NULL, NULL, 'a8b512d52b0620b33794dfebbd9c2ddb7dc6917a3a29d7e8bef8ad6b17478cb5', 'Basic', NULL, '8', '2019-12-22 16:41:34', '2019-12-22 16:41:34', NULL),
(108, '76f1bdbd-9b82-3e7b-9b04-c2ab67404eca', 'Emanuel Sawayn', 'male', '1972-05-10', 'Kristen', 'North Willy', '8292 Sofia Union\nEast Theresia, WI 39732-5089', '485-748-3431', '59roman.luettgen@gmail.com', NULL, NULL, '946f05d5a2a4b2f24cf47b07dec684f899d86b7e4e089917b049dc5ca59c3f2f', 'Premium', NULL, '17', '2019-12-22 16:41:34', '2019-12-22 16:41:34', NULL),
(109, 'cf05de68-e299-3a8a-8b30-8dd49b8b22bc', 'Oral Glover', 'female', '2002-10-03', 'Budha', 'North Terenceville', '859 Hettinger Path\nNorth Nickolas, AR 05053-4054', '(857) 665-5224', '132245agustin.witting@yahoo.com', NULL, NULL, '6f88f60bbd809d527eb34d46bff9b3a62861f5864e56a9bf0170a0a699afac98', 'Basic', NULL, '9', '2019-12-22 16:41:34', '2019-12-22 16:41:34', NULL),
(110, '1d8b2eda-4acf-3ec2-b0c1-96cf4e6c41c5', 'Sydnee Johns', 'male', '2015-12-01', 'Hindu', 'Hodkiewiczmouth', '48092 Beaulah Parkways Suite 966\nPort Darryl, NH 20077-3494', '+1 (590) 976-8632', '88amaya.beier@gmail.com', NULL, NULL, 'a31abbc3435281853f1ba11bccacbdf5a1d026898a428bcb236dbf077f5db4af', 'Basic', NULL, '2', '2019-12-22 16:41:34', '2019-12-22 16:41:34', NULL),
(111, '69b8887e-c54f-3182-8c9d-c9a081d12d45', 'Lauretta Dooley', 'female', '2010-05-26', 'Kristen', 'West Edythview', '448 Jonas Trail\nWardchester, MA 41859-9086', '+1-557-217-3848', '26260mariane03@hotmail.com', NULL, NULL, 'f0223d05c3933738c554d3d603c76eb852563016552520d6be5a683d4052ceef', 'Premium', NULL, '18', '2019-12-22 16:41:34', '2019-12-22 16:41:34', NULL),
(112, '840ae6c8-4ad2-38a4-ae99-c9d2402b7e55', 'Yadira Greenholt DDS', 'male', '1977-02-10', 'Konghucu', 'Port Bobbiemouth', '3353 McKenzie Estate\nNorth Peytonview, FL 91525-8609', '+1 (513) 831-0715', '6tressa.dickens@gmail.com', NULL, NULL, 'e074fd094f802220d21b1e595269429cd2118c5b096e4d096330afe6bf9ae3a0', 'Premium', NULL, '34', '2019-12-22 16:41:34', '2019-12-22 16:41:34', NULL),
(113, '5c641794-2547-37b4-a110-d8f731289d29', 'Dr. Hermina Smitham DVM', 'female', '1974-07-16', 'Kristen', 'New Christopher', '3537 Kozey Extensions Apt. 478\nHermanberg, AR 58383-8816', '(410) 748-4833', '81wschneider@yahoo.com', NULL, NULL, 'b7bd7d873a03b163db3e126c160d822a6095055daa657301ddf83a02a93f615d', 'Premium', NULL, '23', '2019-12-22 16:41:34', '2019-12-22 16:41:34', NULL),
(114, '68862993-58a7-3e89-9be0-90a94dcd618a', 'Enid Harber IV', 'female', '1977-06-22', 'Konghucu', 'Barrowsbury', '925 Jennifer Estate Apt. 837\nEmmettview, DC 46099', '1-232-847-4751 x05225', '3ava.boyer@yahoo.com', NULL, NULL, 'b52812be945d120d40972909f6840458d9ece49fe6dbe25bb2f7e394a4d3e269', 'Basic', NULL, '9', '2019-12-22 16:41:34', '2019-12-22 16:41:34', NULL),
(115, '73c7deb5-2ad7-3f09-b887-9a775cc88ae4', 'Delfina Kuphal', 'male', '2011-09-04', 'Konghucu', 'West Providencibury', '677 Amie Ville\nMikaylaville, TX 53918-2767', '+1-670-595-3351', '243gdaniel@yahoo.com', NULL, NULL, '1ee959da0ba9ca9ec0890713e09e5b988f9df07d64d6e52edf2c7379b0de5c57', 'Basic', NULL, '3', '2019-12-22 16:41:34', '2019-12-22 16:41:34', NULL),
(116, '2b089f23-7adb-3700-a211-be8692291834', 'Israel Osinski', 'female', '1977-04-19', 'Islam', 'Antoninaburgh', '4117 Taya Walks\nHoegerland, MI 78882-3306', '1-248-427-2685 x96165', '74tillman.lelah@gmail.com', NULL, NULL, '536467c14d8663cc97682feeecd5c4208d6c0a3ea8140fcdb9e41d765334aced', 'Basic', NULL, '15', '2019-12-22 16:41:35', '2019-12-22 16:41:35', NULL),
(117, 'aca72545-301b-3eda-a80e-5751ddd60f61', 'Monty Pfannerstill', 'female', '1987-04-24', 'Kristen', 'Klockobury', '875 Rubye Extensions\nArmstrongview, MS 28425-8953', '551.468.6140 x3151', '821370doyle.schumm@hotmail.com', NULL, NULL, '2304fa4c6d9abafd81d234c2058a4f9bb97643a25e89fd07744e8f6149def4ac', 'Basic', NULL, '10', '2019-12-22 16:41:35', '2019-12-22 16:41:35', NULL),
(118, 'fadd06c8-7738-3eac-87b5-1ab487583ec6', 'Dr. Reese Leannon Jr.', 'male', '1998-10-04', 'Islam', 'Alexanderburgh', '806 Garth Oval\nEast Irving, NJ 66012', '+14873023544', '5058193thickle@gmail.com', NULL, NULL, '6826a9cc6ba8148880e6b5bf871454daa37abd41d652bee8650cf1aa2bd0f7db', 'Basic', NULL, '30', '2019-12-22 16:41:35', '2019-12-22 16:41:35', NULL),
(119, '7590098b-dd66-3ef9-ab7c-fc025a0c6667', 'Marianne Lowe II', 'male', '2004-04-02', 'Konghucu', 'Lake Cristinaberg', '443 Feil Overpass Apt. 581\nNew Gabriellaport, MA 37314', '1-246-617-2337', '58439mkris@hotmail.com', NULL, NULL, '49020f9be416ce0f07abb70712334d345c1f286b9d9f8a35ae671699f6c8c420', 'Basic', NULL, '17', '2019-12-22 16:41:35', '2019-12-22 16:41:35', NULL),
(120, 'e1306279-9462-3727-9a9e-1ff1f4ee4606', 'Ozella Skiles', 'male', '1977-05-22', 'Konghucu', 'North Mozellmouth', '866 Augustus Islands Apt. 070\nRocioside, TN 63782', '903-469-1961 x09164', '48122erdman.rahul@gmail.com', NULL, NULL, 'f4e7e5d889bca910fa0f950ee68516bf00402a6bae2e7134555e34a54cf8576b', 'Basic', NULL, '4', '2019-12-22 16:41:35', '2019-12-22 16:41:35', NULL),
(121, '75a8af15-074c-3900-8ea9-49e5c2cf109a', 'Prof. Ida Quitzon IV', 'male', '2001-08-29', 'Budha', 'Timmychester', '853 Hope Curve Suite 717\nLake Selenaborough, SC 98062-4668', '+16295160994', '5hohara@hotmail.com', NULL, NULL, '147e564ab75afb569af80ab514b4ea16e40f3e564e2afff8d319c63da11dc0eb', 'Premium', NULL, '28', '2019-12-22 16:41:35', '2019-12-22 16:41:35', NULL),
(122, 'e238b534-e7f8-36ee-bafe-5e5b16e780b9', 'Domenica Lockman', 'female', '2007-10-17', 'Konghucu', 'Port Tevinborough', '884 Terry Park Apt. 901\nFavianmouth, VA 24254-6663', '865-239-1040', '824551269lionel.conroy@hotmail.com', NULL, NULL, '5a36460780c6dec1c5c5ed4e36e9f409f8d6c5ca1dcfaf8910b45ca12b7dbe80', 'Basic', NULL, '15', '2019-12-22 16:41:35', '2019-12-22 16:41:35', NULL),
(123, 'aabce897-ca62-33e2-af08-0596d25dc025', 'Lenna Wisoky', 'female', '1985-06-13', 'Konghucu', 'Ullrichmouth', '221 Lemke Road Apt. 988\nKovacekland, PA 86123', '967-934-7690 x74049', '2636rozella.price@gmail.com', NULL, NULL, '9cd1a3805f187a5943cf2a6182e74b4f5b271ab70bb897aaad2918942fb58bf3', 'Basic', NULL, '10', '2019-12-22 16:41:35', '2019-12-22 16:41:35', NULL),
(124, '9fb8eedf-b85b-3035-8d26-7d0ce6813f3f', 'Thea Bernier', 'female', '2009-04-13', 'Hindu', 'Sandraland', '344 Murphy Locks Apt. 854\nNorth Dinoton, IL 70042', '+1-230-215-0225', '390mlegros@gmail.com', NULL, NULL, '11e5605d5e2f22309f08c74cf0477422b0295af8e80fe3a06f8967114191f55c', 'Basic', NULL, '34', '2019-12-22 16:41:35', '2019-12-22 16:41:35', NULL),
(125, '58264245-6bdc-3859-99c0-2800cb78a2c8', 'Prof. Jerrold Zemlak II', 'male', '2006-03-09', 'Kristen', 'Walterburgh', '788 Kozey Inlet Apt. 315\nHeavenview, HI 48164-6287', '831-602-4657 x966', '6pheaney@yahoo.com', NULL, NULL, '39d5e444a5b812c0b20cdbc1810812a3afd14881a9e116dba158e98f7ed21c0b', 'Basic', NULL, '26', '2019-12-22 16:41:35', '2019-12-22 16:41:35', NULL),
(126, '6ce86345-04e1-3fdf-8bb3-c817b9799295', 'Prof. Dortha Wolf I', 'female', '2002-07-27', 'Kristen', 'South Amos', '9990 Larkin Drive\nNorth Peggiefurt, AR 83890', '+1-893-479-2545', '2959828jude27@yahoo.com', NULL, NULL, 'ee122ae55078363838e51ec0e696f789aaaa168082dbdf7688d13680c129c2ba', 'Premium', NULL, '11', '2019-12-22 16:41:35', '2019-12-22 16:41:35', NULL),
(127, '00f47988-4d07-396e-a216-af336b322e92', 'Christy Cummings Sr.', 'male', '2005-10-05', 'Hindu', 'Strosinborough', '53675 Funk Wells\nRodrigoborough, CA 58543', '1-609-554-0780', '5964macey.hessel@yahoo.com', NULL, NULL, 'e7a5c5f0677bc3bef1e4c1cff7670da9195362d8eed261cb561e50d9bbca0fc7', 'Basic', NULL, '13', '2019-12-22 16:41:35', '2019-12-22 16:41:35', NULL),
(128, 'c39f2059-8334-3f7d-8e79-574ae3a730ca', 'Mrs. Shaylee Gislason IV', 'female', '2001-05-23', 'Islam', 'Mayertbury', '615 Alexander Street\nVioletteborough, WI 72823-6074', '(389) 259-4574 x3656', '790mateo70@hotmail.com', NULL, NULL, '929847bd91f6a1cfd1802db2405176e5fbfb430a382c444e90aed5b67582d028', 'Basic', NULL, '15', '2019-12-22 16:41:35', '2019-12-22 16:41:35', NULL),
(129, '9c848d19-2994-3e0f-92da-31fc2378abe3', 'Amira Williamson', 'male', '1985-04-25', 'Islam', 'Port Ofeliafurt', '9464 Cristina Loop\nPort Tiffany, HI 04000-4461', '1-414-905-4778 x9375', '65nienow.bryana@hotmail.com', NULL, NULL, '937dee4522def8955548f22ef23c8dd4eb326e34fe45a4db32938d8deaaffb3e', 'Basic', NULL, '4', '2019-12-22 16:41:35', '2019-12-22 16:41:35', NULL),
(130, '4c0c929b-572d-3a11-b4f0-2074895c144f', 'Virginie Beatty', 'male', '2008-04-18', 'Budha', 'Beaufurt', '8257 Schowalter Summit\nNew Demondhaven, AK 27319-7212', '+1 (372) 613-5376', '5lupe.kilback@gmail.com', NULL, NULL, '3b6ef77b92191c1071708d49de2e68722f95dc1ccb595b05eb8a3d8393a22ae6', 'Basic', NULL, '36', '2019-12-22 16:41:35', '2019-12-22 16:41:35', NULL),
(131, 'd028d5cc-19bc-3647-8bad-a71153369869', 'Nyasia Parisian IV', 'female', '2012-12-23', 'Islam', 'Wolffside', '793 Glenna Summit\nLake Merleside, DE 68195', '408.824.6748', '4cristobal.nitzsche@gmail.com', NULL, NULL, '902387612dbf5a6f08d96f7fc6028e5ef2b8869915c5523bb508fc2a3c781ae9', 'Premium', NULL, '28', '2019-12-22 16:41:35', '2019-12-22 16:41:35', NULL),
(132, 'af8e5adb-c0a4-3787-8cf9-79a037dbef4f', 'Johanna Kulas', 'male', '1990-07-20', 'Kristen', 'Jeramiehaven', '32835 Conner Plains\nNitzschefort, WY 53693-3211', '385.609.4823', '5867davon50@gmail.com', NULL, NULL, '92116b19d7474ceb41ace24d611f9db20c06764e42d19d0d98be510c85caed4d', 'Premium', NULL, '30', '2019-12-22 16:41:36', '2019-12-22 16:41:36', NULL),
(133, '2d5525b7-8a24-3a9a-86fc-0277769c3e94', 'Raven White', 'male', '2015-07-21', 'Hindu', 'Mathildemouth', '62193 Maymie Grove\nSouth Izaiahberg, NE 05732-1052', '+1-387-219-8173', '8171481agottlieb@gmail.com', NULL, NULL, '5ed497176de3b002e52c88258a224c96deb4176c5f43fa569dd3868287b19d00', 'Premium', NULL, '22', '2019-12-22 16:41:36', '2019-12-22 16:41:36', NULL),
(134, '12b43af5-55a9-3931-a946-2069a6ff7ca5', 'Prof. Sherman D\'Amore I', 'male', '2007-08-16', 'Konghucu', 'Orloville', '434 Block Rapids Suite 964\nEast Rae, NM 15798', '537-476-1134', '70245721bryana.huels@yahoo.com', NULL, NULL, '9750ccf853aa5f1363bb4027b1c9edd0e83c51ce808a154428269b276ebcf2fb', 'Basic', NULL, '18', '2019-12-22 16:41:36', '2019-12-22 16:41:36', NULL);
INSERT INTO `customers` (`id`, `id_card_number`, `name`, `gender`, `birthday`, `religion`, `city`, `address`, `phone_number`, `email`, `email_verified_at`, `token`, `password`, `status`, `remember_token`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(135, 'bb36b1ff-07af-3d83-8a6c-8ba0b9b11880', 'Ms. Viola Baumbach', 'male', '2002-07-03', 'Kristen', 'West Chet', '885 Ralph Junction\nVirginiastad, AK 82094-7956', '370.258.7656 x90780', '28390436crooks.zander@gmail.com', NULL, NULL, '1bd65a467eb7420d2f5631018bd9fa39bd2bfba4d73fadb6b824468c14658e61', 'Basic', NULL, '28', '2019-12-22 16:41:36', '2019-12-22 16:41:36', NULL),
(136, 'e305406c-e3db-37fe-885a-ba01adb91267', 'Dejuan Connelly', 'female', '1975-05-05', 'Hindu', 'West Dariana', '4586 Keyon Mission Suite 146\nEast Aleenland, FL 24630', '939-432-6498 x2330', '289angelica03@gmail.com', NULL, NULL, 'adc742ee651de2d38c5a1f043270ab7afece77adcc1c00c77af5e94ea3f8cc22', 'Basic', NULL, '20', '2019-12-22 16:41:36', '2019-12-22 16:41:36', NULL),
(137, '31f4c8ab-2d94-3e92-8d6c-db6fb55bfc17', 'Edmund Stokes', 'female', '1992-07-26', 'Konghucu', 'New Tarashire', '9243 Bernhard Junctions\nNew Jeffreyview, AK 30998', '875-745-8819', '982458066kulas.isabella@gmail.com', NULL, NULL, 'a17e4faa4da4718400a2db108893018687207b6297c2efe54d35f5d56e9dca3e', 'Premium', NULL, '25', '2019-12-22 16:41:36', '2019-12-22 16:41:36', NULL),
(138, '234577f0-14c8-3ff3-85cf-4950e01d74c9', 'Dr. Alisha Pacocha III', 'female', '2009-10-09', 'Kristen', 'Effertzbury', '3901 Isabel Fields\nLake Adellefort, KY 47022-2850', '(207) 828-6231 x190', '1446rita.bernier@gmail.com', NULL, NULL, '1e24837a8409f33657fcc5c0adb4c84b4c5cd40a8b0aad70dd3d35da3a9f5007', 'Basic', NULL, '14', '2019-12-22 16:41:36', '2019-12-22 16:41:36', NULL),
(139, 'cbc90aa1-7771-3397-8267-07531f789df3', 'Danika Frami', 'female', '2013-04-30', 'Konghucu', 'North Alex', '5814 Dibbert Skyway\nWunschview, CO 62469', '832.767.3736 x43383', '42652620orie43@hotmail.com', NULL, NULL, 'c98a8eb810a80630faa231abb2b8315554e9b365528ecf43f362bdd41571d278', 'Basic', NULL, '32', '2019-12-22 16:41:36', '2019-12-22 16:41:36', NULL),
(140, 'cdffd183-a40b-3c4d-968a-e562c504b46e', 'Dr. Reinhold Marvin V', 'female', '1977-11-06', 'Islam', 'North Edwinborough', '254 Schowalter Wall\nWest Marieport, MO 54026', '536.825.5120 x8556', '8alivia40@yahoo.com', NULL, NULL, 'c32e53443cd8df5165651c5a59c47573bf02270cf17391dbc540e37e4d942e09', 'Basic', NULL, '10', '2019-12-22 16:41:36', '2019-12-22 16:41:36', NULL),
(141, '3ebe9a06-49ee-35d6-9dd8-be90d5779c0c', 'Jackie Lowe III', 'male', '1978-10-08', 'Konghucu', 'Wandaland', '84294 Donnelly Lodge Suite 590\nWiegandview, OR 98850', '867.542.7321 x403', '64dare.wendy@hotmail.com', NULL, NULL, 'd257cc114263ace055ef5251277bf9765f6ebc92bb84badf991b19b2fd36aaa4', 'Premium', NULL, '35', '2019-12-22 16:41:37', '2019-12-22 16:41:37', NULL),
(142, '0dacef22-6da3-3c51-8386-cd4bf1b0a73a', 'Keagan Bashirian', 'male', '1999-02-03', 'Kristen', 'Rogahnview', '6843 Vandervort Knoll Apt. 705\nLake Darius, WI 73277-5412', '+1.796.692.7530', '63429mitchell.linnea@gmail.com', NULL, NULL, '600f3830b6599905be7a43658f51c5c93d93600297f5b2a80340e4ffefadef35', 'Premium', NULL, '1', '2019-12-22 16:41:37', '2019-12-22 16:41:37', NULL),
(143, '04deea80-6b8b-331e-bc16-1817ba59257f', 'Prof. Bradley Powlowski', 'male', '1973-09-13', 'Hindu', 'Karineburgh', '733 Windler Parks Apt. 369\nEast Nora, NC 02674', '683-530-4046', '37wehner.hayley@gmail.com', NULL, NULL, '010e61c151c943bfe4affe249aea41e7eb9d09eefadacb82528691cf9f68b738', 'Premium', NULL, '2', '2019-12-22 16:41:37', '2019-12-22 16:41:37', NULL),
(144, '435c1bda-8812-3298-a5ef-49ab5435d32f', 'Kara Rippin', 'female', '1984-06-13', 'Islam', 'Chynaburgh', '2323 Bosco Ferry\nNorth Jaysonton, AL 98913', '(314) 440-0134 x9146', '87379kaley38@yahoo.com', NULL, NULL, '18175fe4fbaf211019b7708a73892f664f97e18ebfa5df429320e6569b489425', 'Basic', NULL, '40', '2019-12-22 16:41:37', '2019-12-22 16:41:37', NULL),
(145, 'b9dae973-10bb-3e59-bbe6-78987befc63d', 'Milan Leffler', 'female', '1974-11-17', 'Kristen', 'Gulgowskifort', '6022 Annalise Port Apt. 333\nImeldaville, WY 24264-1828', '+1 (932) 686-7207', '14629472royce.klein@hotmail.com', NULL, NULL, '74bf28990e806e10684d46ed438ac8b65bda11139a5449493071b98a0490a3c3', 'Basic', NULL, '3', '2019-12-22 16:41:37', '2019-12-22 16:41:37', NULL),
(146, '53c474be-ecea-3312-bae5-422b2b64a868', 'Makenzie Kovacek IV', 'female', '2000-06-27', 'Budha', 'Yundtport', '7074 Asia Dam\nStoltenbergburgh, CO 74555', '+1 (484) 744-0441', '4270553jaqueline.runolfsdottir@gmail.com', NULL, NULL, 'dca5b45c5bb87028a6d786e040dee3c0b094b1973f3a6e779a9089ad2aea0dac', 'Premium', NULL, '7', '2019-12-22 16:41:37', '2019-12-22 16:41:37', NULL),
(147, 'fd8da0cf-f9b3-3de8-8adc-0cebea87402c', 'Fay Braun', 'male', '1974-03-24', 'Konghucu', 'North Wendytown', '88523 Brown Turnpike Suite 256\nBaileyport, MA 85500-7254', '1-608-783-3682 x77392', '130antoinette.hand@yahoo.com', NULL, NULL, '092ff697de5f10c1e27061200f94d9bcb84f2745a007120b0cf491c04a0596da', 'Basic', NULL, '2', '2019-12-22 16:41:37', '2019-12-22 16:41:37', NULL),
(148, 'f75774b0-c8de-3c73-bdf2-cd25d15a517e', 'Wendell Hills', 'female', '1970-08-17', 'Budha', 'West Elliottport', '76672 Larson Mission\nWest Andyhaven, SC 70229-1725', '1-476-289-1165', '2663558alexandria42@hotmail.com', NULL, NULL, '6d2387821fea8bb015a7849c57046a3662f88adce066474b0481da7fbb2ce54d', 'Premium', NULL, '8', '2019-12-22 16:41:37', '2019-12-22 16:41:37', NULL),
(149, '508251ae-ddad-3edb-873e-8765a21b0458', 'Mrs. Mozell Lakin DDS', 'female', '2019-03-26', 'Budha', 'Gibsonstad', '317 Orin Crossing Apt. 842\nNew Lupeside, MA 39799', '+15306753625', '300887alexis92@yahoo.com', NULL, NULL, '5a63b73d0f65c34c11bdbf0c45b8859becf2197190bbecef1fef7371da129596', 'Premium', NULL, '15', '2019-12-22 16:41:37', '2019-12-22 16:41:37', NULL),
(150, 'ad812916-629a-3afe-bbfd-c9eb34207f63', 'Prof. Brianne Torphy', 'male', '1992-12-08', 'Kristen', 'Wiegandbury', '89499 Morar Islands Apt. 542\nCarolynebury, NE 83525', '(584) 752-3062 x16547', '461343575gustave39@gmail.com', NULL, NULL, 'f299f5151267bf51a185ec443acbc58776cbdd1808ad15c0208d61ea1ff49068', 'Premium', NULL, '9', '2019-12-22 16:41:37', '2019-12-22 16:41:37', NULL),
(151, '912ceb3b-ad7f-3758-a6ab-1bad6cd9de37', 'Dewayne Trantow', 'female', '2015-05-09', 'Islam', 'Lake Christine', '50981 Claudia Hill Suite 179\nKiehnton, VT 62723', '1-820-312-8259 x842', '32263960gschaefer@yahoo.com', NULL, NULL, '99ce168403b5f9a4fb0c57f1b1925c5e7bd4474e8b96d5ac53d1b5290f6b4a32', 'Basic', NULL, '4', '2019-12-22 16:41:37', '2019-12-22 16:41:37', NULL),
(152, '528ae66d-de2f-3b3a-8e9c-f72e75c1d0af', 'Nicole Torp', 'male', '2000-11-06', 'Kristen', 'Reichertstad', '792 Ullrich Mills\nNew Laila, OR 05132-0167', '342-871-3582', '60388mozelle.mccullough@gmail.com', NULL, NULL, '7a68e5bc4c07a338dc0c1ad711b7f322f95330bd95f8cf12cf6578eaddb53083', 'Basic', NULL, '6', '2019-12-22 16:41:37', '2019-12-22 16:41:37', NULL),
(153, '3385cb05-b7bc-3c3c-a0cb-ca3a8bb23295', 'Mr. Fausto Grant', 'female', '1984-10-13', 'Kristen', 'New Rashawn', '1553 Destinee Well\nMayermouth, CA 16156', '(454) 652-0869 x4784', '2354alejandrin10@gmail.com', NULL, NULL, 'a137e92a4dc2010d5c70e30f43e01112768b9b8ee9a09baffe5b862c081b7e40', 'Premium', NULL, '34', '2019-12-22 16:41:37', '2019-12-22 16:41:37', NULL),
(154, '31c72aa6-459b-3319-9f47-1f0de87b2ff3', 'Madisen Green', 'male', '2004-02-02', 'Islam', 'Einoview', '30650 Bridget Road\nNew Kyra, VA 68931', '(948) 803-1488 x1348', '9778598leffler.rupert@gmail.com', NULL, NULL, '13d5731bc79e82ecd3e419996ab0436f17410708bcd0216471c697af4915d49b', 'Premium', NULL, '29', '2019-12-22 16:41:37', '2019-12-22 16:41:37', NULL),
(155, 'bb70ddfc-a9a9-314c-a3ff-861a052d151a', 'Dr. Jarred Thiel Jr.', 'male', '2006-05-10', 'Kristen', 'West Michaela', '6469 Rippin Causeway\nKuphalchester, ID 45399', '636.647.3417 x61174', '7159quigley.xander@hotmail.com', NULL, NULL, '485b6fac07c724fa09febe887b4e5b85ee16a590ff60d3f598dd887226e5c40f', 'Basic', NULL, '37', '2019-12-22 16:41:37', '2019-12-22 16:41:37', NULL),
(156, '5af0d83d-98c6-3818-8f5d-b66ca9dbd7af', 'Prof. Savion Hagenes', 'female', '2003-02-13', 'Konghucu', 'Goldenside', '715 Stracke Branch\nWest Lelia, NC 31181', '657.621.8337', '8661roxane.koss@hotmail.com', NULL, NULL, '065eda906bb6d3e29b2497fa2246a0f9746b17af468435fb2a4ae7a7eee2eb8d', 'Basic', NULL, '40', '2019-12-22 16:41:37', '2019-12-22 16:41:37', NULL),
(157, '087426ca-a719-3252-9b87-d5a95b009c5f', 'Lura VonRueden', 'male', '2001-12-14', 'Hindu', 'North Karaborough', '26467 Jettie Shores Suite 410\nFayborough, MS 12306', '(263) 433-2932 x2540', '27159ushields@hotmail.com', NULL, NULL, 'f0babca4e56242ea0b11edefb37c6e83fa41206871c53877e60b694d24c37222', 'Premium', NULL, '38', '2019-12-22 16:41:37', '2019-12-22 16:41:37', NULL),
(158, '7d701726-8793-3a51-9116-63931a29ff7e', 'Prof. Lincoln Frami Jr.', 'female', '1999-12-08', 'Konghucu', 'Sandraland', '239 Grant Path Suite 687\nLake Clareton, ND 18686', '1-506-841-1790 x6652', '252000275uriah.walker@yahoo.com', NULL, NULL, '6b01e5211fe72967dc52468542cf892ec06df87848289ce03779c5bc7c79ec36', 'Basic', NULL, '2', '2019-12-22 16:41:37', '2019-12-22 16:41:37', NULL),
(159, '7c9183ed-0be2-3703-9f60-b685ab230053', 'Dr. Freida Wilkinson Sr.', 'male', '1975-09-06', 'Konghucu', 'Lake Sylvia', '4825 Quincy Roads\nWisozkville, SC 30882-7920', '+1.935.778.4564', '20926mann.dylan@hotmail.com', NULL, NULL, '212db2b870bec02f1bce6d57fd8d714c64198d758e2e99503c10fe6d917ebb0c', 'Premium', NULL, '1', '2019-12-22 16:41:37', '2019-12-22 16:41:37', NULL),
(160, '08c34efc-16db-33e8-ad7a-3277c621324f', 'Garrick Stanton', 'male', '1970-07-27', 'Konghucu', 'North Jeniferborough', '322 Freddy Centers\nNorth Destanymouth, WY 72142', '(583) 538-2025', '2701182kayley.von@yahoo.com', NULL, NULL, '02b8ed71f23d25cb755f0698d671166dd6e84dffe12fe14daa70e8eac99a5543', 'Basic', NULL, '14', '2019-12-22 16:41:38', '2019-12-22 16:41:38', NULL),
(161, '8f4aa4f0-f89d-35e7-b118-0088b68e56b9', 'Arno Reynolds', 'female', '2012-12-27', 'Kristen', 'North Amelie', '837 Kunde Vista Suite 984\nRunteborough, NJ 60394-0649', '(939) 741-5930 x691', '75hill.emile@gmail.com', NULL, NULL, '160831113b399dabe8c77753b0ca43d6ad4b24c64ffd7bca794f86fe810c8788', 'Premium', NULL, '5', '2019-12-22 16:41:38', '2019-12-22 16:41:38', NULL),
(162, '6ff76672-9c2b-3164-af24-7876b8b50a72', 'Jayne Koepp MD', 'female', '1981-04-28', 'Konghucu', 'Weimannchester', '592 Stanton Forks\nSouth Shanellebury, KY 34291', '+1 (547) 333-8950', '33308jacobs.orrin@gmail.com', NULL, NULL, 'c548bb9289a0b4ad6a751a099cf51f04b2bfa9beb19a85e7ed50fcb5f8e30698', 'Basic', NULL, '14', '2019-12-22 16:41:38', '2019-12-22 16:41:38', NULL),
(163, '27f55b2d-62f9-3e90-9da0-2de0022243ec', 'Rollin Berge', 'female', '1996-11-05', 'Hindu', 'Therontown', '1387 Kuvalis Inlet\nBatzport, ID 59799', '(205) 866-1997 x368', '5922jada.volkman@hotmail.com', NULL, NULL, '5ade022f8c8f8e4d8063f34330652b2ff194d8fe0f196aba0dc49837ddeb4e7e', 'Premium', NULL, '4', '2019-12-22 16:41:38', '2019-12-22 16:41:38', NULL),
(164, '8cb74966-e1aa-3c65-bcbd-a8ab024938a6', 'Hertha Barton', 'female', '2000-11-09', 'Konghucu', 'North Ewell', '647 Tillman Terrace\nLucieshire, TX 91365-5955', '242.955.1338', '154julia99@hotmail.com', NULL, NULL, 'f1381f4ef270c153f2471182dda82f5525b2d3ef0c17a5ec76d0cb98b718379b', 'Basic', NULL, '15', '2019-12-22 16:41:38', '2019-12-22 16:41:38', NULL),
(165, 'c2794067-014a-30f8-9f02-314633451040', 'Dr. Oda Lehner DDS', 'female', '1991-07-02', 'Budha', 'Huelsport', '1723 Thiel Row\nHesselville, KS 05837-8636', '(216) 816-2974', '9903188retta.nolan@hotmail.com', NULL, NULL, 'ebc445a18c2c9a84899e23d1afbe165c49da62fa4642a9db1ff7063b1d9025e0', 'Premium', NULL, '39', '2019-12-22 16:41:38', '2019-12-22 16:41:38', NULL),
(166, '4ead94ac-aead-3252-b3a6-f8f67db70f14', 'Tavares Denesik', 'female', '2005-12-10', 'Islam', 'Cormiermouth', '62472 Toy Club Suite 289\nNorth Jaquanmouth, LA 60253-1100', '826.796.9488 x193', '411346948kuhn.bettye@gmail.com', NULL, NULL, '811e0fb711b0006c11bbc4d7c6a73f3fcd688e7d423a0e964946c0a9335eae72', 'Basic', NULL, '31', '2019-12-22 16:41:38', '2019-12-22 16:41:38', NULL),
(167, '2bafb774-cc8a-36d8-8508-da39e0c7a1d6', 'Alex Hand', 'male', '2006-05-21', 'Islam', 'Helgaview', '8691 Jake Prairie Apt. 476\nSouth Viviane, MO 17720-7117', '1-829-994-1313 x112', '3416nweissnat@hotmail.com', NULL, NULL, 'fc942929061d8a6eccecd7cabb9491fc30f6e3e89d65a3ebafaa079d063d3112', 'Basic', NULL, '12', '2019-12-22 16:41:38', '2019-12-22 16:41:38', NULL),
(168, 'a1193b12-ac2b-32e2-8362-b80e04c25e85', 'Guy Crona', 'female', '2005-11-13', 'Konghucu', 'Lake Kellen', '17290 Brandi Crossroad\nO\'Keefeshire, WY 06439-9016', '276.376.3796 x3470', '688784tromp.darrell@gmail.com', NULL, NULL, 'd4561d191fe5f848b9d107e259c67465faabcdbfcf977e0bbcfda2f59b655950', 'Basic', NULL, '13', '2019-12-22 16:41:38', '2019-12-22 16:41:38', NULL),
(169, 'bc461438-cd22-32f2-93e0-51a3bcc7c4db', 'Prof. Liza Price', 'female', '1971-04-24', 'Kristen', 'Sarahmouth', '38999 Schmitt Springs\nNew Howell, NY 91629-7261', '1-671-965-7922', '974jerde.wallace@gmail.com', NULL, NULL, '95f40a4ae912e46a9ee9d38f6e945daeef9ce060b9ec7081b71985720073e9b3', 'Premium', NULL, '1', '2019-12-22 16:41:38', '2019-12-22 16:41:38', NULL),
(170, '20cded95-d9e6-3e0b-849d-58dcfe379985', 'Nelle Schuppe', 'male', '1974-01-25', 'Kristen', 'Merlside', '8510 Shirley Trail\nKohlerland, NJ 47123', '325-362-8379 x526', '4422ondricka.daphney@yahoo.com', NULL, NULL, 'bda623037ac0b8fd3b47ea45c03b2b6a93989d030a8162ff157618ba57608ad2', 'Premium', NULL, '28', '2019-12-22 16:41:38', '2019-12-22 16:41:38', NULL),
(171, '575ad6e8-11df-38e8-ad3e-5ad273906da2', 'Lavinia McLaughlin', 'female', '1990-11-21', 'Budha', 'West Kellieville', '40440 Hackett Fall\nCasperstad, DC 73073-8266', '+1 (606) 895-3968', '308129lavada.nolan@hotmail.com', NULL, NULL, 'cb3d47a7eb156aa6abf9b8b7f7f3e609c0eed92a766fd21f47dacde62f05b534', 'Basic', NULL, '28', '2019-12-22 16:41:38', '2019-12-22 16:41:38', NULL),
(172, 'f1ff4976-abf3-3338-a03a-36d01dc86ae8', 'Shyanne Christiansen', 'male', '1972-09-14', 'Hindu', 'East Stellamouth', '8577 Langworth Road Apt. 388\nSouth Leola, CA 31669-0788', '1-513-361-5458 x600', '24wstracke@hotmail.com', NULL, NULL, 'cba9c4690e609fbeeccd1407aeb41d781d18f6230b6204b9af7a90607dd9eeea', 'Basic', NULL, '14', '2019-12-22 16:41:38', '2019-12-22 16:41:38', NULL),
(173, '43b2510b-a29c-3111-a977-5b1d8ad5f4c5', 'Dr. Price Jakubowski', 'male', '1973-07-30', 'Budha', 'Hickleville', '549 Gerhold Locks Suite 293\nOrtizton, KY 80111-9145', '1-601-762-5595 x92543', '853441856crist.rebeka@gmail.com', NULL, NULL, '79c0d12e1e32064d22c3af254eb93e84b9680fb04cd9ff33843573d5f8dedbb6', 'Basic', NULL, '39', '2019-12-22 16:41:38', '2019-12-22 16:41:38', NULL),
(174, 'b604b0ae-88b8-38cf-bd72-736b19ed1ffd', 'Sophia Huels', 'male', '1990-09-13', 'Hindu', 'Hagenesville', '99952 Daniel Center\nNew Constance, VA 96438-7111', '220-567-7739', '489fjohnston@hotmail.com', NULL, NULL, '3ea29a3a104e217cb38b672c9d8cd53799de029c2afddd9fffa671a68818a8ec', 'Premium', NULL, '29', '2019-12-22 16:41:38', '2019-12-22 16:41:38', NULL),
(175, 'aedccecc-672f-3bdb-acbe-8932e3f55cc8', 'Irving Hoppe', 'female', '2003-10-28', 'Konghucu', 'Johnpaulstad', '65065 Skiles Pass Suite 854\nNorth Dorothy, CO 82792-4356', '(360) 556-6652 x879', '325193539oberbrunner.angelita@yahoo.com', NULL, NULL, '87d8ba2844d64fa42a04529113d62a777c57fea007ec82776062e89d739de4ec', 'Premium', NULL, '25', '2019-12-22 16:41:38', '2019-12-22 16:41:38', NULL),
(176, 'b7aa6bf4-9039-399d-94d8-4b358b419fd6', 'Ms. Ocie Miller', 'female', '1977-06-27', 'Budha', 'North Milesville', '652 Kameron Stream\nHaliemouth, WI 74595-4001', '(719) 701-7372 x057', '915sandra.reichel@yahoo.com', NULL, NULL, '45bdb9aa518676fabdbb433b5ef46052aebb2fdd98957c7f36b8a67c0b92403b', 'Basic', NULL, '38', '2019-12-22 16:41:39', '2019-12-22 16:41:39', NULL),
(177, '768f06a6-3280-3763-8657-f1eab0dc4027', 'Mr. Newton Nikolaus II', 'male', '1984-02-12', 'Konghucu', 'New Garrick', '5950 Jairo Extension\nPort Chelsea, NM 56385-3678', '+1-625-345-0194', '6813doyle.mcglynn@gmail.com', NULL, NULL, '619a5affeb5fa8985e8d11b923d6c09a3e12220a9558e9fb7921cd350c17e3af', 'Basic', NULL, '9', '2019-12-22 16:41:39', '2019-12-22 16:41:39', NULL),
(178, 'e0c84090-0d43-3fb3-b615-e5da98b9138f', 'Prof. Raoul Becker PhD', 'male', '1972-06-06', 'Hindu', 'Hilpertchester', '75904 Scotty Bridge Suite 710\nWolffburgh, AR 66553-7467', '1-661-295-9908 x3776', '76139ken59@hotmail.com', NULL, NULL, '4bc02db76ebb3d394ecfb42c3545f0e35b80f2af1ad38e7e1978266c345e7b7a', 'Basic', NULL, '15', '2019-12-22 16:41:39', '2019-12-22 16:41:39', NULL),
(179, '30105fb1-e408-3eea-abd4-430c4a6df142', 'Marietta Bogisich', 'male', '2001-10-23', 'Konghucu', 'Doyleton', '39006 Shanel Overpass Suite 740\nTrompton, OR 47613-4174', '1-843-269-5512 x5801', '845ziemann.fern@gmail.com', NULL, NULL, '9bd3da5f477166e0f2de23e8505a332771252b714ef49a10e339ed0e56f71249', 'Premium', NULL, '40', '2019-12-22 16:41:39', '2019-12-22 16:41:39', NULL),
(180, '3e2da341-75bc-3012-ac0c-03fd7c33fe9f', 'Christopher Shanahan', 'male', '1991-10-09', 'Kristen', 'Brookberg', '991 Labadie Bridge Apt. 458\nLaneshire, IA 55552-3890', '(253) 800-1548', '8336637towne.jasper@hotmail.com', NULL, NULL, '2fc8d74e9df1400ff7348b7ed5036f5603acdda9d23b743b3ee0f9a38ca1a650', 'Basic', NULL, '25', '2019-12-22 16:41:39', '2019-12-22 16:41:39', NULL),
(181, '14f8ce80-94dd-3942-99d9-4780527757fe', 'Anahi Schowalter', 'female', '2007-10-15', 'Konghucu', 'Lake Damaris', '4014 Nelda Hill Suite 240\nPort Eleonore, RI 33447-7852', '1-372-867-9477 x1324', '8729gislason.colby@hotmail.com', NULL, NULL, 'dcaab124a11a8f7303c9fe11db90605d665307ed0c345e18fe258180ff67002d', 'Basic', NULL, '30', '2019-12-22 16:41:39', '2019-12-22 16:41:39', NULL),
(182, '8097630e-0aa8-3a3d-81a3-ed14d3fea3a1', 'Mrs. Savanna Christiansen', 'male', '1980-05-22', 'Islam', 'Manteland', '72209 Garrison Garden\nNadiaville, SC 41419', '797-292-7364 x60117', '698805000ana.brekke@yahoo.com', NULL, NULL, '30b273cfefffa1d183cfb90cce3b3f940d31ded16f85b7899f0ddc00f0950854', 'Basic', NULL, '3', '2019-12-22 16:41:39', '2019-12-22 16:41:39', NULL),
(183, '42ab79ce-1070-3cf6-b99b-5ee973b83e68', 'Dimitri Kassulke', 'male', '1971-01-26', 'Hindu', 'Port Marlin', '9625 Dibbert Ranch\nNorth Llewellynborough, GA 22226', '371-548-6880', '9631280marisa.hamill@gmail.com', NULL, NULL, 'a3b2464895103b6bdb36bcc9a4dbd97b5769c8955d407659e2d576d6d84c5e34', 'Premium', NULL, '7', '2019-12-22 16:41:39', '2019-12-22 16:41:39', NULL),
(184, '1d16f3f6-886d-3176-a101-529966677320', 'Prof. Wyman Harvey', 'female', '1974-05-17', 'Konghucu', 'Lake Jaymestad', '65754 Birdie Circles\nPfefferburgh, DE 85059-5727', '854.418.1350 x32638', '625bbechtelar@yahoo.com', NULL, NULL, 'c8c7e7bf23b8ec1016b70536fde49f1738a0051b74d1cc1d3d640f665d930f32', 'Basic', NULL, '10', '2019-12-22 16:41:39', '2019-12-22 16:41:39', NULL),
(185, '5023a871-258d-3c41-8ad7-9b9b7cd96682', 'Eden Klein', 'female', '1982-09-23', 'Konghucu', 'West Casey', '3051 Lue Fields\nNorth Americaside, PA 54295-8975', '398-772-2664', '104504clarabelle.windler@gmail.com', NULL, NULL, 'caac8cddd017ddd7925aa2cf09a680bd23f1469194d14b6c20385f350a6f7d2b', 'Basic', NULL, '6', '2019-12-22 16:41:39', '2019-12-22 16:41:39', NULL),
(186, 'e39f57ac-09ce-39ad-a5e3-d3fc09e71b35', 'Mr. Evert West MD', 'female', '1990-09-10', 'Budha', 'Vernland', '658 Russel Trafficway\nNorth Henryborough, HI 94441-5786', '(815) 661-5483 x873', '98vdicki@yahoo.com', NULL, NULL, 'e9c940d0561f03dc94517dedf16c797dacda71a903e64a70a35997f6806b9098', 'Basic', NULL, '32', '2019-12-22 16:41:39', '2019-12-22 16:41:39', NULL),
(187, 'e9c5cb69-0655-3e2c-a7fd-4f2aa59874b4', 'Prof. Joel Botsford', 'female', '1980-11-11', 'Islam', 'Port Imani', '7888 Koepp Creek\nPort Waylonberg, OH 97740', '328-817-5004 x6771', '1345hhahn@gmail.com', NULL, NULL, '1853f353c43e5181e45d4cfea4a89bae3ff81e795933a6394b512117536612d7', 'Premium', NULL, '15', '2019-12-22 16:41:39', '2019-12-22 16:41:39', NULL),
(188, '0b40d2e6-db8d-3715-b62e-802c9c31da00', 'Delfina D\'Amore', 'male', '1990-12-24', 'Hindu', 'Huelshire', '26506 Dave Falls Apt. 748\nElveraville, KY 56016-1538', '(643) 621-8843 x4069', '11306shania85@hotmail.com', NULL, NULL, '7413891551de13678d82a52183e5318cc00b9dd08711c2a5b120d2c70d3ea06f', 'Premium', NULL, '7', '2019-12-22 16:41:39', '2019-12-22 16:41:39', NULL),
(189, '25fcbeb0-5597-371a-9a5b-7d46c4ffb7a2', 'Norwood Feil MD', 'male', '1988-11-03', 'Budha', 'Lethashire', '513 Kaelyn Manor Suite 218\nEast Devenchester, WY 80768-3490', '943-479-8059', '76122daphnee28@gmail.com', NULL, NULL, '94e3b08950d6cb4295db81117c63b752f9fb92f4f72055f077b6e2a965bbffb2', 'Basic', NULL, '4', '2019-12-22 16:41:39', '2019-12-22 16:41:39', NULL),
(190, '861c5701-4b18-3043-bada-ce71ebab7c8b', 'Prof. Demarco Crona', 'male', '2004-04-24', 'Konghucu', 'Boganbury', '66375 Casper Via\nSouth Reva, UT 83059-5067', '584-384-9366 x29021', '95890928mayert.buddy@hotmail.com', NULL, NULL, '682056cf61e9e4b19525a189ed3f98b900efa46b992ba1a2dadb4be92f3c7d39', 'Premium', NULL, '12', '2019-12-22 16:41:39', '2019-12-22 16:41:39', NULL),
(191, '5a5b9f23-1939-3f8a-9fda-b5e1da372392', 'Levi Mills III', 'female', '2003-12-07', 'Hindu', 'Port Amber', '126 Eldon Crescent\nHipolitochester, OR 99678', '(308) 647-6155', '170marianna98@gmail.com', NULL, NULL, '98cfe72005ea33489a4ae6c7ebf85fad7bcc8a0632e0553dcec8cd683f82b7f6', 'Basic', NULL, '20', '2019-12-22 16:41:40', '2019-12-22 16:41:40', NULL),
(192, '923e4c60-b296-3222-80ca-42e7f7a9780b', 'Dr. Armani Zulauf I', 'male', '2016-12-11', 'Islam', 'New Guillermoborough', '880 Kiara Common\nMarcellaborough, NJ 97394-3953', '674.903.1379 x4575', '3carmine18@gmail.com', NULL, NULL, 'f19d2a1cd9d993f2267236fd601f2549551ce10d13f7b747e25b4e8d704f92b3', 'Premium', NULL, '37', '2019-12-22 16:41:40', '2019-12-22 16:41:40', NULL),
(193, 'cdaaa6fe-b03d-34d0-9681-c830bd48d905', 'Prof. Brycen Lemke DVM', 'female', '2005-05-14', 'Islam', 'East Laurine', '7422 Taya Estates Apt. 760\nMarciafurt, IA 46955-9665', '1-792-425-5957 x901', '689290884hackett.rosario@gmail.com', NULL, NULL, '256fbfe164473dd015fa7363877641097bd91e04c6f5a388d2b712780d67dbdc', 'Basic', NULL, '16', '2019-12-22 16:41:40', '2019-12-22 16:41:40', NULL),
(194, 'f7a37e05-bcdb-39cf-b600-a6e2138e64c6', 'Mr. Khalil Tremblay III', 'female', '1973-06-18', 'Konghucu', 'Jedidiahland', '28197 Skyla Mills Apt. 780\nSouth Kentonville, NE 19005-3489', '234-292-7276', '1ankunding.stefan@yahoo.com', NULL, NULL, '49d50ad34cc2aebd0a1200f6a961e21d02bd0906ca2567d11bf1cc098be7a314', 'Premium', NULL, '26', '2019-12-22 16:41:40', '2019-12-22 16:41:40', NULL),
(195, '5cc8ec84-e568-38db-863e-d11be60a34fa', 'Olaf Hilpert DVM', 'male', '1988-04-16', 'Konghucu', 'West Alfonsoton', '5238 Cremin Loop Apt. 320\nKaleview, MI 33127-1610', '819.738.7282', '53madison81@gmail.com', NULL, NULL, '9fef1783aeaaaa4fda19d396af907c9ff7ac1747ffeadc595fe8f7a0862979ab', 'Basic', NULL, '35', '2019-12-22 16:41:40', '2019-12-22 16:41:40', NULL),
(196, '647e5b91-548f-315e-87d0-d6df32ba7c03', 'Jack Walker II', 'female', '2014-10-08', 'Budha', 'Dalefort', '945 Junior Square Apt. 487\nNew Norrischester, VT 71522-5151', '794.544.9705 x4064', '35365272rupert63@yahoo.com', NULL, NULL, '2dc3d2e80c188c6b0e940a1047a81275ca1f4602074634e86dbc3126bc155665', 'Basic', NULL, '40', '2019-12-22 16:41:40', '2019-12-22 16:41:40', NULL),
(197, 'd079a1b6-fe07-3ed4-8d83-4f2d890aa499', 'Pat Dickinson', 'female', '2005-09-02', 'Kristen', 'Leilamouth', '2628 Alexandrine Lakes\nMarquisestad, AL 25899-7967', '+1-319-482-6174', '592johan54@gmail.com', NULL, NULL, '556ad17b33d15240bdb770705827567d84fd239ed41bbc80e484b08c86a1f809', 'Basic', NULL, '37', '2019-12-22 16:41:40', '2019-12-22 16:41:40', NULL),
(198, 'ea31e995-284e-3ea8-934c-b073ef92da0e', 'Jaron Marvin', 'male', '1998-12-26', 'Hindu', 'Earlmouth', '405 Waters Flat\nNew Waino, CO 51558-4433', '457.213.3804 x3407', '2130863gibson.kaylin@gmail.com', NULL, NULL, '06473bfcb1a493c0e9df5eedbc24f1cf2d8d1c125cfdb211ddf331a9f9271b1b', 'Premium', NULL, '7', '2019-12-22 16:41:40', '2019-12-22 16:41:40', NULL),
(199, '9c8bca45-16b4-3bbb-b5e7-d0723ccd7181', 'Dr. Carlotta Powlowski', 'female', '2003-02-16', 'Hindu', 'Quintonshire', '1981 Sawayn Shoal Apt. 472\nNew Hillardfort, OH 56673-1722', '(613) 276-1370', '5demond75@yahoo.com', NULL, NULL, '851c096775df03ef6c76b144566c627862c7958c016874c17cd1ccf3ce51f341', 'Premium', NULL, '29', '2019-12-22 16:41:40', '2019-12-22 16:41:40', NULL),
(200, 'faf9c868-ca53-3fda-a0d2-b594310cd6f0', 'Daryl Runolfsdottir', 'male', '1975-05-23', 'Konghucu', 'North Marta', '3945 Joyce Row\nQuigleyburgh, CO 77130-0409', '1-310-417-4400 x009', '403990vwolf@hotmail.com', NULL, NULL, 'd69744275e5ae271bc21820c6d8e31fae8580b2ba2b0baa4c04cb552d960646c', 'Premium', NULL, '7', '2019-12-22 16:41:40', '2019-12-22 16:41:40', NULL);

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
(1, 3, '19b605e2-9325-3cfe-8019-3ae032ce4424', 'Gerda Stanton', 'Female', '1975-12-27', 'Hindu', 'Zoeyfort', '14340 Danika Stream Suite 744\nBaileyfurt, FL 39204', '(852) 663-8864', '881534asha.reynolds@hotmail.com', NULL, NULL, '4371185bc9e579bfb865bd78ab654181bc6e525a9c592205cc867c79c628dd62', 0, NULL, '2019-12-22 16:41:05', '2019-12-22 16:41:05', NULL),
(2, 5, '60c201f9-89d1-342d-a79f-70ea0ad441a4', 'Shanelle Rowe Sr.', 'Male', '1972-01-22', 'Kristen', 'West Carol', '69332 Smitham Drives\nLarkinchester, NC 28770-6937', '393-714-7995 x9073', '484holly.oconner@yahoo.com', NULL, NULL, '5b5979453c2dcb2853fb4cd9f56bff970cceb557918c83dea39b28bcb5788ce7', 0, NULL, '2019-12-22 16:41:05', '2019-12-22 16:41:05', NULL),
(3, 4, '92dead77-efbb-3719-b772-63cbe419b5c4', 'Mrs. Genevieve Rohan IV', 'Male', '1975-02-10', 'Hindu', 'South Yasmine', '662 Kulas Field Apt. 228\nGloverside, AL 77794-3537', '(646) 292-2822', '7410linwood.kozey@gmail.com', NULL, NULL, 'ad36db4a5d196038164b1f523ffd6f4e5e4a8b887bdb6ad513ecc605c43f93d5', 1, NULL, '2019-12-22 16:41:05', '2019-12-22 16:41:05', NULL),
(4, 1, '8e9475a5-81f6-3e5e-8e4c-cf2ec49ec280', 'Mr. Rafael Torphy', 'Male', '2008-09-25', 'Budha', 'Port Emilianoland', '6143 Kendra Corners\nWest Jamil, WY 03647', '974.736.8464 x230', '244719929eliane.flatley@yahoo.com', NULL, NULL, 'cc055f6dc26978840000105aed9eabf053a8b67711b38462a211e06af2b67edf', 0, NULL, '2019-12-22 16:41:06', '2019-12-22 16:41:06', NULL),
(5, 2, 'd37ce809-a0c1-39ff-9509-0efb99e20d43', 'Mollie Kub', 'Male', '2000-09-10', 'Konghucu', 'West Libbie', '1437 Kiley Circles\nSouth Reymundoberg, WI 92325', '1-728-326-2517 x8067', '582011heaney.burdette@yahoo.com', NULL, NULL, 'f1dfed8bd794492524ea09c4acf55631aff67199c2d74da3ad1356b021523bed', 0, NULL, '2019-12-22 16:41:06', '2019-12-22 16:41:06', NULL),
(6, 1, '24e6d2ae-acdb-3f19-a423-23998084fdde', 'Evans Greenfelder', 'Male', '2005-03-23', 'Kristen', 'North Clinton', '9204 Andres Summit\nBotsfordhaven, IA 67609-7104', '1-338-668-3578 x498', '7568abdiel14@hotmail.com', NULL, NULL, '16cc1ede7050d535d912b61ab60793bace10d7a481bda9cd349560057201b8a3', 0, NULL, '2019-12-22 16:41:06', '2019-12-22 16:41:06', NULL),
(7, 5, 'e727eea8-2861-3423-86bd-4652fe764dbd', 'Dr. Mara Trantow', 'Male', '1988-11-02', 'Kristen', 'Luisaton', '4727 Joaquin Junction\nNorth Landen, WV 33846-7423', '436.501.4570', '3158dario.brekke@hotmail.com', NULL, NULL, 'c752632dcda328d19302a560ad314a6f4c03bc7d852c691dbfc39584369cf408', 0, NULL, '2019-12-22 16:41:06', '2019-12-22 16:41:06', NULL),
(8, 2, 'a1010fac-8969-39ff-8c99-c7e515e2b9f8', 'Nick Beer', 'Female', '1982-05-23', 'Hindu', 'Port Jerod', '924 Godfrey Villages\nThaliaton, MN 03103-8985', '558.653.3165', '23alena40@yahoo.com', NULL, NULL, '335599170598321f6dd70f2d18a2388e6965955906102751aa2791164c6d182d', 1, NULL, '2019-12-22 16:41:06', '2019-12-22 16:41:06', NULL),
(9, 1, 'c528b5fd-6964-3871-91a1-4fde29f11e0c', 'Linnie Bins', 'Female', '1986-08-03', 'Konghucu', 'Ziemeland', '432 Stehr Alley Apt. 252\nWisokymouth, NC 20500-5624', '(852) 431-2343 x311', '6lzulauf@hotmail.com', NULL, NULL, '32a6d4c706cfac6ac0236ac9a979bcce31344c970d28ee08b73fb15ea5c822ff', 0, NULL, '2019-12-22 16:41:06', '2019-12-22 16:41:06', NULL),
(10, 1, 'de19d525-2c12-319c-a611-f4bc127a721e', 'Aron Lind I', 'Female', '2015-07-18', 'Hindu', 'West Stanley', '204 Fae Ford\nJaskolskiville, AZ 09478-4174', '(480) 658-1214', '463blick.erika@hotmail.com', NULL, NULL, '50a663cc8a6e322d08d5c98c65378d322a6f79a1d7431e0ccdd03da34e5ecbca', 0, NULL, '2019-12-22 16:41:06', '2019-12-22 16:41:06', NULL),
(11, 3, '595f57bf-c217-320d-b460-0b87ed431498', 'Teresa Daniel', 'Female', '2003-01-11', 'Kristen', 'East Alycehaven', '1327 Raynor Plains\nJanickmouth, MO 88942', '1-723-890-3349 x8934', '838osbaldo.mills@yahoo.com', NULL, NULL, 'b4ab04b6bef82d25244a13d45812a3c45064474403050db4c34caf3bd2fa3de2', 1, NULL, '2019-12-22 16:41:06', '2019-12-22 16:41:06', NULL),
(12, 2, '3c5a5268-0637-39cb-8078-2a186143d2cb', 'Linwood Conroy', 'Male', '2015-12-11', 'Islam', 'Lake Isabelle', '52306 Miguel Mill\nSouth Ronaldohaven, LA 01840', '1-630-215-2796 x312', '114sean.goldner@gmail.com', NULL, NULL, '8c372cb0fe907cbedb458d8a759ef2762dfdc9693d6e2061bf68f7a2445c3cba', 0, NULL, '2019-12-22 16:41:06', '2019-12-22 16:41:06', NULL),
(13, 3, '68f11522-0b68-3842-8515-1cd086e48003', 'Sandra Veum', 'Male', '1993-01-07', 'Kristen', 'Port Cristophermouth', '594 Lemke Freeway Apt. 551\nSchmidtview, ME 69276', '1-510-787-7645', '546hettinger.maurine@hotmail.com', NULL, NULL, 'b8ed1253c798635a73cba2081f519714b5cc9bb6cde8df10c0d19803b08e00c5', 0, NULL, '2019-12-22 16:41:06', '2019-12-22 16:41:06', NULL),
(14, 3, 'c4403419-63fc-3314-9b5f-608f9a9db89f', 'Catharine Bogan', 'Male', '1998-08-20', 'Kristen', 'East Alainaside', '51144 Archibald Wells\nFaeland, ID 85732', '245.590.7601 x18761', '13208684hilda.conn@gmail.com', NULL, NULL, '93d858386550bc9f8b09ac1269c4fe9c75310b17374292f0f961f32b2acb4e58', 1, NULL, '2019-12-22 16:41:06', '2019-12-22 16:41:06', NULL),
(15, 5, 'ab60c17c-64dd-3407-ab34-107e971f9f63', 'Beau Lebsack', 'Male', '1999-11-05', 'Kristen', 'Port Owenbury', '18585 Shaun Walk\nWest Janelleburgh, NJ 01044', '425-700-2052', '2263119andreanne01@yahoo.com', NULL, NULL, '806f6e9909c6b37d74ab16fc46fd1efdc495bbddc4c3da4ed18c657bda7179e4', 0, NULL, '2019-12-22 16:41:06', '2019-12-22 16:41:06', NULL),
(16, 4, '6da161e1-15ca-38e5-aac6-5c58ca4254d1', 'Dr. Oceane Raynor PhD', 'Female', '1976-06-06', 'Budha', 'South Dorisside', '724 Kacey Stream Apt. 910\nLake Stefanside, ME 82982-9699', '439-399-0933 x5199', '238117651meaghan.shanahan@hotmail.com', NULL, NULL, '20fa550a4138f2b9ceadef5a9e1d021b55e2c13748f0a0560d3adae960c5a4c2', 1, NULL, '2019-12-22 16:41:06', '2019-12-22 16:41:06', NULL),
(17, 4, 'f950f316-2dc5-35b3-a003-34c164e3cc24', 'Lisa Swift', 'Male', '1992-03-28', 'Hindu', 'Croninmouth', '22622 Runolfsson Rapid\nEast Kirk, SD 36467-4801', '1-296-528-5607 x97919', '6stephan63@hotmail.com', NULL, NULL, 'fdef8aee0626123372db27d4c29aa8bf402311f5dbe7dcc6d724d64026bccbe5', 1, NULL, '2019-12-22 16:41:06', '2019-12-22 16:41:06', NULL),
(18, 1, 'a88558a2-aae8-3bd6-bf8c-0b80f86d0873', 'Jaylan Stokes MD', 'Male', '1979-05-24', 'Budha', 'Rudolphside', '496 Stehr Roads\nNew Lavada, VT 41853-6677', '264.409.5904 x9159', '81840209aframi@yahoo.com', NULL, NULL, 'e0401db9a426720615f377df1bae71492cdce9f671dab99f79baae19d966ebce', 1, NULL, '2019-12-22 16:41:06', '2019-12-22 16:41:06', NULL),
(19, 1, '2fd0ba45-ea88-37b8-9fec-2ba9323e507e', 'Dr. Juston Brown', 'Male', '2007-03-08', 'Kristen', 'Port Lafayettemouth', '42528 Kulas Flat\nPort Leestad, ND 19734', '(343) 342-0253 x75734', '26836911curt83@hotmail.com', NULL, NULL, 'ecb7b2c6e4f4c286fe2767623474c54a092c889d554c84f5fed930c384f4fba5', 1, NULL, '2019-12-22 16:41:06', '2019-12-22 16:41:06', NULL),
(20, 2, '4d2875c8-e80c-3580-aa14-6eb8aba779b7', 'Mrs. Aiyana Bernhard', 'Female', '2016-06-28', 'Budha', 'New Agnesport', '105 Lela Shore\nSouth Samanta, AZ 85837', '(839) 416-2122', '92164gpredovic@yahoo.com', NULL, NULL, 'b3170ddda05e8e9a81db4f5fe12a87625f54d1eac45608c8775c26a080ce2eed', 1, NULL, '2019-12-22 16:41:07', '2019-12-22 16:41:07', NULL),
(21, 4, 'db115912-be45-3dc1-9712-ac75a986d145', 'Dr. Mackenzie Corkery', 'Male', '1986-11-18', 'Kristen', 'Lake Clotildeview', '9194 Berge Island\nPort Aubree, RI 17345-6130', '+1.719.716.4320', '70782582neva95@yahoo.com', NULL, NULL, '6afea8de586705a4df57db7a9b870296710cf48ec0ec695b66f6d2cb4b047e65', 0, NULL, '2019-12-22 16:41:32', '2019-12-22 16:41:32', NULL),
(22, 6, 'f30d8e49-3545-3523-bb2c-e9a46d012add', 'Fern Donnelly', 'Female', '1987-07-07', 'Hindu', 'Lake Lucienne', '52997 Lind Lodge Suite 554\nCassinville, AR 22900-0175', '+1 (954) 943-3968', '79889kayli79@hotmail.com', NULL, NULL, '395187d9e978bd12fbc49d3a1ee64e6827f35ed2f0c840aa4de7cdaca05b4f6d', 1, NULL, '2019-12-22 16:41:32', '2019-12-22 16:41:32', NULL),
(23, 10, '12e81904-278c-3bf8-a726-3e3a21f4ef2c', 'Stephen Tremblay', 'Female', '1982-06-20', 'Islam', 'Dickinsonburgh', '4837 Bahringer Tunnel Apt. 751\nTrantowton, NC 28841', '307.802.7819', '8831239devonte69@gmail.com', NULL, NULL, 'f390fa020084132b3fb9381a82e23794d14a97eb352158b213da7e8a592c242e', 1, NULL, '2019-12-22 16:41:32', '2019-12-22 16:41:32', NULL),
(24, 9, '357a4436-62bd-3766-8677-aebcbd0cc241', 'Edmund Effertz', 'Male', '1992-10-14', 'Islam', 'North Violette', '913 Frances Forest Suite 711\nNew Michaelland, MO 20860', '730.422.7103 x185', '223135512ffahey@yahoo.com', NULL, NULL, '42bbc491d1c5caf3ca1a2f815e85571da9eacdd7e2d9ac5221fbb5445b2d9647', 1, NULL, '2019-12-22 16:41:32', '2019-12-22 16:41:32', NULL),
(25, 9, '3eb8f0e2-e3ef-3179-bc3c-43abdbdcc81b', 'Freddie Stehr', 'Female', '1989-07-12', 'Konghucu', 'Lake Trycia', '31332 Bret Mount Apt. 330\nDavonland, TX 72183-0458', '742-535-4847', '239990jordy.baumbach@yahoo.com', NULL, NULL, '77a727fb36d489eddfc46254619e1bbc099b42e70fde20c6891c25f80f53b918', 0, NULL, '2019-12-22 16:41:32', '2019-12-22 16:41:32', NULL),
(26, 10, '52174a59-60a5-3719-9625-a126b7fe962f', 'Jessie Gleason', 'Male', '2003-08-29', 'Konghucu', 'East Terrillfort', '83890 Jennifer Light\nWest Melody, GA 29109', '(631) 632-7803 x8923', '0nchamplin@gmail.com', NULL, NULL, '53a95bf9ec9c6bc9d679c9d714a64bbeb849b6e80249bc5f54162bf0993d2946', 0, NULL, '2019-12-22 16:41:33', '2019-12-22 16:41:33', NULL),
(27, 10, 'c8e75c02-17f6-3daa-bf1e-069052e402ac', 'Lucinda Lehner I', 'Female', '1989-05-03', 'Kristen', 'South Jakobhaven', '72565 Keshawn Inlet Apt. 622\nNew Sylviaside, NM 38574', '(216) 979-9164 x6860', '420742angela.goodwin@hotmail.com', NULL, NULL, '2352ec6306e318d8df0fc01472564c61dd56ceac64be2ce73dfd130b8ee71285', 0, NULL, '2019-12-22 16:41:33', '2019-12-22 16:41:33', NULL),
(28, 2, '4c65d769-5e79-3c17-be0a-86de823bb6a9', 'Prof. Raul Mohr II', 'Female', '2002-03-21', 'Konghucu', 'Rosenbaumfort', '9062 Bode Underpass Suite 426\nJoeton, LA 74065', '1-562-334-2172 x93552', '5zgrant@yahoo.com', NULL, NULL, '01d12540577b2466fe30a8f14a20bfcf3cf103c14f6f2dfc08f7e8846be27a92', 0, NULL, '2019-12-22 16:41:33', '2019-12-22 16:41:33', NULL),
(29, 6, '31392384-1523-3338-ad10-7f013d7f95a3', 'Lonie Hand', 'Female', '1993-06-23', 'Hindu', 'New Frederickside', '75250 Brady Island Suite 962\nSouth Gregory, LA 85002', '+1-771-919-0938', '469306isabell.bergstrom@hotmail.com', NULL, NULL, '4c500c1e2beab63311f24094a690fea797bffe9e5d01c7bdf1c513d54ca3d787', 1, NULL, '2019-12-22 16:41:33', '2019-12-22 16:41:33', NULL),
(30, 3, '35fbe88e-ee77-31f1-a9c8-7921e524af6e', 'Prof. Alvena Towne DVM', 'Female', '1973-12-21', 'Islam', 'Tremouth', '44478 Abshire Club Suite 701\nBechtelarland, HI 48152', '+15738207578', '276ispinka@yahoo.com', NULL, NULL, '63fb3a78b3f1971baec0fa2e0dca47c9184f48b8325fa67b46a7116eb665d528', 1, NULL, '2019-12-22 16:41:33', '2019-12-22 16:41:33', NULL),
(31, 7, '404dc161-8ef2-326c-bda4-eb0aed56c458', 'Orrin Hauck', 'Male', '1991-09-24', 'Islam', 'North Alimouth', '43460 Kub Keys Suite 112\nWest Kaseyfort, MS 79001-0119', '+1-813-850-2791', '6hlubowitz@gmail.com', NULL, NULL, '7e94d93e56a07a415e71145d7989d6a5ae8801c673f42bd93bea3f145250b50f', 1, NULL, '2019-12-22 16:41:33', '2019-12-22 16:41:33', NULL),
(32, 6, '18c9ec43-4405-39f1-b25a-42eee5411579', 'Eldridge Zemlak', 'Male', '1987-01-30', 'Islam', 'Hodkiewiczfurt', '71933 Muriel Harbors\nSedrickburgh, CO 56769', '+1.215.623.5190', '956702jward@gmail.com', NULL, NULL, 'aa901442ecb53c9c006827c3e82b80a9f5076721148db1bb193ca4805dde6904', 0, NULL, '2019-12-22 16:41:33', '2019-12-22 16:41:33', NULL),
(33, 8, '54099ce5-444a-3aee-a1c0-d97f3b6a0556', 'Alaina Kris', 'Female', '1970-04-21', 'Islam', 'Jenkinsview', '9727 Christiansen Ferry Suite 800\nMaybellbury, WV 33335', '+1.368.701.6702', '1harley05@yahoo.com', NULL, NULL, '54c457042d24016d720c645d9c98c2ac861a90123ba9374fe3f869ae5d682290', 1, NULL, '2019-12-22 16:41:33', '2019-12-22 16:41:33', NULL),
(34, 6, 'd7314390-31fd-352b-86b7-cb9c86636c0c', 'Arlene Schroeder', 'Female', '2003-05-25', 'Islam', 'West Clydeborough', '34669 Helga Mill Suite 088\nBergebury, NV 74906', '447.819.2166 x3014', '4220809lela19@gmail.com', NULL, NULL, 'f4fbf6c5858d84fea4365b85bd75ce9c03ed25bff0cdd38cac39f01982f31dd9', 0, NULL, '2019-12-22 16:41:33', '2019-12-22 16:41:33', NULL),
(35, 1, '95df6dc3-fbf1-37ba-8c9e-42934d25094c', 'Trent Kilback', 'Male', '1979-04-27', 'Islam', 'Port Enrico', '941 Torp Mission Apt. 136\nMacfort, MA 80844', '720.946.1554', '2404gfarrell@gmail.com', NULL, NULL, 'f0ee3a87ec2ef0b6caa4152688a547a9fa2a39f57dc3f5a0a828043e991d4081', 0, NULL, '2019-12-22 16:41:33', '2019-12-22 16:41:33', NULL),
(36, 1, '53495b17-fe3d-3edc-acf2-f1eb5fe0e2a1', 'Kurt Hane', 'Male', '2015-12-26', 'Islam', 'Port Anderson', '202 McClure Cliffs\nWest Jonathon, IA 33885', '843-491-7601 x38456', '4583nluettgen@gmail.com', NULL, NULL, '07d0efc3085dde49a64d4821a145d94721d946fbca8e1dea3528e4a6bfc714ef', 0, NULL, '2019-12-22 16:41:33', '2019-12-22 16:41:33', NULL),
(37, 4, 'ccfd4159-25c7-32ba-b05b-4fa77c5e82fb', 'Ellis Maggio', 'Female', '2016-08-31', 'Hindu', 'Gulgowskibury', '79716 Nelson Ville Suite 653\nNew Jeffery, NH 99510', '1-787-425-1691', '2ngerlach@yahoo.com', NULL, NULL, '8ba013b8e7010385b932aaf3b0af8c8f16a4f7bb2c565348d58f59bfc6ae9efe', 1, NULL, '2019-12-22 16:41:33', '2019-12-22 16:41:33', NULL),
(38, 8, 'ffe41547-12d8-3979-8af2-161e6b986fa9', 'Ruthie Goldner Jr.', 'Male', '1978-09-16', 'Konghucu', 'New Hudson', '17176 Jerrold Drive Suite 705\nSouth Mallie, GA 74374-1966', '945-594-1232 x428', '5985reta.kessler@gmail.com', NULL, NULL, 'e0d7f8249009ca7b8e3d01663134944e998640e9bd75a434509ee40d045de7e3', 0, NULL, '2019-12-22 16:41:33', '2019-12-22 16:41:33', NULL),
(39, 3, '51de0d03-9a15-39b9-b118-29855ee9771f', 'Samir Emmerich', 'Male', '1979-02-25', 'Konghucu', 'East Sidbury', '118 Nils Islands\nOndrickaburgh, OH 90500', '1-667-657-1861 x119', '6scarlett56@yahoo.com', NULL, NULL, '3e16ea44d96986932a50775b56ebf9c4cd0491f31be2f8e2a5d4b93b88a87c86', 0, NULL, '2019-12-22 16:41:33', '2019-12-22 16:41:33', NULL),
(40, 1, 'd7076c3f-58d0-35b4-95cc-3b576c111f9f', 'Golden Fay DDS', 'Male', '1989-04-10', 'Budha', 'O\'Reillychester', '971 Tierra Station Suite 296\nMaceyshire, CO 14958', '(397) 972-7769', '31286yost.rubye@yahoo.com', NULL, NULL, 'f91882569e1cb2c459b6834a4a555dc12ea5ffb728a96c9b64d1b8f50891032a', 0, NULL, '2019-12-22 16:41:33', '2019-12-22 16:41:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_has_roles`
--

CREATE TABLE `employee_has_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_has_roles`
--

INSERT INTO `employee_has_roles` (`id`, `employee_id`, `role_id`) VALUES
(1, 1, 3),
(2, 1, 3),
(3, 2, 2),
(4, 2, 1),
(5, 3, 3),
(6, 3, 2),
(7, 3, 1),
(8, 4, 2),
(9, 5, 3),
(10, 5, 2),
(11, 5, 1),
(12, 6, 3),
(13, 6, 2),
(14, 6, 2),
(15, 7, 3),
(16, 7, 2),
(17, 7, 2),
(18, 8, 2),
(19, 8, 3),
(20, 9, 2),
(21, 9, 2),
(22, 10, 2),
(23, 10, 3),
(24, 11, 3),
(25, 11, 2),
(26, 11, 1),
(27, 12, 3),
(28, 12, 2),
(29, 12, 2),
(30, 13, 1),
(31, 13, 1),
(32, 13, 3),
(33, 14, 3),
(34, 14, 3),
(35, 14, 1),
(36, 15, 3),
(37, 15, 3),
(38, 15, 2),
(39, 16, 2),
(40, 16, 3),
(41, 17, 3),
(42, 17, 2),
(43, 17, 3),
(44, 18, 2),
(45, 19, 2),
(46, 19, 1),
(47, 20, 1),
(48, 20, 2);

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
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `discount` decimal(3,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_type_id`, `name`, `price`, `stock`, `discount`, `description`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'quod', '699595.00', 48, '0.67', 'Qui quidem quos non porro quo.', '20', '2019-12-22 16:41:22', '2019-12-22 16:42:47', NULL),
(2, 1, 'hic', '437307.00', 0, '0.40', 'Consequatur assumenda exercitationem sequi aut.', '18', '2019-12-22 16:41:22', '2019-12-22 16:42:20', NULL),
(3, 2, 'dolores', '35478.00', 6, '0.62', 'Cum aspernatur eligendi quia consequatur libero.', '7', '2019-12-22 16:41:23', '2019-12-22 16:42:52', NULL),
(4, 2, 'quia', '920004.00', 8, '0.00', 'A omnis occaecati sed ipsum minus.', '1', '2019-12-22 16:41:24', '2019-12-22 16:42:53', NULL),
(5, 2, 'at', '43250.00', 1, '0.00', 'Vitae sunt aspernatur omnis unde.', '9', '2019-12-22 16:41:24', '2019-12-22 16:42:52', NULL),
(6, 1, 'reprehenderit', '641726.00', 0, '0.87', 'Velit illum ut neque quia non quaerat blanditiis.', '19', '2019-12-22 16:41:24', '2019-12-22 16:42:46', NULL),
(7, 1, 'laudantium', '166396.00', 77, '0.00', 'Sed ipsam est et.', '8', '2019-12-22 16:41:24', '2019-12-22 16:41:24', NULL),
(8, 2, 'eos', '988575.00', 15, '0.00', 'Assumenda sit eius eius qui earum dolores.', '19', '2019-12-22 16:41:25', '2019-12-22 16:42:41', NULL),
(9, 2, 'nulla', '625484.00', 19, '0.00', 'Beatae ex voluptas minus in.', '18', '2019-12-22 16:41:25', '2019-12-22 16:42:36', NULL),
(10, 2, 'voluptatem', '271462.00', 0, '0.00', 'Autem ipsa et vel aut.', '18', '2019-12-22 16:41:25', '2019-12-22 16:41:25', NULL),
(11, 2, 'magnam', '715001.00', 28, '0.84', 'Quo sit consectetur consequatur.', '14', '2019-12-22 16:41:25', '2019-12-22 16:42:51', NULL),
(12, 1, 'aut', '513988.00', 0, '0.11', 'Incidunt distinctio sed qui non.', '9', '2019-12-22 16:41:25', '2019-12-22 16:42:22', NULL),
(13, 2, 'illo', '655766.00', 1, '0.25', 'Voluptatem amet sit temporibus quis.', '15', '2019-12-22 16:41:25', '2019-12-22 16:42:52', NULL),
(14, 2, 'laudantium', '929537.00', 5, '0.99', 'Omnis laborum sed quibusdam est.', '13', '2019-12-22 16:41:25', '2019-12-22 16:42:46', NULL),
(15, 2, 'dolor', '700041.00', 0, '0.24', 'Dicta porro officiis corrupti est quos.', '8', '2019-12-22 16:41:25', '2019-12-22 16:42:15', NULL),
(16, 1, 'est', '505819.00', 5, '0.00', 'Adipisci quas sed nam rem minima aut.', '5', '2019-12-22 16:41:25', '2019-12-22 16:42:34', NULL),
(17, 2, 'omnis', '432764.00', 0, '0.00', 'Odio omnis porro quidem.', '13', '2019-12-22 16:41:25', '2019-12-22 16:42:04', NULL),
(18, 2, 'ratione', '141691.00', 28, '0.00', 'Minus ut qui fugiat.', '1', '2019-12-22 16:41:25', '2019-12-22 16:41:25', NULL),
(19, 2, 'hic', '257093.00', 0, '0.29', 'Non et sit ratione.', '14', '2019-12-22 16:41:26', '2019-12-22 16:42:29', NULL),
(20, 1, 'minima', '664827.00', 21, '0.00', 'Delectus sed assumenda maiores laudantium.', '6', '2019-12-22 16:41:26', '2019-12-22 16:42:47', NULL),
(21, 1, 'cumque', '323112.00', 0, '1.00', 'Molestiae saepe quis fuga delectus.', '1', '2019-12-22 16:41:26', '2019-12-22 16:42:48', NULL),
(22, 1, 'natus', '30178.00', 2, '0.15', 'Dolores ab minima quod ducimus tenetur voluptas.', '13', '2019-12-22 16:41:26', '2019-12-22 16:42:33', NULL),
(23, 2, 'fuga', '554850.00', 0, '0.59', 'Mollitia autem voluptatum mollitia dolore et aut.', '13', '2019-12-22 16:41:26', '2019-12-22 16:42:36', NULL),
(24, 2, 'tempore', '418283.00', 0, '0.29', 'Quia ratione voluptas sed animi.', '9', '2019-12-22 16:41:26', '2019-12-22 16:42:35', NULL),
(25, 2, 'expedita', '900330.00', 0, '0.00', 'Aut omnis qui beatae magnam.', '11', '2019-12-22 16:41:26', '2019-12-22 16:41:26', NULL),
(26, 2, 'molestiae', '996784.00', 0, '0.79', 'Culpa accusantium et quis ea inventore explicabo.', '4', '2019-12-22 16:41:26', '2019-12-22 16:42:33', NULL),
(27, 1, 'molestiae', '851401.00', 0, '1.00', 'Aspernatur asperiores et quasi non et sunt.', '5', '2019-12-22 16:41:27', '2019-12-22 16:42:26', NULL),
(28, 1, 'est', '210164.00', 72, '0.00', 'Debitis nisi dolor repellendus fugiat et porro.', '12', '2019-12-22 16:41:27', '2019-12-22 16:41:27', NULL),
(29, 1, 'ut', '604074.00', 3, '0.00', 'Fugiat voluptates qui omnis ullam explicabo.', '10', '2019-12-22 16:41:27', '2019-12-22 16:42:46', NULL),
(30, 1, 'quis', '865492.00', 19, '0.00', 'Sed modi ad ullam dolorem reiciendis autem.', '19', '2019-12-22 16:41:27', '2019-12-22 16:42:08', NULL),
(31, 1, 'possimus', '790593.00', 46, '0.00', 'Et sint saepe voluptatum est deserunt.', '8', '2019-12-22 16:41:27', '2019-12-22 16:41:27', NULL),
(32, 1, 'architecto', '463362.00', 0, '0.00', 'Earum quia hic commodi et.', '2', '2019-12-22 16:41:27', '2019-12-22 16:42:23', NULL),
(33, 1, 'iste', '304563.00', 1, '0.00', 'Ut officiis omnis cumque eos excepturi.', '20', '2019-12-22 16:41:27', '2019-12-22 16:42:43', NULL),
(34, 2, 'tempora', '548747.00', 82, '0.60', 'Ducimus quae qui saepe ex.', '17', '2019-12-22 16:41:27', '2019-12-22 16:42:47', NULL),
(35, 2, 'qui', '175162.00', 3, '0.00', 'Cum vero architecto incidunt aut.', '11', '2019-12-22 16:41:28', '2019-12-22 16:42:36', NULL),
(36, 2, 'veritatis', '918037.00', 0, '0.84', 'Eaque veritatis dolorum non fugiat aut enim et.', '11', '2019-12-22 16:41:28', '2019-12-22 16:42:35', NULL),
(37, 1, 'quis', '930230.00', 0, '0.36', 'Eum et saepe vero eum voluptatibus dolorem.', '18', '2019-12-22 16:41:28', '2019-12-22 16:42:49', NULL),
(38, 2, 'et', '301307.00', 91, '0.00', 'Eos dolor minima assumenda.', '10', '2019-12-22 16:41:28', '2019-12-22 16:42:36', NULL),
(39, 2, 'est', '583656.00', 0, '0.00', 'Amet aut in beatae quia enim non.', '15', '2019-12-22 16:41:28', '2019-12-22 16:42:47', NULL),
(40, 2, 'quis', '897351.00', 0, '0.00', 'Et quis et inventore iste est.', '4', '2019-12-22 16:41:28', '2019-12-22 16:42:43', NULL),
(41, 1, 'sunt', '329287.00', 89, '0.00', 'Et quae ut dolorem inventore dicta a.', '19', '2019-12-22 16:41:28', '2019-12-22 16:42:17', NULL),
(42, 2, 'ut', '927492.00', 9, '0.98', 'Magni quo amet porro quis.', '6', '2019-12-22 16:41:29', '2019-12-22 16:42:49', NULL),
(43, 1, 'explicabo', '623999.00', 0, '0.00', 'Vero mollitia adipisci tempora ullam non.', '12', '2019-12-22 16:41:29', '2019-12-22 16:42:20', NULL),
(44, 1, 'labore', '644165.00', 0, '0.00', 'Quas eum magnam non illo quos ab soluta optio.', '9', '2019-12-22 16:41:29', '2019-12-22 16:42:45', NULL),
(45, 2, 'officia', '936425.00', 0, '0.00', 'Saepe tenetur et enim consequatur.', '2', '2019-12-22 16:41:29', '2019-12-22 16:42:25', NULL),
(46, 1, 'aliquid', '228581.00', 2, '0.00', 'Voluptatum eum aliquam sunt.', '4', '2019-12-22 16:41:29', '2019-12-22 16:42:42', NULL),
(47, 1, 'iure', '807834.00', 49, '0.00', 'Sequi et similique et corrupti et minus.', '4', '2019-12-22 16:41:29', '2019-12-22 16:42:52', NULL),
(48, 1, 'molestiae', '583551.00', 0, '0.55', 'Quasi numquam deserunt tenetur officiis cumque.', '1', '2019-12-22 16:41:29', '2019-12-22 16:42:11', NULL),
(49, 2, 'alias', '812596.00', 4, '0.00', 'Voluptatem ducimus expedita magni maiores.', '3', '2019-12-22 16:41:29', '2019-12-22 16:42:53', NULL),
(50, 2, 'et', '460270.00', 0, '0.00', 'Labore exercitationem voluptas ut rerum quis.', '8', '2019-12-22 16:41:29', '2019-12-22 16:42:31', NULL),
(51, 3, 'ut', '991272.00', 0, '0.26', 'Dolores rerum est at suscipit.', '10', '2019-12-22 16:41:40', '2019-12-22 16:42:51', NULL),
(52, 4, 'autem', '826203.00', 48, '0.00', 'Nesciunt est ratione quia ex quia.', '20', '2019-12-22 16:41:41', '2019-12-22 16:42:33', NULL),
(53, 2, 'saepe', '763235.00', 11, '0.00', 'Ut corporis omnis aut quaerat.', '13', '2019-12-22 16:41:41', '2019-12-22 16:42:25', NULL),
(54, 2, 'velit', '874629.00', 0, '0.00', 'Tempore sit deserunt praesentium qui ut.', '22', '2019-12-22 16:41:41', '2019-12-22 16:42:07', NULL),
(55, 2, 'hic', '976155.00', 4, '0.00', 'Nesciunt consectetur accusantium et voluptatem.', '2', '2019-12-22 16:41:42', '2019-12-22 16:42:20', NULL),
(56, 1, 'quo', '943112.00', 0, '0.00', 'Et et aut nihil assumenda.', '27', '2019-12-22 16:41:42', '2019-12-22 16:42:24', NULL),
(57, 3, 'et', '378102.00', 0, '0.45', 'Ut dolorem dolores at dolores maxime nemo ad.', '23', '2019-12-22 16:41:42', '2019-12-22 16:42:30', NULL),
(58, 2, 'et', '905751.00', 0, '0.00', 'Voluptas enim nesciunt deleniti dolor.', '15', '2019-12-22 16:41:42', '2019-12-22 16:42:21', NULL),
(59, 2, 'quisquam', '31854.00', 9, '0.48', 'Et et placeat minima aut.', '10', '2019-12-22 16:41:42', '2019-12-22 16:42:31', NULL),
(60, 4, 'consectetur', '196560.00', 0, '0.00', 'Sit quia voluptates quia qui.', '9', '2019-12-22 16:41:42', '2019-12-22 16:42:50', NULL),
(61, 3, 'dolores', '904153.00', 0, '0.00', 'Iste ea quo quis amet veniam.', '33', '2019-12-22 16:41:43', '2019-12-22 16:42:45', NULL),
(62, 2, 'aut', '868742.00', 0, '0.00', 'Ut magnam praesentium quia ut.', '23', '2019-12-22 16:41:43', '2019-12-22 16:42:32', NULL),
(63, 2, 'quisquam', '326610.00', 0, '0.00', 'Et ut doloribus tempore.', '21', '2019-12-22 16:41:43', '2019-12-22 16:42:46', NULL),
(64, 4, 'maiores', '629905.00', 68, '0.00', 'Cum nihil aut aliquam voluptatem qui.', '20', '2019-12-22 16:41:44', '2019-12-22 16:42:39', NULL),
(65, 4, 'optio', '524170.00', 73, '0.00', 'Et autem voluptas in.', '35', '2019-12-22 16:41:44', '2019-12-22 16:41:44', NULL),
(66, 2, 'maiores', '670327.00', 0, '0.00', 'Aspernatur fugit sint sequi amet consequatur.', '16', '2019-12-22 16:41:44', '2019-12-22 16:42:37', NULL),
(67, 1, 'cupiditate', '303695.00', 0, '0.51', 'Id debitis consequatur ad impedit odio maiores.', '21', '2019-12-22 16:41:44', '2019-12-22 16:42:50', NULL),
(68, 2, 'dignissimos', '406497.00', 4, '0.00', 'Est doloremque veritatis id placeat fugit vel.', '17', '2019-12-22 16:41:44', '2019-12-22 16:42:42', NULL),
(69, 3, 'rerum', '797736.00', 1, '0.00', 'Dicta delectus ipsam ullam quod fugiat.', '11', '2019-12-22 16:41:44', '2019-12-22 16:42:51', NULL),
(70, 1, 'rerum', '882331.00', 40, '0.00', 'Nostrum quas aut fugit mollitia alias dolor.', '35', '2019-12-22 16:41:44', '2019-12-22 16:42:43', NULL),
(71, 4, 'molestiae', '727405.00', 0, '0.00', 'Nihil quibusdam aut autem quia.', '21', '2019-12-22 16:41:44', '2019-12-22 16:42:16', NULL),
(72, 4, 'molestiae', '674403.00', 4, '0.00', 'Sapiente quidem necessitatibus quis ut debitis.', '5', '2019-12-22 16:41:44', '2019-12-22 16:42:49', NULL),
(73, 4, 'dolores', '333208.00', 0, '0.58', 'Rerum voluptatum repudiandae ex ut aut.', '11', '2019-12-22 16:41:44', '2019-12-22 16:42:17', NULL),
(74, 1, 'non', '888677.00', 36, '0.07', 'Rerum et iusto ut impedit.', '27', '2019-12-22 16:41:45', '2019-12-22 16:42:52', NULL),
(75, 3, 'vel', '961976.00', 0, '0.98', 'Magni sint dolorum minus at quis accusamus.', '2', '2019-12-22 16:41:45', '2019-12-22 16:42:30', NULL),
(76, 1, 'possimus', '358497.00', 0, '0.00', 'A quaerat quasi aliquam at et.', '27', '2019-12-22 16:41:45', '2019-12-22 16:42:42', NULL),
(77, 2, 'est', '173597.00', 0, '0.00', 'Corrupti accusamus laboriosam quaerat.', '22', '2019-12-22 16:41:45', '2019-12-22 16:42:25', NULL),
(78, 4, 'quia', '992044.00', 0, '0.00', 'Harum quia expedita occaecati amet qui sed omnis.', '23', '2019-12-22 16:41:45', '2019-12-22 16:42:30', NULL),
(79, 1, 'ad', '752372.00', 8, '0.00', 'Voluptatibus incidunt sunt eum fugit qui.', '40', '2019-12-22 16:41:45', '2019-12-22 16:42:52', NULL),
(80, 4, 'deleniti', '732724.00', 20, '0.00', 'Voluptates totam est iure perspiciatis.', '39', '2019-12-22 16:41:45', '2019-12-22 16:42:32', NULL),
(81, 4, 'vel', '198940.00', 49, '0.06', 'Ipsam velit sit fuga.', '16', '2019-12-22 16:41:46', '2019-12-22 16:42:28', NULL),
(82, 3, 'sed', '275861.00', 3, '0.61', 'Vel qui dolorem eveniet.', '4', '2019-12-22 16:41:46', '2019-12-22 16:42:27', NULL),
(83, 4, 'neque', '485563.00', 1, '0.62', 'Rerum est dolorem quia id.', '1', '2019-12-22 16:41:46', '2019-12-22 16:42:51', NULL),
(84, 3, 'tempore', '27597.00', 0, '0.00', 'Aut eum amet et sint et.', '34', '2019-12-22 16:41:46', '2019-12-22 16:42:48', NULL),
(85, 2, 'unde', '293164.00', 0, '0.34', 'Esse voluptate sit quia quasi.', '10', '2019-12-22 16:41:46', '2019-12-22 16:42:05', NULL),
(86, 4, 'quo', '65010.00', 5, '0.00', 'Rerum quia esse qui doloremque aut.', '19', '2019-12-22 16:41:46', '2019-12-22 16:42:52', NULL),
(87, 4, 'commodi', '904455.00', 0, '0.00', 'Magnam aut consequatur est dolore illum.', '30', '2019-12-22 16:41:46', '2019-12-22 16:42:29', NULL),
(88, 1, 'sed', '966183.00', 0, '0.00', 'Doloribus ex aut ea sunt vel.', '10', '2019-12-22 16:41:46', '2019-12-22 16:42:33', NULL),
(89, 3, 'et', '245956.00', 15, '0.00', 'Quia quia ut rerum minus consequatur odit soluta.', '30', '2019-12-22 16:41:46', '2019-12-22 16:42:43', NULL),
(90, 3, 'perspiciatis', '526891.00', 0, '0.26', 'Ut consequatur nobis adipisci.', '2', '2019-12-22 16:41:47', '2019-12-22 16:42:18', NULL),
(91, 2, 'enim', '324235.00', 0, '0.11', 'Ipsum quas officiis dicta rerum qui et hic.', '25', '2019-12-22 16:41:47', '2019-12-22 16:42:49', NULL),
(92, 1, 'omnis', '71365.00', 2, '0.62', 'Rerum quos quibusdam assumenda fugiat.', '9', '2019-12-22 16:41:47', '2019-12-22 16:42:48', NULL),
(93, 3, 'ipsa', '988510.00', 1, '0.29', 'At sed quibusdam voluptatem.', '3', '2019-12-22 16:41:47', '2019-12-22 16:42:44', NULL),
(94, 2, 'eius', '168304.00', 10, '0.73', 'Consequatur assumenda consequatur excepturi.', '4', '2019-12-22 16:41:47', '2019-12-22 16:42:45', NULL),
(95, 4, 'aliquam', '70726.00', 0, '0.28', 'Pariatur nobis facilis aut reprehenderit.', '24', '2019-12-22 16:41:47', '2019-12-22 16:42:10', NULL),
(96, 4, 'ullam', '296479.00', 48, '0.41', 'Qui aut quaerat explicabo nemo.', '35', '2019-12-22 16:41:47', '2019-12-22 16:42:42', NULL),
(97, 3, 'quia', '46513.00', 0, '0.16', 'Qui dicta exercitationem minus omnis.', '24', '2019-12-22 16:41:47', '2019-12-22 16:42:35', NULL),
(98, 2, 'omnis', '448622.00', 24, '1.00', 'Rerum quibusdam repellendus rem qui quo.', '19', '2019-12-22 16:41:47', '2019-12-22 16:42:29', NULL),
(99, 2, 'ut', '86716.00', 0, '0.00', 'Praesentium quas dolores nulla.', '8', '2019-12-22 16:41:47', '2019-12-22 16:42:05', NULL),
(100, 1, 'repellat', '275910.00', 0, '0.09', 'Nesciunt suscipit omnis sapiente nisi aliquam.', '21', '2019-12-22 16:41:48', '2019-12-22 16:42:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_histories`
--

CREATE TABLE `item_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_histories`
--

INSERT INTO `item_histories` (`id`, `item_id`, `quantity`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 71, '20', '2019-12-22 16:41:22', '2019-12-22 16:41:22', NULL),
(2, 2, 34, '18', '2019-12-22 16:41:23', '2019-12-22 16:41:23', NULL),
(3, 3, 60, '7', '2019-12-22 16:41:24', '2019-12-22 16:41:24', NULL),
(4, 4, 60, '1', '2019-12-22 16:41:24', '2019-12-22 16:41:24', NULL),
(5, 5, 34, '9', '2019-12-22 16:41:24', '2019-12-22 16:41:24', NULL),
(6, 6, 94, '19', '2019-12-22 16:41:24', '2019-12-22 16:41:24', NULL),
(7, 7, 77, '8', '2019-12-22 16:41:24', '2019-12-22 16:41:24', NULL),
(8, 8, 36, '19', '2019-12-22 16:41:25', '2019-12-22 16:41:25', NULL),
(9, 9, 20, '18', '2019-12-22 16:41:25', '2019-12-22 16:41:25', NULL),
(10, 10, 0, '18', '2019-12-22 16:41:25', '2019-12-22 16:41:25', NULL),
(11, 11, 53, '14', '2019-12-22 16:41:25', '2019-12-22 16:41:25', NULL),
(12, 12, 2, '9', '2019-12-22 16:41:25', '2019-12-22 16:41:25', NULL),
(13, 13, 35, '15', '2019-12-22 16:41:25', '2019-12-22 16:41:25', NULL),
(14, 14, 12, '13', '2019-12-22 16:41:25', '2019-12-22 16:41:25', NULL),
(15, 15, 3, '8', '2019-12-22 16:41:25', '2019-12-22 16:41:25', NULL),
(16, 16, 97, '5', '2019-12-22 16:41:25', '2019-12-22 16:41:25', NULL),
(17, 17, 84, '13', '2019-12-22 16:41:25', '2019-12-22 16:41:25', NULL),
(18, 18, 28, '1', '2019-12-22 16:41:25', '2019-12-22 16:41:25', NULL),
(19, 19, 29, '14', '2019-12-22 16:41:26', '2019-12-22 16:41:26', NULL),
(20, 20, 61, '6', '2019-12-22 16:41:26', '2019-12-22 16:41:26', NULL),
(21, 21, 31, '1', '2019-12-22 16:41:26', '2019-12-22 16:41:26', NULL),
(22, 22, 75, '13', '2019-12-22 16:41:26', '2019-12-22 16:41:26', NULL),
(23, 23, 31, '13', '2019-12-22 16:41:26', '2019-12-22 16:41:26', NULL),
(24, 24, 96, '9', '2019-12-22 16:41:26', '2019-12-22 16:41:26', NULL),
(25, 25, 0, '11', '2019-12-22 16:41:26', '2019-12-22 16:41:26', NULL),
(26, 26, 9, '4', '2019-12-22 16:41:26', '2019-12-22 16:41:26', NULL),
(27, 27, 14, '5', '2019-12-22 16:41:27', '2019-12-22 16:41:27', NULL),
(28, 28, 72, '12', '2019-12-22 16:41:27', '2019-12-22 16:41:27', NULL),
(29, 29, 13, '10', '2019-12-22 16:41:27', '2019-12-22 16:41:27', NULL),
(30, 30, 91, '19', '2019-12-22 16:41:27', '2019-12-22 16:41:27', NULL),
(31, 31, 46, '8', '2019-12-22 16:41:27', '2019-12-22 16:41:27', NULL),
(32, 32, 16, '2', '2019-12-22 16:41:27', '2019-12-22 16:41:27', NULL),
(33, 33, 80, '20', '2019-12-22 16:41:27', '2019-12-22 16:41:27', NULL),
(34, 34, 88, '17', '2019-12-22 16:41:28', '2019-12-22 16:41:28', NULL),
(35, 35, 67, '11', '2019-12-22 16:41:28', '2019-12-22 16:41:28', NULL),
(36, 36, 13, '11', '2019-12-22 16:41:28', '2019-12-22 16:41:28', NULL),
(37, 37, 16, '18', '2019-12-22 16:41:28', '2019-12-22 16:41:28', NULL),
(38, 38, 97, '10', '2019-12-22 16:41:28', '2019-12-22 16:41:28', NULL),
(39, 39, 67, '15', '2019-12-22 16:41:28', '2019-12-22 16:41:28', NULL),
(40, 40, 59, '4', '2019-12-22 16:41:28', '2019-12-22 16:41:28', NULL),
(41, 41, 89, '19', '2019-12-22 16:41:29', '2019-12-22 16:41:29', NULL),
(42, 42, 77, '6', '2019-12-22 16:41:29', '2019-12-22 16:41:29', NULL),
(43, 43, 50, '12', '2019-12-22 16:41:29', '2019-12-22 16:41:29', NULL),
(44, 44, 68, '9', '2019-12-22 16:41:29', '2019-12-22 16:41:29', NULL),
(45, 45, 8, '2', '2019-12-22 16:41:29', '2019-12-22 16:41:29', NULL),
(46, 46, 23, '4', '2019-12-22 16:41:29', '2019-12-22 16:41:29', NULL),
(47, 47, 84, '4', '2019-12-22 16:41:29', '2019-12-22 16:41:29', NULL),
(48, 48, 63, '1', '2019-12-22 16:41:29', '2019-12-22 16:41:29', NULL),
(49, 49, 13, '3', '2019-12-22 16:41:29', '2019-12-22 16:41:29', NULL),
(50, 50, 45, '8', '2019-12-22 16:41:30', '2019-12-22 16:41:30', NULL),
(51, 51, 41, '10', '2019-12-22 16:41:41', '2019-12-22 16:41:41', NULL),
(52, 52, 69, '20', '2019-12-22 16:41:41', '2019-12-22 16:41:41', NULL),
(53, 53, 75, '13', '2019-12-22 16:41:41', '2019-12-22 16:41:41', NULL),
(54, 54, 29, '22', '2019-12-22 16:41:41', '2019-12-22 16:41:41', NULL),
(55, 55, 12, '2', '2019-12-22 16:41:42', '2019-12-22 16:41:42', NULL),
(56, 56, 4, '27', '2019-12-22 16:41:42', '2019-12-22 16:41:42', NULL),
(57, 57, 8, '23', '2019-12-22 16:41:42', '2019-12-22 16:41:42', NULL),
(58, 58, 4, '15', '2019-12-22 16:41:42', '2019-12-22 16:41:42', NULL),
(59, 59, 72, '10', '2019-12-22 16:41:42', '2019-12-22 16:41:42', NULL),
(60, 60, 91, '9', '2019-12-22 16:41:43', '2019-12-22 16:41:43', NULL),
(61, 61, 15, '33', '2019-12-22 16:41:43', '2019-12-22 16:41:43', NULL),
(62, 62, 75, '23', '2019-12-22 16:41:43', '2019-12-22 16:41:43', NULL),
(63, 63, 18, '21', '2019-12-22 16:41:43', '2019-12-22 16:41:43', NULL),
(64, 64, 71, '20', '2019-12-22 16:41:44', '2019-12-22 16:41:44', NULL),
(65, 65, 73, '35', '2019-12-22 16:41:44', '2019-12-22 16:41:44', NULL),
(66, 66, 38, '16', '2019-12-22 16:41:44', '2019-12-22 16:41:44', NULL),
(67, 67, 57, '21', '2019-12-22 16:41:44', '2019-12-22 16:41:44', NULL),
(68, 68, 38, '17', '2019-12-22 16:41:44', '2019-12-22 16:41:44', NULL),
(69, 69, 63, '11', '2019-12-22 16:41:44', '2019-12-22 16:41:44', NULL),
(70, 70, 50, '35', '2019-12-22 16:41:44', '2019-12-22 16:41:44', NULL),
(71, 71, 20, '21', '2019-12-22 16:41:44', '2019-12-22 16:41:44', NULL),
(72, 72, 22, '5', '2019-12-22 16:41:44', '2019-12-22 16:41:44', NULL),
(73, 73, 58, '11', '2019-12-22 16:41:44', '2019-12-22 16:41:44', NULL),
(74, 74, 78, '27', '2019-12-22 16:41:45', '2019-12-22 16:41:45', NULL),
(75, 75, 44, '2', '2019-12-22 16:41:45', '2019-12-22 16:41:45', NULL),
(76, 76, 53, '27', '2019-12-22 16:41:45', '2019-12-22 16:41:45', NULL),
(77, 77, 45, '22', '2019-12-22 16:41:45', '2019-12-22 16:41:45', NULL),
(78, 78, 78, '23', '2019-12-22 16:41:45', '2019-12-22 16:41:45', NULL),
(79, 79, 28, '40', '2019-12-22 16:41:45', '2019-12-22 16:41:45', NULL),
(80, 80, 20, '39', '2019-12-22 16:41:46', '2019-12-22 16:41:46', NULL),
(81, 81, 73, '16', '2019-12-22 16:41:46', '2019-12-22 16:41:46', NULL),
(82, 82, 18, '4', '2019-12-22 16:41:46', '2019-12-22 16:41:46', NULL),
(83, 83, 96, '1', '2019-12-22 16:41:46', '2019-12-22 16:41:46', NULL),
(84, 84, 18, '34', '2019-12-22 16:41:46', '2019-12-22 16:41:46', NULL),
(85, 85, 20, '10', '2019-12-22 16:41:46', '2019-12-22 16:41:46', NULL),
(86, 86, 66, '19', '2019-12-22 16:41:46', '2019-12-22 16:41:46', NULL),
(87, 87, 3, '30', '2019-12-22 16:41:46', '2019-12-22 16:41:46', NULL),
(88, 88, 41, '10', '2019-12-22 16:41:46', '2019-12-22 16:41:46', NULL),
(89, 89, 53, '30', '2019-12-22 16:41:46', '2019-12-22 16:41:46', NULL),
(90, 90, 1, '2', '2019-12-22 16:41:47', '2019-12-22 16:41:47', NULL),
(91, 91, 100, '25', '2019-12-22 16:41:47', '2019-12-22 16:41:47', NULL),
(92, 92, 65, '9', '2019-12-22 16:41:47', '2019-12-22 16:41:47', NULL),
(93, 93, 3, '3', '2019-12-22 16:41:47', '2019-12-22 16:41:47', NULL),
(94, 94, 44, '4', '2019-12-22 16:41:47', '2019-12-22 16:41:47', NULL),
(95, 95, 33, '24', '2019-12-22 16:41:47', '2019-12-22 16:41:47', NULL),
(96, 96, 89, '35', '2019-12-22 16:41:47', '2019-12-22 16:41:47', NULL),
(97, 97, 35, '24', '2019-12-22 16:41:47', '2019-12-22 16:41:47', NULL),
(98, 98, 24, '19', '2019-12-22 16:41:47', '2019-12-22 16:41:47', NULL),
(99, 99, 2, '8', '2019-12-22 16:41:48', '2019-12-22 16:41:48', NULL),
(100, 100, 59, '21', '2019-12-22 16:41:48', '2019-12-22 16:41:48', NULL);

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
(1, 'Accessories', '2', '2019-12-22 16:41:22', '2019-12-22 16:41:22', NULL),
(2, 'Accessories', '18', '2019-12-22 16:41:22', '2019-12-22 16:41:22', NULL),
(3, 'Accessories', '39', '2019-12-22 16:41:40', '2019-12-22 16:41:40', NULL),
(4, 'Clothing', '19', '2019-12-22 16:41:40', '2019-12-22 16:41:40', NULL);

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
(1, 63, '16', '2019-12-22 16:41:30', '2019-12-22 16:41:30', NULL),
(2, 58, '40', '2019-12-22 16:41:48', '2019-12-22 16:41:48', NULL),
(3, 157, '4', '2019-12-22 16:42:02', '2019-12-22 16:42:02', NULL),
(4, 15, '3', '2019-12-22 16:42:03', '2019-12-22 16:42:03', NULL),
(5, 158, '18', '2019-12-22 16:42:03', '2019-12-22 16:42:03', NULL),
(6, 92, '20', '2019-12-22 16:42:04', '2019-12-22 16:42:04', NULL),
(7, 197, '15', '2019-12-22 16:42:05', '2019-12-22 16:42:05', NULL),
(8, 75, '20', '2019-12-22 16:42:05', '2019-12-22 16:42:05', NULL),
(9, 146, '15', '2019-12-22 16:42:06', '2019-12-22 16:42:06', NULL),
(10, 176, '32', '2019-12-22 16:42:07', '2019-12-22 16:42:07', NULL),
(11, 44, '26', '2019-12-22 16:42:08', '2019-12-22 16:42:08', NULL),
(12, 141, '29', '2019-12-22 16:42:08', '2019-12-22 16:42:08', NULL),
(13, 134, '19', '2019-12-22 16:42:09', '2019-12-22 16:42:09', NULL),
(14, 81, '12', '2019-12-22 16:42:10', '2019-12-22 16:42:10', NULL),
(15, 185, '8', '2019-12-22 16:42:11', '2019-12-22 16:42:11', NULL),
(16, 31, '15', '2019-12-22 16:42:12', '2019-12-22 16:42:12', NULL),
(17, 25, '24', '2019-12-22 16:42:12', '2019-12-22 16:42:12', NULL),
(18, 67, '22', '2019-12-22 16:42:13', '2019-12-22 16:42:13', NULL),
(19, 97, '11', '2019-12-22 16:42:14', '2019-12-22 16:42:14', NULL),
(20, 172, '23', '2019-12-22 16:42:15', '2019-12-22 16:42:15', NULL),
(21, 20, '29', '2019-12-22 16:42:15', '2019-12-22 16:42:15', NULL),
(22, 164, '5', '2019-12-22 16:42:16', '2019-12-22 16:42:16', NULL),
(23, 161, '37', '2019-12-22 16:42:16', '2019-12-22 16:42:16', NULL),
(24, 174, '1', '2019-12-22 16:42:17', '2019-12-22 16:42:17', NULL),
(25, 179, '33', '2019-12-22 16:42:18', '2019-12-22 16:42:18', NULL),
(26, 78, '29', '2019-12-22 16:42:19', '2019-12-22 16:42:19', NULL),
(27, 150, '13', '2019-12-22 16:42:19', '2019-12-22 16:42:19', NULL),
(28, 124, '7', '2019-12-22 16:42:19', '2019-12-22 16:42:19', NULL),
(29, 118, '6', '2019-12-22 16:42:20', '2019-12-22 16:42:20', NULL),
(30, 111, '27', '2019-12-22 16:42:21', '2019-12-22 16:42:21', NULL),
(31, 37, '26', '2019-12-22 16:42:21', '2019-12-22 16:42:21', NULL),
(32, 98, '1', '2019-12-22 16:42:22', '2019-12-22 16:42:22', NULL),
(33, 59, '19', '2019-12-22 16:42:22', '2019-12-22 16:42:22', NULL),
(34, 33, '7', '2019-12-22 16:42:22', '2019-12-22 16:42:22', NULL),
(35, 26, '20', '2019-12-22 16:42:23', '2019-12-22 16:42:23', NULL),
(36, 170, '1', '2019-12-22 16:42:23', '2019-12-22 16:42:23', NULL),
(37, 140, '21', '2019-12-22 16:42:24', '2019-12-22 16:42:24', NULL),
(38, 22, '14', '2019-12-22 16:42:24', '2019-12-22 16:42:24', NULL),
(39, 69, '30', '2019-12-22 16:42:25', '2019-12-22 16:42:25', NULL),
(40, 78, '6', '2019-12-22 16:42:25', '2019-12-22 16:42:25', NULL),
(41, 84, '9', '2019-12-22 16:42:26', '2019-12-22 16:42:26', NULL),
(42, 168, '11', '2019-12-22 16:42:27', '2019-12-22 16:42:27', NULL),
(43, 23, '32', '2019-12-22 16:42:28', '2019-12-22 16:42:28', NULL),
(44, 165, '10', '2019-12-22 16:42:28', '2019-12-22 16:42:28', NULL),
(45, 150, '25', '2019-12-22 16:42:29', '2019-12-22 16:42:29', NULL),
(46, 32, '20', '2019-12-22 16:42:29', '2019-12-22 16:42:29', NULL),
(47, 160, '6', '2019-12-22 16:42:30', '2019-12-22 16:42:30', NULL),
(48, 113, '40', '2019-12-22 16:42:30', '2019-12-22 16:42:30', NULL),
(49, 81, '23', '2019-12-22 16:42:31', '2019-12-22 16:42:31', NULL),
(50, 104, '13', '2019-12-22 16:42:31', '2019-12-22 16:42:31', NULL),
(51, 185, '17', '2019-12-22 16:42:31', '2019-12-22 16:42:31', NULL),
(52, 181, '17', '2019-12-22 16:42:32', '2019-12-22 16:42:32', NULL),
(53, 117, '38', '2019-12-22 16:42:32', '2019-12-22 16:42:32', NULL),
(54, 62, '23', '2019-12-22 16:42:33', '2019-12-22 16:42:33', NULL),
(55, 148, '5', '2019-12-22 16:42:33', '2019-12-22 16:42:33', NULL),
(56, 199, '3', '2019-12-22 16:42:34', '2019-12-22 16:42:34', NULL),
(57, 80, '20', '2019-12-22 16:42:35', '2019-12-22 16:42:35', NULL),
(58, 176, '32', '2019-12-22 16:42:35', '2019-12-22 16:42:35', NULL),
(59, 7, '6', '2019-12-22 16:42:36', '2019-12-22 16:42:36', NULL),
(60, 22, '30', '2019-12-22 16:42:36', '2019-12-22 16:42:36', NULL),
(61, 136, '33', '2019-12-22 16:42:36', '2019-12-22 16:42:36', NULL),
(62, 3, '20', '2019-12-22 16:42:37', '2019-12-22 16:42:37', NULL),
(63, 53, '16', '2019-12-22 16:42:37', '2019-12-22 16:42:37', NULL),
(64, 120, '24', '2019-12-22 16:42:38', '2019-12-22 16:42:38', NULL),
(65, 121, '13', '2019-12-22 16:42:38', '2019-12-22 16:42:38', NULL),
(66, 195, '38', '2019-12-22 16:42:39', '2019-12-22 16:42:39', NULL),
(67, 103, '36', '2019-12-22 16:42:39', '2019-12-22 16:42:39', NULL),
(68, 53, '23', '2019-12-22 16:42:39', '2019-12-22 16:42:39', NULL),
(69, 128, '38', '2019-12-22 16:42:40', '2019-12-22 16:42:40', NULL),
(70, 123, '25', '2019-12-22 16:42:40', '2019-12-22 16:42:40', NULL),
(71, 15, '21', '2019-12-22 16:42:41', '2019-12-22 16:42:41', NULL),
(72, 150, '39', '2019-12-22 16:42:41', '2019-12-22 16:42:41', NULL),
(73, 10, '22', '2019-12-22 16:42:42', '2019-12-22 16:42:42', NULL),
(74, 197, '37', '2019-12-22 16:42:42', '2019-12-22 16:42:42', NULL),
(75, 88, '32', '2019-12-22 16:42:43', '2019-12-22 16:42:43', NULL),
(76, 139, '40', '2019-12-22 16:42:43', '2019-12-22 16:42:43', NULL),
(77, 92, '38', '2019-12-22 16:42:44', '2019-12-22 16:42:44', NULL),
(78, 185, '37', '2019-12-22 16:42:44', '2019-12-22 16:42:44', NULL),
(79, 31, '12', '2019-12-22 16:42:45', '2019-12-22 16:42:45', NULL),
(80, 188, '1', '2019-12-22 16:42:45', '2019-12-22 16:42:45', NULL),
(81, 101, '16', '2019-12-22 16:42:46', '2019-12-22 16:42:46', NULL),
(82, 42, '3', '2019-12-22 16:42:46', '2019-12-22 16:42:46', NULL),
(83, 39, '24', '2019-12-22 16:42:46', '2019-12-22 16:42:46', NULL),
(84, 174, '7', '2019-12-22 16:42:47', '2019-12-22 16:42:47', NULL),
(85, 62, '31', '2019-12-22 16:42:47', '2019-12-22 16:42:47', NULL),
(86, 22, '35', '2019-12-22 16:42:47', '2019-12-22 16:42:47', NULL),
(87, 8, '17', '2019-12-22 16:42:48', '2019-12-22 16:42:48', NULL),
(88, 4, '15', '2019-12-22 16:42:48', '2019-12-22 16:42:48', NULL),
(89, 142, '8', '2019-12-22 16:42:49', '2019-12-22 16:42:49', NULL),
(90, 10, '1', '2019-12-22 16:42:49', '2019-12-22 16:42:49', NULL),
(91, 161, '7', '2019-12-22 16:42:50', '2019-12-22 16:42:50', NULL),
(92, 12, '32', '2019-12-22 16:42:50', '2019-12-22 16:42:50', NULL),
(93, 20, '35', '2019-12-22 16:42:51', '2019-12-22 16:42:51', NULL),
(94, 154, '5', '2019-12-22 16:42:51', '2019-12-22 16:42:51', NULL),
(95, 83, '18', '2019-12-22 16:42:51', '2019-12-22 16:42:51', NULL),
(96, 45, '5', '2019-12-22 16:42:51', '2019-12-22 16:42:51', NULL),
(97, 191, '20', '2019-12-22 16:42:52', '2019-12-22 16:42:52', NULL),
(98, 155, '34', '2019-12-22 16:42:52', '2019-12-22 16:42:52', NULL),
(99, 80, '17', '2019-12-22 16:42:52', '2019-12-22 16:42:52', NULL),
(100, 103, '5', '2019-12-22 16:42:52', '2019-12-22 16:42:52', NULL),
(101, 26, '40', '2019-12-22 16:42:53', '2019-12-22 16:42:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_has_items`
--

CREATE TABLE `order_has_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `discount` decimal(3,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_has_items`
--

INSERT INTO `order_has_items` (`id`, `order_id`, `item_id`, `price`, `quantity`, `discount`, `amount`) VALUES
(1, 1, 39, '583656.00', 7, '0.00', '4085592.00'),
(2, 1, 35, '175162.00', 34, '0.00', '5955508.00'),
(3, 1, 33, '304563.00', 59, '0.00', '17969217.00'),
(4, 1, 8, '988575.00', 27, '0.00', '26691525.00'),
(5, 2, 68, '406497.00', 9, '0.00', '3658473.00'),
(6, 2, 22, '30178.00', 22, '0.15', '663916.00'),
(7, 2, 50, '460270.00', 20, '0.00', '9205400.00'),
(8, 2, 17, '432764.00', 56, '0.00', '24234784.00'),
(9, 2, 42, '927492.00', 21, '0.98', '19087785.36'),
(10, 3, 99, '86716.00', 1, '0.00', '86716.00'),
(11, 3, 22, '30178.00', 9, '0.15', '271602.00'),
(12, 3, 17, '432764.00', 6, '0.00', '2596584.00'),
(13, 3, 15, '700041.00', 2, '0.24', '1400082.00'),
(14, 4, 11, '715001.00', 49, '0.84', '29429441.16'),
(15, 4, 12, '513988.00', 2, '0.11', '1027976.00'),
(16, 4, 41, '329287.00', 58, '0.00', '19098646.00'),
(17, 4, 83, '485563.00', 24, '0.62', '7225177.44'),
(18, 4, 69, '797736.00', 54, '0.00', '43077744.00'),
(19, 5, 29, '604074.00', 9, '0.00', '5436666.00'),
(20, 5, 78, '992044.00', 66, '0.00', '65474904.00'),
(21, 5, 3, '35478.00', 16, '0.62', '351941.76'),
(22, 5, 17, '432764.00', 22, '0.00', '9520808.00'),
(23, 5, 45, '936425.00', 4, '0.00', '3745700.00'),
(24, 6, 60, '196560.00', 25, '0.00', '4914000.00'),
(25, 6, 24, '418283.00', 84, '0.29', '35135772.00'),
(26, 6, 95, '70726.00', 4, '0.28', '282904.00'),
(27, 7, 46, '228581.00', 13, '0.00', '2971553.00'),
(28, 7, 94, '168304.00', 9, '0.73', '1105757.28'),
(29, 7, 34, '548747.00', 6, '0.60', '1975489.20'),
(30, 7, 99, '86716.00', 1, '0.00', '86716.00'),
(31, 7, 73, '333208.00', 53, '0.58', '10242813.92'),
(32, 8, 85, '293164.00', 20, '0.34', '5863280.00'),
(33, 8, 47, '807834.00', 2, '0.00', '1615668.00'),
(34, 9, 74, '888677.00', 35, '0.07', '31103695.00'),
(35, 9, 40, '897351.00', 14, '0.00', '12562914.00'),
(36, 9, 84, '27597.00', 14, '0.00', '386358.00'),
(37, 10, 56, '943112.00', 2, '0.00', '1886224.00'),
(38, 10, 86, '65010.00', 21, '0.00', '1365210.00'),
(39, 10, 54, '874629.00', 29, '0.00', '25364241.00'),
(40, 10, 40, '897351.00', 36, '0.00', '32304636.00'),
(41, 10, 13, '655766.00', 14, '0.25', '9180724.00'),
(42, 11, 19, '257093.00', 24, '0.29', '6170232.00'),
(43, 11, 76, '358497.00', 32, '0.00', '11471904.00'),
(44, 11, 30, '865492.00', 72, '0.00', '62315424.00'),
(45, 11, 36, '918037.00', 7, '0.84', '5398057.56'),
(46, 11, 42, '927492.00', 41, '0.98', '37266628.56'),
(47, 12, 15, '700041.00', 1, '0.24', '700041.00'),
(48, 12, 40, '897351.00', 3, '0.00', '2692053.00'),
(49, 12, 20, '664827.00', 58, '0.00', '38559966.00'),
(50, 12, 72, '674403.00', 22, '0.00', '14836866.00'),
(51, 12, 70, '882331.00', 1, '0.00', '882331.00'),
(52, 13, 62, '868742.00', 22, '0.00', '19112324.00'),
(53, 13, 27, '851401.00', 2, '1.00', '1702802.00'),
(54, 13, 95, '70726.00', 29, '0.28', '2051054.00'),
(55, 13, 71, '727405.00', 4, '0.00', '2909620.00'),
(56, 13, 43, '623999.00', 48, '0.00', '29951952.00'),
(57, 14, 75, '961976.00', 1, '0.98', '942736.48'),
(58, 14, 8, '988575.00', 17, '0.00', '16805775.00'),
(59, 14, 62, '868742.00', 49, '0.00', '42568358.00'),
(60, 14, 73, '333208.00', 1, '0.58', '193260.64'),
(61, 15, 48, '583551.00', 63, '0.55', '20220042.15'),
(62, 15, 26, '996784.00', 5, '0.79', '3937296.80'),
(63, 15, 56, '943112.00', 1, '0.00', '943112.00'),
(64, 15, 92, '71365.00', 62, '0.62', '2743270.60'),
(65, 15, 43, '623999.00', 1, '0.00', '623999.00'),
(66, 16, 12, '513988.00', 1, '0.11', '513988.00'),
(67, 16, 91, '324235.00', 38, '0.11', '12320930.00'),
(68, 16, 35, '175162.00', 40, '0.00', '7006480.00'),
(69, 17, 6, '641726.00', 56, '0.87', '31264890.72'),
(70, 17, 89, '245956.00', 19, '0.00', '4673164.00'),
(71, 17, 91, '324235.00', 17, '0.11', '5511995.00'),
(72, 17, 71, '727405.00', 14, '0.00', '10183670.00'),
(73, 18, 66, '670327.00', 21, '0.00', '14076867.00'),
(74, 18, 86, '65010.00', 33, '0.00', '2145330.00'),
(75, 18, 19, '257093.00', 4, '0.29', '1028372.00'),
(76, 18, 84, '27597.00', 1, '0.00', '27597.00'),
(77, 18, 2, '437307.00', 20, '0.40', '8746140.00'),
(78, 19, 60, '196560.00', 43, '0.00', '8452080.00'),
(79, 19, 88, '966183.00', 35, '0.00', '33816405.00'),
(80, 19, 23, '554850.00', 26, '0.59', '8511399.00'),
(81, 19, 38, '301307.00', 86, '0.00', '25912402.00'),
(82, 20, 75, '961976.00', 28, '0.98', '26396621.44'),
(83, 20, 15, '700041.00', 1, '0.24', '700041.00'),
(84, 20, 82, '275861.00', 6, '0.61', '1009651.26'),
(85, 21, 26, '996784.00', 1, '0.79', '787459.36'),
(86, 21, 82, '275861.00', 3, '0.61', '504825.63'),
(87, 21, 89, '245956.00', 3, '0.00', '737868.00'),
(88, 22, 71, '727405.00', 2, '0.00', '1454810.00'),
(89, 22, 66, '670327.00', 13, '0.00', '8714251.00'),
(90, 22, 82, '275861.00', 5, '0.61', '841376.05'),
(91, 23, 90, '526891.00', 1, '0.26', '526891.00'),
(92, 23, 49, '812596.00', 11, '0.00', '8938556.00'),
(93, 23, 41, '329287.00', 60, '0.00', '19757220.00'),
(94, 24, 32, '463362.00', 3, '0.00', '1390086.00'),
(95, 24, 100, '275910.00', 53, '0.09', '14623230.00'),
(96, 24, 40, '897351.00', 4, '0.00', '3589404.00'),
(97, 24, 73, '333208.00', 4, '0.58', '773042.56'),
(98, 24, 76, '358497.00', 1, '0.00', '358497.00'),
(99, 25, 90, '526891.00', 1, '0.26', '526891.00'),
(100, 25, 92, '71365.00', 1, '0.62', '44246.30'),
(101, 25, 68, '406497.00', 7, '0.00', '2845479.00'),
(102, 26, 33, '304563.00', 17, '0.00', '5177571.00'),
(103, 26, 100, '275910.00', 6, '0.09', '1655460.00'),
(104, 26, 13, '655766.00', 18, '0.25', '11803788.00'),
(105, 27, 46, '228581.00', 3, '0.00', '685743.00'),
(106, 28, 55, '976155.00', 8, '0.00', '7809240.00'),
(107, 28, 43, '623999.00', 1, '0.00', '623999.00'),
(108, 29, 78, '992044.00', 8, '0.00', '7936352.00'),
(109, 29, 76, '358497.00', 9, '0.00', '3226473.00'),
(110, 29, 2, '437307.00', 14, '0.40', '6122298.00'),
(111, 30, 77, '173597.00', 37, '0.00', '6423089.00'),
(112, 30, 23, '554850.00', 22, '0.59', '7201953.00'),
(113, 30, 50, '460270.00', 22, '0.00', '10125940.00'),
(114, 30, 8, '988575.00', 4, '0.00', '3954300.00'),
(115, 31, 58, '905751.00', 4, '0.00', '3623004.00'),
(116, 32, 40, '897351.00', 1, '0.00', '897351.00'),
(117, 32, 84, '27597.00', 2, '0.00', '55194.00'),
(118, 32, 66, '670327.00', 1, '0.00', '670327.00'),
(119, 32, 12, '513988.00', 1, '0.11', '513988.00'),
(120, 33, 51, '991272.00', 21, '0.26', '20816712.00'),
(121, 33, 63, '326610.00', 6, '0.00', '1959660.00'),
(122, 34, 22, '30178.00', 8, '0.15', '241424.00'),
(123, 34, 39, '583656.00', 36, '0.00', '21011616.00'),
(124, 34, 32, '463362.00', 13, '0.00', '6023706.00'),
(125, 35, 19, '257093.00', 1, '0.29', '257093.00'),
(126, 35, 51, '991272.00', 4, '0.26', '3965088.00'),
(127, 35, 5, '43250.00', 11, '0.00', '475750.00'),
(128, 36, 39, '583656.00', 3, '0.00', '1750968.00'),
(129, 36, 88, '966183.00', 39, '0.00', '37681137.00'),
(130, 36, 68, '406497.00', 14, '0.00', '5690958.00'),
(131, 37, 77, '173597.00', 6, '0.00', '1041582.00'),
(132, 37, 23, '554850.00', 2, '0.59', '654723.00'),
(133, 37, 20, '664827.00', 16, '0.00', '10637232.00'),
(134, 38, 56, '943112.00', 1, '0.00', '943112.00'),
(135, 38, 27, '851401.00', 10, '1.00', '8514010.00'),
(136, 38, 53, '763235.00', 64, '0.00', '48847040.00'),
(137, 39, 77, '173597.00', 2, '0.00', '347194.00'),
(138, 39, 45, '936425.00', 4, '0.00', '3745700.00'),
(139, 40, 27, '851401.00', 1, '1.00', '851401.00'),
(140, 40, 72, '674403.00', 12, '0.00', '8092836.00'),
(141, 40, 46, '228581.00', 2, '0.00', '457162.00'),
(142, 41, 70, '882331.00', 2, '0.00', '1764662.00'),
(143, 41, 83, '485563.00', 68, '0.62', '20471336.08'),
(144, 41, 63, '326610.00', 4, '0.00', '1306440.00'),
(145, 41, 94, '168304.00', 8, '0.73', '982895.36'),
(146, 41, 27, '851401.00', 2, '1.00', '1702802.00'),
(147, 42, 97, '46513.00', 13, '0.16', '604669.00'),
(148, 42, 57, '378102.00', 4, '0.45', '1512408.00'),
(149, 42, 82, '275861.00', 1, '0.61', '168275.21'),
(150, 42, 49, '812596.00', 7, '0.00', '5688172.00'),
(151, 43, 13, '655766.00', 1, '0.25', '655766.00'),
(152, 43, 67, '303695.00', 3, '0.51', '464653.35'),
(153, 43, 81, '198940.00', 24, '0.06', '4774560.00'),
(154, 44, 96, '296479.00', 16, '0.41', '4743664.00'),
(155, 44, 22, '30178.00', 32, '0.15', '965696.00'),
(156, 44, 49, '812596.00', 1, '0.00', '812596.00'),
(157, 44, 98, '448622.00', 10, '1.00', '4486220.00'),
(158, 45, 87, '904455.00', 3, '0.00', '2713365.00'),
(159, 45, 19, '257093.00', 1, '0.29', '257093.00'),
(160, 45, 63, '326610.00', 7, '0.00', '2286270.00'),
(161, 46, 39, '583656.00', 11, '0.00', '6420216.00'),
(162, 46, 97, '46513.00', 13, '0.16', '604669.00'),
(163, 47, 21, '323112.00', 6, '1.00', '1938672.00'),
(164, 47, 6, '641726.00', 28, '0.87', '15632445.36'),
(165, 47, 78, '992044.00', 4, '0.00', '3968176.00'),
(166, 48, 40, '897351.00', 2, '0.00', '1794702.00'),
(167, 48, 57, '378102.00', 4, '0.45', '1512408.00'),
(168, 48, 49, '812596.00', 1, '0.00', '812596.00'),
(169, 48, 40, '897351.00', 1, '0.00', '897351.00'),
(170, 48, 75, '961976.00', 15, '0.98', '14141047.20'),
(171, 49, 26, '996784.00', 2, '0.79', '1574918.72'),
(172, 50, 50, '460270.00', 3, '0.00', '1380810.00'),
(173, 50, 42, '927492.00', 6, '0.98', '5453652.96'),
(174, 50, 59, '31854.00', 63, '0.48', '2006802.00'),
(175, 51, 16, '505819.00', 65, '0.00', '32878235.00'),
(176, 51, 80, '732724.00', 2, '0.00', '1465448.00'),
(177, 52, 39, '583656.00', 16, '0.00', '9338496.00'),
(178, 52, 35, '175162.00', 15, '0.00', '2627430.00'),
(179, 52, 16, '505819.00', 82, '0.00', '41477158.00'),
(180, 52, 5, '43250.00', 24, '0.00', '1038000.00'),
(181, 52, 62, '868742.00', 4, '0.00', '3474968.00'),
(182, 53, 88, '966183.00', 2, '0.00', '1932366.00'),
(183, 53, 52, '826203.00', 21, '0.00', '17350263.00'),
(184, 53, 22, '30178.00', 34, '0.15', '1026052.00'),
(185, 54, 33, '304563.00', 47, '0.00', '14314461.00'),
(186, 54, 26, '996784.00', 1, '0.79', '787459.36'),
(187, 55, 60, '196560.00', 57, '0.00', '11203920.00'),
(188, 55, 16, '505819.00', 10, '0.00', '5058190.00'),
(189, 55, 51, '991272.00', 10, '0.26', '9912720.00'),
(190, 56, 91, '324235.00', 26, '0.11', '8430110.00'),
(191, 56, 60, '196560.00', 7, '0.00', '1375920.00'),
(192, 57, 97, '46513.00', 9, '0.16', '418617.00'),
(193, 57, 24, '418283.00', 12, '0.29', '5019396.00'),
(194, 58, 36, '918037.00', 6, '0.84', '4626906.48'),
(195, 58, 35, '175162.00', 5, '0.00', '875810.00'),
(196, 58, 37, '930230.00', 10, '0.36', '9302300.00'),
(197, 59, 38, '301307.00', 2, '0.00', '602614.00'),
(198, 59, 66, '670327.00', 1, '0.00', '670327.00'),
(199, 59, 38, '301307.00', 4, '0.00', '1205228.00'),
(200, 60, 35, '175162.00', 4, '0.00', '700648.00'),
(201, 60, 9, '625484.00', 1, '0.00', '625484.00'),
(202, 61, 23, '554850.00', 7, '0.59', '2291530.50'),
(203, 61, 33, '304563.00', 13, '0.00', '3959319.00'),
(204, 62, 67, '303695.00', 49, '0.51', '7589338.05'),
(205, 62, 67, '303695.00', 1, '0.51', '154884.45'),
(206, 62, 79, '752372.00', 20, '0.00', '15047440.00'),
(207, 62, 51, '991272.00', 6, '0.26', '5947632.00'),
(208, 63, 66, '670327.00', 2, '0.00', '1340654.00'),
(209, 63, 91, '324235.00', 18, '0.11', '5836230.00'),
(210, 64, 69, '797736.00', 53, '0.00', '42280008.00'),
(211, 65, 89, '245956.00', 18, '0.00', '4427208.00'),
(212, 65, 96, '296479.00', 84, '0.41', '24904236.00'),
(213, 65, 14, '929537.00', 5, '0.99', '4601208.15'),
(214, 66, 76, '358497.00', 3, '0.00', '1075491.00'),
(215, 66, 64, '629905.00', 3, '0.00', '1889715.00'),
(216, 67, 5, '43250.00', 8, '0.00', '346000.00'),
(217, 67, 5, '43250.00', 1, '0.00', '43250.00'),
(218, 68, 42, '927492.00', 6, '0.98', '5453652.96'),
(219, 69, 5, '43250.00', 10, '0.00', '432500.00'),
(220, 70, 68, '406497.00', 3, '0.00', '1219491.00'),
(221, 70, 14, '929537.00', 8, '0.99', '7361933.04'),
(222, 71, 8, '988575.00', 15, '0.00', '14828625.00'),
(223, 71, 42, '927492.00', 9, '0.98', '8180479.44'),
(224, 71, 67, '303695.00', 3, '0.51', '464653.35'),
(225, 71, 67, '303695.00', 1, '0.51', '154884.45'),
(226, 72, 72, '674403.00', 7, '0.00', '4720821.00'),
(227, 72, 49, '812596.00', 1, '0.00', '812596.00'),
(228, 72, 76, '358497.00', 8, '0.00', '2867976.00'),
(229, 73, 46, '228581.00', 8, '0.00', '1828648.00'),
(230, 73, 68, '406497.00', 4, '0.00', '1625988.00'),
(231, 74, 60, '196560.00', 5, '0.00', '982800.00'),
(232, 74, 96, '296479.00', 41, '0.41', '12155639.00'),
(233, 75, 40, '897351.00', 1, '0.00', '897351.00'),
(234, 75, 69, '797736.00', 7, '0.00', '5584152.00'),
(235, 75, 33, '304563.00', 2, '0.00', '609126.00'),
(236, 75, 89, '245956.00', 16, '0.00', '3935296.00'),
(237, 76, 4, '920004.00', 46, '0.00', '42320184.00'),
(238, 76, 70, '882331.00', 8, '0.00', '7058648.00'),
(239, 77, 3, '35478.00', 10, '0.62', '219963.60'),
(240, 78, 3, '35478.00', 32, '0.62', '703883.52'),
(241, 78, 93, '988510.00', 2, '0.29', '1977020.00'),
(242, 79, 86, '65010.00', 4, '0.00', '260040.00'),
(243, 79, 37, '930230.00', 5, '0.36', '4651150.00'),
(244, 79, 74, '888677.00', 7, '0.07', '6220739.00'),
(245, 79, 44, '644165.00', 68, '0.00', '43803220.00'),
(246, 79, 51, '991272.00', 3, '0.26', '2973816.00'),
(247, 80, 61, '904153.00', 15, '0.00', '13562295.00'),
(248, 80, 94, '168304.00', 17, '0.73', '2088652.64'),
(249, 81, 29, '604074.00', 1, '0.00', '604074.00'),
(250, 81, 6, '641726.00', 10, '0.87', '5583016.20'),
(251, 81, 14, '929537.00', 7, '0.99', '6441691.41'),
(252, 82, 5, '43250.00', 8, '0.00', '346000.00'),
(253, 82, 63, '326610.00', 1, '0.00', '326610.00'),
(254, 83, 34, '548747.00', 52, '0.60', '17120906.40'),
(255, 84, 1, '699595.00', 23, '0.67', '10780758.95'),
(256, 84, 39, '583656.00', 1, '0.00', '583656.00'),
(257, 85, 13, '655766.00', 2, '0.25', '1311532.00'),
(258, 85, 42, '927492.00', 9, '0.98', '8180479.44'),
(259, 86, 20, '664827.00', 24, '0.00', '15955848.00'),
(260, 86, 21, '323112.00', 25, '1.00', '8077800.00'),
(261, 86, 84, '27597.00', 1, '0.00', '27597.00'),
(262, 87, 92, '71365.00', 2, '0.62', '88492.60'),
(263, 88, 83, '485563.00', 11, '0.62', '3311539.66'),
(264, 88, 83, '485563.00', 14, '0.62', '4214686.84'),
(265, 88, 42, '927492.00', 5, '0.98', '4544710.80'),
(266, 88, 47, '807834.00', 31, '0.00', '25042854.00'),
(267, 89, 11, '715001.00', 24, '0.84', '14414420.16'),
(268, 89, 72, '674403.00', 11, '0.00', '7418433.00'),
(269, 90, 91, '324235.00', 27, '0.11', '8754345.00'),
(270, 90, 37, '930230.00', 1, '0.36', '930230.00'),
(271, 91, 60, '196560.00', 4, '0.00', '786240.00'),
(272, 91, 67, '303695.00', 4, '0.51', '619537.80'),
(273, 93, 11, '715001.00', 1, '0.84', '600600.84'),
(274, 95, 69, '797736.00', 2, '0.00', '1595472.00'),
(275, 95, 83, '485563.00', 27, '0.62', '8128324.62'),
(276, 95, 51, '991272.00', 1, '0.26', '991272.00'),
(277, 96, 13, '655766.00', 1, '0.25', '655766.00'),
(278, 96, 47, '807834.00', 33, '0.00', '26658522.00'),
(279, 97, 74, '888677.00', 23, '0.07', '20439571.00'),
(280, 97, 79, '752372.00', 5, '0.00', '3761860.00'),
(281, 98, 86, '65010.00', 3, '0.00', '195030.00'),
(282, 99, 5, '43250.00', 1, '0.00', '43250.00'),
(283, 100, 3, '35478.00', 6, '0.62', '131978.16'),
(284, 100, 4, '920004.00', 6, '0.00', '5520024.00'),
(285, 101, 49, '812596.00', 3, '0.00', '2437788.00');

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
  `card_number` bigint(20) NOT NULL,
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
(1, 5, 1, 4929955736851, '2019-12-23 23:41:31', '54701842.00', 'Canceled', '16', '2019-12-22 16:41:31', '2019-12-22 16:41:31', NULL),
(2, 10, 2, 6011055797681259, '2019-12-23 23:41:49', '56850358.36', 'Completed', '40', '2019-12-22 16:41:49', '2019-12-22 16:41:49', NULL),
(3, 8, 3, 4929016594263473, '2019-12-23 23:42:03', '4354984.00', 'Submitted', '4', '2019-12-22 16:42:03', '2019-12-22 16:42:03', NULL),
(4, 7, 4, 5389280985810348, '2019-12-23 23:42:03', '99858984.60', 'Canceled', '3', '2019-12-22 16:42:03', '2019-12-22 16:42:03', NULL),
(5, 7, 5, 4485346691236767, '2019-12-23 23:42:04', '84530019.76', 'Submitted', '18', '2019-12-22 16:42:04', '2019-12-22 16:42:04', NULL),
(6, 6, 6, 4556441339644805, '2019-12-23 23:42:04', '40332676.00', 'Completed', '20', '2019-12-22 16:42:04', '2019-12-22 16:42:04', NULL),
(7, 6, 7, 2221813677078920, '2019-12-23 23:42:05', '16382329.40', 'Completed', '15', '2019-12-22 16:42:05', '2019-12-22 16:42:05', NULL),
(8, 1, 8, 4556937483052, '2019-12-23 23:42:06', '7478948.00', 'Submitted', '20', '2019-12-22 16:42:06', '2019-12-22 16:42:06', NULL),
(9, 6, 9, 4024007122091324, '2019-12-23 23:42:07', '44052967.00', 'Submitted', '15', '2019-12-22 16:42:07', '2019-12-22 16:42:07', NULL),
(10, 2, 10, 4916969047490512, '2019-12-23 23:42:07', '70101035.00', 'Submitted', '32', '2019-12-22 16:42:07', '2019-12-22 16:42:07', NULL),
(11, 8, 11, 4539052541116821, '2019-12-23 23:42:08', '122622246.12', 'Completed', '26', '2019-12-22 16:42:08', '2019-12-22 16:42:08', NULL),
(12, 8, 12, 2655080559087933, '2019-12-23 23:42:09', '57671257.00', 'Canceled', '29', '2019-12-22 16:42:09', '2019-12-22 16:42:09', NULL),
(13, 5, 13, 345006029086163, '2019-12-23 23:42:10', '55727752.00', 'Submitted', '19', '2019-12-22 16:42:10', '2019-12-22 16:42:10', NULL),
(14, 6, 14, 4539139642937948, '2019-12-23 23:42:11', '60510130.12', 'Completed', '12', '2019-12-22 16:42:11', '2019-12-22 16:42:11', NULL),
(15, 7, 15, 6011286563687127, '2019-12-23 23:42:12', '28467720.55', 'Submitted', '8', '2019-12-22 16:42:12', '2019-12-22 16:42:12', NULL),
(16, 10, 16, 2440855485888904, '2019-12-23 23:42:12', '19841398.00', 'Completed', '15', '2019-12-22 16:42:12', '2019-12-22 16:42:12', NULL),
(17, 7, 17, 4916912625442851, '2019-12-23 23:42:13', '51633719.72', 'Completed', '24', '2019-12-22 16:42:13', '2019-12-22 16:42:13', NULL),
(18, 6, 18, 5108125394256676, '2019-12-23 23:42:14', '26024306.00', 'Submitted', '22', '2019-12-22 16:42:14', '2019-12-22 16:42:14', NULL),
(19, 8, 19, 4485188777611400, '2019-12-23 23:42:15', '76692286.00', 'Canceled', '11', '2019-12-22 16:42:15', '2019-12-22 16:42:15', NULL),
(20, 10, 20, 5251015509007251, '2019-12-23 23:42:15', '28106313.70', 'Submitted', '23', '2019-12-22 16:42:15', '2019-12-22 16:42:15', NULL),
(21, 6, 21, 2221535876453980, '2019-12-23 23:42:16', '2030152.99', 'Completed', '29', '2019-12-22 16:42:16', '2019-12-22 16:42:16', NULL),
(22, 9, 22, 5558265088428861, '2019-12-23 23:42:16', '11010437.05', 'Completed', '5', '2019-12-22 16:42:16', '2019-12-22 16:42:16', NULL),
(23, 7, 23, 4539288044478082, '2019-12-23 23:42:17', '29222667.00', 'Canceled', '37', '2019-12-22 16:42:17', '2019-12-22 16:42:17', NULL),
(24, 10, 24, 4485586472864036, '2019-12-23 23:42:18', '20734259.56', 'Completed', '1', '2019-12-22 16:42:18', '2019-12-22 16:42:18', NULL),
(25, 4, 25, 2720355178106780, '2019-12-23 23:42:19', '3416616.30', 'Submitted', '33', '2019-12-22 16:42:19', '2019-12-22 16:42:19', NULL),
(26, 8, 26, 5479249564489098, '2019-12-23 23:42:19', '18636819.00', 'Submitted', '29', '2019-12-22 16:42:19', '2019-12-22 16:42:19', NULL),
(27, 3, 27, 4024007120132468, '2019-12-23 23:42:19', '685743.00', 'Canceled', '13', '2019-12-22 16:42:19', '2019-12-22 16:42:19', NULL),
(28, 5, 28, 2475776736455491, '2019-12-23 23:42:20', '8433239.00', 'Completed', '7', '2019-12-22 16:42:20', '2019-12-22 16:42:20', NULL),
(29, 10, 29, 4916331405150677, '2019-12-23 23:42:20', '17285123.00', 'Submitted', '6', '2019-12-22 16:42:20', '2019-12-22 16:42:20', NULL),
(30, 3, 30, 4390538578340951, '2019-12-23 23:42:21', '27705282.00', 'Completed', '27', '2019-12-22 16:42:21', '2019-12-22 16:42:21', NULL),
(31, 1, 31, 4909526625612765, '2019-12-23 23:42:22', '3623004.00', 'Submitted', '26', '2019-12-22 16:42:22', '2019-12-22 16:42:22', NULL),
(32, 5, 32, 4024007109861277, '2019-12-23 23:42:22', '2136860.00', 'Submitted', '1', '2019-12-22 16:42:22', '2019-12-22 16:42:22', NULL),
(33, 5, 33, 5436890342417646, '2019-12-23 23:42:22', '22776372.00', 'Completed', '19', '2019-12-22 16:42:22', '2019-12-22 16:42:22', NULL),
(34, 9, 34, 4539614246364, '2019-12-23 23:42:23', '27276746.00', 'Completed', '7', '2019-12-22 16:42:23', '2019-12-22 16:42:23', NULL),
(35, 3, 35, 5345670576844453, '2019-12-23 23:42:23', '4697931.00', 'Canceled', '20', '2019-12-22 16:42:23', '2019-12-22 16:42:23', NULL),
(36, 1, 36, 2221428145379642, '2019-12-23 23:42:24', '45123063.00', 'Completed', '1', '2019-12-22 16:42:24', '2019-12-22 16:42:24', NULL),
(37, 1, 37, 4539055088174350, '2019-12-23 23:42:24', '12333537.00', 'Completed', '21', '2019-12-22 16:42:24', '2019-12-22 16:42:24', NULL),
(38, 9, 38, 5201957926048437, '2019-12-23 23:42:25', '58304162.00', 'Completed', '14', '2019-12-22 16:42:25', '2019-12-22 16:42:25', NULL),
(39, 10, 39, 6011213645137475, '2019-12-23 23:42:25', '4092894.00', 'Submitted', '30', '2019-12-22 16:42:25', '2019-12-22 16:42:25', NULL),
(40, 2, 40, 378517108829265, '2019-12-23 23:42:26', '9401399.00', 'Canceled', '6', '2019-12-22 16:42:26', '2019-12-22 16:42:26', NULL),
(41, 6, 41, 4532317335832470, '2019-12-23 23:42:27', '26228135.44', 'Submitted', '9', '2019-12-22 16:42:27', '2019-12-22 16:42:27', NULL),
(42, 10, 42, 6011312420217112, '2019-12-23 23:42:27', '7973524.21', 'Completed', '11', '2019-12-22 16:42:27', '2019-12-22 16:42:27', NULL),
(43, 7, 43, 4024007191582930, '2019-12-23 23:42:28', '5894979.35', 'Submitted', '32', '2019-12-22 16:42:28', '2019-12-22 16:42:28', NULL),
(44, 6, 44, 4929002993490073, '2019-12-23 23:42:28', '11008176.00', 'Canceled', '10', '2019-12-22 16:42:28', '2019-12-22 16:42:28', NULL),
(45, 5, 45, 5317795980807061, '2019-12-23 23:42:29', '5256728.00', 'Completed', '25', '2019-12-22 16:42:29', '2019-12-22 16:42:29', NULL),
(46, 10, 46, 342380742574984, '2019-12-23 23:42:30', '7024885.00', 'Completed', '20', '2019-12-22 16:42:30', '2019-12-22 16:42:30', NULL),
(47, 10, 47, 4532762759828787, '2019-12-23 23:42:30', '21539293.36', 'Submitted', '6', '2019-12-22 16:42:30', '2019-12-22 16:42:30', NULL),
(48, 1, 48, 4485550219773256, '2019-12-23 23:42:31', '19158104.20', 'Submitted', '40', '2019-12-22 16:42:31', '2019-12-22 16:42:31', NULL),
(49, 10, 49, 4024007153500771, '2019-12-23 23:42:31', '1574918.72', 'Completed', '23', '2019-12-22 16:42:31', '2019-12-22 16:42:31', NULL),
(50, 5, 50, 5506028683945660, '2019-12-23 23:42:31', '8841264.96', 'Submitted', '13', '2019-12-22 16:42:31', '2019-12-22 16:42:31', NULL),
(51, 6, 51, 4532434974331, '2019-12-23 23:42:32', '34343683.00', 'Canceled', '17', '2019-12-22 16:42:32', '2019-12-22 16:42:32', NULL),
(52, 3, 52, 4485651054347, '2019-12-23 23:42:32', '57956052.00', 'Submitted', '17', '2019-12-22 16:42:32', '2019-12-22 16:42:32', NULL),
(53, 6, 53, 6011057755563016, '2019-12-23 23:42:33', '20308681.00', 'Submitted', '38', '2019-12-22 16:42:33', '2019-12-22 16:42:33', NULL),
(54, 2, 54, 4539000256237316, '2019-12-23 23:42:33', '15101920.36', 'Completed', '23', '2019-12-22 16:42:33', '2019-12-22 16:42:33', NULL),
(55, 9, 55, 4532027467965119, '2019-12-23 23:42:34', '26174830.00', 'Completed', '5', '2019-12-22 16:42:34', '2019-12-22 16:42:34', NULL),
(56, 6, 56, 2638532784805127, '2019-12-23 23:42:35', '9806030.00', 'Canceled', '3', '2019-12-22 16:42:35', '2019-12-22 16:42:35', NULL),
(57, 2, 57, 4916976648423651, '2019-12-23 23:42:35', '5438013.00', 'Completed', '20', '2019-12-22 16:42:35', '2019-12-22 16:42:35', NULL),
(58, 6, 58, 4455794334393, '2019-12-23 23:42:35', '14805016.48', 'Completed', '32', '2019-12-22 16:42:35', '2019-12-22 16:42:35', NULL),
(59, 2, 59, 4716482954702905, '2019-12-23 23:42:36', '2478169.00', 'Submitted', '6', '2019-12-22 16:42:36', '2019-12-22 16:42:36', NULL),
(60, 10, 60, 4556407444554874, '2019-12-23 23:42:36', '1326132.00', 'Submitted', '30', '2019-12-22 16:42:36', '2019-12-22 16:42:36', NULL),
(61, 1, 61, 5393092759268429, '2019-12-23 23:42:37', '6250849.50', 'Submitted', '33', '2019-12-22 16:42:37', '2019-12-22 16:42:37', NULL),
(62, 10, 62, 340645412435506, '2019-12-23 23:42:37', '28739294.50', 'Completed', '20', '2019-12-22 16:42:37', '2019-12-22 16:42:37', NULL),
(63, 8, 63, 5328173525943220, '2019-12-23 23:42:37', '7176884.00', 'Submitted', '16', '2019-12-22 16:42:37', '2019-12-22 16:42:37', NULL),
(64, 9, 64, 2221945470773594, '2019-12-23 23:42:38', '42280008.00', 'Completed', '24', '2019-12-22 16:42:38', '2019-12-22 16:42:38', NULL),
(65, 10, 65, 6011564831240410, '2019-12-23 23:42:38', '33932652.15', 'Canceled', '13', '2019-12-22 16:42:38', '2019-12-22 16:42:38', NULL),
(66, 9, 66, 5592404673467657, '2019-12-23 23:42:39', '2965206.00', 'Submitted', '38', '2019-12-22 16:42:39', '2019-12-22 16:42:39', NULL),
(67, 4, 67, 2720844214679744, '2019-12-23 23:42:39', '389250.00', 'Canceled', '36', '2019-12-22 16:42:39', '2019-12-22 16:42:39', NULL),
(68, 3, 68, 6011830309952590, '2019-12-23 23:42:40', '5453652.96', 'Canceled', '23', '2019-12-22 16:42:40', '2019-12-22 16:42:40', NULL),
(69, 2, 69, 5155159501810101, '2019-12-23 23:42:40', '432500.00', 'Canceled', '38', '2019-12-22 16:42:40', '2019-12-22 16:42:40', NULL),
(70, 1, 70, 4716997764640904, '2019-12-23 23:42:41', '8581424.04', 'Canceled', '25', '2019-12-22 16:42:41', '2019-12-22 16:42:41', NULL),
(71, 3, 71, 4716771393169, '2019-12-23 23:42:41', '23628642.24', 'Canceled', '21', '2019-12-22 16:42:41', '2019-12-22 16:42:41', NULL),
(72, 8, 72, 6011524504160204, '2019-12-23 23:42:42', '8401393.00', 'Submitted', '39', '2019-12-22 16:42:42', '2019-12-22 16:42:42', NULL),
(73, 2, 73, 6011849749805861, '2019-12-23 23:42:42', '3454636.00', 'Completed', '22', '2019-12-22 16:42:42', '2019-12-22 16:42:42', NULL),
(74, 9, 74, 349087861522339, '2019-12-23 23:42:42', '13138439.00', 'Completed', '37', '2019-12-22 16:42:42', '2019-12-22 16:42:42', NULL),
(75, 4, 75, 4024007176750635, '2019-12-23 23:42:43', '11025925.00', 'Submitted', '32', '2019-12-22 16:42:43', '2019-12-22 16:42:43', NULL),
(76, 7, 76, 5253967576220829, '2019-12-23 23:42:44', '49378832.00', 'Submitted', '40', '2019-12-22 16:42:44', '2019-12-22 16:42:44', NULL),
(77, 7, 77, 5174419057477979, '2019-12-23 23:42:44', '219963.60', 'Canceled', '38', '2019-12-22 16:42:44', '2019-12-22 16:42:44', NULL),
(78, 1, 78, 346888864909834, '2019-12-23 23:42:44', '2680903.52', 'Submitted', '37', '2019-12-22 16:42:44', '2019-12-22 16:42:44', NULL),
(79, 1, 79, 5370717651207417, '2019-12-23 23:42:45', '57908965.00', 'Submitted', '12', '2019-12-22 16:42:45', '2019-12-22 16:42:45', NULL),
(80, 2, 80, 4916294887797557, '2019-12-23 23:42:46', '15650947.64', 'Completed', '1', '2019-12-22 16:42:46', '2019-12-22 16:42:46', NULL),
(81, 10, 81, 4532527207735284, '2019-12-23 23:42:46', '12628781.61', 'Submitted', '16', '2019-12-22 16:42:46', '2019-12-22 16:42:46', NULL),
(82, 9, 82, 2655824059863065, '2019-12-23 23:42:46', '672610.00', 'Submitted', '3', '2019-12-22 16:42:46', '2019-12-22 16:42:46', NULL),
(83, 7, 83, 2496102751142697, '2019-12-23 23:42:47', '17120906.40', 'Canceled', '24', '2019-12-22 16:42:47', '2019-12-22 16:42:47', NULL),
(84, 2, 84, 4539255721004614, '2019-12-23 23:42:47', '11364414.95', 'Completed', '7', '2019-12-22 16:42:47', '2019-12-22 16:42:47', NULL),
(85, 10, 85, 4929034579491837, '2019-12-23 23:42:47', '9492011.44', 'Canceled', '31', '2019-12-22 16:42:47', '2019-12-22 16:42:47', NULL),
(86, 4, 86, 4485007856445, '2019-12-23 23:42:48', '24061245.00', 'Completed', '35', '2019-12-22 16:42:48', '2019-12-22 16:42:48', NULL),
(87, 10, 87, 4485439327368326, '2019-12-23 23:42:48', '88492.60', 'Canceled', '17', '2019-12-22 16:42:48', '2019-12-22 16:42:48', NULL),
(88, 5, 88, 4532417850971222, '2019-12-23 23:42:49', '37113791.30', 'Canceled', '15', '2019-12-22 16:42:49', '2019-12-22 16:42:49', NULL),
(89, 8, 89, 4532602868303811, '2019-12-23 23:42:49', '21832853.16', 'Completed', '8', '2019-12-22 16:42:49', '2019-12-22 16:42:49', NULL),
(90, 7, 90, 4024007115562356, '2019-12-23 23:42:50', '9684575.00', 'Submitted', '1', '2019-12-22 16:42:50', '2019-12-22 16:42:50', NULL),
(91, 2, 91, 4716563844621395, '2019-12-23 23:42:50', '1405777.80', 'Completed', '7', '2019-12-22 16:42:50', '2019-12-22 16:42:50', NULL),
(92, 6, 92, 5478808492293434, '2019-12-23 23:42:50', '0.00', 'Submitted', '32', '2019-12-22 16:42:50', '2019-12-22 16:42:50', NULL),
(93, 5, 93, 379609205906077, '2019-12-23 23:42:51', '600600.84', 'Completed', '35', '2019-12-22 16:42:51', '2019-12-22 16:42:51', NULL),
(94, 10, 94, 2531169327963721, '2019-12-23 23:42:51', '0.00', 'Canceled', '5', '2019-12-22 16:42:51', '2019-12-22 16:42:51', NULL),
(95, 4, 95, 5280999159782633, '2019-12-23 23:42:51', '10715068.62', 'Completed', '18', '2019-12-22 16:42:51', '2019-12-22 16:42:51', NULL),
(96, 4, 96, 2544896621655703, '2019-12-23 23:42:52', '27314288.00', 'Completed', '5', '2019-12-22 16:42:52', '2019-12-22 16:42:52', NULL),
(97, 2, 97, 2581069765704349, '2019-12-23 23:42:52', '24201431.00', 'Canceled', '20', '2019-12-22 16:42:52', '2019-12-22 16:42:52', NULL),
(98, 5, 98, 4024007196741432, '2019-12-23 23:42:52', '195030.00', 'Completed', '34', '2019-12-22 16:42:52', '2019-12-22 16:42:52', NULL),
(99, 8, 99, 2605727202867761, '2019-12-23 23:42:52', '43250.00', 'Completed', '17', '2019-12-22 16:42:52', '2019-12-22 16:42:52', NULL),
(100, 1, 100, 4539953264458599, '2019-12-23 23:42:53', '5652002.16', 'Completed', '5', '2019-12-22 16:42:53', '2019-12-22 16:42:53', NULL),
(101, 5, 101, 4539348158462940, '2019-12-23 23:42:53', '2437788.00', 'Canceled', '40', '2019-12-22 16:42:53', '2019-12-22 16:42:53', NULL);

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
(1, 'MasterCard', '4', '2019-12-22 16:41:17', '2019-12-22 16:41:17', NULL),
(2, 'MasterCard', '19', '2019-12-22 16:41:17', '2019-12-22 16:41:17', NULL),
(3, 'MasterCard', '5', '2019-12-22 16:41:17', '2019-12-22 16:41:17', NULL),
(4, 'MasterCard', '4', '2019-12-22 16:41:17', '2019-12-22 16:41:17', NULL),
(5, 'Visa', '6', '2019-12-22 16:41:17', '2019-12-22 16:41:17', NULL),
(6, 'MasterCard', '16', '2019-12-22 16:41:33', '2019-12-22 16:41:33', NULL),
(7, 'Visa', '40', '2019-12-22 16:41:33', '2019-12-22 16:41:33', NULL),
(8, 'Visa', '40', '2019-12-22 16:41:33', '2019-12-22 16:41:33', NULL),
(9, 'Visa', '16', '2019-12-22 16:41:34', '2019-12-22 16:41:34', NULL),
(10, 'American Express', '3', '2019-12-22 16:41:34', '2019-12-22 16:41:34', NULL);

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
(1, 'Position.*', '16', '2019-12-22 16:41:07', '2019-12-22 16:41:07', NULL),
(2, 'Position.Create', '16', '2019-12-22 16:41:07', '2019-12-22 16:41:07', NULL),
(3, 'Position.Read', '13', '2019-12-22 16:41:07', '2019-12-22 16:41:07', NULL),
(4, 'Position.Update', '11', '2019-12-22 16:41:07', '2019-12-22 16:41:07', NULL),
(5, 'Position.Delete', '6', '2019-12-22 16:41:07', '2019-12-22 16:41:07', NULL),
(6, 'Employee.*', '9', '2019-12-22 16:41:07', '2019-12-22 16:41:07', NULL),
(7, 'Employee.Create', '10', '2019-12-22 16:41:07', '2019-12-22 16:41:07', NULL),
(8, 'Employee.Read', '2', '2019-12-22 16:41:07', '2019-12-22 16:41:07', NULL),
(9, 'Employee.Update', '6', '2019-12-22 16:41:07', '2019-12-22 16:41:07', NULL),
(10, 'Employee.Delete', '13', '2019-12-22 16:41:07', '2019-12-22 16:41:07', NULL),
(11, 'Role.*', '19', '2019-12-22 16:41:07', '2019-12-22 16:41:07', NULL),
(12, 'Role.Create', '14', '2019-12-22 16:41:08', '2019-12-22 16:41:08', NULL),
(13, 'Role.Read', '19', '2019-12-22 16:41:08', '2019-12-22 16:41:08', NULL),
(14, 'Role.Update', '5', '2019-12-22 16:41:08', '2019-12-22 16:41:08', NULL),
(15, 'Role.Delete', '15', '2019-12-22 16:41:08', '2019-12-22 16:41:08', NULL),
(16, 'Permission.*', '9', '2019-12-22 16:41:08', '2019-12-22 16:41:08', NULL),
(17, 'Permission.Create', '20', '2019-12-22 16:41:08', '2019-12-22 16:41:08', NULL),
(18, 'Permission.Read', '16', '2019-12-22 16:41:08', '2019-12-22 16:41:08', NULL),
(19, 'Permission.Update', '7', '2019-12-22 16:41:08', '2019-12-22 16:41:08', NULL),
(20, 'Permission.Delete', '20', '2019-12-22 16:41:08', '2019-12-22 16:41:08', NULL),
(21, 'Customer.*', '6', '2019-12-22 16:41:08', '2019-12-22 16:41:08', NULL),
(22, 'Customer.Create', '17', '2019-12-22 16:41:08', '2019-12-22 16:41:08', NULL),
(23, 'Customer.Read', '9', '2019-12-22 16:41:08', '2019-12-22 16:41:08', NULL),
(24, 'Customer.Update', '14', '2019-12-22 16:41:08', '2019-12-22 16:41:08', NULL),
(25, 'Customer.Delete', '2', '2019-12-22 16:41:08', '2019-12-22 16:41:08', NULL),
(26, 'ItemType.*', '19', '2019-12-22 16:41:08', '2019-12-22 16:41:08', NULL),
(27, 'ItemType.Create', '11', '2019-12-22 16:41:08', '2019-12-22 16:41:08', NULL),
(28, 'ItemType.Read', '9', '2019-12-22 16:41:08', '2019-12-22 16:41:08', NULL),
(29, 'ItemType.Update', '13', '2019-12-22 16:41:08', '2019-12-22 16:41:08', NULL),
(30, 'ItemType.Delete', '7', '2019-12-22 16:41:08', '2019-12-22 16:41:08', NULL),
(31, 'Item.*', '13', '2019-12-22 16:41:09', '2019-12-22 16:41:09', NULL),
(32, 'Item.Create', '9', '2019-12-22 16:41:09', '2019-12-22 16:41:09', NULL),
(33, 'Item.Read', '4', '2019-12-22 16:41:09', '2019-12-22 16:41:09', NULL),
(34, 'Item.Update', '2', '2019-12-22 16:41:09', '2019-12-22 16:41:09', NULL),
(35, 'Item.Delete', '13', '2019-12-22 16:41:09', '2019-12-22 16:41:09', NULL),
(36, 'ItemHistory.*', '15', '2019-12-22 16:41:09', '2019-12-22 16:41:09', NULL),
(37, 'ItemHistory.Create', '11', '2019-12-22 16:41:09', '2019-12-22 16:41:09', NULL),
(38, 'ItemHistory.Read', '18', '2019-12-22 16:41:09', '2019-12-22 16:41:09', NULL),
(39, 'ItemHistory.Update', '16', '2019-12-22 16:41:09', '2019-12-22 16:41:09', NULL),
(40, 'ItemHistory.Delete', '3', '2019-12-22 16:41:09', '2019-12-22 16:41:09', NULL),
(41, 'Order.*', '3', '2019-12-22 16:41:09', '2019-12-22 16:41:09', NULL),
(42, 'Order.Create', '7', '2019-12-22 16:41:09', '2019-12-22 16:41:09', NULL),
(43, 'Order.Read', '12', '2019-12-22 16:41:09', '2019-12-22 16:41:09', NULL),
(44, 'Order.Update', '14', '2019-12-22 16:41:09', '2019-12-22 16:41:09', NULL),
(45, 'Order.Delete', '18', '2019-12-22 16:41:09', '2019-12-22 16:41:09', NULL),
(46, 'PaymentMethod.*', '3', '2019-12-22 16:41:09', '2019-12-22 16:41:09', NULL),
(47, 'PaymentMethod.Create', '13', '2019-12-22 16:41:09', '2019-12-22 16:41:09', NULL),
(48, 'PaymentMethod.Read', '7', '2019-12-22 16:41:09', '2019-12-22 16:41:09', NULL),
(49, 'PaymentMethod.Update', '4', '2019-12-22 16:41:09', '2019-12-22 16:41:09', NULL),
(50, 'PaymentMethod.Delete', '18', '2019-12-22 16:41:09', '2019-12-22 16:41:09', NULL),
(51, 'Payment.*', '11', '2019-12-22 16:41:10', '2019-12-22 16:41:10', NULL),
(52, 'Payment.Create', '14', '2019-12-22 16:41:10', '2019-12-22 16:41:10', NULL),
(53, 'Payment.Read', '17', '2019-12-22 16:41:10', '2019-12-22 16:41:10', NULL),
(54, 'Payment.Update', '14', '2019-12-22 16:41:10', '2019-12-22 16:41:10', NULL),
(55, 'Payment.Delete', '20', '2019-12-22 16:41:10', '2019-12-22 16:41:10', NULL);

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
(1, 'Telephone Operator', '0', '2019-12-22 16:41:05', '2019-12-22 16:41:05', NULL),
(2, 'Electrical Engineer', '7', '2019-12-22 16:41:05', '2019-12-22 16:41:05', NULL),
(3, 'Welder', '5', '2019-12-22 16:41:05', '2019-12-22 16:41:05', NULL),
(4, 'Employment Interviewer', '10', '2019-12-22 16:41:05', '2019-12-22 16:41:05', NULL),
(5, 'Electro-Mechanical Technician', '7', '2019-12-22 16:41:05', '2019-12-22 16:41:05', NULL),
(6, 'Deburring Machine Operator', '2', '2019-12-22 16:41:32', '2019-12-22 16:41:32', NULL),
(7, 'Train Crew', '3', '2019-12-22 16:41:32', '2019-12-22 16:41:32', NULL),
(8, 'Product Promoter', '4', '2019-12-22 16:41:32', '2019-12-22 16:41:32', NULL),
(9, 'Aerospace Engineer', '7', '2019-12-22 16:41:32', '2019-12-22 16:41:32', NULL),
(10, 'Occupational Health Safety Technician', '1', '2019-12-22 16:41:32', '2019-12-22 16:41:32', NULL);

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
(1, 'Admin', '14', '2019-12-22 16:41:07', '2019-12-22 16:41:07', NULL),
(2, 'Operator', '13', '2019-12-22 16:41:07', '2019-12-22 16:41:07', NULL),
(3, 'Cashier', '15', '2019-12-22 16:41:07', '2019-12-22 16:41:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`id`, `role_id`, `permission_id`) VALUES
(1, 1, 52),
(2, 2, 32),
(3, 2, 18),
(4, 2, 10),
(5, 2, 54),
(6, 2, 50),
(7, 2, 55),
(8, 2, 33),
(9, 2, 48),
(10, 2, 9),
(11, 2, 49),
(12, 2, 52),
(13, 2, 53),
(14, 2, 13),
(15, 2, 3),
(16, 2, 3),
(17, 2, 42),
(18, 2, 51),
(19, 2, 5),
(20, 2, 22),
(21, 2, 49),
(22, 2, 3),
(23, 2, 47),
(24, 2, 20),
(25, 2, 47),
(26, 2, 54),
(27, 2, 14),
(28, 2, 43),
(29, 2, 43),
(30, 2, 19),
(31, 3, 34),
(32, 3, 12),
(33, 3, 34),
(34, 3, 12),
(35, 3, 9),
(36, 3, 16),
(37, 3, 51),
(38, 3, 8),
(39, 3, 1),
(40, 3, 41),
(41, 3, 45),
(42, 3, 45),
(43, 3, 37),
(44, 3, 50),
(45, 3, 40),
(46, 3, 4),
(47, 3, 28),
(48, 3, 42),
(49, 3, 40),
(50, 3, 20),
(51, 3, 4),
(52, 3, 20),
(53, 3, 21),
(54, 3, 39),
(55, 3, 30),
(56, 3, 3),
(57, 3, 51),
(58, 3, 52),
(59, 3, 40),
(60, 3, 18),
(61, 3, 4),
(62, 3, 47),
(63, 3, 14),
(64, 3, 10),
(65, 3, 48),
(66, 3, 4),
(67, 3, 23),
(68, 3, 28),
(69, 3, 51),
(70, 3, 5);

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
('checkPayment', '\"Canceled\"'),
('menuPermission', '{\"menu\":[\"Position.\",\"Employee.\",\"Role.\",\"Permission.\",\"Customer.\",\"ItemType.\",\"Item.\",\"ItemHistory.\",\"Order.\",\"PaymentMethod.\",\"Payment.\"],\"permission\":[\"*\",\"Create\",\"Read\",\"Update\",\"Delete\"]}');

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
  ADD PRIMARY KEY (`id`),
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
  ADD PRIMARY KEY (`id`),
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
  ADD PRIMARY KEY (`id`),
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `employee_has_roles`
--
ALTER TABLE `employee_has_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `order_has_items`
--
ALTER TABLE `order_has_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
