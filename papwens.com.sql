-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 01, 2026 at 04:54 AM
-- Server version: 11.4.10-MariaDB-cll-lve
-- PHP Version: 8.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `papt1362_papwens.my.id`
--

-- --------------------------------------------------------

--
-- Table structure for table `papwens_contacts`
--

CREATE TABLE `papwens_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `whatsapp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `social_media` text DEFAULT NULL,
  `maps_embed` text DEFAULT NULL,
  `maps_url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `papwens_contacts`
--

INSERT INTO `papwens_contacts` (`id`, `address`, `whatsapp`, `email`, `social_media`, `maps_embed`, `maps_url`) VALUES
(1, 'Jl. Brigadir Jend. Katamso No.31, Cihaur Geulis, Kec. Cibeunying Kidul, Kota Bandung, Jawa Barat 40122', '628112283331', 'adminpapwens@gmail.com', '[{\"id\":\"1\",\"platform\":\"Instagram\",\"url\":\"https:\\/\\/www.instagram.com\\/papwens\\/\"},{\"id\":\"2\",\"platform\":\"Facebook\",\"url\":\"https:\\/\\/www.facebook.com\\/#\"},{\"id\":\"1776282817965\",\"platform\":\"TikTok\",\"url\":\"https:\\/\\/www.tiktok.com\\/#\"}]', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5219.292621651095!2d107.63164189999999!3d-6.904221899999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e68e7003e82462b%3A0xec8b572841de1d7d!2sPAPWENS!5e1!3m2!1sen!2sid!4v1776318257633!5m2!1sen!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'https://maps.app.goo.gl/7uMVKCSN3oTtVA4J6');

-- --------------------------------------------------------

--
-- Table structure for table `papwens_gallery_images`
--

CREATE TABLE `papwens_gallery_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT 'Untitled',
  `category` varchar(255) NOT NULL DEFAULT 'Other',
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `papwens_gallery_images`
--

INSERT INTO `papwens_gallery_images` (`id`, `title`, `category`, `url`) VALUES
(8, 'Coffee', 'Coffee', '/uploads/1776282724-837970.webp'),
(15, 'Our Cafe', 'Atmosphere', '/uploads/1776525272-878935.webp'),
(16, 'Our Cake', 'Pastry', '/uploads/1776658665-785645.webp'),
(17, 'Our Pastry', 'Pastry', '/uploads/1776658770-570339.webp'),
(18, 'Our pastry', 'Pastry', '/uploads/1776658845-609817.webp'),
(19, 'Our Pastry', 'Pastry', '/uploads/1776658881-919601.webp'),
(20, 'Our Pastry & Bakery', 'Pastry', '/uploads/1776658947-589020.webp'),
(21, 'Our Cafe', 'Atmosphere', '/uploads/1776659050-739669.webp'),
(22, 'Our Cafe', 'Atmosphere', '/uploads/1776659140-547812.webp'),
(23, 'Our Pastry', 'Pastry', '/uploads/1776659206-196104.webp'),
(24, 'Packaging', 'Pastry', '/uploads/1776659310-791893.webp'),
(25, 'Packaging', 'Pastry', '/uploads/1776659341-230999.webp');

-- --------------------------------------------------------

--
-- Table structure for table `papwens_menu_items`
--

CREATE TABLE `papwens_menu_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` varchar(255) NOT NULL,
  `numeric_price` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `badge` varchar(255) DEFAULT NULL,
  `stock` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `papwens_menu_items`
--

