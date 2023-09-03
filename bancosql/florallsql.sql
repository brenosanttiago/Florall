-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Maio-2023 às 13:34
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `florallsql`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `historico`
--

CREATE TABLE `historico` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `plant_id` bigint(20) UNSIGNED NOT NULL,
  `visited_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_05_18_170339_create_plants_table', 1),
(7, '2023_05_18_170748_refresh', 1),
(8, '2023_05_26_051157_create_historico_table', 1),
(9, '2023_05_26_052143_refresh', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `plants`
--

CREATE TABLE `plants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plantid` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `nomecomum` varchar(255) NOT NULL,
  `nomecientifico` varchar(255) NOT NULL,
  `rank` varchar(255) NOT NULL,
  `nomecientificodafamilia` varchar(255) NOT NULL,
  `generoid` int(11) NOT NULL,
  `genero` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `plants`
--

INSERT INTO `plants` (`id`, `plantid`, `slug`, `nomecomum`, `nomecientifico`, `rank`, `nomecientificodafamilia`, `generoid`, `genero`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 263769, 'rosa-marginata', '', 'Rosa marginata', 'species', 'Rosaceae', 12137, 'Rosa', 'https://bs.plantnet.org/image/o/ec2345965050fad125cb190c99d196ee96c98a91', '2023-05-30 13:22:37', '2023-05-30 13:22:37'),
(2, 265829, 'rosa-californica', 'California rose', 'Rosa californica', 'species', 'Rosaceae', 12137, 'Rosa', 'https://bs.plantnet.org/image/o/43acc13f58bf5bac6bc65375a60b02e507abb5d7', '2023-05-30 13:22:37', '2023-05-30 13:22:37'),
(3, 262468, 'rosa-maximowicziana', '', 'Rosa maximowicziana', 'species', 'Rosaceae', 12137, 'Rosa', 'https://bs.plantnet.org/image/o/7bfafee966b1df4420ce8566ed49087e610140de', '2023-05-30 13:22:37', '2023-05-30 13:22:37'),
(4, 264561, 'rosa-stylosa', 'Short-styled field-rose', 'Rosa stylosa', 'species', 'Rosaceae', 12137, 'Rosa', 'https://bs.plantnet.org/image/o/957d477f4ae7588192950b2887339d4a4139b587', '2023-05-30 13:22:37', '2023-05-30 13:22:37'),
(5, 267042, 'rosa-sicula', 'Mediterranean rose', 'Rosa sicula', 'species', 'Rosaceae', 12137, 'Rosa', 'https://bs.plantnet.org/image/o/9f3838af359dae2152522d269ceebec421571710', '2023-05-30 13:22:37', '2023-05-30 13:22:37'),
(6, 55351, 'lemna-turionifera', 'Turion duckweed', 'Lemna turionifera', 'species', 'Araceae', 2730, 'Lemna', 'https://bs.plantnet.org/image/o/f663ccf19bd43c4b27b5765c2e148db612670342', '2023-05-30 13:22:37', '2023-05-30 13:22:37'),
(7, 265580, 'rosa-arvensis', 'Field rose', 'Rosa arvensis', 'species', 'Rosaceae', 12137, 'Rosa', 'https://bs.plantnet.org/image/o/afc9f4d7ce137f04746413f629330948b73e79d3', '2023-05-30 13:22:37', '2023-05-30 13:22:37'),
(8, 3255, 'senecio-vulgaris', 'Common fireweed', 'Senecio vulgaris', 'species', 'Asteraceae', 7, 'Senecio', 'https://bs.plantnet.org/image/o/789db8a83a9ab9719d711d0169221e46ad78e567', '2023-05-30 13:22:37', '2023-05-30 13:22:37'),
(9, 24140, 'tanacetum-vulgare', 'Golden-buttons', 'Tanacetum vulgare', 'species', 'Asteraceae', 21, 'Tanacetum', 'https://bs.plantnet.org/image/o/a0cef038af2afe9fdc18aed8ff76bd7077ec1645', '2023-05-30 13:22:37', '2023-05-30 13:22:37'),
(10, 127102, 'paeonia-officinalis', 'Common peony', 'Paeonia officinalis', 'species', 'Paeoniaceae', 6609, 'Paeonia', 'https://bs.plantnet.org/image/o/998d4ec6826c9af6aa95f5f2ecfe4ec6629eee45', '2023-05-30 13:22:37', '2023-05-30 13:22:37'),
(11, 265032, 'rosa-canina', 'Common-briar', 'Rosa canina', 'species', 'Rosaceae', 12137, 'Rosa', 'https://bs.plantnet.org/image/o/658bff43fbf3b22296b0206094ab2d01852c41e5', '2023-05-30 13:22:37', '2023-05-30 13:22:37'),
(12, 111126, 'viburnum-opulus', 'Crampbark', 'Viburnum opulus', 'species', 'Viburnaceae', 5596, 'Viburnum', 'https://bs.plantnet.org/image/o/bd5764f91ee1df0d01ad535859136381cee4ecbc', '2023-05-30 13:22:37', '2023-05-30 13:22:37'),
(13, 50563, 'acacia-longifolia', 'Golden-rods', 'Acacia longifolia', 'species', 'Fabaceae', 1879, 'Acacia', 'https://bs.plantnet.org/image/o/ec1bfe4e9b3a3f938086caf60c9c85f557cec4e1', '2023-05-30 13:22:37', '2023-05-30 13:22:37'),
(14, 294597, 'asplenium-subflexuosum', '', 'Asplenium subflexuosum', 'species', 'Aspleniaceae', 1736, 'Asplenium', 'https://d2seqvvyy3b8p2.cloudfront.net/671e10da63e24552973f6242706c90a4.jpg', '2023-05-30 13:22:37', '2023-05-30 13:22:37'),
(15, 329388, 'frullania-fragilifolia', '', 'Frullania fragilifolia', 'species', 'Frullaniaceae', 12578, 'Frullania', NULL, '2023-05-30 13:22:37', '2023-05-30 13:22:37'),
(16, 310342, 'didymodon-sinuosus', '', 'Didymodon sinuosus', 'species', 'Pottiaceae', 12601, 'Didymodon', NULL, '2023-05-30 13:22:37', '2023-05-30 13:22:37'),
(17, 122207, 'ranunculus-polyanthemos', '', 'Ranunculus polyanthemos', 'species', 'Ranunculaceae', 6311, 'Ranunculus', 'https://bs.plantnet.org/image/o/d95ce584e196a15a096857111e3b2c3e5fb4056d', '2023-05-30 13:22:37', '2023-05-30 13:22:37'),
(18, 303824, 'tortella-fragilis', '', 'Tortella fragilis', 'species', 'Pottiaceae', 13470, 'Tortella', NULL, '2023-05-30 13:22:37', '2023-05-30 13:22:37'),
(19, 37010, 'zornia-reticulata', 'Neto hoja zarzabacoa de dos hojas', 'Zornia reticulata', 'species', 'Fabaceae', 2035, 'Zornia', 'https://bs.plantnet.org/image/o/213606b7c8a1ce758d3bcce2b189149d3ed282e0', '2023-05-30 13:22:37', '2023-05-30 13:22:37'),
(20, 176089, 'dombeya-tiliacea', 'Forest wild pear', 'Dombeya tiliacea', 'species', 'Malvaceae', 8847, 'Dombeya', 'https://bs.plantnet.org/image/o/59c05c17c3f4059d812c17a2b77afacbbaaff481', '2023-05-30 13:22:37', '2023-05-30 13:22:37'),
(21, 236068, 'cocos-nucifera', 'Coconut', 'Cocos nucifera', 'species', 'Arecaceae', 11446, 'Cocos', 'https://bs.plantnet.org/image/o/a0c4045351cd7e31ed6c4a338c4fd7f0be5c1a2f', '2023-05-30 13:22:47', '2023-05-30 13:22:47'),
(22, 220937, 'chrysobalanus-icaco', 'Coco-plum', 'Chrysobalanus icaco', 'species', 'Chrysobalanaceae', 10565, 'Chrysobalanus', 'https://bs.plantnet.org/image/o/0f60185ae2e25d77e36a62d04daa570d8c0c098f', '2023-05-30 13:22:47', '2023-05-30 13:22:47'),
(23, 254893, 'eulophia-alta', 'Wild coco', 'Eulophia alta', 'species', 'Orchidaceae', 5544, 'Eulophia', 'https://bs.plantnet.org/image/o/d14ad6bce038705a4cfb170704e2ecce8d817c73', '2023-05-30 13:22:47', '2023-05-30 13:22:47'),
(24, 240024, 'colocasia-esculenta', 'Coco-yam', 'Colocasia esculenta', 'species', 'Araceae', 4461, 'Colocasia', 'https://bs.plantnet.org/image/o/3da07e54e540ab2d8543e6a80f8f5cebe3c8a21e', '2023-05-30 13:22:47', '2023-05-30 13:22:47'),
(25, 101543, 'cyperus-rotundus', 'Coco-grass', 'Cyperus rotundus', 'species', 'Cyperaceae', 4630, 'Cyperus', 'https://bs.plantnet.org/image/o/016162c18ed3151be4473112822ba68043573dc0', '2023-05-30 13:22:47', '2023-05-30 13:22:47'),
(26, 297236, 'zanthoxylum-coco', '', 'Zanthoxylum coco', 'species', 'Rutaceae', 5690, 'Zanthoxylum', 'https://d2seqvvyy3b8p2.cloudfront.net/ff21d5a2747ca14b4beec17a49c40b5b.jpg', '2023-05-30 13:22:47', '2023-05-30 13:22:47'),
(27, 254964, 'eulophia-graminea', 'Grass-leaf wild coco', 'Eulophia graminea', 'species', 'Orchidaceae', 5544, 'Eulophia', 'https://bs.plantnet.org/image/o/0ecc6d1b6b8b441f9a0e4a30f1c1dfa268269510', '2023-05-30 13:22:47', '2023-05-30 13:22:47'),
(28, 249283, 'allagoptera-arenaria', '', 'Allagoptera arenaria', 'species', 'Arecaceae', 11824, 'Allagoptera', 'https://bs.plantnet.org/image/o/c440cd9147d1a5e26b7be10b6dbfe85eb1424270', '2023-05-30 13:22:47', '2023-05-30 13:22:47'),
(29, 208352, 'lecythis-minor', 'Lecythis', 'Lecythis minor', 'species', 'Lecythidaceae', 10119, 'Lecythis', 'https://bs.plantnet.org/image/o/87b0d37ecf8cca5fff26f7396a29c02d5a4a385f', '2023-05-30 13:22:48', '2023-05-30 13:22:48'),
(30, 41148, 'bauhinia-divaricata', '', 'Bauhinia divaricata', 'species', 'Fabaceae', 1888, 'Bauhinia', 'https://bs.plantnet.org/image/o/e4be5eba47f4584b255404639a8020b79a8a371c', '2023-05-30 13:22:48', '2023-05-30 13:22:48'),
(31, 84546, 'syagrus-pseudococos', '', 'Syagrus pseudococos', 'species', 'Arecaceae', 3883, 'Syagrus', 'https://bs.plantnet.org/image/o/999e7cbce0c6bb5931b223429e088e20823f31a7', '2023-05-30 13:22:48', '2023-05-30 13:22:48'),
(32, 186367, 'butia-capitata', 'South american jelly palm', 'Butia capitata', 'species', 'Arecaceae', 9235, 'Butia', 'https://bs.plantnet.org/image/o/d239d937a02aa926f1a01c0f690238c80dbf031c', '2023-05-30 13:22:48', '2023-05-30 13:22:48'),
(33, 58107, 'lodoicea-maldivica', 'Seychelles-nut', 'Lodoicea maldivica', 'species', 'Arecaceae', 2786, 'Lodoicea', 'https://bs.plantnet.org/image/o/81234b165ef26e9fee5801d8fcfd3a5e6815502f', '2023-05-30 13:22:48', '2023-05-30 13:22:48'),
(34, 254363, 'amanoa-guianensis', '', 'Amanoa guianensis', 'species', 'Phyllanthaceae', 11956, 'Amanoa', 'https://bs.plantnet.org/image/o/d1b27ffa7aaa34cd300313f118070cadbb6e67cf', '2023-05-30 13:22:48', '2023-05-30 13:22:48'),
(35, 39127, 'poeppigia-procera', '', 'Poeppigia procera', 'species', 'Fabaceae', 2148, 'Poeppigia', 'https://d2seqvvyy3b8p2.cloudfront.net/a75e8761e59c0748bff9ca3a3f07d88f.jpg', '2023-05-30 13:22:48', '2023-05-30 13:22:48'),
(36, 101603, 'cyperus-rubicundus', '', 'Cyperus rubicundus', 'species', 'Cyperaceae', 4630, 'Cyperus', 'https://d2seqvvyy3b8p2.cloudfront.net/e2a223e1a08daabdef33b677e518749a.jpg', '2023-05-30 13:22:48', '2023-05-30 13:22:48'),
(37, 254941, 'eulophia-ecristata', '', 'Eulophia ecristata', 'species', 'Orchidaceae', 5544, 'Eulophia', 'https://d2seqvvyy3b8p2.cloudfront.net/1bba2cc7bd6893de32cac15df5e14b8c.jpg', '2023-05-30 13:22:48', '2023-05-30 13:22:48'),
(38, 208469, 'couratari-guianensis', 'Fine-leaf wadara', 'Couratari guianensis', 'species', 'Lecythidaceae', 10130, 'Couratari', 'https://bs.plantnet.org/image/o/252bb81ea8056aba20c6565c5dae53e363f3fe3b', '2023-05-30 13:22:48', '2023-05-30 13:22:48'),
(39, 53991, 'jubaea-chilensis', 'Coquito palm', 'Jubaea chilensis', 'species', 'Arecaceae', 2644, 'Jubaea', 'https://bs.plantnet.org/image/o/49563c25d83a1cea0c8d3b4c7a1ba206f447dead', '2023-05-30 13:22:48', '2023-05-30 13:22:48'),
(40, 77846, 'attalea-humilis', '', 'Attalea humilis', 'species', 'Arecaceae', 3562, 'Attalea', 'https://bs.plantnet.org/image/o/06abccbf70ce58bcf160ea12d844e12196302c79', '2023-05-30 13:22:48', '2023-05-30 13:22:48'),
(41, 124570, 'pilea-microphylla', 'Artillery-plant', 'Pilea microphylla', 'species', 'Urticaceae', 6475, 'Pilea', 'https://bs.plantnet.org/image/o/26c1a7a88d4cd9c35e60747ca9d92170747136a7', '2023-05-30 13:22:58', '2023-05-30 13:22:58'),
(42, 48749, 'scorpiurus-muricatus', 'Caterpillar-plant', 'Scorpiurus muricatus', 'species', 'Fabaceae', 2508, 'Scorpiurus', 'https://bs.plantnet.org/image/o/02e98211e5f71531d7eb96adfd4716af704fdebf', '2023-05-30 13:22:58', '2023-05-30 13:22:58'),
(43, 256418, 'euphorbia-peplus', 'Radium-plant', 'Euphorbia peplus', 'species', 'Euphorbiaceae', 5545, 'Euphorbia', 'https://bs.plantnet.org/image/o/76ca9b16d3431f2e5a0bfb7201a299ff2a5cbe6f', '2023-05-30 13:22:58', '2023-05-30 13:22:58'),
(44, 210239, 'iris-foetidissima', 'Roast-beef-plant', 'Iris foetidissima', 'species', 'Iridaceae', 10243, 'Iris', 'https://bs.plantnet.org/image/o/3296bead9279c4bd82f1bc4f9bbf78c0145bd9be', '2023-05-30 13:22:58', '2023-05-30 13:22:58'),
(45, 36043, 'mimosa-pudica', 'Sensitive-plant', 'Mimosa pudica', 'species', 'Fabaceae', 1931, 'Mimosa', 'https://bs.plantnet.org/image/o/22aae10b9bd6ea9e2a4a5e216f307e355808e090', '2023-05-30 13:22:58', '2023-05-30 13:22:58'),
(46, 92978, 'calathea-crotalifera', 'Rattlesnake plant', 'Calathea crotalifera', 'species', 'Marantaceae', 4295, 'Calathea', 'https://bs.plantnet.org/image/o/92c6c8cb43e57a9e0143ed76d85264a5c9650cec', '2023-05-30 13:22:58', '2023-05-30 13:22:58'),
(47, 11272, 'pseudognaphalium-stramineum', 'Cotton-batting-plant', 'Pseudognaphalium stramineum', 'species', 'Asteraceae', 181, 'Pseudognaphalium', 'https://bs.plantnet.org/image/o/d2afad2a0b841697ae2496652f2dbef8e090c4af', '2023-05-30 13:22:58', '2023-05-30 13:22:58'),
(48, 195290, 'houttuynia-cordata', 'Chameleon-plant', 'Houttuynia cordata', 'species', 'Saururaceae', 9663, 'Houttuynia', 'https://bs.plantnet.org/image/o/0f524af76987d22f43d8aa2964b54f63145f6bac', '2023-05-30 13:22:58', '2023-05-30 13:22:58'),
(49, 196621, 'hypoestes-phyllostachya', 'Flamingo-plant', 'Hypoestes phyllostachya', 'species', 'Acanthaceae', 9710, 'Hypoestes', 'https://bs.plantnet.org/image/o/9749fdd39b4a66f67a5c3d38d82d9b9b6a2af146', '2023-05-30 13:22:58', '2023-05-30 13:22:58'),
(50, 279954, 'petalonyx-thurberi', 'Thurber\'s sandpaper plant', 'Petalonyx thurberi', 'species', 'Loasaceae', 12931, 'Petalonyx', 'https://bs.plantnet.org/image/o/3df291001f70398f04859cc6f23741f6f1e83bf8', '2023-05-30 13:22:58', '2023-05-30 13:22:58'),
(51, 154424, 'tillandsia-caput-medusae', 'Octopus plant', 'Tillandsia caput-medusae', 'species', 'Bromeliaceae', 7967, 'Tillandsia', 'https://bs.plantnet.org/image/o/5b74a443b91e78e4e79a931a683c7dff6946e495', '2023-05-30 13:22:58', '2023-05-30 13:22:58'),
(52, 285133, 'ochna-serrulata', 'Mickey mouse plant', 'Ochna serrulata', 'species', 'Ochnaceae', 5040, 'Ochna', 'https://bs.plantnet.org/image/o/4257843c3a6caf05b1ddd5728eb71f0e966c77fe', '2023-05-30 13:22:58', '2023-05-30 13:22:58'),
(53, 42166, 'codariocalyx-motorius', 'Semaphore-plant', 'Codariocalyx motorius', 'species', 'Fabaceae', 2223, 'Codariocalyx', 'https://bs.plantnet.org/image/o/5a26fa7ee7ac92678e2642d69098139b5ae712e9', '2023-05-30 13:22:58', '2023-05-30 13:22:58'),
(54, 120374, 'tolmiea-menziesii', 'Pick-a-back-plant', 'Tolmiea menziesii', 'species', 'Saxifragaceae', 6299, 'Tolmiea', 'https://bs.plantnet.org/image/o/7f1d93b625bd753dc0088da19f88332be13d2dbf', '2023-05-30 13:22:58', '2023-05-30 13:22:58'),
(55, 92346, 'billbergia-nutans', 'Friendship-plant', 'Billbergia nutans', 'species', 'Bromeliaceae', 4269, 'Billbergia', 'https://bs.plantnet.org/image/o/086b33e1b196d08af75109812dadf631f625d70c', '2023-05-30 13:22:58', '2023-05-30 13:22:58'),
(56, 86438, 'tetrapanax-papyrifer', 'Chinese rice-paper plant', 'Tetrapanax papyrifer', 'species', 'Araliaceae', 3939, 'Tetrapanax', 'https://bs.plantnet.org/image/o/9cd1d8e7e370b07c6a0b92695cb771295273c886', '2023-05-30 13:22:58', '2023-05-30 13:22:58'),
(57, 7026, 'helichrysum-petiolare', 'Licorice-plant', 'Helichrysum petiolare', 'species', 'Asteraceae', 39, 'Helichrysum', 'https://bs.plantnet.org/image/o/6326205aded01cc73a399867bdfbf97b23ea27b3', '2023-05-30 13:22:58', '2023-05-30 13:22:58'),
(58, 104505, 'pachystachys-lutea', 'Golden shrimp-plant', 'Pachystachys lutea', 'species', 'Acanthaceae', 5088, 'Pachystachys', 'https://bs.plantnet.org/image/o/dd8139a04b3fbc5ec11856809daf3da2c81a8c47', '2023-05-30 13:22:58', '2023-05-30 13:22:58'),
(59, 126243, 'peperomia-galioides', 'Needle-leaf wax plant', 'Peperomia galioides', 'species', 'Piperaceae', 6589, 'Peperomia', 'https://bs.plantnet.org/image/o/6e076b51d3261ac094e1db146a23cf83c846d335', '2023-05-30 13:22:58', '2023-05-30 13:22:58'),
(60, 39003, 'crotalaria-longirostrata', 'Castanet-plant', 'Crotalaria longirostrata', 'species', 'Fabaceae', 1924, 'Crotalaria', 'https://bs.plantnet.org/image/o/dd8d1d26af9244b353665fec007b90eb143e1ff2', '2023-05-30 13:22:58', '2023-05-30 13:22:58'),
(61, 42197, 'haematoxylum-brasiletto', 'Peachwood', 'Haematoxylum brasiletto', 'species', 'Fabaceae', 2031, 'Haematoxylum', 'https://bs.plantnet.org/image/o/c487435c8624e022ba7dcfddacaec4084cd58710', '2023-05-30 13:23:09', '2023-05-30 13:23:09'),
(62, 357051, 'paubrasilia-echinata', '', 'Paubrasilia echinata', 'species', 'Fabaceae', 15132, 'Paubrasilia', 'https://storage.googleapis.com/powop-assets/lowo/KPPCONT_086246_fullsize.jpg', '2023-05-30 13:23:09', '2023-05-30 13:23:09'),
(63, 82400, 'simira-rubescens', '', 'Simira rubescens', 'species', 'Rubiaceae', 3752, 'Simira', 'https://d2seqvvyy3b8p2.cloudfront.net/41a3a5de417121d752d8262f22811e34.jpg', '2023-05-30 13:23:09', '2023-05-30 13:23:09'),
(64, 82373, 'simira-cordifolia', '', 'Simira cordifolia', 'species', 'Rubiaceae', 3752, 'Simira', 'https://d2seqvvyy3b8p2.cloudfront.net/cf16c1b46ed45e10b5a9dad17391bef1.jpg', '2023-05-30 13:23:09', '2023-05-30 13:23:09'),
(65, 208447, 'bertholletia-excelsa', 'Brazilnut', 'Bertholletia excelsa', 'species', 'Lecythidaceae', 10126, 'Bertholletia', 'https://bs.plantnet.org/image/o/c7bc4555c41edc5dc96fa1a0a76efd2f235b819c', '2023-05-30 13:23:09', '2023-05-30 13:23:09'),
(66, 96552, 'commelina-diffusa', 'Climbing dayflower', 'Commelina diffusa', 'species', 'Commelinaceae', 4465, 'Commelina', 'https://bs.plantnet.org/image/o/3370b58017c1fcd90719b20012bb76a1b554892e', '2023-05-30 13:23:09', '2023-05-30 13:23:09'),
(67, 167676, 'cryptocarya-mandioccana', '', 'Cryptocarya mandioccana', 'species', 'Lauraceae', 6717, 'Cryptocarya', 'https://d2seqvvyy3b8p2.cloudfront.net/72fb093d2d060ff3b39701e9ad6beaf4.jpg', '2023-05-30 13:23:09', '2023-05-30 13:23:09'),
(68, 38340, 'dalbergia-nigra', 'Rosewood', 'Dalbergia nigra', 'species', 'Fabaceae', 1925, 'Dalbergia', 'https://bs.plantnet.org/image/o/a831142ed1ccd333cd76aebe909f7457eb8ff293', '2023-05-30 13:23:09', '2023-05-30 13:23:09'),
(69, 354031, 'ipomoea-megapotamica', '', 'Ipomoea megapotamica', 'species', 'Convolvulaceae', 1757, 'Ipomoea', 'https://d2seqvvyy3b8p2.cloudfront.net/2a972f6b9c879e193e876583195a2683.jpg', '2023-05-30 13:23:09', '2023-05-30 13:23:09'),
(70, 112499, 'wilbrandia-verticillata', '', 'Wilbrandia verticillata', 'species', 'Cucurbitaceae', 5658, 'Wilbrandia', 'https://d2seqvvyy3b8p2.cloudfront.net/92666619311ef25d574355427df776f7.jpg', '2023-05-30 13:23:09', '2023-05-30 13:23:09'),
(71, 342523, 'roupala-paulensis', '', 'Roupala paulensis', 'species', 'Proteaceae', 5344, 'Roupala', NULL, '2023-05-30 13:23:09', '2023-05-30 13:23:09'),
(72, 114763, 'schinus-terebinthifolia', 'Brazilian peppertree', 'Schinus terebinthifolia', 'species', 'Anacardiaceae', 5858, 'Schinus', 'https://bs.plantnet.org/image/o/a314655cdb4a7f656547e822da785ab40cf01f35', '2023-05-30 13:23:09', '2023-05-30 13:23:09'),
(73, 157452, 'tradescantia-fluminensis', 'Wandering-jew', 'Tradescantia fluminensis', 'species', 'Commelinaceae', 8094, 'Tradescantia', 'https://bs.plantnet.org/image/o/54b1ddf238c9667a15ca866c6a576a4a74041d5b', '2023-05-30 13:23:09', '2023-05-30 13:23:09'),
(74, 342100, 'simarouba-versicolor', '', 'Simarouba versicolor', 'species', 'Simaroubaceae', 6676, 'Simarouba', 'https://d2seqvvyy3b8p2.cloudfront.net/c373e01cdd59777085a8b91d4a6af326.jpg', '2023-05-30 13:23:09', '2023-05-30 13:23:09'),
(75, 183919, 'euplassa-incana', '', 'Euplassa incana', 'species', 'Proteaceae', 9125, 'Euplassa', 'https://d2seqvvyy3b8p2.cloudfront.net/ef7a0bafbb7dd1b222c04d93398f6c61.jpg', '2023-05-30 13:23:09', '2023-05-30 13:23:09'),
(76, 96434, 'commelina-benghalensis', 'Benghal dayflower', 'Commelina benghalensis', 'species', 'Commelinaceae', 4465, 'Commelina', 'https://bs.plantnet.org/image/o/2d97b6d0faf14c9659dea0d3086ed351da51d631', '2023-05-30 13:23:09', '2023-05-30 13:23:09'),
(77, 68481, 'pentagonia-wurdackii', '', 'Pentagonia wurdackii', 'species', 'Rubiaceae', 3250, 'Pentagonia', 'https://d2seqvvyy3b8p2.cloudfront.net/f4885de910c8284b1514072d71c18360.jpg', '2023-05-30 13:23:09', '2023-05-30 13:23:09'),
(78, 68480, 'pentagonia-williamsii', '', 'Pentagonia williamsii', 'species', 'Rubiaceae', 3250, 'Pentagonia', 'https://d2seqvvyy3b8p2.cloudfront.net/88566dbd9d9b474ddbc66a9317f3e4f6.jpg', '2023-05-30 13:23:09', '2023-05-30 13:23:09'),
(79, 38380, 'dimorphandra-exaltata', '', 'Dimorphandra exaltata', 'species', 'Fabaceae', 2091, 'Dimorphandra', 'https://d2seqvvyy3b8p2.cloudfront.net/2f9aca2ce120fd3c492fffb9d3f0da01.jpg', '2023-05-30 13:23:09', '2023-05-30 13:23:09'),
(80, 269564, 'solanum-pseudocapsicum', 'Jerusalem-cherry', 'Solanum pseudocapsicum', 'species', 'Solanaceae', 12343, 'Solanum', 'https://bs.plantnet.org/image/o/88eac06dd733326e2c5390262990f1cc046e12d4', '2023-05-30 13:23:09', '2023-05-30 13:23:09'),
(81, 10046, 'antennaria-dioica', 'Cat\'s-foot', 'Antennaria dioica', 'species', 'Asteraceae', 88, 'Antennaria', 'https://bs.plantnet.org/image/o/05547b5322f216d23127724e175a1ae7f3af7f40', '2023-05-30 13:23:22', '2023-05-30 13:23:22'),
(82, 233328, 'phleum-pratense', 'Meadow cat\'s-tail', 'Phleum pratense', 'species', 'Poaceae', 11253, 'Phleum', 'https://bs.plantnet.org/image/o/7fc8ec91e260f4daf2b0cbbd72a1c317ee78118a', '2023-05-30 13:23:22', '2023-05-30 13:23:22'),
(83, 62669, 'mussaenda-arcuata', '', 'Mussaenda arcuata', 'species', 'Rubiaceae', 2982, 'Mussaenda', 'https://bs.plantnet.org/image/o/b5bbff3b9379933f4fcf89ed72f8b64a31ddf0b8', '2023-05-30 13:23:22', '2023-05-30 13:23:22'),
(84, 221375, 'forestiera-rhamnifolia', '', 'Forestiera rhamnifolia', 'species', 'Oleaceae', 10405, 'Forestiera', 'https://d2seqvvyy3b8p2.cloudfront.net/ec5e523a67824f6afb12e04ffdb7bc9e.jpg', '2023-05-30 13:23:22', '2023-05-30 13:23:22'),
(85, 1732, 'hypochaeris-glabra', 'Smooth cat\'s-ear', 'Hypochaeris glabra', 'species', 'Asteraceae', 211, 'Hypochaeris', 'https://bs.plantnet.org/image/o/b7c4959495d7051f5c945a587c096fcd0d53c159', '2023-05-30 13:23:22', '2023-05-30 13:23:22'),
(86, 5012, 'hypochaeris-maculata', 'Spotted cat\'s-ear', 'Hypochaeris maculata', 'species', 'Asteraceae', 211, 'Hypochaeris', 'https://bs.plantnet.org/image/o/51e61f0dfbf01574fb4ba1efdc7720a4511e250e', '2023-05-30 13:23:22', '2023-05-30 13:23:22'),
(87, 233327, 'phleum-phleoides', 'Boehmer\'s cat\'s-tail', 'Phleum phleoides', 'species', 'Poaceae', 11253, 'Phleum', 'https://bs.plantnet.org/image/o/473e74946d70c6adc24c38454568e6feb6fb953f', '2023-05-30 13:23:22', '2023-05-30 13:23:22'),
(88, 442341, 'phymatosorus-scolopendria', 'Monarch fern', 'Phymatosorus scolopendria', 'species', 'Polypodiaceae', 1720, 'Phymatosorus', 'https://bs.plantnet.org/image/o/a36aa0f088bdd8f0798e7563e5e5648972eea4a2', '2023-05-30 13:23:22', '2023-05-30 13:23:22'),
(89, 233311, 'phleum-arenarium', 'Sand cat\'s-tail', 'Phleum arenarium', 'species', 'Poaceae', 11253, 'Phleum', 'https://bs.plantnet.org/image/o/ceb4f42e9708c249378973abc889a0da64354eb7', '2023-05-30 13:23:22', '2023-05-30 13:23:22'),
(90, 102154, 'ocotea-sinuata', '', 'Ocotea sinuata', 'species', 'Lauraceae', 4910, 'Ocotea', 'https://bs.plantnet.org/image/o/c810829c4ba3618fb54836f9a7a6f9e29cd5afba', '2023-05-30 13:23:22', '2023-05-30 13:23:22'),
(91, 86641, 'teucrium-marum', 'Cat thyme', 'Teucrium marum', 'species', 'Lamiaceae', 3944, 'Teucrium', 'https://bs.plantnet.org/image/o/c8a4713bb19b1361872541de3f624c9b0c210d83', '2023-05-30 13:23:22', '2023-05-30 13:23:22'),
(92, 138948, 'actinidia-polygama', 'Cat-powder', 'Actinidia polygama', 'species', 'Actinidiaceae', 7069, 'Actinidia', 'https://bs.plantnet.org/image/o/03c0c7b29a072dbc966febde9c7d2e25a7d5cf85', '2023-05-30 13:23:22', '2023-05-30 13:23:22'),
(93, 278198, 'oecopetalum-mexicanum', '', 'Oecopetalum mexicanum', 'species', 'Metteniusaceae', 12868, 'Oecopetalum', 'https://bs.plantnet.org/image/o/3d16d3409cf03bfbf113d7115f84f6030abf1bbb', '2023-05-30 13:23:22', '2023-05-30 13:23:22'),
(94, 190405, 'goupia-glabra', '', 'Goupia glabra', 'species', 'Goupiaceae', 9395, 'Goupia', 'https://bs.plantnet.org/image/o/182bc7443506b52c925bcf3a6cabf7352b5f923b', '2023-05-30 13:23:22', '2023-05-30 13:23:22'),
(95, 40212, 'pithecellobium-unguis-cati', 'Cat\'s-claw', 'Pithecellobium unguis-cati', 'species', 'Fabaceae', 2030, 'Pithecellobium', 'https://bs.plantnet.org/image/o/d8b96359274611adf0e73050e847a260c8abe33a', '2023-05-30 13:23:22', '2023-05-30 13:23:22'),
(96, 92101, 'anigozanthos-humilis', 'Cat\'s-paw', 'Anigozanthos humilis', 'species', 'Haemodoraceae', 4249, 'Anigozanthos', 'https://bs.plantnet.org/image/o/baf85b8e7378417bc1924963a933b6b1aa470d2c', '2023-05-30 13:23:22', '2023-05-30 13:23:22'),
(97, 167433, 'cryptantha-minima', 'Little cat\'s-eye', 'Cryptantha minima', 'species', 'Boraginaceae', 8512, 'Cryptantha', 'https://bs.plantnet.org/image/o/fd22ec3ccd0bdbb3d3eef55c5e04651121509cf7', '2023-05-30 13:23:22', '2023-05-30 13:23:22'),
(98, 88880, 'uncaria-tomentosa', 'Cat\'s claw', 'Uncaria tomentosa', 'species', 'Rubiaceae', 4049, 'Uncaria', 'https://bs.plantnet.org/image/o/89d6ebb509797a4874f72ea43a0cdd53feef028a', '2023-05-30 13:23:22', '2023-05-30 13:23:22'),
(99, 73403, 'pouteria-campechiana', 'Canistel', 'Pouteria campechiana', 'species', 'Sapotaceae', 3428, 'Pouteria', 'https://bs.plantnet.org/image/o/6ce4d3a75a73c8b3351f7535141afbe3b6b70dc7', '2023-05-30 13:23:22', '2023-05-30 13:23:22'),
(100, 37007, 'hymenaea-courbaril', 'Brazilian copal', 'Hymenaea courbaril', 'species', 'Fabaceae', 1943, 'Hymenaea', 'https://bs.plantnet.org/image/o/884206b31be5ba73dcc2ae375043344422f4cd66', '2023-05-30 13:23:22', '2023-05-30 13:23:22'),
(101, 185971, 'maianthemum-bifolium', 'May-lily', 'Maianthemum bifolium', 'species', 'Asparagaceae', 9191, 'Maianthemum', 'https://bs.plantnet.org/image/o/81d2719c25c00f8885f137bbcdf85e9b9185afb3', '2023-05-30 13:23:33', '2023-05-30 13:23:33'),
(102, 101763, 'nuphar-lutea', 'Yellow-water-lily', 'Nuphar lutea', 'species', 'Nymphaeaceae', 4892, 'Nuphar', 'https://bs.plantnet.org/image/o/548ce0b45cee2bf7fe593b4831fbf98e5f483e08', '2023-05-30 13:23:33', '2023-05-30 13:23:33'),
(103, 206372, 'dianella-caerulea', 'Blue flax-lily', 'Dianella caerulea', 'species', 'Asphodelaceae', 10046, 'Dianella', 'https://bs.plantnet.org/image/o/15d9d3443e6a3b88f696cf8893c606c9ad1e3485', '2023-05-30 13:23:33', '2023-05-30 13:23:33'),
(104, 205917, 'clintonia-borealis', 'Corn-lily', 'Clintonia borealis', 'species', 'Liliaceae', 10023, 'Clintonia', 'https://bs.plantnet.org/image/o/881fd8e4c7fbf348c1d2edbba0e775cf92410ba7', '2023-05-30 13:23:33', '2023-05-30 13:23:33'),
(105, 90354, 'zantedeschia-aethiopica', 'Altar-lily', 'Zantedeschia aethiopica', 'species', 'Araceae', 4133, 'Zantedeschia', 'https://bs.plantnet.org/image/o/6fbe0a0a1ea693a622d6b4f83cded7e03db179e4', '2023-05-30 13:23:33', '2023-05-30 13:23:33'),
(106, 184369, 'lilium-bulbiferum', 'Orange lily', 'Lilium bulbiferum', 'species', 'Liliaceae', 9079, 'Lilium', 'https://bs.plantnet.org/image/o/7efaaca2f3ce3a8dcb4afe3d13cd11f9c433f582', '2023-05-30 13:23:33', '2023-05-30 13:23:33'),
(107, 207001, 'erythronium-americanum', 'Trout-lily', 'Erythronium americanum', 'species', 'Liliaceae', 10072, 'Erythronium', 'https://bs.plantnet.org/image/o/752d4780f20742e786ba83d497553513db0eeaed', '2023-05-30 13:23:33', '2023-05-30 13:23:33'),
(108, 182602, 'lilium-philadelphicum', 'Flame lily', 'Lilium philadelphicum', 'species', 'Liliaceae', 9079, 'Lilium', 'https://bs.plantnet.org/image/o/14bd74b7b5fb848ea1631aec357302cd89fefbbd', '2023-05-30 13:23:33', '2023-05-30 13:23:33'),
(109, 206405, 'dianella-tasmanica', 'Tasman flax-lily', 'Dianella tasmanica', 'species', 'Asphodelaceae', 10046, 'Dianella', 'https://bs.plantnet.org/image/o/95d8d3f26ded6ec26efa958778770866a9ee1413', '2023-05-30 13:23:33', '2023-05-30 13:23:33'),
(110, 185972, 'maianthemum-canadense', 'Canadian may-lily', 'Maianthemum canadense', 'species', 'Asparagaceae', 9191, 'Maianthemum', 'https://bs.plantnet.org/image/o/3cd1659036b5960c0f9ba424247ca060c22ddd1f', '2023-05-30 13:23:33', '2023-05-30 13:23:33'),
(111, 207008, 'erythronium-grandiflorum', 'Avalanche-lily', 'Erythronium grandiflorum', 'species', 'Liliaceae', 10072, 'Erythronium', 'https://bs.plantnet.org/image/o/cba92cf8e4c284800c447f28c8a9b6eee5a9f4ef', '2023-05-30 13:23:33', '2023-05-30 13:23:33'),
(112, 115023, 'hedychium-gardnerianum', 'Ginger-lily', 'Hedychium gardnerianum', 'species', 'Zingiberaceae', 5878, 'Hedychium', 'https://bs.plantnet.org/image/o/cb42d0ab40b2de7220dee9fb4aae84cbaa61e52e', '2023-05-30 13:23:33', '2023-05-30 13:23:33'),
(113, 182833, 'lilium-columbianum', 'Spotted lily', 'Lilium columbianum', 'species', 'Liliaceae', 9079, 'Lilium', 'https://bs.plantnet.org/image/o/e2ba078ee2aef6143f97c2c50015fe66fa29e6c4', '2023-05-30 13:23:33', '2023-05-30 13:23:33'),
(114, 185973, 'maianthemum-dilatatum', 'May-lily', 'Maianthemum dilatatum', 'species', 'Asparagaceae', 9191, 'Maianthemum', 'https://bs.plantnet.org/image/o/bf036455fa752b5f10ac4f061ffb0f0fc79874ff', '2023-05-30 13:23:33', '2023-05-30 13:23:33'),
(115, 206041, 'convallaria-majalis', 'Lily-of-the-valley', 'Convallaria majalis', 'species', 'Asparagaceae', 10027, 'Convallaria', 'https://bs.plantnet.org/image/o/14a65dc4d1be00ebb24d894c4d4151855d263930', '2023-05-30 13:23:33', '2023-05-30 13:23:33'),
(116, 101528, 'nymphaea-alba', 'White water-lily', 'Nymphaea alba', 'species', 'Nymphaeaceae', 4873, 'Nymphaea', 'https://bs.plantnet.org/image/o/aef87e7175eef83b602f4e2d176682ad902b1f54', '2023-05-30 13:23:33', '2023-05-30 13:23:33'),
(117, 206553, 'doryanthes-excelsa', 'Gymea lily', 'Doryanthes excelsa', 'species', 'Doryanthaceae', 10056, 'Doryanthes', 'https://bs.plantnet.org/image/o/e87903e0466b0e4c504b1aeaeefd7bcc742f7198', '2023-05-30 13:23:33', '2023-05-30 13:23:33'),
(118, 285023, 'nymphaea-odorata', 'Fragrant water-lily', 'Nymphaea odorata', 'species', 'Nymphaeaceae', 4873, 'Nymphaea', 'https://bs.plantnet.org/image/o/354cc80bef8038c1745ad915559a4c577213b023', '2023-05-30 13:23:33', '2023-05-30 13:23:33'),
(119, 184365, 'lilium-canadense', 'Canada lily', 'Lilium canadense', 'species', 'Liliaceae', 9079, 'Lilium', 'https://bs.plantnet.org/image/o/08d1fa2c5c50bf57d83230f6fcab38d721a3f7c9', '2023-05-30 13:23:33', '2023-05-30 13:23:33'),
(120, 205497, 'bulbine-semibarbata', 'Leek lily', 'Bulbine semibarbata', 'species', 'Asphodelaceae', 9997, 'Bulbine', 'https://bs.plantnet.org/image/o/54c16ec5fe772a102229a14e7b65e934be207df2', '2023-05-30 13:23:33', '2023-05-30 13:23:33'),
(121, 291169, 'dryopteris-dilatata', 'Mountain wood fern', 'Dryopteris dilatata', 'species', 'Polypodiaceae', 1666, 'Dryopteris', 'https://bs.plantnet.org/image/o/43f1a30447556bbc5febddac834dc300ab047e51', '2023-05-30 13:23:46', '2023-05-30 13:23:46'),
(122, 290872, 'cystopteris-fragilis', 'Brittle bladder fern', 'Cystopteris fragilis', 'species', 'Aspleniaceae', 1748, 'Cystopteris', 'https://bs.plantnet.org/image/o/fb3ae8731f9e73f4d12749507e8ab0f298f17b48', '2023-05-30 13:23:46', '2023-05-30 13:23:46'),
(123, 291438, 'dryopteris-filix-mas', 'Male fern', 'Dryopteris filix-mas', 'species', 'Polypodiaceae', 1666, 'Dryopteris', 'https://bs.plantnet.org/image/o/0d032ccdbc62d58f986aa11f896db68c240059c0', '2023-05-30 13:23:46', '2023-05-30 13:23:46'),
(124, 291534, 'polystichum-acrostichoides', 'Christmas fern', 'Polystichum acrostichoides', 'species', 'Polypodiaceae', 1675, 'Polystichum', 'https://bs.plantnet.org/image/o/be6fa524ae31841e318bc0ba0f6ccc66eb9fbc91', '2023-05-30 13:23:46', '2023-05-30 13:23:46'),
(125, 290890, 'dryopteris-expansa', 'Northern buckler fern', 'Dryopteris expansa', 'species', 'Polypodiaceae', 1666, 'Dryopteris', 'https://bs.plantnet.org/image/o/ebfc40f3dfda840f23291a41d7f657d34826ece3', '2023-05-30 13:23:46', '2023-05-30 13:23:46'),
(126, 290945, 'polystichum-setiferum', 'Soft shield-fern', 'Polystichum setiferum', 'species', 'Polypodiaceae', 1675, 'Polystichum', 'https://bs.plantnet.org/image/o/4e01a0682d4d32df896f413608e9009cecdf3046', '2023-05-30 13:23:46', '2023-05-30 13:23:46'),
(127, 290889, 'dryopteris-erythrosora', 'Autumn fern', 'Dryopteris erythrosora', 'species', 'Polypodiaceae', 1666, 'Dryopteris', 'https://bs.plantnet.org/image/o/4fa33b6dc409266d8b292070e104e16312f97cea', '2023-05-30 13:23:46', '2023-05-30 13:23:46'),
(128, 290903, 'histiopteris-incisa', 'Batwing fern', 'Histiopteris incisa', 'species', 'Dennstaedtiaceae', 1646, 'Histiopteris', 'https://bs.plantnet.org/image/o/310e0157fbe451f52307ce010e315a2dadd64d70', '2023-05-30 13:23:46', '2023-05-30 13:23:46'),
(129, 290935, 'phegopteris-connectilis', 'Beech fern', 'Phegopteris connectilis', 'species', 'Aspleniaceae', 1740, 'Phegopteris', 'https://bs.plantnet.org/image/o/d18185e58b3dea1928e3596e1684274e91d2d467', '2023-05-30 13:23:46', '2023-05-30 13:23:46'),
(130, 226430, 'catapodium-rigidum', 'Fern grass', 'Catapodium rigidum', 'species', 'Poaceae', 10847, 'Catapodium', 'https://bs.plantnet.org/image/o/68b1953793694fa07511d2abae733e4f64d125fd', '2023-05-30 13:23:46', '2023-05-30 13:23:46'),
(131, 290895, 'dryopteris-marginalis', 'Marginal fern', 'Dryopteris marginalis', 'species', 'Polypodiaceae', 1666, 'Dryopteris', 'https://bs.plantnet.org/image/o/51a59d8675f024edae7f31414fde9e2c16d3ad4e', '2023-05-30 13:23:46', '2023-05-30 13:23:46'),
(132, 291045, 'rumohra-adiantiformis', 'Leather fern', 'Rumohra adiantiformis', 'species', 'Polypodiaceae', 1643, 'Rumohra', 'https://bs.plantnet.org/image/o/647d3e6e30311d43898e30fe440eabb06b911e97', '2023-05-30 13:23:46', '2023-05-30 13:23:46'),
(133, 290894, 'dryopteris-intermedia', 'Evergreen wood fern', 'Dryopteris intermedia', 'species', 'Polypodiaceae', 1666, 'Dryopteris', 'https://bs.plantnet.org/image/o/cae40aaa855eb40a28c09de64a0608897360958b', '2023-05-30 13:23:46', '2023-05-30 13:23:46'),
(134, 290901, 'gymnocarpium-dryopteris', 'Common oak fern', 'Gymnocarpium dryopteris', 'species', 'Aspleniaceae', 1751, 'Gymnocarpium', 'https://bs.plantnet.org/image/o/555051451fa4d6d3e22e8e2926c87cb7f69d6f94', '2023-05-30 13:23:46', '2023-05-30 13:23:46'),
(135, 291513, 'nephrolepis-cordifolia', 'Ladder fern', 'Nephrolepis cordifolia', 'species', 'Polypodiaceae', 1699, 'Nephrolepis', 'https://bs.plantnet.org/image/o/33210d54f2311ef61a680a2247861d7bc338c5cf', '2023-05-30 13:23:46', '2023-05-30 13:23:46'),
(136, 291518, 'onoclea-sensibilis', 'Sensitive fern', 'Onoclea sensibilis', 'species', 'Aspleniaceae', 1753, 'Onoclea', 'https://bs.plantnet.org/image/o/2350780c0b5075e9730fd643496d707c7162fb11', '2023-05-30 13:23:46', '2023-05-30 13:23:46'),
(137, 292663, 'osmundastrum-cinnamomeum', 'Cinnamon fern', 'Osmundastrum cinnamomeum', 'species', 'Osmundaceae', 1706, 'Osmundastrum', 'https://bs.plantnet.org/image/o/622067f9434c8ad051fde65be1fec2f6ea3227e1', '2023-05-30 13:23:46', '2023-05-30 13:23:46'),
(138, 291428, 'osmunda-regalis', 'Royal fern', 'Osmunda regalis', 'species', 'Osmundaceae', 1705, 'Osmunda', 'https://bs.plantnet.org/image/o/b41be219fdf559ce68700e8a79d902d426c09639', '2023-05-30 13:23:46', '2023-05-30 13:23:46'),
(139, 291546, 'polystichum-munitum', 'Common sword fern', 'Polystichum munitum', 'species', 'Polypodiaceae', 1675, 'Polystichum', 'https://bs.plantnet.org/image/o/66997ad8898e9db589831f9a0d14beb7fe627e58', '2023-05-30 13:23:46', '2023-05-30 13:23:46'),
(140, 291685, 'adiantum-capillus-veneris', 'Maidenhair fern', 'Adiantum capillus-veneris', 'species', 'Pteridaceae', 1635, 'Adiantum', 'https://bs.plantnet.org/image/o/6f787532f4978e7cab07c29042a4ed6a67d42d50', '2023-05-30 13:23:46', '2023-05-30 13:23:46'),
(141, 91374, 'aechmea-pubescens', '', 'Aechmea pubescens', 'species', 'Bromeliaceae', 4211, 'Aechmea', 'https://bs.plantnet.org/image/o/4433b84bf762a09062b834c4b4befa45466caabc', '2023-05-30 13:23:59', '2023-05-30 13:23:59'),
(142, 92513, 'bromelia-karatas', '', 'Bromelia karatas', 'species', 'Bromeliaceae', 4281, 'Bromelia', 'https://bs.plantnet.org/image/o/a6fd8121f847d1b5e03bbb671765b048f7f1228c', '2023-05-30 13:23:59', '2023-05-30 13:23:59'),
(143, 154655, 'tillandsia-complanata', '', 'Tillandsia complanata', 'species', 'Bromeliaceae', 7967, 'Tillandsia', 'https://bs.plantnet.org/image/o/87a45d794f5d3fb1d8b09b4abde585764ff280e9', '2023-05-30 13:23:59', '2023-05-30 13:23:59'),
(144, 92522, 'bromelia-pinguin', 'Pinguin', 'Bromelia pinguin', 'species', 'Bromeliaceae', 4281, 'Bromelia', 'https://bs.plantnet.org/image/o/78e8893eacc06273937dccca8850cd5c7d5d2422', '2023-05-30 13:23:59', '2023-05-30 13:23:59'),
(145, 95256, 'catopsis-morreniana', '', 'Catopsis morreniana', 'species', 'Bromeliaceae', 4337, 'Catopsis', 'https://d2seqvvyy3b8p2.cloudfront.net/ee1c083fb9b330810d7918ef00693246.jpg', '2023-05-30 13:23:59', '2023-05-30 13:23:59'),
(146, 160217, 'vriesea-heliconioides', '', 'Vriesea heliconioides', 'species', 'Bromeliaceae', 8231, 'Vriesea', 'https://bs.plantnet.org/image/o/a02bcd580c9182ad498c87ba0bc92723ca8870e4', '2023-05-30 13:23:59', '2023-05-30 13:23:59'),
(147, 92490, 'bromelia-balansae', '', 'Bromelia balansae', 'species', 'Bromeliaceae', 4281, 'Bromelia', 'https://bs.plantnet.org/image/o/3ed45afc81d1797066d4d56995ce8ee9f86e7835', '2023-05-30 13:23:59', '2023-05-30 13:23:59'),
(148, 155666, 'tillandsia-leiboldiana', '', 'Tillandsia leiboldiana', 'species', 'Bromeliaceae', 7967, 'Tillandsia', 'https://bs.plantnet.org/image/o/0d7003fa8c22e0072fa9d94276d7a9d3f779ed5b', '2023-05-30 13:23:59', '2023-05-30 13:23:59'),
(149, 130834, 'pitcairnia-brittoniana', '', 'Pitcairnia brittoniana', 'species', 'Bromeliaceae', 6692, 'Pitcairnia', 'https://bs.plantnet.org/image/o/5ecce8a89dbc91237d63058c5dfbfeb18fb4461d', '2023-05-30 13:23:59', '2023-05-30 13:23:59'),
(150, 92486, 'bromelia-antiacantha', '', 'Bromelia antiacantha', 'species', 'Bromeliaceae', 4281, 'Bromelia', 'https://bs.plantnet.org/image/o/20e50ce6f9dc1db12b703fe4374f9e55831b18d2', '2023-05-30 13:23:59', '2023-05-30 13:23:59'),
(151, 154983, 'tillandsia-fasciculata', 'Giant airplant', 'Tillandsia fasciculata', 'species', 'Bromeliaceae', 7967, 'Tillandsia', 'https://bs.plantnet.org/image/o/374337566a9e7786a46244f96504d350869ae72d', '2023-05-30 13:23:59', '2023-05-30 13:23:59'),
(152, 156363, 'tillandsia-pruinosa', 'Fuzzywuzzy airplant', 'Tillandsia pruinosa', 'species', 'Bromeliaceae', 7967, 'Tillandsia', 'https://bs.plantnet.org/image/o/55e7b4848397564bf1d9d9a420971c5523b78084', '2023-05-30 13:23:59', '2023-05-30 13:23:59'),
(153, 156202, 'tillandsia-paucifolia', 'Potbelly airplant', 'Tillandsia paucifolia', 'species', 'Bromeliaceae', 7967, 'Tillandsia', 'https://bs.plantnet.org/image/o/576ab9f8c7f3265ff57dd1e885fac00c3b54cdaf', '2023-05-30 13:23:59', '2023-05-30 13:23:59'),
(154, 92529, 'bromelia-serra', '', 'Bromelia serra', 'species', 'Bromeliaceae', 4281, 'Bromelia', NULL, '2023-05-30 13:23:59', '2023-05-30 13:23:59'),
(155, 91244, 'aechmea-chantinii', '', 'Aechmea chantinii', 'species', 'Bromeliaceae', 4211, 'Aechmea', 'https://bs.plantnet.org/image/o/6de95da9e7aa47f6cb3c53a9b83ce1b5e03b6bb8', '2023-05-30 13:23:59', '2023-05-30 13:23:59'),
(156, 92492, 'bromelia-chrysantha', '', 'Bromelia chrysantha', 'species', 'Bromeliaceae', 4281, 'Bromelia', 'https://d2seqvvyy3b8p2.cloudfront.net/8aac274a78795ecb9dd4855373474cf7.jpg', '2023-05-30 13:23:59', '2023-05-30 13:23:59'),
(157, 92521, 'bromelia-palmeri', '', 'Bromelia palmeri', 'species', 'Bromeliaceae', 4281, 'Bromelia', 'https://d2seqvvyy3b8p2.cloudfront.net/7bbe30655994ad664c431340e8445e3e.jpg', '2023-05-30 13:23:59', '2023-05-30 13:23:59'),
(158, 92509, 'bromelia-humilis', '', 'Bromelia humilis', 'species', 'Bromeliaceae', 4281, 'Bromelia', 'https://bs.plantnet.org/image/o/b7fa5a9ea19320482ed1e56829bf81f8478f04b8', '2023-05-30 13:23:59', '2023-05-30 13:23:59'),
(159, 92501, 'bromelia-goeldiana', '', 'Bromelia goeldiana', 'species', 'Bromeliaceae', 4281, 'Bromelia', 'https://d2seqvvyy3b8p2.cloudfront.net/30710b83afc63d720f9749c9ae2d4ec9.jpg', '2023-05-30 13:23:59', '2023-05-30 13:23:59'),
(160, 92506, 'bromelia-hemisphaerica', '', 'Bromelia hemisphaerica', 'species', 'Bromeliaceae', 4281, 'Bromelia', 'https://d2seqvvyy3b8p2.cloudfront.net/9a8aedd5f22ed5c782621cf0332353f0.jpg', '2023-05-30 13:23:59', '2023-05-30 13:23:59'),
(161, 58041, 'livistona-australis', 'Australian cabbage palm', 'Livistona australis', 'species', 'Arecaceae', 2783, 'Livistona', 'https://bs.plantnet.org/image/o/dd921ed585e8e55e742bb6f3d99712fedc84e8b0', '2023-05-30 13:24:25', '2023-05-30 13:24:25'),
(162, 206047, 'cordyline-australis', 'Cabbage tree', 'Cordyline australis', 'species', 'Asparagaceae', 10028, 'Cordyline', 'https://bs.plantnet.org/image/o/bf0103b99f91a14017dfdd613e12e4b24366ba5e', '2023-05-30 13:24:25', '2023-05-30 13:24:25'),
(163, 168715, 'cycas-media', 'Queensland cycas', 'Cycas media', 'species', 'Cycadaceae', 6968, 'Cycas', 'https://bs.plantnet.org/image/o/72265fb6ac34de443f9c324f8296acde4a72551a', '2023-05-30 13:24:25', '2023-05-30 13:24:25'),
(164, 206054, 'cordyline-fruticosa', 'Broadleaf palm-lily', 'Cordyline fruticosa', 'species', 'Asparagaceae', 10028, 'Cordyline', 'https://bs.plantnet.org/image/o/3c8f05709ff7105d9b867c88b4a000c0152f74a7', '2023-05-30 13:24:25', '2023-05-30 13:24:25'),
(165, 215691, 'caryota-urens', 'Jaggery palm', 'Caryota urens', 'species', 'Arecaceae', 10448, 'Caryota', 'https://bs.plantnet.org/image/o/028fbeab647de3692f2474a523c3aa3a55f00dd5', '2023-05-30 13:24:25', '2023-05-30 13:24:25'),
(166, 52750, 'hyphaene-thebaica', 'Egyptian doum palm', 'Hyphaene thebaica', 'species', 'Arecaceae', 2594, 'Hyphaene', 'https://bs.plantnet.org/image/o/bf338f0efea88b42a3b7480937aae9990f3ff37d', '2023-05-30 13:24:25', '2023-05-30 13:24:25'),
(167, 234116, 'clinostigma-savoryanum', '', 'Clinostigma savoryanum', 'species', 'Arecaceae', 11275, 'Clinostigma', 'https://storage.googleapis.com/powop-assets/palmweb/palm_tc_43744_1_fullsize.jpg', '2023-05-30 13:24:25', '2023-05-30 13:24:25'),
(168, 205176, 'beaucarnea-recurvata', 'Bottle-palm', 'Beaucarnea recurvata', 'species', 'Asparagaceae', 9982, 'Beaucarnea', 'https://bs.plantnet.org/image/o/3a154587b0d82a2a960b5ab4eb55fc030199e8ec', '2023-05-30 13:24:25', '2023-05-30 13:24:25'),
(169, 136415, 'ravenala-madagascariensis', 'Traveler\'s-palm', 'Ravenala madagascariensis', 'species', 'Strelitziaceae', 7216, 'Ravenala', 'https://bs.plantnet.org/image/o/f5518fbbb65181c1839ed0561003e6285f6e88cc', '2023-05-30 13:24:25', '2023-05-30 13:24:25'),
(170, 221106, 'cyanea-arborea', '', 'Cyanea arborea', 'species', 'Campanulaceae', 10577, 'Cyanea', 'https://d2seqvvyy3b8p2.cloudfront.net/d1e96a441e96753aa4a85fa8e8dc7c39.jpg', '2023-05-30 13:24:25', '2023-05-30 13:24:25'),
(171, 236068, 'cocos-nucifera', 'Coconut', 'Cocos nucifera', 'species', 'Arecaceae', 11446, 'Cocos', 'https://bs.plantnet.org/image/o/a0c4045351cd7e31ed6c4a338c4fd7f0be5c1a2f', '2023-05-30 13:24:25', '2023-05-30 13:24:25'),
(172, 89600, 'vitex-agnus-castus', 'Chasteberry', 'Vitex agnus-castus', 'species', 'Lamiaceae', 4085, 'Vitex', 'https://bs.plantnet.org/image/o/d03ebb778068a171acaed104aace8b133cb93daf', '2023-05-30 13:24:25', '2023-05-30 13:24:25'),
(173, 244547, 'populus-balsamifera', 'Balsam poplar', 'Populus balsamifera', 'species', 'Salicaceae', 11736, 'Populus', 'https://bs.plantnet.org/image/o/ca683e068706e9e80b592d6a769054e9e94793b6', '2023-05-30 13:24:25', '2023-05-30 13:24:25');

-- --------------------------------------------------------

--
-- Estrutura da tabela `plant_history`
--

CREATE TABLE `plant_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `plant_id` bigint(20) UNSIGNED NOT NULL,
  `visited_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `plant_history`
--

INSERT INTO `plant_history` (`id`, `user_id`, `plant_id`, `visited_at`, `created_at`, `updated_at`) VALUES
(1, 1, 101, NULL, '2023-05-30 14:03:02', '2023-05-30 14:03:02');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'breno', 'breno@gmail.com', NULL, '$2y$10$z68xkCcE9KAEiKDNIQJMxO7M4QSNNmjY7IwF2a6ZMpJ/UbX4kvXT6', NULL, '2023-05-30 14:02:31', '2023-05-30 14:02:31');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`id`),
  ADD KEY `historico_user_id_foreign` (`user_id`),
  ADD KEY `historico_plant_id_foreign` (`plant_id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices para tabela `plants`
--
ALTER TABLE `plants`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `plant_history`
--
ALTER TABLE `plant_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `plant_id` (`plant_id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `historico`
--
ALTER TABLE `historico`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `plants`
--
ALTER TABLE `plants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT de tabela `plant_history`
--
ALTER TABLE `plant_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `historico`
--
ALTER TABLE `historico`
  ADD CONSTRAINT `historico_plant_id_foreign` FOREIGN KEY (`plant_id`) REFERENCES `plants` (`id`),
  ADD CONSTRAINT `historico_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `plant_history`
--
ALTER TABLE `plant_history`
  ADD CONSTRAINT `plant_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `plant_history_ibfk_2` FOREIGN KEY (`plant_id`) REFERENCES `plants` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
