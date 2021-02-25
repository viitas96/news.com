-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1:3306
-- Timp de generare: feb. 25, 2021 la 04:00 PM
-- Versiune server: 10.3.22-MariaDB-log
-- Versiune PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `news`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `articles`
--

CREATE TABLE `articles` (
  `id` int(12) NOT NULL,
  `title` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_data` datetime NOT NULL DEFAULT current_timestamp(),
  `edited_data` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `articles`
--

INSERT INTO `articles` (`id`, `title`, `text`, `post_data`, `edited_data`) VALUES
(26, '\'Undervalued\' freshwater fish in decline with a third of species facing extinction', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-02-25 14:12:01', NULL),
(27, 'Alaska woman using outhouse attacked by bear, from below', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-02-25 14:12:33', NULL),
(28, 'Two Florida men arrested after TikTok allegedly shows unlicensed surgery on dog', '\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce porttitor lacinia orci non elementum. Sed vitae ligula mauris. Sed tellus risus, convallis quis turpis ut, venenatis efficitur mauris. Cras scelerisque lectus id dui aliquam, sed aliquet nunc pellentesque. Nunc suscipit molestie tortor, sed viverra nulla commodo sit amet. Aliquam non nisl nunc. Vestibulum a viverra elit. In tristique, felis ac consectetur imperdiet, ligula est convallis lacus, vitae ultrices quam magna ac velit. Ut scelerisque justo elit. Suspendisse imperdiet justo sit amet ante tincidunt eleifend. Cras sed vulputate dolor, ac gravida nibh. Curabitur fringilla lobortis risus in dapibus. Cras pharetra, lorem sit amet semper ornare, magna leo tristique diam, cursus consequat felis ligula et est.', '2021-02-25 14:13:05', NULL),
(29, 'Two Florida men arrested after TikTok allegedly shows unlicensed surgery on dog', 'Proin cursus blandit est, non eleifend lorem tempus ac. Curabitur eleifend risus in vestibulum ullamcorper. Integer leo mi, vulputate vitae blandit nec, ultrices in augue. Morbi aliquet sapien ac volutpat porttitor. Ut bibendum ligula eget mollis congue. Nunc malesuada ligula sit amet urna fermentum hendrerit. Nam pulvinar quam id pellentesque volutpat. Praesent a tortor a velit fringilla fringilla eu sed purus. Etiam lacinia neque quis leo maximus commodo. Vestibulum hendrerit lectus vitae justo tempus vehicula. Nulla vitae facilisis quam. Cras ornare elit odio. Nulla fringilla nibh dictum justo sodales porttitor. Morbi auctor at massa vitae congue. Aliquam et nibh ut urna lobortis scelerisque at vel est.', '2021-02-25 14:13:37', NULL),
(30, '\'I nearly lost my leg\': Ashley Judd recalls \'catastrophic\' accident in Congo rainforest', 'Proin cursus blandit est, non eleifend lorem tempus ac. Curabitur eleifend risus in vestibulum ullamcorper. Integer leo mi, vulputate vitae blandit nec, ultrices in augue. Morbi aliquet sapien ac volutpat porttitor. Ut bibendum ligula eget mollis congue. Nunc malesuada ligula sit amet urna fermentum hendrerit. Nam pulvinar quam id pellentesque volutpat. Praesent a tortor a velit fringilla fringilla eu sed purus. Etiam lacinia neque quis leo maximus commodo. Vestibulum hendrerit lectus vitae justo tempus vehicula. Nulla vitae facilisis quam. Cras ornare elit odio. Nulla fringilla nibh dictum justo sodales porttitor. Morbi auctor at massa vitae congue. Aliquam et nibh ut urna lobortis scelerisque at vel est.', '2021-02-25 14:14:12', NULL),
(31, 'Scientists clone the first U.S. endangered species', '\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce porttitor lacinia orci non elementum. Sed vitae ligula mauris. Sed tellus risus, convallis quis turpis ut, venenatis efficitur mauris. Cras scelerisque lectus id dui aliquam, sed aliquet nunc pellentesque. Nunc suscipit molestie tortor, sed viverra nulla commodo sit amet. Aliquam non nisl nunc. Vestibulum a viverra elit. In tristique, felis ac consectetur imperdiet, ligula est convallis lacus, vitae ultrices quam magna ac velit. Ut scelerisque justo elit. Suspendisse imperdiet justo sit amet ante tincidunt eleifend. Cras sed vulputate dolor, ac gravida nibh. Curabitur fringilla lobortis risus in dapibus. Cras pharetra, lorem sit amet semper ornare, magna leo tristique diam, cursus consequat felis ligula et est.', '2021-02-25 14:14:38', NULL),
(32, 'Skier rescued in Alaska backcountry after bear attack', '\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce porttitor lacinia orci non elementum. Sed vitae ligula mauris. Sed tellus risus, convallis quis turpis ut, venenatis efficitur mauris. Cras scelerisque lectus id dui aliquam, sed aliquet nunc pellentesque. Nunc suscipit molestie tortor, sed viverra nulla commodo sit amet. Aliquam non nisl nunc. Vestibulum a viverra elit. In tristique, felis ac consectetur imperdiet, ligula est convallis lacus, vitae ultrices quam magna ac velit. Ut scelerisque justo elit. Suspendisse imperdiet justo sit amet ante tincidunt eleifend. Cras sed vulputate dolor, ac gravida nibh. Curabitur fringilla lobortis risus in dapibus. Cras pharetra, lorem sit amet semper ornare, magna leo tristique diam, cursus consequat felis ligula et est.', '2021-02-25 14:15:05', NULL),
(33, 'Punxsutawney Phil says there will be 6 more weeks of winter', '\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce porttitor lacinia orci non elementum. Sed vitae ligula mauris. Sed tellus risus, convallis quis turpis ut, venenatis efficitur mauris. Cras scelerisque lectus id dui aliquam, sed aliquet nunc pellentesque. Nunc suscipit molestie tortor, sed viverra nulla commodo sit amet. Aliquam non nisl nunc. Vestibulum a viverra elit. In tristique, felis ac consectetur imperdiet, ligula est convallis lacus, vitae ultrices quam magna ac velit. Ut scelerisque justo elit. Suspendisse imperdiet justo sit amet ante tincidunt eleifend. Cras sed vulputate dolor, ac gravida nibh. Curabitur fringilla lobortis risus in dapibus. Cras pharetra, lorem sit amet semper ornare, magna leo tristique diam, cursus consequat felis ligula et est.', '2021-02-25 14:15:32', NULL),
(34, 'No-fly list: Southwest last to ban emotional-support animals', 'Proin cursus blandit est, non eleifend lorem tempus ac. Curabitur eleifend risus in vestibulum ullamcorper. Integer leo mi, vulputate vitae blandit nec, ultrices in augue. Morbi aliquet sapien ac volutpat porttitor. Ut bibendum ligula eget mollis congue. Nunc malesuada ligula sit amet urna fermentum hendrerit. Nam pulvinar quam id pellentesque volutpat. Praesent a tortor a velit fringilla fringilla eu sed purus. Etiam lacinia neque quis leo maximus commodo. Vestibulum hendrerit lectus vitae justo tempus vehicula. Nulla vitae facilisis quam. Cras ornare elit odio. Nulla fringilla nibh dictum justo sodales porttitor. Morbi auctor at massa vitae congue. Aliquam et nibh ut urna lobortis scelerisque at vel est.', '2021-02-25 14:16:11', NULL),
(35, 'Dog days at the White House: Champ and Major Biden come to D.C.', '\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce porttitor lacinia orci non elementum. Sed vitae ligula mauris. Sed tellus risus, convallis quis turpis ut, venenatis efficitur mauris. Cras scelerisque lectus id dui aliquam, sed aliquet nunc pellentesque. Nunc suscipit molestie tortor, sed viverra nulla commodo sit amet. Aliquam non nisl nunc. Vestibulum a viverra elit. In tristique, felis ac consectetur imperdiet, ligula est convallis lacus, vitae ultrices quam magna ac velit. Ut scelerisque justo elit. Suspendisse imperdiet justo sit amet ante tincidunt eleifend. Cras sed vulputate dolor, ac gravida nibh. Curabitur fringilla lobortis risus in dapibus. Cras pharetra, lorem sit amet semper ornare, magna leo tristique diam, cursus consequat felis ligula et est.', '2021-02-25 14:16:34', NULL),
(36, 'Pablo Escobar\'s hippos have invaded Colombia\'s waterways and need to be culled, study says', '\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce porttitor lacinia orci non elementum. Sed vitae ligula mauris. Sed tellus risus, convallis quis turpis ut, venenatis efficitur mauris. Cras scelerisque lectus id dui aliquam, sed aliquet nunc pellentesque. Nunc suscipit molestie tortor, sed viverra nulla commodo sit amet. Aliquam non nisl nunc. Vestibulum a viverra elit. In tristique, felis ac consectetur imperdiet, ligula est convallis lacus, vitae ultrices quam magna ac velit. Ut scelerisque justo elit. Suspendisse imperdiet justo sit amet ante tincidunt eleifend. Cras sed vulputate dolor, ac gravida nibh. Curabitur fringilla lobortis risus in dapibus. Cras pharetra, lorem sit amet semper ornare, magna leo tristique diam, cursus consequat felis ligula et est.', '2021-02-25 14:17:01', NULL),
(37, 'A pigeon pardon for bird named after Biden: Australia spares Joe after U.S. roots deemed fake', 'Proin cursus blandit est, non eleifend lorem tempus ac. Curabitur eleifend risus in vestibulum ullamcorper. Integer leo mi, vulputate vitae blandit nec, ultrices in augue. Morbi aliquet sapien ac volutpat porttitor. Ut bibendum ligula eget mollis congue. Nunc malesuada ligula sit amet urna fermentum hendrerit. Nam pulvinar quam id pellentesque volutpat. Praesent a tortor a velit fringilla fringilla eu sed purus. Etiam lacinia neque quis leo maximus commodo. Vestibulum hendrerit lectus vitae justo tempus vehicula. Nulla vitae facilisis quam. Cras ornare elit odio. Nulla fringilla nibh dictum justo sodales porttitor. Morbi auctor at massa vitae congue. Aliquam et nibh ut urna lobortis scelerisque at vel est.', '2021-02-25 14:17:46', NULL),
(38, 'Why abolishing the police and prisons is more practical than critics claims', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce porttitor lacinia orci non elementum. Sed vitae ligula mauris. Sed tellus risus, convallis quis turpis ut, venenatis efficitur mauris. Cras scelerisque lectus id dui aliquam, sed aliquet nunc pellentesque. Nunc suscipit molestie tortor, sed viverra nulla commodo sit amet. Aliquam non nisl nunc. Vestibulum a viverra elit. In tristique, felis ac consectetur imperdiet, ligula est convallis lacus, vitae ultrices quam magna ac velit. Ut scelerisque justo elit. Suspendisse imperdiet justo sit amet ante tincidunt eleifend. Cras sed vulputate dolor, ac gravida nibh. Curabitur fringilla lobortis risus in dapibus. Cras pharetra, lorem sit amet semper ornare, magna leo tristique diam, cursus consequat felis ligula et est.', '2021-02-25 14:18:42', '2021-02-25 14:39:43');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