INSERT INTO `papwens_menu_items` (`id`, `name`, `description`, `price`, `numeric_price`, `category`, `image`, `badge`, `stock`) VALUES
(9, 'Butter Croissant', 'Classic French pastry with flaky, buttery layers.', 'Rp 20.000', 20000, 'Pastry', '/uploads/1776580981-300104.webp', NULL, 5),
(16, 'Peach Danish', '', 'Rp 24.000', 24000, 'Pastry', '/uploads/1776584615-586908.webp', NULL, 5),
(17, 'Vanilla Strawberry Danish', '', 'Rp 25.000', 25000, 'Pastry', '/uploads/1776584800-265240.webp', NULL, 5),
(18, 'Strawberry Creamcheese Danish', '', 'Rp 25.000', 25000, 'Pastry', '/uploads/1776585096-849920.webp', NULL, 5),
(19, 'Hazelnut Danish', '', 'Rp 28.000', 28000, 'Pastry', '/uploads/1776659844-715410.webp', NULL, 5),
(20, 'Pan Au Raisin', '', 'Rp 23.000', 23000, 'Pastry', '/uploads/1776585245-780916.webp', NULL, 5),
(21, 'Pan Au Chocollate', '', 'Rp 23.000', 23000, 'Pastry', '/uploads/1776585342-923733.webp', NULL, 5),
(22, 'Beef Spicy', '', 'Rp 16.000', 16000, 'Bakery', '/uploads/1776587114-187978.webp', NULL, 10),
(23, 'Cheese Chicken Spicy', '', 'Rp 15.000', 15000, 'Bakery', '/uploads/1776587276-491336.webp', NULL, 10),
(24, 'Sweet & Cheese', '', 'Rp 13.000', 13000, 'Bakery', '/uploads/1776587465-595830.webp', NULL, 10),
(25, 'Banana Choco Almond Bread', '', 'Rp 13.000', 13000, 'Bakery', '/uploads/1776587547-360402.webp', NULL, 10),
(26, 'Chocollate Roll Pan', '', 'Rp 10.000', 10000, 'Bakery', '/uploads/1776587602-622365.webp', NULL, 10),
(27, 'Cinnamon Roll Pan', '', 'Rp 11.000', 11000, 'Bakery', '/uploads/1776587669-591625.webp', NULL, 10),
(28, 'Creamcheese Roll Pan', '', 'Rp 13.000', 13000, 'Bakery', '/uploads/1776587788-152974.webp', NULL, 10),
(29, 'Hazelnut Choco Roll Pan', '', 'Rp 12.000', 12000, 'Bakery', '/uploads/1776587868-825416.webp', NULL, 10),
(30, 'Strawberry Roll Pan', '', 'Rp 9.000', 9000, 'Bakery', '/uploads/1776587932-836973.webp', NULL, 10),
(31, 'Oreo Creamcheese', '', 'Rp 15.000', 15000, 'Bakery', '/uploads/1776588017-956906.webp', NULL, 10),
(32, 'Banana Cheese Bread', '', 'Rp 13.000', 13000, 'Bakery', '/uploads/1776588073-545368.webp', NULL, 10),
(33, 'Dark Choco Bun', '', 'Rp 14.000', 14000, 'Bakery', '/uploads/1776588329-993781.webp', NULL, 10),
(34, 'Cheese Garlic', '', 'Rp 14.000', 14000, 'Bakery', '/uploads/1776588399-420588.webp', NULL, 10),
(35, 'Raisin Loaf', '', 'Rp 25.000', 25000, 'Bakery', '/uploads/1776588472-669101.webp', NULL, 10),
(36, 'Double Choco Almond Loaf', '', 'Rp 28.000', 28000, 'Bakery', '/uploads/1776588535-279799.webp', NULL, 10),
(37, 'Cheese Loaf', '', 'Rp 32.000', 32000, 'Bakery', '/uploads/1776588622-481869.webp', NULL, 10),
(38, 'Roti Sobek 4 Rasa', '', 'Rp 29.000', 29000, 'Bakery', '/uploads/1776588678-561449.webp', NULL, 10),
(39, 'Whole Wheat', '', 'Rp 24.000', 24000, 'Bakery', '/uploads/1776588847-454813.webp', NULL, 10),
(40, 'White Toast', '', 'Rp 17.000', 17000, 'Bakery', '/uploads/1776588909-251755.webp', NULL, 10),
(41, 'Ice Cafe Latte', '', 'Rp 32.000', 32000, 'Coffee', '/uploads/1776589478-389023.webp', NULL, 5),
(42, 'Ice Butterscotch Latte', '', 'Rp 33.000', 33000, 'Coffee', '/uploads/1776589937-150370.webp', NULL, 10),
(43, 'Ice Americano', '', 'Rp 25.000', 25000, 'Coffee', '/uploads/1776590052-382605.webp', NULL, 10),
(44, 'Ice Salted Caramel Latte', '', 'Rp 35.000', 35000, 'Coffee', '/uploads/1776590170-211057.webp', NULL, 10),
(45, 'Americano Hot', '', 'Rp 25.000', 25000, 'Coffee', '/uploads/1776590389-226155.webp', NULL, 10),
(46, 'Latte Hot', '', 'Rp 30.000', 30000, 'Coffee', '/uploads/1776591708-701927.webp', NULL, 10),
(47, 'Cappucino Hot', '', 'Rp 30.000', 30000, 'Coffee', '/uploads/1776591825-988853.webp', NULL, 10),
(48, 'Danish Cheesy Chicken Blackpepper', '', 'Rp 25.000', 25000, 'Pastry', '/uploads/1776659951-332233.webp', NULL, 5),
(49, 'Almond Croissant', '', 'Rp 28.000', 28000, 'Pastry', '/uploads/1776660269-224995.webp', NULL, 5),
(50, 'Cheese Croissant', '', 'Rp 24.000', 24000, 'Pastry', '/uploads/1776660349-597324.webp', NULL, 5),
(51, 'Cranberry Cheese Loaf', '', 'Rp 22.000', 22000, 'Bakery', '/uploads/1776660694-207028.webp', NULL, 10),
(52, 'Es kopi Susu', '', 'Rp 25.000', 25000, 'Coffee', '/uploads/1776661541-160509.webp', NULL, 10),
(53, 'Hot Chocolate ', '', 'Rp 25.000', 25000, 'Coffee', '/uploads/1776661724-369785.webp', NULL, 10),
(54, 'Hot Tea', '', 'Rp 8.000', 8000, 'Coffee', '/uploads/1776661908-340664.webp', NULL, 10),
(55, 'Chocolate Milshake ', '', 'Rp 30.000', 30000, 'Coffee', '/uploads/1776662180-671642.webp', NULL, 10),
(56, 'Vanilla Milshake', '', 'Rp 30.000', 30000, 'Coffee', '/uploads/1776662220-643716.webp', NULL, 10),
(57, 'Strawberry Milshake', '', 'Rp 30.000', 30000, 'Coffee', '/uploads/1776662259-737210.webp', NULL, 10),
(58, 'Ice Chocolate Papwens', '', 'Rp 25.000', 25000, 'Coffee', '/uploads/1776662418-166322.webp', NULL, 10),
(59, 'Ice Chocolate ', '', 'Rp 25.000', 25000, 'Coffee', '/uploads/1776662475-902091.webp', NULL, 10),
(60, 'Ice Strawberry Tea', '', 'Rp 15.000', 15000, 'Coffee', '/uploads/1776662526-243388.webp', NULL, 10),
(61, 'Ice Lychee Tea', '', 'Rp 15.000', 15000, 'Coffee', '/uploads/1776662561-301325.webp', NULL, 10),
(62, 'Ice Peach Tea', '', 'Rp 15.000', 15000, 'Coffee', '/uploads/1776662599-963717.webp', NULL, 10),
(63, 'Ice Tea', '', 'Rp 8.000', 8000, 'Coffee', '/uploads/1776662627-857800.webp', NULL, 10),
(64, 'Ice Sweet Tea', '', 'Rp 8.000', 8000, 'Coffee', '/uploads/1776662680-810877.webp', NULL, 10),
(65, 'Ice Lemon Tea', '', 'Rp 15.000', 15000, 'Coffee', '/uploads/1776662760-340036.webp', NULL, 10),
(66, 'Healthy Juice', '', 'Rp 28.000', 28000, 'Coffee', '/uploads/1776662815-179913.webp', NULL, 10),
(67, 'Strawberry Juice', '', 'Rp 28.000', 28000, 'Coffee', '/uploads/1776662860-480934.webp', NULL, 10),
(68, 'Dragon Fruit Juice', '', 'Rp 28.000', 28000, 'Coffee', '/uploads/1776662927-119916.webp', NULL, 10),
(69, 'Mango Juice', '', 'Rp 28.000', 28000, 'Coffee', '/uploads/1776662971-560902.webp', NULL, 10),
(70, 'Melon Juice', '', 'Rp 28.000', 28000, 'Coffee', '/uploads/1776663016-442033.webp', NULL, 10),
(71, 'Sandwich Chicken Blackpepper', '', 'Rp 29.000', 29000, 'Bakery', '/uploads/1777434447-282420.webp', NULL, 10);

