-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2019 at 05:03 PM
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
(1, 'cdd43d45-dbfe-3fe7-b787-d4a07d1f8a00', 'Jed Boyle', 'female', '2010-07-15', 'Budha', 'Raymundoport', '6209 Erich Mountain Suite 022\nWest Joshuah, ND 08926', '(497) 869-0348', '4968738hayden.heller@gmail.com', NULL, NULL, 'bbc08fd92fdc2eb236b4bf7d7aa86e50a97270596974626f1f9208c5c303346d', 'Basic', NULL, '3', '2019-12-24 02:26:25', '2019-12-24 02:26:25', NULL),
(2, '5ad60286-fdd9-3d00-b766-92b92b653c09', 'Dejuan Bartoletti', 'female', '1980-08-18', 'Hindu', 'Port Lafayettefurt', '48663 Ortiz Mission\nVilmahaven, MN 91922', '(540) 231-2954 x05767', '29christiansen.lavinia@hotmail.com', NULL, NULL, '53c1f408a47a3c0db017a6e24b9c6b62732ffb6c2ff87372f81ee1cdb9c7912a', 'Basic', NULL, '11', '2019-12-24 02:26:25', '2019-12-24 02:26:25', NULL),
(3, '4857e5bf-4766-36b6-9339-300fd22138a0', 'Orland Halvorson', 'male', '1994-06-14', 'Hindu', 'Lewisview', '5081 Walker Fall\nEmardbury, DE 80945-7783', '+17413081462', '54557genoveva.keeling@yahoo.com', NULL, NULL, '7dd95bcd741bf7679bb1c811f7eef7d380d07e12a55a12e4c875d6cb7c505fbf', 'Premium', NULL, '8', '2019-12-24 02:26:25', '2019-12-24 02:26:25', NULL),
(4, '01614099-e37e-32dc-9bf1-aada519dc66e', 'Josianne Armstrong', 'female', '2018-10-06', 'Kristen', 'Langside', '1626 Roob Freeway Apt. 262\nBayermouth, NJ 36516', '628-397-9791 x64219', '65814182botsford.hilton@hotmail.com', NULL, NULL, '9a8129cc15477466b051655859fa8e31ef82cdca3d43a496eefee4144724d7af', 'Basic', NULL, '12', '2019-12-24 02:26:25', '2019-12-24 02:26:25', NULL),
(5, 'ad4a476c-8144-3f0e-a033-0751c787d742', 'Winfield Huel', 'male', '2006-12-06', 'Konghucu', 'Tremblayport', '5964 Dianna Stream Suite 448\nEdwardchester, HI 15466', '279.290.1829 x64166', '67573logan.monahan@gmail.com', NULL, NULL, '4c1cbc1205887dafab27f92be6a64b29988ec43441fffa49001e9d51c2119dee', 'Basic', NULL, '16', '2019-12-24 02:26:25', '2019-12-24 02:26:25', NULL),
(6, 'e5b2935e-30bb-308a-bf21-a1debef055c7', 'Gerald Fritsch', 'female', '1984-03-10', 'Kristen', 'Christiansenhaven', '7648 Boyer Ferry Suite 249\nDoyleland, MN 26246-3789', '(713) 746-1880 x69752', '44umuller@yahoo.com', NULL, NULL, '40d88b554dc6c0d1320e6bb1e7c901c81b0b225bc51455b529891583d9e96b3c', 'Basic', NULL, '1', '2019-12-24 02:26:25', '2019-12-24 02:26:25', NULL),
(7, 'f7909b45-fd55-341d-9a4d-8e58e811fbee', 'Vinnie Dietrich DDS', 'male', '2014-06-07', 'Islam', 'Javonhaven', '132 Connelly Summit\nErnieview, FL 53025', '1-807-561-6872 x0555', '1kwatsica@yahoo.com', NULL, NULL, '35627268145962db030ea40642d27edb3b583627b2cd96a73065cbf67c093cc5', 'Premium', NULL, '9', '2019-12-24 02:26:25', '2019-12-24 02:26:25', NULL),
(8, 'd8c69bbe-2385-3ef6-acb7-cdf29ef370d4', 'Celia Walter', 'male', '1986-10-09', 'Islam', 'North Anais', '993 McClure Harbor Apt. 141\nNovashire, WY 49143-6834', '362.524.7173 x5316', '3846306lbins@hotmail.com', NULL, NULL, 'd42ff53b623d5254f38d83d99399d5c1a788ff1ea22ae408748c24070ed7f40a', 'Basic', NULL, '18', '2019-12-24 02:26:25', '2019-12-24 02:26:25', NULL),
(9, '7d7e79fd-a834-3e3d-ad83-b128bee97a94', 'Dr. Verona Okuneva III', 'female', '2012-07-16', 'Kristen', 'D\'Amorefort', '544 Daugherty Junctions Suite 453\nIgnacioland, WV 78559', '846.336.0068', '59swift.nicholas@hotmail.com', NULL, NULL, 'cb73df90622ab2703ace31c749d3e8361ee8e31d64120e1ef6c53f3d5afe8b59', 'Basic', NULL, '4', '2019-12-24 02:26:25', '2019-12-24 02:26:25', NULL),
(10, 'f8ebd2dc-e588-3a0e-a51f-fc5980808d85', 'Raoul Kuvalis', 'male', '2008-05-10', 'Hindu', 'Myriambury', '994 Marvin Harbors Suite 292\nNew Dedric, TX 62191-3513', '(495) 507-3967 x3610', '7517381rae56@yahoo.com', NULL, NULL, '1b49fc0f893d63a6a7e2b2ff6b06497d60d0fb3c45682b96975fb91f3acdbde2', 'Basic', NULL, '12', '2019-12-24 02:26:25', '2019-12-24 02:26:25', NULL),
(11, '531a6c33-1285-35b1-bc0e-2547fd8144ea', 'Itzel Ledner', 'female', '1993-11-04', 'Hindu', 'Patiencechester', '7697 Toy Fort\nEast Elmerburgh, MA 22421', '1-402-678-6430', '7342athena30@hotmail.com', NULL, NULL, '6212491f96c9bc86fc71a0727553086266455151980c11709a36c11d4584100b', 'Premium', NULL, '15', '2019-12-24 02:26:25', '2019-12-24 02:26:25', NULL),
(12, '2fd0c6a7-1c46-34e9-9f69-00c35a53c413', 'Prof. Philip Reinger', 'male', '2017-11-26', 'Budha', 'South Georgianna', '260 Abby Shores\nEast Sheila, NE 75346-3293', '215-531-4269', '45505228luettgen.crystel@yahoo.com', NULL, NULL, '2475fd553766b7a4fcbe8da095b72e3389d2df9fd372fab096ab61889897a5bf', 'Basic', NULL, '14', '2019-12-24 02:26:25', '2019-12-24 02:26:25', NULL),
(13, 'fd444ad3-ebf1-3e1d-9981-dbae21f10d1c', 'Prof. Cecilia Flatley II', 'male', '1983-07-18', 'Islam', 'Margotshire', '34175 Wellington Loop\nWest Fernport, NY 32410', '+1 (969) 924-0705', '863mikayla.kulas@hotmail.com', NULL, NULL, 'fa2495f9601aa80ccb16372e45a85e1dd19fa6adf23edce98d0e4ef7516e9990', 'Basic', NULL, '9', '2019-12-24 02:26:25', '2019-12-24 02:26:25', NULL),
(14, '5996246b-1cd9-3cf2-8bde-9b2ef57a4a90', 'Mr. Davion Bartoletti DVM', 'male', '1974-09-14', 'Islam', 'Lake Ernestside', '287 McCullough Corner\nBorertown, PA 86702-0964', '+1.265.212.6577', '6kcarter@gmail.com', NULL, NULL, '9baa44a626fba5bb9793cd7f8891d3ead699bdc4ee8f8c037d83365a525c0216', 'Basic', NULL, '11', '2019-12-24 02:26:26', '2019-12-24 02:26:26', NULL),
(15, 'fcd704b9-d717-3eb7-b216-4bb3c537e9b2', 'Alessia Towne', 'male', '1996-10-25', 'Kristen', 'Madisynfort', '1742 Lindsay Orchard\nLeschtown, NY 86242-4643', '1-254-833-7344 x4539', '5sbartell@hotmail.com', NULL, NULL, '216780af498c2afb6acf4d2e99765960c649480426801cdd9ec0daa04227aa40', 'Premium', NULL, '3', '2019-12-24 02:26:26', '2019-12-24 02:26:26', NULL),
(16, '99caf657-8003-35a9-b34c-c8a6ea82b1fd', 'Dr. Edgar Mueller MD', 'male', '1980-10-03', 'Islam', 'North Kathleenchester', '30659 Linnea Track\nUllrichmouth, MD 76415-0855', '576-826-0656 x266', '9rowan.hamill@yahoo.com', NULL, NULL, '848aeda60421e2484b647d80a1230b5bf091071608315915247849f47b4edb2f', 'Basic', NULL, '3', '2019-12-24 02:26:26', '2019-12-24 02:26:26', NULL),
(17, '0af7e695-2bf1-3b40-afa9-9b4f41f88b01', 'Mrs. Magnolia Lubowitz MD', 'male', '1973-02-26', 'Islam', 'Lake Jalen', '5495 Asia Point Suite 003\nPort Oceaneland, NY 11731', '+1.482.850.8365', '929255zieme.queen@hotmail.com', NULL, NULL, '3a61649dfa2cd049571db8d2aef4818464469637e49c37ee491da3a7cb8ae7a9', 'Basic', NULL, '12', '2019-12-24 02:26:26', '2019-12-24 02:26:26', NULL),
(18, '7c82e4a2-6302-319b-8b75-1d5344b0507d', 'Easter Legros', 'female', '1983-10-08', 'Islam', 'South Giaberg', '7240 Watsica Mission\nEast Theo, NY 04670-6238', '268.637.3195 x4690', '9468davis.kelvin@hotmail.com', NULL, NULL, 'f668c455d4472fccfd86fcc8af35f30473da5df0e84f95a406d12c0c75654ff6', 'Basic', NULL, '1', '2019-12-24 02:26:26', '2019-12-24 02:26:26', NULL),
(19, '0fabad34-e87c-3dfc-937d-a29630b8ac74', 'Lyda Cruickshank', 'male', '2011-07-17', 'Konghucu', 'South Abagail', '708 Kiehn Green\nSouth Benedict, HI 85286-7280', '302-264-2387', '2018363marlene.mueller@gmail.com', NULL, NULL, '9e07dde801432a5fe93f02329170b5deea3e7e3708890184d577cdcdaa4da10b', 'Basic', NULL, '15', '2019-12-24 02:26:26', '2019-12-24 02:26:26', NULL),
(20, 'c7e94802-9341-3ece-93b8-b1f1114058b4', 'Amely Franecki', 'male', '1983-02-05', 'Konghucu', 'Cruickshankborough', '416 Erdman Divide Suite 040\nKoelpinland, TX 94229-3638', '891-712-2435', '7026alanis29@hotmail.com', NULL, NULL, 'b73c71737a36e9dd4821b5201ac3762b9a6eb03b7285af429e3c6fadca4d9418', 'Basic', NULL, '14', '2019-12-24 02:26:26', '2019-12-24 02:26:26', NULL),
(21, 'fd888f18-f854-3558-ae2c-f2def9366047', 'Brandi Kutch', 'female', '2016-04-03', 'Konghucu', 'Trantowmouth', '93769 Dimitri Lodge Suite 309\nEzequielland, OK 72595-7006', '+1-405-714-0762', '3francesca63@hotmail.com', NULL, NULL, 'a43d5da082ba7602ed5716ddf04faa97d714eebfa3b0595624bbb7cf894dc743', 'Basic', NULL, '19', '2019-12-24 02:26:26', '2019-12-24 02:26:26', NULL),
(22, 'b1db9460-0b35-375c-8106-2c77b28ea6ec', 'Khalid Rempel', 'male', '1973-02-13', 'Hindu', 'Lake Bryontown', '73933 Conn Pine Apt. 930\nWardmouth, WV 30050-7385', '805.616.8048 x66008', '319474marc.schulist@yahoo.com', NULL, NULL, 'e48ac040ed2386d8c95a00f854169c150117a23f016753a879a55f89d77fed0a', 'Basic', NULL, '1', '2019-12-24 02:26:26', '2019-12-24 02:26:26', NULL),
(23, '254e04f1-03c0-3a91-8097-5e3ef9bba0b1', 'Prof. Theodore Pacocha', 'male', '1980-07-04', 'Hindu', 'New Mollyberg', '99693 Gottlieb Place\nBlancaport, KS 37243', '(578) 419-4379 x9342', '6927948verlie.hamill@hotmail.com', NULL, NULL, '5b327b93ffc98bd899a7d0c92658ef4025752ff9c24c3552b4409a49cfbe99e7', 'Premium', NULL, '17', '2019-12-24 02:26:26', '2019-12-24 02:26:26', NULL),
(24, 'f5d44140-570f-3e6e-bd2c-31923535ad72', 'Keshaun Parisian Sr.', 'female', '2000-11-23', 'Islam', 'North Jalen', '750 Rau Ferry Suite 269\nSouth Hilbertstad, VT 19491', '928-606-8081', '7346estrosin@yahoo.com', NULL, NULL, 'd4e503b53f979e24879283069f26e76005f48634abbd45ded2be2338ccf32a59', 'Basic', NULL, '1', '2019-12-24 02:26:26', '2019-12-24 02:26:26', NULL),
(25, 'a77f81d8-57a5-3ce0-a7c0-dbec8be1e372', 'Keira Rosenbaum', 'male', '2006-03-19', 'Hindu', 'Purdyshire', '555 Effertz Street\nNyahland, TX 26015-3690', '+15505896740', '315076189theresia06@yahoo.com', NULL, NULL, 'fb20ed4ead8a72ef0f13fee43e455462039fd0200b944baa0d815008db96df6b', 'Premium', NULL, '19', '2019-12-24 02:26:26', '2019-12-24 02:26:26', NULL),
(26, 'e75b3085-3a61-391f-a4fc-41b1ab0a5f58', 'Miss Catalina Smith', 'male', '2002-11-09', 'Islam', 'Lake Theodoreville', '3501 Remington Points\nNew Penelopeberg, LA 71951-0296', '1-764-806-1305', '0okeefe.jared@gmail.com', NULL, NULL, 'a949e287e641ea569080b2b1e44a0035e8834fab08e8a7095d0c4b3d618dbfbc', 'Premium', NULL, '6', '2019-12-24 02:26:26', '2019-12-24 02:26:26', NULL),
(27, 'ad35445e-96ec-3098-a703-1270f9543aec', 'Wanda Raynor', 'male', '1979-02-13', 'Budha', 'Port Marlinland', '950 Kasey Ford Suite 365\nCummingsstad, OH 28617-6284', '(803) 603-4256 x42251', '46254702juliana.pollich@yahoo.com', NULL, NULL, 'ea30ce57bc2dac055e8de276a6d8cf65b043587f9eabc346efa2719606eed328', 'Basic', NULL, '15', '2019-12-24 02:26:26', '2019-12-24 02:26:26', NULL),
(28, 'c2168d41-9b18-37ff-9cbc-69179e0637bf', 'Brycen Buckridge DVM', 'male', '1980-08-16', 'Budha', 'Namemouth', '7108 Braun Tunnel Suite 738\nEast Auroreshire, LA 84281-3800', '1-893-908-3799', '257sylvia.stoltenberg@gmail.com', NULL, NULL, '8ce214ec02a34b7fbd93b69704473739778935708257f9b90ef9de0552e1ff4b', 'Basic', NULL, '12', '2019-12-24 02:26:26', '2019-12-24 02:26:26', NULL),
(29, '0234883e-f4d0-3244-94e8-fc19f1687f65', 'Mr. Lonzo Casper', 'female', '1986-07-25', 'Hindu', 'North Deanna', '814 Schneider Isle Suite 577\nEast Kurtis, TN 91789-9262', '1-721-273-9685', '59082bbode@hotmail.com', NULL, NULL, '83ebad697997f41aff9e43d649d14f8e1d9d7537c29819a6ecb47282bed04c7f', 'Basic', NULL, '20', '2019-12-24 02:26:26', '2019-12-24 02:26:26', NULL),
(30, '6bcedbb8-21df-39ff-b603-cfe9b3a94597', 'Juliana Kuhlman', 'female', '2000-03-28', 'Islam', 'Lake Carole', '318 Karlie Port\nNorth Quentinville, LA 41706', '(805) 983-2184 x989', '655rodrigo.rice@hotmail.com', NULL, NULL, '818fb4b7c9687aa9429cd3319849dcfbce616c0f3d4fb08f2bc6a708792e7624', 'Premium', NULL, '14', '2019-12-24 02:26:26', '2019-12-24 02:26:26', NULL),
(31, 'cc4f581d-6107-3bc1-a45d-a49ddbcea4e0', 'Dr. Sonia Fahey III', 'female', '2007-09-20', 'Hindu', 'Runolfsdottirstad', '2520 Queenie Loop Apt. 369\nNorth Jaida, FL 10486', '1-457-627-0218', '27063maximus.rolfson@gmail.com', NULL, NULL, '9d2d449bb75b5aa736159537ce145deac4d7d053f7e2ec192b61dd2a8e490e59', 'Basic', NULL, '1', '2019-12-24 02:26:26', '2019-12-24 02:26:26', NULL),
(32, '5ccadc07-560b-37e6-a857-ebc8f0637596', 'Effie Russel', 'male', '1974-05-09', 'Hindu', 'New Vanburgh', '30465 Webster Station\nKareemport, ND 14317-9602', '571-793-3577 x65314', '60430048will.tiffany@gmail.com', NULL, NULL, '929ec6890cf87781a0a95f9d623663739017b86d7f78c3a0f690bfeb714fd9d1', 'Premium', NULL, '8', '2019-12-24 02:26:26', '2019-12-24 02:26:26', NULL),
(33, '519c23f1-629b-3af9-8566-5772c10ec001', 'Jamal Reilly', 'male', '2002-06-06', 'Islam', 'New Madisyn', '1419 Alyce Roads Suite 175\nEast Kevon, ND 56378-6638', '(232) 848-2938', '40616346sdavis@gmail.com', NULL, NULL, '99259a641a01dc22ca72234cc818106bbeb0ee5e95047f2a4efa218470118ed6', 'Premium', NULL, '5', '2019-12-24 02:26:26', '2019-12-24 02:26:26', NULL),
(34, '6fad2512-62bc-3a1d-a15a-d78ad05f17b5', 'Flavio McLaughlin Jr.', 'female', '2012-02-20', 'Konghucu', 'Treutelville', '613 Chaz Cove Suite 599\nGreenholtmouth, ND 93152', '938-707-1309 x88173', '77germaine71@gmail.com', NULL, NULL, 'd1da684aa0d6dc72767d7a7e94f78de65fd1d7c55e482dcd95cad8dc13394c59', 'Premium', NULL, '4', '2019-12-24 02:26:26', '2019-12-24 02:26:26', NULL),
(35, '035879eb-5d6e-38c3-bedf-264128d2c29a', 'Leilani Hettinger', 'female', '2003-10-18', 'Konghucu', 'South Elise', '65208 Reichert Stream Apt. 782\nLake Kane, AZ 78223', '901-283-8342', '59830016judah53@gmail.com', NULL, NULL, '087fdd546ad43af82aa67cb4a509a58a26d0e05d2ad0c71500e61e9432aebde7', 'Basic', NULL, '11', '2019-12-24 02:26:26', '2019-12-24 02:26:26', NULL),
(36, '04282bc1-ae0f-3d9e-995a-8deccf680ed5', 'Phyllis Ullrich DVM', 'male', '2004-03-29', 'Budha', 'West Akeemhaven', '42807 Pfannerstill Shoal Apt. 255\nStehrburgh, IN 21879', '(560) 431-1384', '5625761marlene59@gmail.com', NULL, NULL, 'eaee48807215bdb31b5b97a1c765284c4608266bc090c2e2451f8f0e5d7c7390', 'Premium', NULL, '9', '2019-12-24 02:26:26', '2019-12-24 02:26:26', NULL),
(37, '905bfbac-33c8-370c-b6c3-b1896fa1db16', 'Kayden Auer', 'female', '1984-04-25', 'Konghucu', 'Moriahmouth', '3846 Margarette Dam Suite 540\nDawsonside, OK 46287', '665-819-8987 x5756', '416elva.erdman@yahoo.com', NULL, NULL, 'f97228df97d3df1254d0b57505830009284bd36f560d2a6ed7c8562a8ac3f54d', 'Premium', NULL, '7', '2019-12-24 02:26:27', '2019-12-24 02:26:27', NULL),
(38, '65123cc6-3d73-343f-be70-4b3ea8ac15b6', 'Nolan Koelpin', 'male', '1995-11-22', 'Kristen', 'East Hallie', '712 Hammes Tunnel\nPort Alfred, NH 10887', '1-658-290-7928', '32737627murl.renner@yahoo.com', NULL, NULL, '496f7a21a41957d02b5899ed6213f7e816d01dd6f1ee70de368a3e0d1f89cd2a', 'Premium', NULL, '6', '2019-12-24 02:26:27', '2019-12-24 02:26:27', NULL),
(39, '9bae3aff-a74c-3a8b-b9f1-93b58fbcdf29', 'Andreanne Swaniawski', 'male', '1992-10-26', 'Budha', 'Tierraville', '828 Isai Motorway Suite 469\nWest Antwanside, TN 75123-8567', '(810) 745-3726 x701', '7032778hessel.lexie@gmail.com', NULL, NULL, '0f431aed441ea04d2007a492951a1f7e6b9f3763855458bf5d8e373ad8bec556', 'Premium', NULL, '7', '2019-12-24 02:26:27', '2019-12-24 02:26:27', NULL),
(40, '95476134-2fe6-3212-ae99-dee2b686d230', 'Miss Rosalinda Zulauf V', 'male', '1975-05-30', 'Hindu', 'West Princesschester', '814 Schmeler Causeway Suite 856\nPort Hoseaburgh, FL 05551-0822', '225-488-1190 x43294', '7488mcclure.stephany@yahoo.com', NULL, NULL, '2d2de991a94e8ad9e3c60500fa5977e0001fc8271ec620eb82955b4703285f6e', 'Basic', NULL, '12', '2019-12-24 02:26:27', '2019-12-24 02:26:27', NULL),
(41, '13fb9a14-2b15-3821-b911-33c66f305f0e', 'Prof. Colby Harris', 'female', '2004-01-16', 'Islam', 'West Torrey', '31650 Lina Mountains\nRosendohaven, IA 27205', '(698) 334-5656 x13660', '6161121wkilback@hotmail.com', NULL, NULL, 'cb09f1fa87e9b9f747a9eec946e5593ad98341a1aaf644cc46c29bc354216828', 'Basic', NULL, '8', '2019-12-24 02:26:27', '2019-12-24 02:26:27', NULL),
(42, '2387d9e5-0077-33e2-8a34-c331c84527dd', 'Jeff Watsica', 'female', '2000-06-12', 'Islam', 'New Nashtown', '336 Deangelo Gardens\nMarqueschester, OH 31258', '+1.407.391.3273', '39tom.bernhard@gmail.com', NULL, NULL, '94dded73c448b8d5a41b787c4861faea2e8b2608c47a552701c8fba775146141', 'Premium', NULL, '15', '2019-12-24 02:26:27', '2019-12-24 02:26:27', NULL),
(43, 'e3adcd0a-caee-3a86-8935-8791695c0bf9', 'Darlene Bosco', 'female', '2001-05-03', 'Hindu', 'North Tremayne', '9450 McGlynn Station Apt. 025\nBeahanland, CA 57373', '+1-629-551-6230', '84maeve08@gmail.com', NULL, NULL, '5c7e6b959f520ba8ce76936db421a50afdb3f4e33e007f75a6f8165312c93f48', 'Basic', NULL, '19', '2019-12-24 02:26:27', '2019-12-24 02:26:27', NULL),
(44, 'a73fdd67-7046-36c3-aed9-ff5730664e77', 'Deondre Kiehn I', 'male', '2003-01-24', 'Islam', 'Altenwerthside', '57511 Huel Inlet\nWest Roberta, AZ 21364-4470', '(276) 487-6003 x2167', '476603valentine64@yahoo.com', NULL, NULL, '5a7628d2ba62d8f98d7153ddbabdf21ae8139ec0f96d2e9cf7e1b08bbb11b2d2', 'Premium', NULL, '17', '2019-12-24 02:26:27', '2019-12-24 02:26:27', NULL),
(45, '59fc7635-982e-3d04-b6ee-0c25f6f181b1', 'Maegan Jaskolski', 'male', '1976-08-09', 'Konghucu', 'Edmouth', '2576 Lue Junctions\nSouth Pinkiebury, WI 59601-6229', '459.790.6131', '467182kilback.susana@gmail.com', NULL, NULL, '5a0dbc55ea744e7fe5a77b7a23119d4e2e34e88c69e7d922c38c3e4d10d637d0', 'Basic', NULL, '7', '2019-12-24 02:26:27', '2019-12-24 02:26:27', NULL),
(46, 'e1b7fbe9-4371-3d2f-89f9-e5e442f037b3', 'Jermey Stroman', 'male', '1985-06-14', 'Hindu', 'East Tyreemouth', '383 Wolf Streets\nNew Delilahberg, SD 52587', '+1-731-304-2819', '83293988qbeer@yahoo.com', NULL, NULL, '7fbabad62373384b1f6f0786422d6c454f68f873a848d5f9f22c2e8e516ae18c', 'Basic', NULL, '8', '2019-12-24 02:26:27', '2019-12-24 02:26:27', NULL),
(47, '873d7e2f-874c-3706-8407-7bfea314866c', 'Floy Jaskolski', 'male', '1973-10-06', 'Hindu', 'Wisokyborough', '5907 Percival Camp Suite 747\nWalshbury, MN 97066', '1-226-926-8813', '40elisabeth98@yahoo.com', NULL, NULL, 'c1a82ba1506a075da93d7d097f2c3e3d16fa3a558b8fb7d37e3b0c071a1ac9bf', 'Premium', NULL, '6', '2019-12-24 02:26:27', '2019-12-24 02:26:27', NULL),
(48, 'ae046a33-cf9b-3239-a724-186093990dd6', 'Shayne Dooley', 'female', '1979-04-29', 'Kristen', 'VonRuedenmouth', '920 Marques Islands\nStammton, IN 49708-0071', '776-255-2877 x6528', '79911green.isac@hotmail.com', NULL, NULL, '3b00dc4b32a4ee2c3ea39037d0b29711076c38e7d985623de93000a9d7560bb0', 'Basic', NULL, '3', '2019-12-24 02:26:27', '2019-12-24 02:26:27', NULL),
(49, 'f07c2b8d-e7b9-3865-b0d0-1b9eccf81e34', 'Vada Witting', 'female', '1991-10-09', 'Kristen', 'Arliefort', '82936 Hodkiewicz Terrace Suite 118\nEast Della, WA 80860-9256', '(901) 704-1763 x9994', '340alexandrea.oconner@gmail.com', NULL, NULL, '6303e7843679559305d55d1f97d4f6117b6e8c217dc6c02d2a9946397a429245', 'Premium', NULL, '5', '2019-12-24 02:26:27', '2019-12-24 02:26:27', NULL),
(50, '1a3f4133-89f4-33bb-b088-995ced37ebb0', 'Mr. Emmet McGlynn DDS', 'male', '1998-12-25', 'Budha', 'New Narciso', '372 Clifford Spurs\nLake Silasstad, ND 42636', '640.583.8514 x922', '4098rfunk@hotmail.com', NULL, NULL, 'c2b4e20c37f51e400a113f012bf8a53b74d40237837e10ad5f5618cd35c6c28b', 'Basic', NULL, '7', '2019-12-24 02:26:27', '2019-12-24 02:26:27', NULL),
(51, 'd6049c00-31bb-3060-8e9c-8e3b03e980be', 'Scarlett Shanahan', 'female', '1985-08-25', 'Konghucu', 'Rettaview', '1914 Ernie Landing\nGastonborough, DC 97243', '710-238-0673 x11491', '128427norwood78@hotmail.com', NULL, NULL, '3d0605ec6d6087299dfcbc29aa68e26863db971a4563dcb0abc107c09a16aef0', 'Premium', NULL, '2', '2019-12-24 02:26:27', '2019-12-24 02:26:27', NULL),
(52, 'ee022846-5237-3457-ba6b-3eaaa03fa48b', 'Lorenzo Nitzsche', 'female', '1988-11-01', 'Islam', 'Crooksstad', '68300 Sibyl Station Apt. 513\nWest Caleb, FL 27489', '+1-692-404-5888', '6320724labadie.nikita@gmail.com', NULL, NULL, '1c764843d4d1ad69d8b4821e887da2da6770ebb4d11fe1f49251b02d872124ac', 'Premium', NULL, '18', '2019-12-24 02:26:27', '2019-12-24 02:26:27', NULL),
(53, '663949ae-fdfb-3932-aaec-a09bd54d24db', 'Haven Powlowski DDS', 'male', '2015-05-10', 'Hindu', 'South Ivyport', '7846 Richmond Valley Suite 843\nLake Cassandrabury, IA 12994-7978', '1-628-525-3745 x23092', '235maryam.daniel@hotmail.com', NULL, NULL, 'bf82d100f0864acefe66994aa3cf216192eb0bd10314e662d8a7dc2225cb0940', 'Basic', NULL, '4', '2019-12-24 02:26:27', '2019-12-24 02:26:27', NULL),
(54, '7f50007a-6e43-36cf-9839-87d8e98edda0', 'Breanne McLaughlin', 'female', '1997-01-24', 'Kristen', 'East Dewaynefurt', '73719 Tyler Mountain Apt. 756\nGustavefurt, SC 18394', '(746) 863-4859', '93ryann31@yahoo.com', NULL, NULL, 'b4c2bbc5e5228524e0b604df39328492bc96a625314268aa3043fdf27d5ff538', 'Basic', NULL, '1', '2019-12-24 02:26:27', '2019-12-24 02:26:27', NULL),
(55, '562148ae-db64-3cac-85da-117b5639fba8', 'Antonia Boyle', 'male', '2001-12-27', 'Islam', 'Rosemarieside', '304 O\'Keefe Point Apt. 176\nSouth Hyman, FL 17905-3172', '+1 (465) 525-9327', '1rmccullough@gmail.com', NULL, NULL, 'bd4b80fe486a3dfb1ba6db62d9bfb23643a5e50b7aa627a76724f96c90e2ce6d', 'Premium', NULL, '15', '2019-12-24 02:26:27', '2019-12-24 02:26:27', NULL),
(56, '93fb8920-2740-3fb7-8ea8-d5bafaa3fff3', 'Diego Considine', 'male', '2019-10-28', 'Konghucu', 'South Jaydestad', '7628 Fahey Court\nWest Rosellamouth, MO 47787', '718.577.5077 x881', '467747runte.kim@yahoo.com', NULL, NULL, 'c931451512a21e5e326d78f19b86c7b75f9fffb0731da74dcac4129010bce01a', 'Premium', NULL, '12', '2019-12-24 02:26:27', '2019-12-24 02:26:27', NULL),
(57, '1fa7e167-73bd-3546-90ce-28a2ea62d8a1', 'Pete Volkman', 'male', '1994-03-08', 'Kristen', 'Port Cletus', '668 Danny Rapid\nLake Eliezermouth, CT 80418-0871', '(794) 770-5406 x32240', '65798hahn.neha@gmail.com', NULL, NULL, '8579767fa9eac4a014f364cfa3a1f0f2e7e94c6fd0a312fe64ec077054951085', 'Premium', NULL, '5', '2019-12-24 02:26:28', '2019-12-24 02:26:28', NULL),
(58, '830d5df4-9458-3267-ba42-715d085a3789', 'Jayce Herman', 'male', '1981-05-26', 'Konghucu', 'Franeckimouth', '8236 Price Ramp Apt. 247\nHettingerview, NV 20088-6119', '(613) 571-3982', '0omcglynn@gmail.com', NULL, NULL, '9f0281bdcc4391a7d1de82ad459f9b58860871ecb3bd90c7a22e37f9cc23b66c', 'Basic', NULL, '16', '2019-12-24 02:26:28', '2019-12-24 02:26:28', NULL),
(59, '558edcc1-bc08-3f05-ab3c-aee93fc55cc7', 'Rolando Stoltenberg', 'male', '2005-05-18', 'Budha', 'North Jamarcusport', '8729 Larkin Lake\nEmardfort, HI 07260-8544', '947-978-9132 x631', '794qpredovic@hotmail.com', NULL, NULL, '2c05a5f30038ccf941a9a03481fd02543992364463747a4709787fe086108dc1', 'Premium', NULL, '15', '2019-12-24 02:26:28', '2019-12-24 02:26:28', NULL),
(60, '71aac30a-c41a-329d-8c7e-0252e2543828', 'Jaylin Pouros', 'male', '2015-03-16', 'Konghucu', 'Nicholetown', '7865 Cole Dam Suite 651\nNorth Elva, IA 52358', '+1.937.709.5694', '349354881bill11@hotmail.com', NULL, NULL, '628004bdc3bc57576094b498cdcb71a516eaf1673034580381798337c4c24de3', 'Premium', NULL, '2', '2019-12-24 02:26:28', '2019-12-24 02:26:28', NULL),
(61, '483c8032-510f-3ef0-984c-66b6075fc795', 'Miss Phoebe Rath I', 'male', '1982-12-23', 'Konghucu', 'Idellashire', '741 Vidal Radial Suite 962\nAbdielmouth, GA 63345-2936', '1-384-646-7768', '8226orobel@hotmail.com', NULL, NULL, 'b2bc9fd35aa563257b026d0174f8cbb6598c7efcc8242f0e0f891a73b528c459', 'Basic', NULL, '12', '2019-12-24 02:26:28', '2019-12-24 02:26:28', NULL),
(62, 'd8acdaf9-bbd4-32b9-925a-32c97007ce79', 'Kimberly Howell', 'male', '2003-04-26', 'Kristen', 'North Raphaelle', '6879 Caterina Camp Suite 210\nWest Nick, AZ 22005-7916', '645-228-5046 x0700', '671906499curt09@yahoo.com', NULL, NULL, '8597feec4e9fb00cd5958fd8f945241dcb0fd0a09afe9a5f853b9a49bddbcd5e', 'Basic', NULL, '13', '2019-12-24 02:26:28', '2019-12-24 02:26:28', NULL),
(63, '3f67e150-d1eb-3cde-a768-5dec15bf6723', 'Alanis Haley', 'female', '2010-09-03', 'Kristen', 'Ofeliaview', '813 Alessandro Summit\nJessikaville, OK 28974-3780', '(745) 609-7691 x339', '633790999violette.nicolas@gmail.com', NULL, NULL, '89799887764d17bfb731a6d96d3e949edc10c39a45f4b17e59696d2d38558619', 'Premium', NULL, '17', '2019-12-24 02:26:28', '2019-12-24 02:26:28', NULL),
(64, '28562a4f-2c16-31b4-bad5-0be5e0517d78', 'Emelie Deckow', 'female', '2006-09-07', 'Islam', 'Colemanstad', '4421 Wuckert Stravenue Suite 682\nNorth Melynastad, NM 31090-2738', '(223) 251-4196 x823', '962luettgen.maida@hotmail.com', NULL, NULL, 'ecfa5d033f06102891df703e703d3d1341ddf0a04e3932015f233b26a0a16e15', 'Basic', NULL, '6', '2019-12-24 02:26:28', '2019-12-24 02:26:28', NULL),
(65, '9ab417ad-e5d6-3403-9b90-ee627e320ef9', 'Virgie McCullough V', 'female', '2009-01-03', 'Konghucu', 'Raufurt', '91051 Crona Stream\nJimmieland, WA 40078', '789-480-6624 x604', '6621863yhettinger@hotmail.com', NULL, NULL, '82ac1154cd63adf73873c32f2476ac7174e0b4c89140835a5346b932f1175e68', 'Premium', NULL, '13', '2019-12-24 02:26:28', '2019-12-24 02:26:28', NULL),
(66, '9ccd4760-18c3-3670-b0ab-0d03c7a6a039', 'Mr. Edward Trantow', 'male', '2012-02-14', 'Hindu', 'Schuliststad', '15868 Cloyd Squares Suite 023\nLake Christianamouth, AZ 38504-4351', '639.661.1439 x47787', '36amparo.konopelski@gmail.com', NULL, NULL, 'e424d587c8f4841a1175c2b1f3d943cf3f31a19a1d76e2386f88abbd72a54275', 'Premium', NULL, '3', '2019-12-24 02:26:28', '2019-12-24 02:26:28', NULL),
(67, 'd91b99f1-822c-3e42-8808-b518e390b591', 'Prof. Antonio Kautzer III', 'male', '1972-04-20', 'Budha', 'Schimmelborough', '622 Maybelle Corners\nAureliebury, WV 57047', '1-924-254-3649', '99050471cormier.arnulfo@yahoo.com', NULL, NULL, '419b5a71d24b78eaaa21b7d53daedcebc952e1b66465de181fa92814dc498d6e', 'Premium', NULL, '2', '2019-12-24 02:26:28', '2019-12-24 02:26:28', NULL),
(68, 'a57ca0bf-f487-3f1f-97cb-498e87f3bc86', 'Mr. Mallory Bogisich', 'female', '2004-07-21', 'Islam', 'Wintheiserview', '1332 Stoltenberg Forest\nWest Avisburgh, AK 62834', '+1 (981) 966-4385', '732334fritsch.marcel@hotmail.com', NULL, NULL, '632b702f2ec7edb8d535abb12e1c76d3319fe824df505385a6ada6446a5f04c4', 'Premium', NULL, '5', '2019-12-24 02:26:28', '2019-12-24 02:26:28', NULL),
(69, '894de9f3-8d5c-3896-a3fd-6adc471331a9', 'Josue Gerlach', 'female', '1970-09-09', 'Kristen', 'North Jackie', '45166 Maribel Meadow Suite 695\nLake Zack, WA 30984', '1-862-819-6550 x413', '2688311hschuppe@yahoo.com', NULL, NULL, '554cd0d81975b924774bcab83c551552f8e809e271d22327ca0c8d4ec0f48160', 'Basic', NULL, '3', '2019-12-24 02:26:28', '2019-12-24 02:26:28', NULL),
(70, '43bd876d-7b8d-3d7b-81b1-90ceea77039d', 'Dessie Roob', 'male', '1995-12-31', 'Hindu', 'Pagacmouth', '41109 Nicolas Walk Apt. 760\nAnitaside, ID 33494-5847', '+1-502-624-8951', '882236529hilario09@hotmail.com', NULL, NULL, '19410a248c4ffb31371085e2a141f5db7fe1f4f7077023a2c8aca9f8335eed1f', 'Premium', NULL, '10', '2019-12-24 02:26:28', '2019-12-24 02:26:28', NULL),
(71, '154bc58d-9cc1-3262-95e5-7489ea67dffe', 'Mr. Neil Parisian', 'male', '1984-04-24', 'Hindu', 'Cristchester', '7263 Brennon Road Suite 062\nWest Jarred, VT 84033', '360.447.7823', '855915dbatz@hotmail.com', NULL, NULL, '22dc792e3f53d006f41200d67c4d45a124e2fdc88ac3401d481536c9d9e25b6c', 'Basic', NULL, '14', '2019-12-24 02:26:28', '2019-12-24 02:26:28', NULL),
(72, 'b0d1f884-b5ba-3829-8868-2473e855b14c', 'Mr. Kristoffer Bartoletti', 'female', '2003-09-30', 'Kristen', 'Hackettville', '4814 Baumbach Courts Suite 710\nSouth Wilma, MI 94382-0652', '1-636-282-8068 x989', '166qkoelpin@yahoo.com', NULL, NULL, '01f68bdc19749df453d676981594f9a8507e9af331a945015d4282a357b3ba3c', 'Basic', NULL, '10', '2019-12-24 02:26:28', '2019-12-24 02:26:28', NULL),
(73, '22b5120b-0edb-3516-9852-66037f69e622', 'Prof. Buck Gorczany', 'female', '1994-05-29', 'Konghucu', 'Port Fannie', '779 Crist Ports Suite 643\nNorth Johnnieshire, PA 45126', '1-610-766-8762 x432', '5aufderhar.polly@hotmail.com', NULL, NULL, 'd96ce78b7fa9319542a02fb519388c575ace7600fe26695e930296c3ce25668d', 'Basic', NULL, '10', '2019-12-24 02:26:28', '2019-12-24 02:26:28', NULL),
(74, '55649b2e-b43d-3a79-85a9-ef79449997ec', 'Kellie Hermann', 'female', '2001-02-01', 'Kristen', 'New Bennytown', '6827 Dayton Corners\nShanelshire, DC 80730', '1-889-732-0728', '1adoyle@gmail.com', NULL, NULL, '4f8f87dea46857319b2f9ccfa1deaf39a490fb2483114d12eb58aa69d56dee8a', 'Premium', NULL, '8', '2019-12-24 02:26:28', '2019-12-24 02:26:28', NULL),
(75, '5411c2b4-9d4e-3c18-ba31-20e4e81f76e9', 'Nora Paucek', 'female', '1994-02-10', 'Kristen', 'New Fritz', '4472 Daugherty Loop Suite 276\nLizethburgh, FL 71462-4303', '(815) 655-1054', '8ssipes@gmail.com', NULL, NULL, '21fc66ada217ed673f10f550345daa1cbcce767b7733cc4cc1bb15353d48fe89', 'Premium', NULL, '6', '2019-12-24 02:26:29', '2019-12-24 02:26:29', NULL),
(76, 'a62c8ff0-7058-3d8a-874d-e01081fe1e0c', 'Terrance Pollich', 'female', '2007-01-26', 'Islam', 'West Moisesburgh', '9778 Frami Isle\nKunzeberg, MD 54470', '907-742-6732 x5657', '1441053heaney.gregorio@gmail.com', NULL, NULL, '6857b6a7eb506d5b43461b61e3e027b354ea8b2b6ea7b6aa69b57e7d26c26742', 'Basic', NULL, '8', '2019-12-24 02:26:29', '2019-12-24 02:26:29', NULL),
(77, '0cb291c1-64fd-3ef3-9013-219e1a829ad3', 'Eugene Monahan MD', 'male', '1987-03-11', 'Kristen', 'West Rachel', '4429 Josianne Islands Apt. 189\nManuelfort, LA 79311', '842.651.8894 x7218', '8086138nola91@gmail.com', NULL, NULL, 'f1f41c64cafa9b7263d37a1bd6cbb5e9c00666b6d153cb334c07edc4c9a0af16', 'Premium', NULL, '15', '2019-12-24 02:26:29', '2019-12-24 02:26:29', NULL),
(78, '27bf3c6c-748c-3ae6-a2b3-1d7019bba3cf', 'Rowena Tremblay II', 'female', '2019-08-15', 'Konghucu', 'Swiftshire', '176 Matilda Walks Suite 839\nPort Deangelo, SC 11913', '316-858-3883', '20marcus04@hotmail.com', NULL, NULL, '145645b0aa8cfe4a3e0f5053a195e8bda748c694131485c484bf368f69b23f9a', 'Basic', NULL, '6', '2019-12-24 02:26:29', '2019-12-24 02:26:29', NULL),
(79, 'df5328a4-bc76-3f27-8686-e43ec86c816c', 'Ms. Abigail Kertzmann V', 'female', '1991-07-16', 'Hindu', 'Port Tadview', '74819 Dietrich Freeway Apt. 578\nDickensshire, AR 85708', '351.612.3384 x883', '898010102rgrimes@hotmail.com', NULL, NULL, '44e35b1e78e818bdcc19e86a73b8d2a9aa26d87acd63f6af4d81e2a2421965dd', 'Basic', NULL, '4', '2019-12-24 02:26:29', '2019-12-24 02:26:29', NULL),
(80, '075e0aba-d4e1-33a0-bdb2-6e8af648e8e3', 'Elenor Collier', 'female', '2014-01-04', 'Hindu', 'Gislasonstad', '62754 Cedrick Valley Suite 041\nLake Kayleigh, NE 46884-7968', '756-743-4346 x88256', '846786loren.kunde@hotmail.com', NULL, NULL, 'a95ca3da8cea218ff0db3c3903825c3e0b2bdb9b92687c89efe7b57131d12216', 'Basic', NULL, '2', '2019-12-24 02:26:29', '2019-12-24 02:26:29', NULL),
(81, '8515b63e-5038-3798-9b01-58d0629985ae', 'Prof. Avis Breitenberg DDS', 'male', '2017-02-03', 'Konghucu', 'Kalehaven', '79490 Mante Loop Suite 984\nNorth Christinaport, SD 21960-4727', '297.293.4568 x3026', '21625192kabernathy@gmail.com', NULL, NULL, 'bfb8fa4cb5826da47f436c950b461441f5fbf30fc59db5828da9e17d344fc158', 'Premium', NULL, '20', '2019-12-24 02:26:29', '2019-12-24 02:26:29', NULL),
(82, '00b8d59e-88a7-3fda-8aea-d833674b1174', 'Dr. Manley Reichert', 'male', '2011-03-27', 'Hindu', 'Prudencefurt', '1320 Melyssa Fall\nJosiahton, WV 02565-3313', '861-822-2407 x95769', '5cassandra.rohan@hotmail.com', NULL, NULL, 'a4ba65fcdfe77560abfce47c681fe3201aab7f99eaeeedcd90366057228b590a', 'Basic', NULL, '20', '2019-12-24 02:26:29', '2019-12-24 02:26:29', NULL),
(83, '241c2b79-58b9-3801-9161-f28b6712095f', 'Carolyn Kovacek', 'male', '2002-09-06', 'Budha', 'North Evieside', '1713 Marcelina Cliff\nWest Kenya, OK 51911', '1-726-802-1881 x3891', '598171219jframi@hotmail.com', NULL, NULL, 'e3e5753b6814ac17db193eef924986aea140790b6b2e9c64b564ceaa176bd12c', 'Basic', NULL, '4', '2019-12-24 02:26:29', '2019-12-24 02:26:29', NULL),
(84, 'bf75132a-3aa8-328f-876e-5867e52a5e6d', 'Deshaun Kunde', 'male', '1972-07-26', 'Hindu', 'New Noelberg', '3916 Grimes Plain\nDickinsonton, MO 81834-8408', '+1-560-241-3936', '132stella.grady@yahoo.com', NULL, NULL, '1c051a5a9b71783909299a6a2109f31662b12adc8f7fdda87cc697db6c0c2415', 'Premium', NULL, '13', '2019-12-24 02:26:29', '2019-12-24 02:26:29', NULL),
(85, '5cff8c67-1ae7-3494-8a42-666584dc9b77', 'Anabelle Lemke', 'male', '1973-06-06', 'Kristen', 'Rowechester', '955 Ines Plains Suite 248\nHansentown, MI 63712-6434', '(775) 566-3656 x39837', '41rico92@hotmail.com', NULL, NULL, 'f1c623017e1484fdbe3a997933c42e24fe46a25724fa55defb95182641fb0ae7', 'Basic', NULL, '18', '2019-12-24 02:26:29', '2019-12-24 02:26:29', NULL),
(86, '25dfdc80-2e72-329d-bc6f-c837a489fb51', 'Betsy Labadie', 'male', '1975-01-16', 'Islam', 'North Judechester', '5885 Block Stravenue Suite 813\nSouth Sallybury, TX 63355-0556', '1-853-959-2013', '89deonte25@yahoo.com', NULL, NULL, '3bef0f54ae92bfc81eb90d1dd94f24ba601a2961a594d3f19b32d44857487cd1', 'Premium', NULL, '11', '2019-12-24 02:26:29', '2019-12-24 02:26:29', NULL),
(87, '62abc154-22ae-37a5-a9a1-29c47ee40abf', 'Johnathon Ratke', 'male', '2008-01-30', 'Kristen', 'Jeanfurt', '2053 Osinski Walks\nNew Helen, FL 71500-3401', '615.519.2980 x61298', '713401492jade.greenfelder@yahoo.com', NULL, NULL, '498f302b377b43b68b8bca4d50765ff43b68a0c155f6a80bd75fca9fb33a8b48', 'Basic', NULL, '20', '2019-12-24 02:26:29', '2019-12-24 02:26:29', NULL),
(88, 'd7b22c12-cd2b-36fe-aa7d-0346ddc8db31', 'Annamae Nader', 'male', '1976-07-13', 'Budha', 'Lake Tinaport', '47672 Sporer Row\nWintheiserchester, HI 34729', '506-217-1690', '6zhoppe@hotmail.com', NULL, NULL, '35ee464aae48691538cd022df3be4bbfc2de69783928680e4933cbc4ec968acd', 'Basic', NULL, '2', '2019-12-24 02:26:29', '2019-12-24 02:26:29', NULL),
(89, 'e9a79b92-8c8a-3e87-b9bf-5080e50c2c66', 'Kayli Dibbert', 'female', '1986-06-16', 'Hindu', 'South Daronborough', '5195 Funk Via\nPort Cieloberg, NJ 49453', '(296) 727-2248 x906', '53790bahringer.alta@gmail.com', NULL, NULL, '667e1db3a896fd72978c5d962d60742f80d3be0fac40dd035b521ccb32df9cfc', 'Basic', NULL, '16', '2019-12-24 02:26:29', '2019-12-24 02:26:29', NULL),
(90, '99e7287f-2f98-30e5-9be0-075fbe7b2358', 'Samir Rice', 'male', '1988-11-28', 'Konghucu', 'Spencertown', '94424 Doyle Lake\nMurphymouth, LA 68236-7784', '+1.410.297.6211', '138925320qschumm@hotmail.com', NULL, NULL, '83447e114d95ee264fee6c69b79f7cd6b246ff56a9159e280b8d9d3ef25a1851', 'Premium', NULL, '8', '2019-12-24 02:26:29', '2019-12-24 02:26:29', NULL),
(91, 'f281d6ac-ee25-3405-8b61-a38b628c2bc4', 'Mrs. Sally Nikolaus', 'male', '1981-05-31', 'Budha', 'West Kalebfurt', '327 Morar Run Apt. 778\nLake Evie, DC 25036', '1-794-244-3665', '667054elissa93@hotmail.com', NULL, NULL, '0f7a8298b1512a5bd021fb106649e119788f0e2b68c53a71dfb186da2e8b2b25', 'Basic', NULL, '8', '2019-12-24 02:26:29', '2019-12-24 02:26:29', NULL),
(92, '5032dbab-933a-34a3-b5b3-8f3f2804d138', 'Tod Cormier Sr.', 'male', '1979-11-25', 'Hindu', 'Daveshire', '1989 Friesen Lake Suite 915\nEast Donato, NC 11003-9385', '241.734.2477 x3649', '5chelsea37@yahoo.com', NULL, NULL, '713d4f59fe367775fbbc4d7073587eefde962dd76e61773ed93e548ed6f6dfed', 'Basic', NULL, '15', '2019-12-24 02:26:29', '2019-12-24 02:26:29', NULL),
(93, '5ac4dd59-ac2d-3cda-b1ca-3ac5b5097700', 'Isabell Lehner', 'male', '2017-11-29', 'Budha', 'South Krystinachester', '405 Brady Oval\nAmeliechester, NE 00005-6000', '+1.971.542.6062', '2jroberts@gmail.com', NULL, NULL, 'ca95063282657243c4cc9001953a8b0833965ae2f8b991e3e4581375be972d76', 'Basic', NULL, '3', '2019-12-24 02:26:29', '2019-12-24 02:26:29', NULL),
(94, '602f8e9d-90fc-35b4-9153-71eaf502ca06', 'Arvel Gleason', 'male', '1971-06-24', 'Hindu', 'Aprilfort', '5622 Renner Parks Suite 130\nWest Ethyl, IL 22028', '+1-638-561-7465', '113866056qhand@hotmail.com', NULL, NULL, '8a57aeb4c7bad394ccfcbc02cfbc115e61ee3c47911051921f82358ea8444898', 'Premium', NULL, '16', '2019-12-24 02:26:30', '2019-12-24 02:26:30', NULL),
(95, 'e2bde7bb-45dc-3ed6-bd72-487823c4e1cd', 'Prof. Raina Sanford', 'male', '2005-07-25', 'Kristen', 'Ayanahaven', '10334 Schneider Brook\nRodriguezfurt, VT 26491-6343', '(896) 232-5643', '7130schowalter.hilma@yahoo.com', NULL, NULL, '0e06d02bf7ceec75d6566e12a53dccbdf0edc187d27b9db578e99006d9728cd0', 'Premium', NULL, '19', '2019-12-24 02:26:30', '2019-12-24 02:26:30', NULL),
(96, 'd66e1c10-acbe-3a2a-bc1d-a46bb9ea51cf', 'Mr. Dennis Ankunding', 'female', '1994-06-15', 'Kristen', 'Justicebury', '6080 Ford Village Apt. 141\nTyresetown, NV 12402', '875-727-0922 x572', '0consuelo.kunze@hotmail.com', NULL, NULL, 'c3704c96377b3018a7e0827072f1e83196f24026cf2dfcd9307e2ab5b80ba37d', 'Basic', NULL, '11', '2019-12-24 02:26:30', '2019-12-24 02:26:30', NULL),
(97, '70717cd9-a8f2-3a6d-b3ff-16e0600d2668', 'Zachery Huel', 'male', '2018-08-05', 'Kristen', 'Port Jodieville', '7394 Bins Flat\nPacochabury, GA 44230-1327', '(982) 559-6574', '3grobel@gmail.com', NULL, NULL, 'aca439bde5a401b34e53ed0d31b5b39b705a09c79f8a37ad3d159d903ee03293', 'Basic', NULL, '1', '2019-12-24 02:26:30', '2019-12-24 02:26:30', NULL),
(98, 'd608d1a8-0eca-3cd8-844c-37b714e8f853', 'Kaycee Corkery PhD', 'male', '2006-09-03', 'Konghucu', 'Corneliuston', '14144 Dibbert Loaf\nLake Kianna, NH 21599-3826', '1-873-952-3880', '63617690marian18@gmail.com', NULL, NULL, 'a8f1e0a260c0187a39ea9e25fc75dd1a013ac409187aaafd14b3ed9de28dc792', 'Premium', NULL, '12', '2019-12-24 02:26:30', '2019-12-24 02:26:30', NULL),
(99, '03f52310-3938-30cb-b6d5-e803b578572a', 'Mrs. Judy Dibbert V', 'male', '1970-09-05', 'Kristen', 'New Gussie', '7329 Rath Crest\nDenesikland, MT 43721-9920', '204.248.8493 x89395', '26638dalton.glover@yahoo.com', NULL, NULL, 'd374b2ccb5c3f0eda09bbf27ffd2cfc0fb6be35933b0b735cca2982ab5b29493', 'Premium', NULL, '7', '2019-12-24 02:26:30', '2019-12-24 02:26:30', NULL),
(100, 'f2148a9a-4d95-3098-addf-0be5bb115451', 'Eloy Lubowitz', 'male', '1983-12-16', 'Islam', 'Aliviashire', '23284 Auer Lake\nSouth Martinaton, VT 74132', '(464) 269-1491 x5653', '5esteban90@gmail.com', NULL, NULL, '05323a5eab04f416804a35a270957d8ca70d39ee406ed14c3583c6679dbd2e45', 'Premium', NULL, '10', '2019-12-24 02:26:30', '2019-12-24 02:26:30', NULL),
(101, 'a6fc05c8-beb4-39b0-87ff-d0b713d8ccf9', 'Stanford Ernser Sr.', 'female', '1979-04-27', 'Kristen', 'Durganburgh', '4361 Jamel Spring Apt. 693\nTysonville, WA 39803-9906', '+16058450954', '718tkunze@yahoo.com', NULL, NULL, '07cb396c4d0c32f3e4bce41f11a31e04fe89245615562032788e3b8af6e6aa29', 'Premium', NULL, '11', '2019-12-24 02:26:40', '2019-12-24 02:26:40', NULL),
(102, 'ad9c2b39-7622-31b4-881b-5562f7672bfc', 'Jayce Beier', 'male', '2001-12-22', 'Hindu', 'North Reganmouth', '2387 Rogahn Island Suite 348\nHarrisburgh, WV 98668-4506', '1-358-775-2025 x24671', '97069641sidney.blanda@gmail.com', NULL, NULL, '99cea1635852818e764528b683c21a1c69dc682cd55486142fc4685139c0e4fb', 'Premium', NULL, '14', '2019-12-24 02:26:40', '2019-12-24 02:26:40', NULL),
(103, 'ac8c565a-ccb1-3506-883a-f600a3d7f1b5', 'Akeem Feil', 'female', '1985-03-23', 'Budha', 'Lutherstad', '42487 Hermiston Trail\nNorth Velma, OR 16753', '+1-956-784-9019', '23katheryn93@gmail.com', NULL, NULL, '14d738b4a9e9857d5def47de67912f1b020b5379ad062f87099b7df50c04f2a5', 'Basic', NULL, '16', '2019-12-24 02:26:40', '2019-12-24 02:26:40', NULL),
(104, '2be47192-1aed-3871-93c6-3a98642c76a5', 'Dr. Soledad Wiegand', 'male', '1999-11-17', 'Hindu', 'South Deanna', '52637 Mayer Corners Apt. 031\nNew Amely, FL 38532', '(297) 666-6748 x1420', '935kuvalis.kadin@gmail.com', NULL, NULL, 'fb500ecf4f6fc21b330ae2bd6b7971f375673771800a962cccd70d3d7b1c6118', 'Basic', NULL, '39', '2019-12-24 02:26:40', '2019-12-24 02:26:40', NULL),
(105, '32a1d53c-7d35-31db-b9f3-992bc45cdfba', 'Meda Reilly', 'female', '2001-01-13', 'Hindu', 'Osinskifort', '9358 Bruen Circles\nReillyhaven, MI 17596', '1-990-877-3642 x90720', '735hillard15@yahoo.com', NULL, NULL, '74006019e151483d080aaba14b599d4753dda7e4e33027ba9086982588b8c42e', 'Premium', NULL, '33', '2019-12-24 02:26:40', '2019-12-24 02:26:40', NULL),
(106, '105561bc-4882-3fc6-bdf8-29aeab2b9dda', 'Mr. Isai Bashirian', 'female', '1999-12-09', 'Budha', 'West Eldonmouth', '28239 Farrell Summit Apt. 900\nGeoshire, UT 33071-2448', '+1.290.479.2339', '2161ludie79@yahoo.com', NULL, NULL, 'b5e62c7da3babd488b12fd2b71c629b67cecbe56dce0236e7b43efdb9099e5d5', 'Premium', NULL, '8', '2019-12-24 02:26:41', '2019-12-24 02:26:41', NULL),
(107, '98afeb56-7d00-331d-a6d9-207ff564813a', 'Quinton Hayes', 'female', '2012-10-13', 'Budha', 'Terryborough', '76127 Kessler Landing\nStiedemannchester, PA 12777', '1-692-709-2409 x57637', '632527ebeier@gmail.com', NULL, NULL, '365343aa82de81ae86fd5ec3b0262a732787809c213a70d5dd0c38c8c6c09d44', 'Basic', NULL, '27', '2019-12-24 02:26:41', '2019-12-24 02:26:41', NULL),
(108, 'c7025ee6-a959-34d6-b06c-330636dd4a30', 'Foster Rosenbaum', 'male', '2014-07-11', 'Islam', 'Port Orphaburgh', '1397 Vandervort Haven\nPort Devante, FL 61738', '570-932-7958', '797766220rosie.jacobs@gmail.com', NULL, NULL, '28adae474ab6b058a368a5d376b8f6cbed42dfa7c37795b2c706a76d097599aa', 'Premium', NULL, '7', '2019-12-24 02:26:41', '2019-12-24 02:26:41', NULL),
(109, '616c1cc4-9195-3e46-8c49-8b30bf1c5206', 'Floyd Anderson', 'male', '1976-12-30', 'Konghucu', 'Grantville', '5989 Alford Mountain\nMaryamburgh, MO 47201', '+1 (985) 674-7833', '5thiel.cullen@gmail.com', NULL, NULL, '0541b2a2108ba4ff16dde95549886a5f7c854a5606ba985fcab22c9e7500fa0e', 'Premium', NULL, '4', '2019-12-24 02:26:41', '2019-12-24 02:26:41', NULL),
(110, '2872c85c-6f6d-3366-8b45-6257f979021d', 'Dewitt Beatty', 'male', '2000-09-26', 'Islam', 'Haagport', '6930 Lakin Rest\nPort Linnea, WY 73809-6179', '+1-891-215-4781', '82345244bbailey@hotmail.com', NULL, NULL, 'ef214fc9ea513e75eda30c8fb275f3c2c693cac0719794db2357cf5aa37a0bc8', 'Basic', NULL, '30', '2019-12-24 02:26:41', '2019-12-24 02:26:41', NULL),
(111, 'c4ed50e0-4b1d-356b-8971-b709cec452b9', 'Ada Kris', 'male', '1987-06-13', 'Hindu', 'South Feltonborough', '138 Tess Extension\nNew Margaretta, MA 20478', '(958) 610-9585 x7346', '59bill.goodwin@yahoo.com', NULL, NULL, 'ef7d7ac467da122649de75525a8fdd56b920746bc2416c9387572af909cd2ddf', 'Basic', NULL, '7', '2019-12-24 02:26:41', '2019-12-24 02:26:41', NULL),
(112, '8de297d9-0ab7-3081-883e-93fc9c8cd57b', 'Kirk Bernier', 'female', '2007-02-15', 'Budha', 'Port Anahibury', '81573 Rutherford Plaza Apt. 714\nWest Flossiehaven, TX 34712-8969', '+1-643-343-2046', '45jeffery.stanton@hotmail.com', NULL, NULL, '6ff65ea5e5274a8a80d2e238ed4a9aa6ecfd3859b723cb9754c971eaf4f093c8', 'Basic', NULL, '2', '2019-12-24 02:26:41', '2019-12-24 02:26:41', NULL),
(113, '95766085-fe17-3018-8c0c-f98d81046d25', 'Lexie Howe', 'female', '1995-03-12', 'Islam', 'Nienowside', '989 Jeremie Loop\nHyattview, KS 09996', '(624) 629-7784 x23652', '9311682abigail99@yahoo.com', NULL, NULL, 'c46396228e20c03382a5ff2f6103e36f28e844cc9b407615ae2d463a3d2a9d35', 'Premium', NULL, '35', '2019-12-24 02:26:41', '2019-12-24 02:26:41', NULL),
(114, '1dfdfa5f-ca80-3acb-aece-98f29708db19', 'Lenore Schroeder', 'male', '2006-11-10', 'Kristen', 'Swaniawskimouth', '401 Kihn Heights Apt. 343\nLake Kristopher, VT 39912', '+16147747902', '99120204dillan.gutmann@hotmail.com', NULL, NULL, 'bd120c1585b0c9abcd4db56485f9f4b8527ae504f0d5debb63247b6bb88827a4', 'Premium', NULL, '8', '2019-12-24 02:26:41', '2019-12-24 02:26:41', NULL),
(115, '590dc4dd-c134-3cd7-8e72-484645fd4c55', 'Domenic Braun', 'male', '2019-03-01', 'Hindu', 'Jeffryborough', '37379 Waelchi Crescent\nWest Abdullah, WV 84217', '(328) 363-1855 x870', '933055201vsporer@gmail.com', NULL, NULL, '3f6331732afef85c9d33afb44d7d406655c2fe8cd0c04bcac0d00f6f889bb8f3', 'Premium', NULL, '12', '2019-12-24 02:26:41', '2019-12-24 02:26:41', NULL),
(116, 'eb0392d0-c9f2-36da-8a24-fd2315a861f9', 'Raphael Witting', 'female', '1997-03-25', 'Konghucu', 'Lake Selina', '47057 Abigale Skyway\nWest Talonhaven, AR 75220-9252', '(812) 722-5070 x8509', '9602906flo94@gmail.com', NULL, NULL, '7521dcd1beeddb3079a9e757af01cce5d20269c57a66d3698cd09e18b58db16d', 'Premium', NULL, '10', '2019-12-24 02:26:41', '2019-12-24 02:26:41', NULL),
(117, '26f859cf-b457-3762-9a00-537ed48769d9', 'Moses Gleason', 'female', '1998-11-25', 'Kristen', 'Port Chandlerville', '32429 Waelchi Viaduct\nNorth Norbertoshire, NV 91976-6812', '1-614-751-8460', '55oconnell.horace@gmail.com', NULL, NULL, 'f7eacf6f34dd66ad8de4097308a3c8026687f5a3a426766b36410c780c662561', 'Basic', NULL, '11', '2019-12-24 02:26:41', '2019-12-24 02:26:41', NULL),
(118, '6218baf9-1961-39c0-8fe4-7bc8ffa4e01f', 'Dr. Jerad Blanda V', 'male', '1991-08-30', 'Budha', 'East Antonio', '5431 Aimee Point Apt. 380\nNew Gerry, MO 03005', '1-548-583-4618', '55158ward.jayson@hotmail.com', NULL, NULL, '4a3f184afa9e7b122d976a961ec779182daeb36a51f649ad1c03bd96146b00a3', 'Premium', NULL, '2', '2019-12-24 02:26:41', '2019-12-24 02:26:41', NULL),
(119, '76db4403-1661-36a7-9df6-3f8f37fd09ba', 'Ms. Tabitha Marks', 'male', '1993-11-20', 'Islam', 'South Monicaview', '3675 Alicia Canyon Suite 043\nIdamouth, VA 89051-2218', '537-792-5933 x36506', '4lila43@hotmail.com', NULL, NULL, '6ef19b1280398668220137aef6ddf1adf830e90eaec3b8bd202b94de6204ac5f', 'Basic', NULL, '39', '2019-12-24 02:26:41', '2019-12-24 02:26:41', NULL),
(120, '640b5b8e-fc79-3f36-9a79-f7c0be19b181', 'Alva Wisozk', 'male', '2006-10-08', 'Islam', 'Wolfview', '76641 Annabelle Wells\nTaliabury, CA 07806-6541', '(681) 837-0801', '36728046cwyman@gmail.com', NULL, NULL, '2fad8fd377ec171884fe655af91019b0f77024d809eaf617d447e0ebd2938984', 'Premium', NULL, '7', '2019-12-24 02:26:41', '2019-12-24 02:26:41', NULL),
(121, '7ce294f3-014c-35a9-bd94-24ded49331f5', 'Patricia Sanford PhD', 'female', '2019-07-30', 'Konghucu', 'Cremintown', '634 Waters Cove\nLake Kearaborough, MI 35357-3176', '1-615-318-1448', '401312854brisa77@gmail.com', NULL, NULL, '37c047d12d0e478676d5ee82513c89f27250eaa4dbae366859f2892fbba6cbef', 'Premium', NULL, '22', '2019-12-24 02:26:42', '2019-12-24 02:26:42', NULL),
(122, 'a82e952e-2dd3-3569-9fe0-13bbc2080610', 'Tristin Renner', 'female', '1970-01-12', 'Budha', 'O\'Connellport', '73886 Henriette Mountain Apt. 240\nLeschborough, LA 56748', '(467) 697-0774 x746', '622nikolas.stark@gmail.com', NULL, NULL, '42d3062468e59f34fabac4ac4414b8363194d1067b85982a3cafb7dcd8c5cc0c', 'Premium', NULL, '10', '2019-12-24 02:26:42', '2019-12-24 02:26:42', NULL),
(123, 'a950fa94-f410-37b8-8d0a-a6407382771e', 'Alden King PhD', 'male', '1977-08-26', 'Konghucu', 'North Jadenville', '792 Angeline Square Apt. 270\nGoldenport, MI 66111', '(293) 201-1267', '59003graciela.pollich@hotmail.com', NULL, NULL, '2815a24bd6b31d8a6345345100778a2fe56250cd0caa7ca5e2fd408d743ba92f', 'Basic', NULL, '34', '2019-12-24 02:26:42', '2019-12-24 02:26:42', NULL),
(124, '6a8bcdd5-e788-3033-9dda-c0d12206fe85', 'Magali Brown', 'female', '1992-04-28', 'Kristen', 'Davidberg', '728 Melyna Glens Apt. 199\nEveretteberg, NH 50792', '550.443.7827 x733', '228judy04@gmail.com', NULL, NULL, 'f95279d078d7c49acd26c6076541ad6d770cf54256eefd80cd72aa3a2de66f85', 'Premium', NULL, '31', '2019-12-24 02:26:42', '2019-12-24 02:26:42', NULL),
(125, 'eaca9ec7-792a-3718-8860-c88e7cb1e1b2', 'Dr. Leatha Feeney', 'female', '1985-04-28', 'Islam', 'Elijahview', '8207 Terry Crossing\nMullerchester, NE 47349-2501', '(817) 500-2592 x8817', '78nitzsche.finn@gmail.com', NULL, NULL, '31c475cdfbbbae7330308e64fa41009e2d7e7b61c84b0cfa6eb1816694cc76bf', 'Premium', NULL, '27', '2019-12-24 02:26:42', '2019-12-24 02:26:42', NULL),
(126, '0ff091cd-5640-3b43-a3f1-d3328dd7b57f', 'Gianni Abernathy', 'male', '2005-03-04', 'Islam', 'New Ellie', '44417 Allison Canyon Suite 142\nStephaniefurt, MS 75549-4719', '1-790-778-7597', '4278037varmstrong@hotmail.com', NULL, NULL, '5f2eb6691f46ee5b67fb793af13cb9fe78924f91a614c74236d9c0516154d187', 'Premium', NULL, '14', '2019-12-24 02:26:42', '2019-12-24 02:26:42', NULL),
(127, 'b71d84de-9916-3820-89b1-2e1feb86156f', 'Dr. Stella Kovacek DVM', 'female', '1980-03-31', 'Konghucu', 'Masonburgh', '4424 Shirley Cove\nTremblaystad, DC 85680-8459', '404-686-9760', '10984092cartwright.anika@gmail.com', NULL, NULL, '016ae2fe9961052a32de6bb70783a7df71100df8c06a5bbff6799cbdbfb15729', 'Premium', NULL, '1', '2019-12-24 02:26:42', '2019-12-24 02:26:42', NULL),
(128, '4dc26697-4905-3064-80e3-0c791c7febcb', 'Antonina Lemke DVM', 'female', '1982-05-01', 'Kristen', 'Gerardoburgh', '6291 Katarina Lakes\nLake Brockstad, WA 22038-3771', '940-676-2505 x640', '97872rickie.ullrich@yahoo.com', NULL, NULL, '581a6677c2879637c9098d8deda0b799c9953a2dd62ac1e7230b16f5d5937f01', 'Basic', NULL, '13', '2019-12-24 02:26:42', '2019-12-24 02:26:42', NULL),
(129, '9ec8075f-5d57-3d02-b588-f41c4deaa05d', 'Aubree Price', 'male', '1972-04-20', 'Kristen', 'North Carmen', '999 Jeanette Ways\nEast Elroy, IL 01480', '981.820.0477 x219', '42751543marietta.willms@yahoo.com', NULL, NULL, '39582ee6ab0b4e7fe8853b3c48c64e61c70793112931edb0707ef021d080c029', 'Basic', NULL, '10', '2019-12-24 02:26:42', '2019-12-24 02:26:42', NULL),
(130, 'cead06d7-2259-391e-b0c0-9a8207926a09', 'Maximo Shields', 'female', '1990-06-19', 'Islam', 'West Jaydeshire', '727 Kiarra Mission Apt. 627\nSantafort, ID 72890', '326-521-0952 x87586', '90leonie.beer@hotmail.com', NULL, NULL, '669dd90ce5000d3a7158357ef009e079a7edc4cd4a29b27c6c0614130c72515d', 'Premium', NULL, '23', '2019-12-24 02:26:42', '2019-12-24 02:26:42', NULL),
(131, 'a5a8b089-ef2c-3d44-a3b4-1caca4477a30', 'Cicero Rath', 'male', '1981-08-11', 'Hindu', 'Tiarashire', '8684 Damion Place\nSouth Alberto, OR 42621', '539-444-0851', '30hbrekke@hotmail.com', NULL, NULL, '3c63145f2f7e7f491a85f4290fe5ed2ac22ce4e37840aaa5c9f3488e0dd772d8', 'Premium', NULL, '23', '2019-12-24 02:26:42', '2019-12-24 02:26:42', NULL),
(132, 'cfcbeeab-8237-3745-8035-fc1ab89a520b', 'Joseph Runte', 'male', '2011-06-20', 'Kristen', 'North Dameon', '6655 Alexandrea Creek\nLake Conradberg, WY 68936-2861', '1-797-250-3482 x9910', '47smayert@yahoo.com', NULL, NULL, '16c330653d2f771a9b8016f3843757f04d5a37b40c012d73c002364fb834c9e4', 'Premium', NULL, '9', '2019-12-24 02:26:42', '2019-12-24 02:26:42', NULL),
(133, '9f7ae543-f6d8-304c-ae0b-98cfbd927db5', 'Domingo Zulauf', 'female', '1988-05-16', 'Islam', 'Mathiasmouth', '646 Tremblay Inlet\nNorth Jesse, CT 16302', '(969) 625-5308 x0482', '202161583zkovacek@gmail.com', NULL, NULL, 'e1e7b01761ac268fb85139b92a65ee958dcb5836159118ed68e85fd7344aee32', 'Basic', NULL, '36', '2019-12-24 02:26:42', '2019-12-24 02:26:42', NULL),
(134, 'e105c8cb-465f-3796-9db2-69baebe1a5f5', 'Tina Grady', 'female', '1981-07-24', 'Hindu', 'New Jake', '182 Jairo Union Apt. 421\nZiemeville, MS 08582', '617.512.3564 x9219', '600274812alisa67@hotmail.com', NULL, NULL, 'fb2f2b7a154dd4c3d3413dd71f32c576f4080591bcc2a1f73bac0b2ec91179a5', 'Basic', NULL, '11', '2019-12-24 02:26:42', '2019-12-24 02:26:42', NULL);
INSERT INTO `customers` (`id`, `id_card_number`, `name`, `gender`, `birthday`, `religion`, `city`, `address`, `phone_number`, `email`, `email_verified_at`, `token`, `password`, `status`, `remember_token`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(135, 'd842e70f-6559-3866-93a2-8f7d721f5729', 'Marlee Lowe DDS', 'male', '1973-12-06', 'Konghucu', 'Port Neoma', '152 Aliza Viaduct\nSchambergerland, KS 86417', '+16294051251', '433593isaiah74@gmail.com', NULL, NULL, '921ecfa58dda1a44c1ec7d8e485eab785880e3fbb45c0f994d1148fb46019e5d', 'Premium', NULL, '24', '2019-12-24 02:26:42', '2019-12-24 02:26:42', NULL),
(136, '1baf0f4f-959d-34a4-8a25-3dfdca61f015', 'Ethel Corwin Sr.', 'male', '2017-03-27', 'Islam', 'South Krista', '5958 Lind Road\nLeschburgh, MA 91946-5911', '981-337-5626', '5008677kfisher@gmail.com', NULL, NULL, '0c3a22118d97040685e4fa3f26a7ab7f631cb7137834be2c9227cc1f1ca4f761', 'Basic', NULL, '12', '2019-12-24 02:26:42', '2019-12-24 02:26:42', NULL),
(137, 'd6fd1e54-4ea1-3ce0-9bc3-a8f786c0ebe9', 'Myles Christiansen', 'male', '1993-04-24', 'Konghucu', 'West Audra', '207 Kieran Tunnel Suite 693\nNorth Patience, MO 02990-3969', '1-532-417-5757 x699', '847200cesar.larkin@hotmail.com', NULL, NULL, '96b50d30363fcab446851d44bcd7c7ed3e0331613675f40b0418c6df72d36b27', 'Basic', NULL, '13', '2019-12-24 02:26:42', '2019-12-24 02:26:42', NULL),
(138, 'a560464c-5de9-3db7-be85-a0f484b4605a', 'Clifton Schuster', 'male', '1986-11-22', 'Konghucu', 'South Rosalindachester', '4471 Kylee Union\nGrahamland, SD 27857-8083', '+1 (435) 541-4467', '684miles54@yahoo.com', NULL, NULL, 'c28c52891d99f658779adf5be7f40fd6dd320a412d8a0d8620055db157379b3c', 'Premium', NULL, '5', '2019-12-24 02:26:42', '2019-12-24 02:26:42', NULL),
(139, '79c0d8ea-c8c9-341d-8495-d74676dfdbd0', 'Gerardo Bartell', 'female', '2014-11-03', 'Islam', 'Ortizmouth', '7184 Loma Ports Apt. 176\nEast Amelia, MD 75218-0725', '772-818-0678 x3156', '1887crosenbaum@gmail.com', NULL, NULL, 'f3dd8f8de3112bd7cf98499e02aa4b875513ef38f2f56fff976ed7924bef397d', 'Premium', NULL, '9', '2019-12-24 02:26:42', '2019-12-24 02:26:42', NULL),
(140, '2010c098-bcd0-397b-9dd4-444f05aaae64', 'Mckayla Reichert', 'male', '1995-08-14', 'Hindu', 'East Timothymouth', '1618 Sonny Springs Suite 324\nMckaylaton, AR 99001', '1-574-636-6357 x956', '3odessa92@yahoo.com', NULL, NULL, '498b9279d5287b9df81016de57417d0f3731049127177444b05468cc41938ea2', 'Premium', NULL, '11', '2019-12-24 02:26:42', '2019-12-24 02:26:42', NULL),
(141, '0745d4ae-196c-3da0-abce-9adf31ec40b2', 'Rosendo Wilkinson', 'female', '2008-03-06', 'Islam', 'New Princemouth', '132 Prosacco Ports Apt. 332\nSouth Berry, MA 97345-1974', '627-983-5761', '6973clay63@gmail.com', NULL, NULL, 'd7506af39aec6a294c4ee80b3a086458ff44cddb9acfe4029bcea67cc9d640ca', 'Basic', NULL, '18', '2019-12-24 02:26:43', '2019-12-24 02:26:43', NULL),
(142, '492d8f23-199f-3acc-9bd3-404dbe20eb6e', 'Mr. Xavier Hahn Sr.', 'male', '1999-04-26', 'Hindu', 'New Levi', '4394 Jimmie Bypass\nNew Fredport, VA 59293', '1-937-558-4323 x70197', '94nicolette.roob@yahoo.com', NULL, NULL, '11027545fc3686d605b1f88ad77579967837d9b46962fe592b070dd403180524', 'Basic', NULL, '2', '2019-12-24 02:26:43', '2019-12-24 02:26:43', NULL),
(143, '19ebef95-882e-3780-b23f-76e2d53119a3', 'Werner Bednar', 'female', '1979-10-13', 'Islam', 'Johanstad', '2776 Waters Harbors\nMariannaburgh, AK 49494-9330', '282.250.9468', '169749fahey.estelle@gmail.com', NULL, NULL, 'cbc04373f54e41fa804972b11a1cd8c3fca32eb6e1e1fb0bb59f3e3f46ff08c2', 'Basic', NULL, '7', '2019-12-24 02:26:43', '2019-12-24 02:26:43', NULL),
(144, 'ee455333-bbb5-3405-8a0b-2688fb2c02ed', 'Beulah Lowe', 'female', '2004-11-17', 'Konghucu', 'Johannbury', '12120 Solon Divide\nMrazport, AZ 53888-5853', '+1 (953) 717-9945', '520555octavia.schultz@yahoo.com', NULL, NULL, '3a77d2e2165212d2447b35f667af64a5063f374d5d54b9e1d67d1d1b3f3648ac', 'Premium', NULL, '20', '2019-12-24 02:26:43', '2019-12-24 02:26:43', NULL),
(145, '68701098-8b60-3ab9-a426-f8ac9bc1c707', 'Kris Schulist', 'male', '2019-05-18', 'Konghucu', 'Ebertburgh', '3718 Elian Land\nEast Xavierfurt, SC 21214-5742', '+1 (845) 774-9909', '347reuben.turner@gmail.com', NULL, NULL, '7238c056d95a782ca90c7db2232687439a0223e94ddfd21dfdd490e8aa96a6e4', 'Premium', NULL, '23', '2019-12-24 02:26:43', '2019-12-24 02:26:43', NULL),
(146, 'd261c612-7fd3-37da-b8b5-dfd3f25d4eae', 'Dr. Hadley Konopelski II', 'female', '2017-07-28', 'Kristen', 'South Athenamouth', '7909 Lincoln Crescent Apt. 199\nEthanburgh, SC 88396-9024', '(443) 990-5524', '4708533vaufderhar@hotmail.com', NULL, NULL, '4a2ab227f7590a59e91ac04d8e3eaff46ba40673bb3ba6addc97252e6d3fa7fc', 'Premium', NULL, '25', '2019-12-24 02:26:43', '2019-12-24 02:26:43', NULL),
(147, 'b4d8b009-d33a-3cfe-bbb7-355d6ac87bd6', 'Prof. Oliver Osinski', 'male', '2007-12-22', 'Islam', 'Boyleland', '22450 Satterfield Roads\nMohrchester, ND 41421-3175', '+17179342610', '2486kwaelchi@yahoo.com', NULL, NULL, '5ee51999c3f397fbcad78aeb1e8b4d1917b631fd0c041225134a86ef738d8c04', 'Basic', NULL, '18', '2019-12-24 02:26:43', '2019-12-24 02:26:43', NULL),
(148, '39f8ec40-9a47-3164-9220-d32e4a13c1ad', 'Dr. Kurt Luettgen', 'female', '1982-07-07', 'Islam', 'Port Guillermo', '8921 Marvin Fork Suite 499\nWest Pansyville, CO 74356', '(490) 892-0441', '866lauretta.hartmann@hotmail.com', NULL, NULL, '87714aabf8fedb37ce0a3c4544ec8100e1f885bfd851d9767f5aabb623220702', 'Premium', NULL, '3', '2019-12-24 02:26:43', '2019-12-24 02:26:43', NULL),
(149, '29d70817-4512-3a12-bcdc-7bd311b32bee', 'Braxton Lesch', 'male', '1982-11-17', 'Kristen', 'East Tabithamouth', '621 Boyer Via Suite 986\nPredovicchester, TN 63424-3989', '1-329-693-7267', '85488werner.weimann@yahoo.com', NULL, NULL, '73e1773367f04225b89a0a30f5db24322c5e230313a48632ad7e661ff92e759f', 'Premium', NULL, '34', '2019-12-24 02:26:43', '2019-12-24 02:26:43', NULL),
(150, '8109cd75-d90d-3085-a0c9-a485691e0599', 'Charity Bechtelar', 'male', '1985-09-12', 'Hindu', 'West Cydney', '175 Callie Trail\nNorth Kari, HI 72913', '691-813-8906', '9523gabe.kozey@gmail.com', NULL, NULL, 'e22d08e50375b9964573d69b08a87792420e9edd421955c7fcbe2d083a7014c2', 'Basic', NULL, '34', '2019-12-24 02:26:43', '2019-12-24 02:26:43', NULL),
(151, '0ec1bf67-db22-3a1a-953d-0f897bb26f1d', 'Madelyn Stark', 'female', '2015-03-07', 'Kristen', 'East Camren', '4601 Uriah Shoals Suite 894\nEast Shainafort, IA 49885', '712.949.6862 x75587', '1kankunding@hotmail.com', NULL, NULL, '9fa34620e02bf6eccc8a009d3b58fb588895e0640cc864f5c6361a7765492b16', 'Basic', NULL, '32', '2019-12-24 02:26:43', '2019-12-24 02:26:43', NULL),
(152, 'b99a2930-a20c-3386-a196-e48adb191d2b', 'Lila Beier', 'male', '1979-03-10', 'Hindu', 'Oberbrunnerfort', '2843 Bergstrom Parkway\nTheodoremouth, FL 10785', '994-830-4328', '90409348clemmie76@yahoo.com', NULL, NULL, 'e2d2622fcaebae81b4e6602f6979f4ee3f1567c779246566ff8b63da92760eb5', 'Basic', NULL, '33', '2019-12-24 02:26:43', '2019-12-24 02:26:43', NULL),
(153, 'baa99be8-748d-3a93-b7dd-3b8f0449e7ef', 'Dr. Jazmyne Simonis', 'female', '1975-01-29', 'Kristen', 'Cruickshankland', '739 Gaylord Lodge\nAntoneburgh, SD 35502-4965', '(871) 689-7767', '2852elias.toy@gmail.com', NULL, NULL, '0f2cf7167db9e6f80b1599036669f92f62a67687a1c331e7f7fca6595c686516', 'Basic', NULL, '31', '2019-12-24 02:26:43', '2019-12-24 02:26:43', NULL),
(154, '0db4bc62-a07e-3f99-9ab2-a1091f649593', 'Ollie Stoltenberg', 'male', '2003-10-13', 'Kristen', 'Port Rubyeview', '559 Reynolds Trail\nPort Estrellamouth, DE 92357', '1-589-353-6792', '942647118torphy.sydni@gmail.com', NULL, NULL, 'da270418c97b35fcb7de77b291fdc5fadf1b86ac10d95e1bf688ed718617b1df', 'Basic', NULL, '20', '2019-12-24 02:26:43', '2019-12-24 02:26:43', NULL),
(155, '2f048046-28ce-3fb1-ba27-6a2204a812af', 'Rashad Boehm', 'male', '2006-10-06', 'Konghucu', 'Brockmouth', '268 Hilpert Locks\nEast Jaden, KY 69918', '817.440.5532', '292daija34@yahoo.com', NULL, NULL, 'a07322c99f489cf29161bb72866ce4b47432102ce04da3aeecb27964296eb9cd', 'Basic', NULL, '13', '2019-12-24 02:26:44', '2019-12-24 02:26:44', NULL),
(156, '5d1ce816-10db-33ac-868f-24f4366280e5', 'Sandrine Waters', 'female', '1995-07-06', 'Kristen', 'North Meaganstad', '839 Felipe Avenue Apt. 881\nEast Morgan, AR 00568-5358', '865.303.2749 x5337', '2979tyler.prosacco@yahoo.com', NULL, NULL, 'cd2c83978367bcc1543d20530675778917d1b493d14e7510407eb83a8ace6adc', 'Basic', NULL, '39', '2019-12-24 02:26:44', '2019-12-24 02:26:44', NULL),
(157, '9c05b13d-f7fb-34a0-a846-aaf47b1395c6', 'Ignacio Mante', 'female', '2004-11-13', 'Konghucu', 'Weissnatshire', '28374 West Square Apt. 651\nPort Kaya, IN 46775-2740', '437-498-8490 x042', '843hansen.augusta@hotmail.com', NULL, NULL, '6d123f9e94665991a8520f4361549b5669a45593ee1b26a1895917694e18b693', 'Premium', NULL, '26', '2019-12-24 02:26:44', '2019-12-24 02:26:44', NULL),
(158, '0061b59c-5759-3afc-9981-ff8274d470b6', 'Keaton Wilkinson', 'female', '1971-12-26', 'Budha', 'Jovanyshire', '136 Declan Mountains Apt. 842\r\nLake Dasiamouth, SD 91787', '(359) 287-5074', '72635632trey.towne@yahoo.com', NULL, NULL, 'fda356274593807801b1094a96248529f77efecfb3fbeaac70f395cfe06386f4', 'Basic', NULL, '16', '2019-12-24 02:26:44', '2019-12-24 02:49:38', NULL),
(159, '4371f52d-1bee-3186-b45f-3e08f873616d', 'Prof. Mac Lebsack', 'male', '1972-03-12', 'Budha', 'Clarkbury', '97667 Boyle Pass\nNorth Alvera, NC 70289-4289', '+1.357.912.0149', '772895humberto.ferry@yahoo.com', NULL, NULL, '4c87610dba72f48b769c2094dc8354502b1de3df5ab33570b6991edbae934fd6', 'Basic', NULL, '11', '2019-12-24 02:26:44', '2019-12-24 02:26:44', NULL),
(160, 'b22db6c9-c274-3b57-9dd2-3929e51f1eb3', 'Abigail VonRueden', 'male', '2016-08-18', 'Konghucu', 'Cathrynton', '117 Wava Brook Suite 931\nSouth Corabury, WI 24855', '346.371.1482 x231', '892368110stamm.alanna@hotmail.com', NULL, NULL, 'cfe80acfeb6b9bbbee38ba8f18a5a614bb6e42339fcddad75c7caf789cae4be3', 'Premium', NULL, '17', '2019-12-24 02:26:44', '2019-12-24 02:26:44', NULL),
(161, 'ce5880a3-4403-3f01-8feb-3966ad2187b4', 'Edwardo Tromp', 'female', '1978-12-23', 'Kristen', 'New Kieran', '5784 Eva Circle\nEast Alyson, OK 09127-6260', '+1-906-646-1559', '22marcia.bashirian@yahoo.com', NULL, NULL, 'c2f7d39f81ea60350f698884311d65e7703d725751b84145db508d0a2472dc49', 'Basic', NULL, '37', '2019-12-24 02:26:44', '2019-12-24 02:26:44', NULL),
(162, 'c384f3b3-9786-3870-9edf-914754ec7b2b', 'Santino Bashirian', 'female', '2008-03-11', 'Budha', 'Marinaburgh', '9417 Serena Wells\nNorth Adolphus, KS 95511', '+14197803618', '5508denesik.nikolas@gmail.com', NULL, NULL, '3a0be2317e8763f2d1d81c57fdae36a927e4c67b4954f53149d61d58fd92345e', 'Basic', NULL, '11', '2019-12-24 02:26:44', '2019-12-24 02:26:44', NULL),
(163, 'f9aeac51-fdd4-324a-8758-92895c42bb55', 'Agnes Hoppe', 'female', '1973-01-04', 'Konghucu', 'New Marianne', '53196 Hudson Forks\nEast Aimee, WY 02332-5406', '(665) 650-5569', '953053nolan.alta@gmail.com', NULL, NULL, '2d21b80f10b945d424e92ce1c078b2aa86bba1f909776a24cab441280a6d9bbb', 'Premium', NULL, '30', '2019-12-24 02:26:44', '2019-12-24 02:26:44', NULL),
(164, '8fc43de9-0a70-34ff-a128-4f51ae35cb3f', 'Tyree Shanahan', 'male', '2000-10-02', 'Konghucu', 'Effertzville', '3143 Ebert Pike\nEast Austyn, SC 91344', '(409) 460-9238 x97996', '713093286clovis28@hotmail.com', NULL, NULL, '8534ac287f0ed1182c15ede33aa244546f4b17d0beabbc7548c81ba91fd4e92f', 'Premium', NULL, '11', '2019-12-24 02:26:44', '2019-12-24 02:26:44', NULL),
(165, '8251aca2-c3be-3a5e-abf5-889cc5deac89', 'Idella Cruickshank III', 'female', '1975-01-31', 'Budha', 'West Gavinfurt', '9287 Kirlin Roads\nNorth Danikaland, KS 96943', '1-863-745-1467', '16skylar43@gmail.com', NULL, NULL, 'f26103ae6a69b8e77a1b965b45d150dbeb752b066019e2ee916dce29ba530cad', 'Basic', NULL, '21', '2019-12-24 02:26:44', '2019-12-24 02:26:44', NULL),
(166, 'c5906ecd-a8c3-395f-9950-ec83d1a63828', 'Felipa Hill', 'male', '1988-02-12', 'Islam', 'McLaughlinmouth', '675 DuBuque Landing\nEast Elsa, NJ 79811', '585-736-6646 x0347', '34235schultz.kari@gmail.com', NULL, NULL, '851057cf7299da4844cb61aae5471c15b3e4d12c6d66234f36c2a812de501ec9', 'Basic', NULL, '8', '2019-12-24 02:26:44', '2019-12-24 02:26:44', NULL),
(167, '50887021-a2a7-3c17-a028-b6784f0cac66', 'Mrs. Vernie Berge Jr.', 'female', '1980-09-26', 'Islam', 'Ebertshire', '29428 Clovis Dam Apt. 150\nJeramieberg, KS 16546-5496', '1-441-230-7809 x2812', '6qfisher@hotmail.com', NULL, NULL, '3b5627f6e17d109a02c7a51370ce955e39910ce4edb8a719d7dbb33558d75cc8', 'Premium', NULL, '3', '2019-12-24 02:26:44', '2019-12-24 02:26:44', NULL),
(168, '5c1e58e4-1f31-317a-a843-220be2f69712', 'Louisa Rempel', 'male', '1985-02-12', 'Konghucu', 'New Bettyport', '42347 Runolfsson Mills\nEast Rosalindaton, NM 99985', '(534) 304-0042', '823451598andy.jacobson@hotmail.com', NULL, NULL, '6f98615a2c11fc260e58dde926245aa3606b6457b439988b84a65bb96fecfc49', 'Basic', NULL, '17', '2019-12-24 02:26:44', '2019-12-24 02:26:44', NULL),
(169, '5ea14256-fe96-3789-8904-aa4b613475ce', 'Danika Bogisich', 'female', '2014-03-07', 'Islam', 'Candicechester', '11885 Julio Ville Suite 559\nNorth Fabiola, VT 68705', '932.369.0640 x465', '825296127vena83@hotmail.com', NULL, NULL, '8a17fdf5d61ec16b7f06edc833705ebf3fd2fd7bb07afba92ca732c37f0bb944', 'Basic', NULL, '24', '2019-12-24 02:26:44', '2019-12-24 02:26:44', NULL),
(170, '8485b031-f471-30b4-83e1-254778ef3273', 'Gust Carter', 'female', '1999-08-19', 'Budha', 'New Elvisview', '326 Roman Shore\nLake Nyahstad, NH 01326', '850.520.6070', '66meghan.prohaska@gmail.com', NULL, NULL, 'e43844187bfcafd94b82dbf866408165e79cbc5aebaef5fd4d04e050474a053c', 'Premium', NULL, '16', '2019-12-24 02:26:44', '2019-12-24 02:26:44', NULL),
(171, '075fc935-9fc3-3234-8d9e-4bb450e620e7', 'Dorcas DuBuque IV', 'male', '1977-03-08', 'Konghucu', 'North Chaddfort', '5035 Stephany Spur Apt. 980\nLake Flavio, FL 13033', '685-285-5820 x555', '27christopher18@yahoo.com', NULL, NULL, '1157838135699bc7dcb583b7201d7b1f30ab4234242262f7885f07eb1b1558e9', 'Premium', NULL, '16', '2019-12-24 02:26:44', '2019-12-24 02:26:44', NULL),
(172, '8826ce2a-e763-3cf9-bcfe-e0a597817f3e', 'Delphine Bernier', 'male', '1979-01-14', 'Konghucu', 'South Odell', '7441 Morissette Centers Apt. 007\nEast Freddystad, NC 38295-1463', '+1.506.337.0868', '927937prosacco.graham@yahoo.com', NULL, NULL, 'c21aff6e2a73075d904039e88a4fa18614466381615e8b4e0330866e93abe7ad', 'Basic', NULL, '26', '2019-12-24 02:26:44', '2019-12-24 02:26:44', NULL),
(173, '6844371b-9aca-3576-af68-d72ffb9aae58', 'Pearline Bradtke', 'female', '2003-04-08', 'Kristen', 'Adelaton', '9848 Runte Shoal Suite 567\nSouth Kaceyview, GA 01779-7458', '421-615-7186 x68326', '4355714gorczany.jammie@gmail.com', NULL, NULL, '9861ba6e362608cf11d3325c4c3cdd6edccfaf65007f9153f1e0559e1dd894e9', 'Premium', NULL, '40', '2019-12-24 02:26:45', '2019-12-24 02:26:45', NULL),
(174, 'accbfaa9-7690-355a-90c2-41793b5449e8', 'Ozella Abernathy Sr.', 'female', '1988-01-14', 'Kristen', 'East Margret', '6622 Satterfield Harbors\nKelsiemouth, WY 49078', '345.409.1399 x06492', '593hvon@gmail.com', NULL, NULL, '78a97ee4373c83d4fb9235197cef4d21659cbd2f403db004080a8ed12683a77a', 'Premium', NULL, '20', '2019-12-24 02:26:45', '2019-12-24 02:26:45', NULL),
(175, 'f67bf5cc-db60-38bc-993a-86dc5c2d7e98', 'Daphne Wilkinson', 'female', '2005-08-18', 'Budha', 'Rohanberg', '331 Lempi Overpass Apt. 430\nGusikowskitown, CA 28210-1022', '204.434.9021', '63khansen@gmail.com', NULL, NULL, '7d7f72fa3f2b42b710b914003f60b7c34da3d65535aa549e2d67d238232b414c', 'Basic', NULL, '40', '2019-12-24 02:26:45', '2019-12-24 02:26:45', NULL),
(176, '8c80e40c-6754-39e4-a053-23444f0ff912', 'Russel Wolf', 'female', '2013-10-17', 'Kristen', 'Vivientown', '241 Fidel Forges\nEast Krystelshire, DE 16311-9775', '1-342-885-8147 x30292', '35lupe.stoltenberg@yahoo.com', NULL, NULL, '5ccb5e803c312f73663a3a72de02873aed49917a36b92ffdf64ba82d4dd8e9a4', 'Premium', NULL, '36', '2019-12-24 02:26:45', '2019-12-24 02:26:45', NULL),
(177, 'e15a5c68-b4c4-32cc-85f8-1f0879938a2f', 'Elsie Crooks V', 'female', '1973-06-16', 'Islam', 'Judahshire', '414 Dell Isle\nBoehmmouth, KS 12608-9119', '471-683-6548', '63linda96@yahoo.com', NULL, NULL, 'f80e0e8c7a71eddde79f88d655e2664b0a532fa5a927c2db452f15851011f39f', 'Premium', NULL, '24', '2019-12-24 02:26:45', '2019-12-24 02:26:45', NULL),
(178, '48f94083-7a38-330b-8807-4aa6c930eb34', 'Cecelia Koss', 'male', '1993-09-02', 'Hindu', 'North Karelle', '3655 Bradtke Mill Suite 803\nRheaborough, LA 07260', '941.724.2346 x78486', '892854487greta.jast@hotmail.com', NULL, NULL, 'ba782d774a4280fb5b2d3dc86a2c21268d4d3b6e130040739ecbd8fa9481cd59', 'Basic', NULL, '7', '2019-12-24 02:26:45', '2019-12-24 02:26:45', NULL),
(179, 'b4c6c2be-f29a-3c23-845e-d7333ce33ff7', 'Mario Hills', 'male', '2002-08-04', 'Kristen', 'Daphneland', '75030 Adrienne Pike\nBlockbury, CT 65091', '(310) 909-8798', '345555557schumm.nella@yahoo.com', NULL, NULL, '5181833f4127d569706795f917ad4f209a30b2511824116eec02a387f8b2996c', 'Basic', NULL, '37', '2019-12-24 02:26:45', '2019-12-24 02:26:45', NULL),
(180, '986008cd-a186-37c7-9187-4b071bbcb77e', 'Edison Hintz II', 'female', '1982-03-10', 'Konghucu', 'West Janaemouth', '6244 Magdalena Village Suite 776\nDemarcusbury, SD 54566', '1-615-767-5969 x3910', '655235zpowlowski@gmail.com', NULL, NULL, '81d2fb39750a93431ab09aabecd7e19f1405bc19509ecdca4d0e02dd3d5cd1f2', 'Premium', NULL, '29', '2019-12-24 02:26:45', '2019-12-24 02:26:45', NULL),
(181, '6bcfb89c-ce4d-3eb3-84ac-5b51c02f3a27', 'Kenneth Turner', 'male', '1991-12-04', 'Islam', 'South Josiefurt', '6985 Lauryn Glens Apt. 186\nLudwigborough, FL 65956', '1-925-853-7707 x93533', '217910scottie49@hotmail.com', NULL, NULL, '6880ded7d19fed38590318e71534313aa04faa189a389d568b8fb8b83c544fa6', 'Premium', NULL, '40', '2019-12-24 02:26:45', '2019-12-24 02:26:45', NULL),
(182, 'cb2b3863-a0d4-34a4-ae34-899b85f6cd3e', 'Clair Fisher', 'female', '1977-10-26', 'Hindu', 'Lemkeside', '52273 Kshlerin Lodge\nNorth Colleen, AK 82969', '240.786.3951 x928', '725elta06@gmail.com', NULL, NULL, '51d710f0b8ce068017c895518dd86c0242f4ca01afe8c9528a0218d3977ca55b', 'Premium', NULL, '32', '2019-12-24 02:26:45', '2019-12-24 02:26:45', NULL),
(183, 'cbdd48a8-1c89-358a-9977-5036df2aa05b', 'Rylan Kreiger', 'female', '2006-10-31', 'Konghucu', 'New Stefanie', '15947 George Keys Apt. 528\nOsinskibury, ID 29296', '302.552.2948', '6679726bosco.sophia@yahoo.com', NULL, NULL, 'a34076b4fd8a56f306c3843b9a85dde7f0803c9b615df5e5206dd208449a9293', 'Basic', NULL, '5', '2019-12-24 02:26:45', '2019-12-24 02:26:45', NULL),
(184, 'cd9e5f01-195c-335c-9fe7-b9c54fcd6666', 'Tyrel Lind MD', 'female', '2016-08-13', 'Islam', 'Russelshire', '62691 Howe Gateway Apt. 603\nWest Paxton, LA 30711', '609.598.3960 x739', '8098xabshire@gmail.com', NULL, NULL, '03ea17d51dfac3c547c29a25c593f4005d20f02cd404315ba98f2617d7f83624', 'Premium', NULL, '32', '2019-12-24 02:26:45', '2019-12-24 02:26:45', NULL),
(185, 'e74bf8c9-30ce-3f34-88d3-d4a26d5cc634', 'Prof. Jaycee Rolfson', 'male', '1995-12-18', 'Budha', 'Lake Alena', '19219 Frederique Flat\nPort Rudyhaven, WY 59659-9505', '1-804-845-1332', '39270justus01@yahoo.com', NULL, NULL, 'df1122cd5bdcd41cdb8a73cd491c5ea828e45174b88804e7840077e61c93f6b3', 'Basic', NULL, '7', '2019-12-24 02:26:45', '2019-12-24 02:26:45', NULL),
(186, 'e76f3c53-e2d0-3518-98fd-3cfa0d894e9f', 'Dr. Nathanael Kassulke II', 'female', '1982-11-22', 'Budha', 'North Hillary', '551 Torphy Hills\nAveryfort, CT 26895-2093', '+1-219-790-4704', '1duncan.bode@gmail.com', NULL, NULL, 'db3e207f4ddb6cb94e133729fc8885e62cdddba1f33fdbd27d8f4adf492694c6', 'Premium', NULL, '15', '2019-12-24 02:26:45', '2019-12-24 02:26:45', NULL),
(187, 'f7611b0c-3362-3a65-b971-9dd479cfafcb', 'Dr. Giuseppe Larson', 'female', '1993-04-08', 'Budha', 'Trentview', '52935 Gottlieb Drives Suite 308\nTorpshire, HI 85622', '914-573-1935 x52746', '0kuhlman.delmer@yahoo.com', NULL, NULL, 'c778e107655da44c918b9619ddef3c6ba843581ac4cb070fc4cffbe58bb80a6a', 'Basic', NULL, '32', '2019-12-24 02:26:45', '2019-12-24 02:26:45', NULL),
(188, '76b299f2-d43b-3e1e-aaf9-0a90b4893122', 'Mrs. Heaven Davis', 'male', '1973-07-29', 'Islam', 'Port Isidroside', '10368 Nicolette Fields Suite 210\nSouth Garrisonborough, NM 96775', '757-953-9003 x1218', '961101251max42@hotmail.com', NULL, NULL, '8fd02cd4a16ad0578ae83c7f8604b5a8082afedce7adbcd3075c034ddd07d748', 'Basic', NULL, '15', '2019-12-24 02:26:46', '2019-12-24 02:26:46', NULL),
(189, 'ae493ebb-6d27-3205-84f3-fbbf7cf92d2f', 'Dr. Sammy Treutel IV', 'male', '1993-05-07', 'Konghucu', 'South Anika', '63263 Kshlerin Brooks\nNew Elroy, ME 12843-8979', '+1-376-866-9748', '7858423jpfannerstill@hotmail.com', NULL, NULL, 'b34d1394e67c56e6051c3bd426c2235991add16d74bb8d9a3a03a5949903e16f', 'Basic', NULL, '4', '2019-12-24 02:26:46', '2019-12-24 02:26:46', NULL),
(190, '7603a541-de61-3dde-b413-7a921f8f9e8f', 'Lorenz Green MD', 'male', '2012-01-31', 'Kristen', 'Cormierfort', '6308 Heathcote Harbor\nNew Armani, CO 45140', '+1 (763) 856-9430', '275767mschmidt@gmail.com', NULL, NULL, 'bd8ad57a6a8fbfa12f221d1f0b2337f73f06387625f3ae76ac8ccffb60769096', 'Basic', NULL, '33', '2019-12-24 02:26:46', '2019-12-24 02:26:46', NULL),
(191, 'cac2a602-d60a-395b-84a6-bf60a443e213', 'Richie Walter', 'female', '2007-08-30', 'Islam', 'Lake Allen', '242 Macey Dam\nJaskolskiton, MA 44191-8220', '(612) 965-7873', '581595bergnaum.okey@gmail.com', NULL, NULL, 'a31899514dadd497caa74a4d3d57e123200084f330a7fa492bba027866f7f101', 'Basic', NULL, '38', '2019-12-24 02:26:46', '2019-12-24 02:26:46', NULL),
(192, '97b485b4-501b-324d-84d3-c8779a23800b', 'Pamela Mante', 'female', '1998-02-11', 'Kristen', 'East Saige', '297 Schmitt Mall Suite 122\nHendersonstad, MN 30895-3371', '332-352-6926 x4771', '69sammy.hahn@gmail.com', NULL, NULL, 'ef12ad33cf76886785d46be87f732626f70cc057c3c0f5586ef2699c4d749c2f', 'Basic', NULL, '26', '2019-12-24 02:26:46', '2019-12-24 02:26:46', NULL),
(193, '36180c9e-9e5f-36d9-b9a0-d610c51fea83', 'Olen Runte', 'male', '2018-08-08', 'Kristen', 'East Treverview', '3631 Harvey Mountain Apt. 650\nMoseshire, MN 62666-5764', '378-367-8814', '3xbergstrom@gmail.com', NULL, NULL, '2c1a7d7bc7b7865b161318f7b6d5c39bd69a7410ef093cc491bb752fd043aa9d', 'Basic', NULL, '33', '2019-12-24 02:26:46', '2019-12-24 02:26:46', NULL),
(194, '241eed9c-090c-3b89-b40a-977fedc60b9e', 'Ms. Veronica Wolff II', 'male', '2010-10-27', 'Kristen', 'Borerchester', '87866 Casper Trace\nLake Tiffanyfort, NC 05056', '842-912-8571 x436', '0lavon.carter@yahoo.com', NULL, NULL, 'badb2d4f15879f80480c6ec1353a2ed910964acfd5771a42f45718c699f45878', 'Premium', NULL, '25', '2019-12-24 02:26:46', '2019-12-24 02:26:46', NULL),
(195, '6b7c4cc6-35af-35a0-afb5-00928448c5b5', 'Janelle Beatty', 'female', '2001-10-24', 'Konghucu', 'Port Jerelfort', '2794 Loraine Mission Suite 080\nDickinsonborough, NC 11716', '1-489-488-3642 x4141', '869509stefan.hill@hotmail.com', NULL, NULL, '5061ccf3a2992dca35ca4e056f8345f64b02b51a81ed0bf6cf88dcd3f9d88783', 'Premium', NULL, '23', '2019-12-24 02:26:46', '2019-12-24 02:26:46', NULL),
(196, '778e8966-6af8-371c-b282-e7e384d4666b', 'Ms. Tomasa Nolan DDS', 'female', '1986-01-06', 'Islam', 'New Golda', '202 Kacey Drives\nSouth Jazmyne, AR 37659', '(775) 425-7631 x417', '311987jreynolds@gmail.com', NULL, NULL, '05b1aea303ef351bcb5bcfbf66d7ec964623c83594969b89110d08d2c50df028', 'Premium', NULL, '9', '2019-12-24 02:26:46', '2019-12-24 02:26:46', NULL),
(197, '39adc258-e329-32b8-8fae-99ca86118ffc', 'Lacey Bayer', 'female', '2018-08-10', 'Kristen', 'West Danielatown', '508 Dach Port\nPort Bridgetteside, MA 30348', '+1.696.601.7104', '39ideckow@hotmail.com', NULL, NULL, 'b4f02323590cde2f3594cef73a00fe4b2ae09b7e9d2429702c8c4225f4505078', 'Basic', NULL, '3', '2019-12-24 02:26:46', '2019-12-24 02:26:46', NULL),
(198, 'cd053aed-e6ff-382a-82a6-1cbc2a7e84a0', 'Jada Torphy', 'female', '1977-01-10', 'Kristen', 'North Demetrius', '7794 Keeling Place\nLake Abdullahport, CT 42251', '(896) 743-5970 x65692', '543cassin.una@yahoo.com', NULL, NULL, 'ce5746b838e75b6c77de86116b18c9ca0b24735b47d53a99aa35be00ced5b709', 'Premium', NULL, '11', '2019-12-24 02:26:46', '2019-12-24 02:26:46', NULL),
(199, '846c3c65-bf7f-3e20-91ed-409b95baa393', 'Bart Corwin', 'female', '1978-02-19', 'Islam', 'Lake Wilmerborough', '90543 Littel Prairie Apt. 267\nGranvillechester, HI 55753-4958', '253-854-0890', '713454718qblick@yahoo.com', NULL, NULL, 'ea52543f67abddfb1fd0252555e44660cfcd046fc4beb8e8ac74bb804d397b1b', 'Basic', NULL, '5', '2019-12-24 02:26:46', '2019-12-24 02:26:46', NULL),
(200, '76a94de4-ace2-351c-a7aa-0306d56bf760', 'Karson Hill', 'male', '2002-02-14', 'Kristen', 'Simonisburgh', '446 Brain Lakes Apt. 705\nGladycetown, LA 75341-4004', '283.200.2844 x38107', '494090656isobel.kemmer@yahoo.com', NULL, NULL, '44b21e1af99caffdef148bd5d5debc469a83e945b805d8c1a45756258254d836', 'Basic', NULL, '12', '2019-12-24 02:26:46', '2019-12-24 02:26:46', NULL);

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
(1, 3, '77064fd1-b4f4-3a2a-bf3c-628f415d6c1b', 'Prof. Marisa Pacocha', 'Female', '2007-11-17', 'Hindu', 'North Bethborough', '329 Dickinson Lodge\nLeschland, LA 46324', '(790) 790-3357', '3424ward.nelson@hotmail.com', NULL, NULL, '82077e25c3f21bd277eefe39b9039e040b51616e15a52518a73a9631c3d143ce', 1, NULL, '2019-12-24 02:26:18', '2019-12-24 02:26:18', NULL),
(2, 2, '36dd81d2-985c-3a15-939d-58d0bf38d7dd', 'Joanne Gulgowski', 'Female', '1981-08-29', 'Hindu', 'Strosinhaven', '4055 Hyatt Well Apt. 294\nPort Alexandraview, NH 54261', '+1-431-602-9791', '0dino.oreilly@hotmail.com', NULL, NULL, 'e280d164549f51ccaaa29a1fc61c0016cdc551ecdb9169ef5994ef4f20a82bb2', 0, NULL, '2019-12-24 02:26:18', '2019-12-24 02:26:18', NULL),
(3, 1, '4097a0d2-40cd-3a26-b842-c976ccc1934e', 'Sylvia Durgan', 'Female', '1980-07-10', 'Islam', 'South Will', '74846 Tiffany Extensions Apt. 089\r\nNew Demetriusland, GA 43294', '(440) 382-7876 x434', '1dkihn@gmail.com', NULL, NULL, 'f85fe8804f612789bc2b481b6f9beb6235cfc8729fb87408eb7705ea43a6a46e', 0, NULL, '2019-12-24 02:26:18', '2019-12-24 02:49:23', NULL),
(4, 3, 'f6a87d74-d787-3a64-b7b2-2662a70d148e', 'Davon Schulist', 'Female', '1971-02-12', 'Budha', 'Amariland', '7268 Emard Island Suite 888\nSouth Virginiaview, OR 55937-0464', '325.422.0973 x21090', '32207750lwaters@hotmail.com', NULL, NULL, '26b5caf13e1975d3987f1e1bf986581d7458bfcd8c475ae654e467f3af901e1d', 0, NULL, '2019-12-24 02:26:18', '2019-12-24 02:26:18', NULL),
(5, 5, '78b052bc-1eb1-3eae-8f56-712150c084f2', 'Dr. Cedrick Greenfelder', 'Male', '1974-05-21', 'Kristen', 'North Orrin', '703 Boyer Gateway\nLockmanmouth, CT 96384', '(703) 513-8630 x1830', '363020jkilback@hotmail.com', NULL, NULL, '6d50b1eec52f6abc7a57e86e0a643b9915303862335172c08f19a8a6237878ac', 0, NULL, '2019-12-24 02:26:18', '2019-12-24 02:26:18', NULL),
(6, 5, '8f301f02-f3ef-34df-9b76-86b751e21d89', 'Carmel Marquardt', 'Female', '2010-12-27', 'Budha', 'Durganport', '317 Elisa Radial Apt. 079\nLehnermouth, NM 35410-3780', '+1 (917) 632-9359', '7bayer.emie@yahoo.com', NULL, NULL, '33480eaf60185823ae5eca0a68568f93a49de3d654d4947e8416af8c44819a7f', 1, NULL, '2019-12-24 02:26:18', '2019-12-24 02:26:18', NULL),
(7, 2, '557d7814-56d5-3413-9f0a-a67a060b0e67', 'Dr. Selmer Steuber', 'Male', '2015-11-12', 'Budha', 'North Kennedyberg', '3351 Orlo Lodge Apt. 752\nBayleeview, IL 49506-9034', '1-453-512-9229 x7372', '8991098bogisich.alivia@yahoo.com', NULL, NULL, '0c2b68442f44e63f161ed037574820e1c424f2c7b177f6b44a6c58e36621e832', 0, NULL, '2019-12-24 02:26:18', '2019-12-24 02:26:18', NULL),
(8, 3, 'a8bfa3f4-bfef-3d79-b6b7-bb3a9b70aee2', 'Mr. Clint McDermott', 'Male', '2006-07-20', 'Budha', 'Krisville', '98753 Angie Manor Apt. 198\nFilomenaton, NM 54354', '1-235-664-3787 x223', '5zhermann@gmail.com', NULL, NULL, '197bac213d3296b7f470049d581e9e0414812637e066b9efccc0527e882f7dfa', 1, NULL, '2019-12-24 02:26:18', '2019-12-24 02:26:18', NULL),
(9, 5, 'd907908c-eeba-3405-bf2c-5c3e4b26ff31', 'Dr. Hollis Stehr', 'Male', '1976-08-24', 'Konghucu', 'Port Juliana', '172 Dare Shores\nNew Marlen, TN 68108-9509', '+1 (494) 962-3501', '656melyssa72@gmail.com', NULL, NULL, 'e805cf6ab796785b406ed3b948a53ae88d4b06cd4e8668d382416e771bbf994f', 1, NULL, '2019-12-24 02:26:18', '2019-12-24 02:26:18', NULL),
(10, 2, '109e7f85-68ef-3709-87c9-230b1e068fe8', 'Prof. Daryl Torp', 'Male', '1985-03-17', 'Hindu', 'Daphneechester', '492 Kohler Isle\nWest Lue, MA 69937-7576', '719-615-6633 x2978', '93255242yundt.ophelia@hotmail.com', NULL, NULL, 'e26b999397cc5c726c52613c7ff65a8c875cbc96950ebc6adc5017da51c33d15', 0, NULL, '2019-12-24 02:26:18', '2019-12-24 02:26:18', NULL),
(11, 4, '5abc808c-f7e8-38e3-909b-28730d9471ca', 'Lewis Daniel III', 'Male', '1984-07-18', 'Budha', 'Estellefort', '70355 Legros Roads\nLake Laverna, NV 87523', '(816) 516-8992', '49paxton36@hotmail.com', NULL, NULL, 'c862d2c5a75f6bbd9ab2c106af665ffc08f8894cb96b370bb900245a9ca914e1', 1, NULL, '2019-12-24 02:26:18', '2019-12-24 02:26:18', NULL),
(12, 2, '10e0fd03-5225-3883-a44c-eac1fb58f3b8', 'Floy Bahringer', 'Female', '1988-02-27', 'Budha', 'Austynberg', '446 Pascale Loop\nLake Gracie, MO 10291-8302', '1-972-525-5045 x4528', '7131354deron97@gmail.com', NULL, NULL, 'aebb802b8d03906e0fb7b67e64db19c298cff5d92c0b2f02ea6194c0e6d5801b', 1, NULL, '2019-12-24 02:26:18', '2019-12-24 02:26:18', NULL),
(13, 5, '2cdd6720-5258-34b2-9e14-ff2a5f1ee34c', 'Dr. Betty Wolff Sr.', 'Female', '1988-09-22', 'Kristen', 'Emardport', '24209 Stracke Port\nUllrichhaven, OR 16049', '459.343.7017 x687', '85schultz.doris@hotmail.com', NULL, NULL, 'e3e2d3032cbaa13acc3181e0036f957e236f4539613a79c54a2e3dffd88baa65', 0, NULL, '2019-12-24 02:26:18', '2019-12-24 02:26:18', NULL),
(14, 1, '7b67bb63-770a-3a83-9820-050858ea675e', 'Jesse O\'Kon', 'Female', '1995-08-27', 'Islam', 'New Maribel', '476 Reinger Cape\nCronaville, CA 09701-4415', '594.752.7664', '58zachariah.sanford@yahoo.com', NULL, NULL, '7c39c2f6d5dba96c406b04f521facc27e67f806693860130104bb86e854dcb09', 1, NULL, '2019-12-24 02:26:19', '2019-12-24 02:26:19', NULL),
(15, 5, '4ca016a6-f59f-3915-885a-38eb4e1b07c9', 'Dr. Leonard Zieme II', 'Male', '1987-04-30', 'Kristen', 'Cameronburgh', '865 Lauren Creek Suite 977\nSouth Jovan, AK 85293', '+1 (586) 524-8988', '332157655aromaguera@yahoo.com', NULL, NULL, '3ff6c56d48e24c51d6e007c7d48bfc5a2fc9a339d5954a0cfd80e72d81654531', 1, NULL, '2019-12-24 02:26:19', '2019-12-24 02:26:19', NULL),
(16, 5, '6a3c208f-c7a5-3801-998e-9ba5baafb368', 'Keon Fahey Jr.', 'Male', '2012-07-31', 'Budha', 'North Conrad', '636 Melba Glen Suite 587\nWest Jimmie, WA 69476-9777', '401.601.0477 x2560', '3thompson.carli@yahoo.com', NULL, NULL, '6ce3b7a07f0a2a0371c832b50d2ef12ada84d7db79e4c2594d53ffc7be794f33', 0, NULL, '2019-12-24 02:26:19', '2019-12-24 02:26:19', NULL),
(17, 4, 'a5736b85-872e-3678-9218-ff9c42f5b4c0', 'Cathrine Hauck', 'Female', '1991-08-18', 'Islam', 'South Chadrickbury', '8447 DuBuque Rapid\nNew Josieport, AZ 73511-1042', '226.279.5552 x6965', '7una59@hotmail.com', NULL, NULL, '66a70a9f714e3694298ed1ca97f60980a4be3724fc4b35c26caa17cfd34b8b40', 0, NULL, '2019-12-24 02:26:19', '2019-12-24 02:26:19', NULL),
(18, 2, '1b747cb6-92ac-3686-b57f-d963428f79aa', 'Jeanie Sporer', 'Male', '2010-09-19', 'Budha', 'Berniceview', '81003 Adams Corner\nLuigichester, OR 78335-2126', '(536) 286-1921', '57339hardy89@hotmail.com', NULL, NULL, '09d83b2f68a2fe872d8d0c8c8b897b65d20ac59e96b39be28346b09edbefe32a', 0, NULL, '2019-12-24 02:26:19', '2019-12-24 02:26:19', NULL),
(19, 3, 'f4d6a5d3-9b71-3596-b42e-997f22010df3', 'Bert Marquardt', 'Male', '2001-02-09', 'Islam', 'North Lamar', '6359 Jaiden Brook Apt. 577\nLake Giuseppefort, NJ 61661-5977', '504.569.6768 x9055', '90sporer.cloyd@hotmail.com', NULL, NULL, '4b7252040ca7f7058d6c44713b2a5140f7b36c2343c8b6ac2eb5f652e38677f8', 1, NULL, '2019-12-24 02:26:19', '2019-12-24 02:26:19', NULL),
(20, 2, 'c6ad0fe0-88b3-3174-a440-545989bf5032', 'Mafalda Boehm', 'Male', '1999-03-11', 'Budha', 'Gretchenborough', '3666 Schuster Mount\nBeahanside, MO 96274', '379.462.2230 x1112', '5780devonte.howe@gmail.com', NULL, NULL, '66bcb2f4ab35a8f4207ce0caa539673d5985c2a44d5ccb658da8742cffa474c9', 0, NULL, '2019-12-24 02:26:19', '2019-12-24 02:26:19', NULL),
(21, 8, '1395d2ba-1f9a-3ca0-b204-3005ec9aecf9', 'Mr. Keyshawn Dare', 'Male', '2011-08-10', 'Hindu', 'West Imogenefort', '53440 Lemke Forest Apt. 054\nSchinnerburgh, ME 88712-3244', '+12602389524', '813abel94@gmail.com', NULL, NULL, '8fa5df264bba3768b452b2373b35a8bb66fd303ae5d0230bb9c9142b52229aaf', 0, NULL, '2019-12-24 02:26:38', '2019-12-24 02:26:38', NULL),
(22, 9, '3737db99-6606-35b1-bf5b-856568f98113', 'Aliza Abbott', 'Male', '1983-11-09', 'Konghucu', 'Kasandraview', '7968 Demetrius Lights\nNorth Jordan, MI 71481-2290', '+1-528-602-2827', '19dkertzmann@hotmail.com', NULL, NULL, '69444c4412b1a72a1466a13d5e5ed335da35cf72fd9a59d59fae84c15ec89be1', 0, NULL, '2019-12-24 02:26:38', '2019-12-24 02:26:38', NULL),
(23, 10, '9058df73-f4bf-33ee-9360-704ed95eb470', 'Prof. Cole Bradtke Sr.', 'Female', '2014-11-13', 'Budha', 'South Nakiaport', '857 Dicki Way Suite 208\nReubenshire, LA 14919-9042', '532.766.4940', '6609077cwintheiser@gmail.com', NULL, NULL, '578f0ac2f6c84f10911d614b8701d09a7899a6b1e39f29f273143d92903266ec', 1, NULL, '2019-12-24 02:26:38', '2019-12-24 02:26:38', NULL),
(24, 5, 'd70fa80e-b077-3bda-b48d-3098520f0761', 'Mr. Brook Bernier I', 'Male', '2012-04-23', 'Islam', 'Port Tressaport', '20232 Ellis Port\nNorth Giles, NJ 21282-2475', '880.256.9142', '8195josefa67@yahoo.com', NULL, NULL, '9df894c78da026f2ae59c18729282076100ab48a30d66e41a74cad066b7ed8da', 1, NULL, '2019-12-24 02:26:38', '2019-12-24 02:26:38', NULL),
(25, 2, '7d6e4788-d1d2-34db-8f11-434f22c75dc6', 'Raul Beier DDS', 'Male', '1994-11-09', 'Konghucu', 'Parisianview', '92280 Kailee Key Suite 721\nSouth Ervin, ID 95147-1472', '203.854.4543', '6039546hcronin@hotmail.com', NULL, NULL, 'ca97aab5be5896705140b1a80470213e1f9dc3bcd77ae21bfb975da04f2ff702', 0, NULL, '2019-12-24 02:26:38', '2019-12-24 02:26:38', NULL),
(26, 1, 'e2abc041-1714-3c68-b327-f494f2be77ef', 'Troy Kunde', 'Male', '1999-03-29', 'Islam', 'Dereckberg', '6846 Amber Plains\nEast Nickolaston, NM 87892-3916', '+1 (926) 889-8202', '83ramon53@yahoo.com', NULL, NULL, '7b5ccb2c51212b396eee3e576dc328d4145c562787bdb7572fb8fda8ea614d5f', 1, NULL, '2019-12-24 02:26:39', '2019-12-24 02:26:39', NULL),
(27, 1, '478a0bd9-6977-3135-b1b9-e0919f7b46fd', 'Dr. Damien Jakubowski IV', 'Female', '1991-10-02', 'Konghucu', 'Terrillview', '209 Darrell Drive Suite 280\nPort Amaliaside, WV 78628-6559', '413.715.4923 x538', '14789cristal.mclaughlin@hotmail.com', NULL, NULL, 'e5db8c9448f1a662da3bfcbc4acf415b088946c1a7ca3e2507f55eaa0b9e9783', 1, NULL, '2019-12-24 02:26:39', '2019-12-24 02:26:39', NULL),
(28, 1, '1cae48a7-ff66-3622-8e56-74861a68e8d3', 'Gladys Toy', 'Female', '1979-01-27', 'Kristen', 'North Jaidenland', '825 Marvin Harbors\nPort Randall, LA 13487-7153', '(435) 859-0722', '1147susie.dibbert@gmail.com', NULL, NULL, 'b5244a6db99a135315b770aa86991a34a84ab5b3dafdbc17bf4d3b0976e9a2ff', 1, NULL, '2019-12-24 02:26:39', '2019-12-24 02:26:39', NULL),
(29, 3, '883bb602-4e0b-36f2-b4ec-eeb56f127448', 'Dr. Mikel Quitzon IV', 'Female', '1975-05-20', 'Budha', 'Oswaldstad', '178 Doyle Cove\nDelilahbury, MT 02662', '+19295831987', '897345797kianna.koelpin@yahoo.com', NULL, NULL, 'bbb9e43a597bcb185ed57fc7a53890da5986ddbaabc78eee6256fa25457655e7', 0, NULL, '2019-12-24 02:26:39', '2019-12-24 02:26:39', NULL),
(30, 8, '8983230a-a032-39d1-984e-d483dab03393', 'Lucie Barton IV', 'Female', '1984-01-12', 'Hindu', 'Kshlerinville', '547 Carolina View Apt. 938\nWest Adelle, ID 97125-1528', '468-261-3364', '85shanny.marquardt@hotmail.com', NULL, NULL, 'c9d27859d5e9ad0ce5f39a6cd832790281f37e8d636244900fb49b8e1992bfe0', 1, NULL, '2019-12-24 02:26:39', '2019-12-24 02:26:39', NULL),
(31, 6, '7c68cf29-a8db-3529-8812-ba5d5f7bf049', 'Jerome Sauer', 'Male', '1985-05-28', 'Hindu', 'Cronaport', '230 Abernathy Corners Suite 398\nJaquelinchester, KY 25115-9048', '+1-674-436-6047', '49373america.kautzer@gmail.com', NULL, NULL, '1fb41c38625ccce3a1c16b6e9f54bfd252ecee4ac67ffe9b23a59f2231e2985f', 0, NULL, '2019-12-24 02:26:39', '2019-12-24 02:26:39', NULL),
(32, 10, 'dd1f2df9-7497-356b-ab08-77f3ee058589', 'Abelardo Casper', 'Female', '2008-05-08', 'Islam', 'Aronberg', '213 Angus Row\nEthanhaven, FL 85328-7728', '+1-896-448-5333', '567273spencer.tara@yahoo.com', NULL, NULL, '4b7a28035bc14a3b21cfefeddb02442240d0a81ebe69320367428b2919e9f7e0', 1, NULL, '2019-12-24 02:26:39', '2019-12-24 02:26:39', NULL),
(33, 1, 'f2aa514a-ae3d-3ac7-9833-64745471a64c', 'Felipe Schuster', 'Female', '1988-05-31', 'Hindu', 'Janisberg', '539 Cassin Mountain Suite 745\nNorth Lily, NM 18353-4432', '361.603.2176 x2211', '5673726bailey.sandrine@yahoo.com', NULL, NULL, '5aaabcbb1b65210e487d490ceccee79052153905bc5f33edd9e8facbd0691f0e', 0, NULL, '2019-12-24 02:26:39', '2019-12-24 02:26:39', NULL),
(34, 8, 'd4a91177-77f2-3e8c-accf-870a37e8b1ac', 'Mrs. Kylie Leuschke DVM', 'Male', '1983-10-09', 'Islam', 'Port Mavisview', '863 Tremaine Wells\nPort Olgamouth, OR 69557-9436', '943.566.5815 x3457', '8399421alexandrea.wiegand@yahoo.com', NULL, NULL, 'e02bee07ffc300a41559b386dcadb732d9b067baa48fab5da0c1e918240aa0ac', 1, NULL, '2019-12-24 02:26:39', '2019-12-24 02:26:39', NULL),
(35, 1, '1b138ca8-f06c-3197-b04d-de512f97cccd', 'Corine Treutel', 'Male', '1983-01-08', 'Islam', 'Emardland', '683 Hammes Station Suite 314\nSouth Sonia, IN 45178-2490', '1-750-235-6334 x5150', '925513296guadalupe.hilpert@hotmail.com', NULL, NULL, '0be0fa86a38e6cdf17aec9c4fa059bcf12a146dc7c708e4b097f9f2403241fa0', 1, NULL, '2019-12-24 02:26:39', '2019-12-24 02:26:39', NULL),
(36, 3, 'e68dbd59-edfd-3cd1-aa5f-a7049f43002f', 'Maya Schoen', 'Female', '1993-08-07', 'Islam', 'Ignacioton', '9559 Molly Lakes\nMosciskiland, DC 78098', '809-533-0465 x40948', '89plangosh@hotmail.com', NULL, NULL, 'f0d760a1eb870143ce5cd79e50ed0ed722c2f5df8bc1f7a7724d2bec2efa6d9e', 1, NULL, '2019-12-24 02:26:39', '2019-12-24 02:26:39', NULL),
(37, 5, '65b219fb-4b20-3e3f-8bf2-2b0a839f5b2a', 'Odessa Lemke', 'Male', '1999-07-27', 'Islam', 'Reingertown', '4286 Oberbrunner Isle\nMattiemouth, NM 41807', '+1-982-247-8813', '701udach@yahoo.com', NULL, NULL, '1359c66de2d41537b75a5a44e01e97a4ddb5e01c40a4b9114d21f54838b76579', 1, NULL, '2019-12-24 02:26:39', '2019-12-24 02:26:39', NULL),
(38, 7, 'fc57d4ca-f637-3196-9e76-77c2581481bf', 'Briana Kshlerin', 'Male', '1972-08-19', 'Kristen', 'North Marjoryport', '833 Morar Greens\nEarleneton, MO 15218-7210', '+14373728046', '82cristal.berge@yahoo.com', NULL, NULL, 'a2e3445cbb7237ee51710065cd2d7b9d032a2cbcde610b3c59a3b15e2d54504c', 1, NULL, '2019-12-24 02:26:39', '2019-12-24 02:26:39', NULL),
(39, 4, '888fe1da-d927-314a-ade7-49d5ab2a246e', 'Astrid Hodkiewicz', 'Male', '1994-02-24', 'Hindu', 'Verlieside', '94531 Ilene Island\nWest Alexandrea, ND 70839-7631', '1-329-448-9480 x0514', '342254664mraz.crystel@hotmail.com', NULL, NULL, '54a56bcfdc660d489b3ad786cd270a980ed9f25e1aa7213e4a6aff067922eda8', 0, NULL, '2019-12-24 02:26:39', '2019-12-24 02:26:39', NULL),
(40, 8, 'b62819b3-731d-3fbb-a738-824e415c98ec', 'Prof. Gardner Koss', 'Female', '1981-10-05', 'Budha', 'Demondton', '372 Ward Falls\nPatiencestad, OH 96954', '(935) 818-1454 x21160', '7826jaeden.barrows@yahoo.com', NULL, NULL, '20eee8e92cbbe9e13da6006b47c708e750a76755cff63f1d36831b7022e60407', 0, NULL, '2019-12-24 02:26:39', '2019-12-24 02:26:39', NULL);

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
(2, 2, 2),
(3, 3, 2),
(4, 3, 2),
(5, 4, 1),
(6, 5, 1),
(7, 5, 2),
(8, 6, 2),
(9, 6, 1),
(10, 7, 1),
(11, 7, 2),
(12, 8, 1),
(13, 9, 2),
(14, 10, 2),
(15, 10, 1),
(16, 11, 1),
(17, 12, 2),
(18, 13, 2),
(19, 13, 1),
(20, 14, 1),
(21, 15, 1),
(22, 15, 2),
(23, 16, 1),
(24, 16, 2),
(25, 17, 2),
(26, 18, 1),
(27, 18, 2),
(28, 19, 1),
(29, 20, 2);

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
(1, 2, 'unde', '984615.00', '997872.00', 4, '0.28', 'Dolorem cumque ut hic aut culpa amet.', '20', '2019-12-24 02:26:30', '2019-12-24 02:27:56', NULL),
(2, 1, 'molestiae', '288446.00', '545230.00', 0, '0.55', 'Voluptatum laudantium aperiam in accusantium.', '5', '2019-12-24 02:26:31', '2019-12-24 02:26:31', NULL),
(3, 2, 'ut', '109534.00', '887778.00', 0, '0.00', 'Amet sit rerum est.', '8', '2019-12-24 02:26:31', '2019-12-24 02:27:59', NULL),
(4, 1, 'corporis', '168766.00', '846014.00', 0, '1.00', 'Blanditiis qui sapiente amet sint.', '15', '2019-12-24 02:26:32', '2019-12-24 02:27:29', NULL),
(5, 1, 'cumque', '882265.00', '947103.00', 19, '0.00', 'Dicta quis autem neque et et.', '9', '2019-12-24 02:26:32', '2019-12-24 02:27:22', NULL),
(6, 1, 'culpa', '566055.00', '707624.00', 0, '0.31', 'Consequatur et sunt vel qui distinctio.', '2', '2019-12-24 02:26:32', '2019-12-24 02:27:24', NULL),
(7, 2, 'architecto', '373173.00', '868367.00', 0, '0.00', 'Ex voluptate tempore incidunt eum consequatur.', '1', '2019-12-24 02:26:32', '2019-12-24 02:27:45', NULL),
(8, 1, 'provident', '174242.00', '900317.00', 0, '0.00', 'Dignissimos repellat temporibus voluptatem optio.', '18', '2019-12-24 02:26:32', '2019-12-24 02:27:59', NULL),
(9, 1, 'corporis', '854119.00', '943634.00', 4, '0.00', 'Sed ad minus tempora doloribus a accusamus.', '17', '2019-12-24 02:26:32', '2019-12-24 02:28:03', NULL),
(10, 2, 'iusto', '656735.00', '854696.00', 0, '0.00', 'Voluptatibus rerum quos vitae harum quia.', '1', '2019-12-24 02:26:32', '2019-12-24 02:27:36', NULL),
(11, 1, 'ut', '347458.00', '808880.00', 28, '0.91', 'Qui incidunt veritatis mollitia et.', '9', '2019-12-24 02:26:32', '2019-12-24 02:27:52', NULL),
(12, 1, 'quasi', '280511.00', '556434.00', 76, '0.20', 'Ut praesentium et reprehenderit veniam.', '1', '2019-12-24 02:26:33', '2019-12-24 02:26:33', NULL),
(13, 1, 'voluptatem', '545890.00', '979416.00', 0, '0.00', 'Ut iure aut sit est dolores at.', '7', '2019-12-24 02:26:33', '2019-12-24 02:27:36', NULL),
(14, 2, 'molestiae', '304591.00', '498348.00', 5, '0.51', 'Ab repellat sequi fugiat quas.', '13', '2019-12-24 02:26:33', '2019-12-24 02:27:26', NULL),
(15, 2, 'accusantium', '101706.00', '940333.00', 1, '0.01', 'Dolor enim odio culpa excepturi non.', '16', '2019-12-24 02:26:33', '2019-12-24 08:51:43', NULL),
(16, 1, 'vitae', '100000.00', '30000.00', 20, '0.00', 'Officiis odio impedit est est voluptatem.', '35', '2019-12-24 02:26:33', '2019-12-24 04:16:55', NULL),
(17, 1, 'et', '222309.00', '507534.00', 0, '0.00', 'Eveniet aut suscipit enim est quia.', '5', '2019-12-24 02:26:33', '2019-12-24 02:27:35', NULL),
(18, 1, 'molestiae', '900170.00', '979165.00', 6, '0.00', 'Praesentium ex distinctio aut eum quia cum.', '4', '2019-12-24 02:26:33', '2019-12-24 02:27:59', NULL),
(19, 1, 'ad', '360110.00', '657269.00', 67, '0.67', 'Fugiat officiis quia aut exercitationem.', '15', '2019-12-24 02:26:33', '2019-12-24 02:28:01', NULL),
(20, 1, 'qui', '608908.00', '694764.00', 18, '0.57', 'Velit eaque perferendis delectus natus sed et.', '20', '2019-12-24 02:26:33', '2019-12-24 02:28:01', NULL),
(21, 1, 'praesentium', '736344.00', '774960.00', 17, '0.00', 'Veniam consectetur facilis optio tempora.', '15', '2019-12-24 02:26:33', '2019-12-24 02:27:36', NULL),
(22, 1, 'labore', '581576.00', '595480.00', 38, '0.81', 'Eos dolore et ratione officia modi.', '2', '2019-12-24 02:26:34', '2019-12-24 02:27:16', NULL),
(23, 2, 'similique', '981539.00', '989743.00', 49, '0.69', 'Ratione corrupti qui est rerum dolores.', '2', '2019-12-24 02:26:34', '2019-12-24 02:27:56', NULL),
(24, 2, 'saepe', '809915.00', '869852.00', 26, '0.78', 'Et est quia consequuntur.', '9', '2019-12-24 02:26:34', '2019-12-24 02:27:27', NULL),
(25, 2, 'eum', '295811.00', '354408.00', 39, '0.00', 'Suscipit mollitia repellat vel quo.', '19', '2019-12-24 02:26:34', '2019-12-24 02:27:58', NULL),
(26, 2, 'et', '845886.00', '992930.00', 0, '0.00', 'Eaque sequi in itaque quo.', '5', '2019-12-24 02:26:34', '2019-12-24 02:27:07', NULL),
(27, 1, 'officia', '470612.00', '735610.00', 10, '0.00', 'Sed dolore vel voluptatem.', '3', '2019-12-24 02:26:34', '2019-12-24 02:28:01', NULL),
(28, 1, 'cum', '84313.00', '118234.00', 20, '0.00', 'Consequatur id et illum voluptate.', '16', '2019-12-24 02:26:34', '2019-12-24 02:27:33', NULL),
(29, 2, 'aliquid', '81164.00', '695654.00', 1, '0.00', 'Ut ipsam totam eius ut impedit.', '14', '2019-12-24 02:26:34', '2019-12-24 02:27:48', NULL),
(30, 1, 'occaecati', '928043.00', '946538.00', 1, '0.00', 'Reiciendis nihil voluptatibus eligendi.', '9', '2019-12-24 02:26:34', '2019-12-24 02:28:02', NULL),
(31, 2, 'ut', '383106.00', '556363.00', 11, '0.00', 'Vel facere voluptates non reprehenderit.', '17', '2019-12-24 02:26:34', '2019-12-24 02:28:02', NULL),
(32, 1, 'eum', '346474.00', '407679.00', 30, '0.00', 'Et esse cumque neque omnis autem est voluptas.', '15', '2019-12-24 02:26:34', '2019-12-24 02:27:37', NULL),
(33, 2, 'est', '431221.00', '736787.00', 0, '0.00', 'Soluta eos hic esse minus porro.', '14', '2019-12-24 02:26:35', '2019-12-24 02:28:03', NULL),
(34, 2, 'quidem', '277158.00', '401950.00', 3, '0.47', 'Inventore quia ea corrupti qui.', '11', '2019-12-24 02:26:35', '2019-12-24 02:27:47', NULL),
(35, 2, 'impedit', '595986.00', '897066.00', 0, '0.00', 'Nemo aut voluptates reiciendis atque optio.', '13', '2019-12-24 02:26:35', '2019-12-24 02:27:49', NULL),
(36, 2, 'et', '872458.00', '874330.00', 0, '0.00', 'Quisquam ut rem commodi optio quae velit.', '12', '2019-12-24 02:26:35', '2019-12-24 02:27:50', NULL),
(37, 1, 'aut', '263818.00', '819996.00', 0, '0.00', 'Ut aut molestiae minus. Beatae qui vel esse.', '11', '2019-12-24 02:26:35', '2019-12-24 02:27:44', NULL),
(38, 2, 'rerum', '996216.00', '998379.00', 46, '0.00', 'Quod ut magnam porro tempore.', '2', '2019-12-24 02:26:35', '2019-12-24 02:27:35', NULL),
(39, 1, 'ipsa', '628180.00', '884036.00', 2, '0.00', 'Laboriosam aut eveniet est porro consequatur qui.', '9', '2019-12-24 02:26:35', '2019-12-24 02:27:39', NULL),
(40, 1, 'culpa', '487359.00', '754111.00', 16, '0.00', 'Doloremque aut ut odit est magnam.', '18', '2019-12-24 02:26:35', '2019-12-24 02:28:00', NULL),
(41, 1, 'occaecati', '246965.00', '745241.00', 0, '0.00', 'Numquam qui eum non iure ut provident.', '16', '2019-12-24 02:26:35', '2019-12-24 02:27:50', NULL),
(42, 1, 'neque', '688397.00', '726311.00', 0, '0.79', 'Exercitationem ea autem repellendus vel.', '11', '2019-12-24 02:26:35', '2019-12-24 02:27:30', NULL),
(43, 1, 'voluptas', '386164.00', '707884.00', 15, '0.66', 'Est quia quae rerum quis.', '3', '2019-12-24 02:26:36', '2019-12-24 02:28:03', NULL),
(44, 1, 'maxime', '220561.00', '936914.00', 2, '1.00', 'Odit sapiente et qui dolorum impedit aperiam.', '13', '2019-12-24 02:26:36', '2019-12-24 02:28:00', NULL),
(45, 1, 'distinctio', '518862.00', '724090.00', 0, '0.00', 'Qui quam et maiores ipsum veritatis error velit.', '17', '2019-12-24 02:26:36', '2019-12-24 02:27:45', NULL),
(46, 2, 'ut', '217013.00', '701613.00', 3, '0.00', 'Blanditiis quis cum et dignissimos accusamus.', '9', '2019-12-24 02:26:36', '2019-12-24 02:27:59', NULL),
(47, 2, 'quos', '265073.00', '893030.00', 2, '1.00', 'Consequatur illum non omnis id.', '18', '2019-12-24 02:26:36', '2019-12-24 02:27:43', NULL),
(48, 1, 'libero', '992523.00', '993215.00', 0, '0.51', 'Eum illo non excepturi vitae quas quo.', '20', '2019-12-24 02:26:36', '2019-12-24 02:27:51', NULL),
(49, 1, 'ut', '657660.00', '767252.00', 2, '0.00', 'Nam ad ab quibusdam aspernatur dolore.', '3', '2019-12-24 02:26:36', '2019-12-24 02:27:39', NULL),
(50, 2, 'iste', '400564.00', '707174.00', 13, '0.65', 'In quo aliquam libero labore provident.', '17', '2019-12-24 02:26:36', '2019-12-24 02:27:56', NULL),
(51, 4, 'laborum', '900486.00', '930985.00', 0, '0.00', 'Sunt in et qui quas et.', '2', '2019-12-24 02:26:46', '2019-12-24 02:27:46', NULL),
(52, 4, 'autem', '640108.00', '871395.00', 4, '0.34', 'Tempore officia consectetur eum.', '13', '2019-12-24 02:26:47', '2019-12-24 02:27:50', NULL),
(53, 4, 'quia', '262407.00', '771238.00', 0, '0.19', 'Reiciendis facere in sint qui qui quisquam.', '35', '2019-12-24 02:26:47', '2019-12-24 02:27:18', NULL),
(54, 4, 'et', '161750.00', '316295.00', 6, '0.00', 'Magnam molestiae ipsum aut consequatur.', '9', '2019-12-24 02:26:47', '2019-12-24 02:28:01', NULL),
(55, 2, 'eius', '909288.00', '974081.00', 5, '0.90', 'Repellat explicabo pariatur dolores.', '29', '2019-12-24 02:26:47', '2019-12-24 02:27:58', NULL),
(56, 2, 'in', '329290.00', '637209.00', 0, '0.23', 'Aut saepe possimus est eum excepturi.', '36', '2019-12-24 02:26:47', '2019-12-24 02:27:46', NULL),
(57, 3, 'sint', '174290.00', '508327.00', 14, '0.00', 'Facilis qui expedita velit blanditiis rerum.', '21', '2019-12-24 02:26:47', '2019-12-24 02:27:47', NULL),
(58, 1, 'quibusdam', '909219.00', '942522.00', 3, '0.00', 'Omnis voluptatum quaerat deleniti tempore culpa.', '28', '2019-12-24 02:26:47', '2019-12-24 02:27:56', NULL),
(59, 4, 'eius', '717497.00', '738069.00', 2, '0.00', 'Totam accusantium sit consequatur.', '9', '2019-12-24 02:26:48', '2019-12-24 02:28:00', NULL),
(60, 1, 'atque', '177318.00', '862299.00', 21, '0.00', 'Numquam expedita qui sint consectetur cupiditate.', '18', '2019-12-24 02:26:48', '2019-12-24 02:27:52', NULL),
(61, 2, 'dolore', '769729.00', '935235.00', 10, '0.00', 'Quas maiores saepe eos.', '19', '2019-12-24 02:26:48', '2019-12-24 02:27:56', NULL),
(62, 4, 'repellendus', '84685.00', '505284.00', 39, '0.05', 'Explicabo rerum tempore sed distinctio.', '16', '2019-12-24 02:26:48', '2019-12-24 08:51:22', NULL),
(63, 1, 'corporis', '860535.00', '958245.00', 0, '0.00', 'Quis et et odio non explicabo laboriosam.', '38', '2019-12-24 02:26:48', '2019-12-24 02:27:40', NULL),
(64, 3, 'facere', '878045.00', '914956.00', 0, '0.07', 'Quos eum consequuntur doloribus ut.', '1', '2019-12-24 02:26:48', '2019-12-24 02:27:20', NULL),
(65, 4, 'sequi', '393857.00', '910691.00', 32, '0.00', 'Dolor est itaque beatae.', '37', '2019-12-24 02:26:48', '2019-12-24 02:27:56', NULL),
(66, 4, 'laboriosam', '689629.00', '774183.00', 40, '0.00', 'Id asperiores ut magnam dolores earum.', '18', '2019-12-24 02:26:48', '2019-12-24 02:27:52', NULL),
(67, 2, 'et', '932356.00', '948673.00', 0, '0.00', 'Corrupti quam commodi aut omnis et unde.', '37', '2019-12-24 02:26:49', '2019-12-24 02:27:12', NULL),
(68, 1, 'fugit', '278282.00', '299991.00', 1, '0.00', 'Explicabo quia eos aut quas.', '6', '2019-12-24 02:26:49', '2019-12-24 02:27:23', NULL),
(69, 3, 'voluptas', '539977.00', '701433.00', 80, '0.00', 'Asperiores et iusto pariatur et blanditiis.', '29', '2019-12-24 02:26:49', '2019-12-24 02:26:54', NULL),
(70, 1, 'ea', '726789.00', '911166.00', 6, '0.43', 'Libero dolores corrupti illo rerum.', '12', '2019-12-24 02:26:49', '2019-12-24 02:27:37', NULL),
(71, 2, 'quia', '411627.00', '818407.00', 18, '0.00', 'Expedita quis quisquam ullam impedit.', '16', '2019-12-24 02:26:49', '2019-12-24 02:27:15', NULL),
(72, 4, 'quas', '847640.00', '914537.00', 7, '0.00', 'Cupiditate culpa et reiciendis.', '36', '2019-12-24 02:26:49', '2019-12-24 02:27:49', NULL),
(73, 4, 'ut', '365163.00', '524774.00', 1, '0.00', 'Suscipit sit sunt quasi dicta voluptatem.', '2', '2019-12-24 02:26:49', '2019-12-24 02:27:44', NULL),
(74, 3, 'reprehenderit', '858456.00', '973050.00', 7, '0.00', 'Odio est numquam nesciunt fuga.', '19', '2019-12-24 02:26:49', '2019-12-24 02:27:58', NULL),
(75, 2, 'ratione', '345739.00', '731449.00', 0, '0.00', 'Assumenda qui et mollitia nihil enim sunt.', '17', '2019-12-24 02:26:49', '2019-12-24 02:27:13', NULL),
(76, 3, 'eos', '42682.00', '622595.00', 0, '1.00', 'Dolor ut nobis quidem et quis.', '31', '2019-12-24 02:26:50', '2019-12-24 02:27:17', NULL),
(77, 4, 'omnis', '462671.00', '771303.00', 11, '0.76', 'Et modi dolorem aperiam excepturi.', '37', '2019-12-24 02:26:50', '2019-12-24 02:27:58', NULL),
(78, 1, 'fugiat', '23198.00', '235622.00', 0, '0.00', 'Dolore ad aut quam. Quidem sint deleniti debitis.', '17', '2019-12-24 02:26:50', '2019-12-24 02:26:50', NULL),
(79, 1, 'vitae', '238512.00', '755284.00', 29, '0.00', 'Sit voluptas ut sit repellat.', '20', '2019-12-24 02:26:50', '2019-12-24 02:27:43', NULL),
(80, 2, 'sunt', '102594.00', '867616.00', 3, '0.00', 'Iusto doloremque aut expedita voluptate illum a.', '21', '2019-12-24 02:26:50', '2019-12-24 02:27:53', NULL),
(81, 3, 'sint', '918726.00', '931428.00', 0, '0.01', 'Molestiae ipsa totam tempore occaecati.', '37', '2019-12-24 02:26:50', '2019-12-24 02:27:46', NULL),
(82, 3, 'cumque', '522988.00', '845557.00', 2, '0.10', 'Et eius ipsa velit minus non.', '22', '2019-12-24 02:26:50', '2019-12-24 02:28:01', NULL),
(83, 2, 'rerum', '625057.00', '936024.00', 18, '0.00', 'Sed et dolorem et sequi omnis.', '27', '2019-12-24 02:26:51', '2019-12-24 02:27:51', NULL),
(84, 2, 'quaerat', '69456.00', '527102.00', 24, '0.10', 'Accusantium id voluptatem id vel et.', '16', '2019-12-24 02:26:51', '2019-12-24 08:50:53', NULL),
(85, 3, 'labore', '896563.00', '991002.00', 60, '0.00', 'In optio doloremque qui id corrupti.', '14', '2019-12-24 02:26:51', '2019-12-24 02:28:03', NULL),
(86, 1, 'sit', '458367.00', '949690.00', 8, '0.00', 'Nihil et sit minus.', '12', '2019-12-24 02:26:51', '2019-12-24 02:28:03', NULL),
(87, 3, 'error', '750241.00', '919543.00', 2, '0.00', 'Ipsa similique sequi dolor eaque.', '9', '2019-12-24 02:26:51', '2019-12-24 02:28:03', NULL),
(88, 1, 'autem', '999945.00', '999995.00', 17, '0.08', 'Pariatur laudantium eos qui minima.', '38', '2019-12-24 02:26:51', '2019-12-24 02:28:01', NULL),
(89, 3, 'corrupti', '927031.00', '945351.00', 12, '0.15', 'Est voluptates dolor nihil unde pariatur.', '19', '2019-12-24 02:26:51', '2019-12-24 02:27:56', NULL),
(90, 3, 'nisi', '533903.00', '672645.00', 38, '0.08', 'Aut autem omnis alias voluptatem.', '36', '2019-12-24 02:26:51', '2019-12-24 02:27:59', NULL),
(91, 1, 'placeat', '821076.00', '923747.00', 0, '0.56', 'Animi iure id eius repellat minima sit.', '40', '2019-12-24 02:26:51', '2019-12-24 02:28:02', NULL),
(92, 1, 'laudantium', '982905.00', '993896.00', 17, '0.00', 'Excepturi dolorem culpa ut rerum totam molestiae.', '4', '2019-12-24 02:26:52', '2019-12-24 02:27:34', NULL),
(93, 2, 'sed', '440426.00', '956293.00', 0, '0.00', 'Maiores voluptate aut eveniet eveniet.', '35', '2019-12-24 02:26:52', '2019-12-24 02:27:26', NULL),
(94, 4, 'aut', '445397.00', '707662.00', 0, '0.55', 'Sapiente voluptatem dolorem et minus natus.', '14', '2019-12-24 02:26:52', '2019-12-24 02:27:21', NULL),
(95, 1, 'qui', '536996.00', '825724.00', 21, '0.58', 'Deleniti a in odio laborum.', '18', '2019-12-24 02:26:52', '2019-12-24 02:27:49', NULL),
(96, 3, 'et', '352857.00', '957001.00', 0, '0.00', 'Sed dolorum ab iste ab nulla quis.', '2', '2019-12-24 02:26:52', '2019-12-24 02:27:45', NULL),
(97, 2, 'voluptatem', '430839.00', '731380.00', 2, '0.00', 'Dolores enim ipsum quia. Sunt id ex rerum atque.', '25', '2019-12-24 02:26:52', '2019-12-24 02:27:42', NULL),
(98, 1, 'ut', '750345.00', '858141.00', 1, '0.00', 'Tempora quasi eos et.', '1', '2019-12-24 02:26:52', '2019-12-24 02:27:47', NULL),
(99, 2, 'earum', '725172.00', '758611.00', 4, '0.12', 'Similique at sit nesciunt ut rem et dicta.', '19', '2019-12-24 02:26:52', '2019-12-24 02:27:45', NULL),
(100, 4, 'eaque', '695238.00', '828337.00', 0, '0.00', 'Fugit quaerat velit delectus velit enim nobis.', '27', '2019-12-24 02:26:53', '2019-12-24 02:27:51', NULL);

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
(1, 1, '984615.00', '997872.00', 36, '0.28', '20', '2019-12-24 02:26:30', '2019-12-24 02:26:30', NULL),
(2, 2, '288446.00', '545230.00', 0, '0.55', '5', '2019-12-24 02:26:31', '2019-12-24 02:26:31', NULL),
(3, 3, '109534.00', '887778.00', 95, '0.00', '8', '2019-12-24 02:26:31', '2019-12-24 02:26:31', NULL),
(4, 4, '168766.00', '846014.00', 66, '1.00', '15', '2019-12-24 02:26:32', '2019-12-24 02:26:32', NULL),
(5, 5, '882265.00', '947103.00', 21, '0.00', '9', '2019-12-24 02:26:32', '2019-12-24 02:26:32', NULL),
(6, 6, '566055.00', '707624.00', 12, '0.31', '2', '2019-12-24 02:26:32', '2019-12-24 02:26:32', NULL),
(7, 7, '373173.00', '868367.00', 87, '0.00', '1', '2019-12-24 02:26:32', '2019-12-24 02:26:32', NULL),
(8, 8, '174242.00', '900317.00', 9, '0.00', '18', '2019-12-24 02:26:32', '2019-12-24 02:26:32', NULL),
(9, 9, '854119.00', '943634.00', 17, '0.00', '17', '2019-12-24 02:26:32', '2019-12-24 02:26:32', NULL),
(10, 10, '656735.00', '854696.00', 81, '0.00', '1', '2019-12-24 02:26:32', '2019-12-24 02:26:32', NULL),
(11, 11, '347458.00', '808880.00', 38, '0.91', '9', '2019-12-24 02:26:33', '2019-12-24 02:26:33', NULL),
(12, 12, '280511.00', '556434.00', 76, '0.20', '1', '2019-12-24 02:26:33', '2019-12-24 02:26:33', NULL),
(13, 13, '545890.00', '979416.00', 15, '0.00', '7', '2019-12-24 02:26:33', '2019-12-24 02:26:33', NULL),
(14, 14, '304591.00', '498348.00', 13, '0.51', '13', '2019-12-24 02:26:33', '2019-12-24 02:26:33', NULL),
(15, 15, '101706.00', '940333.00', 69, '0.01', '5', '2019-12-24 02:26:33', '2019-12-24 02:26:33', NULL),
(16, 16, '739868.00', '841579.00', 78, '0.02', '3', '2019-12-24 02:26:33', '2019-12-24 02:26:33', NULL),
(17, 17, '222309.00', '507534.00', 62, '0.00', '5', '2019-12-24 02:26:33', '2019-12-24 02:26:33', NULL),
(18, 18, '900170.00', '979165.00', 52, '0.00', '4', '2019-12-24 02:26:33', '2019-12-24 02:26:33', NULL),
(19, 19, '360110.00', '657269.00', 85, '0.67', '15', '2019-12-24 02:26:33', '2019-12-24 02:26:33', NULL),
(20, 20, '608908.00', '694764.00', 54, '0.57', '20', '2019-12-24 02:26:33', '2019-12-24 02:26:33', NULL),
(21, 21, '736344.00', '774960.00', 57, '0.00', '15', '2019-12-24 02:26:34', '2019-12-24 02:26:34', NULL),
(22, 22, '581576.00', '595480.00', 89, '0.81', '2', '2019-12-24 02:26:34', '2019-12-24 02:26:34', NULL),
(23, 23, '981539.00', '989743.00', 81, '0.69', '2', '2019-12-24 02:26:34', '2019-12-24 02:26:34', NULL),
(24, 24, '809915.00', '869852.00', 26, '0.78', '9', '2019-12-24 02:26:34', '2019-12-24 02:26:34', NULL),
(25, 25, '295811.00', '354408.00', 68, '0.00', '19', '2019-12-24 02:26:34', '2019-12-24 02:26:34', NULL),
(26, 26, '845886.00', '992930.00', 61, '0.00', '5', '2019-12-24 02:26:34', '2019-12-24 02:26:34', NULL),
(27, 27, '470612.00', '735610.00', 81, '0.00', '3', '2019-12-24 02:26:34', '2019-12-24 02:26:34', NULL),
(28, 28, '84313.00', '118234.00', 49, '0.00', '16', '2019-12-24 02:26:34', '2019-12-24 02:26:34', NULL),
(29, 29, '81164.00', '695654.00', 17, '0.00', '14', '2019-12-24 02:26:34', '2019-12-24 02:26:34', NULL),
(30, 30, '928043.00', '946538.00', 74, '0.00', '9', '2019-12-24 02:26:34', '2019-12-24 02:26:34', NULL),
(31, 31, '383106.00', '556363.00', 47, '0.00', '17', '2019-12-24 02:26:34', '2019-12-24 02:26:34', NULL),
(32, 32, '346474.00', '407679.00', 55, '0.00', '15', '2019-12-24 02:26:34', '2019-12-24 02:26:34', NULL),
(33, 33, '431221.00', '736787.00', 68, '0.00', '14', '2019-12-24 02:26:35', '2019-12-24 02:26:35', NULL),
(34, 34, '277158.00', '401950.00', 68, '0.47', '11', '2019-12-24 02:26:35', '2019-12-24 02:26:35', NULL),
(35, 35, '595986.00', '897066.00', 75, '0.00', '13', '2019-12-24 02:26:35', '2019-12-24 02:26:35', NULL),
(36, 36, '872458.00', '874330.00', 64, '0.00', '12', '2019-12-24 02:26:35', '2019-12-24 02:26:35', NULL),
(37, 37, '263818.00', '819996.00', 23, '0.00', '11', '2019-12-24 02:26:35', '2019-12-24 02:26:35', NULL),
(38, 38, '996216.00', '998379.00', 96, '0.00', '2', '2019-12-24 02:26:35', '2019-12-24 02:26:35', NULL),
(39, 39, '628180.00', '884036.00', 59, '0.00', '9', '2019-12-24 02:26:35', '2019-12-24 02:26:35', NULL),
(40, 40, '487359.00', '754111.00', 60, '0.00', '18', '2019-12-24 02:26:35', '2019-12-24 02:26:35', NULL),
(41, 41, '246965.00', '745241.00', 15, '0.00', '16', '2019-12-24 02:26:35', '2019-12-24 02:26:35', NULL),
(42, 42, '688397.00', '726311.00', 2, '0.79', '11', '2019-12-24 02:26:35', '2019-12-24 02:26:35', NULL),
(43, 43, '386164.00', '707884.00', 56, '0.66', '3', '2019-12-24 02:26:36', '2019-12-24 02:26:36', NULL),
(44, 44, '220561.00', '936914.00', 37, '1.00', '13', '2019-12-24 02:26:36', '2019-12-24 02:26:36', NULL),
(45, 45, '518862.00', '724090.00', 67, '0.00', '17', '2019-12-24 02:26:36', '2019-12-24 02:26:36', NULL),
(46, 46, '217013.00', '701613.00', 75, '0.00', '9', '2019-12-24 02:26:36', '2019-12-24 02:26:36', NULL),
(47, 47, '265073.00', '893030.00', 3, '1.00', '18', '2019-12-24 02:26:36', '2019-12-24 02:26:36', NULL),
(48, 48, '992523.00', '993215.00', 53, '0.51', '20', '2019-12-24 02:26:36', '2019-12-24 02:26:36', NULL),
(49, 49, '657660.00', '767252.00', 46, '0.00', '3', '2019-12-24 02:26:36', '2019-12-24 02:26:36', NULL),
(50, 50, '400564.00', '707174.00', 84, '0.65', '17', '2019-12-24 02:26:36', '2019-12-24 02:26:36', NULL),
(51, 51, '900486.00', '930985.00', 95, '0.00', '2', '2019-12-24 02:26:47', '2019-12-24 02:26:47', NULL),
(52, 52, '640108.00', '871395.00', 88, '0.34', '13', '2019-12-24 02:26:47', '2019-12-24 02:26:47', NULL),
(53, 53, '262407.00', '771238.00', 2, '0.19', '35', '2019-12-24 02:26:47', '2019-12-24 02:26:47', NULL),
(54, 54, '161750.00', '316295.00', 92, '0.00', '9', '2019-12-24 02:26:47', '2019-12-24 02:26:47', NULL),
(55, 55, '909288.00', '974081.00', 16, '0.90', '29', '2019-12-24 02:26:47', '2019-12-24 02:26:47', NULL),
(56, 56, '329290.00', '637209.00', 75, '0.23', '36', '2019-12-24 02:26:47', '2019-12-24 02:26:47', NULL),
(57, 57, '174290.00', '508327.00', 91, '0.00', '21', '2019-12-24 02:26:47', '2019-12-24 02:26:47', NULL),
(58, 58, '909219.00', '942522.00', 33, '0.00', '28', '2019-12-24 02:26:48', '2019-12-24 02:26:48', NULL),
(59, 59, '717497.00', '738069.00', 22, '0.00', '9', '2019-12-24 02:26:48', '2019-12-24 02:26:48', NULL),
(60, 60, '177318.00', '862299.00', 78, '0.00', '18', '2019-12-24 02:26:48', '2019-12-24 02:26:48', NULL),
(61, 61, '769729.00', '935235.00', 96, '0.00', '19', '2019-12-24 02:26:48', '2019-12-24 02:26:48', NULL),
(62, 62, '84685.00', '505284.00', 50, '0.05', '27', '2019-12-24 02:26:48', '2019-12-24 02:26:48', NULL),
(63, 63, '860535.00', '958245.00', 76, '0.00', '38', '2019-12-24 02:26:48', '2019-12-24 02:26:48', NULL),
(64, 64, '878045.00', '914956.00', 78, '0.07', '1', '2019-12-24 02:26:48', '2019-12-24 02:26:48', NULL),
(65, 65, '393857.00', '910691.00', 58, '0.00', '37', '2019-12-24 02:26:48', '2019-12-24 02:26:48', NULL),
(66, 66, '689629.00', '774183.00', 75, '0.00', '18', '2019-12-24 02:26:49', '2019-12-24 02:26:49', NULL),
(67, 67, '932356.00', '948673.00', 15, '0.00', '37', '2019-12-24 02:26:49', '2019-12-24 02:26:49', NULL),
(68, 68, '278282.00', '299991.00', 8, '0.00', '6', '2019-12-24 02:26:49', '2019-12-24 02:26:49', NULL),
(69, 69, '539977.00', '701433.00', 80, '0.00', '29', '2019-12-24 02:26:49', '2019-12-24 02:26:49', NULL),
(70, 70, '726789.00', '911166.00', 100, '0.43', '12', '2019-12-24 02:26:49', '2019-12-24 02:26:49', NULL),
(71, 71, '411627.00', '818407.00', 23, '0.00', '16', '2019-12-24 02:26:49', '2019-12-24 02:26:49', NULL),
(72, 72, '847640.00', '914537.00', 37, '0.00', '36', '2019-12-24 02:26:49', '2019-12-24 02:26:49', NULL),
(73, 73, '365163.00', '524774.00', 46, '0.00', '2', '2019-12-24 02:26:49', '2019-12-24 02:26:49', NULL),
(74, 74, '858456.00', '973050.00', 82, '0.00', '19', '2019-12-24 02:26:49', '2019-12-24 02:26:49', NULL),
(75, 75, '345739.00', '731449.00', 2, '0.00', '17', '2019-12-24 02:26:50', '2019-12-24 02:26:50', NULL),
(76, 76, '42682.00', '622595.00', 19, '1.00', '31', '2019-12-24 02:26:50', '2019-12-24 02:26:50', NULL),
(77, 77, '462671.00', '771303.00', 76, '0.76', '37', '2019-12-24 02:26:50', '2019-12-24 02:26:50', NULL),
(78, 78, '23198.00', '235622.00', 0, '0.00', '17', '2019-12-24 02:26:50', '2019-12-24 02:26:50', NULL),
(79, 79, '238512.00', '755284.00', 62, '0.00', '20', '2019-12-24 02:26:50', '2019-12-24 02:26:50', NULL),
(80, 80, '102594.00', '867616.00', 12, '0.00', '21', '2019-12-24 02:26:50', '2019-12-24 02:26:50', NULL),
(81, 81, '918726.00', '931428.00', 12, '0.01', '37', '2019-12-24 02:26:50', '2019-12-24 02:26:50', NULL),
(82, 82, '522988.00', '845557.00', 94, '0.10', '22', '2019-12-24 02:26:51', '2019-12-24 02:26:51', NULL),
(83, 83, '625057.00', '936024.00', 43, '0.00', '27', '2019-12-24 02:26:51', '2019-12-24 02:26:51', NULL),
(84, 84, '69456.00', '527102.00', 27, '0.10', '12', '2019-12-24 02:26:51', '2019-12-24 02:26:51', NULL),
(85, 85, '896563.00', '991002.00', 80, '0.00', '14', '2019-12-24 02:26:51', '2019-12-24 02:26:51', NULL),
(86, 86, '458367.00', '949690.00', 72, '0.00', '12', '2019-12-24 02:26:51', '2019-12-24 02:26:51', NULL),
(87, 87, '750241.00', '919543.00', 17, '0.00', '9', '2019-12-24 02:26:51', '2019-12-24 02:26:51', NULL),
(88, 88, '999945.00', '999995.00', 65, '0.08', '38', '2019-12-24 02:26:51', '2019-12-24 02:26:51', NULL),
(89, 89, '927031.00', '945351.00', 27, '0.15', '19', '2019-12-24 02:26:51', '2019-12-24 02:26:51', NULL),
(90, 90, '533903.00', '672645.00', 62, '0.08', '36', '2019-12-24 02:26:51', '2019-12-24 02:26:51', NULL),
(91, 91, '821076.00', '923747.00', 79, '0.56', '40', '2019-12-24 02:26:51', '2019-12-24 02:26:51', NULL),
(92, 92, '982905.00', '993896.00', 32, '0.00', '4', '2019-12-24 02:26:52', '2019-12-24 02:26:52', NULL),
(93, 93, '440426.00', '956293.00', 5, '0.00', '35', '2019-12-24 02:26:52', '2019-12-24 02:26:52', NULL),
(94, 94, '445397.00', '707662.00', 7, '0.55', '14', '2019-12-24 02:26:52', '2019-12-24 02:26:52', NULL),
(95, 95, '536996.00', '825724.00', 44, '0.58', '18', '2019-12-24 02:26:52', '2019-12-24 02:26:52', NULL),
(96, 96, '352857.00', '957001.00', 86, '0.00', '2', '2019-12-24 02:26:52', '2019-12-24 02:26:52', NULL),
(97, 97, '430839.00', '731380.00', 92, '0.00', '25', '2019-12-24 02:26:52', '2019-12-24 02:26:52', NULL),
(98, 98, '750345.00', '858141.00', 24, '0.00', '1', '2019-12-24 02:26:52', '2019-12-24 02:26:52', NULL),
(99, 99, '725172.00', '758611.00', 38, '0.12', '19', '2019-12-24 02:26:53', '2019-12-24 02:26:53', NULL),
(100, 100, '695238.00', '828337.00', 95, '0.00', '27', '2019-12-24 02:26:53', '2019-12-24 02:26:53', NULL),
(101, 16, '739868.00', '841579.00', 2, '2.00', '36', '2019-12-24 04:12:56', '2019-12-24 04:12:56', NULL),
(102, 16, '100000.00', '30000.00', 4, '0.00', '35', '2019-12-24 04:16:55', '2019-12-24 04:16:55', NULL),
(103, 84, '69456.00', '527102.00', 1, '0.10', '16', '2019-12-24 08:50:53', '2019-12-24 08:50:53', NULL),
(104, 62, '84685.00', '505284.00', 1, '0.05', '16', '2019-12-24 08:51:22', '2019-12-24 08:51:22', NULL),
(105, 15, '101706.00', '940333.00', 1, '0.01', '16', '2019-12-24 08:51:43', '2019-12-24 08:51:43', NULL);

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
(1, 'sunt', '18', '2019-12-24 02:26:30', '2019-12-24 02:26:30', NULL),
(2, 'corporis', '11', '2019-12-24 02:26:30', '2019-12-24 02:49:58', NULL),
(3, 'quidem', '32', '2019-12-24 02:26:46', '2019-12-24 02:26:46', NULL),
(4, 'ipsa', '7', '2019-12-24 02:26:46', '2019-12-24 02:26:46', NULL);

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
(1, 33, '13', '2019-12-24 02:26:37', '2019-12-24 02:26:37', NULL),
(2, 3, '20', '2019-12-24 02:26:53', '2019-12-24 02:26:53', NULL),
(3, 14, '35', '2019-12-24 02:27:06', '2019-12-24 02:27:06', NULL),
(4, 74, '6', '2019-12-24 02:27:07', '2019-12-24 02:27:07', NULL),
(5, 73, '13', '2019-12-24 02:27:07', '2019-12-24 02:27:07', NULL),
(6, 200, '35', '2019-12-24 02:27:08', '2019-12-24 02:27:08', NULL),
(7, 63, '18', '2019-12-24 02:27:09', '2019-12-24 02:27:09', NULL),
(8, 77, '5', '2019-12-24 02:27:09', '2019-12-24 02:27:09', NULL),
(9, 127, '14', '2019-12-24 02:27:10', '2019-12-24 02:27:10', NULL),
(10, 159, '32', '2019-12-24 02:27:10', '2019-12-24 02:27:10', NULL),
(11, 67, '23', '2019-12-24 02:27:11', '2019-12-24 02:27:11', NULL),
(12, 168, '24', '2019-12-24 02:27:11', '2019-12-24 02:27:11', NULL),
(13, 8, '14', '2019-12-24 02:27:12', '2019-12-24 02:27:12', NULL),
(14, 18, '6', '2019-12-24 02:27:13', '2019-12-24 02:27:13', NULL),
(15, 161, '36', '2019-12-24 02:27:14', '2019-12-24 02:27:14', NULL),
(16, 60, '5', '2019-12-24 02:27:15', '2019-12-24 02:27:15', NULL),
(17, 125, '12', '2019-12-24 02:27:15', '2019-12-24 02:27:15', NULL),
(18, 176, '13', '2019-12-24 02:27:16', '2019-12-24 02:27:16', NULL),
(19, 185, '33', '2019-12-24 02:27:17', '2019-12-24 02:27:17', NULL),
(20, 36, '10', '2019-12-24 02:27:17', '2019-12-24 02:27:17', NULL),
(21, 87, '32', '2019-12-24 02:27:18', '2019-12-24 02:27:18', NULL),
(22, 59, '6', '2019-12-24 02:27:18', '2019-12-24 02:27:18', NULL),
(23, 61, '16', '2019-12-24 02:27:19', '2019-12-24 02:27:19', NULL),
(24, 17, '30', '2019-12-24 02:27:19', '2019-12-24 02:27:19', NULL),
(25, 190, '21', '2019-12-24 02:27:20', '2019-12-24 02:27:20', NULL),
(26, 145, '18', '2019-12-24 02:27:21', '2019-12-24 02:27:21', NULL),
(27, 165, '14', '2019-12-24 02:27:22', '2019-12-24 02:27:22', NULL),
(28, 31, '17', '2019-12-24 02:27:22', '2019-12-24 02:27:22', NULL),
(29, 95, '21', '2019-12-24 02:27:23', '2019-12-24 02:27:23', NULL),
(30, 179, '34', '2019-12-24 02:27:23', '2019-12-24 02:27:23', NULL),
(31, 138, '16', '2019-12-24 02:27:24', '2019-12-24 02:27:24', NULL),
(32, 43, '15', '2019-12-24 02:27:25', '2019-12-24 02:27:25', NULL),
(33, 78, '20', '2019-12-24 02:27:25', '2019-12-24 02:27:25', NULL),
(34, 130, '37', '2019-12-24 02:27:26', '2019-12-24 02:27:26', NULL),
(35, 142, '1', '2019-12-24 02:27:27', '2019-12-24 02:27:27', NULL),
(36, 145, '25', '2019-12-24 02:27:27', '2019-12-24 02:27:27', NULL),
(37, 25, '15', '2019-12-24 02:27:28', '2019-12-24 02:27:28', NULL),
(38, 5, '37', '2019-12-24 02:27:28', '2019-12-24 02:27:28', NULL),
(39, 187, '35', '2019-12-24 02:27:29', '2019-12-24 02:27:29', NULL),
(40, 150, '25', '2019-12-24 02:27:30', '2019-12-24 02:27:30', NULL),
(41, 130, '33', '2019-12-24 02:27:30', '2019-12-24 02:27:30', NULL),
(42, 114, '13', '2019-12-24 02:27:31', '2019-12-24 02:27:31', NULL),
(43, 96, '34', '2019-12-24 02:27:31', '2019-12-24 02:27:31', NULL),
(44, 15, '27', '2019-12-24 02:27:32', '2019-12-24 02:27:32', NULL),
(45, 95, '31', '2019-12-24 02:27:33', '2019-12-24 02:27:33', NULL),
(46, 8, '27', '2019-12-24 02:27:34', '2019-12-24 02:27:34', NULL),
(47, 52, '5', '2019-12-24 02:27:34', '2019-12-24 02:27:34', NULL),
(48, 68, '34', '2019-12-24 02:27:35', '2019-12-24 02:27:35', NULL),
(49, 11, '4', '2019-12-24 02:27:35', '2019-12-24 02:27:35', NULL),
(50, 34, '22', '2019-12-24 02:27:36', '2019-12-24 02:27:36', NULL),
(51, 155, '4', '2019-12-24 02:27:36', '2019-12-24 02:27:36', NULL),
(52, 102, '6', '2019-12-24 02:27:37', '2019-12-24 02:27:37', NULL),
(53, 106, '32', '2019-12-24 02:27:38', '2019-12-24 02:27:38', NULL),
(54, 105, '17', '2019-12-24 02:27:38', '2019-12-24 02:27:38', NULL),
(55, 20, '22', '2019-12-24 02:27:39', '2019-12-24 02:27:39', NULL),
(56, 17, '37', '2019-12-24 02:27:39', '2019-12-24 02:27:39', NULL),
(57, 97, '4', '2019-12-24 02:27:40', '2019-12-24 02:27:40', NULL),
(58, 70, '22', '2019-12-24 02:27:40', '2019-12-24 02:27:40', NULL),
(59, 174, '8', '2019-12-24 02:27:41', '2019-12-24 02:27:41', NULL),
(60, 78, '18', '2019-12-24 02:27:41', '2019-12-24 02:27:41', NULL),
(61, 137, '9', '2019-12-24 02:27:42', '2019-12-24 02:27:42', NULL),
(62, 135, '10', '2019-12-24 02:27:42', '2019-12-24 02:27:42', NULL),
(63, 194, '31', '2019-12-24 02:27:43', '2019-12-24 02:27:43', NULL),
(64, 19, '10', '2019-12-24 02:27:44', '2019-12-24 02:27:44', NULL),
(65, 60, '22', '2019-12-24 02:27:44', '2019-12-24 02:27:44', NULL),
(66, 91, '36', '2019-12-24 02:27:45', '2019-12-24 02:27:45', NULL),
(67, 64, '31', '2019-12-24 02:27:45', '2019-12-24 02:27:45', NULL),
(68, 169, '30', '2019-12-24 02:27:46', '2019-12-24 02:27:46', NULL),
(69, 3, '1', '2019-12-24 02:27:46', '2019-12-24 02:27:46', NULL),
(70, 115, '9', '2019-12-24 02:27:47', '2019-12-24 02:27:47', NULL),
(71, 51, '15', '2019-12-24 02:27:47', '2019-12-24 02:27:47', NULL),
(72, 136, '15', '2019-12-24 02:27:48', '2019-12-24 02:27:48', NULL),
(73, 52, '17', '2019-12-24 02:27:48', '2019-12-24 02:27:48', NULL),
(74, 8, '35', '2019-12-24 02:27:49', '2019-12-24 02:27:49', NULL),
(75, 29, '7', '2019-12-24 02:27:49', '2019-12-24 02:27:49', NULL),
(76, 13, '30', '2019-12-24 02:27:50', '2019-12-24 02:27:50', NULL),
(77, 116, '17', '2019-12-24 02:27:50', '2019-12-24 02:27:50', NULL),
(78, 24, '33', '2019-12-24 02:27:51', '2019-12-24 02:27:51', NULL),
(79, 139, '18', '2019-12-24 02:27:52', '2019-12-24 02:27:52', NULL),
(80, 78, '11', '2019-12-24 02:27:52', '2019-12-24 02:27:52', NULL),
(81, 122, '20', '2019-12-24 02:27:53', '2019-12-24 02:27:53', NULL),
(82, 23, '37', '2019-12-24 02:27:53', '2019-12-24 02:27:53', NULL),
(83, 169, '6', '2019-12-24 02:27:54', '2019-12-24 02:27:54', NULL),
(84, 78, '24', '2019-12-24 02:27:54', '2019-12-24 02:27:54', NULL),
(85, 101, '37', '2019-12-24 02:27:55', '2019-12-24 02:27:55', NULL),
(86, 51, '21', '2019-12-24 02:27:55', '2019-12-24 02:27:55', NULL),
(87, 172, '12', '2019-12-24 02:27:56', '2019-12-24 02:27:56', NULL),
(88, 141, '15', '2019-12-24 02:27:57', '2019-12-24 02:27:57', NULL),
(89, 91, '35', '2019-12-24 02:27:57', '2019-12-24 02:27:57', NULL),
(90, 21, '5', '2019-12-24 02:27:58', '2019-12-24 02:27:58', NULL),
(91, 48, '3', '2019-12-24 02:27:58', '2019-12-24 02:27:58', NULL),
(92, 20, '1', '2019-12-24 02:27:59', '2019-12-24 02:27:59', NULL),
(93, 144, '14', '2019-12-24 02:27:59', '2019-12-24 02:27:59', NULL),
(94, 70, '5', '2019-12-24 02:28:00', '2019-12-24 02:28:00', NULL),
(95, 148, '33', '2019-12-24 02:28:01', '2019-12-24 02:28:01', NULL),
(96, 28, '10', '2019-12-24 02:28:01', '2019-12-24 02:28:01', NULL),
(97, 189, '18', '2019-12-24 02:28:01', '2019-12-24 02:28:01', NULL),
(98, 195, '10', '2019-12-24 02:28:02', '2019-12-24 02:28:02', NULL),
(99, 34, '3', '2019-12-24 02:28:03', '2019-12-24 02:28:03', NULL),
(100, 121, '15', '2019-12-24 02:28:03', '2019-12-24 02:28:03', NULL),
(101, 36, '32', '2019-12-24 02:28:03', '2019-12-24 02:28:03', NULL);

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
  `discount` decimal(3,2) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_has_items`
--

INSERT INTO `order_has_items` (`id`, `order_id`, `item_id`, `price`, `quantity`, `discount`, `amount`) VALUES
(1, 1, 7, '868367.00', 9, '0.00', '7815303.00'),
(2, 1, 38, '998379.00', 3, '0.00', '2995137.00'),
(3, 1, 20, '694764.00', 27, '0.57', '10692417.96'),
(4, 1, 8, '900317.00', 2, '0.00', '1800634.00'),
(5, 1, 22, '595480.00', 51, '0.81', '24599278.80'),
(6, 2, 69, '701433.00', 15, '0.00', '10521495.00'),
(7, 2, 68, '299991.00', 8, '0.00', '2399928.00'),
(8, 2, 3, '887778.00', 16, '0.00', '14204448.00'),
(9, 3, 87, '919543.00', 10, '0.00', '9195430.00'),
(10, 3, 94, '707662.00', 5, '0.55', '1946070.50'),
(11, 3, 4, '846014.00', 51, '1.00', '43146714.00'),
(12, 3, 72, '914537.00', 35, '0.00', '32008795.00'),
(13, 3, 94, '707662.00', 2, '0.55', '778428.20'),
(14, 4, 64, '914956.00', 74, '0.07', '67706744.00'),
(15, 4, 26, '992930.00', 61, '0.00', '60568730.00'),
(16, 4, 41, '745241.00', 9, '0.00', '6707169.00'),
(17, 5, 63, '958245.00', 36, '0.00', '34496820.00'),
(18, 5, 77, '771303.00', 14, '0.76', '8206663.92'),
(19, 5, 86, '949690.00', 44, '0.00', '41786360.00'),
(20, 5, 42, '726311.00', 2, '0.79', '1147571.38'),
(21, 6, 46, '701613.00', 72, '0.00', '50516136.00'),
(22, 6, 56, '637209.00', 66, '0.23', '42055794.00'),
(23, 6, 99, '758611.00', 8, '0.12', '6068888.00'),
(24, 7, 14, '498348.00', 3, '0.51', '762472.44'),
(25, 7, 49, '767252.00', 44, '0.00', '33759088.00'),
(26, 7, 44, '936914.00', 25, '1.00', '23422850.00'),
(27, 8, 70, '911166.00', 89, '0.43', '81093774.00'),
(28, 8, 61, '935235.00', 30, '0.00', '28057050.00'),
(29, 8, 4, '846014.00', 42, '1.00', '35532588.00'),
(30, 8, 82, '845557.00', 45, '0.10', '38050065.00'),
(31, 9, 100, '828337.00', 92, '0.00', '76207004.00'),
(32, 9, 51, '930985.00', 85, '0.00', '79133725.00'),
(33, 9, 15, '940333.00', 25, '0.01', '23508325.00'),
(34, 9, 75, '731449.00', 1, '0.00', '731449.00'),
(35, 9, 37, '819996.00', 9, '0.00', '7379964.00'),
(36, 10, 46, '701613.00', 25, '0.00', '17540325.00'),
(37, 10, 27, '735610.00', 57, '0.00', '41929770.00'),
(38, 10, 49, '767252.00', 1, '0.00', '767252.00'),
(39, 11, 41, '745241.00', 3, '0.00', '2235723.00'),
(40, 11, 34, '401950.00', 41, '0.47', '16479950.00'),
(41, 11, 6, '707624.00', 10, '0.31', '7076240.00'),
(42, 12, 18, '979165.00', 52, '0.00', '50916580.00'),
(43, 12, 62, '505284.00', 24, '0.05', '12126816.00'),
(44, 12, 24, '869852.00', 12, '0.78', '8141814.72'),
(45, 12, 25, '354408.00', 64, '0.00', '22682112.00'),
(46, 13, 67, '948673.00', 15, '0.00', '14230095.00'),
(47, 13, 98, '858141.00', 3, '0.00', '2574423.00'),
(48, 13, 62, '505284.00', 12, '0.05', '6063408.00'),
(49, 13, 75, '731449.00', 1, '0.00', '731449.00'),
(50, 13, 41, '745241.00', 1, '0.00', '745241.00'),
(51, 14, 10, '854696.00', 73, '0.00', '62392808.00'),
(52, 14, 14, '498348.00', 4, '0.51', '1016629.92'),
(53, 14, 52, '871395.00', 67, '0.34', '58383465.00'),
(54, 15, 100, '828337.00', 1, '0.00', '828337.00'),
(55, 15, 3, '887778.00', 31, '0.00', '27521118.00'),
(56, 15, 41, '745241.00', 2, '0.00', '1490482.00'),
(57, 16, 31, '556363.00', 8, '0.00', '4450904.00'),
(58, 16, 44, '936914.00', 8, '1.00', '7495312.00'),
(59, 16, 17, '507534.00', 21, '0.00', '10658214.00'),
(60, 16, 71, '818407.00', 5, '0.00', '4092035.00'),
(61, 17, 54, '316295.00', 88, '0.00', '27833960.00'),
(62, 17, 22, '595480.00', 5, '0.81', '2411694.00'),
(63, 17, 45, '724090.00', 33, '0.00', '23894970.00'),
(64, 18, 91, '923747.00', 49, '0.56', '25347617.68'),
(65, 18, 17, '507534.00', 34, '0.00', '17256156.00'),
(66, 18, 65, '910691.00', 11, '0.00', '10017601.00'),
(67, 18, 97, '731380.00', 25, '0.00', '18284500.00'),
(68, 18, 86, '949690.00', 17, '0.00', '16144730.00'),
(69, 19, 76, '622595.00', 18, '1.00', '11206710.00'),
(70, 19, 48, '993215.00', 40, '0.51', '20261586.00'),
(71, 19, 99, '758611.00', 7, '0.12', '5310277.00'),
(72, 20, 30, '946538.00', 70, '0.00', '66257660.00'),
(73, 20, 76, '622595.00', 1, '1.00', '622595.00'),
(74, 20, 59, '738069.00', 4, '0.00', '2952276.00'),
(75, 21, 96, '957001.00', 31, '0.00', '29667031.00'),
(76, 21, 86, '949690.00', 11, '0.00', '10446590.00'),
(77, 21, 25, '354408.00', 18, '0.00', '6379344.00'),
(78, 22, 53, '771238.00', 2, '0.19', '1542476.00'),
(79, 22, 64, '914956.00', 1, '0.07', '914956.00'),
(80, 22, 94, '707662.00', 6, '0.55', '2335284.60'),
(81, 22, 61, '935235.00', 11, '0.00', '10287585.00'),
(82, 22, 86, '949690.00', 12, '0.00', '11396280.00'),
(83, 23, 17, '507534.00', 5, '0.00', '2537670.00'),
(84, 23, 97, '731380.00', 10, '0.00', '7313800.00'),
(85, 23, 63, '958245.00', 22, '0.00', '21081390.00'),
(86, 23, 3, '887778.00', 92, '0.00', '81675576.00'),
(87, 24, 99, '758611.00', 25, '0.12', '18965275.00'),
(88, 24, 65, '910691.00', 24, '0.00', '21856584.00'),
(89, 24, 51, '930985.00', 9, '0.00', '8378865.00'),
(90, 24, 51, '930985.00', 1, '0.00', '930985.00'),
(91, 25, 79, '755284.00', 25, '0.00', '18882100.00'),
(92, 25, 64, '914956.00', 3, '0.07', '2744868.00'),
(93, 25, 80, '867616.00', 4, '0.00', '3470464.00'),
(94, 25, 7, '868367.00', 59, '0.00', '51233653.00'),
(95, 25, 94, '707662.00', 1, '0.55', '389214.10'),
(96, 26, 21, '774960.00', 44, '0.00', '34098240.00'),
(97, 26, 66, '774183.00', 52, '0.00', '40257516.00'),
(98, 26, 34, '401950.00', 6, '0.47', '2411700.00'),
(99, 27, 37, '819996.00', 3, '0.00', '2459988.00'),
(100, 27, 90, '672645.00', 8, '0.08', '5381160.00'),
(101, 28, 32, '407679.00', 25, '0.00', '10191975.00'),
(102, 28, 5, '947103.00', 2, '0.00', '1894206.00'),
(103, 28, 58, '942522.00', 19, '0.00', '17907918.00'),
(104, 29, 87, '919543.00', 1, '0.00', '919543.00'),
(105, 29, 68, '299991.00', 7, '0.00', '2099937.00'),
(106, 29, 100, '828337.00', 1, '0.00', '828337.00'),
(107, 30, 45, '724090.00', 43, '0.00', '31135870.00'),
(108, 30, 54, '316295.00', 62, '0.00', '19610290.00'),
(109, 30, 97, '731380.00', 11, '0.00', '8045180.00'),
(110, 30, 23, '989743.00', 59, '0.69', '40292437.53'),
(111, 30, 81, '931428.00', 5, '0.01', '4657140.00'),
(112, 31, 91, '923747.00', 5, '0.56', '2586491.60'),
(113, 31, 6, '707624.00', 2, '0.31', '1415248.00'),
(114, 31, 45, '724090.00', 41, '0.00', '29687690.00'),
(115, 31, 89, '945351.00', 6, '0.15', '5672106.00'),
(116, 32, 93, '956293.00', 4, '0.00', '3825172.00'),
(117, 32, 96, '957001.00', 40, '0.00', '38280040.00'),
(118, 32, 16, '841579.00', 53, '0.02', '44603687.00'),
(119, 32, 13, '979416.00', 4, '0.00', '3917664.00'),
(120, 33, 14, '498348.00', 1, '0.51', '254157.48'),
(121, 33, 47, '893030.00', 1, '1.00', '893030.00'),
(122, 33, 93, '956293.00', 1, '0.00', '956293.00'),
(123, 33, 56, '637209.00', 65, '0.23', '41418585.00'),
(124, 34, 37, '819996.00', 9, '0.00', '7379964.00'),
(125, 34, 18, '979165.00', 4, '0.00', '3916660.00'),
(126, 34, 18, '979165.00', 9, '0.00', '8812485.00'),
(127, 35, 59, '738069.00', 2, '0.00', '1476138.00'),
(128, 35, 92, '993896.00', 23, '0.00', '22859608.00'),
(129, 35, 79, '755284.00', 35, '0.00', '26434940.00'),
(130, 35, 24, '869852.00', 25, '0.78', '16962114.00'),
(131, 35, 48, '993215.00', 6, '0.51', '3039237.90'),
(132, 36, 92, '993896.00', 8, '0.00', '7951168.00'),
(133, 36, 4, '846014.00', 3, '1.00', '2538042.00'),
(134, 36, 51, '930985.00', 8, '0.00', '7447880.00'),
(135, 37, 77, '771303.00', 27, '0.76', '15827137.56'),
(136, 37, 62, '505284.00', 1, '0.05', '505284.00'),
(137, 38, 60, '862299.00', 27, '0.00', '23282073.00'),
(138, 38, 56, '637209.00', 9, '0.23', '5734881.00'),
(139, 38, 39, '884036.00', 28, '0.00', '24753008.00'),
(140, 39, 89, '945351.00', 4, '0.15', '3781404.00'),
(141, 39, 13, '979416.00', 9, '0.00', '8814744.00'),
(142, 39, 4, '846014.00', 21, '1.00', '17766294.00'),
(143, 39, 61, '935235.00', 28, '0.00', '26186580.00'),
(144, 40, 42, '726311.00', 2, '0.79', '1147571.38'),
(145, 40, 60, '862299.00', 6, '0.00', '5173794.00'),
(146, 40, 37, '819996.00', 2, '0.00', '1639992.00'),
(147, 40, 97, '731380.00', 49, '0.00', '35837620.00'),
(148, 40, 99, '758611.00', 18, '0.12', '13654998.00'),
(149, 41, 88, '999995.00', 42, '0.08', '41999790.00'),
(150, 41, 59, '738069.00', 8, '0.00', '5904552.00'),
(151, 41, 87, '919543.00', 12, '0.00', '11034516.00'),
(152, 41, 35, '897066.00', 51, '0.00', '45750366.00'),
(153, 42, 33, '736787.00', 51, '0.00', '37576137.00'),
(154, 42, 96, '957001.00', 3, '0.00', '2871003.00'),
(155, 42, 25, '354408.00', 31, '0.00', '10986648.00'),
(156, 43, 60, '862299.00', 12, '0.00', '10347588.00'),
(157, 43, 99, '758611.00', 3, '0.12', '2275833.00'),
(158, 43, 98, '858141.00', 7, '0.00', '6006987.00'),
(159, 43, 21, '774960.00', 15, '0.00', '11624400.00'),
(160, 43, 20, '694764.00', 17, '0.57', '6732263.16'),
(161, 44, 17, '507534.00', 1, '0.00', '507534.00'),
(162, 44, 66, '774183.00', 35, '0.00', '27096405.00'),
(163, 44, 81, '931428.00', 2, '0.01', '1862856.00'),
(164, 45, 91, '923747.00', 19, '0.56', '9828668.08'),
(165, 45, 27, '735610.00', 3, '0.00', '2206830.00'),
(166, 45, 28, '118234.00', 29, '0.00', '3428786.00'),
(167, 45, 73, '524774.00', 2, '0.00', '1049548.00'),
(168, 46, 37, '819996.00', 1, '0.00', '819996.00'),
(169, 46, 98, '858141.00', 1, '0.00', '858141.00'),
(170, 46, 27, '735610.00', 41, '0.00', '30160010.00'),
(171, 46, 36, '874330.00', 56, '0.00', '48962480.00'),
(172, 47, 48, '993215.00', 5, '0.51', '2532698.25'),
(173, 47, 92, '993896.00', 7, '0.00', '6957272.00'),
(174, 47, 77, '771303.00', 12, '0.76', '7034283.36'),
(175, 48, 59, '738069.00', 5, '0.00', '3690345.00'),
(176, 48, 98, '858141.00', 18, '0.00', '15446538.00'),
(177, 48, 96, '957001.00', 14, '0.00', '13398014.00'),
(178, 48, 17, '507534.00', 1, '0.00', '507534.00'),
(179, 49, 54, '316295.00', 54, '0.00', '17079930.00'),
(180, 49, 54, '316295.00', 20, '0.00', '6325900.00'),
(181, 49, 73, '524774.00', 42, '0.00', '22040508.00'),
(182, 49, 38, '998379.00', 47, '0.00', '46923813.00'),
(183, 50, 13, '979416.00', 2, '0.00', '1958832.00'),
(184, 50, 21, '774960.00', 40, '0.00', '30998400.00'),
(185, 50, 10, '854696.00', 8, '0.00', '6837568.00'),
(186, 51, 95, '825724.00', 3, '0.58', '1436759.76'),
(187, 51, 20, '694764.00', 8, '0.57', '3168123.84'),
(188, 51, 31, '556363.00', 6, '0.00', '3338178.00'),
(189, 51, 32, '407679.00', 11, '0.00', '4484469.00'),
(190, 52, 54, '316295.00', 12, '0.00', '3795540.00'),
(191, 52, 60, '862299.00', 6, '0.00', '5173794.00'),
(192, 52, 70, '911166.00', 5, '0.43', '4555830.00'),
(193, 52, 72, '914537.00', 13, '0.00', '11888981.00'),
(194, 53, 90, '672645.00', 21, '0.08', '14125545.00'),
(195, 53, 23, '989743.00', 7, '0.69', '4780458.69'),
(196, 53, 33, '736787.00', 56, '0.00', '41260072.00'),
(197, 54, 7, '868367.00', 17, '0.00', '14762239.00'),
(198, 54, 39, '884036.00', 29, '0.00', '25637044.00'),
(199, 54, 15, '940333.00', 43, '0.01', '40434319.00'),
(200, 54, 81, '931428.00', 9, '0.01', '8382852.00'),
(201, 54, 29, '695654.00', 15, '0.00', '10434810.00'),
(202, 55, 39, '884036.00', 1, '0.00', '884036.00'),
(203, 55, 66, '774183.00', 37, '0.00', '28644771.00'),
(204, 55, 49, '767252.00', 1, '0.00', '767252.00'),
(205, 56, 77, '771303.00', 31, '0.76', '18171898.68'),
(206, 56, 55, '974081.00', 6, '0.90', '5260037.40'),
(207, 56, 8, '900317.00', 5, '0.00', '4501585.00'),
(208, 56, 63, '958245.00', 53, '0.00', '50786985.00'),
(209, 57, 63, '958245.00', 1, '0.00', '958245.00'),
(210, 57, 44, '936914.00', 1, '1.00', '936914.00'),
(211, 58, 45, '724090.00', 7, '0.00', '5068630.00'),
(212, 58, 34, '401950.00', 17, '0.47', '6833150.00'),
(213, 58, 15, '940333.00', 1, '0.01', '940333.00'),
(214, 59, 18, '979165.00', 10, '0.00', '9791650.00'),
(215, 59, 72, '914537.00', 16, '0.00', '14632592.00'),
(216, 59, 90, '672645.00', 3, '0.08', '2017935.00'),
(217, 60, 97, '731380.00', 6, '0.00', '4388280.00'),
(218, 60, 65, '910691.00', 14, '0.00', '12749674.00'),
(219, 61, 65, '910691.00', 1, '0.00', '910691.00'),
(220, 61, 73, '524774.00', 1, '0.00', '524774.00'),
(221, 61, 84, '527102.00', 3, '0.10', '1581306.00'),
(222, 62, 82, '845557.00', 5, '0.10', '4227785.00'),
(223, 62, 77, '771303.00', 17, '0.76', '9965234.76'),
(224, 62, 79, '755284.00', 8, '0.00', '6042272.00'),
(225, 63, 88, '999995.00', 21, '0.08', '20999895.00'),
(226, 63, 47, '893030.00', 2, '1.00', '1786060.00'),
(227, 63, 89, '945351.00', 12, '0.15', '11344212.00'),
(228, 63, 27, '735610.00', 10, '0.00', '7356100.00'),
(229, 64, 29, '695654.00', 1, '0.00', '695654.00'),
(230, 64, 73, '524774.00', 1, '0.00', '524774.00'),
(231, 64, 20, '694764.00', 9, '0.57', '3564139.32'),
(232, 64, 55, '974081.00', 9, '0.90', '7890056.10'),
(233, 65, 37, '819996.00', 2, '0.00', '1639992.00'),
(234, 66, 96, '957001.00', 1, '0.00', '957001.00'),
(235, 66, 43, '707884.00', 23, '0.66', '10745679.12'),
(236, 66, 9, '943634.00', 8, '0.00', '7549072.00'),
(237, 66, 23, '989743.00', 25, '0.69', '17073066.75'),
(238, 67, 57, '508327.00', 22, '0.00', '11183194.00'),
(239, 67, 45, '724090.00', 19, '0.00', '13757710.00'),
(240, 67, 99, '758611.00', 9, '0.12', '6827499.00'),
(241, 67, 7, '868367.00', 2, '0.00', '1736734.00'),
(242, 68, 25, '354408.00', 11, '0.00', '3898488.00'),
(243, 68, 56, '637209.00', 1, '0.23', '637209.00'),
(244, 68, 81, '931428.00', 1, '0.01', '931428.00'),
(245, 69, 51, '930985.00', 2, '0.00', '1861970.00'),
(246, 69, 52, '871395.00', 9, '0.34', '7842555.00'),
(247, 69, 74, '973050.00', 25, '0.00', '24326250.00'),
(248, 70, 98, '858141.00', 1, '0.00', '858141.00'),
(249, 70, 41, '745241.00', 1, '0.00', '745241.00'),
(250, 71, 48, '993215.00', 7, '0.51', '3545777.55'),
(251, 71, 57, '508327.00', 55, '0.00', '27957985.00'),
(252, 71, 34, '401950.00', 7, '0.47', '2813650.00'),
(253, 72, 1, '997872.00', 31, '0.28', '30934032.00'),
(254, 72, 77, '771303.00', 5, '0.76', '2930951.40'),
(255, 72, 89, '945351.00', 5, '0.15', '4726755.00'),
(256, 72, 46, '701613.00', 71, '0.00', '49814523.00'),
(257, 73, 35, '897066.00', 23, '0.00', '20632518.00'),
(258, 73, 29, '695654.00', 1, '0.00', '695654.00'),
(259, 73, 72, '914537.00', 1, '0.00', '914537.00'),
(260, 74, 16, '841579.00', 9, '0.02', '7574211.00'),
(261, 74, 95, '825724.00', 23, '0.58', '11015158.16'),
(262, 75, 74, '973050.00', 49, '0.00', '47679450.00'),
(263, 75, 35, '897066.00', 1, '0.00', '897066.00'),
(264, 75, 55, '974081.00', 5, '0.90', '4383364.50'),
(265, 75, 50, '707174.00', 27, '0.65', '12410903.70'),
(266, 76, 41, '745241.00', 1, '0.00', '745241.00'),
(267, 76, 82, '845557.00', 27, '0.10', '22830039.00'),
(268, 76, 52, '871395.00', 8, '0.34', '6971160.00'),
(269, 77, 61, '935235.00', 2, '0.00', '1870470.00'),
(270, 77, 36, '874330.00', 8, '0.00', '6994640.00'),
(271, 77, 60, '862299.00', 14, '0.00', '12072186.00'),
(272, 77, 48, '993215.00', 1, '0.51', '506539.65'),
(273, 78, 83, '936024.00', 25, '0.00', '23400600.00'),
(274, 78, 58, '942522.00', 3, '0.00', '2827566.00'),
(275, 78, 80, '867616.00', 4, '0.00', '3470464.00'),
(276, 78, 100, '828337.00', 2, '0.00', '1656674.00'),
(277, 79, 66, '774183.00', 6, '0.00', '4645098.00'),
(278, 80, 11, '808880.00', 10, '0.91', '7360808.00'),
(279, 80, 60, '862299.00', 4, '0.00', '3449196.00'),
(280, 81, 86, '949690.00', 14, '0.00', '13295660.00'),
(281, 81, 58, '942522.00', 3, '0.00', '2827566.00'),
(282, 81, 80, '867616.00', 1, '0.00', '867616.00'),
(283, 81, 86, '949690.00', 3, '0.00', '2849070.00'),
(284, 82, 84, '527102.00', 1, '0.10', '527102.00'),
(285, 82, 31, '556363.00', 17, '0.00', '9458171.00'),
(286, 82, 27, '735610.00', 24, '0.00', '17654640.00'),
(287, 83, 8, '900317.00', 2, '0.00', '1800634.00'),
(288, 83, 77, '771303.00', 4, '0.76', '2344761.12'),
(289, 84, 40, '754111.00', 4, '0.00', '3016444.00'),
(290, 84, 3, '887778.00', 1, '0.00', '887778.00'),
(291, 84, 19, '657269.00', 18, '0.67', '7926664.14'),
(292, 85, 77, '771303.00', 2, '0.76', '1172380.56'),
(293, 86, 86, '949690.00', 3, '0.00', '2849070.00'),
(294, 86, 23, '989743.00', 35, '0.69', '23902293.45'),
(295, 86, 89, '945351.00', 6, '0.15', '5672106.00'),
(296, 86, 65, '910691.00', 10, '0.00', '9106910.00'),
(297, 87, 50, '707174.00', 44, '0.65', '20225176.40'),
(298, 87, 58, '942522.00', 5, '0.00', '4712610.00'),
(299, 87, 1, '997872.00', 1, '0.28', '997872.00'),
(300, 87, 61, '935235.00', 15, '0.00', '14028525.00'),
(301, 89, 25, '354408.00', 24, '0.00', '8505792.00'),
(302, 89, 77, '771303.00', 1, '0.76', '586190.28'),
(303, 89, 91, '923747.00', 3, '0.56', '1551894.96'),
(304, 89, 86, '949690.00', 14, '0.00', '13295660.00'),
(305, 89, 55, '974081.00', 1, '0.90', '876672.90'),
(306, 90, 20, '694764.00', 8, '0.57', '3168123.84'),
(307, 90, 74, '973050.00', 1, '0.00', '973050.00'),
(308, 91, 90, '672645.00', 34, '0.08', '22869930.00'),
(309, 91, 16, '841579.00', 6, '0.02', '5049474.00'),
(310, 92, 8, '900317.00', 2, '0.00', '1800634.00'),
(311, 92, 3, '887778.00', 2, '0.00', '1775556.00'),
(312, 92, 46, '701613.00', 1, '0.00', '701613.00'),
(313, 92, 18, '979165.00', 23, '0.00', '22520795.00'),
(314, 93, 44, '936914.00', 1, '1.00', '936914.00'),
(315, 93, 59, '738069.00', 3, '0.00', '2214207.00'),
(316, 93, 40, '754111.00', 40, '0.00', '30164440.00'),
(317, 94, 19, '657269.00', 19, '0.67', '8367034.37'),
(318, 94, 16, '841579.00', 5, '0.02', '4207895.00'),
(319, 94, 54, '316295.00', 2, '0.00', '632590.00'),
(320, 95, 27, '735610.00', 3, '0.00', '2206830.00'),
(321, 96, 91, '923747.00', 3, '0.56', '1551894.96'),
(322, 96, 82, '845557.00', 15, '0.10', '12683355.00'),
(323, 97, 20, '694764.00', 1, '0.57', '396015.48'),
(324, 97, 88, '999995.00', 6, '0.08', '5999970.00'),
(325, 98, 31, '556363.00', 11, '0.00', '6119993.00'),
(326, 98, 91, '923747.00', 3, '0.56', '1551894.96'),
(327, 98, 30, '946538.00', 3, '0.00', '2839614.00'),
(328, 98, 16, '841579.00', 2, '0.02', '1683158.00'),
(329, 100, 85, '991002.00', 20, '0.00', '19820040.00'),
(330, 100, 86, '949690.00', 7, '0.00', '6647830.00'),
(331, 100, 33, '736787.00', 12, '0.00', '8841444.00'),
(332, 101, 43, '707884.00', 18, '0.66', '8409661.92'),
(333, 101, 9, '943634.00', 5, '0.00', '4718170.00'),
(334, 101, 87, '919543.00', 2, '0.00', '1839086.00');

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
(1, 5, 1, 370299167554070, '2019-12-25 09:26:38', '47902770.76', 'Submitted', '13', '2019-12-24 02:26:38', '2019-12-24 02:26:38', NULL),
(2, 9, 2, 5165786211059047, '2019-12-25 09:26:53', '27125871.00', 'Canceled', '20', '2019-12-24 02:26:53', '2019-12-24 02:26:53', NULL),
(3, 9, 3, 2661900218952858, '2019-12-25 09:27:06', '87075437.70', 'Canceled', '35', '2019-12-24 02:27:06', '2019-12-24 02:27:06', NULL),
(4, 4, 4, 2720960591826672, '2019-12-25 09:27:07', '134982643.00', 'Completed', '6', '2019-12-24 02:27:07', '2019-12-24 02:27:07', NULL),
(5, 4, 5, 5442582542351806, '2019-12-25 09:27:08', '85637415.30', 'Canceled', '13', '2019-12-24 02:27:08', '2019-12-24 02:27:08', NULL),
(6, 6, 6, 4916962059219051, '2019-12-25 09:27:09', '98640818.00', 'Canceled', '35', '2019-12-24 02:27:09', '2019-12-24 02:27:09', NULL),
(7, 5, 7, 6011863352123603, '2019-12-25 09:27:09', '57944410.44', 'Submitted', '18', '2019-12-24 02:27:09', '2019-12-24 02:27:09', NULL),
(8, 4, 8, 2562730119569067, '2019-12-25 09:27:10', '182733477.00', 'Submitted', '5', '2019-12-24 02:27:10', '2019-12-24 02:27:10', NULL),
(9, 2, 9, 5154900280126339, '2019-12-25 09:27:10', '186960467.00', 'Completed', '14', '2019-12-24 02:27:10', '2019-12-24 02:27:10', NULL),
(10, 1, 10, 4485420842607141, '2019-12-25 09:27:11', '60237347.00', 'Canceled', '32', '2019-12-24 02:27:11', '2019-12-24 02:27:11', NULL),
(11, 4, 11, 5398438990324239, '2019-12-25 09:27:11', '25791913.00', 'Submitted', '23', '2019-12-24 02:27:11', '2019-12-24 02:27:11', NULL),
(12, 1, 12, 345360667632790, '2019-12-25 09:27:12', '93867322.72', 'Canceled', '24', '2019-12-24 02:27:12', '2019-12-24 02:27:12', NULL),
(13, 4, 13, 2475808675611477, '2019-12-25 09:27:13', '24344616.00', 'Submitted', '14', '2019-12-24 02:27:13', '2019-12-24 02:27:13', NULL),
(14, 7, 14, 4929862815063253, '2019-12-25 09:27:14', '121792902.92', 'Completed', '6', '2019-12-24 02:27:14', '2019-12-24 02:27:14', NULL),
(15, 5, 15, 371860543727745, '2019-12-25 09:27:14', '29839937.00', 'Canceled', '36', '2019-12-24 02:27:14', '2019-12-24 02:27:14', NULL),
(16, 7, 16, 5386178364751310, '2019-12-25 09:27:15', '26696465.00', 'Completed', '5', '2019-12-24 02:27:15', '2019-12-24 02:27:15', NULL),
(17, 1, 17, 4539750941659684, '2019-12-25 09:27:16', '54140624.00', 'Canceled', '12', '2019-12-24 02:27:16', '2019-12-24 02:27:16', NULL),
(18, 3, 18, 6011594744559713, '2019-12-25 09:27:16', '87050604.68', 'Completed', '13', '2019-12-24 02:27:16', '2019-12-24 02:27:16', NULL),
(19, 2, 19, 4916124485508363, '2019-12-25 09:27:17', '36778573.00', 'Completed', '33', '2019-12-24 02:27:17', '2019-12-24 02:27:17', NULL),
(20, 1, 20, 6011958062100949, '2019-12-25 09:27:18', '69832531.00', 'Completed', '10', '2019-12-24 02:27:18', '2019-12-24 02:27:18', NULL),
(21, 10, 21, 2221204694367068, '2019-12-25 09:27:18', '46492965.00', 'Submitted', '32', '2019-12-24 02:27:18', '2019-12-24 02:27:18', NULL),
(22, 3, 22, 4485277526915764, '2019-12-25 09:27:19', '26476581.60', 'Completed', '6', '2019-12-24 02:27:19', '2019-12-24 02:27:19', NULL),
(23, 8, 23, 4716033430036200, '2019-12-25 09:27:19', '112608436.00', 'Completed', '16', '2019-12-24 02:27:19', '2019-12-24 02:27:19', NULL),
(24, 5, 24, 2692180731272695, '2019-12-25 09:27:20', '50131709.00', 'Canceled', '30', '2019-12-24 02:27:20', '2019-12-24 02:27:20', NULL),
(25, 6, 25, 2221843012736429, '2019-12-25 09:27:21', '76720299.10', 'Completed', '21', '2019-12-24 02:27:21', '2019-12-24 02:27:21', NULL),
(26, 8, 26, 2325412843743783, '2019-12-25 09:27:21', '76767456.00', 'Canceled', '18', '2019-12-24 02:27:21', '2019-12-24 02:27:21', NULL),
(27, 5, 27, 4539414116481891, '2019-12-25 09:27:22', '7841148.00', 'Canceled', '14', '2019-12-24 02:27:22', '2019-12-24 02:27:22', NULL),
(28, 2, 28, 6011090072995702, '2019-12-25 09:27:22', '29994099.00', 'Completed', '17', '2019-12-24 02:27:22', '2019-12-24 02:27:22', NULL),
(29, 5, 29, 4556806820746865, '2019-12-25 09:27:23', '3847817.00', 'Submitted', '21', '2019-12-24 02:27:23', '2019-12-24 02:27:23', NULL),
(30, 9, 30, 6011376616031223, '2019-12-25 09:27:23', '103740917.53', 'Canceled', '34', '2019-12-24 02:27:23', '2019-12-24 02:27:23', NULL),
(31, 10, 31, 4929093328530295, '2019-12-25 09:27:24', '39361535.60', 'Submitted', '16', '2019-12-24 02:27:24', '2019-12-24 02:27:24', NULL),
(32, 2, 32, 4485026652239360, '2019-12-25 09:27:25', '90626563.00', 'Submitted', '15', '2019-12-24 02:27:25', '2019-12-24 02:27:25', NULL),
(33, 6, 33, 5103061867336049, '2019-12-25 09:27:26', '43522065.48', 'Completed', '20', '2019-12-24 02:27:26', '2019-12-24 02:27:26', NULL),
(34, 8, 34, 4485637356795984, '2019-12-25 09:27:26', '20109109.00', 'Completed', '37', '2019-12-24 02:27:26', '2019-12-24 02:27:26', NULL),
(35, 7, 35, 4768978836674995, '2019-12-25 09:27:27', '70772037.90', 'Canceled', '1', '2019-12-24 02:27:27', '2019-12-24 02:27:27', NULL),
(36, 3, 36, 4916768947309040, '2019-12-25 09:27:28', '17937090.00', 'Completed', '25', '2019-12-24 02:27:28', '2019-12-24 02:27:28', NULL),
(37, 5, 37, 5285632623330391, '2019-12-25 09:27:28', '16332421.56', 'Canceled', '15', '2019-12-24 02:27:28', '2019-12-24 02:27:28', NULL),
(38, 1, 38, 5162593298870053, '2019-12-25 09:27:29', '53769962.00', 'Completed', '37', '2019-12-24 02:27:29', '2019-12-24 02:27:29', NULL),
(39, 8, 39, 5528175112063385, '2019-12-25 09:27:29', '56549022.00', 'Completed', '35', '2019-12-24 02:27:29', '2019-12-24 02:27:29', NULL),
(40, 5, 40, 5277895683174799, '2019-12-25 09:27:30', '57453975.38', 'Completed', '25', '2019-12-24 02:27:30', '2019-12-24 02:27:30', NULL),
(41, 1, 41, 5573753640841987, '2019-12-25 09:27:31', '104689224.00', 'Submitted', '33', '2019-12-24 02:27:31', '2019-12-24 02:27:31', NULL),
(42, 4, 42, 5532212832482340, '2019-12-25 09:27:31', '51433788.00', 'Canceled', '13', '2019-12-24 02:27:31', '2019-12-24 02:27:31', NULL),
(43, 7, 43, 4916703510222775, '2019-12-25 09:27:32', '36987071.16', 'Canceled', '34', '2019-12-24 02:27:32', '2019-12-24 02:27:32', NULL),
(44, 1, 44, 4929810086123827, '2019-12-25 09:27:33', '29466795.00', 'Submitted', '27', '2019-12-24 02:27:33', '2019-12-24 02:27:33', NULL),
(45, 3, 45, 4485776023497556, '2019-12-25 09:27:34', '16513832.08', 'Completed', '31', '2019-12-24 02:27:34', '2019-12-24 02:27:34', NULL),
(46, 3, 46, 4711578470707271, '2019-12-25 09:27:34', '80800627.00', 'Completed', '27', '2019-12-24 02:27:34', '2019-12-24 02:27:34', NULL),
(47, 2, 47, 5175247818201928, '2019-12-25 09:27:35', '16524253.61', 'Submitted', '5', '2019-12-24 02:27:35', '2019-12-24 02:27:35', NULL),
(48, 7, 48, 342306242254439, '2019-12-25 09:27:35', '33042431.00', 'Completed', '34', '2019-12-24 02:27:35', '2019-12-24 02:27:35', NULL),
(49, 4, 49, 4217254929032179, '2019-12-25 09:27:36', '92370151.00', 'Submitted', '4', '2019-12-24 02:27:36', '2019-12-24 02:27:36', NULL),
(50, 9, 50, 4539173742637983, '2019-12-25 09:27:36', '39794800.00', 'Submitted', '22', '2019-12-24 02:27:36', '2019-12-24 02:27:36', NULL),
(51, 6, 51, 4556419724769130, '2019-12-25 09:27:37', '12427530.60', 'Canceled', '4', '2019-12-24 02:27:37', '2019-12-24 02:27:37', NULL),
(52, 10, 52, 4916526572205440, '2019-12-25 09:27:37', '25414145.00', 'Submitted', '6', '2019-12-24 02:27:37', '2019-12-24 02:27:37', NULL),
(53, 2, 53, 2410286711889639, '2019-12-25 09:27:38', '60166075.69', 'Completed', '32', '2019-12-24 02:27:38', '2019-12-24 02:27:38', NULL),
(54, 7, 54, 5137935029622117, '2019-12-25 09:27:38', '99651264.00', 'Submitted', '17', '2019-12-24 02:27:39', '2019-12-24 02:27:39', NULL),
(55, 1, 55, 2584709300804180, '2019-12-25 09:27:39', '30296059.00', 'Canceled', '22', '2019-12-24 02:27:39', '2019-12-24 02:27:39', NULL),
(56, 6, 56, 4539519540209070, '2019-12-25 09:27:40', '78720506.08', 'Completed', '37', '2019-12-24 02:27:40', '2019-12-24 02:27:40', NULL),
(57, 8, 57, 4024007161476162, '2019-12-25 09:27:40', '1895159.00', 'Completed', '4', '2019-12-24 02:27:40', '2019-12-24 02:27:40', NULL),
(58, 4, 58, 2720576440621690, '2019-12-25 09:27:41', '12842113.00', 'Submitted', '22', '2019-12-24 02:27:41', '2019-12-24 02:27:41', NULL),
(59, 5, 59, 4539779718586788, '2019-12-25 09:27:41', '26442177.00', 'Submitted', '8', '2019-12-24 02:27:41', '2019-12-24 02:27:41', NULL),
(60, 3, 60, 4024007128715629, '2019-12-25 09:27:42', '17137954.00', 'Completed', '18', '2019-12-24 02:27:42', '2019-12-24 02:27:42', NULL),
(61, 9, 61, 5176703233463252, '2019-12-25 09:27:42', '3016771.00', 'Submitted', '9', '2019-12-24 02:27:42', '2019-12-24 02:27:42', NULL),
(62, 8, 62, 2458099171060119, '2019-12-25 09:27:43', '20235291.76', 'Completed', '10', '2019-12-24 02:27:43', '2019-12-24 02:27:43', NULL),
(63, 6, 63, 4485866824799, '2019-12-25 09:27:43', '41486267.00', 'Canceled', '31', '2019-12-24 02:27:43', '2019-12-24 02:27:43', NULL),
(64, 1, 64, 4024007196815, '2019-12-25 09:27:44', '12674623.42', 'Canceled', '10', '2019-12-24 02:27:44', '2019-12-24 02:27:44', NULL),
(65, 9, 65, 2513252430695802, '2019-12-25 09:27:44', '1639992.00', 'Completed', '22', '2019-12-24 02:27:44', '2019-12-24 02:27:44', NULL),
(66, 9, 66, 5492162639932443, '2019-12-25 09:27:45', '36324818.87', 'Submitted', '36', '2019-12-24 02:27:45', '2019-12-24 02:27:45', NULL),
(67, 3, 67, 2617877384783405, '2019-12-25 09:27:46', '33505137.00', 'Completed', '31', '2019-12-24 02:27:46', '2019-12-24 02:27:46', NULL),
(68, 10, 68, 6011985613845540, '2019-12-25 09:27:46', '5467125.00', 'Completed', '30', '2019-12-24 02:27:46', '2019-12-24 02:27:46', NULL),
(69, 5, 69, 4539634280621499, '2019-12-25 09:27:47', '34030775.00', 'Submitted', '1', '2019-12-24 02:27:47', '2019-12-24 02:27:47', NULL),
(70, 3, 70, 5127270154429233, '2019-12-25 09:27:47', '1603382.00', 'Completed', '9', '2019-12-24 02:27:47', '2019-12-24 02:27:47', NULL),
(71, 6, 71, 5468665422230460, '2019-12-25 09:27:48', '34317412.55', 'Submitted', '15', '2019-12-24 02:27:48', '2019-12-24 02:27:48', NULL),
(72, 4, 72, 5398417955287268, '2019-12-25 09:27:48', '88406261.40', 'Completed', '15', '2019-12-24 02:27:48', '2019-12-24 02:27:48', NULL),
(73, 3, 73, 2383220736590446, '2019-12-25 09:27:49', '22242709.00', 'Completed', '17', '2019-12-24 02:27:49', '2019-12-24 02:27:49', NULL),
(74, 10, 74, 2353896783734312, '2019-12-25 09:27:49', '18589369.16', 'Submitted', '35', '2019-12-24 02:27:49', '2019-12-24 02:27:49', NULL),
(75, 3, 75, 4556746325118808, '2019-12-25 09:27:50', '65370784.20', 'Submitted', '7', '2019-12-24 02:27:50', '2019-12-24 02:27:50', NULL),
(76, 1, 76, 6011516184009925, '2019-12-25 09:27:50', '30546440.00', 'Completed', '30', '2019-12-24 02:27:50', '2019-12-24 02:27:50', NULL),
(77, 7, 77, 6011128966960331, '2019-12-25 09:27:51', '21443835.65', 'Completed', '17', '2019-12-24 02:27:51', '2019-12-24 02:27:51', NULL),
(78, 3, 78, 2720685265686942, '2019-12-25 09:27:52', '31355304.00', 'Submitted', '33', '2019-12-24 02:27:52', '2019-12-24 02:27:52', NULL),
(79, 5, 79, 2366736788389123, '2019-12-25 09:27:52', '4645098.00', 'Canceled', '18', '2019-12-24 02:27:52', '2019-12-24 02:27:52', NULL),
(80, 1, 80, 4539341518081559, '2019-12-25 09:27:53', '10810004.00', 'Submitted', '11', '2019-12-24 02:27:53', '2019-12-24 02:27:53', NULL),
(81, 8, 81, 4532669619793053, '2019-12-25 09:27:53', '19839912.00', 'Completed', '20', '2019-12-24 02:27:53', '2019-12-24 02:27:53', NULL),
(82, 10, 82, 5556576714713795, '2019-12-25 09:27:54', '27639913.00', 'Submitted', '37', '2019-12-24 02:27:54', '2019-12-24 02:27:54', NULL),
(83, 7, 83, 374348380364654, '2019-12-25 09:27:54', '4145395.12', 'Canceled', '6', '2019-12-24 02:27:54', '2019-12-24 02:27:54', NULL),
(84, 8, 84, 4532554689541204, '2019-12-25 09:27:55', '11830886.14', 'Submitted', '24', '2019-12-24 02:27:55', '2019-12-24 02:27:55', NULL),
(85, 3, 85, 4539158969844958, '2019-12-25 09:27:55', '1172380.56', 'Canceled', '37', '2019-12-24 02:27:55', '2019-12-24 02:27:55', NULL),
(86, 1, 86, 5509827726747158, '2019-12-25 09:27:56', '41530379.45', 'Canceled', '21', '2019-12-24 02:27:56', '2019-12-24 02:27:56', NULL),
(87, 3, 87, 5448461366956764, '2019-12-25 09:27:57', '39964183.40', 'Completed', '12', '2019-12-24 02:27:57', '2019-12-24 02:27:57', NULL),
(88, 3, 88, 2683599355362626, '2019-12-25 09:27:57', '0.00', 'Canceled', '15', '2019-12-24 02:27:57', '2019-12-24 02:27:57', NULL),
(89, 1, 89, 4485463618403220, '2019-12-25 09:27:58', '24816210.14', 'Canceled', '35', '2019-12-24 02:27:58', '2019-12-24 02:27:58', NULL),
(90, 3, 90, 5211913176754107, '2019-12-25 09:27:58', '4141173.84', 'Submitted', '5', '2019-12-24 02:27:58', '2019-12-24 02:27:58', NULL),
(91, 1, 91, 6011861974126293, '2019-12-25 09:27:59', '27919404.00', 'Canceled', '3', '2019-12-24 02:27:59', '2019-12-24 02:27:59', NULL),
(92, 5, 92, 5543502852681384, '2019-12-25 09:27:59', '26798598.00', 'Completed', '1', '2019-12-24 02:27:59', '2019-12-24 02:27:59', NULL),
(93, 3, 93, 6011582079350469, '2019-12-25 09:28:00', '33315561.00', 'Completed', '14', '2019-12-24 02:28:00', '2019-12-24 02:28:00', NULL),
(94, 2, 94, 2306066944392925, '2019-12-25 09:28:00', '13207519.37', 'Canceled', '5', '2019-12-24 02:28:00', '2019-12-24 02:28:00', NULL),
(95, 10, 95, 373863924127491, '2019-12-25 09:28:01', '2206830.00', 'Completed', '33', '2019-12-24 02:28:01', '2019-12-24 02:28:01', NULL),
(96, 8, 96, 4532543375305, '2019-12-25 09:28:01', '14235249.96', 'Completed', '10', '2019-12-24 02:28:01', '2019-12-24 02:28:01', NULL),
(97, 8, 97, 4024007183117182, '2019-12-25 09:28:02', '6395985.48', 'Completed', '18', '2019-12-24 02:28:02', '2019-12-24 02:28:02', NULL),
(98, 4, 98, 6011088580474491, '2019-12-25 09:28:02', '12194659.96', 'Submitted', '10', '2019-12-24 02:28:02', '2019-12-24 02:28:02', NULL),
(99, 3, 99, 6011824427565046, '2019-12-25 09:28:03', '0.00', 'Completed', '3', '2019-12-24 02:28:03', '2019-12-24 02:28:03', NULL),
(100, 7, 100, 5114832631048160, '2019-12-25 09:28:03', '35309314.00', 'Submitted', '15', '2019-12-24 02:28:03', '2019-12-24 02:28:03', NULL),
(101, 5, 101, 6011584677427160, '2019-12-25 09:28:04', '14966917.92', 'Submitted', '32', '2019-12-24 02:28:04', '2019-12-24 02:28:04', NULL);

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
(1, 'MasterCard', '6', '2019-12-24 02:26:24', '2019-12-24 02:26:24', NULL),
(2, 'Visa', '14', '2019-12-24 02:26:24', '2019-12-24 02:26:24', NULL),
(3, 'American Express', '10', '2019-12-24 02:26:24', '2019-12-24 02:50:11', NULL),
(4, 'MasterCard', '15', '2019-12-24 02:26:24', '2019-12-24 02:26:24', NULL),
(5, 'American Express', '4', '2019-12-24 02:26:24', '2019-12-24 02:26:24', NULL),
(6, 'MasterCard', '4', '2019-12-24 02:26:39', '2019-12-24 02:26:39', NULL),
(7, 'Visa', '8', '2019-12-24 02:26:39', '2019-12-24 02:26:39', NULL),
(8, 'Visa Retired', '28', '2019-12-24 02:26:40', '2019-12-24 02:26:40', NULL),
(9, 'MasterCard', '38', '2019-12-24 02:26:40', '2019-12-24 02:26:40', NULL),
(10, 'Visa', '14', '2019-12-24 02:26:40', '2019-12-24 02:26:40', NULL);

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
(1, 'Position.*', '10', '2019-12-24 02:26:19', '2019-12-24 02:26:19', NULL),
(2, 'Position.Create', '12', '2019-12-24 02:26:19', '2019-12-24 02:26:19', NULL),
(3, 'Position.Read', '9', '2019-12-24 02:26:19', '2019-12-24 02:26:19', NULL),
(4, 'Position.Update', '12', '2019-12-24 02:26:19', '2019-12-24 02:26:19', NULL),
(5, 'Position.Delete', '15', '2019-12-24 02:26:19', '2019-12-24 02:26:19', NULL),
(6, 'Employee.*', '17', '2019-12-24 02:26:19', '2019-12-24 02:26:19', NULL),
(7, 'Employee.Create', '7', '2019-12-24 02:26:19', '2019-12-24 02:26:19', NULL),
(8, 'Employee.Read', '11', '2019-12-24 02:26:19', '2019-12-24 02:26:19', NULL),
(9, 'Employee.Update', '4', '2019-12-24 02:26:19', '2019-12-24 02:26:19', NULL),
(10, 'Employee.Delete', '20', '2019-12-24 02:26:19', '2019-12-24 02:26:19', NULL),
(11, 'Role.*', '18', '2019-12-24 02:26:19', '2019-12-24 02:26:19', NULL),
(12, 'Role.Create', '20', '2019-12-24 02:26:19', '2019-12-24 02:26:19', NULL),
(13, 'Role.Read', '15', '2019-12-24 02:26:19', '2019-12-24 02:26:19', NULL),
(14, 'Role.Update', '16', '2019-12-24 02:26:20', '2019-12-24 02:26:20', NULL),
(15, 'Role.Delete', '14', '2019-12-24 02:26:20', '2019-12-24 02:26:20', NULL),
(16, 'Permission.*', '3', '2019-12-24 02:26:20', '2019-12-24 02:26:20', NULL),
(17, 'Permission.Create', '15', '2019-12-24 02:26:20', '2019-12-24 02:26:20', NULL),
(18, 'Permission.Read', '10', '2019-12-24 02:26:20', '2019-12-24 02:26:20', NULL),
(19, 'Permission.Update', '3', '2019-12-24 02:26:20', '2019-12-24 02:26:20', NULL),
(20, 'Permission.Delete', '8', '2019-12-24 02:26:20', '2019-12-24 02:26:20', NULL),
(21, 'Customer.*', '10', '2019-12-24 02:26:20', '2019-12-24 02:50:37', NULL),
(22, 'Customer.Create', '10', '2019-12-24 02:26:20', '2019-12-24 02:26:20', NULL),
(23, 'Customer.Read', '12', '2019-12-24 02:26:20', '2019-12-24 02:26:20', NULL),
(24, 'Customer.Update', '12', '2019-12-24 02:26:20', '2019-12-24 02:26:20', NULL),
(25, 'Customer.Delete', '6', '2019-12-24 02:26:20', '2019-12-24 02:26:20', NULL),
(26, 'ItemType.*', '18', '2019-12-24 02:26:20', '2019-12-24 02:26:20', NULL),
(27, 'ItemType.Create', '1', '2019-12-24 02:26:20', '2019-12-24 02:26:20', NULL),
(28, 'ItemType.Read', '20', '2019-12-24 02:26:20', '2019-12-24 02:26:20', NULL),
(29, 'ItemType.Update', '18', '2019-12-24 02:26:20', '2019-12-24 02:26:20', NULL),
(30, 'ItemType.Delete', '7', '2019-12-24 02:26:20', '2019-12-24 02:26:20', NULL),
(31, 'Item.*', '11', '2019-12-24 02:26:20', '2019-12-24 02:26:20', NULL),
(32, 'Item.Create', '15', '2019-12-24 02:26:21', '2019-12-24 02:26:21', NULL),
(33, 'Item.Read', '18', '2019-12-24 02:26:21', '2019-12-24 02:26:21', NULL),
(34, 'Item.Update', '10', '2019-12-24 02:26:21', '2019-12-24 02:26:21', NULL),
(35, 'Item.Delete', '20', '2019-12-24 02:26:21', '2019-12-24 02:26:21', NULL),
(36, 'ItemHistory.*', '18', '2019-12-24 02:26:21', '2019-12-24 02:26:21', NULL),
(37, 'ItemHistory.Create', '13', '2019-12-24 02:26:21', '2019-12-24 02:26:21', NULL),
(38, 'ItemHistory.Read', '20', '2019-12-24 02:26:21', '2019-12-24 02:26:21', NULL),
(39, 'ItemHistory.Update', '12', '2019-12-24 02:26:21', '2019-12-24 02:26:21', NULL),
(40, 'ItemHistory.Delete', '15', '2019-12-24 02:26:21', '2019-12-24 02:26:21', NULL),
(41, 'Order.*', '7', '2019-12-24 02:26:21', '2019-12-24 02:26:21', NULL),
(42, 'Order.Create', '9', '2019-12-24 02:26:21', '2019-12-24 02:26:21', NULL),
(43, 'Order.Read', '20', '2019-12-24 02:26:21', '2019-12-24 02:26:21', NULL),
(44, 'Order.Update', '19', '2019-12-24 02:26:21', '2019-12-24 02:26:21', NULL),
(45, 'Order.Delete', '14', '2019-12-24 02:26:21', '2019-12-24 02:26:21', NULL),
(46, 'PaymentMethod.*', '15', '2019-12-24 02:26:21', '2019-12-24 02:26:21', NULL),
(47, 'PaymentMethod.Create', '13', '2019-12-24 02:26:21', '2019-12-24 02:26:21', NULL),
(48, 'PaymentMethod.Read', '6', '2019-12-24 02:26:21', '2019-12-24 02:26:21', NULL),
(49, 'PaymentMethod.Update', '19', '2019-12-24 02:26:21', '2019-12-24 02:26:21', NULL),
(50, 'PaymentMethod.Delete', '8', '2019-12-24 02:26:21', '2019-12-24 02:26:21', NULL),
(51, 'Payment.*', '8', '2019-12-24 02:26:21', '2019-12-24 02:26:21', NULL),
(52, 'Payment.Create', '20', '2019-12-24 02:26:21', '2019-12-24 02:26:21', NULL),
(53, 'Payment.Read', '15', '2019-12-24 02:26:21', '2019-12-24 02:26:21', NULL),
(54, 'Payment.Update', '16', '2019-12-24 02:26:22', '2019-12-24 02:26:22', NULL),
(55, 'Payment.Delete', '17', '2019-12-24 02:26:22', '2019-12-24 02:26:22', NULL);

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
(1, 'State', '0', '2019-12-24 02:26:18', '2019-12-24 02:26:18', NULL),
(2, 'Range Manager', '10', '2019-12-24 02:26:18', '2019-12-24 02:26:18', NULL),
(3, 'Solderer', '9', '2019-12-24 02:26:18', '2019-12-24 02:26:18', NULL),
(4, 'Online Marketing Analyst', '2', '2019-12-24 02:26:18', '2019-12-24 02:26:18', NULL),
(5, 'Financial Analyst', '1', '2019-12-24 02:26:18', '2019-12-24 02:26:18', NULL),
(6, 'Economics Teacher', '12', '2019-12-24 02:26:38', '2019-12-24 02:49:07', NULL),
(7, 'Molder', '3', '2019-12-24 02:26:38', '2019-12-24 02:26:38', NULL),
(8, 'Shipping and Receiving Clerk', '3', '2019-12-24 02:26:38', '2019-12-24 02:26:38', NULL),
(9, 'HVAC Mechanic', '8', '2019-12-24 02:26:38', '2019-12-24 02:26:38', NULL),
(10, 'Sound Engineering Technician', '1', '2019-12-24 02:26:38', '2019-12-24 02:26:38', NULL);

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
(1, 'ratione', '17', '2019-12-24 02:26:19', '2019-12-24 02:26:19', NULL),
(2, 'et', '5', '2019-12-24 02:26:19', '2019-12-24 02:50:25', NULL);

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
(1, 1, 55),
(2, 1, 51),
(3, 1, 24),
(4, 1, 33),
(5, 1, 51),
(6, 1, 33),
(7, 1, 47),
(8, 1, 31),
(9, 1, 43),
(10, 1, 46),
(11, 2, 23);

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
('payment', '{\"status\":[\"Submitted\",\"Completed\",\"Canceled\"],\"allow\":[\"Submitted\",\"Completed\"]}');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
