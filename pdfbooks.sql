-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 07 فبراير 2023 الساعة 19:20
-- إصدار الخادم: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pdfbooks`
--

-- --------------------------------------------------------

--
-- بنية الجدول `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `adminName` varchar(50) NOT NULL,
  `adminEmail` varchar(100) NOT NULL,
  `adminPass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `admin`
--

INSERT INTO `admin` (`id`, `adminName`, `adminEmail`, `adminPass`) VALUES
(1, 'himo', 'himo', '0000');

-- --------------------------------------------------------

--
-- بنية الجدول `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `bookTitle` varchar(200) NOT NULL,
  `bookAuthor` varchar(50) NOT NULL,
  `bookCat` varchar(100) NOT NULL,
  `bookCover` varchar(200) NOT NULL,
  `bookContent` varchar(10000) NOT NULL,
  `bookDate` date NOT NULL DEFAULT current_timestamp(),
  `book` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `books`
--

INSERT INTO `books` (`id`, `bookTitle`, `bookAuthor`, `bookCat`, `bookCover`, `bookContent`, `bookDate`, `book`) VALUES
(2, 'المسلم الجديد', 'لا يوجد', 'كتب دينية', '443_المسلم الجديد.jpg', 'المسلم الجديد', '2023-02-05', '177_المسلم الجديد.pdf'),
(3, 'نحو فهم أعمق لتقنيات html', 'اكاديمة حسوب', 'تصميم مواقع', '744_نحو فهم أعمق لتقنيات HTML5 - Dive-Into-HTML5-Arabic-1.0.0.pdf.png', 'كتاب مميز يشرح  html', '2023-02-05', '321_Dive-Into-HTML5-Arabic-1.0.0.pdf'),
(4, 'مختصر دليل لغات البرمجة', 'علي آل ياسين', 'برمجة', '165_مختصر دليل لغات البرمجة - نسخة منقحة ومزيدة - mokhtasar_dalil.pdf.png', 'مختصر دليل لغات البرمجة - نسخة منقحة ومزيدة ', '2023-02-05', '816_mokhtasar_dalil.pdf'),
(5, 'تعلم bootstrap ', 'علي آل ياسين', 'تصميم مواقع', '110_bootstrap_arabic.pdf.png', 'تعلم  اطار bootstrap ', '2023-02-05', '27_bootstrap_arabic.pdf'),
(6, 'سطراوامر لينكس', 'عبداللطيف ايمشن', 'لينكس', '70_Screenshot 2023-02-05 at 18-47-55 سطر أوامر لينُكس - The_Linux_Command_Line-arabic-14.07.pdf.png', 'كتاب سطراوامر لينكس', '2023-02-05', '571_The_Linux_Command_Line-arabic-14.07.pdf'),
(7, 'دليل البرمجيات الحره المصدر', 'عبداللطيف ايمشن', 'برمجة', '349_Screenshot 2023-02-05 at 18-47-19 دليل البرمجيات الحرة مفتوحة المصدر لنظام ويندوز - الإصدار الثالث - Free-OpenSource-Guide-v3.0.pdf.png', 'كتاب يشرح البرمجيات الحره المصدر', '2023-02-05', '268_Free-OpenSource-Guide-v3.0.pdf'),
(8, 'راسباري باي', 'عبداللطيف ايمشن', 'برمجة', '466_Screenshot 2023-02-05 at 18-47-38 راسبيري باي ببساطة - Simply Raspberry Pi.pdf.png', 'كتاب يشرح  راسباري باي بالتفاصيل', '2023-02-05', '333_بيثون 3.pdf'),
(9, 'تعلم البرمجه مع القط اسكراتش', 'عبداللطيف ايمشن', 'برمجة', '104_Screenshot 2023-02-05 at 18-46-54 learn-programming-with-scratch-cat-v1.0.pdf.png', 'تعليم البرمجه للاطفال القط اسكراتش', '2023-02-05', '606_learn-programming-with-scratch-cat-v1.0.pdf'),
(10, 'الدالات الاساسية في اكسل', 'المنذر سفيان', 'ثقافة عامة', '992_Screenshot 2023-02-05 at 18-49-28 excelf.pdf.png', 'تعلم اكسل باحتراف مع هذا الكتاب ', '2023-02-05', '306_excelf.pdf');

-- --------------------------------------------------------

--
-- بنية الجدول `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(200) NOT NULL,
  `categoryDate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `categories`
--

INSERT INTO `categories` (`id`, `categoryName`, `categoryDate`) VALUES
(1, 'تصميم مواقع', '2023-02-03'),
(2, 'برمجة', '2023-02-03'),
(3, 'كتب دينية', '2023-02-03'),
(4, 'ثقافة عامة', '2023-02-05'),
(5, 'محاسبة', '2023-02-05'),
(6, 'لينكس', '2023-02-05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