-- --------------------------------------------------------

--
-- Table structure for table `papwens_newsletter`
--

CREATE TABLE `papwens_newsletter` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `papwens_newsletter`
--

INSERT INTO `papwens_newsletter` (`id`, `email`, `created_at`) VALUES
(1, 'test@abc.com', '2026-04-16T04:17:21+07:00'),
(2, 'test2@abc.com', '2026-04-16T08:21:49+00:00'),
(3, 'testing@abc.com', '2026-04-16T17:41:09+00:00');

-- --------------------------------------------------------

--
-- Table structure for table `papwens_orders`
--

CREATE TABLE `papwens_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `service_type` varchar(50) NOT NULL,
  `birth_date` varchar(10) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `payment_method` varchar(50) NOT NULL DEFAULT 'QRIS',
  `payment_proof` text DEFAULT NULL,
  `items` text NOT NULL,
  `total_price` int(11) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Pending',
  `created_at` text NOT NULL,
  `completed_at` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `papwens_orders`
--

INSERT INTO `papwens_orders` (`id`, `customer_name`, `phone`, `service_type`, `birth_date`, `address`, `payment_method`, `payment_proof`, `items`, `total_price`, `status`, `created_at`, `completed_at`) VALUES
(8, 'wendi', '081323331212', 'Take Away', '12-12', 'bojong koneng atas no.94c', 'QRIS', '/uploads/1776523057-166771.webp', '[{\"id\":11,\"name\":\"Signature Latte\",\"quantity\":2,\"price\":10},{\"id\":7,\"name\":\"Coffee\",\"quantity\":2,\"price\":1000},{\"id\":6,\"name\":\"Sourdough\",\"quantity\":2,\"price\":500}]', 3020, 'Completed', '2026-04-18T21:37:37+07:00', '2026-04-18T21:45:14+07:00'),
(9, 'Test', '6281234567890', 'Dine In', '', '', 'QRIS', '/uploads/1776523661-468679.webp', '[{\"id\":7,\"name\":\"Coffee\",\"quantity\":1,\"price\":1000}]', 1000, 'Pending', '2026-04-18T21:47:41+07:00', NULL),
(10, 'WENDI', '6281323331212', 'Take Away', '12-12', 'BOJONG KONENG', 'QRIS', '/uploads/1776524170-329428.webp', '[{\"id\":11,\"name\":\"Signature Latte\",\"quantity\":1,\"price\":10}]', 10, 'Cancelled', '2026-04-18T21:56:10+07:00', NULL),
(11, 'wendi', '6281323331212', 'Take Away', '12-12', 'bojong konewng', 'QRIS', '/uploads/1776525043-851417.webp', '[{\"id\":7,\"name\":\"Coffee\",\"quantity\":2,\"price\":1000}]', 2000, 'Completed', '2026-04-18T22:10:43+07:00', '2026-04-18T22:14:25+07:00'),
(12, 'Wendi', '6281323331212', 'Take Away', '12-12', 'Bjg kng 94c', 'QRIS', '/uploads/1776571211-395644.webp', '[{\"id\":11,\"name\":\"Signature Latte\",\"quantity\":2,\"price\":10}]', 20, 'Pending', '2026-04-19T11:00:11+07:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `papwens_settings`
--

CREATE TABLE `papwens_settings` (
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `papwens_settings`
--

INSERT INTO `papwens_settings` (`key`, `value`) VALUES
('store_status', 'open'),
('web_settings', '{\"siteName\":\"PAPWENS\",\"siteLogo\":\"\\/uploads\\/1776522400-133918.webp\",\"contactImage\":\"\\/uploads\\/1776522543-154924.webp\",\"contactTitle\":\"Craving Something Delicious?\",\"contactSubtitle\":\"Pesan langsung via WhatsApp (628112283331) atau kunjungi kami di Jl. Brigadir Jend. Katamso No.31. Kami siap menyajikan yang terbaik untuk Anda.\",\"footerQuote\":\"Artisan Bakery, Pastry & Specialty Coffee di Bandung. Dibuat fresh setiap hari dengan bahan-bahan premium pilihan.\",\"heroImage\":\"\\/uploads\\/1776371119-311416.webp\",\"heroTitleMain\":\"Baking with Love,\",\"heroTitleHighlight\":\"Served with Passion\",\"heroSubtitle\":\"Artisan Bakery, Pastry & Specialty Coffee di Bandung. Setiap gigitan adalah sebuah cerita yang menanti untuk diceritakan.\",\"aboutImage\":\"\\/uploads\\/1776371148-505644.webp\",\"aboutTitle\":\"Crafted with Heart, Served with Soul\",\"aboutP1\":\"PAPWENS lahir dari kecintaan kami terhadap seni membuat roti, pastry, dan kopi. Setiap produk kami dibuat fresh setiap hari menggunakan bahan-bahan pilihan, karena kami percaya bahwa makanan terbaik dibuat dengan hati.\",\"aboutP2\":\"Di sudut Jalan Katamso No.31 Bandung, kami menghadirkan ruang yang hangat untuk Anda menikmati sepotong croissant bersama secangkir specialty coffee \\u2014 atau membawa pulang roti favorit untuk keluarga.\",\"theme\":\"orange-gray\",\"dynamic_contact\":{\"whatsapp\":\"628112283331\",\"address\":\"Jl. Brigadir Jend. Katamso No.31, Cihaur Geulis, Kec. Cibeunying Kidul, Kota Bandung, Jawa Barat 40122\",\"email\":\"adminpapwens@gmail.com\",\"mapsUrl\":\"https:\\/\\/maps.app.goo.gl\\/7uMVKCSN3oTtVA4J6\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `papwens_testimonials`
--

CREATE TABLE `papwens_testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `stars` int(11) NOT NULL DEFAULT 5
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `papwens_testimonials`
--

