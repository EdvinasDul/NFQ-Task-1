-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2018 at 08:45 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nfq_task`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(6) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `postal_code` varchar(255) NOT NULL,
  `total` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `email`, `customer_name`, `address`, `city`, `postal_code`, `total`, `created_at`) VALUES
(1, 'ppilsworth0@photobucket.com', 'Pepillo Pilsworth', '8964 Sycamore Alley', 'Huerta Grande', '5174', 0, '2018-04-03 15:57:04'),
(5, '', '', '', '', '', 603.9, '2018-09-18 13:59:43'),
(6, 'edvinas.dulskas@gmail.com', 'ssdd', 'sddsd', 'sdsd', 'sdss', 603.9, '2018-09-18 13:59:51'),
(7, 'as@asd', 'sdd', 'd', 'd', 'd', 3510.9, '2018-09-18 14:16:00'),
(8, 'name@gmail.com', 'NoName', 'Street 1', 'City', 'LT-23568', 4964.4, '2018-09-18 14:21:07'),
(9, 'cpaddie8@newsvine.com', 'Chuck Paddie', '1 Thierer Trail', 'Trzci?sko Zdrój', '74-510', 0, '2018-03-21 10:09:51'),
(10, '', '', '', '', '', 4964.4, '2018-09-18 14:30:01'),
(11, '', '', '', '', '', 0, '2018-09-18 14:30:03'),
(12, '24@dd', 'rt', 'rt', 'rt', 'rt', 894.6, '2018-09-18 14:37:05'),
(13, '', '', '', '', '', 603.9, '2018-09-18 14:37:24'),
(14, '', '', '', '', '', 894.6, '2018-09-18 14:42:09'),
(15, 'ffuste@acquirethisname.com', 'Fair Fust', '752 Del Mar Plaza', 'Motala', '591 99', 0, '2017-09-26 13:35:30'),
(17, 'jratchfordg@yelp.com', 'Jamesy Ratchford', '7 Brickson Park Plaza', 'Ban Thai Tan', '14000', 0, '2018-01-22 10:38:56'),
(18, 'emcclenanh@prnewswire.com', 'Euell McClenan', '648 5th Alley', 'Velas', '9800-525', 0, '2018-07-22 02:33:13'),
(19, 'djouanoti@flickr.com', 'Delores Jouanot', '56964 Beilfuss Way', 'Bansalan', '8005', 0, '2018-07-17 13:48:20'),
(25, 'pstoneo@ed.gov', 'Pietra Stone Fewings', '91684 Fordem Road', 'Esperanza', '8513', 0, '2018-04-13 18:19:26'),
(27, 'hmcshirieq@pagesperso-orange.fr', 'Halimeda McShirie', '35054 Old Gate Terrace', 'Paris 10', '75480 CEDEX 10', 0, '2018-05-12 16:07:27'),
(28, 'siddinsr@macromedia.com', 'Sheila Iddins', '67 Pennsylvania Plaza', 'Esquel', '9200', 0, '2018-05-31 05:31:27'),
(30, 'pkirket@4shared.com', 'Perrine Kirke', '93 Ilene Pass', 'Vavozh', '427314', 0, '2018-03-22 03:22:12'),
(33, 'lstumpw@ebay.co.uk', 'Lori Stump', '220 Vidon Court', 'Arnhem', '6804', 0, '2018-04-05 00:57:52'),
(36, 'aemsonz@usgs.gov', 'Alane Emson', '2 Hansons Hill', 'Balugo', '1001', 0, '2018-06-09 00:12:47'),
(42, 'ayurchenko15@china.com.cn', 'Arielle Yurchenko', '36 Sloan Place', 'Muonio', '99301', 0, '2018-07-10 11:03:32'),
(46, 'fmcgillecole19@wordpress.com', 'Farley McGillecole', '75 Corben Junction', 'Szczurowa', '32-820', 0, '2018-06-26 13:17:47'),
(47, 'eoteague1a@last.fm', 'Emelia O\'Teague', '9542 Lakewood Trail', 'Macabugos', '1283', 0, '2017-09-19 15:55:59'),
(48, 'vgiacomozzo1b@photobucket.com', 'Vladimir Giacomozzo', '877 Manley Pass', '?ernelavci', '9265', 0, '2018-07-16 05:41:01'),
(49, 'ast2@google.co.uk', 'Angy St Ledger', '71928 Cascade Terrace', 'Málaga', '682027', 0, '2018-09-18 14:53:06'),
(50, 'iyelyashev3@angelfire.com', 'Iggy Yelyashev', '30 Northport Plaza', 'Libertador General San Martín', '4514', 0, '2018-09-18 14:53:06'),
(51, 'jdwelly6@microsoft.com', 'Joannes Dwelly', '5254 American Ash Place', 'Águia Branca', '29795-000', 0, '2018-09-18 14:53:06'),
(52, 'ehughland7@guardian.co.uk', 'Eda Hughland', '242 Stephen Drive', 'Dan Khun Thot', '30210', 0, '2018-09-18 14:53:06'),
(53, 'jwield8@a8.net', 'Jareb Wield', '32505 Amoth Trail', 'Aurora', '7020', 0, '2018-09-18 14:53:06'),
(54, 'cmaccartana@amazon.co.uk', 'Candra MacCartan', '033 Maple Wood Terrace', 'Whittier', '90610', 0, '2018-09-18 14:53:06'),
(55, 'dgregoriob@g.co', 'Daron Gregorio', '4715 Sullivan Junction', 'Galamares', '2710-210', 0, '2018-09-18 14:53:06'),
(56, 'vbatyc@hostgator.com', 'Vyky Baty', '3 Loftsgordon Lane', 'Le Lamentin', '97283 CEDEX 1', 0, '2018-09-18 14:53:06'),
(57, 'tpepperralle@paypal.com', 'Teirtza Pepperrall', '81643 Dunning Road', 'Rzyki', '34-125', 0, '2018-09-18 14:53:06'),
(58, 'tskelingtonh@geocities.com', 'Taffy Skelington', '0152 Trailsway Point', 'Nova Era', '35920-000', 0, '2018-09-18 14:53:06'),
(59, 'ttulipj@economist.com', 'Thoma Tulip', '5994 Oak Valley Junction', 'Iznoski', '658476', 0, '2018-09-18 14:53:06'),
(60, 'myurmanovevk@blogs.com', 'Mignon Yurmanovev', '4835 Carberry Center', 'La Motte-Servolex', '73295 CEDEX', 0, '2018-09-18 14:53:06'),
(61, 'bnapletonl@bravesites.com', 'Betteann Napleton', '70217 Lerdahl Lane', 'Magay', '6344', 0, '2018-09-18 14:53:06'),
(62, 'brenowdenm@twitpic.com', 'Bard Renowden', '59 Pierstorff Plaza', 'Pantin', '93504 CEDEX', 0, '2018-09-18 14:53:06'),
(63, 'elovemoreo@pen.io', 'Erick Lovemore', '39 Mallory Junction', 'Novoaleksandrovsk', '356003', 0, '2018-09-18 14:53:06'),
(64, 'apinckp@ebay.co.uk', 'Armando Pinck', '3843 Algoma Court', 'Boynton Beach', '33436', 0, '2018-09-18 14:53:06'),
(65, 'czylberdikr@omniture.com', 'Cornelius Zylberdik', '743 Corscot Court', 'Bagé', '96400-000', 0, '2018-09-18 14:53:06'),
(66, 'jclaxsonu@booking.com', 'Jermaine Claxson', '6303 Hovde Avenue', 'Luknovo', '603899', 0, '2018-09-18 14:53:06'),
(67, 'gbuttv@studiopress.com', 'Gregg Butt', '26 Summerview Way', 'Ban Lam Luk Ka', '31120', 0, '2018-09-18 14:53:06'),
(68, 'lriordanw@ebay.com', 'Lotte Riordan', '10715 Chinook Circle', 'Tekn?f', '4762', 0, '2018-09-18 14:53:06'),
(69, 'mmuckx@google.com', 'Marabel Muck', '4986 Mccormick Junction', 'Inhumas', '75400-000', 0, '2018-09-18 14:53:06'),
(70, 'mscarlettz@boston.com', 'Marika Scarlett', '58 Magdeline Point', 'Bergville', '3354', 0, '2018-09-18 14:53:06'),
(71, 'tlassey11@mozilla.com', 'Thatcher Lassey', '6951 Cascade Court', 'Kun?ice pod Ond?ejníkem', '739 13', 0, '2018-09-18 14:53:06'),
(72, 'mmustin14@archive.org', 'Mart Mustin', '734 Mallory Way', 'Monte Plata', '11102', 0, '2018-09-18 14:53:06'),
(73, 'mwinspurr15@amazon.co.uk', 'Maje Winspurr', '930 Anthes Center', 'Brits', '0277', 0, '2018-09-18 14:53:06'),
(74, 'kaskaw16@diigo.com', 'Kellsie Askaw', '23763 Tennyson Center', 'Buriram', '31180', 0, '2018-09-18 14:53:06'),
(75, 'cwootton17@arstechnica.com', 'Coral Wootton', '93 Columbus Point', 'Czarno?y?y', '98-310', 0, '2018-09-18 14:53:06'),
(76, 'oreignolds18@xrea.com', 'Oswell Reignolds', '0 Cherokee Park', 'Komsomolsk-on-Amur', '681008', 0, '2018-09-18 14:53:06'),
(77, 'dbamfield1a@ucoz.ru', 'Dill Bamfield', '9699 Nobel Alley', 'Bandhagen', '124 22', 0, '2018-09-18 14:53:06'),
(78, 'tcartmell1b@lycos.com', 'Teresina Cartmell', '3 Shelley Hill', 'Penticton', 'V2A', 0, '2018-09-18 14:53:06'),
(79, 'dhamblington1c@prweb.com', 'Daffie Hamblington', '2341 Summerview Pass', 'Agen', '47923 CEDEX 9', 0, '2018-09-18 14:53:06'),
(80, 'pgerriet0@census.gov', 'Paxton Gerriet', '25 Boyd Avenue', 'Cipatat', 'LT-555', 0, '2018-09-18 14:55:02'),
(81, 'fghirardi1@desdev.cn', 'Felipa Ghirardi', '2 South Alley', 'San Andrés', '880008', 0, '2018-09-18 14:55:02'),
(82, 'dmeates2@oracle.com', 'Daron Meates', '57 Crescent Oaks Court', 'Zhuhu', 'LT-555', 0, '2018-09-18 14:55:02'),
(83, 'mpourveer3@jigsy.com', 'Maurizio Pourveer', '7992 Harbort Junction', 'Erpeldange', 'L-9172', 0, '2018-09-18 14:55:02'),
(84, 'chenric4@digg.com', 'Cherry Henric', '7442 Namekagon Crossing', 'Gaoqiao', 'LT-555', 0, '2018-09-18 14:55:02'),
(85, 'kde5@businessweek.com', 'Kellby De La Hay', '3 Ridgeview Way', 'Daping', 'LT-555', 0, '2018-09-18 14:55:02'),
(86, 'vhedderly6@angelfire.com', 'Vicky Hedderly', '2915 Center Street', 'Hövsan', 'LT-555', 0, '2018-09-18 14:55:02'),
(87, 'schansonne7@cocolog-nifty.com', 'Salomone Chansonne', '86999 Beilfuss Plaza', 'Banaba', '4125', 0, '2018-09-18 14:55:02'),
(88, 'csherme8@flavors.me', 'Codie Sherme', '65 Arapahoe Plaza', 'Nakhon Phanom', '48000', 0, '2018-09-18 14:55:02'),
(89, 'alynd9@foxnews.com', 'Alonzo Lynd', '4198 Sage Alley', 'Sincé', '056450', 0, '2018-09-18 14:55:02'),
(90, 'lseeking0@aol.com', 'Loralyn Seeking', '09 Saint Paul Terrace', 'Shixiang', 'UK-321456', 0, '2018-09-18 14:56:56'),
(91, 'awinterbottom1@feedburner.com', 'Arther Winterbottom', '00 Butternut Place', 'Wuhu', 'UK-321456', 0, '2018-09-18 14:56:56'),
(92, 'jmeekin2@chronoengine.com', 'Jilly Meekin', '27982 Canary Circle', 'Hidalgo', '96980', 0, '2018-09-18 14:56:56'),
(93, 'rmeake3@meetup.com', 'Ronald Meake', '93067 Mayfield Avenue', 'T?r?t', 'UK-321456', 0, '2018-09-18 14:56:56'),
(94, 'pmcallaster4@smugmug.com', 'Patty McAllaster', '5 Trailsway Court', 'Ufimskiy', '623220', 0, '2018-09-18 14:56:57'),
(95, 'wpolfer5@pinterest.com', 'Wynne Polfer', '7 Namekagon Road', 'Juntas', '11803', 0, '2018-09-18 14:56:57'),
(96, 'sspinella6@de.vu', 'Shelagh Spinella', '3219 Lindbergh Park', 'Aguas Corrientes', 'UK-321456', 0, '2018-09-18 14:56:57'),
(97, 'cdonke7@wisc.edu', 'Carmelina Donke', '5 Duke Park', 'Semypolky', 'UK-321456', 0, '2018-09-18 14:56:57'),
(98, 'tgertray8@buzzfeed.com', 'Therine Gertray', '3 Buhler Drive', 'Kembangkerang Satu', 'UK-321456', 0, '2018-09-18 14:56:57'),
(99, 'cshark9@buzzfeed.com', 'Cahra Shark', '3162 Rockefeller Plaza', 'Salcedo', '11005', 0, '2018-09-18 14:56:57'),
(100, 'lervina@si.edu', 'Lorrin Ervin', '560 Esch Terrace', 'Privolzhsk', '155553', 0, '2018-09-18 14:56:57'),
(101, 'kduesburyb@phpbb.com', 'Ker Duesbury', '38213 Golf Course Street', 'Pomichna', 'UK-321456', 0, '2018-09-18 14:56:57'),
(102, 'sbottomorec@is.gd', 'Shelbi Bottomore', '0718 Sage Park', 'Passos', '37900-000', 0, '2018-09-18 14:56:57'),
(103, 'tded@theguardian.com', 'Talya De Souza', '4 Di Loreto Way', 'Hengshitang', 'UK-321456', 0, '2018-09-18 14:56:57'),
(104, 'bchaytore@de.vu', 'Bernetta Chaytor', '0175 Daystar Pass', 'Zhoutie', 'UK-321456', 0, '2018-09-18 14:56:57'),
(105, 'ykirkupf@tiny.cc', 'Yuri Kirkup', '517 Sage Junction', 'Kiyawa', 'UK-321456', 0, '2018-09-18 14:56:57'),
(106, 'fmccroaryg@slashdot.org', 'Fidel McCroary', '05597 Waywood Lane', 'Aguaí', '13860-000', 0, '2018-09-18 14:56:57'),
(107, 'blaugheraneh@paginegialle.it', 'Boyce Laugherane', '9879 Manufacturers Lane', 'Banag', '4234', 0, '2018-09-18 14:56:57'),
(108, 'singalli@marketwatch.com', 'Storm Ingall', '6168 Eagle Crest Parkway', 'Bairro', '2580-164', 0, '2018-09-18 14:56:57'),
(109, 'scallfj@disqus.com', 'Saraann Callf', '3969 Logan Park', 'Omaha', '68134', 0, '2018-09-18 14:56:57'),
(110, 'pjeandonk@so-net.ne.jp', 'Pavlov Jeandon', '67032 Westport Drive', 'Grammatikó', 'UK-321456', 0, '2018-09-18 14:56:57'),
(111, 'iromal@google.ru', 'Ingamar Roma', '732 Springview Drive', 'Chow?êy', 'UK-321456', 0, '2018-09-18 14:56:57'),
(112, 'gbastimanm@networkadvertising.org', 'Gwendolyn Bastiman', '93273 Bultman Road', 'Saint-Étienne', '42021 CEDEX 1', 0, '2018-09-18 14:56:57'),
(113, 'ctattersdilln@google.ru', 'Crawford Tattersdill', '78778 Delladonna Plaza', 'Oslo', '0025', 0, '2018-09-18 14:56:57'),
(114, 'gredierso@theglobeandmail.com', 'George Rediers', '55012 Warbler Trail', 'Kastrat', 'UK-321456', 0, '2018-09-18 14:56:57');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `about` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `about`, `price`, `image`) VALUES
(1, 'Maserati Epoca Blue ', 'Model: R8871618007\r\nMovement: Quartz\r\nGender: Men\'s', '290.70', 'Maserati_Epoca-min.PNG'),
(2, 'Maserati Attrazone Blue ', 'Model: R8851126001\r\nMovement: Quartz\r\nGender: Men\'s', '367.20', 'Maserati_Attrazone-min.PNG'),
(3, 'Maserati Potenza Black', 'Model: R8851108002\r\nMovement: Quartz\r\nGender: Men\'s', '236.70', 'Maserati_Potenza.PNG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
