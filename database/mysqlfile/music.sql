-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2023 at 04:34 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `author_id` int(10) UNSIGNED NOT NULL,
  `author_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`author_id`, `author_name`, `author_image`) VALUES
(1, 'Miss Madelyn Emard', 'https://via.placeholder.com/50x50.png/003322?text=peoples+neque'),
(2, 'Ryder Braun', 'https://via.placeholder.com/50x50.png/004433?text=peoples+mollitia'),
(3, 'Prof. Myra Williamson', 'https://via.placeholder.com/50x50.png/007722?text=peoples+laudantium'),
(4, 'Prof. Lonny Gusikowski V', 'https://via.placeholder.com/50x50.png/009988?text=peoples+assumenda'),
(5, 'Erich Gibson', 'https://via.placeholder.com/50x50.png/00ee11?text=peoples+aut'),
(6, 'Allie Witting', 'https://via.placeholder.com/50x50.png/008877?text=peoples+laudantium'),
(7, 'Keith Rogahn', 'https://via.placeholder.com/50x50.png/00cc00?text=peoples+dignissimos'),
(8, 'Aimee Zemlak', 'https://via.placeholder.com/50x50.png/004477?text=peoples+qui'),
(9, 'Winfield Donnelly', 'https://via.placeholder.com/50x50.png/00cc77?text=peoples+eius'),
(10, 'Marianna Eichmann', 'https://via.placeholder.com/50x50.png/008877?text=peoples+occaecati');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'Quia rerum voluptatum.'),
(2, 'Hic laudantium.'),
(3, 'Et fuga et.'),
(4, 'Quasi ut et.'),
(5, 'Id et.'),
(6, 'Quo sed.'),
(7, 'Qui reprehenderit.'),
(8, 'Impedit odit.'),
(9, 'Est similique ab.'),
(10, 'Reprehenderit ipsa.');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(55, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(56, '2019_08_19_000000_create_failed_jobs_table', 1),
(57, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(58, '2023_06_10_120835_create_categories_table', 1),
(59, '2023_06_10_120849_create_authors_table', 1),
(61, '2023_06_10_121217_create_songs_table', 2),
(64, '2014_10_12_000000_create_users_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `song_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `song_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`song_id`, `title`, `song_name`, `category_id`, `summary`, `content`, `author_id`, `date`, `image`) VALUES
(1, 'Ut dignissimos occaecati maxime.', 'Numquam rerum quod ut.', 9, 'Aspernatur dolorum occaecati in minima blanditiis. Laborum excepturi itaque ex aliquid ea doloremque alias consequatur. Deserunt ipsum veniam voluptatem ex non velit. Nostrum rem dolorem consequatur dolor.', 'Repellat sapiente praesentium praesentium et vero sit. Placeat exercitationem id eaque error ea. Ut quia provident deserunt aut ut. Omnis aut et asperiores numquam et non.', 3, '2023-06-10 22:19:11', 'https://via.placeholder.com/640x480.png/0033ff?text=peoples+dolorem'),
(2, 'Quia nulla voluptatibus quia facere eius.', 'Aut sit eum dolorum.', 8, 'Ut ullam quibusdam sit illo atque possimus. Velit recusandae placeat omnis quam a. Iste voluptatem quisquam quos dolor.', 'Voluptate est adipisci est voluptas. Eius natus qui ipsum saepe ut enim. Consectetur veniam tenetur illo non eligendi voluptatem vitae.', 2, '2023-06-10 22:19:11', 'https://via.placeholder.com/640x480.png/0066cc?text=peoples+consectetur'),
(3, 'Non placeat reiciendis earum dicta error.', 'Iusto unde dolores.', 7, 'Qui minima accusantium voluptas necessitatibus. Non et facere voluptatem corporis quos ab. Recusandae rerum recusandae distinctio.', 'Ipsum voluptas assumenda nam enim eius omnis qui. Quo beatae vitae qui non dolores quis aut. Perferendis temporibus dignissimos tempore impedit.', 10, '2023-06-10 22:19:11', 'https://via.placeholder.com/640x480.png/0077bb?text=peoples+cum'),
(4, 'Voluptates architecto dolores nihil.', 'Suscipit quis iste nihil.', 3, 'Eos eum atque similique et molestiae nihil minima. Animi officiis eaque rerum maxime libero veritatis modi. Quos quisquam ut minima placeat aliquid ea sit voluptates.', 'Cum est sint aliquid incidunt quis laborum assumenda voluptatum. Aperiam cupiditate vero quia sint. Minima alias voluptatem odit.', 10, '2023-06-10 22:19:11', 'https://via.placeholder.com/640x480.png/00eeee?text=peoples+unde'),
(5, 'Eligendi culpa beatae qui veritatis aut.', 'Repellat perferendis repellendus est.', 10, 'At sint praesentium ut unde deserunt dignissimos ex. Nihil quis rerum ipsam illo amet et. Molestias voluptatem qui mollitia asperiores. Consequatur non qui quo consequatur. Aspernatur explicabo et omnis quis recusandae.', 'Qui mollitia unde sit ut delectus repellendus. Et vel error aperiam dignissimos. Cum itaque quas exercitationem est quasi veniam asperiores. Optio possimus expedita a necessitatibus dicta expedita quos reprehenderit.', 6, '2023-06-10 22:19:11', 'https://via.placeholder.com/640x480.png/000044?text=peoples+deserunt'),
(6, 'Dolor earum expedita ratione deserunt aut consequatur.', 'Inventore est et.', 10, 'Consequatur perspiciatis aut incidunt in molestiae nostrum. Corrupti provident impedit deserunt qui. Cumque reprehenderit aut et molestias qui sit inventore.', 'Inventore enim maiores ipsam veritatis eligendi beatae nesciunt. Consequatur dolorem voluptatem nihil nisi eveniet quod velit dolores. Sit qui consectetur vero sed dolorem enim quisquam. Cupiditate quisquam dolor velit sed ut.', 9, '2023-06-10 22:19:11', 'https://via.placeholder.com/640x480.png/0044dd?text=peoples+natus'),
(7, 'Quasi aspernatur repellat temporibus consequatur.', 'Esse aut quia.', 8, 'Nobis rerum error vel reiciendis sint. Deserunt ea in libero. Est est repellat atque ea consequatur eaque repellendus vel.', 'Tempora non voluptatibus totam minus quod numquam. Eos animi debitis ut et fugiat qui voluptatum.', 6, '2023-06-10 22:19:11', 'https://via.placeholder.com/640x480.png/00ccdd?text=peoples+eum'),
(8, 'Cumque impedit dolores dolores delectus.', 'Labore sed.', 6, 'Consectetur commodi sunt ab doloremque expedita et sapiente est. Sapiente et voluptas explicabo nostrum architecto laborum. Aspernatur aut omnis architecto et reprehenderit cupiditate.', 'Reiciendis quaerat et voluptas ipsam architecto officia magni. Eveniet harum qui qui architecto ipsa et molestiae sed. Quis incidunt ex ut debitis ratione.', 6, '2023-06-10 22:19:11', 'https://via.placeholder.com/640x480.png/0022cc?text=peoples+consectetur'),
(9, 'Quidem velit et asperiores corporis.', 'Omnis dolore id.', 10, 'Facere dicta earum repudiandae porro harum et. Exercitationem laboriosam laborum cupiditate nihil molestiae. Eum ut et voluptates aut dolor facilis. Asperiores recusandae nam nesciunt voluptas ea ut.', 'Minus totam ut ab in tenetur ut expedita. Quo in incidunt veniam sit veniam esse earum consequatur. At voluptatem id ipsum sunt sit soluta illum. Voluptas ea deserunt in commodi consequatur eius.', 8, '2023-06-10 22:19:11', 'https://via.placeholder.com/640x480.png/009922?text=peoples+perferendis'),
(10, 'Id voluptates harum et veritatis ipsum reiciendis.', 'Nesciunt sint.', 5, 'Voluptatem exercitationem et repellat. Quo doloribus animi voluptas sed voluptatem. Qui nesciunt excepturi explicabo. Nulla impedit qui eum inventore.', 'Odio expedita et voluptas nihil non eius dolor. Omnis pariatur praesentium in blanditiis maiores.', 7, '2023-06-10 22:19:11', 'https://via.placeholder.com/640x480.png/0077dd?text=peoples+doloremque'),
(11, 'Consequatur voluptatem repudiandae veniam facilis quia.', 'Fugit accusamus sint repudiandae.', 6, 'Maxime dicta provident nam cum sit ipsam. Dolore iusto exercitationem nesciunt qui. Enim ut in ipsum sequi earum earum.', 'Neque molestiae aperiam est qui architecto amet. Et repudiandae molestiae at. Enim atque et saepe reiciendis totam non velit. Esse unde assumenda non error.', 2, '2023-06-10 22:19:12', 'https://via.placeholder.com/640x480.png/00cc33?text=peoples+quam'),
(12, 'A qui voluptas qui est.', 'Alias amet voluptatem.', 5, 'Nesciunt consequatur autem molestiae id. Et quia illo quae nisi sit aliquam. Accusantium eius recusandae quasi.', 'Aperiam deserunt quo culpa. Nam in quasi distinctio. Saepe porro eos alias nihil. Quia maiores magnam similique ea voluptatem at repudiandae.', 9, '2023-06-10 22:19:12', 'https://via.placeholder.com/640x480.png/009911?text=peoples+maxime'),
(13, 'Sunt voluptas eum quis magni quia.', 'Numquam libero cumque id sit.', 1, 'Corrupti dicta ut sit possimus dolorum nostrum. Omnis totam quia aut. Omnis minus amet repellat eaque provident voluptatem quasi. Deserunt ut est odit. Tempore alias vero recusandae.', 'Quo qui sapiente modi rem qui sit qui corrupti. Ipsam maiores possimus ex necessitatibus minus ab dolore. Iste id nulla animi omnis consequatur magnam. Quia ut aut ex neque.', 8, '2023-06-10 22:19:12', 'https://via.placeholder.com/640x480.png/00bbcc?text=peoples+et'),
(14, 'Impedit eveniet alias qui.', 'Eveniet hic quia in nulla.', 7, 'Voluptatem dolores facilis et animi necessitatibus maxime illo. Modi rerum omnis eum facere voluptate. Quam similique ullam quia amet ipsum. Architecto eos praesentium cumque neque nemo placeat nisi impedit.', 'Culpa magnam aut aliquam omnis laudantium. Quasi atque et dicta mollitia atque. Rerum qui qui eveniet aut est. Nostrum voluptatum sit nobis alias laudantium sapiente.', 10, '2023-06-10 22:19:12', 'https://via.placeholder.com/640x480.png/00aadd?text=peoples+cupiditate'),
(15, 'Molestiae dolores qui repellendus.', 'Sit enim ut.', 6, 'Qui tempora voluptatem maiores et. Nostrum dolor modi quos tenetur expedita.', 'Sunt modi dignissimos qui et ratione. Officiis et accusantium temporibus dolores nihil debitis earum. Rem dolor enim vitae doloribus natus. Fuga aliquid a corrupti sequi aliquam. Quae molestiae voluptas at cupiditate et.', 8, '2023-06-10 22:19:12', 'https://via.placeholder.com/640x480.png/000066?text=peoples+velit'),
(16, 'Architecto provident sit eligendi iure.', 'Ducimus et rem.', 5, 'Dolor velit labore voluptate magni error maiores. Reiciendis hic dolorem explicabo. Excepturi velit occaecati voluptatem ducimus amet voluptas. Repellat aliquid maxime dolorem aut deleniti.', 'Enim nesciunt in nihil et deleniti atque. Facere aut quidem voluptate esse. Explicabo omnis aut voluptatem aut. Ea quis praesentium optio quis laborum eius asperiores eveniet.', 10, '2023-06-10 22:19:12', 'https://via.placeholder.com/640x480.png/00dd88?text=peoples+fuga'),
(17, 'Numquam fuga molestiae pariatur.', 'Amet ut doloremque qui.', 10, 'Tempore veritatis alias illo adipisci omnis minima. Est architecto quas repudiandae. Rerum ipsam perferendis illo eum rerum est maxime. Quibusdam qui aspernatur reiciendis distinctio delectus voluptatibus.', 'Ut dicta perferendis omnis consectetur. Molestiae cupiditate eum eveniet deserunt officia quaerat sunt repellendus. Aliquam nisi repellendus eos maxime. Est eaque fuga recusandae veritatis vitae.', 1, '2023-06-10 22:19:12', 'https://via.placeholder.com/640x480.png/006666?text=peoples+nam'),
(18, 'Facilis consequuntur qui iste quia dicta et.', 'Et quo accusamus incidunt.', 10, 'Aliquid quae exercitationem consequatur. Voluptas et neque rerum atque in aut corporis. Deleniti magni error occaecati.', 'Aut laborum voluptatem accusantium. Accusantium perferendis natus est qui amet pariatur. Et tempore non praesentium repellendus quia laudantium. Et sint dolor est velit nisi debitis placeat.', 1, '2023-06-10 22:19:12', 'https://via.placeholder.com/640x480.png/0044cc?text=peoples+numquam'),
(19, 'Magni eum ut et.', 'Voluptate ut unde unde.', 8, 'Non voluptatum ut sunt quasi voluptate aperiam adipisci. Neque enim esse libero eius laborum sit. Facilis error saepe pariatur. Quis voluptatem ea est voluptatem rem modi qui.', 'Ut est et consequatur omnis. Nostrum perspiciatis quia molestias sunt.', 8, '2023-06-10 22:19:12', 'https://via.placeholder.com/640x480.png/0022ff?text=peoples+ut'),
(20, 'Blanditiis corrupti illo recusandae veritatis nobis incidunt placeat.', 'Magni quaerat quo.', 2, 'Autem consequuntur doloremque ab excepturi. Libero molestiae id quos dolorum debitis. Deleniti sed repellendus id voluptatem qui est dolorem.', 'Qui quam neque a modi aut assumenda ad. Ullam quae quaerat dicta quis odio. Quo eveniet qui totam adipisci.', 4, '2023-06-10 22:19:12', 'https://via.placeholder.com/640x480.png/008888?text=peoples+possimus'),
(21, 'Ut et enim atque.', 'Fugit esse ea.', 2, 'Laborum ipsum rerum labore omnis est. Ad repellat possimus recusandae amet. Consectetur iusto ducimus repellendus voluptas cum maiores iusto.', 'Sed sint dolores eos aliquid rerum facere nisi. Nemo optio aliquid dicta atque ipsa ea. Facilis aperiam natus magni temporibus et eveniet autem nostrum. Consequatur distinctio iste recusandae dignissimos et eveniet nostrum et.', 4, '2023-06-10 22:19:12', 'https://via.placeholder.com/640x480.png/003377?text=peoples+eveniet'),
(22, 'Modi et sapiente fuga exercitationem aperiam sint.', 'Nisi quis culpa.', 4, 'Repudiandae accusantium quidem ullam esse eveniet. Aliquid magni minima et architecto in. Et nulla ratione eum assumenda aut. Maxime ullam ut velit velit numquam repellat iusto numquam. Sint a tempora dolore error ipsam.', 'Eligendi laboriosam nostrum minima animi. Voluptas aperiam deleniti dolore quasi quod alias sint. Vitae qui voluptates doloribus ut quo et et. Similique harum est corporis odit.', 10, '2023-06-10 22:19:12', 'https://via.placeholder.com/640x480.png/003311?text=peoples+aut'),
(23, 'Officiis sit et sunt ut quia.', 'Et dolor.', 3, 'In qui quos molestiae porro inventore. Eum qui rerum harum sequi ab adipisci. Rerum omnis sunt sapiente ut.', 'Qui quae est reiciendis consequatur. Qui minima debitis sunt et commodi. Et dolorum quia id deserunt similique ea quibusdam. Nam id veniam qui aliquam corrupti rerum odio.', 9, '2023-06-10 22:19:12', 'https://via.placeholder.com/640x480.png/0022ee?text=peoples+sint'),
(24, 'Voluptas qui et repellat possimus odio.', 'Accusantium hic laboriosam.', 5, 'Ullam doloremque alias in et. Vel et qui est quaerat voluptas assumenda est. Culpa nam ad cupiditate nam et qui.', 'Alias recusandae ducimus dignissimos. Doloremque numquam et molestias rem. Vero ut voluptatibus non veritatis repellat. In fugiat deserunt corporis.', 4, '2023-06-10 22:19:12', 'https://via.placeholder.com/640x480.png/00ccff?text=peoples+blanditiis'),
(25, 'Mollitia expedita architecto consequatur accusamus minima.', 'Commodi ut quo possimus.', 3, 'Non eum odit quae quos. Quo tempore est necessitatibus error et a accusantium. Aut atque at eius sed eveniet minus.', 'Quidem voluptatem quis sed sit tempora enim. Odit minus tempora dignissimos ut qui veritatis.', 8, '2023-06-10 22:19:12', 'https://via.placeholder.com/640x480.png/0022dd?text=peoples+omnis'),
(26, 'Ducimus eligendi ad aspernatur aut et dolorem.', 'Voluptates et voluptatum magnam.', 5, 'Expedita hic rerum iusto sed ipsum ipsum. Est in est maxime eligendi cum quibusdam voluptates. Consequatur perspiciatis sunt dolorem inventore.', 'Est sed impedit illum rerum non sit ratione. Est reiciendis vitae quaerat eveniet dolorem minima autem. Voluptas a sit et ut vel earum distinctio ipsa. Quas perspiciatis possimus et distinctio doloremque quis quos.', 2, '2023-06-10 22:19:12', 'https://via.placeholder.com/640x480.png/007799?text=peoples+corrupti'),
(27, 'Sunt tempora ut sed.', 'Placeat qui.', 4, 'Ipsum sequi dolorem optio commodi ex quasi enim necessitatibus. Nihil officiis officia itaque repudiandae dignissimos et. Aut necessitatibus dolorem quo dicta autem fugit. Sint non est alias illo qui molestias repudiandae.', 'Ut et explicabo eos consectetur. Qui voluptatem tenetur et consectetur repellat repellendus provident. Sint facere ipsum quidem facilis a deserunt. Expedita laboriosam enim est tenetur.', 6, '2023-06-10 22:19:12', 'https://via.placeholder.com/640x480.png/00ffbb?text=peoples+molestiae'),
(28, 'Suscipit numquam adipisci qui voluptatem.', 'Veritatis incidunt et vero in.', 10, 'Voluptas nihil nisi voluptatem nihil velit doloremque. Architecto unde qui asperiores harum. Laudantium laborum in cupiditate rerum officiis.', 'Molestiae dolores quam placeat reiciendis et et laboriosam. Et facilis non debitis ipsa ut fugit aut. Neque id quam placeat quis.', 6, '2023-06-10 22:19:12', 'https://via.placeholder.com/640x480.png/00bbff?text=peoples+aliquam'),
(29, 'Illo mollitia a enim.', 'Pariatur vero ad.', 5, 'Unde et quia nesciunt aliquam modi ea. Eum itaque minus adipisci nam quibusdam id. Quidem asperiores repellendus ut inventore est.', 'Aut aliquam rerum quibusdam omnis atque aut et. Quia vel assumenda quae mollitia expedita earum aut rerum. Commodi qui doloremque quas nam nobis et et.', 7, '2023-06-10 22:19:12', 'https://via.placeholder.com/640x480.png/005588?text=peoples+occaecati'),
(30, 'Et blanditiis non molestiae.', 'Deleniti labore.', 1, 'Aperiam aliquam a et maiores. Dolor quod provident consequatur mollitia vero. Facilis magnam quia modi quae non non rerum.', 'Quod eos porro praesentium earum mollitia. Suscipit suscipit voluptatem amet cum. Odit provident est architecto repellendus quibusdam dicta. Hic unde rem ea dicta. Vel dignissimos ullam itaque sunt voluptatibus cum quas ipsam.', 8, '2023-06-10 22:19:12', 'https://via.placeholder.com/640x480.png/00ff55?text=peoples+et');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_as` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`song_id`),
  ADD KEY `songs_category_id_foreign` (`category_id`),
  ADD KEY `songs_author_id_foreign` (`author_id`);

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
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `song_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `songs`
--
ALTER TABLE `songs`
  ADD CONSTRAINT `songs_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `songs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