INSERT INTO `papwens_testimonials` (`id`, `name`, `text`, `stars`) VALUES
(2, 'Budi T.', 'Tempatnya cozy banget buat kerja atau nongkrong. Kopi signature-nya juara, pelayanannya juga ramah.', 5),
(3, 'Amanda P.', 'Always my go-to place for weekend brunch. Don\'t miss out on their almond chocolate croissants!', 5),
(4, 'DIna', '\"Croissant terbaik yang pernah saya makan! Lapisan-lapisannya renyah benget. Sangat direkomendasikan!\"', 5),
(5, 'Sarah M.', 'The best croissants I have ever had outside of Paris! The layers are perfectly flaky. Very recommended!', 5),
(6, 'Budi T.', 'Tempatnya cozy banget buat kerja atau nongkrong. Kopi signature-nya juara, pelayanannya juga ramah.', 5),
(7, 'Amanda P.', 'Always my go-to place for weekend brunch. Don\'t miss out on their almond chocolate croissants!', 5),
(9, 'Sheila Agustin', 'Variasi pastry nya banyak, kopinya enak, tempatnya oke', 5),
(10, 'Upar Suparta', 'Makanan dan layanan nya cukup bagus. Tempatnya juga luas, cocok buat nyantai untuk sarapan atau pun ngerjain tugas.', 5),
(11, 'Rissa Purnama', 'Tempatnya nyaman, pastry n rotinya murah\". Dan amat sangat enak sekali, serius sih rekomended!', 5),
(12, 'Sri Agustina', 'Tempatnya asyik buat nongkrong harga nya murah, menu makanan berat sampe cemilan ada. Ada kopinya juga. Rekomen banget deh. Apalagi pastrynya fresh karna langsung dibuat loh', 5),
(13, 'As rahardjo', 'Pastry sama Rotinya enak top. Penyajian dine in nya ok. Harga tergolong murah di bandingkan kualitasnya. Recomend banget.', 5),
(14, 'the Prayogas fam', 'Kesukaan bangetttt rotinya ga ada yg gagal,, minumannya juga enakΓö¼Γûô', 5),
(15, 'Siti Yulianti Nurandini', 'Rotinya enak juga affordable, ada menu nasi juga. Suasananya oke bgt, dan tempatnya juga estetik', 5),
(17, 'Athifa Aksesoris', 'Makanannya enak, tempatnya nyaman, coffee nya mantap.', 5),
(18, 'Ahmad Nathan', 'Orange Peach Coffee nya seger balance rasanya, saya dinein roll pan nya enk gak terlalu manis.', 5),
(19, 'Fajar Aprilia Saputra', 'Roti dan pastry nya enak, fresh from the oven. Kopi nya juga saya suka.', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `papwens_contacts`
--
ALTER TABLE `papwens_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `papwens_gallery_images`
--
ALTER TABLE `papwens_gallery_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `papwens_menu_items`
--
ALTER TABLE `papwens_menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `papwens_newsletter`
--
ALTER TABLE `papwens_newsletter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `papwens_orders`
--
ALTER TABLE `papwens_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `papwens_settings`
--
ALTER TABLE `papwens_settings`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `papwens_testimonials`
--
ALTER TABLE `papwens_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `papwens_contacts`
--
ALTER TABLE `papwens_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `papwens_gallery_images`
--
ALTER TABLE `papwens_gallery_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `papwens_menu_items`
--
ALTER TABLE `papwens_menu_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `papwens_newsletter`
--
ALTER TABLE `papwens_newsletter`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `papwens_orders`
--
ALTER TABLE `papwens_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `papwens_testimonials`
--
ALTER TABLE `papwens_testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
