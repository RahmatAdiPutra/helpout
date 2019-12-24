-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2019 at 04:34 AM
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
(1, NULL, 'Customer', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 'Default', NULL, NULL, '2019-12-23 09:29:46', '2019-12-23 09:29:46', NULL),
(2, '0484d9e9-5c1b-3176-bd50-1a2baf4e5206', 'Prof. Jordy Lemke II', 'female', '2014-03-07', 'Islam', 'Delfinamouth', '778 Labadie Trace Suite 314\nPort Willard, AR 77069', '783.523.3383 x582', '30douglas.esteban@gmail.com', NULL, NULL, '14151da09d584390431e5cd17823702ff2e9fb53955d64bb1df71138e3aa85e3', 'Premium', NULL, '18', '2019-12-23 09:29:47', '2019-12-23 09:29:47', NULL),
(3, '4c54abb8-31ce-3e25-ae12-da11c9626114', 'Dejah Barton', 'female', '1982-09-29', 'Konghucu', 'Candidofurt', '3453 Howe Fields\nTorreymouth, MT 29709', '590-930-1822 x512', '587smith.ralph@gmail.com', NULL, NULL, '31a041cc274db0572104cbd7623f7a1ae6ea6f3a799d752de766892a0deacf7f', 'Premium', NULL, '8', '2019-12-23 09:29:47', '2019-12-23 09:29:47', NULL),
(4, '0c88b573-5143-33d9-bd63-1504716ed63a', 'Alda Volkman I', 'female', '1994-11-15', 'Islam', 'Lake Bella', '262 Janelle Street Apt. 359\nDarionmouth, NV 62523', '(830) 418-7575', '9908602theresa.sporer@gmail.com', NULL, NULL, 'a81314766afca86afaae2f4db37df4103b26622d22553e51557d54678c8452f3', 'Premium', NULL, '18', '2019-12-23 09:29:47', '2019-12-23 09:29:47', NULL),
(5, 'f3837231-7066-3b04-81bf-60f1049f9df2', 'Charlotte Sipes', 'male', '2010-05-05', 'Hindu', 'Johnsstad', '21005 Bridget Crescent Suite 235\nVonRuedenburgh, WI 16914', '+1.504.457.9250', '83288berry15@yahoo.com', NULL, NULL, '19df14e45ac5605ce010fcd7f907dae96c7a924ae6296a6c8be12f7c376b733d', 'Premium', NULL, '8', '2019-12-23 09:29:47', '2019-12-23 09:29:47', NULL),
(6, '6bee0b25-0100-306d-895a-74cd81de155c', 'Prof. Vaughn Smitham II', 'female', '1971-12-19', 'Islam', 'East Eloisestad', '87463 Elda Club\nLake Lenorahaven, SC 31765-9816', '1-786-740-5680 x740', '8yblock@hotmail.com', NULL, NULL, '993a355fd43e26044e4f57be15359b76078a27d4370852e447cc8a05dd372ac6', 'Basic', NULL, '18', '2019-12-23 09:29:47', '2019-12-23 09:29:47', NULL),
(7, '4b5ecc1b-3acf-34ea-a162-cc083145ae1b', 'Mrs. Shanie Beer', 'male', '2018-02-10', 'Islam', 'DuBuqueborough', '294 Maximillia Oval\nMrazmouth, AL 95126-1175', '(257) 924-7234 x697', '9942melody96@yahoo.com', NULL, NULL, '594748aadad36cf803f1faf3db24a24db51eba3d928fc6a1088a389058ee3e29', 'Premium', NULL, '5', '2019-12-23 09:29:47', '2019-12-23 09:29:47', NULL),
(8, 'c322730a-3fe0-34bc-a7c9-7fd21617bdcf', 'Prof. Kody Murazik', 'male', '2001-07-01', 'Konghucu', 'Sengertown', '107 Alejandra Trace Suite 132\nNorth Barbarafort, ME 53639-8749', '(547) 681-0297 x4788', '89rmarks@gmail.com', NULL, NULL, '97a3011afe096527c3697050a3ba598519cea39b9cf663acc76a5b56da3ad02d', 'Basic', NULL, '18', '2019-12-23 09:29:47', '2019-12-23 09:29:47', NULL),
(9, '337f268d-3bd0-3217-9a18-3ae627e1604c', 'Dorris Brekke', 'male', '2002-09-10', 'Budha', 'Nathenborough', '596 Fahey Ports Suite 492\nNorth Robynmouth, DE 12071-1362', '515.760.5587 x1326', '30207ukris@hotmail.com', NULL, NULL, 'a4e6e5e514de0f516f9a2513841577dbda903511bc5bbbfe8a8afe21c7783057', 'Premium', NULL, '20', '2019-12-23 09:29:47', '2019-12-23 09:29:47', NULL),
(10, 'a3705d5d-df70-3469-baeb-39979dc266bb', 'Amya Becker', 'male', '1983-09-12', 'Kristen', 'North Benedict', '3892 Bruen Isle\nNorth Donavonmouth, NH 00769', '734.380.7803 x684', '56garland.trantow@gmail.com', NULL, NULL, 'a6fee437f42e9e9bd1dcccc78f4bc8c27a93bb04aa4b75504ba76097b7d171f7', 'Premium', NULL, '20', '2019-12-23 09:29:47', '2019-12-23 09:29:47', NULL),
(11, '655ea38d-b476-3d1a-ac30-15f323b670a1', 'Wanda Jones', 'male', '1985-04-11', 'Budha', 'West Joanastad', '21223 Ryley Mountain\nPort Damarisland, AZ 32645-9482', '+15948669982', '72amanda62@yahoo.com', NULL, NULL, 'afada016f8ad4ca4b9610dd061d83fb1319efc019eaf20d85b819ebbd8dc0beb', 'Basic', NULL, '7', '2019-12-23 09:29:47', '2019-12-23 09:29:47', NULL),
(12, '37c7c21d-1656-3bea-a0cc-0d8c14aea4aa', 'Ibrahim Bernier', 'female', '1993-11-20', 'Islam', 'Weberfurt', '4543 Victoria Place Apt. 640\nFranciscastad, IA 01998', '+17377874129', '6436343norris.zieme@gmail.com', NULL, NULL, '91c61cc07eec9881cf14406a4e32ea44ae09b0fe9b4220d46b2d3426f88784ea', 'Basic', NULL, '7', '2019-12-23 09:29:47', '2019-12-23 09:29:47', NULL),
(13, '8aff1b23-b8b3-3813-9795-1773a8acc9e8', 'Prof. Clinton Eichmann Sr.', 'male', '2005-09-30', 'Budha', 'Danton', '75981 Karelle Center\nPort Elizafurt, GA 97034-4625', '1-772-754-4288 x8022', '5627272hcummings@yahoo.com', NULL, NULL, '285450e753f38246a264b7ac2506b09654d3191edc009ef16de499bd522b27b7', 'Basic', NULL, '1', '2019-12-23 09:29:47', '2019-12-23 09:29:47', NULL),
(14, '0096352c-ed72-3313-9fb6-3738eaeebb35', 'Angelina Leuschke', 'female', '1976-04-02', 'Hindu', 'New Lottieburgh', '55053 Padberg Junctions Suite 154\nConnellyton, WY 38848', '1-961-949-5828', '551dlowe@yahoo.com', NULL, NULL, 'f1d65d58a5718a287fd0137c8e647678943d0f351c6433416f23e128bbcdc694', 'Basic', NULL, '20', '2019-12-23 09:29:47', '2019-12-23 09:29:47', NULL),
(15, '86cb26a8-8e3f-3b7a-8696-88720b359cad', 'Emma Hermann', 'male', '2019-05-11', 'Islam', 'South Lylaside', '57682 Reynold Neck Suite 190\nSelmerside, NY 16926-8594', '+1.835.889.3692', '83311bessie04@gmail.com', NULL, NULL, '3b41287a0eb6556e02e3b9b8aa97652b6bde9f355c119870660b6029fd84bedb', 'Basic', NULL, '2', '2019-12-23 09:29:47', '2019-12-23 09:29:47', NULL),
(16, '3cf16512-6b93-3614-bb83-f6065250f4fd', 'Gilda Huel', 'female', '2012-06-11', 'Konghucu', 'Billystad', '2092 Robel Well Apt. 775\nLittleside, NM 78234', '+1.754.729.2611', '64hayden45@hotmail.com', NULL, NULL, 'b77f9bc895990953686ccc8bd70cdd6824bf279bb4cda25d0861b53a6018401b', 'Premium', NULL, '7', '2019-12-23 09:29:47', '2019-12-23 09:29:47', NULL),
(17, 'ae6e14e9-b795-32d5-9de8-76ff626a6139', 'Dr. Brooklyn Larson', 'male', '1995-08-23', 'Konghucu', 'New Oralchester', '719 Stracke Plain\nEveberg, AK 03492-4716', '+1-838-345-4240', '95001435kgulgowski@hotmail.com', NULL, NULL, '47bf1e118386ae8f3a5b74edd929c71db39d17da45d755594fb9203f05659701', 'Basic', NULL, '16', '2019-12-23 09:29:47', '2019-12-23 09:29:47', NULL),
(18, 'a97447a1-13c3-3da3-af16-cc41db208932', 'Dr. Eldora Wunsch DDS', 'male', '1977-04-24', 'Konghucu', 'South Alda', '69522 Littel Underpass Apt. 828\nSouth Tracy, NH 09802', '+1 (395) 377-8543', '149bkiehn@yahoo.com', NULL, NULL, '82520e2e4cbcf0c24291b782c762157109e4dd5629da523c99e129df5be9e752', 'Premium', NULL, '11', '2019-12-23 09:29:47', '2019-12-23 09:29:47', NULL),
(19, '3aefa9bc-b945-33f2-998d-bc9a35e5c1b6', 'Casimer Walsh', 'female', '2017-08-13', 'Konghucu', 'North Valerie', '5863 Jed Freeway\nFisherbury, NJ 74091', '815.852.9664', '180103jude.kunde@hotmail.com', NULL, NULL, 'c48125b2b3696462519b4e02203f92fb21fa0ec92b46548684833cd380539d0c', 'Basic', NULL, '1', '2019-12-23 09:29:47', '2019-12-23 09:29:47', NULL),
(20, '713eda88-89b9-33a3-aeb3-fd89d0cb307b', 'Myrtie Daniel', 'female', '1985-05-09', 'Budha', 'Geneside', '11269 Hagenes Drives Apt. 755\nPort Johnpaul, WI 63162-8987', '757-878-1435 x693', '6815wunsch.chandler@hotmail.com', NULL, NULL, '68bf7cbe5e00dafda07b4b500b24618a6445fd438f1084ca886ec404aee0c6d0', 'Basic', NULL, '16', '2019-12-23 09:29:48', '2019-12-23 09:29:48', NULL),
(21, 'ba970023-9755-390c-9c2f-987f62e119ff', 'Marianna Douglas PhD', 'female', '2000-10-24', 'Islam', 'Lake Madalyn', '293 Murray Canyon\nSouth Kattieshire, WI 08488-7106', '(437) 487-2413 x966', '8humberto50@hotmail.com', NULL, NULL, '9d0b87b6259a29945fa7bcb8dfd5b172daf28f398462a91ea30d1fbf4d156432', 'Premium', NULL, '8', '2019-12-23 09:29:48', '2019-12-23 09:29:48', NULL),
(22, '8319c099-a0c9-328b-9945-05937d786928', 'Dr. Sydnee Muller Sr.', 'male', '2018-09-16', 'Budha', 'South Ivah', '15182 Dewitt Drive\nPort Briana, MN 30998', '848-270-9077 x2594', '4571492harris.joyce@yahoo.com', NULL, NULL, 'd02369c8d82c44f822e61da85522585471c84baf9995387b1370624b993e1f02', 'Premium', NULL, '9', '2019-12-23 09:29:48', '2019-12-23 09:29:48', NULL),
(23, '9410d3b3-492b-3562-a9a7-85076c6e906b', 'Lynn Feeney', 'female', '2018-01-29', 'Konghucu', 'Kaitlynside', '5712 Cora Trail\nLittelland, TX 61633-0215', '1-618-377-2249', '94022barton.jacynthe@hotmail.com', NULL, NULL, '9ac10823f5910a0e78c351a0dc441adf9608b3a90dbc7f118c59fa4fa1e4767e', 'Basic', NULL, '8', '2019-12-23 09:29:48', '2019-12-23 09:29:48', NULL),
(24, '76fb38d3-bfa2-3bdb-ae72-8b73127f3232', 'Santa McGlynn', 'male', '1973-10-27', 'Islam', 'Port Annabell', '9293 Liam Rest\nYundtland, HI 24791', '1-548-448-2590 x584', '404vonrueden.nora@yahoo.com', NULL, NULL, '93a8ec405cbb01782bab905d78e0e0e034959de8c93d05163d7be09a14ca3774', 'Premium', NULL, '3', '2019-12-23 09:29:48', '2019-12-23 09:29:48', NULL),
(25, '9ea6b505-f236-3c11-b170-28a3aa8101d3', 'Ms. Carmela Russel PhD', 'female', '2018-10-22', 'Kristen', 'Rodolfoside', '22030 Hauck Fords\nTremblayshire, RI 25102-7190', '317-409-6043', '35837851lwalker@hotmail.com', NULL, NULL, 'f866da759f81514a231e8276096b3b1ed7e648c65bb97750d5c1592b37115e1a', 'Basic', NULL, '12', '2019-12-23 09:29:48', '2019-12-23 09:29:48', NULL),
(26, 'de2e0375-3f02-32e8-b5ce-5c80bbc0164b', 'Prof. Charlie Haley III', 'male', '2008-08-25', 'Kristen', 'Dachport', '63750 Jamal Valleys\nMadalinetown, ID 02403-0720', '871.968.7352 x742', '20301otto12@gmail.com', NULL, NULL, 'f2283994983b13d566a7511ac402f9fb8b6f67d10e807dc542d20e507cf08ce8', 'Basic', NULL, '14', '2019-12-23 09:29:48', '2019-12-23 09:29:48', NULL),
(27, '3a883310-47c7-39b5-9030-4b87a716e54d', 'Maryam Hackett', 'male', '1986-07-27', 'Konghucu', 'Daughertymouth', '176 Turner Squares Apt. 461\nEast Jonton, IN 60526', '563.570.6657 x8207', '7933cremin.lynn@yahoo.com', NULL, NULL, '7a1696269b0e99cb6dc1fae658eb4b92c8977770c473e5f9b2be96055da94da8', 'Basic', NULL, '9', '2019-12-23 09:29:48', '2019-12-23 09:29:48', NULL),
(28, 'd56767ca-a789-33d7-8ea2-dc3e3f0e6e00', 'Kaleigh Goodwin', 'female', '1982-11-22', 'Kristen', 'New Thora', '6971 Breitenberg Parkway Apt. 434\nPort Devanteberg, IA 75524-5548', '398.238.9654 x82141', '19vilma35@gmail.com', NULL, NULL, 'b75b2abbe23241d3cd6a1437b96cd5439cdffe90680d70179852cdd047d02b6d', 'Basic', NULL, '14', '2019-12-23 09:29:48', '2019-12-23 09:29:48', NULL),
(29, 'a30b4fde-7559-3b2d-84ce-2f687bd5bb50', 'Verona Littel', 'male', '1988-05-02', 'Budha', 'West Enid', '70304 Elwin Mews Apt. 330\nLabadieland, GA 17938', '1-809-716-9134 x2027', '2051304rocio.schroeder@yahoo.com', NULL, NULL, 'b53f5bb1e9a5eff0f28153e2853f562bce75c1e864532797b420fdd6765afd1e', 'Basic', NULL, '8', '2019-12-23 09:29:48', '2019-12-23 09:29:48', NULL),
(30, '5b6825fd-4f1a-3594-8f27-df7dd6744128', 'Jeffry Glover', 'male', '1978-11-20', 'Budha', 'South Dolly', '1125 Zachariah Island Suite 740\nCollinshaven, NM 88399-6463', '+13058043912', '98228434noemy73@yahoo.com', NULL, NULL, '12349b200f3fe9faa3d3a29990310d7f2b7524d21cbe74693e682351d3ee47ff', 'Basic', NULL, '2', '2019-12-23 09:29:48', '2019-12-23 09:29:48', NULL),
(31, '897487cf-03e9-3540-8683-70bb31713764', 'Elisa Gusikowski', 'male', '2004-08-21', 'Hindu', 'Johnsonville', '529 Batz Manor\nPort Dashawnberg, TX 92713-4372', '1-607-537-1220 x13589', '636369563lucie98@gmail.com', NULL, NULL, 'fcd62d8172253e3a842fdb711819c245c2a118c4bfa628446a3784cfa459374a', 'Basic', NULL, '19', '2019-12-23 09:29:48', '2019-12-23 09:29:48', NULL),
(32, '773d2bb2-2327-38ed-9e91-28c6fa9cdc28', 'Kaelyn Gerhold', 'male', '1977-09-11', 'Budha', 'Kertzmannland', '204 Haylie Inlet\nBricefurt, NY 67415', '(756) 226-9888 x172', '3windler.boris@gmail.com', NULL, NULL, 'bb78f78f803561965b28ac0a215d9b19496d105fc12f6cb47858197f2270d819', 'Basic', NULL, '10', '2019-12-23 09:29:48', '2019-12-23 09:29:48', NULL),
(33, 'c1c17dd0-7622-370c-9968-870e1e203915', 'Hope Hand', 'female', '1980-08-12', 'Konghucu', 'Mayertshire', '3048 Chet Unions Apt. 028\nMonahanbury, VA 58706', '542-329-0024 x496', '581523391dell78@yahoo.com', NULL, NULL, 'fdabe85991799c640f991ccd54d56a2e865ee1749a05854f1640c9d1ac633df1', 'Premium', NULL, '15', '2019-12-23 09:29:48', '2019-12-23 09:29:48', NULL),
(34, 'e4ef1c7f-86f4-3399-9f67-8b1f46b4c724', 'Tremaine O\'Reilly', 'female', '1972-10-06', 'Kristen', 'Port Fredrick', '46495 Reyes Canyon\nSouth Olintown, DC 59182', '+19024713120', '5531ewhite@gmail.com', NULL, NULL, 'ac670cb809f64094bcec3d8e5456f2e1dd94fcc2dc8e566b049713758684a0d3', 'Basic', NULL, '2', '2019-12-23 09:29:48', '2019-12-23 09:29:48', NULL),
(35, 'be86db87-9b81-3531-973e-a50bd9b1d22d', 'Denis Conn', 'female', '2006-04-27', 'Budha', 'North Kaiaberg', '80690 Baylee Plaza\nLake Darleneburgh, DC 02323', '248.612.3647', '637052vhoppe@hotmail.com', NULL, NULL, '868a11628354bd299ed9c3b7986fd60fbf3ff1b0806985df5c40cb874bbfec55', 'Basic', NULL, '5', '2019-12-23 09:29:48', '2019-12-23 09:29:48', NULL),
(36, '16bccbfb-6bd3-3960-af61-00744a1c2d3a', 'Skye Treutel', 'male', '2002-08-04', 'Konghucu', 'East Ettie', '66599 Zella Crest Apt. 301\nSouth Karlie, NE 02442', '552.954.9227 x64524', '2207652sydni24@hotmail.com', NULL, NULL, '90c11a8def260a71533e7e285c67c6a0ff2ddc69a9f49538fe23856950805722', 'Basic', NULL, '8', '2019-12-23 09:29:48', '2019-12-23 09:29:48', NULL),
(37, '3568da76-1f8d-3f3b-9cee-6f9d89d3fa91', 'Reese Kautzer', 'female', '2015-06-25', 'Budha', 'North Tillman', '16442 Bradtke Route\nNew Ashley, DE 64693-5985', '(614) 737-6267', '820587930hansen.casper@gmail.com', NULL, NULL, 'b8af1e63fef2e71fc055ef53f455d6dc08b7f23cd58d7e9781e59d6528f31fc9', 'Basic', NULL, '6', '2019-12-23 09:29:48', '2019-12-23 09:29:48', NULL),
(38, 'c7764b2b-5f2b-370b-8dc1-17cca83aa397', 'Abbey Carter', 'male', '1976-03-28', 'Islam', 'New Dell', '6929 Rolando Dam\nKarlieville, MI 30326-2494', '(885) 626-6442', '457869gulgowski.flossie@hotmail.com', NULL, NULL, '96f5c23b25a729a7830d4e758009b7daf473fd0c2642bc9d3df7adbd7cc3d3a4', 'Basic', NULL, '19', '2019-12-23 09:29:48', '2019-12-23 09:29:48', NULL),
(39, '49ace8db-1df0-3941-94ab-dc549d5acd06', 'Maegan Runte', 'female', '1993-11-18', 'Hindu', 'Consuelostad', '39309 Cleve Village Suite 901\nKemmershire, MA 70723-8300', '1-975-248-8278 x867', '5913mikel.auer@gmail.com', NULL, NULL, '473fb2d329e76aba173a52764074ec4d4dd834f53904e45bf74b58f44194d989', 'Premium', NULL, '17', '2019-12-23 09:29:48', '2019-12-23 09:29:48', NULL),
(40, 'f14c127f-e900-3f2d-8f33-a50729489309', 'Ms. Otilia Runolfsson PhD', 'male', '1973-07-31', 'Kristen', 'Wunschburgh', '61833 Ofelia Trace Suite 075\nO\'Connerborough, KS 44123-7541', '(730) 240-0034 x8294', '7320440dariana64@hotmail.com', NULL, NULL, '011028a84295f0a7eb1f0ff377c910e9ff137aeda15fd4e19e9afe842f0766c4', 'Basic', NULL, '14', '2019-12-23 09:29:48', '2019-12-23 09:29:48', NULL),
(41, '6403c5af-00a8-3093-985d-26a6ec58ddc2', 'Kristian O\'Connell Jr.', 'female', '1987-04-18', 'Kristen', 'Paulineshire', '8452 Tracy Land Apt. 997\nKossfurt, NM 36459-6986', '691-628-6108', '24075942waelchi.caden@hotmail.com', NULL, NULL, '6ed14f2939027d0e34bb35bc3f8389a58a13b0ec2683d070320e9e6a1f279031', 'Basic', NULL, '13', '2019-12-23 09:29:48', '2019-12-23 09:29:48', NULL),
(42, '65142472-2d95-3244-9f68-cd892f80beca', 'Camden Deckow', 'female', '2015-01-14', 'Hindu', 'West Marina', '34919 Maud Burgs\nNorth Troy, ND 74005-1295', '(712) 469-7215', '99827henri.jones@hotmail.com', NULL, NULL, '0063f64951aad7c1c97e6b7241f221476cfe4cbc161987410092e8dd140504d6', 'Basic', NULL, '12', '2019-12-23 09:29:48', '2019-12-23 09:29:48', NULL),
(43, '0eed5c66-bf5f-38bc-8b45-54ddeac8aacd', 'Ms. Betsy Dooley Sr.', 'female', '1989-12-27', 'Islam', 'Tamiaville', '99345 Bonita Wall Apt. 290\nPort Jerrodhaven, SC 19973-1947', '+12756574044', '905jordi.olson@hotmail.com', NULL, NULL, '19d54926c54a150158b303b2c5a855a1ae0b20b818818a4098d08440d79d05c2', 'Premium', NULL, '20', '2019-12-23 09:29:49', '2019-12-23 09:29:49', NULL),
(44, '41078717-967f-37ad-a73b-044a9d8ee13c', 'Kieran Bergstrom', 'male', '2018-10-26', 'Kristen', 'South Abigale', '48565 Millie Trafficway\nEast Willfurt, KY 64876', '(853) 625-8474', '92575065oleta.weimann@gmail.com', NULL, NULL, '15c5b4dcaadb2e82960be40b1d242d2945d2679465be7d8043db097d52ce7743', 'Premium', NULL, '12', '2019-12-23 09:29:49', '2019-12-23 09:29:49', NULL),
(45, 'aea41bfd-6768-3181-a60e-b13b512b05b0', 'Miss Catharine Carter', 'female', '2014-05-21', 'Kristen', 'Feilhaven', '344 Ledner Rest Apt. 976\nGreenberg, ND 25664-7348', '469-966-9060', '3330njaskolski@hotmail.com', NULL, NULL, '025d9fd5d92729bffdac9f940b2c9e2ec3409115e84a4e99f5a3e3c5a2d2f6d3', 'Basic', NULL, '10', '2019-12-23 09:29:49', '2019-12-23 09:29:49', NULL),
(46, '04549cf1-3dc7-3f08-8acf-f23f4ac09791', 'Napoleon Langosh', 'female', '1977-06-07', 'Islam', 'New Geovanny', '902 Bernadine Lodge\nRobelberg, MS 80519', '(268) 231-5511 x09289', '4167edwardo.shields@yahoo.com', NULL, NULL, 'ac08b01bc71c7d8fc6868ee6e13e9da3c987135cc9faa4152366c1adc11320cc', 'Basic', NULL, '14', '2019-12-23 09:29:49', '2019-12-23 09:29:49', NULL),
(47, '367f00be-cc55-3b24-9e64-9857266eacf3', 'Dr. Alayna Rippin MD', 'female', '2009-09-29', 'Konghucu', 'Hermistonfurt', '542 Kuhic Garden Apt. 847\nPort Buford, UT 33354-6051', '578-916-1149 x425', '16330754zboncak.chelsea@hotmail.com', NULL, NULL, '91b651495a7bd4b0f1336bb1ee80c3df9c2bf78d4a25eb349176bce35e59f803', 'Premium', NULL, '6', '2019-12-23 09:29:49', '2019-12-23 09:29:49', NULL),
(48, 'c8a0865a-6faa-3249-b088-53dd8af4713f', 'Niko Berge', 'female', '1979-09-27', 'Budha', 'Sporerfurt', '8789 Magdalena Way\nAbernathyborough, NE 98411-5121', '1-992-953-0155 x916', '36marina84@gmail.com', NULL, NULL, '90f351b8ca3c18dbbd8a93cf24c897a6f94ed207bdc4c809e53194cbe0df7d9e', 'Premium', NULL, '10', '2019-12-23 09:29:49', '2019-12-23 09:29:49', NULL),
(49, '7d6821ef-ba85-352f-bf3c-9eca24aa7110', 'Jammie Ferry', 'female', '2011-09-14', 'Konghucu', 'New Jamir', '3446 Jessica Trail Apt. 360\nFionamouth, IL 26596-1001', '(758) 834-4327', '23713249sharon.gorczany@hotmail.com', NULL, NULL, 'cb5c51baf2e9f60dcebbdd63edfeefb62331d82f7bc00648c0fa9df94f31df16', 'Basic', NULL, '4', '2019-12-23 09:29:49', '2019-12-23 09:29:49', NULL),
(50, 'cbe3aed8-d7f7-33dc-888b-9968619892de', 'Romaine D\'Amore', 'male', '1983-07-05', 'Hindu', 'Lennytown', '12813 Jakubowski Row\nSouth Timothyburgh, OH 69829', '396-265-6625 x8414', '432711andrew73@hotmail.com', NULL, NULL, '439cb30b345a019592d8ed2c4c00336e9825aed3bd661471bf64ca9c6d1f719f', 'Premium', NULL, '15', '2019-12-23 09:29:49', '2019-12-23 09:29:49', NULL),
(51, '761adadb-6beb-321f-8541-80cf17b63efb', 'Prof. Rey Olson IV', 'male', '2000-01-16', 'Konghucu', 'North Elnaside', '243 Javonte Roads Apt. 591\nPort Wayne, CO 42461', '217-714-4199 x5525', '1lindgren.name@gmail.com', NULL, NULL, '5a60def4d9f65e008a184f642d183b1b5c750a83a15c9397970fb33df5c49914', 'Basic', NULL, '20', '2019-12-23 09:29:49', '2019-12-23 09:29:49', NULL),
(52, '63fddd1b-667e-3bc2-adbb-01166f086e17', 'Destany McLaughlin', 'female', '2001-08-31', 'Budha', 'South Ivahview', '7897 Gleason Valley Apt. 872\nWest Neal, NH 88694-4213', '901-300-7899 x813', '93ikling@hotmail.com', NULL, NULL, 'fdcecdcbbe4a2096af828a16a1da83c9414e84b11b7d46cfe39104ac334285cc', 'Premium', NULL, '7', '2019-12-23 09:29:49', '2019-12-23 09:29:49', NULL),
(53, '716eda5a-9176-338b-88ed-e1f26eb375f8', 'Prof. Kenya Rosenbaum', 'female', '1979-12-03', 'Hindu', 'Harveyside', '58704 Damian Roads\nBartolettihaven, AZ 29336-3750', '+1-315-515-4774', '76738924flarson@yahoo.com', NULL, NULL, 'd06a81309393518f0a623c16aa045035c6023ba409ce5e4b539e1b2f7157fd55', 'Premium', NULL, '10', '2019-12-23 09:29:49', '2019-12-23 09:29:49', NULL),
(54, '6ff76a83-7aa3-3684-b364-c4ca202c022d', 'Golden Stanton', 'female', '2005-10-16', 'Kristen', 'New Hiramton', '780 Wilbert Locks\nWest Jordan, CT 51501-5323', '587-543-6155 x5530', '710waters.teagan@yahoo.com', NULL, NULL, '6eccf89c2606e1f89717a0f266800f6dc28219c8fc4bf59dbf0221fd42b16ea4', 'Basic', NULL, '20', '2019-12-23 09:29:49', '2019-12-23 09:29:49', NULL),
(55, 'ead2f0cd-edd9-30cf-afd1-782bb7414551', 'Geoffrey Bruen', 'female', '1988-08-01', 'Budha', 'Johnton', '62012 Eliza Haven\nFraneckiberg, WI 52058-5499', '1-881-902-4545 x620', '8632700uwintheiser@hotmail.com', NULL, NULL, '99bed8d956970a088528ebedf0fe1f6a81562bf3cba71c1cd8cec52000c65d7d', 'Premium', NULL, '14', '2019-12-23 09:29:49', '2019-12-23 09:29:49', NULL),
(56, '86b4620f-2786-3f79-9dc0-34fff0c61fcf', 'Dr. Toby Zemlak DDS', 'female', '2011-01-25', 'Kristen', 'New Ervinport', '63168 Larue Courts\nLisandrostad, MD 53680', '428.827.8359', '48bednar.emerson@hotmail.com', NULL, NULL, '5cabc3fd68c5f71d0391d35b6b7da022ebd7c6a9be3be7c8adc730c336d879f9', 'Premium', NULL, '15', '2019-12-23 09:29:49', '2019-12-23 09:29:49', NULL),
(57, '1a54e7af-f8f8-3ea9-8003-c45e03a84d42', 'Margaretta Spencer II', 'female', '1999-06-24', 'Islam', 'West Dell', '6524 Kuhlman Burgs Apt. 188\nWest Nathen, MI 94681-6066', '1-858-687-5649 x3935', '6dorcas51@yahoo.com', NULL, NULL, '75758bd23543a2e731deac315ad40ea1d4c82833363a651ac60c1e8bb58db3e9', 'Basic', NULL, '12', '2019-12-23 09:29:49', '2019-12-23 09:29:49', NULL),
(58, 'a63fa7cf-f1b0-30f7-8673-31190cc1e203', 'Prof. Stacey Koch', 'male', '1993-08-16', 'Islam', 'East Dena', '633 Rowe Station Apt. 517\nSipeschester, MA 84198', '(257) 496-8122', '8180459pkirlin@hotmail.com', NULL, NULL, 'a751f845247b84f2eddf5ef9988e07803cacd9f62d68395f0a952406b5603bcf', 'Basic', NULL, '20', '2019-12-23 09:29:49', '2019-12-23 09:29:49', NULL),
(59, '9a5bc56f-3c94-3f37-8f7a-a7c1c467a6cb', 'Sandra Hagenes Sr.', 'male', '1972-03-04', 'Konghucu', 'East Ulises', '488 Seamus Grove\nKingland, ND 03592-8253', '490-897-0653', '715533furman13@gmail.com', NULL, NULL, 'fd5e94bd4731aff8ce6f6a530e264062224483a71719a38dcf1f880c995eaf4f', 'Premium', NULL, '2', '2019-12-23 09:29:49', '2019-12-23 09:29:49', NULL),
(60, 'bb54920d-7b5a-3a1d-9e65-c6280030deba', 'Julian Kunze PhD', 'female', '1994-06-05', 'Hindu', 'Kuhnshire', '6387 Krajcik Walk\nSouth Keyontown, NY 03451-6178', '1-939-903-8934 x2281', '2ycummerata@hotmail.com', NULL, NULL, '4d13d0733fc87f106c13a5c6cf0e7f27741374e13917c164f0fb751d9a4559f2', 'Premium', NULL, '14', '2019-12-23 09:29:50', '2019-12-23 09:29:50', NULL),
(61, '7bc86a4d-4d75-354f-8c97-29137404e290', 'Johnnie Lockman', 'male', '2010-10-11', 'Budha', 'Wildermanchester', '5989 Klein Camp\nGusikowskifurt, KY 76712', '1-308-324-4754', '102284adela.turner@gmail.com', NULL, NULL, '14241eb41adad40d82a88f571ad4194a64cb1bcaef4feeb44f4510ca48b55012', 'Basic', NULL, '3', '2019-12-23 09:29:50', '2019-12-23 09:29:50', NULL),
(62, '4e3bdc56-ee86-3713-abaf-1d6d30172389', 'Dr. Elisabeth White', 'male', '1972-07-11', 'Konghucu', 'North Camronshire', '71032 Kris Bypass Suite 873\nLake Zaneborough, AZ 51832-0973', '+1-673-943-3974', '12901sporer.napoleon@gmail.com', NULL, NULL, 'b56d94252f4e6dfc012bc9b0247c414d4ecbdba250e4ab84a0b711749e1159b0', 'Premium', NULL, '19', '2019-12-23 09:29:50', '2019-12-23 09:29:50', NULL),
(63, '5167d515-8c36-3ebc-8522-2de2bf1e2000', 'Anais Stark', 'male', '1981-04-24', 'Konghucu', 'Norabury', '504 Charlotte Green\nParkerport, WA 24770', '497-861-4343', '29ottilie93@yahoo.com', NULL, NULL, 'b86730410625113202e45ac222908d4296d7a7c064b85219fb3d04d84f4755b5', 'Basic', NULL, '5', '2019-12-23 09:29:50', '2019-12-23 09:29:50', NULL),
(64, 'fdc9b987-443a-3fee-8bf2-c71668a8fc0d', 'Tom Sipes', 'male', '1974-01-23', 'Budha', 'Teresamouth', '3953 Feil Place Suite 390\nNorth Giuseppeview, ME 15211-0271', '+1.803.426.3546', '485389zbruen@gmail.com', NULL, NULL, 'c41bcfa8d60f4db7454c89b21486b2687752afc171a7bad7370385523ac0b8f6', 'Premium', NULL, '3', '2019-12-23 09:29:50', '2019-12-23 09:29:50', NULL),
(65, '9c777cd6-ed1f-33c9-9bc9-36bd8893f23b', 'Laila Steuber', 'male', '1979-09-29', 'Islam', 'Trompmouth', '11824 Bennett Ramp\nJohnstonstad, DC 37700-1099', '1-770-927-9591 x337', '8968zhansen@gmail.com', NULL, NULL, 'dc47b5c7217107663a366e123f2d755de7bb3cff85e42c721d2c53b65fbfc412', 'Premium', NULL, '18', '2019-12-23 09:29:50', '2019-12-23 09:29:50', NULL),
(66, '699d2934-2252-3fe3-b48a-022ce5f96ec6', 'Dr. Janis Rodriguez', 'female', '2015-04-29', 'Kristen', 'East Reilly', '72740 Ullrich Extension\nEast Sammieside, IN 50351-1100', '339.555.9743', '41106estel.pacocha@hotmail.com', NULL, NULL, '440ae71d43e684f26a986583322a5476d48cca838ee0daf43bb50e3a6b5593f4', 'Basic', NULL, '15', '2019-12-23 09:29:50', '2019-12-23 09:29:50', NULL),
(67, '5938059d-ca92-31ae-a7cd-ce0cfaff21d4', 'Prof. Elsie Lemke IV', 'male', '2019-04-04', 'Konghucu', 'Helenaburgh', '5526 Mosciski Views\nAngushaven, WY 67743', '+1-772-475-9330', '88303248ulind@yahoo.com', NULL, NULL, '6ea22861f81471b1a27f7f91285c33fe2f0df6f7feed54337b220e722fcb4974', 'Basic', NULL, '16', '2019-12-23 09:29:50', '2019-12-23 09:29:50', NULL),
(68, 'dd4be0db-d64c-3926-a637-79a84b197cfc', 'Georgianna Parker', 'female', '2003-01-11', 'Budha', 'Port Vitaview', '60946 Lemuel Plains\nValerieshire, MS 37095', '338.785.4171 x969', '5809stanford67@gmail.com', NULL, NULL, '945961cbc97bebd4e65c7cbb061832ebf07cf41d395905ffa868e87ac79c4de1', 'Basic', NULL, '14', '2019-12-23 09:29:50', '2019-12-23 09:29:50', NULL),
(69, 'aae42c48-b6b4-3310-a72f-843d10199652', 'Ms. Dorothea Schimmel', 'male', '1991-01-14', 'Hindu', 'East Kailynmouth', '66897 Layne Stravenue\nLake Elisa, MS 88896', '547.510.8760', '2ktreutel@hotmail.com', NULL, NULL, 'bc278483f59dee034027a13b72c54f1d671f09b12821938d756d2138eb58f0a1', 'Premium', NULL, '10', '2019-12-23 09:29:50', '2019-12-23 09:29:50', NULL),
(70, 'bb771d8f-bc31-3864-aea2-c1df7886ad3b', 'Cassie Beier', 'female', '1985-04-03', 'Konghucu', 'Giovanniborough', '8697 Reilly Island\nEast Darenhaven, UT 37408', '(329) 940-0163', '70545weston33@yahoo.com', NULL, NULL, '186291a35dd2efa90710122408bd46ae376c99697f641a6bb7a9f1eb3304e266', 'Premium', NULL, '6', '2019-12-23 09:29:50', '2019-12-23 09:29:50', NULL),
(71, 'a1040c05-4a52-3a6d-8502-e94bda4bda32', 'Jarrod Boyle', 'female', '2003-05-30', 'Islam', 'Port Stefanland', '989 Kyler Ranch\nMantebury, OK 48503', '491.426.8380 x417', '3georgianna25@gmail.com', NULL, NULL, 'b276dbf34fe1de9ec98d5eb4f7fc5eb138682fea0d70ea011a1beb738828b60a', 'Basic', NULL, '13', '2019-12-23 09:29:50', '2019-12-23 09:29:50', NULL),
(72, '23a0f480-a7b7-3ccf-9229-e3942ebcb7e0', 'Verda Bins', 'female', '2013-03-04', 'Hindu', 'Murraymouth', '54153 Nick Mount Apt. 422\nNorth Wilmermouth, ND 17339-7170', '(624) 513-5233', '142027blick.kennedi@hotmail.com', NULL, NULL, 'd09fb2917d052b3b25e20d5cb291104012cd5e5be27a74f1dd971649ef674d2f', 'Basic', NULL, '5', '2019-12-23 09:29:50', '2019-12-23 09:29:50', NULL),
(73, '162ef57d-3243-3001-b1e5-16f606b75ce7', 'Prof. Timmy Quigley', 'male', '2019-08-21', 'Hindu', 'Westonville', '4590 Kling Gateway Apt. 810\nKelsiestad, AZ 79609', '(386) 780-2575 x999', '534dibbert.marcelo@gmail.com', NULL, NULL, '6f960e25c4f220f8821aa818eaeaf4d2c2b6e72098e9ddac77f1cf616af44b8b', 'Premium', NULL, '20', '2019-12-23 09:29:50', '2019-12-23 09:29:50', NULL),
(74, '4d90be25-a497-3d4e-8338-ba8e4e03a3f4', 'Marielle Heathcote', 'male', '2002-03-19', 'Hindu', 'Wolffstad', '664 Melyssa Park Suite 517\nPort Salvador, ID 61594', '(221) 756-4069 x92055', '275631538madelyn.schaefer@yahoo.com', NULL, NULL, 'b07ee8c9ecaafb0c63be23a59117bd3e420c128aabbb8b756bcc5474fcca04fb', 'Basic', NULL, '16', '2019-12-23 09:29:50', '2019-12-23 09:29:50', NULL),
(75, '67e9af39-23bb-3ce9-9234-564ca8ead5e9', 'Leann Gulgowski', 'male', '2007-10-06', 'Islam', 'Aufderharberg', '2835 Trever Run Suite 791\nDareville, ME 83013', '1-995-283-1527 x33065', '801759374ima55@yahoo.com', NULL, NULL, 'ecd8e969a5952b494721f47e76fae34d15cfb4e3ba0c2b0627829ee346497320', 'Basic', NULL, '16', '2019-12-23 09:29:50', '2019-12-23 09:29:50', NULL),
(76, '83a64e38-e7a1-3407-acbf-ce32806157d9', 'Nova Jakubowski Sr.', 'male', '1975-05-08', 'Islam', 'Yostmouth', '931 Jess Court Apt. 355\nEast Santino, MO 73687', '1-952-218-7491 x6881', '53efren.moore@hotmail.com', NULL, NULL, '9edc00652a30ef28e316b8599c2fac122f5d3ecea4589545ba4934ef79e7abc1', 'Premium', NULL, '17', '2019-12-23 09:29:50', '2019-12-23 09:29:50', NULL),
(77, 'd3bbc746-30bc-36f2-a5d7-8da777565af3', 'Brigitte Vandervort', 'female', '1983-05-21', 'Konghucu', 'Port Aliviaville', '1256 Augusta Dam\nLedaside, DE 90572', '(784) 321-5071 x815', '2689120stokes.roselyn@hotmail.com', NULL, NULL, '597139e252c3c04cbd4143df365e5960e5cbf4d215ad751cfa1bacc9cc4e9df8', 'Basic', NULL, '11', '2019-12-23 09:29:50', '2019-12-23 09:29:50', NULL),
(78, '32276ed5-53fc-3055-92fb-91caf08e1bc9', 'Dr. Juwan Cormier III', 'male', '2011-04-18', 'Konghucu', 'South Ernaburgh', '54623 Haley Causeway Apt. 588\nEast Giovani, AK 99177-3077', '323.548.6605', '6520lillian.bednar@yahoo.com', NULL, NULL, '77d74048333dc934c6429a7765383c0ea46956004924f41157f58010b874ce3c', 'Premium', NULL, '7', '2019-12-23 09:29:50', '2019-12-23 09:29:50', NULL),
(79, '0c455dda-5359-3a91-95e1-3ee885f86bd6', 'Mrs. Estell Koepp', 'male', '1981-07-03', 'Islam', 'New Graciela', '8647 O\'Reilly Ville\nAlyssonstad, MS 00017-5586', '+12453352176', '992saul74@yahoo.com', NULL, NULL, '5f2217eca057f4eac4eeea3168ee359599deaec2d939bf4df3044a4bc1fea265', 'Premium', NULL, '18', '2019-12-23 09:29:50', '2019-12-23 09:29:50', NULL),
(80, 'a60a40ef-bac8-37af-bfa5-baaca7267e9c', 'Dr. Alphonso Cruickshank DDS', 'female', '1996-08-05', 'Konghucu', 'Matildeberg', '57958 Luz Gardens\nSouth Alexanderstad, GA 27249', '+1 (770) 716-6428', '56daryl.kirlin@yahoo.com', NULL, NULL, '2b0be5a405a1dc5966ad92353553e3fc2ff77278ff14bfc947407c6606e04371', 'Basic', NULL, '7', '2019-12-23 09:29:50', '2019-12-23 09:29:50', NULL),
(81, '06acf860-3d1a-38c4-adf0-3e3ab68f088b', 'Blaze Ondricka MD', 'female', '1981-02-03', 'Hindu', 'North Antoninaland', '959 Sawayn Spurs Apt. 543\nLake Jayborough, MD 09738', '(678) 976-5218 x221', '6zkuhn@hotmail.com', NULL, NULL, '74499ff58bbdc738032d02d9d4237f37703df294d66403e7c81569ff42616beb', 'Premium', NULL, '16', '2019-12-23 09:29:50', '2019-12-23 09:29:50', NULL),
(82, 'b8656bcc-5a6a-3fe9-8717-3c8157e1032e', 'Clark Satterfield', 'female', '1970-03-30', 'Budha', 'West Sierra', '6941 Sauer Villages\nMelodychester, UT 66719-0206', '530-928-2385', '81022494bborer@gmail.com', NULL, NULL, 'b762669d46303d80bf8db0569e6ef5c90dbb96e01726d5d6c2a4d0e74b19107f', 'Basic', NULL, '10', '2019-12-23 09:29:50', '2019-12-23 09:29:50', NULL),
(83, 'a1b77471-b892-3563-87fa-02a2d83b12f1', 'Dr. Carlos Marquardt', 'male', '1973-08-09', 'Kristen', 'Port Alveraland', '2579 Arely Mission\nWest Eugene, TX 29283', '+1 (869) 605-2576', '7426095brennan25@hotmail.com', NULL, NULL, '25f2316983b7f0a88c9a6543a01b226c83912019fa20d0ccb2f11f7c1a4d0bd5', 'Basic', NULL, '16', '2019-12-23 09:29:51', '2019-12-23 09:29:51', NULL),
(84, '7ff156be-24a1-3a0f-af9f-0d9d9057c583', 'Leopold Runolfsson PhD', 'male', '1996-02-16', 'Konghucu', 'Adrielport', '954 Gerlach Underpass Apt. 621\nLake Larissa, MN 21417', '371.718.1112 x7875', '61lillie.berge@yahoo.com', NULL, NULL, '855b1afea67d008756935d5ef940ee4da654c87eb983c1d7c09e84613c8215e4', 'Basic', NULL, '16', '2019-12-23 09:29:51', '2019-12-23 09:29:51', NULL),
(85, '7a67d216-da00-38f0-ba84-b0dab2b43cf2', 'Giovanna Gorczany', 'male', '1983-03-18', 'Islam', 'Karleeton', '931 Shayne Shores\nWest Raymond, AK 62597-0166', '248.299.0147', '63544mckayla.murazik@hotmail.com', NULL, NULL, '9a4310d3ae0f5cb8ddcd9918830bfda3c68a7803343941c51039fbf3903a3016', 'Premium', NULL, '12', '2019-12-23 09:29:51', '2019-12-23 09:29:51', NULL),
(86, 'd324f9aa-4a23-3580-8db4-16303e5d9775', 'Miss Concepcion Lemke', 'male', '1972-07-16', 'Konghucu', 'Ashleymouth', '2463 Kane Common\nSouth Maymieside, OH 73268', '243-529-4483 x6193', '3860hschroeder@gmail.com', NULL, NULL, 'fadbf82f0221693decd09069aa900a617ad3aa437dcf039f9b7bd6e42f155862', 'Basic', NULL, '4', '2019-12-23 09:29:51', '2019-12-23 09:29:51', NULL),
(87, 'a996e040-95db-3322-8b0b-84832cbbd1be', 'Onie Ondricka MD', 'male', '1998-10-23', 'Budha', 'Chandlerstad', '698 Alayna Route\nPort Audra, TN 90377-8725', '797-471-1379 x796', '391usawayn@hotmail.com', NULL, NULL, '50c0261ac9e13177d9376daa5532e22244f396d9086eafb62c15899e1bd9e901', 'Basic', NULL, '4', '2019-12-23 09:29:51', '2019-12-23 09:29:51', NULL),
(88, 'd2372cd3-f6ac-3881-989e-38992eecdcda', 'Ms. Albina Mann PhD', 'female', '1970-04-24', 'Kristen', 'Lake Geovanyfurt', '709 Cheyanne Center Suite 157\nSouth Randallside, VA 41499', '769.888.3930 x639', '81alize.hyatt@gmail.com', NULL, NULL, '74df7c33b2e48b09adcb3106b9be3eb052cf7a717760bbf6061465dc9afea39b', 'Premium', NULL, '8', '2019-12-23 09:29:51', '2019-12-23 09:29:51', NULL),
(89, 'e8a0b9f9-b7cb-3338-b0c6-ad050157ca76', 'Ms. Mittie Jast Jr.', 'female', '2014-05-18', 'Islam', 'Port Julien', '28415 Vinnie Streets\nPort Jessicafurt, WY 35414', '+1 (493) 944-8531', '68616559sjohnson@hotmail.com', NULL, NULL, '76d30446529df774b38c88216837c02aa150bfa93080567cf14ef9e8f5325623', 'Premium', NULL, '11', '2019-12-23 09:29:51', '2019-12-23 09:29:51', NULL),
(90, 'f4fbf18d-ac30-31e2-b867-229221c3d4ba', 'Ellis Rice DVM', 'male', '1998-08-09', 'Budha', 'West Deondre', '68178 Roel Radial\nBoscotown, NC 25940-6628', '+1.560.652.3314', '860645718santa17@yahoo.com', NULL, NULL, 'c029bfc457f1a206f3a47e11d8078e03bf83c11e1cd87a436ac373a2c44bfc69', 'Premium', NULL, '19', '2019-12-23 09:29:51', '2019-12-23 09:29:51', NULL),
(91, 'aab17168-bcb4-395e-9507-31bf112e3531', 'Chelsea Herman', 'male', '2002-08-15', 'Kristen', 'West Bernadette', '4363 Danny Island Apt. 212\nLake Elmiraberg, AZ 25177', '(993) 263-5394', '277donnelly.tyshawn@gmail.com', NULL, NULL, 'c6ce374c706b4f1746a206606ef4b18c142aaa7a3a7d748d290ea5d3a36bee98', 'Basic', NULL, '17', '2019-12-23 09:29:51', '2019-12-23 09:29:51', NULL),
(92, 'b5a0c23f-c8b6-3c71-b614-a6877dd8b0fe', 'Dr. Brooke Crist', 'female', '1996-03-19', 'Kristen', 'Sigurdville', '8623 Izaiah Roads Suite 181\nCorkerymouth, VA 51589', '(429) 864-0634 x15938', '132607621genoveva49@yahoo.com', NULL, NULL, '21e1b75ffd329f297b2d832693a081e8cf028aa81d7710df9e8fae27fc15fc46', 'Basic', NULL, '15', '2019-12-23 09:29:51', '2019-12-23 09:29:51', NULL),
(93, '32231a68-320f-3c13-9588-5757b465db96', 'Stefanie Rippin', 'female', '2014-12-17', 'Budha', 'Reichertburgh', '47978 Bernhard Vista Apt. 865\nBeattyton, AZ 48791-3811', '942-396-4279 x132', '8020federico.dietrich@gmail.com', NULL, NULL, '19031272764e2312a008dc56161131b17a21361d9b05573e6f5b1ef86f00ef58', 'Basic', NULL, '1', '2019-12-23 09:29:51', '2019-12-23 09:29:51', NULL),
(94, '6ebcc253-fc80-3424-8de0-6d3241e89d0c', 'Oren Bins', 'female', '1977-04-11', 'Islam', 'South Hailee', '35901 Walker Corner\nKarelleland, MD 94924-0636', '312-837-9215 x057', '73583076clint.gerlach@gmail.com', NULL, NULL, '99e243b309a779ef2f219cebb955c0c5bfbce8a9ca13f35922d9ffada9c51014', 'Basic', NULL, '10', '2019-12-23 09:29:52', '2019-12-23 09:29:52', NULL),
(95, '126a1cbb-02fa-3869-97fc-090a0f94766e', 'Prof. Kailyn Smitham', 'male', '1971-02-18', 'Kristen', 'West Alexandria', '41667 Lakin Point\nJalonchester, MT 95470', '297.728.6082 x1243', '2tara.casper@gmail.com', NULL, NULL, '2ca81180a73e30d3ecc03cdaddba501c284c38f5808ac2b0ec367ebed343fde6', 'Basic', NULL, '17', '2019-12-23 09:29:52', '2019-12-23 09:29:52', NULL),
(96, 'b4c4d949-20bd-38d4-bd90-f3dadf3ee102', 'Ms. Brielle Jakubowski', 'female', '2018-04-10', 'Hindu', 'O\'Connellland', '5127 Kattie Brook Apt. 784\nWest Terrellborough, NE 09991', '1-989-602-9794', '373049schulist.nikki@yahoo.com', NULL, NULL, '6f2acf99956eade759d8d5e524748402d18501e9717b3dc74a5cf63b8d3a309e', 'Premium', NULL, '1', '2019-12-23 09:29:52', '2019-12-23 09:29:52', NULL),
(97, '59b4c790-d8ce-3216-a3bd-2be17fc770da', 'Dr. Lafayette Nolan DDS', 'male', '1981-06-17', 'Konghucu', 'Port Mikaylaside', '8349 Feeney Extensions Suite 359\nNicolasstad, ID 36423-6543', '849-605-8043 x9859', '9622ooreilly@yahoo.com', NULL, NULL, '106bf962f40c4081f8cfa1c70334e75afca5c0ff3fc547389e61e84bb690b08b', 'Premium', NULL, '3', '2019-12-23 09:29:52', '2019-12-23 09:29:52', NULL),
(98, '69691d2b-b0ac-3de8-a14f-1c1b8ddc5190', 'Mr. Dalton Torphy Jr.', 'female', '2011-05-28', 'Kristen', 'Lennachester', '788 Santino Summit\nAlycefort, WY 92932-3502', '(484) 678-3989', '121014gwen.johnson@gmail.com', NULL, NULL, '141dc91796b2312911aca14016bf04bf0bcc75eb445404fccc712205ad076943', 'Basic', NULL, '3', '2019-12-23 09:29:52', '2019-12-23 09:29:52', NULL),
(99, '5a92d373-9670-3ff7-b302-3ed9a28315e8', 'Prof. Jo Zemlak MD', 'male', '1986-10-15', 'Konghucu', 'North Celialand', '809 Ward Bypass\nNew Hipolitohaven, CT 38578', '1-887-644-3143', '1945562aubree.greenholt@hotmail.com', NULL, NULL, '4436c1097e3b04508d151b64c133abbdcf7fb881fce150def9ef10cc7294740b', 'Basic', NULL, '15', '2019-12-23 09:29:52', '2019-12-23 09:29:52', NULL),
(100, 'f6fb0ef7-6e47-35d9-8234-15781e2da0d1', 'Woodrow Bruen Jr.', 'male', '2016-11-03', 'Budha', 'North Dockberg', '66623 Roger Gardens Suite 811\nPort Alexandriastad, SD 20119-9417', '(586) 697-2406 x9114', '22241916towne.zula@gmail.com', NULL, NULL, '1c9a98aa43d42ac8bf4c93c30176a0793a9163cc100a641680e6b8c5dfc12c01', 'Basic', NULL, '11', '2019-12-23 09:29:52', '2019-12-23 09:29:52', NULL),
(101, 'fgsgfd', 'sdSDs', 'female', '2019-12-02', 'Islam', 'asda', 'adad', 'hhoijo', 'test@test.com', NULL, NULL, NULL, 'Premium', NULL, '1', '2019-12-23 18:30:34', '2019-12-23 18:31:22', '2019-12-23 18:31:22');

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
(1, 4, 'f00654a0-6c61-344c-b92d-9b6d3faa29bb', 'Chase Kreiger', 'Female', '1998-03-01', 'Budha', 'East Vanborough', '95285 Chris Fort\nIgnatiusfurt, AZ 00495-6900', '364.701.2083 x2476', '6aberge@gmail.com', NULL, NULL, '54243483e69465c2148fd01470c66814680f89b5dd69dfa486b4ada76293a72b', 1, NULL, '2019-12-23 09:29:39', '2019-12-23 09:29:39', NULL),
(2, 4, 'ac00151c-e763-3a4d-a765-30417f59a92d', 'Tanya Waters', 'Male', '1976-01-14', 'Hindu', 'Port Merritt', '88638 Gordon Court Apt. 950\nJaunitaville, MD 26123-5377', '(264) 365-4594', '3thurman48@gmail.com', NULL, NULL, '30561daa802e6acc8cf36fda294754144a8cef1a9485658d8c650fc4535cc2ba', 0, NULL, '2019-12-23 09:29:39', '2019-12-23 09:29:39', NULL),
(3, 4, '308fa362-d120-3364-aac9-51ef639b1028', 'Roderick Lynch', 'Female', '1981-01-05', 'Budha', 'Lake Valentinabury', '812 Nolan Squares Apt. 943\nEast Abner, MN 80663', '525-484-9610', '99velma.rogahn@gmail.com', NULL, NULL, 'a9be88213f6010a96581a3e8794527a240a19bd57c4fcbeea97217a3219a5a8f', 1, NULL, '2019-12-23 09:29:39', '2019-12-23 09:29:39', NULL),
(4, 1, 'a0f8395a-c703-382f-a584-0b80ab957235', 'Olaf Watsica', 'Male', '1992-11-06', 'Kristen', 'Tamaratown', '153 Rhoda Squares\nWest Santinoburgh, RI 32650', '+17804479546', '56reuben.franecki@gmail.com', NULL, NULL, 'c355fbfd713160f58970d458dddc2361926fd74065ffaa46e14f3a70311aa82f', 1, NULL, '2019-12-23 09:29:39', '2019-12-23 09:29:39', NULL),
(5, 3, 'b554d5a2-7bf8-3e21-a4d1-3b01d6a875d4', 'Clemens Jones', 'Male', '1980-10-04', 'Konghucu', 'Hodkiewiczville', '92747 Klein Plaza\r\nNicolafurt, PA 36238-3264', '(819) 810-8206', '985583803veum.natasha@yahoo.com', NULL, NULL, 'e4d004cf979d579fd3cad0baf3dfcae2258c253cc2ee9c81c18b40292db5e3f1', 0, NULL, '2019-12-23 09:29:39', '2019-12-23 20:29:34', NULL),
(6, 1, '864c74e4-b2a3-3b2d-ac6e-37797f1dbcaf', 'Clemens Connelly', 'Male', '2017-04-15', 'Budha', 'Cyrilport', '83293 Towne Via\nLulashire, NM 79342', '889.509.2954 x336', '9668lblick@gmail.com', NULL, NULL, 'fd317bd8c71dc90dfa16a331269c0c6ebeb02ccf1be19e23cfddeb900b6e6ad1', 0, NULL, '2019-12-23 09:29:39', '2019-12-23 09:29:39', NULL),
(7, 5, '39b80b89-720a-38e6-8917-006d01d8f2d9', 'Jamar Schroeder', 'Female', '2017-09-24', 'Islam', 'Tremblaymouth', '639 Fahey Plaza Suite 804\nTrantowstad, AZ 95362-3609', '1-354-514-5397 x58105', '316067ervin60@yahoo.com', NULL, NULL, 'b80b77061dfd7aaa11bf33c5dfa279a247d79c06a252c17704b1c98c208aa51f', 1, NULL, '2019-12-23 09:29:39', '2019-12-23 09:29:39', NULL),
(8, 5, '4c1dbe39-c89d-316e-a52e-41f09795738a', 'Prof. Keeley Mitchell PhD', 'Male', '1976-05-16', 'Hindu', 'New Billieport', '460 Lenny Highway\nLeannaberg, IL 19976-0169', '+1.621.751.3731', '7165lockman.kaitlyn@gmail.com', NULL, NULL, '22e3eabad3348172e8d78c3fdf31afd6e267748e81e81d1b1fc00b80da489682', 1, NULL, '2019-12-23 09:29:39', '2019-12-23 09:29:39', NULL),
(9, 2, '854e2f87-f9ab-3c5e-a7a9-cfee57636293', 'Brandon DuBuque DDS', 'Female', '1981-04-28', 'Kristen', 'West Robbieborough', '723 Alvena Canyon Apt. 538\nNew Clareburgh, AZ 19056', '+1 (237) 529-7485', '64allison05@gmail.com', NULL, NULL, '0273601436e98fd5397aabcc76bc5929100cb64282b5681893794c48470f74cb', 1, NULL, '2019-12-23 09:29:39', '2019-12-23 09:29:39', NULL),
(10, 1, 'e026aa2d-3ddc-3843-8d91-ca0dc334aa51', 'Mrs. Sabina Wintheiser', 'Female', '2009-11-14', 'Budha', 'Lake Jerelville', '30094 Jerde Turnpike\nEast Renehaven, WY 74092', '(714) 354-3996 x73520', '134179543keeling.lorenzo@yahoo.com', NULL, NULL, '0a9734e06cf69c1648c00c1751e28bf6baaa860cb26acec62521e3e301b88679', 1, NULL, '2019-12-23 09:29:39', '2019-12-23 09:29:39', NULL),
(11, 2, '20e390df-cfbb-3a8b-bd90-68d460a5af78', 'Bernita Schumm MD', 'Female', '2019-06-01', 'Kristen', 'Catalinatown', '3118 Rubie Land\nNorth Colton, MO 13364-4622', '(969) 807-6857 x6983', '189100bogisich.harrison@gmail.com', NULL, NULL, '2b30028beedbef707fa42bcac0b2b811463084762f696d9de896e77cfa9ea8b1', 0, NULL, '2019-12-23 09:29:39', '2019-12-23 09:29:39', NULL),
(12, 5, 'c72afbaf-fd52-3d3d-8dee-2d04dbb42006', 'Rhiannon Senger IV', 'Female', '2001-10-31', 'Budha', 'Derickview', '1497 Mann Street\nKubfort, CO 89129', '(740) 562-7616', '91918296hilton46@yahoo.com', NULL, NULL, '14dec2038e694029075c41a54d6c3dc4b5f1c4af76873c626bd0512d97f58758', 1, NULL, '2019-12-23 09:29:39', '2019-12-23 09:29:39', NULL),
(13, 2, '4207484f-674c-3a8c-ba51-68189737d8fe', 'Andreanne Ritchie', 'Female', '1984-02-21', 'Islam', 'West Kielhaven', '4148 Issac Mission Apt. 326\nJackyburgh, NH 79561-4272', '626-287-3448 x51286', '43780violette.oreilly@hotmail.com', NULL, NULL, '3f14daf5264eef8933534ea9139f12d3c4d718fd71f8a4db8111971f688c0a2f', 1, NULL, '2019-12-23 09:29:39', '2019-12-23 09:29:39', NULL),
(14, 4, '6415b7ea-b178-3a34-9988-0035e82cf8db', 'Ms. Caroline Eichmann MD', 'Female', '1972-09-30', 'Hindu', 'Balistrerichester', '171 Philip Mall Apt. 682\nAugustaland, IL 52416-0735', '331-734-4701', '919804rfriesen@hotmail.com', NULL, NULL, '02a87c37ed53d9ff5c2c277442e3fcfacdb355863b51a564773e579e30bdc708', 0, NULL, '2019-12-23 09:29:39', '2019-12-23 09:29:39', NULL),
(15, 5, '1df4abd8-bd63-332d-a333-ef49d1fdbe03', 'Effie Abshire', 'Male', '1988-11-17', 'Islam', 'South Adonismouth', '8069 Will Roads Suite 333\nNorth Janessatown, NM 80366-7400', '(362) 971-2756', '58126moore.baylee@hotmail.com', NULL, NULL, '03bc88a123101bba25d4dd05ca6fc01f49b3896c7505086647a7a3c4552aaa62', 0, NULL, '2019-12-23 09:29:39', '2019-12-23 09:29:39', NULL),
(16, 1, '33b74224-f61c-358f-86f9-c6db9ef9034f', 'Leora Mraz', 'Female', '1974-01-07', 'Hindu', 'Emeliaville', '6665 Lynch Hollow Suite 605\nBoscofurt, OR 75576', '817-982-8082', '283tianna.little@hotmail.com', NULL, NULL, '273f5e8cf78116215b1ac93e8a3e0f46bf0c5662b8bdd4e8074bd9d3d137d7bf', 0, NULL, '2019-12-23 09:29:39', '2019-12-23 09:29:39', NULL),
(17, 2, '6f6b15a5-bebd-3966-ba64-2e13760cac6c', 'Alverta Romaguera', 'Male', '2006-10-11', 'Hindu', 'East Jamil', '10440 Osinski Center Suite 796\nSporerland, ND 70113', '485.702.3746 x57552', '9437086rodriguez.ignatius@yahoo.com', NULL, NULL, '42cf6a5b88424f1ed6266dea040c8d7c50ddd03ac2ccac385eb8be83eafccf4d', 1, NULL, '2019-12-23 09:29:40', '2019-12-23 09:29:40', NULL),
(18, 3, '98f384d8-5e32-3c4e-b96c-41bfd39d0460', 'Ms. Lilian Abernathy', 'Female', '2016-01-09', 'Islam', 'Hillsmouth', '5893 Wintheiser Fort Suite 500\nEast Rachelland, OR 42395-3974', '(282) 363-4222', '7675032gibson.maxie@gmail.com', NULL, NULL, 'c84cc480a618901765f45d5c3573b88a8e6817e95052fb2018ad3b68932c5817', 1, NULL, '2019-12-23 09:29:40', '2019-12-23 09:29:40', NULL),
(19, 1, 'a3594bf3-14c9-3b4b-8693-c4746c0bf07c', 'Prof. Broderick Heller Sr.', 'Male', '1987-05-19', 'Hindu', 'Turnerborough', '5484 Harvey Causeway\nMattburgh, AL 90176', '363-714-5747', '3colten.rolfson@gmail.com', NULL, NULL, '5f68f1baa042b19564bbcdad8a6cd5c64e946447501bd966457571c3e2f08ac4', 0, NULL, '2019-12-23 09:29:40', '2019-12-23 09:29:40', NULL),
(20, 5, '433d9a9a-2237-3968-b93f-15c06a010a26', 'Demetrius Armstrong', 'Female', '2007-08-04', 'Hindu', 'Schneiderport', '44836 Jada Glen\nLloydstad, WY 71842-2135', '863-260-3509 x6687', '12487167xmarquardt@gmail.com', NULL, NULL, 'dde992d8a9628e6f5cdb0c020162131a26115ea051237726822c5f9e53dc31bc', 1, NULL, '2019-12-23 09:29:40', '2019-12-23 09:29:40', NULL);

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
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 1),
(5, 5, 2),
(6, 6, 1),
(7, 7, 1),
(8, 8, 2),
(9, 8, 2),
(10, 9, 2),
(11, 9, 2),
(12, 10, 2),
(13, 10, 2),
(14, 11, 2),
(15, 12, 2),
(16, 13, 2),
(17, 14, 2),
(18, 15, 2),
(19, 15, 2),
(20, 16, 1),
(21, 16, 2),
(22, 17, 2),
(23, 17, 1),
(24, 18, 2),
(25, 18, 1),
(26, 19, 2),
(27, 20, 2);

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
(1, 2, 'commodi', '863838.00', 0, '0.00', 'Quae cumque maiores inventore pariatur ut.', '3', '2019-12-23 09:29:52', '2019-12-23 09:31:08', NULL),
(2, 2, 'porro', '819543.00', 13, '0.00', 'Error iste nostrum tempora excepturi rem.', '3', '2019-12-23 09:29:52', '2019-12-23 09:31:21', NULL),
(3, 1, 'illo', '752584.00', 0, '0.60', 'Voluptas unde enim quia ut doloremque.', '12', '2019-12-23 09:29:53', '2019-12-23 09:31:14', NULL),
(4, 2, 'quidem', '219298.00', 4, '0.00', 'At et qui omnis tempora aut quia.', '9', '2019-12-23 09:29:53', '2019-12-23 09:31:24', NULL),
(5, 2, 'earum', '125610.00', 0, '0.09', 'Et voluptatem nisi similique aut tempore.', '15', '2019-12-23 09:29:53', '2019-12-23 09:31:14', NULL),
(6, 2, 'rerum', '961363.00', 0, '0.00', 'Beatae dolor iusto earum sunt quisquam quis.', '6', '2019-12-23 09:29:53', '2019-12-23 09:31:22', NULL),
(7, 1, 'veritatis', '700765.00', 7, '0.00', 'Molestias est dicta ut nam.', '9', '2019-12-23 09:29:53', '2019-12-23 09:31:25', NULL),
(8, 2, 'natus', '92785.00', 0, '0.93', 'Aut quia nam eos molestiae ut sit.', '16', '2019-12-23 09:29:53', '2019-12-23 09:30:42', NULL),
(9, 1, 'occaecati', '428005.00', 0, '0.70', 'Eum est dolore et qui architecto dolores illo.', '3', '2019-12-23 09:29:53', '2019-12-23 09:31:10', NULL),
(10, 1, 'id', '766417.00', 0, '0.00', 'Reprehenderit est debitis et qui.', '13', '2019-12-23 09:29:53', '2019-12-23 09:30:45', NULL),
(11, 2, 'facere', '155554.00', 0, '0.00', 'Et blanditiis quod culpa ut pariatur iure culpa.', '20', '2019-12-23 09:29:54', '2019-12-23 09:31:15', NULL),
(12, 1, 'tempora', '357551.00', 0, '0.06', 'Distinctio autem beatae nam amet.', '4', '2019-12-23 09:29:54', '2019-12-23 09:31:24', NULL),
(13, 1, 'dignissimos', '986245.00', 0, '0.85', 'Illum molestiae expedita totam blanditiis est.', '11', '2019-12-23 09:29:54', '2019-12-23 09:31:16', NULL),
(14, 2, 'quia', '216574.00', 0, '1.00', 'Alias perferendis veniam modi vel deleniti rerum.', '14', '2019-12-23 09:29:54', '2019-12-23 09:31:03', NULL),
(15, 1, 'officiis', '715290.00', 2, '0.00', 'Architecto voluptatem qui ut nostrum nihil.', '11', '2019-12-23 09:29:54', '2019-12-23 09:31:23', NULL),
(16, 2, 'laboriosam', '290021.00', 1, '0.00', 'Et sit mollitia ipsam fugit.', '1', '2019-12-23 09:29:54', '2019-12-23 09:31:22', NULL),
(17, 1, 'soluta', '967469.00', 49, '0.39', 'Quas quas fugit quia eveniet corrupti est.', '1', '2019-12-23 09:29:54', '2019-12-23 09:31:26', NULL),
(18, 2, 'velit', '958395.00', 4, '0.00', 'Magni aspernatur ad quis quia dignissimos et.', '8', '2019-12-23 09:29:54', '2019-12-23 09:31:17', NULL),
(19, 2, 'omnis', '954798.00', 0, '0.80', 'Id culpa asperiores laborum veritatis pariatur.', '4', '2019-12-23 09:29:54', '2019-12-23 09:30:48', NULL),
(20, 2, 'nihil', '129026.00', 0, '0.83', 'Quas aliquam quia earum eos corrupti.', '20', '2019-12-23 09:29:55', '2019-12-23 09:31:10', NULL),
(21, 2, 'et', '437022.00', 0, '0.00', 'Iste voluptatem voluptas ad ut.', '12', '2019-12-23 09:29:55', '2019-12-23 09:31:16', NULL),
(22, 1, 'sapiente', '848942.00', 2, '0.00', 'Harum eaque dolor odit modi.', '1', '2019-12-23 09:29:55', '2019-12-23 09:31:22', NULL),
(23, 2, 'debitis', '250585.00', 0, '0.59', 'Eligendi architecto et ea at.', '19', '2019-12-23 09:29:55', '2019-12-23 09:31:07', NULL),
(24, 2, 'est', '250202.00', 0, '0.96', 'Eum tempora nihil consequuntur eos.', '20', '2019-12-23 09:29:55', '2019-12-23 09:31:23', NULL),
(25, 1, 'veniam', '443299.00', 0, '0.89', 'Velit ab eligendi ipsum repudiandae non.', '6', '2019-12-23 09:29:55', '2019-12-23 09:31:10', NULL),
(26, 2, 'quibusdam', '78893.00', 0, '0.04', 'Velit reprehenderit quisquam quisquam aut.', '19', '2019-12-23 09:29:55', '2019-12-23 09:31:22', NULL),
(27, 2, 'iste', '879784.00', 0, '0.00', 'Quis consectetur rerum atque praesentium.', '13', '2019-12-23 09:29:55', '2019-12-23 09:31:05', NULL),
(28, 2, 'quibusdam', '678278.00', 0, '0.00', 'Nisi omnis exercitationem aut est.', '18', '2019-12-23 09:29:55', '2019-12-23 09:31:08', NULL),
(29, 1, 'cum', '251977.00', 0, '0.16', 'Odit iure asperiores voluptas.', '12', '2019-12-23 09:29:55', '2019-12-23 09:31:03', NULL),
(30, 2, 'delectus', '749754.00', 0, '0.57', 'Odit facilis cum et voluptatem non quis.', '10', '2019-12-23 09:29:55', '2019-12-23 09:30:58', NULL),
(31, 1, 'ut', '638053.00', 0, '0.80', 'Voluptatem vel ipsum ea illo.', '14', '2019-12-23 09:29:55', '2019-12-23 09:31:08', NULL),
(32, 1, 'est', '736466.00', 0, '0.00', 'Eaque numquam totam eum.', '1', '2019-12-23 09:29:55', '2019-12-23 09:31:03', NULL),
(33, 2, 'numquam', '710158.00', 0, '0.00', 'Officia magnam omnis autem sit maxime.', '4', '2019-12-23 09:29:55', '2019-12-23 09:31:06', NULL),
(34, 1, 'nostrum', '395317.00', 2, '0.41', 'Voluptas vel repellat est unde dolor.', '15', '2019-12-23 09:29:56', '2019-12-23 09:31:26', NULL),
(35, 1, 'corporis', '48802.00', 0, '0.00', 'Sint reprehenderit accusantium illo assumenda.', '14', '2019-12-23 09:29:56', '2019-12-23 09:31:13', NULL),
(36, 1, 'qui', '47640.00', 0, '0.58', 'Qui temporibus unde nihil sed quo qui.', '2', '2019-12-23 09:29:56', '2019-12-23 09:30:40', NULL),
(37, 1, 'voluptatem', '606219.00', 0, '0.87', 'Vitae id exercitationem quibusdam facere.', '18', '2019-12-23 09:29:56', '2019-12-23 09:30:45', NULL),
(38, 1, 'mollitia', '321103.00', 0, '0.00', 'Commodi eius eaque vitae expedita.', '14', '2019-12-23 09:29:56', '2019-12-23 09:30:41', NULL),
(39, 2, 'et', '707999.00', 0, '0.68', 'Corrupti explicabo voluptas cum ea quia.', '2', '2019-12-23 09:29:56', '2019-12-23 09:30:44', NULL),
(40, 1, 'enim', '896917.00', 1, '0.00', 'Deserunt iste qui qui soluta autem quis.', '16', '2019-12-23 09:29:56', '2019-12-23 09:31:23', NULL),
(41, 2, 'id', '552585.00', 4, '1.00', 'Assumenda doloremque in qui aut eos aut.', '19', '2019-12-23 09:29:56', '2019-12-23 09:31:24', NULL),
(42, 1, 'veniam', '336973.00', 0, '0.81', 'Placeat facilis quaerat vitae et ad.', '12', '2019-12-23 09:29:56', '2019-12-23 09:31:24', NULL),
(43, 2, 'error', '133703.00', 2, '0.00', 'Laborum qui vitae nam aut iste et sit.', '14', '2019-12-23 09:29:56', '2019-12-23 09:31:21', NULL),
(44, 1, 'ut', '73288.00', 0, '0.31', 'Beatae illo non veritatis sed vel.', '18', '2019-12-23 09:29:56', '2019-12-23 09:31:13', NULL),
(45, 1, 'sunt', '165022.00', 0, '0.02', 'Omnis beatae ut est molestias consequatur enim.', '11', '2019-12-23 09:29:56', '2019-12-23 09:31:03', NULL),
(46, 2, 'autem', '545447.00', 0, '0.00', 'Nesciunt consequatur tempore quia magnam quos in.', '14', '2019-12-23 09:29:57', '2019-12-23 09:31:21', NULL),
(47, 1, 'ad', '867661.00', 0, '0.00', 'Quis aspernatur magnam dignissimos fugit.', '18', '2019-12-23 09:29:57', '2019-12-23 09:31:19', NULL),
(48, 1, 'saepe', '450749.00', 0, '0.00', 'Non animi dolores maxime deleniti earum.', '19', '2019-12-23 09:29:57', '2019-12-23 09:30:42', NULL),
(49, 1, 'quia', '231465.00', 2, '0.00', 'Quod nihil id dignissimos quisquam qui.', '12', '2019-12-23 09:29:57', '2019-12-23 09:31:25', NULL),
(50, 2, 'ratione', '69377.00', 0, '0.00', 'In consequatur porro eligendi omnis voluptas.', '12', '2019-12-23 09:29:57', '2019-12-23 09:31:25', NULL);

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
(1, 1, 8, '3', '2019-12-23 09:29:52', '2019-12-23 09:29:52', NULL),
(2, 2, 84, '3', '2019-12-23 09:29:53', '2019-12-23 09:29:53', NULL),
(3, 3, 24, '12', '2019-12-23 09:29:53', '2019-12-23 09:29:53', NULL),
(4, 4, 99, '9', '2019-12-23 09:29:53', '2019-12-23 09:29:53', NULL),
(5, 5, 27, '15', '2019-12-23 09:29:53', '2019-12-23 09:29:53', NULL),
(6, 6, 48, '6', '2019-12-23 09:29:53', '2019-12-23 09:29:53', NULL),
(7, 7, 66, '9', '2019-12-23 09:29:53', '2019-12-23 09:29:53', NULL),
(8, 8, 24, '16', '2019-12-23 09:29:53', '2019-12-23 09:29:53', NULL),
(9, 9, 26, '3', '2019-12-23 09:29:53', '2019-12-23 09:29:53', NULL),
(10, 10, 84, '13', '2019-12-23 09:29:53', '2019-12-23 09:29:53', NULL),
(11, 11, 20, '20', '2019-12-23 09:29:54', '2019-12-23 09:29:54', NULL),
(12, 12, 3, '4', '2019-12-23 09:29:54', '2019-12-23 09:29:54', NULL),
(13, 13, 98, '11', '2019-12-23 09:29:54', '2019-12-23 09:29:54', NULL),
(14, 14, 46, '14', '2019-12-23 09:29:54', '2019-12-23 09:29:54', NULL),
(15, 15, 62, '11', '2019-12-23 09:29:54', '2019-12-23 09:29:54', NULL),
(16, 16, 99, '1', '2019-12-23 09:29:54', '2019-12-23 09:29:54', NULL),
(17, 17, 90, '1', '2019-12-23 09:29:54', '2019-12-23 09:29:54', NULL),
(18, 18, 72, '8', '2019-12-23 09:29:54', '2019-12-23 09:29:54', NULL),
(19, 19, 12, '4', '2019-12-23 09:29:55', '2019-12-23 09:29:55', NULL),
(20, 20, 19, '20', '2019-12-23 09:29:55', '2019-12-23 09:29:55', NULL),
(21, 21, 51, '12', '2019-12-23 09:29:55', '2019-12-23 09:29:55', NULL),
(22, 22, 52, '1', '2019-12-23 09:29:55', '2019-12-23 09:29:55', NULL),
(23, 23, 28, '19', '2019-12-23 09:29:55', '2019-12-23 09:29:55', NULL),
(24, 24, 27, '20', '2019-12-23 09:29:55', '2019-12-23 09:29:55', NULL),
(25, 25, 93, '6', '2019-12-23 09:29:55', '2019-12-23 09:29:55', NULL),
(26, 26, 37, '19', '2019-12-23 09:29:55', '2019-12-23 09:29:55', NULL),
(27, 27, 18, '13', '2019-12-23 09:29:55', '2019-12-23 09:29:55', NULL),
(28, 28, 8, '18', '2019-12-23 09:29:55', '2019-12-23 09:29:55', NULL),
(29, 29, 15, '12', '2019-12-23 09:29:55', '2019-12-23 09:29:55', NULL),
(30, 30, 54, '10', '2019-12-23 09:29:55', '2019-12-23 09:29:55', NULL),
(31, 31, 7, '14', '2019-12-23 09:29:55', '2019-12-23 09:29:55', NULL),
(32, 32, 70, '1', '2019-12-23 09:29:55', '2019-12-23 09:29:55', NULL),
(33, 33, 14, '4', '2019-12-23 09:29:56', '2019-12-23 09:29:56', NULL),
(34, 34, 87, '15', '2019-12-23 09:29:56', '2019-12-23 09:29:56', NULL),
(35, 35, 58, '14', '2019-12-23 09:29:56', '2019-12-23 09:29:56', NULL),
(36, 36, 37, '2', '2019-12-23 09:29:56', '2019-12-23 09:29:56', NULL),
(37, 37, 11, '18', '2019-12-23 09:29:56', '2019-12-23 09:29:56', NULL),
(38, 38, 84, '14', '2019-12-23 09:29:56', '2019-12-23 09:29:56', NULL),
(39, 39, 6, '2', '2019-12-23 09:29:56', '2019-12-23 09:29:56', NULL),
(40, 40, 19, '16', '2019-12-23 09:29:56', '2019-12-23 09:29:56', NULL),
(41, 41, 56, '19', '2019-12-23 09:29:56', '2019-12-23 09:29:56', NULL),
(42, 42, 53, '12', '2019-12-23 09:29:56', '2019-12-23 09:29:56', NULL),
(43, 43, 34, '14', '2019-12-23 09:29:56', '2019-12-23 09:29:56', NULL),
(44, 44, 93, '18', '2019-12-23 09:29:56', '2019-12-23 09:29:56', NULL),
(45, 45, 28, '11', '2019-12-23 09:29:57', '2019-12-23 09:29:57', NULL),
(46, 46, 61, '14', '2019-12-23 09:29:57', '2019-12-23 09:29:57', NULL),
(47, 47, 94, '18', '2019-12-23 09:29:57', '2019-12-23 09:29:57', NULL),
(48, 48, 30, '19', '2019-12-23 09:29:57', '2019-12-23 09:29:57', NULL),
(49, 49, 76, '12', '2019-12-23 09:29:57', '2019-12-23 09:29:57', NULL),
(50, 50, 67, '12', '2019-12-23 09:29:57', '2019-12-23 09:29:57', NULL);

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
(1, 'veritatis', '16', '2019-12-23 09:29:52', '2019-12-23 09:29:52', NULL),
(2, 'enim', '14', '2019-12-23 09:29:52', '2019-12-23 09:29:52', NULL);

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
(1, 58, '16', '2019-12-23 09:29:57', '2019-12-23 09:29:57', NULL),
(2, 93, '17', '2019-12-23 09:30:38', '2019-12-23 09:30:38', NULL),
(3, 97, '7', '2019-12-23 09:30:38', '2019-12-23 09:30:38', NULL),
(4, 47, '11', '2019-12-23 09:30:39', '2019-12-23 09:30:39', NULL),
(5, 30, '2', '2019-12-23 09:30:40', '2019-12-23 09:30:40', NULL),
(6, 100, '6', '2019-12-23 09:30:40', '2019-12-23 09:30:40', NULL),
(7, 46, '19', '2019-12-23 09:30:41', '2019-12-23 09:30:41', NULL),
(8, 31, '11', '2019-12-23 09:30:41', '2019-12-23 09:30:41', NULL),
(9, 1, '11', '2019-12-23 09:30:42', '2019-12-23 09:30:42', NULL),
(10, 94, '5', '2019-12-23 09:30:42', '2019-12-23 09:30:42', NULL),
(11, 56, '2', '2019-12-23 09:30:43', '2019-12-23 09:30:43', NULL),
(12, 75, '10', '2019-12-23 09:30:43', '2019-12-23 09:30:43', NULL),
(13, 3, '8', '2019-12-23 09:30:44', '2019-12-23 09:30:44', NULL),
(14, 61, '12', '2019-12-23 09:30:45', '2019-12-23 09:30:45', NULL),
(15, 39, '7', '2019-12-23 09:30:45', '2019-12-23 09:30:45', NULL),
(16, 66, '3', '2019-12-23 09:30:45', '2019-12-23 09:30:45', NULL),
(17, 50, '17', '2019-12-23 09:30:46', '2019-12-23 09:30:46', NULL),
(18, 26, '17', '2019-12-23 09:30:47', '2019-12-23 09:30:47', NULL),
(19, 5, '2', '2019-12-23 09:30:47', '2019-12-23 09:30:47', NULL),
(20, 8, '18', '2019-12-23 09:30:48', '2019-12-23 09:30:48', NULL),
(21, 11, '15', '2019-12-23 09:30:49', '2019-12-23 09:30:49', NULL),
(22, 81, '9', '2019-12-23 09:30:50', '2019-12-23 09:30:50', NULL),
(23, 77, '14', '2019-12-23 09:30:50', '2019-12-23 09:30:50', NULL),
(24, 79, '1', '2019-12-23 09:30:51', '2019-12-23 09:30:51', NULL),
(25, 21, '3', '2019-12-23 09:30:51', '2019-12-23 09:30:51', NULL),
(26, 78, '18', '2019-12-23 09:30:52', '2019-12-23 09:30:52', NULL),
(27, 88, '8', '2019-12-23 09:30:53', '2019-12-23 09:30:53', NULL),
(28, 86, '3', '2019-12-23 09:30:53', '2019-12-23 09:30:53', NULL),
(29, 78, '5', '2019-12-23 09:30:54', '2019-12-23 09:30:54', NULL),
(30, 38, '11', '2019-12-23 09:30:54', '2019-12-23 09:30:54', NULL),
(31, 25, '13', '2019-12-23 09:30:54', '2019-12-23 09:30:54', NULL),
(32, 94, '15', '2019-12-23 09:30:55', '2019-12-23 09:30:55', NULL),
(33, 87, '6', '2019-12-23 09:30:55', '2019-12-23 09:30:55', NULL),
(34, 89, '11', '2019-12-23 09:30:56', '2019-12-23 09:30:56', NULL),
(35, 13, '7', '2019-12-23 09:30:56', '2019-12-23 09:30:56', NULL),
(36, 53, '14', '2019-12-23 09:30:56', '2019-12-23 09:30:56', NULL),
(37, 40, '7', '2019-12-23 09:30:57', '2019-12-23 09:30:57', NULL),
(38, 55, '17', '2019-12-23 09:30:57', '2019-12-23 09:30:57', NULL),
(39, 59, '8', '2019-12-23 09:30:58', '2019-12-23 09:30:58', NULL),
(40, 50, '7', '2019-12-23 09:30:58', '2019-12-23 09:30:58', NULL),
(41, 15, '8', '2019-12-23 09:30:59', '2019-12-23 09:30:59', NULL),
(42, 41, '5', '2019-12-23 09:30:59', '2019-12-23 09:30:59', NULL),
(43, 96, '15', '2019-12-23 09:31:01', '2019-12-23 09:31:01', NULL),
(44, 50, '14', '2019-12-23 09:31:02', '2019-12-23 09:31:02', NULL),
(45, 47, '12', '2019-12-23 09:31:02', '2019-12-23 09:31:02', NULL),
(46, 12, '17', '2019-12-23 09:31:03', '2019-12-23 09:31:03', NULL),
(47, 84, '13', '2019-12-23 09:31:04', '2019-12-23 09:31:04', NULL),
(48, 52, '6', '2019-12-23 09:31:04', '2019-12-23 09:31:04', NULL),
(49, 82, '6', '2019-12-23 09:31:05', '2019-12-23 09:31:05', NULL),
(50, 83, '1', '2019-12-23 09:31:05', '2019-12-23 09:31:05', NULL),
(51, 6, '2', '2019-12-23 09:31:06', '2019-12-23 09:31:06', NULL),
(52, 33, '18', '2019-12-23 09:31:06', '2019-12-23 09:31:06', NULL),
(53, 82, '14', '2019-12-23 09:31:06', '2019-12-23 09:31:06', NULL),
(54, 9, '1', '2019-12-23 09:31:07', '2019-12-23 09:31:07', NULL),
(55, 74, '6', '2019-12-23 09:31:07', '2019-12-23 09:31:07', NULL),
(56, 35, '8', '2019-12-23 09:31:07', '2019-12-23 09:31:07', NULL),
(57, 61, '3', '2019-12-23 09:31:08', '2019-12-23 09:31:08', NULL),
(58, 75, '17', '2019-12-23 09:31:09', '2019-12-23 09:31:09', NULL),
(59, 74, '6', '2019-12-23 09:31:09', '2019-12-23 09:31:09', NULL),
(60, 5, '13', '2019-12-23 09:31:10', '2019-12-23 09:31:10', NULL),
(61, 93, '13', '2019-12-23 09:31:10', '2019-12-23 09:31:10', NULL),
(62, 82, '2', '2019-12-23 09:31:10', '2019-12-23 09:31:10', NULL),
(63, 29, '12', '2019-12-23 09:31:11', '2019-12-23 09:31:11', NULL),
(64, 36, '9', '2019-12-23 09:31:11', '2019-12-23 09:31:11', NULL),
(65, 37, '18', '2019-12-23 09:31:12', '2019-12-23 09:31:12', NULL),
(66, 85, '7', '2019-12-23 09:31:13', '2019-12-23 09:31:13', NULL),
(67, 18, '10', '2019-12-23 09:31:14', '2019-12-23 09:31:14', NULL),
(68, 68, '4', '2019-12-23 09:31:14', '2019-12-23 09:31:14', NULL),
(69, 29, '11', '2019-12-23 09:31:15', '2019-12-23 09:31:15', NULL),
(70, 33, '4', '2019-12-23 09:31:15', '2019-12-23 09:31:15', NULL),
(71, 69, '15', '2019-12-23 09:31:15', '2019-12-23 09:31:15', NULL),
(72, 24, '14', '2019-12-23 09:31:16', '2019-12-23 09:31:16', NULL),
(73, 1, '7', '2019-12-23 09:31:16', '2019-12-23 09:31:16', NULL),
(74, 82, '8', '2019-12-23 09:31:16', '2019-12-23 09:31:16', NULL),
(75, 24, '19', '2019-12-23 09:31:17', '2019-12-23 09:31:17', NULL),
(76, 87, '11', '2019-12-23 09:31:17', '2019-12-23 09:31:17', NULL),
(77, 47, '16', '2019-12-23 09:31:18', '2019-12-23 09:31:18', NULL),
(78, 5, '9', '2019-12-23 09:31:18', '2019-12-23 09:31:18', NULL),
(79, 62, '10', '2019-12-23 09:31:18', '2019-12-23 09:31:18', NULL),
(80, 20, '12', '2019-12-23 09:31:19', '2019-12-23 09:31:19', NULL),
(81, 11, '9', '2019-12-23 09:31:19', '2019-12-23 09:31:19', NULL),
(82, 40, '6', '2019-12-23 09:31:20', '2019-12-23 09:31:20', NULL),
(83, 52, '16', '2019-12-23 09:31:20', '2019-12-23 09:31:20', NULL),
(84, 87, '10', '2019-12-23 09:31:21', '2019-12-23 09:31:21', NULL),
(85, 92, '5', '2019-12-23 09:31:21', '2019-12-23 09:31:21', NULL),
(86, 74, '13', '2019-12-23 09:31:21', '2019-12-23 09:31:21', NULL),
(87, 1, '6', '2019-12-23 09:31:21', '2019-12-23 09:31:21', NULL),
(88, 28, '1', '2019-12-23 09:31:22', '2019-12-23 09:31:22', NULL),
(89, 39, '20', '2019-12-23 09:31:22', '2019-12-23 09:31:22', NULL),
(90, 56, '3', '2019-12-23 09:31:22', '2019-12-23 09:31:22', NULL),
(91, 48, '20', '2019-12-23 09:31:22', '2019-12-23 09:31:22', NULL),
(92, 27, '12', '2019-12-23 09:31:23', '2019-12-23 09:31:23', NULL),
(93, 3, '20', '2019-12-23 09:31:23', '2019-12-23 09:31:23', NULL),
(94, 39, '20', '2019-12-23 09:31:24', '2019-12-23 09:31:24', NULL),
(95, 94, '5', '2019-12-23 09:31:24', '2019-12-23 09:31:24', NULL),
(96, 28, '8', '2019-12-23 09:31:24', '2019-12-23 09:31:24', NULL),
(97, 92, '11', '2019-12-23 09:31:24', '2019-12-23 09:31:24', NULL),
(98, 75, '13', '2019-12-23 09:31:25', '2019-12-23 09:31:25', NULL),
(99, 29, '16', '2019-12-23 09:31:25', '2019-12-23 09:31:25', NULL),
(100, 30, '18', '2019-12-23 09:31:25', '2019-12-23 09:31:25', NULL);

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
(1, 1, 8, '92785.00', 10, '0.93', '862900.50'),
(2, 1, 18, '958395.00', 50, '0.00', '47919750.00'),
(3, 1, 20, '129026.00', 6, '0.83', '642549.48'),
(4, 2, 33, '710158.00', 3, '0.00', '2130474.00'),
(5, 2, 50, '69377.00', 52, '0.00', '3607604.00'),
(6, 2, 50, '69377.00', 1, '0.00', '69377.00'),
(7, 3, 24, '250202.00', 17, '0.96', '4083296.64'),
(8, 3, 3, '752584.00', 15, '0.60', '6773256.00'),
(9, 3, 8, '92785.00', 8, '0.93', '690320.40'),
(10, 4, 8, '92785.00', 2, '0.93', '172580.10'),
(11, 4, 3, '752584.00', 3, '0.60', '1354651.20'),
(12, 4, 15, '715290.00', 26, '0.00', '18597540.00'),
(13, 4, 27, '879784.00', 11, '0.00', '9677624.00'),
(14, 4, 36, '47640.00', 37, '0.58', '1022354.40'),
(15, 5, 1, '863838.00', 3, '0.00', '2591514.00'),
(16, 5, 10, '766417.00', 64, '0.00', '49050688.00'),
(17, 5, 38, '321103.00', 66, '0.00', '21192798.00'),
(18, 6, 43, '133703.00', 31, '0.00', '4144793.00'),
(19, 6, 37, '606219.00', 2, '0.87', '1054821.06'),
(20, 6, 2, '819543.00', 15, '0.00', '12293145.00'),
(21, 7, 34, '395317.00', 14, '0.41', '5534438.00'),
(22, 7, 48, '450749.00', 12, '0.00', '5408988.00'),
(23, 7, 8, '92785.00', 3, '0.93', '258870.15'),
(24, 7, 23, '250585.00', 15, '0.59', '2217677.25'),
(25, 8, 46, '545447.00', 55, '0.00', '29999585.00'),
(26, 8, 38, '321103.00', 18, '0.00', '5779854.00'),
(27, 8, 6, '961363.00', 22, '0.00', '21149986.00'),
(28, 9, 19, '954798.00', 6, '0.80', '4583030.40'),
(29, 9, 26, '78893.00', 9, '0.04', '710037.00'),
(30, 9, 48, '450749.00', 11, '0.00', '4958239.00'),
(31, 9, 25, '443299.00', 43, '0.89', '16965052.73'),
(32, 10, 8, '92785.00', 1, '0.93', '86290.05'),
(33, 10, 48, '450749.00', 7, '0.00', '3155243.00'),
(34, 10, 5, '125610.00', 18, '0.09', '2260980.00'),
(35, 10, 19, '954798.00', 4, '0.80', '3055353.60'),
(36, 10, 3, '752584.00', 4, '0.60', '1806201.60'),
(37, 11, 41, '552585.00', 3, '1.00', '1657755.00'),
(38, 11, 13, '986245.00', 79, '0.85', '66226351.75'),
(39, 11, 44, '73288.00', 29, '0.31', '2125352.00'),
(40, 11, 20, '129026.00', 4, '0.83', '428366.32'),
(41, 11, 24, '250202.00', 3, '0.96', '720581.76'),
(42, 12, 27, '879784.00', 2, '0.00', '1759568.00'),
(43, 12, 29, '251977.00', 5, '0.16', '1259885.00'),
(44, 12, 11, '155554.00', 10, '0.00', '1555540.00'),
(45, 12, 10, '766417.00', 18, '0.00', '13795506.00'),
(46, 12, 27, '879784.00', 4, '0.00', '3519136.00'),
(47, 13, 47, '867661.00', 18, '0.00', '15617898.00'),
(48, 13, 24, '250202.00', 3, '0.96', '720581.76'),
(49, 13, 39, '707999.00', 6, '0.68', '2888635.92'),
(50, 13, 15, '715290.00', 14, '0.00', '10014060.00'),
(51, 13, 11, '155554.00', 5, '0.00', '777770.00'),
(52, 14, 15, '715290.00', 5, '0.00', '3576450.00'),
(53, 14, 11, '155554.00', 3, '0.00', '466662.00'),
(54, 14, 23, '250585.00', 3, '0.59', '443535.45'),
(55, 15, 37, '606219.00', 9, '0.87', '4746694.77'),
(56, 15, 40, '896917.00', 10, '0.00', '8969170.00'),
(57, 15, 32, '736466.00', 48, '0.00', '35350368.00'),
(58, 16, 10, '766417.00', 2, '0.00', '1532834.00'),
(59, 16, 29, '251977.00', 2, '0.16', '503954.00'),
(60, 17, 45, '165022.00', 7, '0.02', '1155154.00'),
(61, 17, 6, '961363.00', 19, '0.00', '18265897.00'),
(62, 17, 19, '954798.00', 1, '0.80', '763838.40'),
(63, 17, 49, '231465.00', 33, '0.00', '7638345.00'),
(64, 18, 32, '736466.00', 8, '0.00', '5891728.00'),
(65, 18, 34, '395317.00', 57, '0.41', '22533069.00'),
(66, 18, 18, '958395.00', 4, '0.00', '3833580.00'),
(67, 19, 50, '69377.00', 12, '0.00', '832524.00'),
(68, 19, 4, '219298.00', 26, '0.00', '5701748.00'),
(69, 19, 35, '48802.00', 16, '0.00', '780832.00'),
(70, 19, 21, '437022.00', 12, '0.00', '5244264.00'),
(71, 19, 19, '954798.00', 1, '0.80', '763838.40'),
(72, 20, 11, '155554.00', 2, '0.00', '311108.00'),
(73, 20, 46, '545447.00', 4, '0.00', '2181788.00'),
(74, 20, 42, '336973.00', 17, '0.81', '4640118.21'),
(75, 20, 31, '638053.00', 2, '0.80', '1020884.80'),
(76, 20, 21, '437022.00', 39, '0.00', '17043858.00'),
(77, 21, 28, '678278.00', 7, '0.00', '4747946.00'),
(78, 21, 3, '752584.00', 2, '0.60', '903100.80'),
(79, 21, 27, '879784.00', 1, '0.00', '879784.00'),
(80, 21, 23, '250585.00', 9, '0.59', '1330606.35'),
(81, 21, 40, '896917.00', 2, '0.00', '1793834.00'),
(82, 22, 41, '552585.00', 25, '1.00', '13814625.00'),
(83, 22, 28, '678278.00', 3, '0.00', '2034834.00'),
(84, 22, 33, '710158.00', 4, '0.00', '2840632.00'),
(85, 22, 21, '437022.00', 25, '0.00', '10925550.00'),
(86, 23, 29, '251977.00', 6, '0.16', '1511862.00'),
(87, 23, 25, '443299.00', 40, '0.89', '15781444.40'),
(88, 23, 14, '216574.00', 20, '1.00', '4331480.00'),
(89, 24, 4, '219298.00', 38, '0.00', '8333324.00'),
(90, 25, 28, '678278.00', 2, '0.00', '1356556.00'),
(91, 25, 22, '848942.00', 23, '0.00', '19525666.00'),
(92, 25, 32, '736466.00', 21, '0.00', '15465786.00'),
(93, 26, 29, '251977.00', 6, '0.16', '1511862.00'),
(94, 26, 25, '443299.00', 47, '0.89', '18543197.17'),
(95, 26, 14, '216574.00', 40, '1.00', '8662960.00'),
(96, 26, 23, '250585.00', 7, '0.59', '1034916.05'),
(97, 27, 31, '638053.00', 6, '0.80', '3062654.40'),
(98, 27, 14, '216574.00', 5, '1.00', '1082870.00'),
(99, 27, 3, '752584.00', 1, '0.60', '451550.40'),
(100, 28, 12, '357551.00', 3, '0.06', '1072653.00'),
(101, 28, 4, '219298.00', 62, '0.00', '13596476.00'),
(102, 28, 26, '78893.00', 5, '0.04', '394465.00'),
(103, 29, 34, '395317.00', 52, '0.41', '20556484.00'),
(104, 29, 46, '545447.00', 4, '0.00', '2181788.00'),
(105, 30, 28, '678278.00', 2, '0.00', '1356556.00'),
(106, 30, 33, '710158.00', 4, '0.00', '2840632.00'),
(107, 30, 25, '443299.00', 3, '0.89', '1183608.33'),
(108, 31, 21, '437022.00', 5, '0.00', '2185110.00'),
(109, 31, 29, '251977.00', 1, '0.16', '251977.00'),
(110, 31, 5, '125610.00', 4, '0.09', '502440.00'),
(111, 31, 33, '710158.00', 1, '0.00', '710158.00'),
(112, 31, 20, '129026.00', 5, '0.83', '535457.90'),
(113, 32, 2, '819543.00', 20, '0.00', '16390860.00'),
(114, 32, 47, '867661.00', 40, '0.00', '34706440.00'),
(115, 32, 5, '125610.00', 3, '0.09', '376830.00'),
(116, 33, 30, '749754.00', 47, '0.57', '20085909.66'),
(117, 33, 26, '78893.00', 21, '0.04', '1656753.00'),
(118, 34, 22, '848942.00', 10, '0.00', '8489420.00'),
(119, 34, 26, '78893.00', 4, '0.04', '315572.00'),
(120, 35, 21, '437022.00', 2, '0.00', '874044.00'),
(121, 35, 30, '749754.00', 6, '0.57', '2564158.68'),
(122, 36, 40, '896917.00', 5, '0.00', '4484585.00'),
(123, 36, 49, '231465.00', 39, '0.00', '9027135.00'),
(124, 36, 35, '48802.00', 27, '0.00', '1317654.00'),
(125, 36, 18, '958395.00', 10, '0.00', '9583950.00'),
(126, 37, 26, '78893.00', 3, '0.04', '236679.00'),
(127, 37, 47, '867661.00', 6, '0.00', '5205966.00'),
(128, 38, 41, '552585.00', 13, '1.00', '7183605.00'),
(129, 38, 42, '336973.00', 53, '0.81', '14466250.89'),
(130, 38, 30, '749754.00', 1, '0.57', '427359.78'),
(131, 39, 2, '819543.00', 9, '0.00', '7375887.00'),
(132, 39, 30, '749754.00', 1, '0.57', '427359.78'),
(133, 39, 33, '710158.00', 5, '0.00', '3550790.00'),
(134, 40, 47, '867661.00', 3, '0.00', '2602983.00'),
(135, 40, 3, '752584.00', 1, '0.60', '451550.40'),
(136, 40, 21, '437022.00', 7, '0.00', '3059154.00'),
(137, 40, 27, '879784.00', 1, '0.00', '879784.00'),
(138, 41, 20, '129026.00', 1, '0.83', '107091.58'),
(139, 41, 35, '48802.00', 11, '0.00', '536822.00'),
(140, 41, 41, '552585.00', 10, '1.00', '5525850.00'),
(141, 41, 2, '819543.00', 1, '0.00', '819543.00'),
(142, 42, 42, '336973.00', 51, '0.81', '13920354.63'),
(143, 42, 25, '443299.00', 3, '0.89', '1183608.33'),
(144, 42, 17, '967469.00', 7, '0.39', '6772283.00'),
(145, 42, 42, '336973.00', 1, '0.81', '272948.13'),
(146, 42, 18, '958395.00', 3, '0.00', '2875185.00'),
(147, 43, 1, '863838.00', 3, '0.00', '2591514.00'),
(148, 43, 42, '336973.00', 37, '0.81', '10099080.81'),
(149, 43, 20, '129026.00', 2, '0.83', '214183.16'),
(150, 43, 15, '715290.00', 9, '0.00', '6437610.00'),
(151, 43, 45, '165022.00', 18, '0.02', '2970396.00'),
(152, 44, 15, '715290.00', 8, '0.00', '5722320.00'),
(153, 44, 15, '715290.00', 5, '0.00', '3576450.00'),
(154, 44, 22, '848942.00', 19, '0.00', '16129898.00'),
(155, 44, 45, '165022.00', 18, '0.02', '2970396.00'),
(156, 45, 13, '986245.00', 2, '0.85', '1676616.50'),
(157, 45, 32, '736466.00', 1, '0.00', '736466.00'),
(158, 45, 29, '251977.00', 1, '0.16', '251977.00'),
(159, 46, 14, '216574.00', 1, '1.00', '216574.00'),
(160, 46, 45, '165022.00', 3, '0.02', '495066.00'),
(161, 46, 9, '428005.00', 12, '0.70', '3595242.00'),
(162, 47, 9, '428005.00', 1, '0.70', '299603.50'),
(163, 47, 20, '129026.00', 2, '0.83', '214183.16'),
(164, 47, 17, '967469.00', 41, '0.39', '39666229.00'),
(165, 48, 27, '879784.00', 1, '0.00', '879784.00'),
(166, 48, 15, '715290.00', 1, '0.00', '715290.00'),
(167, 48, 47, '867661.00', 6, '0.00', '5205966.00'),
(168, 48, 13, '986245.00', 16, '0.85', '13412932.00'),
(169, 49, 15, '715290.00', 1, '0.00', '715290.00'),
(170, 49, 42, '336973.00', 21, '0.81', '5731910.73'),
(171, 49, 5, '125610.00', 2, '0.09', '251220.00'),
(172, 49, 40, '896917.00', 1, '0.00', '896917.00'),
(173, 50, 49, '231465.00', 1, '0.00', '231465.00'),
(174, 50, 34, '395317.00', 8, '0.41', '3162536.00'),
(175, 50, 28, '678278.00', 1, '0.00', '678278.00'),
(176, 50, 16, '290021.00', 13, '0.00', '3770273.00'),
(177, 50, 44, '73288.00', 33, '0.31', '2418504.00'),
(178, 51, 18, '958395.00', 6, '0.00', '5750370.00'),
(179, 52, 6, '961363.00', 3, '0.00', '2884089.00'),
(180, 52, 9, '428005.00', 1, '0.70', '299603.50'),
(181, 53, 33, '710158.00', 1, '0.00', '710158.00'),
(182, 53, 44, '73288.00', 29, '0.31', '2125352.00'),
(183, 54, 49, '231465.00', 2, '0.00', '462930.00'),
(184, 55, 23, '250585.00', 1, '0.59', '147845.15'),
(185, 55, 42, '336973.00', 25, '0.81', '6823703.25'),
(186, 55, 23, '250585.00', 2, '0.59', '295690.30'),
(187, 55, 47, '867661.00', 22, '0.00', '19088542.00'),
(188, 56, 25, '443299.00', 2, '0.89', '789072.22'),
(189, 56, 31, '638053.00', 1, '0.80', '510442.40'),
(190, 56, 28, '678278.00', 2, '0.00', '1356556.00'),
(191, 56, 5, '125610.00', 1, '0.09', '125610.00'),
(192, 56, 21, '437022.00', 6, '0.00', '2622132.00'),
(193, 57, 40, '896917.00', 3, '0.00', '2690751.00'),
(194, 57, 1, '863838.00', 5, '0.00', '4319190.00'),
(195, 57, 4, '219298.00', 69, '0.00', '15131562.00'),
(196, 58, 16, '290021.00', 70, '0.00', '20301470.00'),
(197, 59, 9, '428005.00', 11, '0.70', '3295638.50'),
(198, 60, 42, '336973.00', 5, '0.81', '1364740.65'),
(199, 61, 24, '250202.00', 1, '0.96', '240193.92'),
(200, 61, 24, '250202.00', 2, '0.96', '480387.84'),
(201, 62, 20, '129026.00', 1, '0.83', '107091.58'),
(202, 62, 25, '443299.00', 1, '0.89', '394536.11'),
(203, 62, 16, '290021.00', 5, '0.00', '1450105.00'),
(204, 62, 9, '428005.00', 1, '0.70', '299603.50'),
(205, 63, 22, '848942.00', 3, '0.00', '2546826.00'),
(206, 63, 49, '231465.00', 2, '0.00', '462930.00'),
(207, 63, 46, '545447.00', 1, '0.00', '545447.00'),
(208, 64, 35, '48802.00', 3, '0.00', '146406.00'),
(209, 64, 46, '545447.00', 1, '0.00', '545447.00'),
(210, 64, 42, '336973.00', 9, '0.81', '2456533.17'),
(211, 64, 22, '848942.00', 4, '0.00', '3395768.00'),
(212, 65, 11, '155554.00', 1, '0.00', '155554.00'),
(213, 66, 44, '73288.00', 2, '0.31', '146576.00'),
(214, 66, 35, '48802.00', 1, '0.00', '48802.00'),
(215, 67, 24, '250202.00', 4, '0.96', '960775.68'),
(216, 68, 12, '357551.00', 1, '0.06', '357551.00'),
(217, 68, 5, '125610.00', 1, '0.09', '125610.00'),
(218, 68, 3, '752584.00', 1, '0.60', '451550.40'),
(219, 68, 41, '552585.00', 14, '1.00', '7736190.00'),
(220, 69, 13, '986245.00', 1, '0.85', '838308.25'),
(221, 69, 41, '552585.00', 4, '1.00', '2210340.00'),
(222, 69, 49, '231465.00', 2, '0.00', '462930.00'),
(223, 70, 7, '700765.00', 52, '0.00', '36439780.00'),
(224, 71, 11, '155554.00', 1, '0.00', '155554.00'),
(225, 73, 21, '437022.00', 1, '0.00', '437022.00'),
(226, 73, 13, '986245.00', 1, '0.85', '838308.25'),
(227, 74, 12, '357551.00', 1, '0.06', '357551.00'),
(228, 74, 6, '961363.00', 3, '0.00', '2884089.00'),
(229, 74, 26, '78893.00', 1, '0.04', '78893.00'),
(230, 74, 18, '958395.00', 2, '0.00', '1916790.00'),
(231, 75, 26, '78893.00', 1, '0.04', '78893.00'),
(232, 75, 34, '395317.00', 5, '0.41', '1976585.00'),
(233, 76, 17, '967469.00', 39, '0.39', '37731291.00'),
(234, 76, 6, '961363.00', 1, '0.00', '961363.00'),
(235, 78, 40, '896917.00', 1, '0.00', '896917.00'),
(236, 78, 43, '133703.00', 3, '0.00', '401109.00'),
(237, 79, 2, '819543.00', 22, '0.00', '18029946.00'),
(238, 80, 7, '700765.00', 6, '0.00', '4204590.00'),
(239, 80, 15, '715290.00', 1, '0.00', '715290.00'),
(240, 80, 47, '867661.00', 2, '0.00', '1735322.00'),
(241, 81, 4, '219298.00', 4, '0.00', '877192.00'),
(242, 81, 24, '250202.00', 3, '0.96', '720581.76'),
(243, 82, 50, '69377.00', 1, '0.00', '69377.00'),
(244, 83, 7, '700765.00', 1, '0.00', '700765.00'),
(245, 83, 12, '357551.00', 1, '0.06', '357551.00'),
(246, 83, 50, '69377.00', 1, '0.00', '69377.00'),
(247, 84, 46, '545447.00', 1, '0.00', '545447.00'),
(248, 85, 43, '133703.00', 1, '0.00', '133703.00'),
(249, 87, 2, '819543.00', 26, '0.00', '21308118.00'),
(250, 87, 6, '961363.00', 1, '0.00', '961363.00'),
(251, 87, 34, '395317.00', 2, '0.41', '790634.00'),
(252, 88, 26, '78893.00', 2, '0.04', '157786.00'),
(253, 88, 22, '848942.00', 3, '0.00', '2546826.00'),
(254, 89, 16, '290021.00', 10, '0.00', '2900210.00'),
(255, 90, 22, '848942.00', 1, '0.00', '848942.00'),
(256, 91, 4, '219298.00', 2, '0.00', '438596.00'),
(257, 92, 24, '250202.00', 4, '0.96', '960775.68'),
(258, 93, 40, '896917.00', 1, '0.00', '896917.00'),
(259, 93, 15, '715290.00', 1, '0.00', '715290.00'),
(260, 93, 17, '967469.00', 36, '0.39', '34828884.00'),
(261, 94, 41, '552585.00', 4, '1.00', '2210340.00'),
(262, 94, 4, '219298.00', 2, '0.00', '438596.00'),
(263, 96, 42, '336973.00', 14, '0.81', '3821273.82'),
(264, 96, 12, '357551.00', 1, '0.06', '357551.00'),
(265, 96, 49, '231465.00', 1, '0.00', '231465.00'),
(266, 98, 49, '231465.00', 2, '0.00', '462930.00'),
(267, 99, 50, '69377.00', 1, '0.00', '69377.00'),
(268, 99, 7, '700765.00', 1, '0.00', '700765.00'),
(269, 99, 34, '395317.00', 4, '0.41', '1581268.00'),
(270, 100, 34, '395317.00', 2, '0.41', '790634.00'),
(271, 100, 17, '967469.00', 15, '0.39', '14512035.00');

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
(1, 5, 1, 5472180754254033, '2019-12-24 16:29:58', '49425199.98', 'Submitted', '16', '2019-12-23 09:29:58', '2019-12-23 09:29:58', NULL),
(2, 1, 2, 5351800268386023, '2019-12-24 16:30:38', '5807455.00', 'Submitted', '17', '2019-12-23 09:30:38', '2019-12-23 09:30:38', NULL),
(3, 3, 3, 4716612588901305, '2019-12-24 16:30:39', '11546873.04', 'Submitted', '7', '2019-12-23 09:30:39', '2019-12-23 09:30:39', NULL),
(4, 1, 4, 5228643632534022, '2019-12-24 16:30:40', '30824749.70', 'Completed', '11', '2019-12-23 09:30:40', '2019-12-23 09:30:40', NULL),
(5, 5, 5, 374419775709785, '2019-12-24 16:30:40', '72835000.00', 'Completed', '2', '2019-12-23 09:30:40', '2019-12-23 09:30:40', NULL),
(6, 4, 6, 2338949492568644, '2019-12-24 16:30:41', '17492759.06', 'Submitted', '6', '2019-12-23 09:30:41', '2019-12-23 09:30:41', NULL),
(7, 2, 7, 4556945581466485, '2019-12-24 16:30:41', '13419973.40', 'Submitted', '19', '2019-12-23 09:30:41', '2019-12-23 09:30:41', NULL),
(8, 3, 8, 2720400704834313, '2019-12-24 16:30:42', '56929425.00', 'Completed', '11', '2019-12-23 09:30:42', '2019-12-23 09:30:42', NULL),
(9, 3, 9, 6011318012307336, '2019-12-24 16:30:42', '27216359.13', 'Completed', '11', '2019-12-23 09:30:42', '2019-12-23 09:30:42', NULL),
(10, 4, 10, 4532380518257006, '2019-12-24 16:30:42', '10364068.25', 'Completed', '5', '2019-12-23 09:30:42', '2019-12-23 09:30:42', NULL),
(11, 1, 11, 4929181609782832, '2019-12-24 16:30:43', '71158406.83', 'Submitted', '2', '2019-12-23 09:30:43', '2019-12-23 09:30:43', NULL),
(12, 2, 12, 5525612005294126, '2019-12-24 16:30:44', '21889635.00', 'Submitted', '10', '2019-12-23 09:30:44', '2019-12-23 09:30:44', NULL),
(13, 2, 13, 5108263556133241, '2019-12-24 16:30:44', '30018945.68', 'Submitted', '8', '2019-12-23 09:30:44', '2019-12-23 09:30:44', NULL),
(14, 4, 14, 6011339159143763, '2019-12-24 16:30:45', '4486647.45', 'Submitted', '12', '2019-12-23 09:30:45', '2019-12-23 09:30:45', NULL),
(15, 4, 15, 4917531454445329, '2019-12-24 16:30:45', '49066232.77', 'Submitted', '7', '2019-12-23 09:30:45', '2019-12-23 09:30:45', NULL),
(16, 2, 16, 2720969209895037, '2019-12-24 16:30:46', '2036788.00', 'Submitted', '3', '2019-12-23 09:30:46', '2019-12-23 09:30:46', NULL),
(17, 3, 17, 372897548520146, '2019-12-24 16:30:47', '27823234.40', 'Completed', '17', '2019-12-23 09:30:47', '2019-12-23 09:30:47', NULL),
(18, 4, 18, 2720643455993693, '2019-12-24 16:30:47', '32258377.00', 'Canceled', '17', '2019-12-23 09:30:47', '2019-12-23 09:30:47', NULL),
(19, 2, 19, 4929265810508076, '2019-12-24 16:30:48', '13323206.40', 'Completed', '2', '2019-12-23 09:30:48', '2019-12-23 09:30:48', NULL),
(20, 4, 20, 4532508037591279, '2019-12-24 16:30:49', '25197757.01', 'Canceled', '18', '2019-12-23 09:30:49', '2019-12-23 09:30:49', NULL),
(21, 3, 21, 4539302681799, '2019-12-24 16:30:50', '9655271.15', 'Canceled', '15', '2019-12-23 09:30:50', '2019-12-23 09:30:50', NULL),
(22, 2, 22, 4716544063086940, '2019-12-24 16:30:50', '29615641.00', 'Completed', '9', '2019-12-23 09:30:50', '2019-12-23 09:30:50', NULL),
(23, 2, 23, 4556118215534785, '2019-12-24 16:30:51', '21624786.40', 'Canceled', '14', '2019-12-23 09:30:51', '2019-12-23 09:30:51', NULL),
(24, 2, 24, 5239086122686745, '2019-12-24 16:30:51', '8333324.00', 'Canceled', '1', '2019-12-23 09:30:51', '2019-12-23 09:30:51', NULL),
(25, 4, 25, 5578866842125374, '2019-12-24 16:30:52', '36348008.00', 'Submitted', '3', '2019-12-23 09:30:52', '2019-12-23 09:30:52', NULL),
(26, 4, 26, 4485924160656929, '2019-12-24 16:30:53', '29752935.22', 'Completed', '18', '2019-12-23 09:30:53', '2019-12-23 09:30:53', NULL),
(27, 1, 27, 2667758463210420, '2019-12-24 16:30:53', '4597074.80', 'Completed', '8', '2019-12-23 09:30:53', '2019-12-23 09:30:53', NULL),
(28, 2, 28, 2720201429136053, '2019-12-24 16:30:54', '15063594.00', 'Canceled', '3', '2019-12-23 09:30:54', '2019-12-23 09:30:54', NULL),
(29, 2, 29, 6011061690111543, '2019-12-24 16:30:54', '22738272.00', 'Submitted', '5', '2019-12-23 09:30:54', '2019-12-23 09:30:54', NULL),
(30, 4, 30, 4985281547253671, '2019-12-24 16:30:54', '5380796.33', 'Canceled', '11', '2019-12-23 09:30:54', '2019-12-23 09:30:54', NULL),
(31, 2, 31, 4532256623521298, '2019-12-24 16:30:55', '4185142.90', 'Submitted', '13', '2019-12-23 09:30:55', '2019-12-23 09:30:55', NULL),
(32, 2, 32, 4532173840205730, '2019-12-24 16:30:55', '51474130.00', 'Completed', '15', '2019-12-23 09:30:55', '2019-12-23 09:30:55', NULL),
(33, 4, 33, 2720716699059933, '2019-12-24 16:30:56', '21742662.66', 'Submitted', '6', '2019-12-23 09:30:56', '2019-12-23 09:30:56', NULL),
(34, 2, 34, 4716169394686604, '2019-12-24 16:30:56', '8804992.00', 'Canceled', '11', '2019-12-23 09:30:56', '2019-12-23 09:30:56', NULL),
(35, 3, 35, 4024007192775715, '2019-12-24 16:30:56', '3438202.68', 'Completed', '7', '2019-12-23 09:30:56', '2019-12-23 09:30:56', NULL),
(36, 3, 36, 2481811979011560, '2019-12-24 16:30:57', '24413324.00', 'Submitted', '14', '2019-12-23 09:30:57', '2019-12-23 09:30:57', NULL),
(37, 5, 37, 4556325225821520, '2019-12-24 16:30:57', '5442645.00', 'Completed', '7', '2019-12-23 09:30:57', '2019-12-23 09:30:57', NULL),
(38, 4, 38, 2221070315311813, '2019-12-24 16:30:58', '22077215.67', 'Canceled', '17', '2019-12-23 09:30:58', '2019-12-23 09:30:58', NULL),
(39, 3, 39, 4716710616095346, '2019-12-24 16:30:58', '11354036.78', 'Submitted', '8', '2019-12-23 09:30:58', '2019-12-23 09:30:58', NULL),
(40, 1, 40, 5356882215801911, '2019-12-24 16:30:58', '6993471.40', 'Canceled', '7', '2019-12-23 09:30:58', '2019-12-23 09:30:58', NULL),
(41, 2, 41, 4485895263296138, '2019-12-24 16:30:59', '6989306.58', 'Completed', '8', '2019-12-23 09:30:59', '2019-12-23 09:30:59', NULL),
(42, 5, 42, 4485734504183609, '2019-12-24 16:31:00', '25024379.09', 'Canceled', '5', '2019-12-23 09:31:00', '2019-12-23 09:31:00', NULL),
(43, 4, 43, 2720358059657053, '2019-12-24 16:31:02', '22312783.97', 'Canceled', '15', '2019-12-23 09:31:02', '2019-12-23 09:31:02', NULL),
(44, 5, 44, 4628207647602585, '2019-12-24 16:31:02', '28399064.00', 'Completed', '14', '2019-12-23 09:31:02', '2019-12-23 09:31:02', NULL),
(45, 2, 45, 5503913431690358, '2019-12-24 16:31:03', '2665059.50', 'Completed', '12', '2019-12-23 09:31:03', '2019-12-23 09:31:03', NULL),
(46, 5, 46, 4716965563023382, '2019-12-24 16:31:04', '4306882.00', 'Completed', '17', '2019-12-23 09:31:04', '2019-12-23 09:31:04', NULL),
(47, 3, 47, 4716009735949313, '2019-12-24 16:31:04', '40180015.66', 'Submitted', '13', '2019-12-23 09:31:04', '2019-12-23 09:31:04', NULL),
(48, 3, 48, 5496858742409346, '2019-12-24 16:31:05', '20213972.00', 'Completed', '6', '2019-12-23 09:31:05', '2019-12-23 09:31:05', NULL),
(49, 4, 49, 344813378311659, '2019-12-24 16:31:05', '7595337.73', 'Canceled', '6', '2019-12-23 09:31:05', '2019-12-23 09:31:05', NULL),
(50, 2, 50, 4716906337699651, '2019-12-24 16:31:06', '10261056.00', 'Completed', '1', '2019-12-23 09:31:06', '2019-12-23 09:31:06', NULL),
(51, 2, 51, 2353683285149730, '2019-12-24 16:31:06', '5750370.00', 'Completed', '2', '2019-12-23 09:31:06', '2019-12-23 09:31:06', NULL),
(52, 1, 52, 5151989750708554, '2019-12-24 16:31:06', '3183692.50', 'Completed', '18', '2019-12-23 09:31:06', '2019-12-23 09:31:06', NULL),
(53, 1, 53, 2615801599790262, '2019-12-24 16:31:07', '2835510.00', 'Submitted', '14', '2019-12-23 09:31:07', '2019-12-23 09:31:07', NULL),
(54, 2, 54, 4801383236400969, '2019-12-24 16:31:07', '462930.00', 'Canceled', '1', '2019-12-23 09:31:07', '2019-12-23 09:31:07', NULL),
(55, 1, 55, 4024007196183361, '2019-12-24 16:31:07', '26355780.70', 'Submitted', '6', '2019-12-23 09:31:07', '2019-12-23 09:31:07', NULL),
(56, 2, 56, 4485476664839360, '2019-12-24 16:31:08', '5403812.62', 'Submitted', '8', '2019-12-23 09:31:08', '2019-12-23 09:31:08', NULL),
(57, 1, 57, 5285943959358819, '2019-12-24 16:31:09', '22141503.00', 'Submitted', '3', '2019-12-23 09:31:09', '2019-12-23 09:31:09', NULL),
(58, 2, 58, 377253749728069, '2019-12-24 16:31:09', '20301470.00', 'Completed', '17', '2019-12-23 09:31:09', '2019-12-23 09:31:09', NULL),
(59, 2, 59, 4485034720051, '2019-12-24 16:31:09', '3295638.50', 'Submitted', '6', '2019-12-23 09:31:09', '2019-12-23 09:31:09', NULL),
(60, 4, 60, 4024007188358740, '2019-12-24 16:31:10', '1364740.65', 'Submitted', '13', '2019-12-23 09:31:10', '2019-12-23 09:31:10', NULL),
(61, 4, 61, 6011754249026986, '2019-12-24 16:31:10', '720581.76', 'Canceled', '13', '2019-12-23 09:31:10', '2019-12-23 09:31:10', NULL),
(62, 3, 62, 2371869531306434, '2019-12-24 16:31:11', '2251336.19', 'Submitted', '2', '2019-12-23 09:31:11', '2019-12-23 09:31:11', NULL),
(63, 3, 63, 2221504351039029, '2019-12-24 16:31:11', '3555203.00', 'Canceled', '12', '2019-12-23 09:31:11', '2019-12-23 09:31:11', NULL),
(64, 1, 64, 4024007152963376, '2019-12-24 16:31:12', '6544154.17', 'Completed', '9', '2019-12-23 09:31:12', '2019-12-23 09:31:12', NULL),
(65, 1, 65, 370264949952497, '2019-12-24 16:31:13', '155554.00', 'Completed', '18', '2019-12-23 09:31:13', '2019-12-23 09:31:13', NULL),
(66, 5, 66, 4539083915439879, '2019-12-24 16:31:13', '195378.00', 'Submitted', '7', '2019-12-23 09:31:13', '2019-12-23 09:31:13', NULL),
(67, 3, 67, 4539797038233451, '2019-12-24 16:31:14', '960775.68', 'Canceled', '10', '2019-12-23 09:31:14', '2019-12-23 09:31:14', NULL),
(68, 5, 68, 2619440520660041, '2019-12-24 16:31:15', '8670901.40', 'Submitted', '4', '2019-12-23 09:31:15', '2019-12-23 09:31:15', NULL),
(69, 5, 69, 2536174928160714, '2019-12-24 16:31:15', '3511578.25', 'Canceled', '11', '2019-12-23 09:31:15', '2019-12-23 09:31:15', NULL),
(70, 3, 70, 2499591519767349, '2019-12-24 16:31:15', '36439780.00', 'Submitted', '4', '2019-12-23 09:31:15', '2019-12-23 09:31:15', NULL),
(71, 1, 71, 2324509588158076, '2019-12-24 16:31:16', '155554.00', 'Submitted', '15', '2019-12-23 09:31:16', '2019-12-23 09:31:16', NULL),
(72, 4, 72, 4024007162734056, '2019-12-24 16:31:16', '0.00', 'Completed', '14', '2019-12-23 09:31:16', '2019-12-23 09:31:16', NULL),
(73, 5, 73, 6011992052335785, '2019-12-24 16:31:16', '1275330.25', 'Completed', '7', '2019-12-23 09:31:16', '2019-12-23 09:31:16', NULL),
(74, 3, 74, 4532025453091189, '2019-12-24 16:31:17', '5237323.00', 'Submitted', '8', '2019-12-23 09:31:17', '2019-12-23 09:31:17', NULL),
(75, 5, 75, 5375379957626579, '2019-12-24 16:31:17', '2055478.00', 'Submitted', '19', '2019-12-23 09:31:17', '2019-12-23 09:31:17', NULL),
(76, 4, 76, 4556582911151824, '2019-12-24 16:31:17', '38692654.00', 'Canceled', '11', '2019-12-23 09:31:17', '2019-12-23 09:31:17', NULL),
(77, 1, 77, 4468604962190928, '2019-12-24 16:31:18', '0.00', 'Canceled', '16', '2019-12-23 09:31:18', '2019-12-23 09:31:18', NULL),
(78, 2, 78, 2546164071957626, '2019-12-24 16:31:18', '1298026.00', 'Canceled', '9', '2019-12-23 09:31:18', '2019-12-23 09:31:18', NULL),
(79, 5, 79, 4532150404947204, '2019-12-24 16:31:18', '18029946.00', 'Canceled', '10', '2019-12-23 09:31:18', '2019-12-23 09:31:18', NULL),
(80, 5, 80, 4539406755044, '2019-12-24 16:31:19', '6655202.00', 'Completed', '12', '2019-12-23 09:31:19', '2019-12-23 09:31:19', NULL),
(81, 4, 81, 5457682392023000, '2019-12-24 16:31:20', '1597773.76', 'Canceled', '9', '2019-12-23 09:31:20', '2019-12-23 09:31:20', NULL),
(82, 5, 82, 4532115796390081, '2019-12-24 16:31:20', '69377.00', 'Completed', '6', '2019-12-23 09:31:20', '2019-12-23 09:31:20', NULL),
(83, 3, 83, 4929847744851993, '2019-12-24 16:31:21', '1127693.00', 'Canceled', '16', '2019-12-23 09:31:21', '2019-12-23 09:31:21', NULL),
(84, 5, 84, 4539582454146241, '2019-12-24 16:31:21', '545447.00', 'Completed', '10', '2019-12-23 09:31:21', '2019-12-23 09:31:21', NULL),
(85, 3, 85, 4556453307628, '2019-12-24 16:31:21', '133703.00', 'Submitted', '5', '2019-12-23 09:31:21', '2019-12-23 09:31:21', NULL),
(86, 4, 86, 4532345453839, '2019-12-24 16:31:21', '0.00', 'Submitted', '13', '2019-12-23 09:31:21', '2019-12-23 09:31:21', NULL),
(87, 3, 87, 4024007198661521, '2019-12-24 16:31:22', '23060115.00', 'Completed', '6', '2019-12-23 09:31:22', '2019-12-23 09:31:22', NULL),
(88, 3, 88, 4929164565885, '2019-12-24 16:31:22', '2704612.00', 'Completed', '1', '2019-12-23 09:31:22', '2019-12-23 09:31:22', NULL),
(89, 3, 89, 4556352498984694, '2019-12-24 16:31:22', '2900210.00', 'Completed', '20', '2019-12-23 09:31:22', '2019-12-23 09:31:22', NULL),
(90, 4, 90, 4916760611103924, '2019-12-24 16:31:22', '848942.00', 'Completed', '3', '2019-12-23 09:31:22', '2019-12-23 09:31:22', NULL),
(91, 5, 91, 4539779301770674, '2019-12-24 16:31:23', '438596.00', 'Canceled', '20', '2019-12-23 09:31:23', '2019-12-23 09:31:23', NULL),
(92, 5, 92, 4556818688044044, '2019-12-24 16:31:23', '960775.68', 'Submitted', '12', '2019-12-23 09:31:23', '2019-12-23 09:31:23', NULL),
(93, 4, 93, 2720438899368663, '2019-12-24 16:31:23', '36441091.00', 'Canceled', '20', '2019-12-23 09:31:23', '2019-12-23 09:31:23', NULL),
(94, 4, 94, 4532568371751566, '2019-12-24 16:31:24', '2648936.00', 'Canceled', '20', '2019-12-23 09:31:24', '2019-12-23 09:31:24', NULL),
(95, 2, 95, 2483175653113110, '2019-12-24 16:31:24', '0.00', 'Canceled', '5', '2019-12-23 09:31:24', '2019-12-23 09:31:24', NULL),
(96, 4, 96, 5458591793996384, '2019-12-24 16:31:24', '4410289.82', 'Submitted', '8', '2019-12-23 09:31:24', '2019-12-23 09:31:24', NULL),
(97, 2, 97, 5416552204485970, '2019-12-24 16:31:25', '0.00', 'Canceled', '11', '2019-12-23 09:31:25', '2019-12-23 09:31:25', NULL),
(98, 5, 98, 4539012493933953, '2019-12-24 16:31:25', '462930.00', 'Canceled', '13', '2019-12-23 09:31:25', '2019-12-23 09:31:25', NULL),
(99, 5, 99, 349854057085359, '2019-12-24 16:31:25', '2351410.00', 'Completed', '16', '2019-12-23 09:31:25', '2019-12-23 09:31:25', NULL),
(100, 2, 100, 345502882929713, '2019-12-24 16:31:26', '15302669.00', 'Canceled', '18', '2019-12-23 09:31:26', '2019-12-23 09:31:26', NULL);

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
(1, 'Cash', '1', '2019-12-23 09:29:46', '2019-12-23 18:38:54', NULL),
(2, 'BRI Credit Card', '1', '2019-12-23 09:29:46', '2019-12-23 18:39:42', NULL),
(3, 'BCA Debit Card', '1', '2019-12-23 09:29:46', '2019-12-23 18:39:57', NULL),
(4, 'BRI Debit Card', '1', '2019-12-23 09:29:46', '2019-12-23 18:39:23', NULL),
(5, 'BCA Credit Card', '1', '2019-12-23 09:29:46', '2019-12-23 18:40:18', NULL),
(6, 'BNI Debit Card', '1', '2019-12-23 18:41:02', '2019-12-23 18:41:02', NULL),
(7, 'BNI Credit Card', '1', '2019-12-23 18:41:14', '2019-12-23 18:41:14', NULL),
(8, 'OVO', '1', '2019-12-23 18:41:34', '2019-12-23 18:41:42', '2019-12-23 18:41:42');

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
(1, 'Position.*', '12', '2019-12-23 09:29:40', '2019-12-23 09:29:40', NULL),
(2, 'Position.Create', '20', '2019-12-23 09:29:40', '2019-12-23 09:29:40', NULL),
(3, 'Position.Read', '10', '2019-12-23 09:29:40', '2019-12-23 09:29:40', NULL),
(4, 'Position.Update', '9', '2019-12-23 09:29:40', '2019-12-23 09:29:40', NULL),
(5, 'Position.Delete', '15', '2019-12-23 09:29:40', '2019-12-23 09:29:40', NULL),
(6, 'Employee.*', '10', '2019-12-23 09:29:40', '2019-12-23 09:29:40', NULL),
(7, 'Employee.Create', '6', '2019-12-23 09:29:40', '2019-12-23 09:29:40', NULL),
(8, 'Employee.Read', '12', '2019-12-23 09:29:40', '2019-12-23 09:29:40', NULL),
(9, 'Employee.Update', '8', '2019-12-23 09:29:41', '2019-12-23 09:29:41', NULL),
(10, 'Employee.Delete', '6', '2019-12-23 09:29:41', '2019-12-23 09:29:41', NULL),
(11, 'Role.*', '12', '2019-12-23 09:29:41', '2019-12-23 09:29:41', NULL),
(12, 'Role.Create', '8', '2019-12-23 09:29:41', '2019-12-23 09:29:41', NULL),
(13, 'Role.Read', '19', '2019-12-23 09:29:41', '2019-12-23 09:29:41', NULL),
(14, 'Role.Update', '8', '2019-12-23 09:29:41', '2019-12-23 09:29:41', NULL),
(15, 'Role.Delete', '18', '2019-12-23 09:29:41', '2019-12-23 09:29:41', NULL),
(16, 'Permission.*', '5', '2019-12-23 09:29:41', '2019-12-23 09:29:41', NULL),
(17, 'Permission.Create', '20', '2019-12-23 09:29:41', '2019-12-23 09:29:41', NULL),
(18, 'Permission.Read', '12', '2019-12-23 09:29:41', '2019-12-23 09:29:41', NULL),
(19, 'Permission.Update', '1', '2019-12-23 09:29:41', '2019-12-23 09:29:41', NULL),
(20, 'Permission.Delete', '8', '2019-12-23 09:29:41', '2019-12-23 09:29:41', NULL),
(21, 'Customer.*', '13', '2019-12-23 09:29:41', '2019-12-23 09:29:41', NULL),
(22, 'Customer.Create', '10', '2019-12-23 09:29:41', '2019-12-23 09:29:41', NULL),
(23, 'Customer.Read', '14', '2019-12-23 09:29:41', '2019-12-23 09:29:41', NULL),
(24, 'Customer.Update', '7', '2019-12-23 09:29:41', '2019-12-23 09:29:41', NULL),
(25, 'Customer.Delete', '10', '2019-12-23 09:29:41', '2019-12-23 09:29:41', NULL),
(26, 'ItemType.*', '18', '2019-12-23 09:29:41', '2019-12-23 09:29:41', NULL),
(27, 'ItemType.Create', '9', '2019-12-23 09:29:41', '2019-12-23 09:29:41', NULL),
(28, 'ItemType.Read', '11', '2019-12-23 09:29:42', '2019-12-23 09:29:42', NULL),
(29, 'ItemType.Update', '17', '2019-12-23 09:29:42', '2019-12-23 09:29:42', NULL),
(30, 'ItemType.Delete', '14', '2019-12-23 09:29:42', '2019-12-23 09:29:42', NULL),
(31, 'Item.*', '3', '2019-12-23 09:29:42', '2019-12-23 09:29:42', NULL),
(32, 'Item.Create', '15', '2019-12-23 09:29:42', '2019-12-23 09:29:42', NULL),
(33, 'Item.Read', '19', '2019-12-23 09:29:42', '2019-12-23 09:29:42', NULL),
(34, 'Item.Update', '15', '2019-12-23 09:29:42', '2019-12-23 09:29:42', NULL),
(35, 'Item.Delete', '20', '2019-12-23 09:29:42', '2019-12-23 09:29:42', NULL),
(36, 'ItemHistory.*', '18', '2019-12-23 09:29:42', '2019-12-23 09:29:42', NULL),
(37, 'ItemHistory.Create', '17', '2019-12-23 09:29:42', '2019-12-23 09:29:42', NULL),
(38, 'ItemHistory.Read', '1', '2019-12-23 09:29:42', '2019-12-23 09:29:42', NULL),
(39, 'ItemHistory.Update', '13', '2019-12-23 09:29:42', '2019-12-23 09:29:42', NULL),
(40, 'ItemHistory.Delete', '3', '2019-12-23 09:29:42', '2019-12-23 09:29:42', NULL),
(41, 'Order.*', '6', '2019-12-23 09:29:43', '2019-12-23 09:29:43', NULL),
(42, 'Order.Create', '20', '2019-12-23 09:29:43', '2019-12-23 09:29:43', NULL),
(43, 'Order.Read', '1', '2019-12-23 09:29:43', '2019-12-23 09:29:43', NULL),
(44, 'Order.Update', '3', '2019-12-23 09:29:43', '2019-12-23 09:29:43', NULL),
(45, 'Order.Delete', '4', '2019-12-23 09:29:43', '2019-12-23 09:29:43', NULL),
(46, 'PaymentMethod.*', '12', '2019-12-23 09:29:43', '2019-12-23 09:29:43', NULL),
(47, 'PaymentMethod.Create', '16', '2019-12-23 09:29:43', '2019-12-23 09:29:43', NULL),
(48, 'PaymentMethod.Read', '9', '2019-12-23 09:29:43', '2019-12-23 09:29:43', NULL),
(49, 'PaymentMethod.Update', '2', '2019-12-23 09:29:43', '2019-12-23 09:29:43', NULL),
(50, 'PaymentMethod.Delete', '11', '2019-12-23 09:29:43', '2019-12-23 09:29:43', NULL),
(51, 'Payment.*', '3', '2019-12-23 09:29:43', '2019-12-23 09:29:43', NULL),
(52, 'Payment.Create', '1', '2019-12-23 09:29:43', '2019-12-23 09:29:43', NULL),
(53, 'Payment.Read', '3', '2019-12-23 09:29:43', '2019-12-23 09:29:43', NULL),
(54, 'Payment.Update', '13', '2019-12-23 09:29:43', '2019-12-23 09:29:43', NULL),
(55, 'Payment.Delete', '17', '2019-12-23 09:29:43', '2019-12-23 09:29:43', NULL);

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
(1, 'Space Sciences Teacher', '0', '2019-12-23 09:29:38', '2019-12-23 09:29:38', NULL),
(2, 'Human Resources Specialist', '6', '2019-12-23 09:29:38', '2019-12-23 09:29:38', NULL),
(3, 'Elementary School Teacher', '4', '2019-12-23 09:29:39', '2019-12-23 09:29:39', NULL),
(4, 'Streetcar Operator', '1', '2019-12-23 09:29:39', '2019-12-23 09:29:39', NULL),
(5, 'Heating Equipment Operator', '10', '2019-12-23 09:29:39', '2019-12-23 09:29:39', NULL);

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
(1, 'quia', '12', '2019-12-23 09:29:40', '2019-12-23 09:29:40', NULL),
(2, 'ratione', '7', '2019-12-23 09:29:40', '2019-12-23 09:29:40', NULL);

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
(1, 1, 36),
(2, 1, 27),
(3, 1, 44),
(4, 1, 29),
(5, 1, 32),
(6, 1, 12),
(7, 1, 7),
(8, 2, 50),
(9, 2, 32),
(10, 2, 11),
(11, 2, 25),
(12, 2, 16),
(13, 2, 27),
(14, 2, 13),
(15, 2, 33),
(16, 2, 17);

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
('customer', '{\"status\":[\"Default\",\"Basic\",\"Premium\"],\"allow\":[\"Basic\",\"Premium\"]}'),
('payment', '{\"status\":[\"Submitted\",\"Completed\",\"Canceled\"],\"allow\":[\"Submitted\",\"Completed\"]}'),
('employee', '{\"status\":[\"Not Active\",\"Active\"]}');

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
(1, 'aman', 'aman@gmail.com', NULL, '$2y$10$69f2PU.DiyR189wqDBcDS.s.FdqPKBoHbKC5kn1NuB1DW4NW2XCPa', 'sqNCCnaqiUoPcnbseipoYDa4tz4G71B9iURK34XmaOHgSYhGL43yvEvom0QH', '2019-12-23 17:26:04', '2019-12-23 17:26:04');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `employee_has_roles`
--
ALTER TABLE `employee_has_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `item_histories`
--
ALTER TABLE `item_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

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
-- AUTO_INCREMENT for table `order_has_items`
--
ALTER TABLE `order_has_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
