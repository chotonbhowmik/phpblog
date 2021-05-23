-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2020 at 11:47 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ssb280-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `cat_desc` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `cat_desc`, `status`) VALUES
(1, 'Education', 'this is education category', 1),
(3, 'Politics', '', 1),
(4, 'Entertainment', '', 1),
(5, 'Business', '', 1),
(6, 'Science', '', 1),
(7, 'Sports', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `cmt_id` int(11) NOT NULL,
  `comments` text NOT NULL,
  `post_id` int(11) NOT NULL,
  `visitor_id` int(11) NOT NULL,
  `is_parent` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `cmt_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `meta` varchar(255) NOT NULL,
  `post_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `image`, `category_id`, `author_id`, `status`, `meta`, `post_date`) VALUES
(12, 'নিজের বিমানে বন্ধুদের নিয়ে গেলেন মেসি', 'দেখার মতো এক বিমান তাঁর। বিমানের গায়ে বড় হরফে লেখা ‘১০’, তাঁর জার্সি নাম্বার। বিমানের সিঁড়ির প্রতিটি ধাপে পরিবারের সদস্যদের নাম লেখা। আর ভেতরে বিলাসবহুল সব ব্যবস্থা চোখ ধাঁধিয়ে দেবে নিশ্চিত। ব্যক্তিগত বিমান তো নয় লিওনেল মেসি যেন নিজের পুরো বাড়ি নিয়ে আকাশে ওড়েন!    \r\n\r\nপরিবার নিয়ে বেড়ানো কিংবা পেশাগত কাজে দূরে কোথাও গেলে মেসি সাধারণত ব্যক্তিগত বিমান ব্যবহার করে থাকেন। এবারও ব্যতিক্রম হয়নি। বিশ্বকাপ বাছাইয়ের ম্যাচ খেলতে মেসি ব্যক্তিগত বিমানে পৌঁছেছেন আর্জেন্টিনায়। এবার ব্যক্তিগত বিমানে পরিবারের কেউ নয়, বার্সা তারকার সঙ্গী হয়েছেন তাঁর সতীর্থ, বন্ধুরা।', '382611_images.jpg', 7, 1, 1, 'messi', '2020-10-05'),
(13, 'সরকার ক্ষমতায়, কী করে দায় এড়াবে?', 'আওয়ামী লীগের সাধারণ সম্পাদক ওবায়দুল কাদের ধর্ষণের মতো সামাজিক ব্যাধির বিরুদ্ধে দলমত-নির্বিশেষে সবাইকে ঐক্যবদ্ধ হয়ে সামাজিক প্রতিরোধ গড়ে তোলার আহ্বান জানিয়েছেন। কাদের বলেছেন, ‘ধর্ষণের ঘটনায় সরকার অপরাধীদের শাস্তি দিচ্ছে। তবে এ ধরনের অপরাধের বিরুদ্ধে সামাজিক প্রতিরোধ গড়তে হবে। এ ধরনের ইস্যু নিয়ে সবাই ঐক্যবদ্ধ হয়ে প্রতিরোধ গড়ে তুলতে হবে। আমি সবাইকে ঐক্যবদ্ধ হওয়ার আহ্বান জানাচ্ছি।’\r\n\r\nসড়ক পরিবহন ও মহাসড়ক বিভাগের কর্মকর্তা ও দপ্তর প্রধানের সঙ্গে উন্নয়ন কার্যক্রম পর্যালোচনা সভা শেষে সাংবাদিকদের এক প্রশ্নের জবাবে এ কথা বলেন ওবায়দুল কাদের। আজ সোমবার সচিবালয়ে এ সভা হয়।\r\n ধর্ষণের প্রতিটি ঘটনাতেই সরকার ব্যবস্থা নিচ্ছে উল্লেখ করে সড়ক পরিবহন ও সেতুমন্ত্রী বলেন, সরকার ক্ষমতায়, কী করে দায় এড়াবে? এসব ব্যাপারে সরকার প্রশ্রয়ও দিচ্ছে না। প্রতিটি ব্যাপারে সরকার ব্যবস্থা নিচ্ছে। দলীয় পরিচয়ের কেউ থাকলেও তাকে আইনের আওতায় আনতে হবে।', '938544_265f81687f7a7ffe7314bdac4b685c9a.jpg', 3, 1, 1, 'politics', '2020-10-05'),
(14, 'করোনা আক্রান্ত তানজিন তিশা', 'কোভিড-১৯ পরীক্ষা করার দুদিন আগে থেকেই তানজিন তিশার জ্বর। স্বাদ-ঘ্রাণ পাচ্ছিলেন না। এদিকে হাতে তাঁর বেশ কয়েকটি কাজ। লক্ষণে করোনা সন্দেহ হওয়ায় ভেবেছেন পরিবার ও সহকর্মীদের কথা। নিজ উদ্যোগে হাসপাতালে গিয়ে কোভিড-১৯ পরীক্ষার জন্য নমুনা দেন তিনি। গতকাল রোববার রাতে যখন সেই পরীক্ষার রিপোর্ট হাতে পেলেন, জানতে পারেন তিনি করোনাভাইরাসে আক্রান্ত। \r\n\r\nআজ সোমবার বিকেলে প্রথম আলোকে করোনা আক্রান্তের খবরটি নিশ্চিত করেছেন তানজিন তিশা। তিনি বলেন, ‘এমনি ভালো আছি। জ্বর, খাবারের স্বাদ না পাওয়া ছাড়া আর কোনো সমস্যা হচ্ছে না। হালকা কাশিও আছে। টেস্টের রেজাল্ট পাওয়ার পর থেকেই আইসোলেশনে আছি। শুটিং ও সব কাজ বাতিল করেছি।’', '357670_tanjin_0.jpg', 4, 1, 1, 'tisha', '2020-10-05'),
(15, 'Why do we use it?', 'Why do we use it Why do we use it Why do we use it Why do we use it Why do we use it Why do we use it Why do we use it Why do we use it  Why do we use it Why do we use it Why do we use it Why do we use it Why do we use it Why do we use it Why do we use it Why do we use it  Why do we use it Why do we use it Why do we use it Why do we use it Why do we use it Why do we use it Why do we use it Why do we use it  Why do we use it Why do we use it Why do we use it Why do we use it Why do we use it Why do we use it Why do we use it Why do we use it ', '62108_1601654624458_Logo_Design-removebg-preview.png', 5, 1, 1, 'business', '2020-10-07'),
(16, 'পিস্তল হাতে সাংসদের ছবি ফেসবুকে', 'বগুড়া-৭ (গাবতলী-শাজাহানপুর) আসনের আলোচিত সাংসদ রেজাউল করিম বাবলুর পিস্তল হাতে তোলা একটি ছবি শুক্রবার সামাজিক যোগাযোগমাধ্যমে ছড়িয়ে পড়েছে। কালো রঙের নতুন ঝকঝকে পিস্তল হাতে হাসিমুখে তোলা তাঁর ছবিটি নিয়ে শুরু হয়েছে সমালোচনা।\r\n\r\nতবে সাংসদ রেজাউল করিম দাবি করেছেন, নিরাপত্তার জন্যই তিনি অস্ত্রের লাইসেন্স নিয়েছেন। সপ্তাহখানেক আগে রাজধানীর একটি অস্ত্রের দোকান থেকে তিনি ৮০ হাজার টাকায় একটি বিদেশি পিস্তল কিনেছেন। দোকানে বসে পিস্তল নাড়াচাড়া করার সময় তাঁর সঙ্গে থাকা কোনো কর্মী মুঠোফোনে ছবি তুলে তা তাঁদের ফেসবুক ওয়ালে আপলোড দিয়েছেন। সাংসদ বলেন, লাইসেন্স করা বৈধ অস্ত্রের ছবি সামাজিক যোগাযোগমাধ্যমে আপলোড দিতে আইনি কোনো বাধা নেই। তাঁর সঙ্গে থাকা কোনো কর্মী তাঁকে না বলেই ফেসবুকে দিয়েছেন। রাজনৈতিক প্রতিপক্ষ আর তাঁকে অপছন্দ করা কিছু সাংবাদিক এই ছবি ভাইরাল করে নানা অপপ্রচার চালাচ্ছেন। ', '257667_পিস্তল-হাতে-সাংসদের-ছবি-ফেসবুকে-প্রথম-আলো.png', 3, 1, 1, 'mp', '2020-10-10'),
(17, 'প্রিয় প্রতিবেশী, বন্ধ করুন ঘ্রাণবাজি', 'শুক্রবারের শুভেচ্ছা নেবেন। আজ ছুটির দিন, জানি খুব মজা করছেন। খুব আয়োজন করে রান্না করছেন পোলাও, গরুর মাংস। সঙ্গে আছে লাল লাল গলদা চিংড়ি। আজ আমাদের বুয়া আসেনি, তাই বলে আপনারা এমন অমানবিক হতে পারেন না। জানালা খুললে পোলাওয়ের ঘ্রাণ, দরজা খুললেই ভুনা মাংসের ঘ্রাণ, ভেন্টিলেটর দিয়ে আসছে নিষ্ঠুর মুরগি ভুনার ঘ্রাণ। আমরা গরিব ব্যাচেলর। বুয়াহীন এ সংসারের পাতিলে জমেছে হাহাকার। চুলার আগুন এ বেলাও কেঁদেকেটে অস্থির। একবার এসে দেখুন আমাদের ভাতের প্লেট হাহাকার করছে, ডালের পাতিল চিৎকার করছে। অল্প তেলে ভাজা হওয়া ডিমটিও মার খেয়ে যাচ্ছে আপনাদের গরুর মাংসের ঘ্রাণে। যুগে যুগে তারা আর কত মার খাবে? এভাবেই চলতে থাকবে সবলের ওপর দুর্বলের অত্যাচার?\r\n\r\nপ্রতিবেশী, আপনাদের অনেক ভালোবাসি! আপনারা গরুর মাংস খান, পোলাও খান, কোরমা খান, শাহরুখ, সালমান বা শাকিব—যে খানই খান না কেন, দয়া করে রান্নাঘরের জানালা বন্ধ করে খান, ডাইনিং রুমের দরজা বন্ধ করে খান। আমরা বরং আয়েশে নিজের হাতে রান্না করা আলুভর্তা খাই, ডিম খাই, শব্দ করে ডাল খাই।', '729627_প্রিয়-প্রতিবেশী-বন্ধ-করুন-ঘ্রাণবাজি-প্রথম-আলো.png', 4, 1, 1, 'food', '2020-10-10'),
(18, 'স্কুলেও পরীক্ষা ছাড়া ‘প্রমোশনের’ চিন্তা', 'প্রাথমিক শিক্ষা সমাপনী, জেএসএসি ও এইচএসসি পরীক্ষা বাতিলের পর এবার স্কুলেও বার্ষিক পরীক্ষা ছাড়াই ‘অন্য কোনো উপায়ে’ শিক্ষার্থীদের মূল্যায়ন করে ওপরের শ্রেণিতে ‘প্রমোশনের’ চিন্তাভাবনা করছে সরকার। স্কুলের মূল্যায়নটি কীভাবে হবে, সেটি সামনের সপ্তাহেই জানানো হবে বলে শিক্ষা মন্ত্রণালয় সূত্রে জানা গেছে।\r\n\r\nঅন্যদিকে সরাসরি এইচএসসি পরীক্ষা না নিয়ে জেএসসি, এসএসসি বা সমমানের পরীক্ষার গড় ফলের ভিত্তিতে মূল্যায়নের সিদ্ধান্তে মিশ্র প্রতিক্রিয়ার সৃষ্টি হয়েছে। বিশেষ করে উচ্চমাধ্যমিকের দুই বছরের পড়াশোনার বিষয়ে কোনো মূল্যায়ন না থাকায় ভবিষ্যতে শিক্ষার্থীদের ওপর তার প্রভাব পড়তে পারে বলে মনে করছেন শিক্ষাসংশ্লিষ্ট ব্যক্তিদের কেউ কেউ। এ সিদ্ধান্তে অনেক পরীক্ষার্থী খুশি হলেও, কেউ কেউ অসন্তুষ্টও হয়েছে। এ সিদ্ধান্ত পুনর্বিবেচনার জন্য এক পরীক্ষার্থীর পক্ষে সরকারকে আইনি নোটিশও দেওয়া হয়েছে।', '194974_Web Designer & developer.png', 1, 1, 1, 'education', '2020-10-10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` int(1) NOT NULL COMMENT '1=admin, 2=editor',
  `status` int(1) NOT NULL COMMENT '0-inactive, 1=active',
  `image` text DEFAULT NULL,
  `join_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `phone`, `role`, `status`, `image`, `join_date`) VALUES
(1, 'choton', 'choton@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'dhaka', '01829085423', 1, 1, 'choton.jpg', '2020-09-02'),
(21, 'leon', 'leon@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'Noakhali', '01829085482', 2, 1, '682228_89378385_2638547533097389_7646716703866355712_n.jpg', '2020-09-27'),
(23, 'shovon', 'shovon@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'Dhaka', '01827824', 2, 1, '171885_Photolab-284600481.jpg', '2020-09-27');

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `visitor_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `image` text NOT NULL,
  `join_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`cmt_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`visitor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `visitor_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
