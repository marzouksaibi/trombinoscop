-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 06 déc. 2020 à 16:46
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `omeka`
--

-- --------------------------------------------------------

--
-- Structure de la table `api_key`
--

CREATE TABLE `api_key` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credential_hash` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_ip` varbinary(16) DEFAULT NULL COMMENT '(DC2Type:ip_address)',
  `last_accessed` datetime DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `asset`
--

CREATE TABLE `asset` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fulltext_search`
--

CREATE TABLE `fulltext_search` (
  `id` int(11) NOT NULL,
  `resource` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fulltext_search`
--

INSERT INTO `fulltext_search` (`id`, `resource`, `owner_id`, `is_public`, `title`, `text`) VALUES
(4, 'items', 1, 1, 'joueur1', '1\nsaibi\nmarzouk\nC:\\Users\\home\\Desktop\\NTROMBINO\\marzz.jpg \n25\nalgérien\nequipe1\njoueur1'),
(5, 'items', 1, 1, 'joueur2', '2\nghaoui\nyacine\nC:\\Users\\home\\Desktop\\NTROMBINO\\marzz.jpg\n25\nmarocain\nequipe2\njoueur2'),
(6, 'items', 1, 1, 'joueur3', '3\nouled oulhadj\nkoucila\nC:\\Users\\home\\Desktop\\NTROMBINO\\marzz.jpg \n24\nalgérien \nequipe3\njoueur3'),
(7, 'items', 1, 1, 'joueur4', '4\noulkadi\nsalim\nC:\\Users\\home\\Desktop\\NTROMBINO\\marzz.jpg \n27\nalgérien \nposte4\njoueur4'),
(8, 'items', 1, 1, 'joueur5', '5\nhelal \nlinda\nC:\\Users\\home\\Desktop\\NTROMBINO\\marzz.jpg \n20\nAlgerien\nequipe5\njoueur5'),
(9, 'items', 1, 1, 'joueur6', '6\nsabi\nsabrina\nC:\\Users\\home\\Desktop\\NTROMBINO\\marzz.jpg \n24\nalgerien\nequipe6\njoueur6'),
(10, 'items', 1, 1, 'division1', '1eR ligue\n1\ndivision1'),
(11, 'items', 1, 1, 'division2', '2eme ligue\n2\ndivision2'),
(12, 'items', 1, 1, 'division3', '3eme ligue\n3\ndivision3'),
(13, 'items', 1, 1, 'division4', '4eme ligue\n4\ndivision4'),
(14, 'items', 1, 1, 'division5', '5eme division\n5\ndivision5'),
(15, 'items', 1, 1, 'division 6', '6eme division\n6\ndivision 6'),
(16, 'items', 1, 1, 'equipe1', '1\nJSK\nequipe1'),
(17, 'items', 1, 1, 'equipe2', '2\nJSMB\nequipe2'),
(18, 'items', 1, 1, 'equipe3', '3\nNAHD\nequipe3'),
(19, 'items', 1, 1, 'equipe4', '4\nMOBB\nequipe4'),
(20, 'items', 1, 1, 'equipe5', '5\nPSG\nequipe5'),
(21, 'items', 1, 1, 'equipe6', '6\nMANC\nequipe6'),
(22, 'items', 1, 1, 'poste6', 'description 6\n6\nposte6'),
(23, 'items', 1, 1, 'poste5', 'description 5\n5\nposte5'),
(24, 'items', 1, 1, 'poste4', 'description 3\n4\nposte4'),
(25, 'items', 1, 1, 'poste3', 'description 4\n3\nposte3'),
(26, 'items', 1, 1, 'poste2', 'description2\n2\nposte2'),
(27, 'items', 1, 1, 'poste1', 'description1\n1\nposte1'),
(30, 'items', 1, 1, 'maillot4', '4\nnoir\nmaillot4'),
(31, 'items', 1, 1, 'maillot3', '3\ngris\nmaillot3'),
(32, 'items', 1, 1, 'maillot2', '2\nroug et vert\nmaillot2'),
(33, 'items', 1, 1, 'maillot1', '1\nnoir et bleu\nmaillot1'),
(35, 'items', 1, 1, 'maillot 5', '5\ngrisbleu\nmaillot 5'),
(39, 'item_sets', 1, 1, 'toutitems', 'toutitems\n'),
(40, 'item_sets', 1, 1, 'tout_les_joueurs', 'tout_les_joueurs'),
(41, 'item_sets', 1, 1, 'tous_les_equipe', 'tous_les_equipe'),
(42, 'item_sets', 1, 1, 'tout_division', 'tout_division'),
(43, 'item_sets', 1, 1, 'tout_maillot', 'tout_maillot'),
(44, 'item_sets', 1, 1, 'tout_poste', 'tout_poste');

-- --------------------------------------------------------

--
-- Structure de la table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item`
--

INSERT INTO `item` (`id`) VALUES
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(30),
(31),
(32),
(33),
(35);

-- --------------------------------------------------------

--
-- Structure de la table `item_item_set`
--

CREATE TABLE `item_item_set` (
  `item_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item_item_set`
--

INSERT INTO `item_item_set` (`item_id`, `item_set_id`) VALUES
(4, 39),
(4, 40),
(5, 39),
(5, 40),
(6, 39),
(6, 40),
(7, 39),
(7, 40),
(8, 39),
(8, 40),
(9, 39),
(9, 40),
(10, 39),
(10, 42),
(11, 39),
(11, 42),
(12, 39),
(12, 42),
(13, 39),
(13, 42),
(14, 39),
(14, 42),
(15, 39),
(15, 42),
(16, 39),
(16, 41),
(17, 39),
(17, 41),
(18, 39),
(18, 41),
(19, 39),
(19, 41),
(20, 39),
(20, 41),
(21, 39),
(21, 41),
(22, 39),
(22, 44),
(23, 39),
(23, 44),
(24, 39),
(24, 44),
(25, 39),
(25, 44),
(26, 39),
(26, 44),
(27, 39),
(27, 44),
(30, 39),
(30, 43),
(31, 39),
(31, 43),
(32, 39),
(32, 43),
(33, 39),
(33, 43),
(35, 39),
(35, 43);

-- --------------------------------------------------------

--
-- Structure de la table `item_set`
--

CREATE TABLE `item_set` (
  `id` int(11) NOT NULL,
  `is_open` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item_set`
--

INSERT INTO `item_set` (`id`, `is_open`) VALUES
(39, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0);

-- --------------------------------------------------------

--
-- Structure de la table `item_site`
--

CREATE TABLE `item_site` (
  `item_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `pid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `args` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `log` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `started` datetime NOT NULL,
  `ended` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `job`
--

INSERT INTO `job` (`id`, `owner_id`, `pid`, `status`, `class`, `args`, `log`, `started`, `ended`) VALUES
(1, 1, NULL, 'error', 'Omeka\\Job\\BatchUpdate', '{\"resource\":\"items\",\"query\":[],\"data\":[],\"data_remove\":{\"o:is_public\":\"1\",\"set_value_visibility\":{\"is_public\":\"1\"}},\"data_append\":{\"o:item_set\":[\"37\"]}}', '2020-11-19T12:23:31+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2020-11-19T12:23:31+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:62\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka\\application\\src\\Controller\\Admin\\ItemController.php(339): Omeka\\Job\\Dispatcher->dispatch(\'Omeka\\\\Job\\\\Batch...\', Array)\n#3 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(77): Omeka\\Controller\\Admin\\ItemController->batchEditAllAction()\n#4 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(103): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(139): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Application.php(331): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2020-11-19 12:23:31', '2020-11-19 12:23:31'),
(2, 1, NULL, 'error', 'Omeka\\Job\\BatchUpdate', '{\"resource\":\"items\",\"query\":[],\"data\":[],\"data_remove\":{\"o:resource_class\":{\"o:id\":\"23\"},\"set_value_visibility\":{\"property_id\":[\"16\"]}},\"data_append\":{\"o:item_set\":[\"37\"]}}', '2020-11-19T12:25:21+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2020-11-19T12:25:21+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:62\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka\\application\\src\\Controller\\Admin\\ItemController.php(339): Omeka\\Job\\Dispatcher->dispatch(\'Omeka\\\\Job\\\\Batch...\', Array)\n#3 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(77): Omeka\\Controller\\Admin\\ItemController->batchEditAllAction()\n#4 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(103): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(139): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Application.php(331): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2020-11-19 12:25:21', '2020-11-19 12:25:21'),
(3, 1, NULL, 'error', 'Omeka\\Job\\BatchUpdate', '{\"resource\":\"items\",\"query\":[],\"data\":[],\"data_remove\":{\"set_value_visibility\":\"\"},\"data_append\":{\"\":[{\"property_id\":\"\",\"type\":\"uri\",\"is_public\":\"1\",\"@id\":\"http:\\/\\/localhost\\/omeka\\/api\\/items?resource_class_id[]=607\",\"o:label\":\"\"}],\"o:item_set\":[\"37\"]}}', '2020-11-19T12:37:52+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2020-11-19T12:37:52+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:62\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka\\application\\src\\Controller\\Admin\\ItemController.php(339): Omeka\\Job\\Dispatcher->dispatch(\'Omeka\\\\Job\\\\Batch...\', Array)\n#3 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(77): Omeka\\Controller\\Admin\\ItemController->batchEditAllAction()\n#4 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(103): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(139): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Application.php(331): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2020-11-19 12:37:52', '2020-11-19 12:37:52'),
(4, 1, NULL, 'error', 'Omeka\\Job\\BatchUpdate', '{\"resource\":\"items\",\"query\":[],\"data\":[],\"data_remove\":{\"set_value_visibility\":\"\"},\"data_append\":{\"o:item_set\":[\"38\"]}}', '2020-11-19T12:52:10+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2020-11-19T12:52:10+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:62\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka\\application\\src\\Controller\\Admin\\ItemController.php(339): Omeka\\Job\\Dispatcher->dispatch(\'Omeka\\\\Job\\\\Batch...\', Array)\n#3 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(77): Omeka\\Controller\\Admin\\ItemController->batchEditAllAction()\n#4 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(103): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(139): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Application.php(331): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2020-11-19 12:52:10', '2020-11-19 12:52:10'),
(5, 1, NULL, 'error', 'Omeka\\Job\\BatchUpdate', '{\"resource\":\"items\",\"query\":[],\"data\":[],\"data_remove\":{\"set_value_visibility\":\"\"},\"data_append\":{\"o:item_set\":[\"38\"]}}', '2020-11-19T12:53:39+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2020-11-19T12:53:39+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:62\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka\\application\\src\\Controller\\Admin\\ItemController.php(339): Omeka\\Job\\Dispatcher->dispatch(\'Omeka\\\\Job\\\\Batch...\', Array)\n#3 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(77): Omeka\\Controller\\Admin\\ItemController->batchEditAllAction()\n#4 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(103): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(139): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Application.php(331): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2020-11-19 12:53:39', '2020-11-19 12:53:39'),
(6, 1, NULL, 'error', 'Omeka\\Job\\BatchUpdate', '{\"resource\":\"items\",\"query\":[],\"data\":[],\"data_remove\":{\"set_value_visibility\":\"\"},\"data_append\":{\"o:item_set\":[\"39\"]}}', '2020-11-19T12:59:53+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2020-11-19T12:59:53+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:62\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka\\application\\src\\Controller\\Admin\\ItemController.php(339): Omeka\\Job\\Dispatcher->dispatch(\'Omeka\\\\Job\\\\Batch...\', Array)\n#3 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(77): Omeka\\Controller\\Admin\\ItemController->batchEditAllAction()\n#4 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(103): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(139): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Application.php(331): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2020-11-19 12:59:53', '2020-11-19 12:59:53');

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `ingester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `renderer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `source` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage_id` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sha256` char(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `has_original` tinyint(1) NOT NULL,
  `has_thumbnails` tinyint(1) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `lang` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration`
--

INSERT INTO `migration` (`version`) VALUES
('20171128053327'),
('20180412035023'),
('20180919072656'),
('20180924033501'),
('20181002015551'),
('20181004043735'),
('20181106060421'),
('20190307043537'),
('20190319020708'),
('20190412090532'),
('20190423040354'),
('20190423071228'),
('20190514061351'),
('20190515055359'),
('20190729023728'),
('20190809092609'),
('20190815062003'),
('20200224022356'),
('20200226064602'),
('20200325091157'),
('20200326091310'),
('20200803000000'),
('20200831000000');

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

CREATE TABLE `module` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_creation`
--

CREATE TABLE `password_creation` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `activate` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `property`
--

CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `property`
--

INSERT INTO `property` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(1, NULL, 1, 'title', 'Title', 'A name given to the resource.'),
(2, NULL, 1, 'creator', 'Creator', 'An entity primarily responsible for making the resource.'),
(3, NULL, 1, 'subject', 'Subject', 'The topic of the resource.'),
(4, NULL, 1, 'description', 'Description', 'An account of the resource.'),
(5, NULL, 1, 'publisher', 'Publisher', 'An entity responsible for making the resource available.'),
(6, NULL, 1, 'contributor', 'Contributor', 'An entity responsible for making contributions to the resource.'),
(7, NULL, 1, 'date', 'Date', 'A point or period of time associated with an event in the lifecycle of the resource.'),
(8, NULL, 1, 'type', 'Type', 'The nature or genre of the resource.'),
(9, NULL, 1, 'format', 'Format', 'The file format, physical medium, or dimensions of the resource.'),
(10, NULL, 1, 'identifier', 'Identifier', 'An unambiguous reference to the resource within a given context.'),
(11, NULL, 1, 'source', 'Source', 'A related resource from which the described resource is derived.'),
(12, NULL, 1, 'language', 'Language', 'A language of the resource.'),
(13, NULL, 1, 'relation', 'Relation', 'A related resource.'),
(14, NULL, 1, 'coverage', 'Coverage', 'The spatial or temporal topic of the resource, the spatial applicability of the resource, or the jurisdiction under which the resource is relevant.'),
(15, NULL, 1, 'rights', 'Rights', 'Information about rights held in and over the resource.'),
(16, NULL, 1, 'audience', 'Audience', 'A class of entity for whom the resource is intended or useful.'),
(17, NULL, 1, 'alternative', 'Alternative Title', 'An alternative name for the resource.'),
(18, NULL, 1, 'tableOfContents', 'Table Of Contents', 'A list of subunits of the resource.'),
(19, NULL, 1, 'abstract', 'Abstract', 'A summary of the resource.'),
(20, NULL, 1, 'created', 'Date Created', 'Date of creation of the resource.'),
(21, NULL, 1, 'valid', 'Date Valid', 'Date (often a range) of validity of a resource.'),
(22, NULL, 1, 'available', 'Date Available', 'Date (often a range) that the resource became or will become available.'),
(23, NULL, 1, 'issued', 'Date Issued', 'Date of formal issuance (e.g., publication) of the resource.'),
(24, NULL, 1, 'modified', 'Date Modified', 'Date on which the resource was changed.'),
(25, NULL, 1, 'extent', 'Extent', 'The size or duration of the resource.'),
(26, NULL, 1, 'medium', 'Medium', 'The material or physical carrier of the resource.'),
(27, NULL, 1, 'isVersionOf', 'Is Version Of', 'A related resource of which the described resource is a version, edition, or adaptation.'),
(28, NULL, 1, 'hasVersion', 'Has Version', 'A related resource that is a version, edition, or adaptation of the described resource.'),
(29, NULL, 1, 'isReplacedBy', 'Is Replaced By', 'A related resource that supplants, displaces, or supersedes the described resource.'),
(30, NULL, 1, 'replaces', 'Replaces', 'A related resource that is supplanted, displaced, or superseded by the described resource.'),
(31, NULL, 1, 'isRequiredBy', 'Is Required By', 'A related resource that requires the described resource to support its function, delivery, or coherence.'),
(32, NULL, 1, 'requires', 'Requires', 'A related resource that is required by the described resource to support its function, delivery, or coherence.'),
(33, NULL, 1, 'isPartOf', 'Is Part Of', 'A related resource in which the described resource is physically or logically included.'),
(34, NULL, 1, 'hasPart', 'Has Part', 'A related resource that is included either physically or logically in the described resource.'),
(35, NULL, 1, 'isReferencedBy', 'Is Referenced By', 'A related resource that references, cites, or otherwise points to the described resource.'),
(36, NULL, 1, 'references', 'References', 'A related resource that is referenced, cited, or otherwise pointed to by the described resource.'),
(37, NULL, 1, 'isFormatOf', 'Is Format Of', 'A related resource that is substantially the same as the described resource, but in another format.'),
(38, NULL, 1, 'hasFormat', 'Has Format', 'A related resource that is substantially the same as the pre-existing described resource, but in another format.'),
(39, NULL, 1, 'conformsTo', 'Conforms To', 'An established standard to which the described resource conforms.'),
(40, NULL, 1, 'spatial', 'Spatial Coverage', 'Spatial characteristics of the resource.'),
(41, NULL, 1, 'temporal', 'Temporal Coverage', 'Temporal characteristics of the resource.'),
(42, NULL, 1, 'mediator', 'Mediator', 'An entity that mediates access to the resource and for whom the resource is intended or useful.'),
(43, NULL, 1, 'dateAccepted', 'Date Accepted', 'Date of acceptance of the resource.'),
(44, NULL, 1, 'dateCopyrighted', 'Date Copyrighted', 'Date of copyright.'),
(45, NULL, 1, 'dateSubmitted', 'Date Submitted', 'Date of submission of the resource.'),
(46, NULL, 1, 'educationLevel', 'Audience Education Level', 'A class of entity, defined in terms of progression through an educational or training context, for which the described resource is intended.'),
(47, NULL, 1, 'accessRights', 'Access Rights', 'Information about who can access the resource or an indication of its security status.'),
(48, NULL, 1, 'bibliographicCitation', 'Bibliographic Citation', 'A bibliographic reference for the resource.'),
(49, NULL, 1, 'license', 'License', 'A legal document giving official permission to do something with the resource.'),
(50, NULL, 1, 'rightsHolder', 'Rights Holder', 'A person or organization owning or managing rights over the resource.'),
(51, NULL, 1, 'provenance', 'Provenance', 'A statement of any changes in ownership and custody of the resource since its creation that are significant for its authenticity, integrity, and interpretation.'),
(52, NULL, 1, 'instructionalMethod', 'Instructional Method', 'A process, used to engender knowledge, attitudes and skills, that the described resource is designed to support.'),
(53, NULL, 1, 'accrualMethod', 'Accrual Method', 'The method by which items are added to a collection.'),
(54, NULL, 1, 'accrualPeriodicity', 'Accrual Periodicity', 'The frequency with which items are added to a collection.'),
(55, NULL, 1, 'accrualPolicy', 'Accrual Policy', 'The policy governing the addition of items to a collection.'),
(56, NULL, 3, 'affirmedBy', 'affirmedBy', 'A legal decision that affirms a ruling.'),
(57, NULL, 3, 'annotates', 'annotates', 'Critical or explanatory note for a Document.'),
(58, NULL, 3, 'authorList', 'list of authors', 'An ordered list of authors. Normally, this list is seen as a priority list that order authors by importance.'),
(59, NULL, 3, 'citedBy', 'cited by', 'Relates a document to another document that cites the\nfirst document.'),
(60, NULL, 3, 'cites', 'cites', 'Relates a document to another document that is cited\nby the first document as reference, comment, review, quotation or for\nanother purpose.'),
(61, NULL, 3, 'contributorList', 'list of contributors', 'An ordered list of contributors. Normally, this list is seen as a priority list that order contributors by importance.'),
(62, NULL, 3, 'court', 'court', 'A court associated with a legal document; for example, that which issues a decision.'),
(63, NULL, 3, 'degree', 'degree', 'The thesis degree.'),
(64, NULL, 3, 'director', 'director', 'A Film director.'),
(65, NULL, 3, 'distributor', 'distributor', 'Distributor of a document or a collection of documents.'),
(66, NULL, 3, 'editor', 'editor', 'A person having managerial and sometimes policy-making responsibility for the editorial part of a publishing firm or of a newspaper, magazine, or other publication.'),
(67, NULL, 3, 'editorList', 'list of editors', 'An ordered list of editors. Normally, this list is seen as a priority list that order editors by importance.'),
(68, NULL, 3, 'interviewee', 'interviewee', 'An agent that is interviewed by another agent.'),
(69, NULL, 3, 'interviewer', 'interviewer', 'An agent that interview another agent.'),
(70, NULL, 3, 'issuer', 'issuer', 'An entity responsible for issuing often informally published documents such as press releases, reports, etc.'),
(71, NULL, 3, 'organizer', 'organizer', 'The organizer of an event; includes conference organizers, but also government agencies or other bodies that are responsible for conducting hearings.'),
(72, NULL, 3, 'owner', 'owner', 'Owner of a document or a collection of documents.'),
(73, NULL, 3, 'performer', 'performer', NULL),
(74, NULL, 3, 'presentedAt', 'presented at', 'Relates a document to an event; for example, a paper to a conference.'),
(75, NULL, 3, 'presents', 'presents', 'Relates an event to associated documents; for example, conference to a paper.'),
(76, NULL, 3, 'producer', 'producer', 'Producer of a document or a collection of documents.'),
(77, NULL, 3, 'recipient', 'recipient', 'An agent that receives a communication document.'),
(78, NULL, 3, 'reproducedIn', 'reproducedIn', 'The resource in which another resource is reproduced.'),
(79, NULL, 3, 'reversedBy', 'reversedBy', 'A legal decision that reverses a ruling.'),
(80, NULL, 3, 'reviewOf', 'review of', 'Relates a review document to a reviewed thing (resource, item, etc.).'),
(81, NULL, 3, 'status', 'status', 'The publication status of (typically academic) content.'),
(82, NULL, 3, 'subsequentLegalDecision', 'subsequentLegalDecision', 'A legal decision on appeal that takes action on a case (affirming it, reversing it, etc.).'),
(83, NULL, 3, 'transcriptOf', 'transcript of', 'Relates a document to some transcribed original.'),
(84, NULL, 3, 'translationOf', 'translation of', 'Relates a translated document to the original document.'),
(85, NULL, 3, 'translator', 'translator', 'A person who translates written document from one language to another.'),
(86, NULL, 3, 'abstract', 'abstract', 'A summary of the resource.'),
(87, NULL, 3, 'argued', 'date argued', 'The date on which a legal case is argued before a court. Date is of format xsd:date'),
(88, NULL, 3, 'asin', 'asin', NULL),
(89, NULL, 3, 'chapter', 'chapter', 'An chapter number'),
(90, NULL, 3, 'coden', 'coden', NULL),
(91, NULL, 3, 'content', 'content', 'This property is for a plain-text rendering of the content of a Document. While the plain-text content of an entire document could be described by this property.'),
(92, NULL, 3, 'doi', 'doi', NULL),
(93, NULL, 3, 'eanucc13', 'eanucc13', NULL),
(94, NULL, 3, 'edition', 'edition', 'The name defining a special edition of a document. Normally its a literal value composed of a version number and words.'),
(95, NULL, 3, 'eissn', 'eissn', NULL),
(96, NULL, 3, 'gtin14', 'gtin14', NULL),
(97, NULL, 3, 'handle', 'handle', NULL),
(98, NULL, 3, 'identifier', 'identifier', NULL),
(99, NULL, 3, 'isbn', 'isbn', NULL),
(100, NULL, 3, 'isbn10', 'isbn10', NULL),
(101, NULL, 3, 'isbn13', 'isbn13', NULL),
(102, NULL, 3, 'issn', 'issn', NULL),
(103, NULL, 3, 'issue', 'issue', 'An issue number'),
(104, NULL, 3, 'lccn', 'lccn', NULL),
(105, NULL, 3, 'locator', 'locator', 'A description (often numeric) that locates an item within a containing document or collection.'),
(106, NULL, 3, 'numPages', 'number of pages', 'The number of pages contained in a document'),
(107, NULL, 3, 'numVolumes', 'number of volumes', 'The number of volumes contained in a collection of documents (usually a series, periodical, etc.).'),
(108, NULL, 3, 'number', 'number', 'A generic item or document number. Not to be confused with issue number.'),
(109, NULL, 3, 'oclcnum', 'oclcnum', NULL),
(110, NULL, 3, 'pageEnd', 'page end', 'Ending page number within a continuous page range.'),
(111, NULL, 3, 'pageStart', 'page start', 'Starting page number within a continuous page range.'),
(112, NULL, 3, 'pages', 'pages', 'A string of non-contiguous page spans that locate a Document within a Collection. Example: 23-25, 34, 54-56. For continuous page ranges, use the pageStart and pageEnd properties.'),
(113, NULL, 3, 'pmid', 'pmid', NULL),
(114, NULL, 3, 'prefixName', 'prefix name', 'The prefix of a name'),
(115, NULL, 3, 'section', 'section', 'A section number'),
(116, NULL, 3, 'shortDescription', 'shortDescription', NULL),
(117, NULL, 3, 'shortTitle', 'short title', 'The abbreviation of a title.'),
(118, NULL, 3, 'sici', 'sici', NULL),
(119, NULL, 3, 'suffixName', 'suffix name', 'The suffix of a name'),
(120, NULL, 3, 'upc', 'upc', NULL),
(121, NULL, 3, 'uri', 'uri', 'Universal Resource Identifier of a document'),
(122, NULL, 3, 'volume', 'volume', 'A volume number'),
(123, NULL, 4, 'mbox', 'personal mailbox', 'A  personal mailbox, ie. an Internet mailbox associated with exactly one owner, the first owner of this mailbox. This is a \'static inverse functional property\', in that  there is (across time and change) at most one individual that ever has any particular value for foaf:mbox.'),
(124, NULL, 4, 'mbox_sha1sum', 'sha1sum of a personal mailbox URI name', 'The sha1sum of the URI of an Internet mailbox associated with exactly one owner, the  first owner of the mailbox.'),
(125, NULL, 4, 'gender', 'gender', 'The gender of this Agent (typically but not necessarily \'male\' or \'female\').'),
(126, NULL, 4, 'geekcode', 'geekcode', 'A textual geekcode for this person, see http://www.geekcode.com/geek.html'),
(127, NULL, 4, 'dnaChecksum', 'DNA checksum', 'A checksum for the DNA of some thing. Joke.'),
(128, NULL, 4, 'sha1', 'sha1sum (hex)', 'A sha1sum hash, in hex.'),
(129, NULL, 4, 'based_near', 'based near', 'A location that something is based near, for some broadly human notion of near.'),
(130, NULL, 4, 'title', 'title', 'Title (Mr, Mrs, Ms, Dr. etc)'),
(131, NULL, 4, 'nick', 'nickname', 'A short informal nickname characterising an agent (includes login identifiers, IRC and other chat nicknames).'),
(132, NULL, 4, 'jabberID', 'jabber ID', 'A jabber ID for something.'),
(133, NULL, 4, 'aimChatID', 'AIM chat ID', 'An AIM chat ID'),
(134, NULL, 4, 'skypeID', 'Skype ID', 'A Skype ID'),
(135, NULL, 4, 'icqChatID', 'ICQ chat ID', 'An ICQ chat ID'),
(136, NULL, 4, 'yahooChatID', 'Yahoo chat ID', 'A Yahoo chat ID'),
(137, NULL, 4, 'msnChatID', 'MSN chat ID', 'An MSN chat ID'),
(138, NULL, 4, 'name', 'name', 'A name for some thing.'),
(139, NULL, 4, 'firstName', 'firstName', 'The first name of a person.'),
(140, NULL, 4, 'lastName', 'lastName', 'The last name of a person.'),
(141, NULL, 4, 'givenName', 'Given name', 'The given name of some person.'),
(142, NULL, 4, 'givenname', 'Given name', 'The given name of some person.'),
(143, NULL, 4, 'surname', 'Surname', 'The surname of some person.'),
(144, NULL, 4, 'family_name', 'family_name', 'The family name of some person.'),
(145, NULL, 4, 'familyName', 'familyName', 'The family name of some person.'),
(146, NULL, 4, 'phone', 'phone', 'A phone,  specified using fully qualified tel: URI scheme (refs: http://www.w3.org/Addressing/schemes.html#tel).'),
(147, NULL, 4, 'homepage', 'homepage', 'A homepage for some thing.'),
(148, NULL, 4, 'weblog', 'weblog', 'A weblog of some thing (whether person, group, company etc.).'),
(149, NULL, 4, 'openid', 'openid', 'An OpenID for an Agent.'),
(150, NULL, 4, 'tipjar', 'tipjar', 'A tipjar document for this agent, describing means for payment and reward.'),
(151, NULL, 4, 'plan', 'plan', 'A .plan comment, in the tradition of finger and \'.plan\' files.'),
(152, NULL, 4, 'made', 'made', 'Something that was made by this agent.'),
(153, NULL, 4, 'maker', 'maker', 'An agent that  made this thing.'),
(154, NULL, 4, 'img', 'image', 'An image that can be used to represent some thing (ie. those depictions which are particularly representative of something, eg. one\'s photo on a homepage).'),
(155, NULL, 4, 'depiction', 'depiction', 'A depiction of some thing.'),
(156, NULL, 4, 'depicts', 'depicts', 'A thing depicted in this representation.'),
(157, NULL, 4, 'thumbnail', 'thumbnail', 'A derived thumbnail image.'),
(158, NULL, 4, 'myersBriggs', 'myersBriggs', 'A Myers Briggs (MBTI) personality classification.'),
(159, NULL, 4, 'workplaceHomepage', 'workplace homepage', 'A workplace homepage of some person; the homepage of an organization they work for.'),
(160, NULL, 4, 'workInfoHomepage', 'work info homepage', 'A work info homepage of some person; a page about their work for some organization.'),
(161, NULL, 4, 'schoolHomepage', 'schoolHomepage', 'A homepage of a school attended by the person.'),
(162, NULL, 4, 'knows', 'knows', 'A person known by this person (indicating some level of reciprocated interaction between the parties).'),
(163, NULL, 4, 'interest', 'interest', 'A page about a topic of interest to this person.'),
(164, NULL, 4, 'topic_interest', 'topic_interest', 'A thing of interest to this person.'),
(165, NULL, 4, 'publications', 'publications', 'A link to the publications of this person.'),
(166, NULL, 4, 'currentProject', 'current project', 'A current project this person works on.'),
(167, NULL, 4, 'pastProject', 'past project', 'A project this person has previously worked on.'),
(168, NULL, 4, 'fundedBy', 'funded by', 'An organization funding a project or person.'),
(169, NULL, 4, 'logo', 'logo', 'A logo representing some thing.'),
(170, NULL, 4, 'topic', 'topic', 'A topic of some page or document.'),
(171, NULL, 4, 'primaryTopic', 'primary topic', 'The primary topic of some page or document.'),
(172, NULL, 4, 'focus', 'focus', 'The underlying or \'focal\' entity associated with some SKOS-described concept.'),
(173, NULL, 4, 'isPrimaryTopicOf', 'is primary topic of', 'A document that this thing is the primary topic of.'),
(174, NULL, 4, 'page', 'page', 'A page or document about this thing.'),
(175, NULL, 4, 'theme', 'theme', 'A theme.'),
(176, NULL, 4, 'account', 'account', 'Indicates an account held by this agent.'),
(177, NULL, 4, 'holdsAccount', 'account', 'Indicates an account held by this agent.'),
(178, NULL, 4, 'accountServiceHomepage', 'account service homepage', 'Indicates a homepage of the service provide for this online account.'),
(179, NULL, 4, 'accountName', 'account name', 'Indicates the name (identifier) associated with this online account.'),
(180, NULL, 4, 'member', 'member', 'Indicates a member of a Group'),
(181, NULL, 4, 'membershipClass', 'membershipClass', 'Indicates the class of individuals that are a member of a Group'),
(182, NULL, 4, 'birthday', 'birthday', 'The birthday of this Agent, represented in mm-dd string form, eg. \'12-31\'.'),
(183, NULL, 4, 'age', 'age', 'The age in years of some agent.'),
(184, NULL, 4, 'status', 'status', 'A string expressing what the user is happy for the general public (normally) to know about their current activity.'),
(185, 1, 5, 'account', 'account', 'Indicates an account held by this agent.'),
(186, 1, 5, 'accountName', 'account name', 'Indicates the name (identifier) associated with this online account.'),
(187, 1, 5, 'accountServiceHomepage', 'account service homepage', 'Indicates a homepage of the service provide for this online account.'),
(188, 1, 5, 'age', 'age', 'The age in years of some agent.'),
(189, 1, 5, 'aimChatID', 'AIM chat ID', 'An AIM chat ID'),
(190, 1, 5, 'nick', 'nickname', 'A short informal nickname characterising an agent (includes login identifiers, IRC and other chat nicknames).'),
(191, 1, 5, 'based_near', 'based near', 'A location that something is based near, for some broadly human notion of near.'),
(192, 1, 5, 'birthday', 'birthday', 'The birthday of this Agent, represented in mm-dd string form, eg. \'12-31\'.'),
(193, 1, 5, 'currentProject', 'current project', 'A current project this person works on.'),
(194, 1, 5, 'depiction', 'depiction', 'A depiction of some thing.'),
(195, 1, 5, 'depicts', 'depicts', 'A thing depicted in this representation.'),
(196, 1, 5, 'dnaChecksum', 'DNA checksum', 'A checksum for the DNA of some thing. Joke.'),
(197, 1, 5, 'familyName', 'familyName', 'The family name of some person.'),
(198, 1, 5, 'family_name', 'family_name', 'The family name of some person.'),
(199, 1, 5, 'firstName', 'firstName', 'The first name of a person.'),
(200, 1, 5, 'focus', 'focus', 'The underlying or \'focal\' entity associated with some SKOS-described concept.'),
(201, 1, 5, 'fundedBy', 'funded by', 'An organization funding a project or person.'),
(202, 1, 5, 'geekcode', 'geekcode', 'A textual geekcode for this person, see http://www.geekcode.com/geek.html'),
(203, 1, 5, 'gender', 'gender', 'The gender of this Agent (typically but not necessarily \'male\' or \'female\').'),
(204, 1, 5, 'givenName', 'Given name', 'The given name of some person.'),
(205, 1, 5, 'givenname', 'Given name', 'The given name of some person.'),
(206, 1, 5, 'holdsAccount', 'account', 'Indicates an account held by this agent.'),
(207, 1, 5, 'homepage', 'homepage', 'A homepage for some thing.'),
(208, 1, 5, 'page', 'page', 'A page or document about this thing.'),
(209, 1, 5, 'isPrimaryTopicOf', 'is primary topic of', 'A document that this thing is the primary topic of.'),
(210, 1, 5, 'icqChatID', 'ICQ chat ID', 'An ICQ chat ID'),
(211, 1, 5, 'img', 'image', 'An image that can be used to represent some thing (ie. those depictions which are particularly representative of something, eg. one\'s photo on a homepage).'),
(212, 1, 5, 'interest', 'interest', 'A page about a topic of interest to this person.'),
(213, 1, 5, 'primaryTopic', 'primary topic', 'The primary topic of some page or document.'),
(214, 1, 5, 'jabberID', 'jabber ID', 'A jabber ID for something.'),
(215, 1, 5, 'knows', 'knows', 'A person known by this person (indicating some level of reciprocated interaction between the parties).'),
(216, 1, 5, 'lastName', 'lastName', 'The last name of a person.'),
(217, 1, 5, 'logo', 'logo', 'A logo representing some thing.'),
(218, 1, 5, 'made', 'made', 'Something that was made by this agent.'),
(219, 1, 5, 'maker', 'maker', 'An agent that made this thing.'),
(220, 1, 5, 'mbox', 'personal mailbox', 'A personal mailbox, ie. an Internet mailbox associated with exactly one owner, the first owner of this mailbox. This is a \'static inverse functional property\', in that there is (across time and change) at most one individual that ever has any particular value for foaf:mbox.'),
(221, 1, 5, 'mbox_sha1sum', 'sha1sum of a personal mailbox URI name', 'The sha1sum of the URI of an Internet mailbox associated with exactly one owner, the first owner of the mailbox.'),
(222, 1, 5, 'member', 'member', 'Indicates a member of a Group'),
(223, 1, 5, 'membershipClass', 'membershipClass', 'Indicates the class of individuals that are a member of a Group'),
(224, 1, 5, 'msnChatID', 'MSN chat ID', 'An MSN chat ID'),
(225, 1, 5, 'myersBriggs', 'myersBriggs', 'A Myers Briggs (MBTI) personality classification.'),
(226, 1, 5, 'name', 'name', 'A name for some thing.'),
(227, 1, 5, 'openid', 'openid', 'An OpenID for an Agent.'),
(228, 1, 5, 'topic', 'topic', 'A topic of some page or document.'),
(229, 1, 5, 'pastProject', 'past project', 'A project this person has previously worked on.'),
(230, 1, 5, 'phone', 'phone', 'A phone, specified using fully qualified tel: URI scheme (refs: http://www.w3.org/Addressing/schemes.html#tel).'),
(231, 1, 5, 'plan', 'plan', 'A .plan comment, in the tradition of finger and \'.plan\' files.'),
(232, 1, 5, 'publications', 'publications', 'A link to the publications of this person.'),
(233, 1, 5, 'schoolHomepage', 'schoolHomepage', 'A homepage of a school attended by the person.'),
(234, 1, 5, 'sha1', 'sha1sum (hex)', 'A sha1sum hash, in hex.'),
(235, 1, 5, 'skypeID', 'Skype ID', 'A Skype ID'),
(236, 1, 5, 'status', 'status', 'A string expressing what the user is happy for the general public (normally) to know about their current activity.'),
(237, 1, 5, 'surname', 'Surname', 'The surname of some person.'),
(238, 1, 5, 'theme', 'theme', 'A theme.'),
(239, 1, 5, 'thumbnail', 'thumbnail', 'A derived thumbnail image.'),
(240, 1, 5, 'tipjar', 'tipjar', 'A tipjar document for this agent, describing means for payment and reward.'),
(241, 1, 5, 'title', 'title', 'Title (Mr, Mrs, Ms, Dr. etc)'),
(242, 1, 5, 'topic_interest', 'topic_interest', 'A thing of interest to this person.'),
(243, 1, 5, 'weblog', 'weblog', 'A weblog of some thing (whether person, group, company etc.).'),
(244, 1, 5, 'workInfoHomepage', 'work info homepage', 'A work info homepage of some person; a page about their work for some organization.'),
(245, 1, 5, 'workplaceHomepage', 'workplace homepage', 'A workplace homepage of some person; the homepage of an organization they work for.'),
(246, 1, 5, 'yahooChatID', 'Yahoo chat ID', 'A Yahoo chat ID'),
(247, 1, 6, 'colourName', 'colour name', 'A colour represented by a string holding its name (e.g.: red or green).'),
(248, 1, 7, 'partOfPostalAddress', 'partOfPostalAddress', NULL),
(249, 1, 7, 'accountProvider', 'accountProvider', NULL),
(250, 1, 7, 'acquired', 'acquired', NULL),
(251, 1, 7, 'acquirer', 'acquirer', NULL),
(252, 1, 7, 'activeInSector', 'activeInSector', NULL),
(253, 1, 7, 'appointedBy', 'appointedBy', NULL),
(254, 1, 7, 'architect', 'architect', NULL),
(255, 1, 7, 'isAuthorOf', 'isAuthorOf', NULL),
(256, 1, 7, 'authorOf', 'authorOf', NULL),
(257, 1, 7, 'pointAwardedTo', 'pointAwardedTo', NULL),
(258, 1, 7, 'carAssemblyIn', 'carAssemblyIn', NULL),
(259, 1, 7, 'causeOfDeath', 'causeOfDeath', NULL),
(260, 1, 7, 'conflictCombatant', 'conflictCombatant', NULL),
(261, 1, 7, 'combatantFrom', 'combatantFrom', NULL),
(262, 1, 7, 'hasCommander', 'hasCommander', NULL),
(263, 1, 7, 'compliantWithSchema', 'compliantWithSchema', NULL),
(264, 1, 7, 'positionContactInformation', 'positionContactInformation', NULL),
(265, 1, 7, 'containsLocation', 'containsLocation', NULL),
(266, 1, 7, 'designerOfFacility', 'designerOfFacility', NULL),
(267, 1, 7, 'genreOfAgent', 'genreOfAgent', NULL),
(268, 1, 7, 'hasAddress', 'hasAddress', NULL),
(269, 1, 7, 'hasAirport', 'hasAirport', NULL),
(270, 1, 7, 'hasBrother', 'hasBrother', NULL),
(271, 1, 7, 'hasCapital', 'hasCapital', NULL),
(272, 1, 7, 'hasCelebrityTitle', 'hasCelebrityTitle', NULL),
(273, 1, 7, 'hasClericTitle', 'hasClericTitle', NULL),
(274, 1, 7, 'hasCurrency', 'hasCurrency', NULL),
(275, 1, 7, 'hasDaughter', 'hasDaughter', NULL),
(276, 1, 7, 'hasEMail', 'hasEMail', NULL),
(277, 1, 7, 'hasFather', 'hasFather', NULL),
(278, 1, 7, 'hasFax', 'hasFax', NULL),
(279, 1, 7, 'hasGovernment', 'hasGovernment', NULL),
(280, 1, 7, 'hasHusband', 'hasHusband', NULL),
(281, 1, 7, 'hasInternetAddress', 'hasInternetAddress', NULL),
(282, 1, 7, 'hasMinister', 'hasMinister', NULL),
(283, 1, 7, 'hasMobilePhone', 'hasMobilePhone', NULL),
(284, 1, 7, 'hasMother', 'hasMother', NULL),
(285, 1, 7, 'hasNobeltyTitle', 'hasNobeltyTitle', NULL),
(286, 1, 7, 'hasOutOfLawsTitle', 'hasOutOfLawsTitle', NULL),
(287, 1, 7, 'hasPhone', 'hasPhone', NULL),
(288, 1, 7, 'hasPrimeMinister', 'hasPrimeMinister', NULL),
(289, 1, 7, 'hasProfession', 'hasProfession', NULL),
(290, 1, 7, 'hasPublisher', 'hasPublisher', NULL),
(291, 1, 7, 'hasRole', 'hasRole', NULL),
(292, 1, 7, 'hasSection', 'hasSection', NULL),
(293, 1, 7, 'hasShareholder', 'hasShareholder', NULL),
(294, 1, 7, 'hasSister', 'hasSister', NULL),
(295, 1, 7, 'hasSocialPositionCelebrity', 'hasSocialPositionCelebrity', NULL),
(296, 1, 7, 'hasSocialPositionCleric', 'hasSocialPositionCleric', NULL),
(297, 1, 7, 'hasSocialPositionNobelty', 'hasSocialPositionNobelty', NULL),
(298, 1, 7, 'hasSocialPositionOutOfLaws', 'hasSocialPositionOutOfLaws', NULL),
(299, 1, 7, 'hasSon', 'hasSon', NULL),
(300, 1, 7, 'hasStationaryPhone', 'hasStationaryPhone', NULL),
(301, 1, 7, 'hasTitle', 'hasTitle', NULL),
(302, 1, 7, 'hasSocialFunctionTitle', 'hasSocialFunctionTitle', NULL),
(303, 1, 7, 'hasWebPage', 'hasWebPage', NULL),
(304, 1, 7, 'hasWife', 'hasWife', NULL),
(305, 1, 7, 'hasDevice', 'hasDevice', NULL),
(306, 1, 7, 'hasISProfile', 'hasISProfile', NULL),
(307, 1, 7, 'hasLocation', 'hasLocation', NULL),
(308, 1, 7, 'hasUserProfile', 'hasUserProfile', NULL),
(309, 1, 7, 'industryOf', 'industryOf', NULL),
(310, 1, 7, 'musicInstrument', 'musicInstrument', NULL),
(311, 1, 7, 'isBirthPlaceOf', 'isBirthPlaceOf', NULL),
(312, 1, 7, 'isCurrentlyInterestedIn', 'isCurrentlyInterestedIn', NULL),
(313, 1, 7, 'isInterestedIn', 'isInterestedIn', NULL),
(314, 1, 7, 'issueOf', 'issueOf', NULL),
(315, 1, 7, 'locationMap', 'locationMap', NULL),
(316, 1, 7, 'nearby', 'nearby', NULL),
(317, 1, 7, 'neighbour', 'neighbour', NULL),
(318, 1, 7, 'nationalityOf', 'nationalityOf', NULL),
(319, 1, 7, 'ofCountry', 'ofCountry', NULL),
(320, 1, 7, 'officialPositionIn', 'officialPositionIn', NULL),
(321, 1, 7, 'ownerOf', 'ownerOf', NULL),
(322, 1, 7, 'ownershipOf', 'ownershipOf', NULL),
(323, 1, 7, 'birthPlace', 'birthPlace', NULL),
(324, 1, 7, 'deathPlace', 'deathPlace', NULL),
(325, 1, 7, 'hasPoint', 'hasPoint', NULL),
(326, 1, 7, 'appointmentFor', 'appointmentFor', NULL),
(327, 1, 7, 'positionWithinOrganization', 'positionWithinOrganization', NULL),
(328, 1, 7, 'productOf', 'productOf', NULL),
(329, 1, 7, 'publishedWithin', 'publishedWithin', NULL),
(330, 1, 7, 'isWrittenAbout', 'isWrittenAbout', NULL),
(331, 1, 7, 'hasRecurringEventInstance', 'hasRecurringEventInstance', NULL),
(332, 1, 7, 'districtRepresented', 'districtRepresented', NULL),
(333, 1, 7, 'socialPositionCleric', 'socialPositionCleric', NULL),
(334, 1, 7, 'socialPositionCelebrity', 'socialPositionCelebrity', NULL),
(335, 1, 7, 'socialPositionNobelty', 'socialPositionNobelty', NULL),
(336, 1, 7, 'socialPositionOutOfLaws', 'socialPositionOutOfLaws', NULL),
(337, 1, 7, 'subSectorOf', 'subSectorOf', NULL),
(338, 1, 7, 'tradedOn', 'tradedOn', NULL),
(339, 1, 7, 'organizationPosition', 'organizationPosition', NULL),
(340, 1, 7, 'birthDate', 'birthDate', NULL),
(341, 1, 7, 'currentFrequency', 'currentFrequency', NULL),
(342, 1, 7, 'firstOccuranceDate', 'firstOccuranceDate', NULL),
(343, 1, 7, 'finalOccuranceDate', 'finalOccuranceDate', NULL),
(344, 1, 7, 'datePublished', 'datePublished', NULL),
(345, 1, 7, 'deathDate', 'deathDate', NULL),
(346, 1, 7, 'fiscalNetIncome', 'fiscalNetIncome', NULL),
(347, 1, 7, 'fiscalSales', 'fiscalSales', NULL),
(348, 1, 7, 'hasBottomOffset', 'hasBottomOffset', NULL),
(349, 1, 7, 'hasCode', 'hasCode', NULL),
(350, 1, 7, 'hasLeftOffset', 'hasLeftOffset', NULL),
(351, 1, 7, 'hasRightOffset', 'hasRightOffset', NULL),
(352, 1, 7, 'hasTopOffset', 'hasTopOffset', NULL),
(353, 1, 7, 'hasUnit', 'hasUnit', NULL),
(354, 1, 7, 'hasCapabilities', 'hasCapabilities', NULL),
(355, 1, 7, 'hasEndOffset', 'hasEndOffset', NULL),
(356, 1, 7, 'hasStartOffset', 'hasStartOffset', NULL),
(357, 1, 7, 'hasString', 'hasString', NULL),
(358, 1, 7, 'ISBN', 'ISBN', NULL),
(359, 1, 7, 'ISSN', 'ISSN', NULL),
(360, 1, 7, 'locationName', 'locationName', NULL),
(361, 1, 7, 'stockExchangeIndex', 'stockExchangeIndex', NULL),
(362, 1, 7, 'transmission', 'transmission', NULL),
(363, 1, 8, 'omekaage', 'age', NULL),
(364, 1, 8, 'omekacouleur', 'couleur', NULL),
(365, 1, 8, 'omekanationalité', 'nationalité', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `resource`
--

CREATE TABLE `resource` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `resource_class_id` int(11) DEFAULT NULL,
  `resource_template_id` int(11) DEFAULT NULL,
  `thumbnail_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `resource_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource`
--

INSERT INTO `resource` (`id`, `owner_id`, `resource_class_id`, `resource_template_id`, `thumbnail_id`, `title`, `is_public`, `created`, `modified`, `resource_type`) VALUES
(4, 1, 607, 6, NULL, 'joueur1', 1, '2020-11-08 16:16:03', '2020-11-28 16:10:56', 'Omeka\\Entity\\Item'),
(5, 1, 607, 6, NULL, 'joueur2', 1, '2020-11-08 16:19:02', '2020-11-28 16:08:59', 'Omeka\\Entity\\Item'),
(6, 1, 607, 6, NULL, 'joueur3', 1, '2020-11-08 16:20:29', '2020-11-28 16:08:12', 'Omeka\\Entity\\Item'),
(7, 1, 607, 6, NULL, 'joueur4', 1, '2020-11-08 16:21:31', '2020-11-28 16:07:31', 'Omeka\\Entity\\Item'),
(8, 1, 607, 6, NULL, 'joueur5', 1, '2020-11-08 16:22:34', '2020-11-28 16:06:56', 'Omeka\\Entity\\Item'),
(9, 1, 607, 6, NULL, 'joueur6', 1, '2020-11-08 16:24:39', '2020-11-22 10:26:24', 'Omeka\\Entity\\Item'),
(10, 1, 610, 8, NULL, 'division1', 1, '2020-11-08 16:25:36', '2020-11-22 10:34:15', 'Omeka\\Entity\\Item'),
(11, 1, 256, 8, NULL, 'division2', 1, '2020-11-08 16:27:23', '2020-11-22 10:34:15', 'Omeka\\Entity\\Item'),
(12, 1, 610, 8, NULL, 'division3', 1, '2020-11-08 16:27:54', '2020-11-22 10:34:15', 'Omeka\\Entity\\Item'),
(13, 1, 610, 8, NULL, 'division4', 1, '2020-11-08 16:28:36', '2020-11-22 10:34:15', 'Omeka\\Entity\\Item'),
(14, 1, 256, 8, NULL, 'division5', 1, '2020-11-08 16:29:08', '2020-11-22 10:34:15', 'Omeka\\Entity\\Item'),
(15, 1, 256, 8, NULL, 'division 6', 1, '2020-11-08 16:29:35', '2020-11-22 10:34:15', 'Omeka\\Entity\\Item'),
(16, 1, 608, 7, NULL, 'equipe1', 1, '2020-11-08 16:33:37', '2020-11-22 10:25:52', 'Omeka\\Entity\\Item'),
(17, 1, 608, 7, NULL, 'equipe2', 1, '2020-11-08 16:33:58', '2020-11-22 10:25:52', 'Omeka\\Entity\\Item'),
(18, 1, 608, 7, NULL, 'equipe3', 1, '2020-11-08 16:34:41', '2020-11-22 10:25:52', 'Omeka\\Entity\\Item'),
(19, 1, 608, 7, NULL, 'equipe4', 1, '2020-11-08 16:35:25', '2020-11-22 10:25:52', 'Omeka\\Entity\\Item'),
(20, 1, 608, 7, NULL, 'equipe5', 1, '2020-11-08 16:36:30', '2020-11-22 10:25:52', 'Omeka\\Entity\\Item'),
(21, 1, 608, 7, NULL, 'equipe6', 1, '2020-11-08 16:36:55', '2020-11-22 10:25:52', 'Omeka\\Entity\\Item'),
(22, 1, 609, 9, NULL, 'poste6', 1, '2020-11-08 16:44:07', '2020-11-22 10:17:36', 'Omeka\\Entity\\Item'),
(23, 1, 609, 9, NULL, 'poste5', 1, '2020-11-08 16:44:33', '2020-11-22 10:17:36', 'Omeka\\Entity\\Item'),
(24, 1, 609, 9, NULL, 'poste4', 1, '2020-11-08 16:45:04', '2020-11-22 10:17:36', 'Omeka\\Entity\\Item'),
(25, 1, 609, 9, NULL, 'poste3', 1, '2020-11-08 16:45:32', '2020-11-22 10:17:36', 'Omeka\\Entity\\Item'),
(26, 1, 609, 9, NULL, 'poste2', 1, '2020-11-08 16:45:54', '2020-11-22 10:17:35', 'Omeka\\Entity\\Item'),
(27, 1, 609, 9, NULL, 'poste1', 1, '2020-11-08 16:46:17', '2020-11-22 10:17:35', 'Omeka\\Entity\\Item'),
(30, 1, 611, 10, NULL, 'maillot4', 1, '2020-11-08 16:48:35', '2020-11-22 10:16:04', 'Omeka\\Entity\\Item'),
(31, 1, 611, 10, NULL, 'maillot3', 1, '2020-11-08 16:49:01', '2020-11-22 10:16:04', 'Omeka\\Entity\\Item'),
(32, 1, 611, 10, NULL, 'maillot2', 1, '2020-11-08 16:49:32', '2020-11-22 10:16:04', 'Omeka\\Entity\\Item'),
(33, 1, 611, 10, NULL, 'maillot1', 1, '2020-11-08 16:50:06', '2020-11-22 10:16:04', 'Omeka\\Entity\\Item'),
(35, 1, 611, 10, NULL, 'maillot 5', 1, '2020-11-15 23:35:22', '2020-11-22 10:16:04', 'Omeka\\Entity\\Item'),
(39, 1, NULL, NULL, NULL, 'toutitems', 1, '2020-11-19 12:57:47', '2020-11-19 12:57:47', 'Omeka\\Entity\\ItemSet'),
(40, 1, NULL, NULL, NULL, 'tout_les_joueurs', 1, '2020-11-22 10:11:00', '2020-11-22 10:11:00', 'Omeka\\Entity\\ItemSet'),
(41, 1, NULL, NULL, NULL, 'tous_les_equipe', 1, '2020-11-22 10:11:22', '2020-11-22 10:11:22', 'Omeka\\Entity\\ItemSet'),
(42, 1, NULL, NULL, NULL, 'tout_division', 1, '2020-11-22 10:12:29', '2020-11-22 10:12:29', 'Omeka\\Entity\\ItemSet'),
(43, 1, NULL, NULL, NULL, 'tout_maillot', 1, '2020-11-22 10:12:45', '2020-11-22 10:12:45', 'Omeka\\Entity\\ItemSet'),
(44, 1, NULL, NULL, NULL, 'tout_poste', 1, '2020-11-22 10:13:29', '2020-11-22 10:13:29', 'Omeka\\Entity\\ItemSet');

-- --------------------------------------------------------

--
-- Structure de la table `resource_class`
--

CREATE TABLE `resource_class` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_class`
--

INSERT INTO `resource_class` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(1, NULL, 1, 'Agent', 'Agent', 'A resource that acts or has the power to act.'),
(2, NULL, 1, 'AgentClass', 'Agent Class', 'A group of agents.'),
(3, NULL, 1, 'BibliographicResource', 'Bibliographic Resource', 'A book, article, or other documentary resource.'),
(4, NULL, 1, 'FileFormat', 'File Format', 'A digital resource format.'),
(5, NULL, 1, 'Frequency', 'Frequency', 'A rate at which something recurs.'),
(6, NULL, 1, 'Jurisdiction', 'Jurisdiction', 'The extent or range of judicial, law enforcement, or other authority.'),
(7, NULL, 1, 'LicenseDocument', 'License Document', 'A legal document giving official permission to do something with a Resource.'),
(8, NULL, 1, 'LinguisticSystem', 'Linguistic System', 'A system of signs, symbols, sounds, gestures, or rules used in communication.'),
(9, NULL, 1, 'Location', 'Location', 'A spatial region or named place.'),
(10, NULL, 1, 'LocationPeriodOrJurisdiction', 'Location, Period, or Jurisdiction', 'A location, period of time, or jurisdiction.'),
(11, NULL, 1, 'MediaType', 'Media Type', 'A file format or physical medium.'),
(12, NULL, 1, 'MediaTypeOrExtent', 'Media Type or Extent', 'A media type or extent.'),
(13, NULL, 1, 'MethodOfInstruction', 'Method of Instruction', 'A process that is used to engender knowledge, attitudes, and skills.'),
(14, NULL, 1, 'MethodOfAccrual', 'Method of Accrual', 'A method by which resources are added to a collection.'),
(15, NULL, 1, 'PeriodOfTime', 'Period of Time', 'An interval of time that is named or defined by its start and end dates.'),
(16, NULL, 1, 'PhysicalMedium', 'Physical Medium', 'A physical material or carrier.'),
(17, NULL, 1, 'PhysicalResource', 'Physical Resource', 'A material thing.'),
(18, NULL, 1, 'Policy', 'Policy', 'A plan or course of action by an authority, intended to influence and determine decisions, actions, and other matters.'),
(19, NULL, 1, 'ProvenanceStatement', 'Provenance Statement', 'A statement of any changes in ownership and custody of a resource since its creation that are significant for its authenticity, integrity, and interpretation.'),
(20, NULL, 1, 'RightsStatement', 'Rights Statement', 'A statement about the intellectual property rights (IPR) held in or over a Resource, a legal document giving official permission to do something with a resource, or a statement about access rights.'),
(21, NULL, 1, 'SizeOrDuration', 'Size or Duration', 'A dimension or extent, or a time taken to play or execute.'),
(22, NULL, 1, 'Standard', 'Standard', 'A basis for comparison; a reference point against which other things can be evaluated.'),
(23, NULL, 2, 'Collection', 'Collection', 'An aggregation of resources.'),
(24, NULL, 2, 'Dataset', 'Dataset', 'Data encoded in a defined structure.'),
(25, NULL, 2, 'Event', 'Event', 'A non-persistent, time-based occurrence.'),
(26, NULL, 2, 'Image', 'Image', 'A visual representation other than text.'),
(27, NULL, 2, 'InteractiveResource', 'Interactive Resource', 'A resource requiring interaction from the user to be understood, executed, or experienced.'),
(28, NULL, 2, 'Service', 'Service', 'A system that provides one or more functions.'),
(29, NULL, 2, 'Software', 'Software', 'A computer program in source or compiled form.'),
(30, NULL, 2, 'Sound', 'Sound', 'A resource primarily intended to be heard.'),
(31, NULL, 2, 'Text', 'Text', 'A resource consisting primarily of words for reading.'),
(32, NULL, 2, 'PhysicalObject', 'Physical Object', 'An inanimate, three-dimensional object or substance.'),
(33, NULL, 2, 'StillImage', 'Still Image', 'A static visual representation.'),
(34, NULL, 2, 'MovingImage', 'Moving Image', 'A series of visual representations imparting an impression of motion when shown in succession.'),
(35, NULL, 3, 'AcademicArticle', 'Academic Article', 'A scholarly academic article, typically published in a journal.'),
(36, NULL, 3, 'Article', 'Article', 'A written composition in prose, usually nonfiction, on a specific topic, forming an independent part of a book or other publication, as a newspaper or magazine.'),
(37, NULL, 3, 'AudioDocument', 'audio document', 'An audio document; aka record.'),
(38, NULL, 3, 'AudioVisualDocument', 'audio-visual document', 'An audio-visual document; film, video, and so forth.'),
(39, NULL, 3, 'Bill', 'Bill', 'Draft legislation presented for discussion to a legal body.'),
(40, NULL, 3, 'Book', 'Book', 'A written or printed work of fiction or nonfiction, usually on sheets of paper fastened or bound together within covers.'),
(41, NULL, 3, 'BookSection', 'Book Section', 'A section of a book.'),
(42, NULL, 3, 'Brief', 'Brief', 'A written argument submitted to a court.'),
(43, NULL, 3, 'Chapter', 'Chapter', 'A chapter of a book.'),
(44, NULL, 3, 'Code', 'Code', 'A collection of statutes.'),
(45, NULL, 3, 'CollectedDocument', 'Collected Document', 'A document that simultaneously contains other documents.'),
(46, NULL, 3, 'Collection', 'Collection', 'A collection of Documents or Collections'),
(47, NULL, 3, 'Conference', 'Conference', 'A meeting for consultation or discussion.'),
(48, NULL, 3, 'CourtReporter', 'Court Reporter', 'A collection of legal cases.'),
(49, NULL, 3, 'Document', 'Document', 'A document (noun) is a bounded physical representation of body of information designed with the capacity (and usually intent) to communicate. A document may manifest symbolic, diagrammatic or sensory-representational information.'),
(50, NULL, 3, 'DocumentPart', 'document part', 'a distinct part of a larger document or collected document.'),
(51, NULL, 3, 'DocumentStatus', 'Document Status', 'The status of the publication of a document.'),
(52, NULL, 3, 'EditedBook', 'Edited Book', 'An edited book.'),
(53, NULL, 3, 'Email', 'EMail', 'A written communication addressed to a person or organization and transmitted electronically.'),
(54, NULL, 3, 'Event', 'Event', NULL),
(55, NULL, 3, 'Excerpt', 'Excerpt', 'A passage selected from a larger work.'),
(56, NULL, 3, 'Film', 'Film', 'aka movie.'),
(57, NULL, 3, 'Hearing', 'Hearing', 'An instance or a session in which testimony and arguments are presented, esp. before an official, as a judge in a lawsuit.'),
(58, NULL, 3, 'Image', 'Image', 'A document that presents visual or diagrammatic information.'),
(59, NULL, 3, 'Interview', 'Interview', 'A formalized discussion between two or more people.'),
(60, NULL, 3, 'Issue', 'Issue', 'something that is printed or published and distributed, esp. a given number of a periodical'),
(61, NULL, 3, 'Journal', 'Journal', 'A periodical of scholarly journal Articles.'),
(62, NULL, 3, 'LegalCaseDocument', 'Legal Case Document', 'A document accompanying a legal case.'),
(63, NULL, 3, 'LegalDecision', 'Decision', 'A document containing an authoritative determination (as a decree or judgment) made after consideration of facts or law.'),
(64, NULL, 3, 'LegalDocument', 'Legal Document', 'A legal document; for example, a court decision, a brief, and so forth.'),
(65, NULL, 3, 'Legislation', 'Legislation', 'A legal document proposing or enacting a law or a group of laws.'),
(66, NULL, 3, 'Letter', 'Letter', 'A written or printed communication addressed to a person or organization and usually transmitted by mail.'),
(67, NULL, 3, 'Magazine', 'Magazine', 'A periodical of magazine Articles. A magazine is a publication that is issued periodically, usually bound in a paper cover, and typically contains essays, stories, poems, etc., by many writers, and often photographs and drawings, frequently specializing in a particular subject or area, as hobbies, news, or sports.'),
(68, NULL, 3, 'Manual', 'Manual', 'A small reference book, especially one giving instructions.'),
(69, NULL, 3, 'Manuscript', 'Manuscript', 'An unpublished Document, which may also be submitted to a publisher for publication.'),
(70, NULL, 3, 'Map', 'Map', 'A graphical depiction of geographic features.'),
(71, NULL, 3, 'MultiVolumeBook', 'Multivolume Book', 'A loose, thematic, collection of Documents, often Books.'),
(72, NULL, 3, 'Newspaper', 'Newspaper', 'A periodical of documents, usually issued daily or weekly, containing current news, editorials, feature articles, and usually advertising.'),
(73, NULL, 3, 'Note', 'Note', 'Notes or annotations about a resource.'),
(74, NULL, 3, 'Patent', 'Patent', 'A document describing the exclusive right granted by a government to an inventor to manufacture, use, or sell an invention for a certain number of years.'),
(75, NULL, 3, 'Performance', 'Performance', 'A public performance.'),
(76, NULL, 3, 'Periodical', 'Periodical', 'A group of related documents issued at regular intervals.'),
(77, NULL, 3, 'PersonalCommunication', 'Personal Communication', 'A communication between an agent and one or more specific recipients.'),
(78, NULL, 3, 'PersonalCommunicationDocument', 'Personal Communication Document', 'A personal communication manifested in some document.'),
(79, NULL, 3, 'Proceedings', 'Proceedings', 'A compilation of documents published from an event, such as a conference.'),
(80, NULL, 3, 'Quote', 'Quote', 'An excerpted collection of words.'),
(81, NULL, 3, 'ReferenceSource', 'Reference Source', 'A document that presents authoritative reference information, such as a dictionary or encylopedia .'),
(82, NULL, 3, 'Report', 'Report', 'A document describing an account or statement describing in detail an event, situation, or the like, usually as the result of observation, inquiry, etc..'),
(83, NULL, 3, 'Series', 'Series', 'A loose, thematic, collection of Documents, often Books.'),
(84, NULL, 3, 'Slide', 'Slide', 'A slide in a slideshow'),
(85, NULL, 3, 'Slideshow', 'Slideshow', 'A presentation of a series of slides, usually presented in front of an audience with written text and images.'),
(86, NULL, 3, 'Standard', 'Standard', 'A document describing a standard'),
(87, NULL, 3, 'Statute', 'Statute', 'A bill enacted into law.'),
(88, NULL, 3, 'Thesis', 'Thesis', 'A document created to summarize research findings associated with the completion of an academic degree.'),
(89, NULL, 3, 'ThesisDegree', 'Thesis degree', 'The academic degree of a Thesis'),
(90, NULL, 3, 'Webpage', 'Webpage', 'A web page is an online document available (at least initially) on the world wide web. A web page is written first and foremost to appear on the web, as distinct from other online resources such as books, manuscripts or audio documents which use the web primarily as a distribution mechanism alongside other more traditional methods such as print.'),
(91, NULL, 3, 'Website', 'Website', 'A group of Webpages accessible on the Web.'),
(92, NULL, 3, 'Workshop', 'Workshop', 'A seminar, discussion group, or the like, that emphasizes zxchange of ideas and the demonstration and application of techniques, skills, etc.'),
(93, NULL, 4, 'LabelProperty', 'Label Property', 'A foaf:LabelProperty is any RDF property with texual values that serve as labels.'),
(94, NULL, 4, 'Person', 'Person', 'A person.'),
(95, NULL, 4, 'Document', 'Document', 'A document.'),
(96, NULL, 4, 'Organization', 'Organization', 'An organization.'),
(97, NULL, 4, 'Group', 'Group', 'A class of Agents.'),
(98, NULL, 4, 'Agent', 'Agent', 'An agent (eg. person, group, software or physical artifact).'),
(99, NULL, 4, 'Project', 'Project', 'A project (a collective endeavour of some kind).'),
(100, NULL, 4, 'Image', 'Image', 'An image.'),
(101, NULL, 4, 'PersonalProfileDocument', 'PersonalProfileDocument', 'A personal profile RDF document.'),
(102, NULL, 4, 'OnlineAccount', 'Online Account', 'An online account.'),
(103, NULL, 4, 'OnlineGamingAccount', 'Online Gaming Account', 'An online gaming account.'),
(104, NULL, 4, 'OnlineEcommerceAccount', 'Online E-commerce Account', 'An online e-commerce account.'),
(105, NULL, 4, 'OnlineChatAccount', 'Online Chat Account', 'An online chat account.'),
(106, 1, 5, 'Agent', 'Agent', 'An agent (eg. person, group, software or physical artifact).'),
(107, 1, 5, 'Document', 'Document', 'A document.'),
(108, 1, 5, 'Organization', 'Organization', 'An organization.'),
(109, 1, 5, 'Project', 'Project', 'A project (a collective endeavour of some kind).'),
(110, 1, 5, 'Group', 'Group', 'A class of Agents.'),
(111, 1, 5, 'Image', 'Image', 'An image.'),
(112, 1, 5, 'LabelProperty', 'Label Property', 'A foaf:LabelProperty is any RDF property with texual values that serve as labels.'),
(113, 1, 5, 'OnlineAccount', 'Online Account', 'An online account.'),
(114, 1, 5, 'OnlineChatAccount', 'Online Chat Account', 'An online chat account.'),
(115, 1, 5, 'OnlineEcommerceAccount', 'Online E-commerce Account', 'An online e-commerce account.'),
(116, 1, 5, 'OnlineGamingAccount', 'Online Gaming Account', 'An online gaming account.'),
(117, 1, 5, 'Person', 'Person', 'A person.'),
(118, 1, 5, 'PersonalProfileDocument', 'PersonalProfileDocument', 'A personal profile RDF document.'),
(119, 1, 7, 'AcademicJournal', 'AcademicJournal', NULL),
(120, 1, 7, 'Accident', 'Accident', NULL),
(121, 1, 7, 'Account', 'Account', NULL),
(122, 1, 7, 'Acquirement', 'Acquirement', NULL),
(123, 1, 7, 'Activity', 'Activity', NULL),
(124, 1, 7, 'Address', 'Address', NULL),
(125, 1, 7, 'AdministrativeRegion', 'AdministrativeRegion', NULL),
(126, 1, 7, 'AgriculturalColony', 'AgriculturalColony', NULL),
(127, 1, 7, 'AgriculturalFacility', 'AgriculturalFacility', NULL),
(128, 1, 7, 'Airbase', 'Airbase', NULL),
(129, 1, 7, 'Airline', 'Airline', NULL),
(130, 1, 7, 'AirplaneEngine', 'AirplaneEngine', NULL),
(131, 1, 7, 'AirplaneModel', 'AirplaneModel', NULL),
(132, 1, 7, 'Airport', 'Airport', NULL),
(133, 1, 7, 'Album', 'Album', NULL),
(134, 1, 7, 'AlcoholicBeverage', 'AlcoholicBeverage', NULL),
(135, 1, 7, 'AmericanFootballLeague', 'AmericanFootballLeague', NULL),
(136, 1, 7, 'AmericanFootballTeam', 'AmericanFootballTeam', NULL),
(137, 1, 7, 'Amphibian', 'Amphibian', NULL),
(138, 1, 7, 'AmusementPark', 'AmusementPark', NULL),
(139, 1, 7, 'Animal', 'Animal', NULL),
(140, 1, 7, 'Announcement', 'Announcement', NULL),
(141, 1, 7, 'Arachnid', 'Arachnid', NULL),
(142, 1, 7, 'Arch', 'Arch', NULL),
(143, 1, 7, 'Archaea', 'Archaea', NULL),
(144, 1, 7, 'Archipelago', 'Archipelago', NULL),
(145, 1, 7, 'LandArea', 'LandArea', NULL),
(146, 1, 7, 'Arena', 'Arena', NULL),
(147, 1, 7, 'Art', 'Art', NULL),
(148, 1, 7, 'ArtPerformance', 'ArtPerformance', NULL),
(149, 1, 7, 'Artery', 'Artery', NULL),
(150, 1, 7, 'Article', 'Article', NULL),
(151, 1, 7, 'ArtificialSatellite', 'ArtificialSatellite', NULL),
(152, 1, 7, 'Asteroid', 'Asteroid', NULL),
(153, 1, 7, 'AstronomicalObject', 'AstronomicalObject', NULL),
(154, 1, 7, 'Atoll', 'Atoll', NULL),
(155, 1, 7, 'AudioRecording', 'AudioRecording', NULL),
(156, 1, 7, 'AustralianFootballLeague', 'AustralianFootballLeague', NULL),
(157, 1, 7, 'AutoRacingLeague', 'AutoRacingLeague', NULL),
(158, 1, 7, 'ATM', 'ATM', NULL),
(159, 1, 7, 'AutomobileEngine', 'AutomobileEngine', NULL),
(160, 1, 7, 'Award', 'Award', NULL),
(161, 1, 7, 'Bacteria', 'Bacteria', NULL),
(162, 1, 7, 'Band', 'Band', NULL),
(163, 1, 7, 'Bank', 'Bank', NULL),
(164, 1, 7, 'Barracks', 'Barracks', NULL),
(165, 1, 7, 'BaseballLeague', 'BaseballLeague', NULL),
(166, 1, 7, 'BaseballTeam', 'BaseballTeam', NULL),
(167, 1, 7, 'BasketballLeague', 'BasketballLeague', NULL),
(168, 1, 7, 'BasketballTeam', 'BasketballTeam', NULL),
(169, 1, 7, 'Battlefield', 'Battlefield', NULL),
(170, 1, 7, 'Bay', 'Bay', NULL),
(171, 1, 7, 'Beach', 'Beach', NULL),
(172, 1, 7, 'Beacon', 'Beacon', NULL),
(173, 1, 7, 'Beverage', 'Beverage', NULL),
(174, 1, 7, 'Bight', 'Bight', NULL),
(175, 1, 7, 'BiogeographicRegion', 'BiogeographicRegion', NULL),
(176, 1, 7, 'BiologicalDatabase', 'BiologicalDatabase', NULL),
(177, 1, 7, 'BiologicalSubstance', 'BiologicalSubstance', NULL),
(178, 1, 7, 'Bird', 'Bird', NULL),
(179, 1, 7, 'BoardMeeting', 'BoardMeeting', NULL),
(180, 1, 7, 'BodyPart', 'BodyPart', NULL),
(181, 1, 7, 'Bog', 'Bog', NULL),
(182, 1, 7, 'Bone', 'Bone', NULL),
(183, 1, 7, 'Book', 'Book', NULL),
(184, 1, 7, 'BoxingLeague', 'BoxingLeague', NULL),
(185, 1, 7, 'Brain', 'Brain', NULL),
(186, 1, 7, 'Brand', 'Brand', NULL),
(187, 1, 7, 'Breakwater', 'Breakwater', NULL),
(188, 1, 7, 'Bridge', 'Bridge', NULL),
(189, 1, 7, 'BroadcastNetwork', 'BroadcastNetwork', NULL),
(190, 1, 7, 'Broadcaster', 'Broadcaster', NULL),
(191, 1, 7, 'Building', 'Building', NULL),
(192, 1, 7, 'BushLand', 'BushLand', NULL),
(193, 1, 7, 'BusinessAbstraction', 'BusinessAbstraction', NULL),
(194, 1, 7, 'CalendarMonth', 'CalendarMonth', NULL),
(195, 1, 7, 'CalendarYear', 'CalendarYear', NULL),
(196, 1, 7, 'Camp', 'Camp', NULL),
(197, 1, 7, 'CanadianFootballLeague', 'CanadianFootballLeague', NULL),
(198, 1, 7, 'CanadianFootballTeam', 'CanadianFootballTeam', NULL),
(199, 1, 7, 'Canal', 'Canal', NULL),
(200, 1, 7, 'Canyon', 'Canyon', NULL),
(201, 1, 7, 'Cape', 'Cape', NULL),
(202, 1, 7, 'Capital', 'Capital', NULL),
(203, 1, 7, 'Car', 'Car', NULL),
(204, 1, 7, 'CarModel', 'CarModel', NULL),
(205, 1, 7, 'Cave', 'Cave', NULL),
(206, 1, 7, 'CelebrityTitle', 'CelebrityTitle', NULL),
(207, 1, 7, 'Celebrity', 'Celebrity', NULL),
(208, 1, 7, 'Channel', 'Channel', NULL),
(209, 1, 7, 'Charity', 'Charity', NULL),
(210, 1, 7, 'ChemicalCompound', 'ChemicalCompound', NULL),
(211, 1, 7, 'ChemicalElement', 'ChemicalElement', NULL),
(212, 1, 7, 'ChemicalSubstance', 'ChemicalSubstance', NULL),
(213, 1, 7, 'City', 'City', NULL),
(214, 1, 7, 'ForestClearing', 'ForestClearing', NULL),
(215, 1, 7, 'ClericTitle', 'ClericTitle', NULL),
(216, 1, 7, 'Cleric', 'Cleric', NULL),
(217, 1, 7, 'Coast', 'Coast', NULL),
(218, 1, 7, 'CoconutGrove', 'CoconutGrove', NULL),
(219, 1, 7, 'College', 'College', NULL),
(220, 1, 7, 'Colour', 'Colour', NULL),
(221, 1, 7, 'ComicsCharacter', 'ComicsCharacter', NULL),
(222, 1, 7, 'CommercialOrganization', 'CommercialOrganization', NULL),
(223, 1, 7, 'Company', 'Company', NULL),
(224, 1, 7, 'Concert', 'Concert', NULL),
(225, 1, 7, 'Confluence', 'Confluence', NULL),
(226, 1, 7, 'Continent', 'Continent', NULL),
(227, 1, 7, 'Contract', 'Contract', NULL),
(228, 1, 7, 'Country', 'Country', NULL),
(229, 1, 7, 'CountryCapital', 'CountryCapital', NULL),
(230, 1, 7, 'County', 'County', NULL),
(231, 1, 7, 'Cove', 'Cove', NULL),
(232, 1, 7, 'Crater', 'Crater', NULL),
(233, 1, 7, 'Creek', 'Creek', NULL),
(234, 1, 7, 'CricketLeague', 'CricketLeague', NULL),
(235, 1, 7, 'OutOfLawsTitle', 'OutOfLawsTitle', NULL),
(236, 1, 7, 'Crustacean', 'Crustacean', NULL),
(237, 1, 7, 'CultivatedArea', 'CultivatedArea', NULL),
(238, 1, 7, 'CurlingLeague', 'CurlingLeague', NULL),
(239, 1, 7, 'Currency', 'Currency', NULL),
(240, 1, 7, 'WaterCurrent', 'WaterCurrent', NULL),
(241, 1, 7, 'RiverCutoff', 'RiverCutoff', NULL),
(242, 1, 7, 'DataSchema', 'DataSchema', NULL),
(243, 1, 7, 'Database', 'Database', NULL),
(244, 1, 7, 'Dataset', 'Dataset', NULL),
(245, 1, 7, 'Date', 'Date', NULL),
(246, 1, 7, 'DayOfMonth', 'DayOfMonth', NULL),
(247, 1, 7, 'DayOfWeek', 'DayOfWeek', NULL),
(248, 1, 7, 'DayTime', 'DayTime', NULL),
(249, 1, 7, 'Death', 'Death', NULL),
(250, 1, 7, 'Delta', 'Delta', NULL),
(251, 1, 7, 'Desert', 'Desert', NULL),
(252, 1, 7, 'Machine', 'Machine', NULL),
(253, 1, 7, 'Device', 'Device', NULL),
(254, 1, 7, 'Disease', 'Disease', NULL),
(255, 1, 7, 'Ditch', 'Ditch', NULL),
(256, 1, 7, 'Division', 'Division', NULL),
(257, 1, 7, 'DrainageBasin', 'DrainageBasin', NULL),
(258, 1, 7, 'Drug', 'Drug', NULL),
(259, 1, 7, 'EMail', 'EMail', NULL),
(260, 1, 7, 'EducationalOrganization', 'EducationalOrganization', NULL),
(261, 1, 7, 'ElectionOccurrence', 'ElectionOccurrence', NULL),
(262, 1, 7, 'Election', 'Election', NULL),
(263, 1, 7, 'EmbryoBodyPart', 'EmbryoBodyPart', NULL),
(264, 1, 7, 'EntertainmentCompany', 'EntertainmentCompany', NULL),
(265, 1, 7, 'Estuary', 'Estuary', NULL),
(266, 1, 7, 'EthnicGroup', 'EthnicGroup', NULL),
(267, 1, 7, 'Facility', 'Facility', NULL),
(268, 1, 7, 'FaxNumber', 'FaxNumber', NULL),
(269, 1, 7, 'Festival', 'Festival', NULL),
(270, 1, 7, 'FestivalOccurrence', 'FestivalOccurrence', NULL),
(271, 1, 7, 'FictionalCharacter', 'FictionalCharacter', NULL),
(272, 1, 7, 'FieldHockeyLeague', 'FieldHockeyLeague', NULL),
(273, 1, 7, 'FilmFestival', 'FilmFestival', NULL),
(274, 1, 7, 'Fish', 'Fish', NULL),
(275, 1, 7, 'FishingArea', 'FishingArea', NULL),
(276, 1, 7, 'Fjord', 'Fjord', NULL),
(277, 1, 7, 'FloweringPlant', 'FloweringPlant', NULL),
(278, 1, 7, 'Food', 'Food', NULL),
(279, 1, 7, 'FootballMatch', 'FootballMatch', NULL),
(280, 1, 7, 'Forest', 'Forest', NULL),
(281, 1, 7, 'FInlet', 'FInlet', NULL),
(282, 1, 7, 'Fungus', 'Fungus', NULL),
(283, 1, 7, 'Galaxy', 'Galaxy', NULL),
(284, 1, 7, 'Game', 'Game', NULL),
(285, 1, 7, 'Gap', 'Gap', NULL),
(286, 1, 7, 'Gene', 'Gene', NULL),
(287, 1, 7, 'Genre', 'Genre', NULL),
(288, 1, 7, 'GeographicLocation', 'GeographicLocation', NULL),
(289, 1, 7, 'GeopoliticalOrganization', 'GeopoliticalOrganization', NULL),
(290, 1, 7, 'Geyser', 'Geyser', NULL),
(291, 1, 7, 'Glacier', 'Glacier', NULL),
(292, 1, 7, 'GlobalRegion', 'GlobalRegion', NULL),
(293, 1, 7, 'GolfLeague', 'GolfLeague', NULL),
(294, 1, 7, 'Government', 'Government', NULL),
(295, 1, 7, 'GovernmentAgency', 'GovernmentAgency', NULL),
(296, 1, 7, 'GovernmentBuilding', 'GovernmentBuilding', NULL),
(297, 1, 7, 'GovernmentOrganization', 'GovernmentOrganization', NULL),
(298, 1, 7, 'Grape', 'Grape', NULL),
(299, 1, 7, 'Grassland', 'Grassland', NULL),
(300, 1, 7, 'Gulf', 'Gulf', NULL),
(301, 1, 7, 'Guyot', 'Guyot', NULL),
(302, 1, 7, 'HandballLeague', 'HandballLeague', NULL),
(303, 1, 7, 'Harbor', 'Harbor', NULL),
(304, 1, 7, 'Heath', 'Heath', NULL),
(305, 1, 7, 'HistoricBuilding', 'HistoricBuilding', NULL),
(306, 1, 7, 'HistoricPlace', 'HistoricPlace', NULL),
(307, 1, 7, 'HockeyTeam', 'HockeyTeam', NULL),
(308, 1, 7, 'Holiday', 'Holiday', NULL),
(309, 1, 7, 'HomePage', 'HomePage', NULL),
(310, 1, 7, 'Hospital', 'Hospital', NULL),
(311, 1, 7, 'Hotel', 'Hotel', NULL),
(312, 1, 7, 'Human', 'Human', NULL),
(313, 1, 7, 'HydrographicStructure', 'HydrographicStructure', NULL),
(314, 1, 7, 'IceHockeyLeague', 'IceHockeyLeague', NULL),
(315, 1, 7, 'Icecap', 'Icecap', NULL),
(316, 1, 7, 'Ideology', 'Ideology', NULL),
(317, 1, 7, 'ImageDocument', 'ImageDocument', NULL),
(318, 1, 7, 'IndustrySector', 'IndustrySector', NULL),
(319, 1, 7, 'InformationSpace', 'InformationSpace', NULL),
(320, 1, 7, 'InformationSpaceProfile', 'InformationSpaceProfile', NULL),
(321, 1, 7, 'InlineHockeyLeague', 'InlineHockeyLeague', NULL),
(322, 1, 7, 'Insect', 'Insect', NULL),
(323, 1, 7, 'Institute', 'Institute', NULL),
(324, 1, 7, 'InsuranceCompany', 'InsuranceCompany', NULL),
(325, 1, 7, 'InternationalOrganization', 'InternationalOrganization', NULL),
(326, 1, 7, 'InternetAddress', 'InternetAddress', NULL),
(327, 1, 7, 'InternetDomain', 'InternetDomain', NULL),
(328, 1, 7, 'IPAddress', 'IPAddress', NULL),
(329, 1, 7, 'IrrigationSystem', 'IrrigationSystem', NULL),
(330, 1, 7, 'Island', 'Island', NULL),
(331, 1, 7, 'IssueOfPeriodical', 'IssueOfPeriodical', NULL),
(332, 1, 7, 'Isthmus', 'Isthmus', NULL),
(333, 1, 7, 'JobTitle', 'JobTitle', NULL),
(334, 1, 7, 'Jungle', 'Jungle', NULL),
(335, 1, 7, 'LacrosseLeague', 'LacrosseLeague', NULL),
(336, 1, 7, 'Lagoon', 'Lagoon', NULL),
(337, 1, 7, 'Lake', 'Lake', NULL),
(338, 1, 7, 'LandRegion', 'LandRegion', NULL),
(339, 1, 7, 'LaunchFacility', 'LaunchFacility', NULL),
(340, 1, 7, 'LawFirm', 'LawFirm', NULL),
(341, 1, 7, 'LegalCases', 'LegalCases', NULL),
(342, 1, 7, 'Legislation', 'Legislation', NULL),
(343, 1, 7, 'LibraryOrganization', 'LibraryOrganization', NULL),
(344, 1, 7, 'LibraryBuilding', 'LibraryBuilding', NULL),
(345, 1, 7, 'Library', 'Library', NULL),
(346, 1, 7, 'LightHouse', 'LightHouse', NULL),
(347, 1, 7, 'LivingObject', 'LivingObject', NULL),
(348, 1, 7, 'LocalCapital', 'LocalCapital', NULL),
(349, 1, 7, 'LocationOfSpecialInterest', 'LocationOfSpecialInterest', NULL),
(350, 1, 7, 'Lock', 'Lock', NULL),
(351, 1, 7, 'Locomotive', 'Locomotive', NULL),
(352, 1, 7, 'LymphNode', 'LymphNode', NULL),
(353, 1, 7, 'Magazine', 'Magazine', NULL),
(354, 1, 7, 'MagazineIssue', 'MagazineIssue', NULL),
(355, 1, 7, 'Mammal', 'Mammal', NULL),
(356, 1, 7, 'Man', 'Man', NULL),
(357, 1, 7, 'ElectronicMap', 'ElectronicMap', NULL),
(358, 1, 7, 'Market', 'Market', NULL),
(359, 1, 7, 'Marsh', 'Marsh', NULL),
(360, 1, 7, 'Meadow', 'Meadow', NULL),
(361, 1, 7, 'MediaBrand', 'MediaBrand', NULL),
(362, 1, 7, 'MediaCompany', 'MediaCompany', NULL),
(363, 1, 7, 'MediaProduct', 'MediaProduct', NULL),
(364, 1, 7, 'Meeting', 'Meeting', NULL),
(365, 1, 7, 'MeetingProceedings', 'MeetingProceedings', NULL),
(366, 1, 7, 'Message', 'Message', NULL),
(367, 1, 7, 'MilitaryAreas', 'MilitaryAreas', NULL),
(368, 1, 7, 'MilitaryCommand', 'MilitaryCommand', NULL),
(369, 1, 7, 'MilitaryConflict', 'MilitaryConflict', NULL),
(370, 1, 7, 'MilitaryOrganization', 'MilitaryOrganization', NULL),
(371, 1, 7, 'MilitaryUnit', 'MilitaryUnit', NULL),
(372, 1, 7, 'MineSite', 'MineSite', NULL),
(373, 1, 7, 'Ministry', 'Ministry', NULL),
(374, 1, 7, 'MixedMartialArtsLeague', 'MixedMartialArtsLeague', NULL),
(375, 1, 7, 'Mollusca', 'Mollusca', NULL),
(376, 1, 7, 'Money', 'Money', NULL),
(377, 1, 7, 'Month', 'Month', NULL),
(378, 1, 7, 'Monument', 'Monument', NULL),
(379, 1, 7, 'MotorcycleRacingLeague', 'MotorcycleRacingLeague', NULL),
(380, 1, 7, 'Mountain', 'Mountain', NULL),
(381, 1, 7, 'MountainPass', 'MountainPass', NULL),
(382, 1, 7, 'MountainRange', 'MountainRange', NULL),
(383, 1, 7, 'MountainSummit', 'MountainSummit', NULL),
(384, 1, 7, 'Movie', 'Movie', NULL),
(385, 1, 7, 'MudFlat', 'MudFlat', NULL),
(386, 1, 7, 'Muscle', 'Muscle', NULL),
(387, 1, 7, 'Museum', 'Museum', NULL),
(388, 1, 7, 'MusicFestival', 'MusicFestival', NULL),
(389, 1, 7, 'MusicGenre', 'MusicGenre', NULL),
(390, 1, 7, 'Musical', 'Musical', NULL),
(391, 1, 7, 'MusicCompany', 'MusicCompany', NULL),
(392, 1, 7, 'MusicalComposition', 'MusicalComposition', NULL),
(393, 1, 7, 'MusicalInstrument', 'MusicalInstrument', NULL),
(394, 1, 7, 'Narrows', 'Narrows', NULL),
(395, 1, 7, 'Nationality', 'Nationality', NULL),
(396, 1, 7, 'NaturalPhenomenon', 'NaturalPhenomenon', NULL),
(397, 1, 7, 'NaturalSatellite', 'NaturalSatellite', NULL),
(398, 1, 7, 'Nerve', 'Nerve', NULL),
(399, 1, 7, 'NewsAgency', 'NewsAgency', NULL),
(400, 1, 7, 'Newspaper', 'Newspaper', NULL),
(401, 1, 7, 'NewspaperIssue', 'NewspaperIssue', NULL),
(402, 1, 7, 'NobeltyTitle', 'NobeltyTitle', NULL),
(403, 1, 7, 'Nobelty', 'Nobelty', NULL),
(404, 1, 7, 'NonAlcoholicBeverage', 'NonAlcoholicBeverage', NULL),
(405, 1, 7, 'NonGeographicLocation', 'NonGeographicLocation', NULL),
(406, 1, 7, 'Non-ProfitOrganisation', 'Non-ProfitOrganisation', NULL),
(407, 1, 7, 'Oasis', 'Oasis', NULL),
(408, 1, 7, 'Ocean', 'Ocean', NULL),
(409, 1, 7, 'Offer', 'Offer', NULL),
(410, 1, 7, 'OfficialPoliticalMeeting', 'OfficialPoliticalMeeting', NULL),
(411, 1, 7, 'OfficialPosition', 'OfficialPosition', NULL),
(412, 1, 7, 'OilField', 'OilField', NULL),
(413, 1, 7, 'OlympicGamesOccurrence', 'OlympicGamesOccurrence', NULL),
(414, 1, 7, 'OlympicGames', 'OlympicGames', NULL),
(415, 1, 7, 'OperaPerformance', 'OperaPerformance', NULL),
(416, 1, 7, 'Orchard', 'Orchard', NULL),
(417, 1, 7, 'Order', 'Order', NULL),
(418, 1, 7, 'OutOfLaws', 'OutOfLaws', NULL),
(419, 1, 7, 'Overfalls', 'Overfalls', NULL),
(420, 1, 7, 'PaintballLeague', 'PaintballLeague', NULL),
(421, 1, 7, 'Painting', 'Painting', NULL),
(422, 1, 7, 'Parish', 'Parish', NULL),
(423, 1, 7, 'Park', 'Park', NULL),
(424, 1, 7, 'Parliament', 'Parliament', NULL),
(425, 1, 7, 'Patent', 'Patent', NULL),
(426, 1, 7, 'Peninsula', 'Peninsula', NULL),
(427, 1, 7, 'Percent', 'Percent', NULL),
(428, 1, 7, 'PerformanceSite', 'PerformanceSite', NULL),
(429, 1, 7, 'PeriodicalPublication', 'PeriodicalPublication', NULL),
(430, 1, 7, 'PetroleumBasin', 'PetroleumBasin', NULL),
(431, 1, 7, 'PhoneNumber', 'PhoneNumber', NULL),
(432, 1, 7, 'PieceOfArt', 'PieceOfArt', NULL),
(433, 1, 7, 'Pipeline', 'Pipeline', NULL),
(434, 1, 7, 'Plain', 'Plain', NULL),
(435, 1, 7, 'Planet', 'Planet', NULL),
(436, 1, 7, 'Plant', 'Plant', NULL),
(437, 1, 7, 'Plateau', 'Plateau', NULL),
(438, 1, 7, 'Play', 'Play', NULL),
(439, 1, 7, 'PoliticalEntity', 'PoliticalEntity', NULL),
(440, 1, 7, 'PoliticalParty', 'PoliticalParty', NULL),
(441, 1, 7, 'PoliticalRegion', 'PoliticalRegion', NULL),
(442, 1, 7, 'PoloLeague', 'PoloLeague', NULL),
(443, 1, 7, 'Pond', 'Pond', NULL),
(444, 1, 7, 'Pool', 'Pool', NULL),
(445, 1, 7, 'PopulatedPlace', 'PopulatedPlace', NULL),
(446, 1, 7, 'PositionOrganization', 'PositionOrganization', NULL),
(447, 1, 7, 'Possession', 'Possession', NULL),
(448, 1, 7, 'PostalAddress', 'PostalAddress', NULL),
(449, 1, 7, 'PowerStation', 'PowerStation', NULL),
(450, 1, 7, 'Profession', 'Profession', NULL),
(451, 1, 7, 'Profile', 'Profile', NULL),
(452, 1, 7, 'ProgrammingLanguage', 'ProgrammingLanguage', NULL),
(453, 1, 7, 'Project', 'Project', NULL),
(454, 1, 7, 'ProtectedArea', 'ProtectedArea', NULL),
(455, 1, 7, 'Protein', 'Protein', NULL),
(456, 1, 7, 'Province', 'Province', NULL),
(457, 1, 7, 'PublicCompany', 'PublicCompany', NULL),
(458, 1, 7, 'PublishedMaterial', 'PublishedMaterial', NULL),
(459, 1, 7, 'PublishingCompany', 'PublishingCompany', NULL),
(460, 1, 7, 'Quarter', 'Quarter', NULL),
(461, 1, 7, 'RaceCourse', 'RaceCourse', NULL),
(462, 1, 7, 'RadioCompany', 'RadioCompany', NULL),
(463, 1, 7, 'RadioControlledRacingLeague', 'RadioControlledRacingLeague', NULL),
(464, 1, 7, 'RadioStation', 'RadioStation', NULL),
(465, 1, 7, 'RailroadFacility', 'RailroadFacility', NULL),
(466, 1, 7, 'RailroadTunnel', 'RailroadTunnel', NULL),
(467, 1, 7, 'Ramp', 'Ramp', NULL),
(468, 1, 7, 'Rapids', 'Rapids', NULL),
(469, 1, 7, 'WaterReach', 'WaterReach', NULL),
(470, 1, 7, 'RecreationalFacility', 'RecreationalFacility', NULL),
(471, 1, 7, 'RecurringEvent', 'RecurringEvent', NULL),
(472, 1, 7, 'Reef', 'Reef', NULL),
(473, 1, 7, 'ReferenceLocation', 'ReferenceLocation', NULL),
(474, 1, 7, 'RegionMention', 'RegionMention', NULL),
(475, 1, 7, 'ReligiousLocation', 'ReligiousLocation', NULL),
(476, 1, 7, 'ReligiousOrganization', 'ReligiousOrganization', NULL),
(477, 1, 7, 'Report', 'Report', NULL),
(478, 1, 7, 'Reptile', 'Reptile', NULL),
(479, 1, 7, 'ResearchArea', 'ResearchArea', NULL),
(480, 1, 7, 'ResearchOrganization', 'ResearchOrganization', NULL),
(481, 1, 7, 'Reserve', 'Reserve', NULL),
(482, 1, 7, 'Reservoir', 'Reservoir', NULL),
(483, 1, 7, 'ResourceCollection', 'ResourceCollection', NULL),
(484, 1, 7, 'Restaurant', 'Restaurant', NULL),
(485, 1, 7, 'Ridge', 'Ridge', NULL),
(486, 1, 7, 'River', 'River', NULL),
(487, 1, 7, 'Roadway', 'Roadway', NULL),
(488, 1, 7, 'RugbyClub', 'RugbyClub', NULL),
(489, 1, 7, 'RugbyLeague', 'RugbyLeague', NULL),
(490, 1, 7, 'Saddleback', 'Saddleback', NULL),
(491, 1, 7, 'Saint', 'Saint', NULL),
(492, 1, 7, 'Sale', 'Sale', NULL),
(493, 1, 7, 'Satellite', 'Satellite', NULL),
(494, 1, 7, 'School', 'School', NULL),
(495, 1, 7, 'Science', 'Science', NULL),
(496, 1, 7, 'Scrubland', 'Scrubland', NULL),
(497, 1, 7, 'Sculpture', 'Sculpture', NULL),
(498, 1, 7, 'Sea', 'Sea', NULL),
(499, 1, 7, 'Seachannels', 'Seachannels', NULL),
(500, 1, 7, 'Seamount', 'Seamount', NULL),
(501, 1, 7, 'Season', 'Season', NULL),
(502, 1, 7, 'Section', 'Section', NULL),
(503, 1, 7, 'Mention', 'Mention', NULL),
(504, 1, 7, 'Settlement', 'Settlement', NULL),
(505, 1, 7, 'ContinentalShelf', 'ContinentalShelf', NULL),
(506, 1, 7, 'Ship', 'Ship', NULL),
(507, 1, 7, 'Shoal', 'Shoal', NULL),
(508, 1, 7, 'ShoppingMall', 'ShoppingMall', NULL),
(509, 1, 7, 'SingleSongOrAlbum', 'SingleSongOrAlbum', NULL),
(510, 1, 7, 'SingleAlbum', 'SingleAlbum', NULL),
(511, 1, 7, 'SingleSong', 'SingleSong', NULL),
(512, 1, 7, 'SiteOfSpecialScientificInterest', 'SiteOfSpecialScientificInterest', NULL),
(513, 1, 7, 'SkiArea', 'SkiArea', NULL),
(514, 1, 7, 'Skyscraper', 'Skyscraper', NULL),
(515, 1, 7, 'SoccerClub', 'SoccerClub', NULL),
(516, 1, 7, 'SoccerLeague', 'SoccerLeague', NULL),
(517, 1, 7, 'SocialAbstraction', 'SocialAbstraction', NULL),
(518, 1, 7, 'SocialFunction', 'SocialFunction', NULL),
(519, 1, 7, 'SoftballLeague', 'SoftballLeague', NULL),
(520, 1, 7, 'Software', 'Software', NULL),
(521, 1, 7, 'SoftwareAgent', 'SoftwareAgent', NULL),
(522, 1, 7, 'Song', 'Song', NULL),
(523, 1, 7, 'SeaSound', 'SeaSound', NULL),
(524, 1, 7, 'SpaceMission', 'SpaceMission', NULL),
(525, 1, 7, 'SpaceShuttle', 'SpaceShuttle', NULL),
(526, 1, 7, 'SpaceStation', 'SpaceStation', NULL),
(527, 1, 7, 'Spacecraft', 'Spacecraft', NULL),
(528, 1, 7, 'SpeedwayLeague', 'SpeedwayLeague', NULL),
(529, 1, 7, 'SpeedwayTeam', 'SpeedwayTeam', NULL),
(530, 1, 7, 'Sport', 'Sport', NULL),
(531, 1, 7, 'SportBuilding', 'SportBuilding', NULL),
(532, 1, 7, 'SportClub', 'SportClub', NULL),
(533, 1, 7, 'SportEvent', 'SportEvent', NULL),
(534, 1, 7, 'SportFacility', 'SportFacility', NULL),
(535, 1, 7, 'SportGame', 'SportGame', NULL),
(536, 1, 7, 'SportGamePoint', 'SportGamePoint', NULL),
(537, 1, 7, 'SportOrganization', 'SportOrganization', NULL),
(538, 1, 7, 'SportsFederation', 'SportsFederation', NULL),
(539, 1, 7, 'SportsLeague', 'SportsLeague', NULL),
(540, 1, 7, 'ArtProfession', 'ArtProfession', NULL),
(541, 1, 7, 'Sportsman', 'Sportsman', NULL),
(542, 1, 7, 'Spring', 'Spring', NULL),
(543, 1, 7, 'Stadium', 'Stadium', NULL),
(544, 1, 7, 'Star', 'Star', NULL),
(545, 1, 7, 'Station', 'Station', NULL),
(546, 1, 7, 'StockExchange', 'StockExchange', NULL),
(547, 1, 7, 'StockExchangeIndex', 'StockExchangeIndex', NULL),
(548, 1, 7, 'Stream', 'Stream', NULL),
(549, 1, 7, 'Street', 'Street', NULL),
(550, 1, 7, 'StreetName', 'StreetName', NULL),
(551, 1, 7, 'StreetNumber', 'StreetNumber', NULL),
(552, 1, 7, 'Team', 'Team', NULL),
(553, 1, 7, 'Telecom', 'Telecom', NULL),
(554, 1, 7, 'TelecomFacility', 'TelecomFacility', NULL),
(555, 1, 7, 'TelevisionEpisode', 'TelevisionEpisode', NULL),
(556, 1, 7, 'TelevisionProduct', 'TelevisionProduct', NULL),
(557, 1, 7, 'TelevisionShow', 'TelevisionShow', NULL),
(558, 1, 7, 'TemporalAbstraction', 'TemporalAbstraction', NULL),
(559, 1, 7, 'TennisLeague', 'TennisLeague', NULL),
(560, 1, 7, 'Territory', 'Territory', NULL),
(561, 1, 7, 'TheatrePerformance', 'TheatrePerformance', NULL),
(562, 1, 7, 'TimeZone', 'TimeZone', NULL),
(563, 1, 7, 'SeaTongue', 'SeaTongue', NULL),
(564, 1, 7, 'Tournament', 'Tournament', NULL),
(565, 1, 7, 'TournamentOccurrence', 'TournamentOccurrence', NULL),
(566, 1, 7, 'Tower', 'Tower', NULL),
(567, 1, 7, 'Town', 'Town', NULL),
(568, 1, 7, 'PopulatedPlaceName', 'PopulatedPlaceName', NULL),
(569, 1, 7, 'TradeUnion', 'TradeUnion', NULL),
(570, 1, 7, 'TransportFacility', 'TransportFacility', NULL),
(571, 1, 7, 'SeaTrench', 'SeaTrench', NULL),
(572, 1, 7, 'SeaTrough', 'SeaTrough', NULL),
(573, 1, 7, 'Tundra', 'Tundra', NULL),
(574, 1, 7, 'Tunnel', 'Tunnel', NULL),
(575, 1, 7, 'TVChannel', 'TVChannel', NULL),
(576, 1, 7, 'TVCompany', 'TVCompany', NULL),
(577, 1, 7, 'University', 'University', NULL),
(578, 1, 7, 'UrbanDistrict', 'UrbanDistrict', NULL),
(579, 1, 7, 'User', 'User', NULL),
(580, 1, 7, 'UserProfile', 'UserProfile', NULL),
(581, 1, 7, 'Valley', 'Valley', NULL),
(582, 1, 7, 'Vehicle', 'Vehicle', NULL),
(583, 1, 7, 'Vein', 'Vein', NULL),
(584, 1, 7, 'VideoGame', 'VideoGame', NULL),
(585, 1, 7, 'VideogamesLeague', 'VideogamesLeague', NULL),
(586, 1, 7, 'Village', 'Village', NULL),
(587, 1, 7, 'Vineyard', 'Vineyard', NULL),
(588, 1, 7, 'Volcano', 'Volcano', NULL),
(589, 1, 7, 'VolleyballLeague', 'VolleyballLeague', NULL),
(590, 1, 7, 'Wadi', 'Wadi', NULL),
(591, 1, 7, 'WaterBank', 'WaterBank', NULL),
(592, 1, 7, 'WaterRegion', 'WaterRegion', NULL),
(593, 1, 7, 'WaterTank', 'WaterTank', NULL),
(594, 1, 7, 'Watercourse', 'Watercourse', NULL),
(595, 1, 7, 'Waterfalls', 'Waterfalls', NULL),
(596, 1, 7, 'Waterhole', 'Waterhole', NULL),
(597, 1, 7, 'WeaponModelOrSystem', 'WeaponModelOrSystem', NULL),
(598, 1, 7, 'WebPage', 'WebPage', NULL),
(599, 1, 7, 'Week', 'Week', NULL),
(600, 1, 7, 'Well', 'Well', NULL),
(601, 1, 7, 'Whirlpool', 'Whirlpool', NULL),
(602, 1, 7, 'WineRegion', 'WineRegion', NULL),
(603, 1, 7, 'Woman', 'Woman', NULL),
(604, 1, 7, 'WorldHeritageSite', 'WorldHeritageSite', NULL),
(605, 1, 7, 'ZipCode', 'ZipCode', NULL),
(606, 1, 7, 'Zone', 'Zone', NULL),
(607, 1, 8, 'omekaJoueur', 'Joueur', NULL),
(608, 1, 8, 'omekaEquipe', 'Equipe', NULL),
(609, 1, 8, 'omekaPoste', 'Poste', NULL),
(610, 1, 8, 'omekadivision', 'division', NULL),
(611, 1, 8, 'omekamaillot', 'maillot', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `resource_template`
--

CREATE TABLE `resource_template` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `resource_class_id` int(11) DEFAULT NULL,
  `title_property_id` int(11) DEFAULT NULL,
  `description_property_id` int(11) DEFAULT NULL,
  `label` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_template`
--

INSERT INTO `resource_template` (`id`, `owner_id`, `resource_class_id`, `title_property_id`, `description_property_id`, `label`) VALUES
(1, NULL, NULL, NULL, NULL, 'Base Resource'),
(6, 1, 607, NULL, NULL, 'joueur'),
(7, 1, 608, NULL, NULL, 'equipe'),
(8, 1, 610, NULL, NULL, 'division'),
(9, 1, 609, NULL, NULL, 'poste'),
(10, 1, 611, NULL, NULL, 'maillot');

-- --------------------------------------------------------

--
-- Structure de la table `resource_template_property`
--

CREATE TABLE `resource_template_property` (
  `id` int(11) NOT NULL,
  `resource_template_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `alternate_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `data_type` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `is_required` tinyint(1) NOT NULL,
  `is_private` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_template_property`
--

INSERT INTO `resource_template_property` (`id`, `resource_template_id`, `property_id`, `alternate_label`, `alternate_comment`, `position`, `data_type`, `is_required`, `is_private`) VALUES
(1, 1, 1, NULL, NULL, 1, NULL, 0, 0),
(2, 1, 15, NULL, NULL, 2, NULL, 0, 0),
(3, 1, 8, NULL, NULL, 3, NULL, 0, 0),
(4, 1, 2, NULL, NULL, 4, NULL, 0, 0),
(5, 1, 7, NULL, NULL, 5, NULL, 0, 0),
(6, 1, 4, NULL, NULL, 6, NULL, 0, 0),
(7, 1, 9, NULL, NULL, 7, NULL, 0, 0),
(8, 1, 12, NULL, NULL, 8, NULL, 0, 0),
(9, 1, 40, 'Place', NULL, 9, NULL, 0, 0),
(10, 1, 5, NULL, NULL, 10, NULL, 0, 0),
(11, 1, 17, NULL, NULL, 11, NULL, 0, 0),
(12, 1, 6, NULL, NULL, 12, NULL, 0, 0),
(13, 1, 25, NULL, NULL, 13, NULL, 0, 0),
(14, 1, 10, NULL, NULL, 14, NULL, 0, 0),
(15, 1, 13, NULL, NULL, 15, NULL, 0, 0),
(16, 1, 29, NULL, NULL, 16, NULL, 0, 0),
(17, 1, 30, NULL, NULL, 17, NULL, 0, 0),
(18, 1, 50, NULL, NULL, 18, NULL, 0, 0),
(19, 1, 3, NULL, NULL, 19, NULL, 0, 0),
(20, 1, 41, NULL, NULL, 20, NULL, 0, 0),
(34, 8, 4, NULL, NULL, 1, NULL, 0, 0),
(36, 9, 4, NULL, NULL, 1, NULL, 0, 0),
(39, 8, 10, NULL, NULL, 2, NULL, 0, 0),
(40, 7, 10, NULL, NULL, 1, NULL, 0, 0),
(41, 7, 131, NULL, NULL, 2, NULL, 0, 0),
(42, 6, 10, NULL, NULL, 1, NULL, 0, 0),
(43, 6, 145, NULL, NULL, 2, NULL, 0, 0),
(44, 6, 139, NULL, NULL, 3, NULL, 0, 0),
(45, 6, 154, NULL, NULL, 4, NULL, 0, 0),
(46, 10, 10, NULL, NULL, 1, NULL, 0, 0),
(47, 6, 183, NULL, NULL, 5, NULL, 0, 0),
(48, 6, 318, NULL, NULL, 6, NULL, 0, 0),
(49, 10, 247, NULL, NULL, 2, NULL, 0, 0),
(50, 9, 10, NULL, NULL, 2, NULL, 0, 0),
(52, 6, 6, NULL, NULL, 7, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE `session` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longblob NOT NULL,
  `modified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `session`
--

INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('aftba4agsqbs7joc66ng4apthn', 0x5f5f4c616d696e61737c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630373236373936312e3934363339383b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22616d65656866736d64763531366b316f306c3933706d33303437223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363733303737373b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630373031323131383b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630373031323034353b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226266363335616538666562383465306130396263373638356665323430383336223b733a33323a223031613365613937393538653563663765386263383232663132306138633936223b7d733a343a2268617368223b733a36353a2230316133656139373935386535636637653862633832326631323061386339362d6266363335616538666562383465306130396263373638356665323430383336223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3731313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a353a7b733a33323a223434373265393661303535306135303539633431323239376534383432366639223b733a33323a226638633835396132616364626636383533363533383531646664346462363661223b733a33323a226165663535356439653831346236333565316164626637303234313339313938223b733a33323a223835663336343136663838643531353764316636333539383234623865656136223b733a33323a223065373832396661343561636533633630396439326333633062313966373630223b733a33323a226465646239353763663736303330386538626132646637366465333732353665223b733a33323a226164336266363431396562303734363966323831633933346135366238363363223b733a33323a223264656137613832366330626262623064303839613933663032343266656461223b733a33323a226633396430636465616638386462376134376631356365613835306663663166223b733a33323a226561656661643237316435653737643835333534653436633339336166616635223b7d733a343a2268617368223b733a36353a2265616566616432373164356537376438353335346534366333393361666166352d6633396430636465616638386462376134376631356365613835306663663166223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223932663964363138666236616631333531373035636664613538636531366663223b733a33323a223863633938326235386464316339626561633032626331376634626338633533223b7d733a343a2268617368223b733a36353a2238636339383262353864643163396265616330326263313766346263386335332d3932663964363138666236616631333531373035636664613538636531366663223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1607267967),
('cpuef1cpo5g4tc4400je3ub7m7', 0x5f5f4c616d696e61737c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630373236393533332e3135393939343b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2230756e3664726a7233677436736c6b373031766b356a6a673338223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630373237323735393b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630373237323830313b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630373237323830313b7d7d72656469726563745f75726c7c733a34303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e2f6974656d2f382f65646974223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223532643061356638643866613137366239333463643139313364666138393265223b733a33323a223061343266633830326634613332376437393534303738336339306130646464223b7d733a343a2268617368223b733a36353a2230613432666338303266346133323764373935343037383363393061306464642d3532643061356638643866613137366239333463643139313364666138393265223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226138313765616562336664386262656533383365646566356439313461346536223b733a33323a223837646135353131376134393664616234643037313164613961393337363838223b733a33323a223661353630666565636535343964306363366665343562643964346337366432223b733a33323a223561623962626362666162636464656165376334396634303963633161646130223b7d733a343a2268617368223b733a36353a2235616239626263626661626364646561653763343966343039636331616461302d3661353630666565636535343964306363366665343562643964346337366432223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3633313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a223134393165633434336164616435383231373237313861623664343938636231223b733a33323a223739643666363635633537376238643237336331316133643163613030393933223b733a33323a223830663032363661353731653438313537323636356333613330363666653435223b733a33323a223863626636613564626363306133366432383765656361313836663736653132223b733a33323a226265343863373336613863366437653638616436386366343666656134626166223b733a33323a223736306464306364363739643336663865393339643364633061363433376532223b733a33323a223139386538656235363665623036373164373439306437633730636337393037223b733a33323a223939313736373338313639313139643564376537616161633833383238353662223b7d733a343a2268617368223b733a36353a2239393137363733383136393131396435643765376161616338333832383536622d3139386538656235363665623036373164373439306437633730636337393037223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1607269533);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('htle0m0j4v6btmiqpl19v2nu8n', 0x5f5f4c616d696e61737c613a31303a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630343931363431382e363630383b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22666f6b6170617461746e346a68626e647438616f36626c396c67223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343331373335363b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630343932303031393b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343932303031393b7d733a34353a224c616d696e61735f56616c696461746f725f437372665f73616c745f7369746570616765666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343539303637393b7d733a33373a224c616d696e61735f56616c696461746f725f437372665f73616c745f666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343539303834363b7d733a35303a224c616d696e61735f56616c696461746f725f437372665f73616c745f736974657265736f7572636573666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343539303831313b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343931393839333b7d733a34373a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343931373335333b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226538623936303462306533623661356539616332383737373566613165626663223b733a33323a223038333730313037633061313661353037353764656637373462643736313164223b7d733a343a2268617368223b733a36353a2230383337303130376330613136613530373537646566373734626437363131642d6538623936303462306533623661356539616332383737373566613165626663223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a333237323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a33373a7b733a33323a223533373363323861386335386534623033376538306132326232623937643835223b733a33323a223764346330363537366536353737303961623039613063613333316361643135223b733a33323a223932623931343464393933633665343537363637386563373461393532613630223b733a33323a226137653763636337396633393737323132386639313162343561303731396635223b733a33323a223439306333343437373966353230636166393633306630633534393931316539223b733a33323a223462393932373965356238323431393134643332656332343335626534396134223b733a33323a226432336366343064313038373961656137626231336333303137643939333831223b733a33323a226533376136636436646230333263653336316135363933626362653433373438223b733a33323a223261336663353139323461633063363738646633613836323332396238363832223b733a33323a223264366134366539343662613633346465353965366365356639373238383438223b733a33323a223962303233636335383865323630346530306266666339303136313635373235223b733a33323a226336386138656439336136646135616637626335346664393664663362643466223b733a33323a226539333666323666303766366336346634326431383362386333333237346639223b733a33323a223566383036326361323461393839663536633538306261363663336637376461223b733a33323a223332666433333231363134376363356339666139376366313233353137353030223b733a33323a226136346637643730393035343833303663333339633762653763663864303563223b733a33323a226136376432376339616537306334366631313638613032366534313332356332223b733a33323a223031316136636163346135623932636266366138303436333739306664336162223b733a33323a223338333534323938663136656539656135376238353538396531636136333131223b733a33323a226361323662336330396230323838396266326265656666663739303931313334223b733a33323a223638663264393964383438396563323039303830303832626163363437303830223b733a33323a223835373265633234356132393062356465373962633161363532623037613464223b733a33323a226264393234613539373537353935663164383734646231323566373562306663223b733a33323a223530333963343262346133396262353236326264306338643438326165653965223b733a33323a223662333833623232663131323437373434333734646635656561623661656539223b733a33323a223366393466626562306635333961373263303339306365656332613661626431223b733a33323a226261663461333434656362363837336662643939303539373733393561393033223b733a33323a223036653263366631366466633334643936663138386561613664316439366336223b733a33323a226461666361386635356534666334373434303330336334333037616535323962223b733a33323a223062366238393737373632396262623730346330373164383262356664613539223b733a33323a226131353238393934356363346137313962343831633066356337356235616632223b733a33323a223732343635373635376131343038326134316234366562353037623233336538223b733a33323a223466666466633430383537366534326366356164613536343135353236653835223b733a33323a223932353331353939386563386563373832323235343062356631373863653433223b733a33323a226630353066376233383966396361386236653530353536303766383764656539223b733a33323a226563353136303636353334636265313535306232623265343938666638346639223b733a33323a223938383464313737396265356461393438643663336362393734353332376132223b733a33323a226539366137323066306362346133346436313766643133616438363361386332223b733a33323a223639666537663365363335613764336437313864333934343966646430313162223b733a33323a223262383937333764376133376261373533373363346537383233633064303562223b733a33323a223366653265313763333465386334313834663137356632366537623565366666223b733a33323a223531346463356639653731616634336132306538663666343432346266653065223b733a33323a223565313934306532613338396233383939316130326262356163663436623334223b733a33323a223036306364303839346634346463376366626566373038393434373363643234223b733a33323a223737646430313961626164626434353038653436333832396337633839386665223b733a33323a223465643033316331643733626238346463313036313263393536393035653562223b733a33323a226134626163376665323439313133363639653733653735376234313832343262223b733a33323a226336656564306566313635333063356431326439626139373534396464376637223b733a33323a223762306261626565363461373539376665653835343964636130323561343561223b733a33323a223565306662396632623063636630623437316132616239646433643863373366223b733a33323a223331366166396262666434396133323866646635363561323039396439646539223b733a33323a226638643465393535383464383632363864636633663934656132636538393831223b733a33323a223461313935393461376332363634323435333839313965623362326239363939223b733a33323a226336633633643539646239306637363033356437383964386134633236643235223b733a33323a226161333963633062396236306364663534623633363031613631343834353136223b733a33323a223663373437373637666634336664316632383335653735376339306237303562223b733a33323a223466363335323539636637623337336663343339616436626335343931383464223b733a33323a223932653862663665633065623934653332333166313832353362323832636364223b733a33323a226431626564383165376331653639373062623331663331303132383561656435223b733a33323a223438353564316339336666663466336539613835633634313733646265343263223b733a33323a223664396261343264336431656535343139626432313237396436633037353538223b733a33323a223762336365333433336664356438636636383766323164356638613966616532223b733a33323a226165653137333133646362656538633863393565316362613537336235373766223b733a33323a223564626135326234636365306465323733353539663030376338336263306162223b733a33323a223634303434383862633662346232303266373934373034353739373964623630223b733a33323a223263383265633634666664353038626161633561363662326233363833316539223b733a33323a223235316161646633633537326630613439333638666430353933393762633031223b733a33323a223331376231633162343262303531363066383031663731666330663234363162223b733a33323a223662636135396539393532663265353831323032303331633432613837346461223b733a33323a226139386431636331376561363736636433656638663464383138373139623735223b733a33323a226431613166363765363238626531386431373033663936393834363330343235223b733a33323a226538623661626537363961343431373838613131353236313738623335653935223b733a33323a226230383864393133633862323762383035326165383563306431333264306639223b733a33323a223232613633393233326261386337613135363731313831646163633465333830223b7d733a343a2268617368223b733a36353a2232326136333932333262613863376131353637313138316461636334653338302d6230383864393133633862323762383035326165383563306431333264306639223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a31313033333a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3133343a7b733a33323a223237356133373066373966646665333466333032663961363833383465326335223b733a33323a226262343839653761326263363430646231633634633334333863393262306362223b733a33323a226438376637363533636631323839346233663333396332393630633339646633223b733a33323a223063313137663466393135376336653739333030356631643730386434373564223b733a33323a223931623836303530323132643735653134343732663531313937323337396334223b733a33323a226536616664306335343630616262356630383162306163326437373961613132223b733a33323a223638666530643731653733623938396535363464626531343534306562303739223b733a33323a226339653065356663393135376363393534636463303432323836666461303637223b733a33323a223931366261373935393630626464666636616661306262353735306663656363223b733a33323a223866393730323437376466333338396164306364323330646431363930306165223b733a33323a223465613338383935616439396132356562623036396263643134633034313836223b733a33323a226363383136386365343966333663383562633931346535373537333736373430223b733a33323a223966373839623164393639663163393633613334363763393664346638656232223b733a33323a223130643263613365653636373737383433313131313366343030383263316165223b733a33323a226632663531633665393839633236633964383130623134316133633061363938223b733a33323a223064663636643536623637663764623934636431653932663633353931383833223b733a33323a226637663762393139326166653633316639613964323834353435336561633730223b733a33323a226439313432353434663431643237653565373936306230333463343230323338223b733a33323a223037393434363463346231383135363635353939303061313063363462666438223b733a33323a223637613237623262653535363631323735643166303636346162633838336236223b733a33323a223837366265666162313261346637363065623334633638373535633266333432223b733a33323a223136346662653430363963643033333832393139663661323164333035343235223b733a33323a223938386566653761393164666235636630326662396133363737316263356134223b733a33323a223338613837653135626639663939633566316338633563313636376238363035223b733a33323a223065663839363562356331626632633939663535383632653439366565623861223b733a33323a223733663861333462363337323439386530353864363239326566336462326364223b733a33323a226133643830646364633833343935633262333963363762363937313766333262223b733a33323a223664643331643030373964613939643266353061333339663963306333366565223b733a33323a223239316635396137326435353831353261653035636432356265336234343835223b733a33323a223962333162636364356334666130373538343136663839636535616233646139223b733a33323a226366333734363239306138646434303365343137636164306530653832383733223b733a33323a223365643365653030653265613463333730643662303366643964353162373961223b733a33323a226133646430326566323333633532373938653431346430656435653561313833223b733a33323a223166643935323834613333363461393633343965343231663735366566653964223b733a33323a223932383239656636376464363439613763616165666665643932373235313761223b733a33323a223934356665666636636431343464633235386166386562623530643663623164223b733a33323a223962303262373434616461313731626438666330626265616439336165653165223b733a33323a226331623930336561643539393933356337653563396131373566656137303834223b733a33323a223031326232643433633337623037366364616239383730306461663938323061223b733a33323a226263356137613439646535656363663937333864346635633566663333633962223b733a33323a223237376263633566376430613636336639376236656163323362326365653131223b733a33323a223033396139666330316366633831346463333539323363633337383362343162223b733a33323a223637383333316331323331623138653437623463636162666636306433366361223b733a33323a223763313337343031623335356361383532343465613730366261666466613134223b733a33323a223062316632356266396163356330616363386336613330616138643032383935223b733a33323a223334376433343933306362393139353536343263383064663730303461346338223b733a33323a226565336565653439383439383963386131376239663937356333643236343535223b733a33323a223061626439393736643933323836356564363765666163653166343661373662223b733a33323a223432323337303238333836313866323637666636353461386365343330633461223b733a33323a223237383939663133643832396361303931303663626361303566383031653231223b733a33323a226434323734616561383033303036373432633865613863303130313937353964223b733a33323a223733643064626362386239316434666162306437333732363966323237616131223b733a33323a226131646563363063633364623963346664653433663934663665386535663630223b733a33323a223961356136316261316134333538343835356661313832336237393635643563223b733a33323a223532626262653834316364343566306564386561626461366134306263383132223b733a33323a226534393731353164333032343761643431363063333236626462373365303835223b733a33323a223761386637616362346236653933663036343735366264636562306333343937223b733a33323a226137653938666635386466633430643432633562356161303333343566646235223b733a33323a226236646339396636346333393466613533623731386634646332633837633532223b733a33323a223830383066366135343938316565376136613562313561633538643834313461223b733a33323a226535616133646132373131386334656136386265313632326565616532363464223b733a33323a223739346263303562613565653937303034336435366466343737313031663131223b733a33323a226364393130306235303762323630633131346331316461353930633365633364223b733a33323a226139366633353964613532396238356162313332363538383930316132613036223b733a33323a226562326364383666373239626265333032626162343836366465653236653739223b733a33323a223633623339663763373833393363613163326664643532303665346337343236223b733a33323a226131653636323032646666396138383465316130656432633364653261353664223b733a33323a223832626137356532653334646235313234616264643162656466306663353133223b733a33323a226536616165386138313438333238383766643735373166376136633661323432223b733a33323a223266326136353033393131396431353131643633356461376138373533363861223b733a33323a223331636366383234656434653235643733643439393065316564653638653537223b733a33323a223664343362313136396534363837636530373661393861366464356632613730223b733a33323a223537653335656265366262316430303661393466393439316137383666323564223b733a33323a223937353632323361613165666531386331366233343563663362333164323538223b733a33323a226133633162643762386363656466313666646664663933366539613065316233223b733a33323a223735646335303832356135306139333133663338366230656335633735386233223b733a33323a223239666462613030666165633364653030353166616433386335346337323530223b733a33323a223939386338303461353162663664353233643136643861356466373164313537223b733a33323a223934633337313762656330303966336634643233613835666263303534323733223b733a33323a226663313566376133613839353031663335653064626162643034356364363263223b733a33323a223432666164376435613461616166333233356466376434663631306539666539223b733a33323a223036333766623937323665343963386635393534353166383839336433643138223b733a33323a226530663737633461346163613466333131353166346662393036303731343239223b733a33323a223539333662343461623761616665326630323534623666353564633965356131223b733a33323a226630613063363739613866313738326536383732363834303137626332313139223b733a33323a223032643433623237663730343035386630306462653338383539356535613337223b733a33323a226462613736303763323466306261303637386334306636666166323034633933223b733a33323a226361663333393834343661663830393866346136666330643831333665663266223b733a33323a226637663937343963636236353035663934363139366333366662303862626561223b733a33323a223131373262623762303061313364613663393762636333336334616463353334223b733a33323a226562653139303633613030663637303734336364366531366637653232303863223b733a33323a226661616334613632313231616465303765666132386166653762303765363465223b733a33323a226236353039313636333835366166316433666432323665393230343466653332223b733a33323a223032343164393839346539373966336637386633386431643761663437393061223b733a33323a223633333637656435316234356332323731323034666166653139336430643433223b733a33323a226162306337386461366237653761373536333335343633363831393761306233223b733a33323a223264323165343836386530393236643562636565633864383336323930306461223b733a33323a226434373736643332636165383934336539396365346137326230306334623233223b733a33323a226533343733393230373866396361366466626439353130383732623162313964223b733a33323a223765393366366532656264336663313333353036613638343264356565623839223b733a33323a223331626639313238643331306464396337656433303765653764633334343639223b733a33323a223238626464333138646433353738333435396235613964363666663964653763223b733a33323a223265373637303630306463323231383638376366333534333732643039333962223b733a33323a223933663137363263326165626435633162633665303235393863316163393763223b733a33323a223535616637396438326339326339303830356530663936356162396165666162223b733a33323a223565316435663965356263313232626235333561656630313533633936306237223b733a33323a223635633562656332353261663066383738353136663364376337626634316362223b733a33323a223434643935323765323062643939303037386564376364656333303839376139223b733a33323a226335373263316232623762643134326437633566646264383165653033376562223b733a33323a226637393233343632633030326664353165376365616463343766633362383236223b733a33323a226263346664663435666363623765386161343365613365383138613036306564223b733a33323a226236373665666466383638363635343265636232363132656139636665373763223b733a33323a226333373436623234366166336133356664663062363161343563363061646231223b733a33323a226432613439313134663838636232656534326134383039643139663962386434223b733a33323a223634643265303136356334616536386231663730613438363832373562363737223b733a33323a226661353361393639343665663234346635356461343764353461333132363466223b733a33323a226239383534616537626561636362353437366266663262613331323933356665223b733a33323a226235383731343364643938376538333863663862333035323338366666313932223b733a33323a223532323834396361636237356261303864373761663632636631383931313836223b733a33323a226139313333633439383765663133636261616531393832326234656234386138223b733a33323a226233393935313564363536363934303865373165663935396533663736653766223b733a33323a223538626539636637623436346537303066316364633733366536363931396565223b733a33323a223630643539383965383964303035303964666166363532326164613064303637223b733a33323a223432303837383733653932383965623335386566636337313363393137306130223b733a33323a223366373261343561303631343562366535356239343039663839643530633039223b733a33323a223963346139626631613462383033393964343566393634626232373033663338223b733a33323a223237626434653233336265353633626232653932376466333066646137626561223b733a33323a223565306261373565363636646564666265353337623362393162333764356365223b733a33323a226439343863353831616664356539393130353038393264666231343335323235223b733a33323a223663346265373035343165663236376161383133333437373038336437666335223b733a33323a226265356631323763393436346332353132333133646232306634316635363266223b733a33323a226532643938323165613864663137656530316139396265663765353134313539223b733a33323a223436656461633132343031363665643932326232353266663064666561366133223b733a33323a223232656536633065333631613333383634626134353130653935373537613662223b733a33323a223264656161663664346132613937363632353439366236636230306337393033223b733a33323a223430643538306632386237316164623532643661356139313938373863663461223b733a33323a226232663336356438333564643239393137653134316562393938346330346439223b733a33323a226138313933636133323931393263653537623363653632613332656531643331223b733a33323a223565313835383765363466633763643530653862363037623566383461616432223b733a33323a223862646562383465313937636537616533346636356165366264646533653732223b733a33323a223631356536326265316537386531303962316337653336356563363766666134223b733a33323a223637303439663466613066633933646431653361663238633536326661373833223b733a33323a226336626332356261303832303230373733343136366438376662313064646231223b733a33323a223835653439306461373033623865663863326231363435633630333465633236223b733a33323a223864343330643462653436653361333938656164326638323632613832363335223b733a33323a223433326636336236646638653434316166313032323566363636633634333433223b733a33323a226337366437663665663737653831613966373437656537353132396432623138223b733a33323a223664336236333066656435356438663662303234306233393566383939316633223b733a33323a223036353363376465356431626663363663393036366632383838323330393034223b733a33323a223337306339663435643833353339306266376136383964313464373137396539223b733a33323a226138383761633339623635313534386361323238376130356661303066303665223b733a33323a223933323434373961353463363966393331616562303966626163633466653332223b733a33323a223431333138613161356563383737373333313762333131663662616661636436223b733a33323a223735323332336630636465336535656630363163306537396563393637333131223b733a33323a223636313565306461323036633131386436326530316230313033393862346164223b733a33323a223162613333303463356332623736303563633437343535356666353430323630223b733a33323a223239373033633061303361626662313339303536346434343735656233396237223b733a33323a223335636563326633643430326438383766646434613731316331653735303030223b733a33323a223836303462356266303039353264306432313038616166386464333838303835223b733a33323a223632356365343666643830373165373165353465666237366266636537383562223b733a33323a226136313733623065363465373165376630306136383239613165303264323864223b733a33323a223236643662383662303830306233626237373561636464326235666564316331223b733a33323a223431353934333439316661613032323438376633353866383662326461356138223b733a33323a223765366535346263636264393939393632663133376331363030636662383835223b733a33323a223630386437613536643730363432386565386561646530383737633232626138223b733a33323a226134303339663931376265313464396635613663316161643163393462643038223b733a33323a223335623434663965313165633335623032306665393837623333393130353964223b733a33323a226165653536363966373039616336373163656137636135313138643061386365223b733a33323a223433663633306437373937366364326131623863386637636434326234333465223b733a33323a223835303038353638633633383164363033316431363832633335366334383639223b733a33323a226438396364346434636630366563376237306331633738303838623239386261223b733a33323a226664313765633465356235333734336532613732303032626539326335383531223b733a33323a226535333738383530316561343337313964623031643730663030326461663166223b733a33323a226664336530393239326137616333383864636138656666346164636466373033223b733a33323a223530636132353362336264653038396438346632373537393062333431376334223b733a33323a226130386433306235626264373538613238353564623538306235363231383235223b733a33323a226532653634313863303238396463396535343361316335333538666466333037223b733a33323a223530613937373231633866623966383231376564646164396232373731303531223b733a33323a226336333830633131653334623330646562623437636338396638363837363837223b733a33323a223466323830363530643464313239373334613130636435323733333839636462223b733a33323a226334323366373731656161333934386166363335353236353438326539666438223b733a33323a226232376461643331393135633964386463306265363261663330623032623461223b733a33323a226236303337376631343832393939613633363032303532356239653464623739223b733a33323a223162383766646464326533336262336464396237336132373333616463366164223b733a33323a223736643561363861393035323036356165313666626330303264653661363364223b733a33323a223666313861396433663835353166333038326638636639643632633366366636223b733a33323a223238616230306638333232636638373033323734633562326466306164346538223b733a33323a223737336363366330656433383563613961313661353165333238643963373766223b733a33323a223764623232646366633266613833323936653635323163633934343862366463223b733a33323a223163333463323666633937656464386236393632313765636264396530643462223b733a33323a226261613134393831363036303664323331333762636633306535313436616363223b733a33323a223933336635646366666633346365366535386137626430353333653439653862223b733a33323a223462663038393430636635363033386233313538336136363739323761343838223b733a33323a223561646263633661383166323963353239323162643966393766303231613834223b733a33323a226234366335323830653366333463333833326464316561653031386634386337223b733a33323a226635343135343061613361613163393935393536396638323036666238623965223b733a33323a223762636133346665623236643466613563363534306434303837313564613865223b733a33323a223734646134663035396138663061376130643534633635393733316336613736223b733a33323a226637353063373162623839633235633861633634313736623463366531616434223b733a33323a223664656332396537363036663038626365663066633163313761323530663562223b733a33323a223434313631643734356261396663663763316261356432643538356666376361223b733a33323a223763396634323336626437393439373232313634643230303932393030666666223b733a33323a223733376637326538323061616434613561323530353533393939356162313865223b733a33323a223539323732363530366163396165346535663737373535333262313463363431223b733a33323a223562393966353832343666643930313132336262393636616236663062336535223b733a33323a226161316266653137346466396535626136333564353932643561353738343337223b733a33323a223632353235393033646164383363613437323236666536653863356138356262223b733a33323a223463636133663535346635343731623730656562663961613933613230623261223b733a33323a223031396563623439303435663465653739653731303832653035636538373630223b733a33323a223234393961306636646533393831366365306362356364373134323439303638223b733a33323a223635663339326435333763663531323561376237323364646161633535633436223b733a33323a223539343865323033393236616661373536636130396137393931373264636163223b733a33323a226630366331653365333834346331353834386331633331306231313836323836223b733a33323a226530316564333164646231366137633039633033323539613536653336623364223b733a33323a223737333837626634343632633463333436636236663732303739393438326165223b733a33323a226464323866316239666138306630383035313561623763353165653136666561223b733a33323a223637376438333932633532323534666636343662393662363335316338353338223b733a33323a223133393037306236353865613731646634316333656237653161343866666435223b733a33323a226636666461316465663261623936353739616162336630386366306365363136223b733a33323a226435653130356164363563333865336464626265613430306664393765366637223b733a33323a226239313230373437373961376566343232373866353965373733633763383938223b733a33323a223832396132623630326562373636333838346239386536363361626637633561223b733a33323a223965323032643037306437666633313638306663623231363332656461393065223b733a33323a223037653731626431323832336630396131623538643731353034616237643364223b733a33323a226230663531353864313534373437666636333435656664313762336465333231223b733a33323a226563303938633937303839326530343264653037616565373661346163396335223b733a33323a226238393237646464376631653463633930333261346264353535616164613661223b733a33323a223836363636386533653734346566636135313134303735613833316535626463223b733a33323a226437393462616332616365356632656566373561393139336431383266333834223b733a33323a223364316165636332643035643664393131383832653230353962346135356230223b733a33323a226264376339316335336236353330653136333833363830633638343662646164223b733a33323a223231363532643765393830363438313265363861313333613930353633373335223b733a33323a226537623331363631663332373030653632303237326434386331383236303837223b733a33323a223236313862356666346633316366356238336635373535336462636536346337223b733a33323a223965313465396139626532643735386462356538323832336263366463333166223b733a33323a223734613539383165353166303432343338313761393139383932306363336565223b733a33323a223232623733383564326261393039353266393364333836386461343431653937223b733a33323a226639636439636365623563343635316533373830323034306335613039303434223b733a33323a223931363732653534393438323462326639366630643131393033363133383331223b733a33323a223538643562393734633838363162626164613361653335333732393835633030223b733a33323a223035633538306430666235636666353664323662656139643364343234636536223b733a33323a226163663765376461616539386534636436343461343164393333653935316564223b733a33323a223038373839643863643332396464356130613235613234373933316333633965223b733a33323a223338616263663837343930353532393935636230653262616662636566633362223b733a33323a226634353935343233323661373132373934353238343937393535623838646262223b733a33323a226538653832346566326635343734313530323761386239656231636661346662223b733a33323a223036393132383337353766666439373065663032393836313965303636666564223b733a33323a223262653032346633313533613036613865376663313535396634373236613661223b733a33323a223031623064373035653765633662643963303536383330323130343638623465223b733a33323a223165666539643037356537396130623162373936383533346233343364376339223b733a33323a226565343662336663346333643934623234363136346338376461633432653464223b733a33323a223536656332326135613766316233646337626665653530623839366230633530223b733a33323a223733653033376461306162303339343565346634663438353438643531363030223b733a33323a223932383735383662653165626234373837323835303165666137643537396539223b733a33323a226634623237313630323331353730643132653139383933616239303263353365223b733a33323a223864613063633432653433633262383536353162656434613763396637383465223b733a33323a226634386636353538646232323731343565366135613665666363303566386538223b733a33323a226666346432326533633265303464313935373265666364343938636361326261223b733a33323a223434643333383736323964653438333239336432643035313534396332373939223b733a33323a226464663533363561326535643964616461376263363731643164626637366632223b733a33323a223761663063626339336339343336616262363761386662626565663439633532223b733a33323a223039363939666638613364623538646562383061353936653830616335343435223b733a33323a226566663539613063646534326235343438323135303164643162313434306334223b733a33323a226264363862643539343865666335633037663430376236626663646538396363223b733a33323a223431363864313463616235373830613566306534376539356561393366343930223b733a33323a226263333730343838396163336230666637303233646264653464623662396235223b733a33323a223361376162626631326265656233636462343736306561313662356466306334223b733a33323a223532663963623738376435316333303030393732383061653339383639393638223b7d733a343a2268617368223b733a36353a2235326639636237383764353163333030303937323830616533393836393936382d3361376162626631326265656233636462343736306561313662356466306334223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7369746570616765666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223138363265666362613238373930386132653863313662393633363734653562223b733a33323a226539333964393863626461303835313166386266386363373230643863646234223b733a33323a226661623731356663333763306239363637663035376436333137386563376630223b733a33323a226464326235353464323636643265326665316638383462636239636533383062223b7d733a343a2268617368223b733a36353a2264643262353534643236366432653266653166383834626362396365333830622d6661623731356663333763306239363637663035376436333137386563376630223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3731313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a353a7b733a33323a223063646461393534356330303861373361396132666234623738356663643163223b733a33323a223266373939663165366335386431626464393033626633646165366665386331223b733a33323a226664613864306138643964333366363632616433373031346664336632353638223b733a33323a226537383432626361363234663264646434343134613637316239346639666263223b733a33323a226332623130303061393364363065646535373636306632396264663832373238223b733a33323a223165616530393763636630663036333562343865396530343361313662343731223b733a33323a223166353130346661666430313437326130663830393265613165393038663930223b733a33323a223836663930383930373631353931616437333132656536343436646139616134223b733a33323a223138653564646630316232303566313739306536313931306338356632626464223b733a33323a226364653565623837653561326337366637393663363430306137353165623432223b7d733a343a2268617368223b733a36353a2263646535656238376535613263373666373936633634303061373531656234322d3138653564646630316232303566313739306536313931306338356632626464223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f736974657265736f7572636573666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226633636539666563616266623834346639353830626537643336393262313366223b733a33323a223831616663656535326430303161306139353865646534636232376634656666223b733a33323a226130396564643333646430613832646161346664346532633638626338313034223b733a33323a226536393366393236663339643334313130626335623763346330303362366233223b7d733a343a2268617368223b733a36353a2265363933663932366633396433343131306263356237633463303033623662332d6130396564643333646430613832646161346664346532633638626338313034223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a313131323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31303a7b733a33323a223366306661623466643265663032376231326430666166306437303031333838223b733a33323a223434663334346235316532366633366563356566353133336362313733656566223b733a33323a223837623034373939353438323330356232346132376633323061346535653161223b733a33323a223431623962646538633664313462623062366337373631303861316336663131223b733a33323a223765376137323739323837396139363737336565373136343730636332336430223b733a33323a223833336631633666623132316636353464373439663632336437376334326565223b733a33323a226234633864303765653935326530366361623563643335383636343838336335223b733a33323a226264663139363661623363303661386463353033653265363366333463353930223b733a33323a226437623136346162353136646431653435346565626433633465303134316339223b733a33323a226536376637663362363535616631343962663635656530643738633761666165223b733a33323a226235336261306263636431643634643135396466616263363933613961303738223b733a33323a223839656331643265623736336430616136376332653039353134653833366261223b733a33323a223766353332663338653238663731623738386336613162313435316463623235223b733a33323a223462633234663662393666323638303530396461343665653138393435653531223b733a33323a223664653664396339343461346266623634613765633335353338336563656439223b733a33323a223363356461646236303333633031363539666366613434643339343932656534223b733a33323a223034396335643036383931616430346436363633393934623664393862393737223b733a33323a223961623063353836313336386463373136363165316362316563326231666564223b733a33323a226437353630386535303338643838333831373165313637303732633934316165223b733a33323a226163323438373134366337363164363762613535373862393266643930353436223b7d733a343a2268617368223b733a36353a2261633234383731343663373631643637626135353738623932666439303534362d6437353630386535303338643838333831373165313637303732633934316165223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a226633646664633630643064643834633631623664333863623865653464353565223b733a33323a223331346239623461653232393066373636363434376161326664666637326438223b733a33323a223439653665663334356630316165363536393033666465633233623038343832223b733a33323a223162613762663531393333663666666266363035396163636566326234363863223b733a33323a223566323537626261623731343538643266303062346630326632656362386635223b733a33323a226134333234323338333233666339633361626464346634326266343163316263223b7d733a343a2268617368223b733a36353a2261343332343233383332336663396333616264643466343262663431633162632d3566323537626261623731343538643266303062346630326632656362386635223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1604916419),
('ndvki9hj1cb1m1fuq4eqqt4g1q', 0x5f5f4c616d696e61737c613a363a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630363732373137362e3938363934383b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2237663366666b6f7371386a68657266643335396c39346f306869223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353435373234373b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363733303638323b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630363538333335303b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363034353736393b7d7d72656469726563745f75726c7c733a33333a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e2f6974656d223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226130636335373462343762386566666334393331663130393862323839663363223b733a33323a223331346261356532366635336365396366323431393762366164343835653139223b733a33323a226235356334363063623564653864666633363430363830346663623130306633223b733a33323a226466663834346431666235313962313236623562353738376335383230663731223b7d733a343a2268617368223b733a36353a2264666638343464316662353139623132366235623537383763353832306637312d6235356334363063623564653864666633363430363830346663623130306633223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3237313a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223036663363646635383931653638313464323133353435323734376534383336223b733a33323a223963393832356533326637653761373339393963623333396339393666323932223b733a33323a226165366466623635393761663838363835666330623063396230663833363933223b733a33323a223763663636643339373038646165613862666336633961383939633233373938223b7d733a343a2268617368223b733a36353a2237636636366433393730386461656138626663366339613839396332333739382d6165366466623635393761663838363835666330623063396230663833363933223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3739313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a363a7b733a33323a226432613331643037373433643136643231613565303362306461316635653065223b733a33323a226133626362646132616466306661323238336366323737656135633630313839223b733a33323a226163373462346432643061656464333765303035316138313163386434353965223b733a33323a223935386436613264373662393166656138653663653561376133303436663333223b733a33323a226364323462396561653335323138393536343464386263383239613165666436223b733a33323a226233626437303333313139616465663862646137613961313130303331303537223b733a33323a226631313266313365646164356632653663383061393462386136363262363965223b733a33323a223738343238336631393165393432356366343164643463653737613133393163223b733a33323a223435623039633330306164616436356634326166343137313030643733316338223b733a33323a226636323335346364396534366264386363633638383531343162373863333239223b733a33323a226137643632666135373663653238303134383231626533643466356462313537223b733a33323a226339353064616662313665346165353334616263356534636363366433623962223b7d733a343a2268617368223b733a36353a2263393530646166623136653461653533346162633565346363633664336239622d6137643632666135373663653238303134383231626533643466356462313537223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226363633735386330316233333165396333643039366162613433643463646337223b733a33323a226563363030633630383065336534356361613939383566303165303930656565223b7d733a343a2268617368223b733a36353a2265633630306336303830653365343563616139393835663031653039306565652d6363633735386330316233333165396333643039366162613433643463646337223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1606727177);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('nrap5gv130rqnfos9prmjs1fbr', 0x5f5f4c616d696e61737c613a363a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630353230313138382e3035333934343b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a227436356734366a676a69677174737072376872726a6c75637669223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353139363831383b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353230343738303b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630353230343736373b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353230333130313b7d7d72656469726563745f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223266353132666634316165626362376163393136386635633833393962353963223b733a33323a223633353561386632353866366138366561636262623664333662373835363237223b7d733a343a2268617368223b733a36353a2236333535613866323538663661383665616362626236643336623738353632372d3266353132666634316165626362376163393136386635633833393962353963223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a31303339333a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3132363a7b733a33323a226463666365663964376631356365356566613865323164613762363965366232223b733a33323a223261373530623661333164356431653762613834643565396466303038363131223b733a33323a226461626334303661333436613537663463646331326366306533646561333436223b733a33323a226638346139353537313666353766313930613332306565343932623131333130223b733a33323a223561356661356636623563313962623038393531303838366462626232616632223b733a33323a223936333665383964373762663261386461363063643031643234663238396533223b733a33323a226138393137643535613530353830316530323661663064643734376662616638223b733a33323a226535333566366266346237636331616530363834623834313130643234363139223b733a33323a226232366339373931343935303438383264356338393162633636306634376530223b733a33323a223234363635616237333830626162646130623734663762326133393133616530223b733a33323a223036653836376535323164613839393466353962616563646536333731393664223b733a33323a226231613333616533613135363065613634646435366463613632353538346333223b733a33323a223565653436663735363164656264306263316236396330666337383939323531223b733a33323a223330313864613035653431653166636437633030653862383834313639646536223b733a33323a226239353566626561323763363230333638333834656561393631393733653836223b733a33323a223364383761616630346263386135323335666230636430343734633038353934223b733a33323a226661643330376566333736343364313936373234343165393261306630386265223b733a33323a223235626135383432386435343935383132326530626630386461613136316435223b733a33323a223933613831366133626335643865336264316362396139653330666533356633223b733a33323a226161653262386333656461633337373933353964396437623762383763373737223b733a33323a223836303862313135613231376437363062633830373163653636646163383731223b733a33323a223464383334666435613535336332393330383130626138333931613134616461223b733a33323a223066643836643138366631386638643865313963303065363931356562393336223b733a33323a223966326265383435303263353130306263343231636234616635393465393239223b733a33323a223738393964613434616532663834333466393937383834663966663134323232223b733a33323a226534613530373834393133653333393730333235653832663936346466656534223b733a33323a226535343734393238346631376133623437363264396533653166356238616366223b733a33323a226533656365333564626438626334633730353232333761313236343434643463223b733a33323a223730626132366162643466323736393938666335623539343465333634626164223b733a33323a223430376466656638313961373038383962346365653965383035326230616163223b733a33323a223138383065623730363033656530326234656632393336376565393336346337223b733a33323a226165626533393137313035316431393066633662616338386463653937396533223b733a33323a223330376231666535363036303139323833623936633138643039343961383530223b733a33323a223536346639666630623764323233343662366461623861663939666530643165223b733a33323a223639653534626530643036303133326465653539613264313666373962396130223b733a33323a226533626633333233316234383631626436623832386435626463366432386333223b733a33323a223132353237316330393165396564656130306462663036343132643434623533223b733a33323a223065626266383234396539666633373266656539346234333136323331666237223b733a33323a223032646563313335613864366539383031373334303334623839653834323962223b733a33323a223031336265636332623264386534643966363038643732393361396666363333223b733a33323a226266373830343063663732663631336261666338343033333665376663353962223b733a33323a226562613465656632383964313734643162653035643664663330316335656364223b733a33323a223765653133363463656432313733396330623336633237323031626364333863223b733a33323a226332363661656639396433316665393736323430386235356566313130653435223b733a33323a223638343033366633373162643539316134613435313136336432333338383733223b733a33323a226633623536663739386331363062343565653964633465663761343866363534223b733a33323a226632326364623138623837636463656233363664363362343166333135386162223b733a33323a223766653232313364303539636539353032623562316130636434383734303834223b733a33323a226332646130343437353731633033393236646130643439343139313963623235223b733a33323a223531646638666464306661363861363063616436363836316634343039626232223b733a33323a223437313432623638313665393938666632626334383136336531613134346262223b733a33323a223563363239306336653364396230633036343136653738363330616337373264223b733a33323a223439616265376639386136333663643865383035393630383637626530623933223b733a33323a226262393963646661313563633639613034643064636162383036646437356364223b733a33323a226366376333313962646539306331333131323630633230336435396364656562223b733a33323a226132316163613931343532636639386535383731666333333266336138373936223b733a33323a223961393633613363336238356538633834346363343038643139393836366638223b733a33323a226665346538393034643333333537656265363463343537663338633463356432223b733a33323a223764396639663464386535383238633765393462653838316230376236323966223b733a33323a223866623935666662653533613263306563333866366262666232666238316264223b733a33323a223436613563663066636232376433663738313130366364353262633064633735223b733a33323a223533663264313334343865376139376161383638326432653962643733303435223b733a33323a223539653062643964666362646436633030303737666432326233623164313036223b733a33323a223363393632303032613939653333376534646235643866376338663333353432223b733a33323a223533366638393534623637663764616162643534373336316237323262396365223b733a33323a223534356532383463303038353633383964633861643166323739373035373435223b733a33323a223134396236626635613962336231633964303839626261316266366663346535223b733a33323a223534643163343036323639636433393730363465653434373066393734336336223b733a33323a226236643132336666336534306662356433343564396663316532343662633931223b733a33323a223236386364343737326639626433353032323038343363393165313934646136223b733a33323a223532386136333165323436633264383533343434366532646638313663313138223b733a33323a223333363739636636396130396335313435616466396633643133663834376130223b733a33323a223661373838306538666261363535613964396165386331333865653236623037223b733a33323a223538633438313964396465643638343135396463643463323230313766343736223b733a33323a226565333037653862383730303434316165666662353238313633363864396638223b733a33323a223039646333356232336230636266653231356237363062326139356463323461223b733a33323a223537343866336536636665376134333933333761323865336463326433636636223b733a33323a223533313564656637353232336230356331376662613961333435323733376333223b733a33323a223936333337626630383066663237356130373234336664306531343630616331223b733a33323a226165356436383665376536373664333166373462643530343432623337653138223b733a33323a226130663836373063623563643361346138373861646337643333346233356266223b733a33323a226662623764643466616636623561353665633338386536656536303835646563223b733a33323a223064646637613630663263626133376634326164663637363136346266636230223b733a33323a223465343361643166393039313535636166613130633461333330366436303536223b733a33323a223733343037343031636135623236313364613631653932353230386230366438223b733a33323a223561633539653564656236333231316439666437663663326333613731633865223b733a33323a223434666334366161323235336638656634373338386664613666356365323038223b733a33323a226666333231363837343865626133303763356331363832613062626338646366223b733a33323a226435376562656234323862323836303132343730653835326639653036653436223b733a33323a223730343635336363363966616565393030653738343165663735343166336166223b733a33323a223766383834373863383139343335313166353332396432613030663039663062223b733a33323a226634393437626437353039646333363739353535613139356531313463373564223b733a33323a226438393233626265636435613930303038633134626438643536396631633238223b733a33323a223863366432633162396566346337653832623536383261653630626338313732223b733a33323a223634336262646538663730663061323937613334623064333931376535353563223b733a33323a223664636632323334343139356364386463353964666330373939623765653039223b733a33323a223436636265353032336436616539383731613130666336346263323037383262223b733a33323a223162383364393730353431633663313666383633636133643866373161633764223b733a33323a223936616461343034636230623335363235346638346438336530663535346636223b733a33323a223966353866636365643232663639343839613865373135613437396464313533223b733a33323a223830656461366465313664316165623235323131353839613166623461396565223b733a33323a226337316336633131653534326161383035363262363265353739396665396464223b733a33323a226233393837366165373132383634343832333366316636333431633131636662223b733a33323a223065313437636634376132623334646237616662313031336134323836373437223b733a33323a223431346331383537396534373263626263316136313866366661303565313130223b733a33323a223265643830363839633162343532363838393963396538666439653563646538223b733a33323a223264623532646330666661353566663064633563666632313733343866393530223b733a33323a223933333634363164383636323565306539633833376665353465616233313164223b733a33323a223832336235373539376534383865323937306462626264346665626634623061223b733a33323a223838613832623137643562363534363639656537393233303361373131323864223b733a33323a226132623531323438353461653165373338323362356232336462616166653330223b733a33323a223562316630383837393335633735636162343631323765623730313136313934223b733a33323a223765623936373539336530363836353839636632303033393865663730326136223b733a33323a223338383437343932663364353666666136303733643261336636363939376433223b733a33323a223230306533626138356132303932643966323730333766363937366139643535223b733a33323a223962363730666563313934313934363031353130616536323662646164613564223b733a33323a223338653265306337666237636235336337383562396361336333643330646530223b733a33323a223132343239336632346437613161353530643066373261316264396536643132223b733a33323a223233373064653036363262643733353536386636386461343764373133313030223b733a33323a226537363031356461663431333938323833633062616331346463653466326533223b733a33323a226537386636653732306361626435363232613539333530353765323330356234223b733a33323a223636313031393833623237393663393730643933356337373161633165393938223b733a33323a223663306436373132353333613361353635636466656135643664313434656563223b733a33323a223065363832323935303866663966386337623230336262343639643335653835223b733a33323a223236626162366132323738303838363764666265313264616461646436343566223b733a33323a223136666465646363623331326137303965616630383335363631353432396233223b733a33323a223737383934383630326163626262353832623363343362663936663933373631223b733a33323a223134373035303136623832326565643430616663366333663834303438333863223b733a33323a226433333434373661666262636234383363336138353335373463653937393832223b733a33323a226536623738306661333163346335383939313833613330323230396233303231223b733a33323a226335666162373639383561323336666562306530346365626433393338346635223b733a33323a223063346132616665623638656530346164383234653836303037396463363639223b733a33323a226135343365333331643065646437393333306363636266326462343065386461223b733a33323a223936656139313332653433303061663866343765346266643236326261393536223b733a33323a226431363764616239653832663236653162326532653439616664643166346435223b733a33323a223764383831663039653338333439653265353933306639326131363434353161223b733a33323a223637393335356638393337656530623335313862323731396131653838353961223b733a33323a226165306131353166653134666464386466616465343934636134303835326635223b733a33323a223438343231316336343231353635386562363634616238636162323632333435223b733a33323a223061386439326630303764663661663336346439653936666165636234353461223b733a33323a226539356435613436336132323532633231663232623162316666656365303765223b733a33323a223862343863346138383832346337643262616165373530636534346666616336223b733a33323a226133393937396431613165663864373433643730343561303135373261356333223b733a33323a223030396562383735393235353437666361393562663531656430393134323933223b733a33323a223331666332623161373635663535353638313830333136633630333565373932223b733a33323a226337333561363232363666306564613764626131343933323539613735396665223b733a33323a223362343937663437363464643361376434303462306630393162313664646566223b733a33323a226235623161663737326338303036363063663639366163613230303538346335223b733a33323a226333663162643638316666323966393835616563343936323439366262653934223b733a33323a223333636633613533393464623236353236326661393630313133353263306330223b733a33323a226663653132356462616231363537363562313834386564636132386538326262223b733a33323a223236363832393838363137313164373963303736346339306231353161336539223b733a33323a223239656335353634373564386535626437346166663538326233396331376466223b733a33323a223966326237366139346532303865343530623234623665666238373530393866223b733a33323a223439373133326234633131346136366464373334613732333339613432333963223b733a33323a223231333539616463383463353039626561343934376631323862363461633064223b733a33323a226139313266386333323632643162396231666637346562353435373866626637223b733a33323a226535366239666131333638336432326330646137373438623336666237303862223b733a33323a223530373661376464366638643564636165393038393130396230343937636533223b733a33323a223865336331366236393161656538326663626637633937343836636331653465223b733a33323a226561343231316136656565333766346262343166613137336261393961346662223b733a33323a223737643262323533623737363265343363393566343036623263323262636234223b733a33323a223764656462313565333836323136336136326330333061663833303936356464223b733a33323a223533313235646665613166656665316335353635656638366135636165393139223b733a33323a223235376330383931623530616534313066646461623634363766616339313338223b733a33323a226138653530656337333537643265343765656434346138353063353736326435223b733a33323a226266326130326136616634623530376161613864303362666134306136333431223b733a33323a223361323161373862326635303234626161353064373931343463646664313666223b733a33323a223035386462343865373865303230666163353130343331353437323334333634223b733a33323a226139353965626535626531336530613337613132313463643534383833656630223b733a33323a223164613338613334646339303436633134633263306536653366333737653932223b733a33323a226563366533333562643836313639373134363432303431386634613061643966223b733a33323a223133343164303632313232393863373837353466383563663238346131376264223b733a33323a226462653162326436363938363262393461323933383562663830303463653165223b733a33323a223832663664613565306139353433393230396262653232623366313337656230223b733a33323a226462396438326361356233383637303035636535666139633464626465616539223b733a33323a223030666366643966323836626338646466653962663636643361376537646163223b733a33323a223638643833633063303739356661653366363163613139373839323166343865223b733a33323a223633343932343966336135366264353538313863353333656564383766383035223b733a33323a223431303039623036633562656434376637366536656138346430613435376132223b733a33323a223434313735316533383835653066663235346337373031326635356535336662223b733a33323a223961303362633531663835333039613764343132613061653032663464363262223b733a33323a223764316337343166336531393637353366343133303439396536636565666530223b733a33323a223261373639366363363063363966303863353239643131373233393266633264223b733a33323a223037393239336331343537646535623336626638656566613734623961333065223b733a33323a223233663835323364306638303332323762313637376461373838343134326463223b733a33323a223233343566306261616137666365666138646333633561393062633664333265223b733a33323a223061646334316434336531383137373763313061646132326530396239646238223b733a33323a226364646134653332343439376565626265346339356239396439366466376331223b733a33323a223664373137633435623464303264383331383931323663323632626133373837223b733a33323a223638376366643861313065363432383565396662663333306564643164323264223b733a33323a223262373366356236666336376263653933306531623461356161623663653765223b733a33323a223635353061663431336230386165386263393439643261613362636664653963223b733a33323a223839633939333765373635653834303931306135356133343236396630353164223b733a33323a226532656130356664646339663833633134383363636563626539303364636261223b733a33323a226338653366333137663633653037616462613234623938626665306230326136223b733a33323a223530373635393333616539633932383737616262653161643462393462373435223b733a33323a223637363035656364313631616166363766346538373062663966366432386566223b733a33323a223733656335636664393931373562376661383037643965383966316265343734223b733a33323a226637313433386633393139323639376334393338343638313832326537373662223b733a33323a223237643165386664336665313033386263326165316431333436653834306666223b733a33323a223834353761373462313332613462336661646462343839343037386630333366223b733a33323a223863383238633139373564633338383364323666333962623132346162643066223b733a33323a223537623432303336313764333732336637316430663066623035613864643166223b733a33323a223332323066316363623763643238333738633934373436393732333731353034223b733a33323a226563363239313964613037656137613835333137616566306139316430346461223b733a33323a223361323333336364646430613537393235383131613939646562363332366231223b733a33323a226637373534633963346366386539306137366435393765653331306664376639223b733a33323a223030623132653839653165636234373063313030653563353435306666316634223b733a33323a223833303832326136323163666234316433323436646437363332626261663362223b733a33323a223731356661323331383561396533333864303763306261626538326132336638223b733a33323a226133383834383162646637643134393931666362666362386439303831376363223b733a33323a223934323266623432663631353437633333653535393962373530323036333234223b733a33323a223030663438646461613663386235373336646635633134336564623036353565223b733a33323a223934333566336461623835343031653533633461346438386461396361373638223b733a33323a223334656434303963336234373533613861663932633763656463313862306463223b733a33323a223163396438613738646232626466636531396237353033333135636433613462223b733a33323a226534643963363665303761323738356630373266353063336662623363646437223b733a33323a223962373736333730336638363631656234353262616565363231323335633234223b733a33323a223239353234343536376137323832316361343434643866336633643965343061223b733a33323a223966653639376562316262323536366230613463383565376633613532393932223b733a33323a223731623935323161643130383666396231636136653037653465313061356438223b733a33323a226231393331366262356362663861303666333964333637353038326563626134223b733a33323a226264363061633439363964343934643165323362653733363236303566333635223b733a33323a223136666533653534363164393363666531343164333934353031393539343666223b733a33323a223062376432646134323138393632343064613539616534336664623737616530223b733a33323a223862353466636638643663303231396230653335643131626536343163643465223b733a33323a223235393736663935306263623533636139633165393332313537333466336631223b733a33323a226331396666393865343937303736393735353861326133613033306132313133223b733a33323a226262346230366430613532313864626139633964353535633163323137623061223b733a33323a226434626564306563336237393135643261613462633237386464333961363464223b733a33323a226537333862343030656333653764323364626263363064653338303663373138223b733a33323a223834336566326464616264643134663861363239623633303430383865616232223b733a33323a223164363234653461633031393336373832303234326665303764613733303663223b733a33323a223937303361376434616165386638373639663364396230333339396330623139223b733a33323a223539633833643135323131353461626132626661326335303263333065393161223b733a33323a223061663534356232623163626434303733366363353563653561626636343366223b733a33323a223564353562316537363237623361363332396136356534646366383838326333223b733a33323a223235653936303565653139643832343433643233326435393465666432616463223b733a33323a223737303234393665303835336265643134663939326363613465393937343431223b733a33323a223437643230343037613262363961326339613831363533343635303131663462223b733a33323a223330313338373937356663326537316266363564376662396666393334316532223b733a33323a226166643863613432373464623564383062346337613231386238363634363066223b733a33323a223539653339633236343232643463636530376239393334323230623439343730223b733a33323a223361643635636564616163633263626234633663356236626464333537663037223b733a33323a223837303032396664643139333531313266353235323533356631393930373732223b733a33323a223938663734633461303331306539306638613764363561653238373363353436223b733a33323a223538326266326661313835313332663134366565626561353237386430623561223b733a33323a226130636132633561366261323831623639393832653831393032353937313066223b733a33323a226633386337393736636530616135323665333836623434633834333265646135223b733a33323a223035363939386438396163386132633238343030656230323733633563646164223b733a33323a223432353863323664333761363263633231313038366263623132396631333065223b7d733a343a2268617368223b733a36353a2234323538633236643337613632636332313130383662636231323966313330652d3035363939386438396163386132633238343030656230323733633563646164223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a333335323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a33383a7b733a33323a226332363237616462353062623166393864393166653463323530623730636133223b733a33323a223334343430343330306161643134623834333965313931663761323965643835223b733a33323a223333316631653963656336653235396166326130376166313166386536623238223b733a33323a226437666633653238653232356131333638383930643934623434376539646430223b733a33323a223235306663623935333437613263646234393866306334646561376137333133223b733a33323a223265373331353436343265666638386332313539393937316436353965353938223b733a33323a226161613762393538343130316336386334623162393531386230643237343433223b733a33323a223462383364343035653737326635653763643765613436633536376665393430223b733a33323a223236393230333132396663626537323136316661636662643134643161656565223b733a33323a223430636230613838363637306664356537623565336364623735623063643433223b733a33323a226535316239366464633234636337343239666139303966383532383734633461223b733a33323a223032653064373964636664303631653935386335343038663639353535343632223b733a33323a226531643939316137343938633232643938306236643962316234326239373932223b733a33323a223333326365376638343964343330323232646365363237323065353062643037223b733a33323a223734303738656430386466616266323033336430386662633132633235353832223b733a33323a226639393061373931666334663337393738356265393861646432633333323164223b733a33323a223634333233353864356538646239333139663034363465323934653037363535223b733a33323a226431303332376363643462616238346333323834373261373734356665383635223b733a33323a223832353563626539396239346233386632383965636636636636663833613163223b733a33323a223536346465376464323137383263306336616464393731356434663839336631223b733a33323a223362663163313337326666626165333362616137376437373761326130353062223b733a33323a226166353538393261303135336339646539323765636438663431376636366434223b733a33323a226664303631623830383038613562643161383238613338343262366236326139223b733a33323a226665393532313534386633663631313336356466656538356231616336313935223b733a33323a223136343066353562343136363338306661626230346163383638326464396137223b733a33323a223863333863316530346133636535663430666634343832643261323335656562223b733a33323a226462356537306464636462303033666538393264363336653163356465663366223b733a33323a223938343862313839313264353738363064653061646364353963636330313736223b733a33323a226463623062316332306461326630326139643066383165376462343031363161223b733a33323a226466336265316639636430396464623666663765316332353031326266313831223b733a33323a223534366535333466663634613534663466613838313066373133383931313430223b733a33323a226665303132363362333730616164306533636230646234356336306265633765223b733a33323a223935323733386431306333656235646365303761623364656136353831363338223b733a33323a223338626166646663613166643639616466383930366630666361616164393761223b733a33323a226561306662393338313566313538373432313462376636623238666263326664223b733a33323a226430333439656337376537643064323133653931663861343362393932353861223b733a33323a223464303031336235336532346437623635636365313937616639313339633265223b733a33323a226536643439326433626333396332393064363232616363346234393562663865223b733a33323a223434616433353433643136633637333135616664333836633262323561386565223b733a33323a223138656162393439616539363066643030396665336133663564393031616361223b733a33323a223562346461353362376565636430376131376431303066336464613262366566223b733a33323a223162373937643239386131376333333134366139323335666630666438303733223b733a33323a223931376539363437643534373565346265656265353638336566353737336237223b733a33323a226331616631386431393431653563383530353331353832356230356665313436223b733a33323a226238303262656230383333306465336535303530376462646465613935643635223b733a33323a223735633665363062663263653165363661623538303933336134326530663365223b733a33323a223332643739363330366361306339383165663061643662633333343239613563223b733a33323a226634376633663666663939366232616639333162333461306236633065326632223b733a33323a226666383261353532653832643162393666646639343231306362353735623662223b733a33323a223839616237363734616530656561313363316430343866303966336365303839223b733a33323a226436343239333739353064646138653633626162396334336237623333393833223b733a33323a223335613434343439626138623431353262303337303461313662346532393131223b733a33323a223735623433663933636662376138373434393034616639373931646438633139223b733a33323a223638356337313465343839333562323362616338326539393539353234313038223b733a33323a223038663934613131633337326234313731653636633234656638653238353230223b733a33323a223363383833373865383132376665393962666462626235373939383035343262223b733a33323a223565663363313435616639373864303163623138613837626361393563333562223b733a33323a223534306432363231626437653630383061613931303231656532383738326330223b733a33323a223630353035383832656163336663656166643033326430396631303530366136223b733a33323a223434383464643761383637356366326363623335363964336135613334656239223b733a33323a223234613334353063303061653634623933663432666138303165313265333238223b733a33323a223535356331356532313931306439386364623533613061333166363733656232223b733a33323a226534333233623464363535363833306665303534663466323930383337356134223b733a33323a223861303561343339346364616130356564663931616137623362343165643032223b733a33323a223531353430633962343466666535326137303063633361653036636363376635223b733a33323a223931316639663866383633643763383430366539333835623936333634623437223b733a33323a226135383139323062363961373566383933303530373230376234656138383538223b733a33323a223035336634663034616231666364613461336663323265373862663939396266223b733a33323a226630333765333166363866643434396336343163306264613531383262343336223b733a33323a223030616466366334333331343364626464663132396331616264613139663761223b733a33323a223961656364613262656236353634396161623539646264373039363264333839223b733a33323a226363666630353031663731613536373932323736616264373466323732643130223b733a33323a223764656634376435303836663039356261663935343136336661666131616236223b733a33323a226436333965663861393739616133346166646136376334643433343565373737223b733a33323a223934373761373939393763626566363062393738373031373333386637316562223b733a33323a226263613130396230386634316532306562373132613263336265373164633763223b7d733a343a2268617368223b733a36353a2262636131303962303866343165323065623731326132633362653731646337632d3934373761373939393763626566363062393738373031373333386637316562223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3633313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a223138326639616337613665326165356564383164613432653634393433656266223b733a33323a223334393165383937663061623037616637646132353862613235333736633931223b733a33323a226433663531356264626465633730393265353339643334653231363763353036223b733a33323a226632643461373230663432396265386232376538303834316234303932326561223b733a33323a226664306439623766636264616630663831386564363838343565633264396262223b733a33323a223566333862616637323339313932306233653863626366666435366566653539223b733a33323a223265626539323739353638303834316434393531663964386363323763373963223b733a33323a223962616465303739306131333039656430376630623866333136623533643736223b7d733a343a2268617368223b733a36353a2239626164653037393061313330396564303766306238663331366235336437362d3265626539323739353638303834316434393531663964386363323763373963223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1605201188),
('u8iel33ib6cjv3mh1aoem0sh9d', 0x5f5f4c616d696e61737c613a363a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630343331333735362e3636373339383b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226267626b35376775686c74367067663863337237636130726434223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630333831343634393b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343331373032353b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343331373032353b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630343331373039383b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226239663435623661363931616230616535643933646435646465656131373031223b733a33323a226264623732656637656361613935346337653233323131663265646232653465223b733a33323a223636663834363033383735636666353431306631363032646665363232613036223b733a33323a226132393839663932613833386336666534666663613735316537653666333161223b7d733a343a2268617368223b733a36353a2261323938396639326138333863366665346666636137353165376536663331612d3636663834363033383735636666353431306631363032646665363232613036223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e223b4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3237313a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a323233323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32343a7b733a33323a223236323163393131383331626465346465363064396166333465616566373737223b733a33323a223831346634323135363634653763373138316533626465376437333039616436223b733a33323a226162336131626265636163343734343666373930353337326661643636343365223b733a33323a226534643133613765653734613731613937353461353764633230386665323535223b733a33323a223166623636613934663531343332393264643732356365636461313266623065223b733a33323a223839303437333261643037656563383466623466623436336263313362663731223b733a33323a223935663039306632626337363266663331343037326463643935383038633166223b733a33323a223833346163623361636136613666326435353432373434643933626133613638223b733a33323a223739623965363237313338376535303936326530626462653036626662636261223b733a33323a223831323735326531386235613135303566376363323131313035656461666364223b733a33323a223262383665633036386535306138393432633366613961623931363531316666223b733a33323a226638303265316366333833346539326364643931643435666132656638653064223b733a33323a223339343564316334393438393833626337383337313666366139316463636365223b733a33323a226131306439366465313237343934633636633231376137396636653631366137223b733a33323a223331383331343532393235333038373462633234623439626632353838613934223b733a33323a223635613234316236616166353639366138306266323531663762336366633335223b733a33323a226464343738323938383738363435663330346532653961356335396161613935223b733a33323a223966643865653539653238366635633166363861373733313131313733316438223b733a33323a226538663435656364306335616539643139626561366236326134376631353336223b733a33323a226263613134636466616539306231323733613861383038326138623035653937223b733a33323a223736343163623538633533326462333939376565393434333636386231376338223b733a33323a223039633733366363336561653462383038646366343265346238306135306634223b733a33323a223635336538353838386466303332326330393534626130643566396265303634223b733a33323a226339303263393530636132633664363464326664643738303439343661383633223b733a33323a226561356466393134316131356133326431626239623032663532323331633866223b733a33323a226562616139313535663731643933346634373764653231346665633535366533223b733a33323a223564336361633932383236366432636134303839653365326339356132373364223b733a33323a226134376164623066396563616466643637333365336539623032323935333633223b733a33323a226363653633323636393335666365623137383437343730333834303533336337223b733a33323a226632616663343131303839353938363261356164626533643237376138666230223b733a33323a223062393062643763303536643163613233363061363031316230646535356238223b733a33323a226438643239363639363939623030383862373665366665386533383438363566223b733a33323a223531363337646538343863633239306662373838323139313261323362616231223b733a33323a223664353061303833323234323838653662663834306136326437366265306239223b733a33323a223836323632623961366164306662356331363634343134376235383133363762223b733a33323a223330663066366332366561386662303136643265313237366665336666643137223b733a33323a223931626562346464393064333035343637366463373035613566316664353538223b733a33323a223937336436323734333231653430303966663933383332326435653237653830223b733a33323a223039386265653664356361626563653463626363616136353237343630393961223b733a33323a226463303032376336326663386430316639343336333163633865323838313937223b733a33323a226531643239373138363866613334353135373634656133323961393339373939223b733a33323a223335663666643937353064346461633035303762323334623439316235653866223b733a33323a223365393936613736663462306434383364323166323266303662626235623732223b733a33323a226565333039616335613762663830376162323137663233346363386234333236223b733a33323a226334343631353037313439653166366430353931633262636137373434326430223b733a33323a223066666566323363353962303435656235633732663438363561663035373961223b733a33323a223439613161613863383366376236623164656636326662306461373733626432223b733a33323a226234633639306438616665363432626565316634333330356437653536653532223b7d733a343a2268617368223b733a36353a2262346336393064386166653634326265653166343333303564376535366535322d3439613161613863383366376236623164656636326662306461373733626432223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3935313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a383a7b733a33323a223031396134626561316130323365353266616534326434383266643262323964223b733a33323a223330623037666265643065343162313261646165613430346566663363363435223b733a33323a223139653231633261316535323030306130396263623864663739653266323563223b733a33323a223666643533333262333633623063343764366138323232323763396235646537223b733a33323a223862636164303937613164613334383362653732393233333365376630656430223b733a33323a226537636165666236363631656633376635303361373430323665613165393435223b733a33323a223631306134346330383831393263346563616565656134653137383765306232223b733a33323a226639303534633532663437623233373534646261663935323933623133366265223b733a33323a223564663134343530393634396430636339373166383036323637363937643762223b733a33323a226238613836346665396164366631343761613761323338336631623337643335223b733a33323a226330383835353535346137363233373666346432353034663430316364646333223b733a33323a226637386133376166343436653639343434646162393164343734383634663566223b733a33323a226232636134376538666233393561343737386434646566393162393236623939223b733a33323a223731306335326632643939356433343337616533636438646238373139383730223b733a33323a223664323264636661646634633339636630666333306439386133333234323263223b733a33323a226637643431633730303431313538666237613265313761363035303763663733223b7d733a343a2268617368223b733a36353a2266376434316337303034313135386662376132653137613630353037636637332d3664323264636661646634633339636630666333306439386133333234323263223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3739313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a363a7b733a33323a226431383036396330323261356238353766323539313963613435373438643866223b733a33323a226238306431376532326339323366393261336133353264383361303366383232223b733a33323a226430626661356630323762623930376462323031343063376236363636323162223b733a33323a223364633232383465626134653639393332633737653339663162656263646131223b733a33323a226131306137383639656164626163383266336535306531313462343839613239223b733a33323a223966303837386637393834643239373464626262663130303837366662336363223b733a33323a223562383734643439653861306234373733353561613636336462623064373762223b733a33323a226366326430653530656133653539626266663133663638396536313135376537223b733a33323a226633613737343836316135303762613561323732306566656165363936666666223b733a33323a226366363731366133626462663837393438373834366365376435316239386433223b733a33323a223261353539333838663639326662616134663333343035633538346139383361223b733a33323a223862663133333935323132646631393839363134323436383335643335653133223b7d733a343a2268617368223b733a36353a2238626631333339353231326466313938393631343234363833356433356531332d3261353539333838663639326662616134663333343035633538346139383361223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1604313756);

-- --------------------------------------------------------

--
-- Structure de la table `setting`
--

CREATE TABLE `setting` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `setting`
--

INSERT INTO `setting` (`id`, `value`) VALUES
('administrator_email', '\"marzouksaibi@gmail.com\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('installation_title', '\"Repository\"'),
('locale', '\"\"'),
('media_type_whitelist', '[\"application\\/msword\",\"application\\/ogg\",\"application\\/pdf\",\"application\\/rtf\",\"application\\/vnd.ms-access\",\"application\\/vnd.ms-excel\",\"application\\/vnd.ms-powerpoint\",\"application\\/vnd.ms-project\",\"application\\/vnd.ms-write\",\"application\\/vnd.oasis.opendocument.chart\",\"application\\/vnd.oasis.opendocument.database\",\"application\\/vnd.oasis.opendocument.formula\",\"application\\/vnd.oasis.opendocument.graphics\",\"application\\/vnd.oasis.opendocument.presentation\",\"application\\/vnd.oasis.opendocument.spreadsheet\",\"application\\/vnd.oasis.opendocument.text\",\"application\\/vnd.openxmlformats-officedocument.wordprocessingml.document\",\"application\\/vnd.openxmlformats-officedocument.presentationml.presentation\",\"application\\/vnd.openxmlformats-officedocument.spreadsheetml.sheet\",\"application\\/x-gzip\",\"application\\/x-ms-wmp\",\"application\\/x-msdownload\",\"application\\/x-shockwave-flash\",\"application\\/x-tar\",\"application\\/zip\",\"audio\\/midi\",\"audio\\/mp4\",\"audio\\/mpeg\",\"audio\\/ogg\",\"audio\\/x-aac\",\"audio\\/x-aiff\",\"audio\\/x-ms-wma\",\"audio\\/x-ms-wax\",\"audio\\/x-realaudio\",\"audio\\/x-wav\",\"image\\/bmp\",\"image\\/gif\",\"image\\/jp2\",\"image\\/jpeg\",\"image\\/pjpeg\",\"image\\/png\",\"image\\/tiff\",\"image\\/x-icon\",\"text\\/css\",\"text\\/plain\",\"text\\/richtext\",\"video\\/divx\",\"video\\/mp4\",\"video\\/mpeg\",\"video\\/ogg\",\"video\\/quicktime\",\"video\\/webm\",\"video\\/x-ms-asf,\",\"video\\/x-msvideo\",\"video\\/x-ms-wmv\"]'),
('pagination_per_page', '25'),
('time_zone', '\"Europe\\/Paris\"'),
('version', '\"3.0.1\"'),
('version_notifications', '\"1\"');

-- --------------------------------------------------------

--
-- Structure de la table `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `homepage_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `navigation` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `item_pool` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `assign_new_items` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_block_attachment`
--

CREATE TABLE `site_block_attachment` (
  `id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `caption` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_item_set`
--

CREATE TABLE `site_item_set` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_page`
--

CREATE TABLE `site_page` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_page_block`
--

CREATE TABLE `site_page_block` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `layout` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_permission`
--

CREATE TABLE `site_permission` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_setting`
--

CREATE TABLE `site_setting` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `password_hash` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `created`, `modified`, `password_hash`, `role`, `is_active`) VALUES
(1, 'marzouksaibi@gmail.com', 'marzouk', '2020-10-27 15:03:22', '2020-10-27 15:03:23', '$2y$10$UwQiSTDwtH2KESpuFogpB.Tgd3GN4C9q/eeCzWaKNCuMx2cBVMvua', 'global_admin', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user_setting`
--

CREATE TABLE `user_setting` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `value`
--

CREATE TABLE `value` (
  `id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `value_resource_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `value`
--

INSERT INTO `value` (`id`, `resource_id`, `property_id`, `value_resource_id`, `type`, `lang`, `value`, `uri`, `is_public`) VALUES
(2, 4, 10, NULL, 'literal', '', '1', NULL, 1),
(3, 4, 145, NULL, 'literal', '', 'saibi', NULL, 1),
(4, 4, 139, NULL, 'literal', '', 'marzouk', NULL, 1),
(5, 4, 154, NULL, 'uri', NULL, '', 'C:\\Users\\home\\Desktop\\NTROMBINO\\marzz.jpg', 1),
(6, 4, 183, NULL, 'literal', '', '25', NULL, 1),
(7, 4, 318, NULL, 'literal', '', 'algérien', NULL, 1),
(8, 5, 10, NULL, 'literal', '', '2', NULL, 1),
(9, 5, 145, NULL, 'literal', '', 'ghaoui', NULL, 1),
(10, 5, 139, NULL, 'literal', '', 'yacine', NULL, 1),
(11, 5, 154, NULL, 'literal', '', 'C:\\Users\\home\\Desktop\\NTROMBINO\\marzz.jpg', NULL, 1),
(12, 5, 183, NULL, 'literal', '', '25', NULL, 1),
(13, 5, 318, NULL, 'literal', '', 'marocain', NULL, 1),
(14, 6, 10, NULL, 'literal', '', '3', NULL, 1),
(15, 6, 145, NULL, 'literal', '', 'ouled oulhadj', NULL, 1),
(16, 6, 139, NULL, 'literal', '', 'koucila', NULL, 1),
(17, 6, 154, NULL, 'uri', NULL, '', 'C:\\Users\\home\\Desktop\\NTROMBINO\\marzz.jpg', 1),
(18, 6, 183, NULL, 'literal', '', '24', NULL, 1),
(19, 6, 318, NULL, 'literal', '', 'algérien ', NULL, 1),
(20, 7, 10, NULL, 'literal', '', '4', NULL, 1),
(21, 7, 145, NULL, 'literal', '', 'oulkadi', NULL, 1),
(22, 7, 139, NULL, 'literal', '', 'salim', NULL, 1),
(23, 7, 154, NULL, 'uri', NULL, '', 'C:\\Users\\home\\Desktop\\NTROMBINO\\marzz.jpg', 1),
(24, 7, 183, NULL, 'literal', '', '27', NULL, 1),
(25, 7, 318, NULL, 'literal', '', 'algérien ', NULL, 1),
(26, 8, 10, NULL, 'literal', '', '5', NULL, 1),
(27, 8, 145, NULL, 'literal', '', 'helal ', NULL, 1),
(28, 8, 139, NULL, 'literal', '', 'linda', NULL, 1),
(29, 8, 154, NULL, 'uri', NULL, '', 'C:\\Users\\home\\Desktop\\NTROMBINO\\marzz.jpg', 1),
(30, 8, 183, NULL, 'literal', '', '20', NULL, 1),
(31, 8, 318, NULL, 'literal', '', 'Algerien', NULL, 1),
(32, 9, 10, NULL, 'literal', '', '6', NULL, 1),
(33, 9, 145, NULL, 'literal', '', 'sabi', NULL, 1),
(34, 9, 139, NULL, 'literal', '', 'sabrina', NULL, 1),
(35, 9, 154, NULL, 'uri', NULL, '', 'C:\\Users\\home\\Desktop\\NTROMBINO\\marzz.jpg', 1),
(36, 9, 183, NULL, 'literal', '', '24', NULL, 1),
(37, 9, 318, NULL, 'literal', '', 'algerien', NULL, 1),
(38, 10, 4, NULL, 'literal', '', '1eR ligue', NULL, 1),
(39, 10, 10, NULL, 'literal', '', '1', NULL, 1),
(40, 11, 4, NULL, 'literal', '', '2eme ligue', NULL, 1),
(41, 11, 10, NULL, 'literal', '', '2', NULL, 1),
(42, 12, 4, NULL, 'literal', '', '3eme ligue', NULL, 1),
(43, 12, 10, NULL, 'literal', '', '3', NULL, 1),
(44, 13, 4, NULL, 'literal', '', '4eme ligue', NULL, 1),
(45, 13, 10, NULL, 'literal', '', '4', NULL, 1),
(46, 14, 4, NULL, 'literal', '', '5eme division', NULL, 1),
(47, 14, 10, NULL, 'literal', '', '5', NULL, 1),
(48, 15, 4, NULL, 'literal', '', '6eme division', NULL, 1),
(49, 15, 10, NULL, 'literal', '', '6', NULL, 1),
(50, 16, 10, NULL, 'literal', '', '1', NULL, 1),
(51, 16, 131, NULL, 'literal', '', 'JSK', NULL, 1),
(52, 17, 10, NULL, 'literal', '', '2', NULL, 1),
(53, 17, 131, NULL, 'literal', '', 'JSMB', NULL, 1),
(54, 18, 10, NULL, 'literal', '', '3', NULL, 1),
(55, 18, 131, NULL, 'literal', '', 'NAHD', NULL, 1),
(56, 19, 10, NULL, 'literal', '', '4', NULL, 1),
(57, 19, 131, NULL, 'literal', '', 'MOBB', NULL, 1),
(58, 20, 10, NULL, 'literal', '', '5', NULL, 1),
(59, 20, 131, NULL, 'literal', '', 'PSG', NULL, 1),
(60, 21, 10, NULL, 'literal', '', '6', NULL, 1),
(61, 21, 131, NULL, 'literal', '', 'MANC', NULL, 1),
(62, 22, 4, NULL, 'literal', '', 'description 6', NULL, 1),
(63, 22, 10, NULL, 'literal', '', '6', NULL, 1),
(64, 23, 4, NULL, 'literal', '', 'description 5', NULL, 1),
(65, 23, 10, NULL, 'literal', '', '5', NULL, 1),
(66, 24, 4, NULL, 'literal', '', 'description 3', NULL, 1),
(67, 24, 10, NULL, 'literal', '', '4', NULL, 1),
(68, 25, 4, NULL, 'literal', '', 'description 4', NULL, 1),
(69, 25, 10, NULL, 'literal', '', '3', NULL, 1),
(70, 26, 4, NULL, 'literal', '', 'description2', NULL, 1),
(71, 26, 10, NULL, 'literal', '', '2', NULL, 1),
(72, 27, 4, NULL, 'literal', '', 'description1', NULL, 1),
(73, 27, 10, NULL, 'literal', '', '1', NULL, 1),
(78, 30, 10, NULL, 'literal', '', '4', NULL, 1),
(79, 30, 247, NULL, 'literal', '', 'noir', NULL, 1),
(80, 31, 10, NULL, 'literal', '', '3', NULL, 1),
(81, 31, 247, NULL, 'literal', '', 'gris', NULL, 1),
(82, 32, 10, NULL, 'literal', '', '2', NULL, 1),
(83, 32, 247, NULL, 'literal', '', 'roug et vert', NULL, 1),
(84, 33, 10, NULL, 'literal', '', '1', NULL, 1),
(85, 33, 247, NULL, 'literal', '', 'noir et bleu', NULL, 1),
(86, 33, 1, NULL, 'literal', '', 'maillot1', NULL, 1),
(87, 32, 1, NULL, 'literal', '', 'maillot2', NULL, 1),
(88, 31, 1, NULL, 'literal', '', 'maillot3', NULL, 1),
(89, 30, 1, NULL, 'literal', '', 'maillot4', NULL, 1),
(90, 27, 1, NULL, 'literal', '', 'poste1', NULL, 1),
(91, 26, 1, NULL, 'literal', '', 'poste2', NULL, 1),
(92, 25, 1, NULL, 'literal', '', 'poste3', NULL, 1),
(93, 24, 1, NULL, 'literal', '', 'poste4', NULL, 1),
(96, 23, 1, NULL, 'literal', '', 'poste5', NULL, 1),
(97, 22, 1, NULL, 'literal', '', 'poste6', NULL, 1),
(98, 21, 1, NULL, 'literal', '', 'equipe6', NULL, 1),
(99, 20, 1, NULL, 'literal', '', 'equipe5', NULL, 1),
(100, 19, 1, NULL, 'literal', '', 'equipe4', NULL, 1),
(101, 18, 1, NULL, 'literal', '', 'equipe3', NULL, 1),
(102, 17, 1, NULL, 'literal', '', 'equipe2', NULL, 1),
(103, 16, 1, NULL, 'literal', '', 'equipe1', NULL, 1),
(104, 15, 1, NULL, 'literal', '', 'division 6', NULL, 1),
(105, 14, 1, NULL, 'literal', '', 'division5', NULL, 1),
(106, 13, 1, NULL, 'literal', '', 'division4', NULL, 1),
(107, 12, 1, NULL, 'literal', '', 'division3', NULL, 1),
(108, 11, 1, NULL, 'literal', '', 'division2', NULL, 1),
(109, 10, 1, NULL, 'literal', '', 'division1', NULL, 1),
(110, 9, 6, 21, 'resource', NULL, NULL, NULL, 1),
(111, 8, 6, 20, 'resource', NULL, NULL, NULL, 1),
(112, 7, 6, 24, 'resource', NULL, NULL, NULL, 1),
(113, 6, 6, 18, 'resource', NULL, NULL, NULL, 1),
(114, 5, 6, 17, 'resource', NULL, NULL, NULL, 1),
(115, 4, 6, 16, 'resource', NULL, NULL, NULL, 1),
(116, 9, 1, NULL, 'literal', '', 'joueur6', NULL, 1),
(120, 35, 10, NULL, 'literal', '', '5', NULL, 1),
(121, 35, 247, NULL, 'literal', '', 'grisbleu', NULL, 1),
(122, 35, 1, NULL, 'literal', '', 'maillot 5', NULL, 1),
(128, 39, 1, NULL, 'literal', '', 'toutitems\n', NULL, 1),
(129, 40, 1, NULL, 'literal', '', 'tout_les_joueurs', NULL, 1),
(130, 41, 1, NULL, 'literal', '', 'tous_les_equipe', NULL, 1),
(131, 42, 1, NULL, 'literal', '', 'tout_division', NULL, 1),
(132, 43, 1, NULL, 'literal', '', 'tout_maillot', NULL, 1),
(133, 44, 1, NULL, 'literal', '', 'tout_poste', NULL, 1),
(134, 8, 1, NULL, 'literal', '', 'joueur5', NULL, 1),
(135, 7, 1, NULL, 'literal', '', 'joueur4', NULL, 1),
(136, 6, 1, NULL, 'literal', '', 'joueur3', NULL, 1),
(137, 5, 1, NULL, 'literal', '', 'joueur2', NULL, 1),
(138, 4, 1, NULL, 'literal', '', 'joueur1', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `vocabulary`
--

CREATE TABLE `vocabulary` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `namespace_uri` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vocabulary`
--

INSERT INTO `vocabulary` (`id`, `owner_id`, `namespace_uri`, `prefix`, `label`, `comment`) VALUES
(1, NULL, 'http://purl.org/dc/terms/', 'dcterms', 'Dublin Core', 'Basic resource metadata (DCMI Metadata Terms)'),
(2, NULL, 'http://purl.org/dc/dcmitype/', 'dctype', 'Dublin Core Type', 'Basic resource types (DCMI Type Vocabulary)'),
(3, NULL, 'http://purl.org/ontology/bibo/', 'bibo', 'Bibliographic Ontology', 'Bibliographic metadata (BIBO)'),
(4, NULL, 'http://xmlns.com/foaf/0.1/', 'foaf', 'Friend of a Friend', 'Relationships between people and organizations (FOAF)'),
(5, 1, 'http://', 'xmlns.com/foaf/spec/', 'age', 'age'),
(6, 1, 'http://dbpedia.org/ontology/colourName', 'dbpedia.org/ontology/colourName', 'couleur', 'couleur de maillot'),
(7, 1, 'http://www.ontotext.com/', 'www.ontotext.com/proton/protonext.html#Nationality', 'nationalité', 'nationality des joueurs'),
(8, 1, 'https://liguehandball.fr/omeka', 'https://liguehandball.fr/omeka', 'Equipe joueur', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `api_key`
--
ALTER TABLE `api_key`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C912ED9D7E3C61F9` (`owner_id`);

--
-- Index pour la table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2AF5A5C5CC5DB90` (`storage_id`),
  ADD KEY `IDX_2AF5A5C7E3C61F9` (`owner_id`);

--
-- Index pour la table `fulltext_search`
--
ALTER TABLE `fulltext_search`
  ADD PRIMARY KEY (`id`,`resource`),
  ADD KEY `IDX_AA31FE4A7E3C61F9` (`owner_id`);
ALTER TABLE `fulltext_search` ADD FULLTEXT KEY `IDX_AA31FE4A2B36786B3B8BA7C7` (`title`,`text`);

--
-- Index pour la table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `item_item_set`
--
ALTER TABLE `item_item_set`
  ADD PRIMARY KEY (`item_id`,`item_set_id`),
  ADD KEY `IDX_6D0C9625126F525E` (`item_id`),
  ADD KEY `IDX_6D0C9625960278D7` (`item_set_id`);

--
-- Index pour la table `item_set`
--
ALTER TABLE `item_set`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `item_site`
--
ALTER TABLE `item_site`
  ADD PRIMARY KEY (`item_id`,`site_id`),
  ADD KEY `IDX_A1734D1F126F525E` (`item_id`),
  ADD KEY `IDX_A1734D1FF6BD1646` (`site_id`);

--
-- Index pour la table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FBD8E0F87E3C61F9` (`owner_id`);

--
-- Index pour la table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_6A2CA10C5CC5DB90` (`storage_id`),
  ADD KEY `IDX_6A2CA10C126F525E` (`item_id`),
  ADD KEY `item_position` (`item_id`,`position`);

--
-- Index pour la table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_creation`
--
ALTER TABLE `password_creation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C77917B4A76ED395` (`user_id`);

--
-- Index pour la table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8BF21CDEAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  ADD KEY `IDX_8BF21CDE7E3C61F9` (`owner_id`),
  ADD KEY `IDX_8BF21CDEAD0E05F6` (`vocabulary_id`);

--
-- Index pour la table `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BC91F4167E3C61F9` (`owner_id`),
  ADD KEY `IDX_BC91F416448CC1BD` (`resource_class_id`),
  ADD KEY `IDX_BC91F41616131EA` (`resource_template_id`),
  ADD KEY `IDX_BC91F416FDFF2E92` (`thumbnail_id`);

--
-- Index pour la table `resource_class`
--
ALTER TABLE `resource_class`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C6F063ADAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  ADD KEY `IDX_C6F063AD7E3C61F9` (`owner_id`),
  ADD KEY `IDX_C6F063ADAD0E05F6` (`vocabulary_id`);

--
-- Index pour la table `resource_template`
--
ALTER TABLE `resource_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_39ECD52EEA750E8` (`label`),
  ADD KEY `IDX_39ECD52E7E3C61F9` (`owner_id`),
  ADD KEY `IDX_39ECD52E448CC1BD` (`resource_class_id`),
  ADD KEY `IDX_39ECD52E724734A3` (`title_property_id`),
  ADD KEY `IDX_39ECD52EB84E0D1D` (`description_property_id`);

--
-- Index pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4689E2F116131EA549213EC` (`resource_template_id`,`property_id`),
  ADD KEY `IDX_4689E2F116131EA` (`resource_template_id`),
  ADD KEY `IDX_4689E2F1549213EC` (`property_id`);

--
-- Index pour la table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_694309E4989D9B62` (`slug`),
  ADD UNIQUE KEY `UNIQ_694309E4571EDDA` (`homepage_id`),
  ADD KEY `IDX_694309E47E3C61F9` (`owner_id`);

--
-- Index pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_236473FEE9ED820C` (`block_id`),
  ADD KEY `IDX_236473FE126F525E` (`item_id`),
  ADD KEY `IDX_236473FEEA9FDD75` (`media_id`),
  ADD KEY `block_position` (`block_id`,`position`);

--
-- Index pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_D4CE134F6BD1646960278D7` (`site_id`,`item_set_id`),
  ADD KEY `IDX_D4CE134F6BD1646` (`site_id`),
  ADD KEY `IDX_D4CE134960278D7` (`item_set_id`),
  ADD KEY `position` (`position`);

--
-- Index pour la table `site_page`
--
ALTER TABLE `site_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2F900BD9F6BD1646989D9B62` (`site_id`,`slug`),
  ADD KEY `IDX_2F900BD9F6BD1646` (`site_id`);

--
-- Index pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C593E731C4663E4` (`page_id`),
  ADD KEY `page_position` (`page_id`,`position`);

--
-- Index pour la table `site_permission`
--
ALTER TABLE `site_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C0401D6FF6BD1646A76ED395` (`site_id`,`user_id`),
  ADD KEY `IDX_C0401D6FF6BD1646` (`site_id`),
  ADD KEY `IDX_C0401D6FA76ED395` (`user_id`);

--
-- Index pour la table `site_setting`
--
ALTER TABLE `site_setting`
  ADD PRIMARY KEY (`id`,`site_id`),
  ADD KEY `IDX_64D05A53F6BD1646` (`site_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Index pour la table `user_setting`
--
ALTER TABLE `user_setting`
  ADD PRIMARY KEY (`id`,`user_id`),
  ADD KEY `IDX_C779A692A76ED395` (`user_id`);

--
-- Index pour la table `value`
--
ALTER TABLE `value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1D77583489329D25` (`resource_id`),
  ADD KEY `IDX_1D775834549213EC` (`property_id`),
  ADD KEY `IDX_1D7758344BC72506` (`value_resource_id`),
  ADD KEY `value` (`value`(190)),
  ADD KEY `uri` (`uri`(190));

--
-- Index pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9099C97B9B267FDF` (`namespace_uri`),
  ADD UNIQUE KEY `UNIQ_9099C97B93B1868E` (`prefix`),
  ADD KEY `IDX_9099C97B7E3C61F9` (`owner_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `asset`
--
ALTER TABLE `asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=366;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=612;

--
-- AUTO_INCREMENT pour la table `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT pour la table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_page`
--
ALTER TABLE `site_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `site_permission`
--
ALTER TABLE `site_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `value`
--
ALTER TABLE `value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `api_key`
--
ALTER TABLE `api_key`
  ADD CONSTRAINT `FK_C912ED9D7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `asset`
--
ALTER TABLE `asset`
  ADD CONSTRAINT `FK_2AF5A5C7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `fulltext_search`
--
ALTER TABLE `fulltext_search`
  ADD CONSTRAINT `FK_AA31FE4A7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `FK_1F1B251EBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_item_set`
--
ALTER TABLE `item_item_set`
  ADD CONSTRAINT `FK_6D0C9625126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6D0C9625960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_set`
--
ALTER TABLE `item_set`
  ADD CONSTRAINT `FK_1015EEEBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_site`
--
ALTER TABLE `item_site`
  ADD CONSTRAINT `FK_A1734D1F126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A1734D1FF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `FK_FBD8E0F87E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `FK_6A2CA10C126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `FK_6A2CA10CBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `password_creation`
--
ALTER TABLE `password_creation`
  ADD CONSTRAINT `FK_C77917B4A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `FK_8BF21CDE7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_8BF21CDEAD0E05F6` FOREIGN KEY (`vocabulary_id`) REFERENCES `vocabulary` (`id`);

--
-- Contraintes pour la table `resource`
--
ALTER TABLE `resource`
  ADD CONSTRAINT `FK_BC91F41616131EA` FOREIGN KEY (`resource_template_id`) REFERENCES `resource_template` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F416448CC1BD` FOREIGN KEY (`resource_class_id`) REFERENCES `resource_class` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F4167E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F416FDFF2E92` FOREIGN KEY (`thumbnail_id`) REFERENCES `asset` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `resource_class`
--
ALTER TABLE `resource_class`
  ADD CONSTRAINT `FK_C6F063AD7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_C6F063ADAD0E05F6` FOREIGN KEY (`vocabulary_id`) REFERENCES `vocabulary` (`id`);

--
-- Contraintes pour la table `resource_template`
--
ALTER TABLE `resource_template`
  ADD CONSTRAINT `FK_39ECD52E448CC1BD` FOREIGN KEY (`resource_class_id`) REFERENCES `resource_class` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52E724734A3` FOREIGN KEY (`title_property_id`) REFERENCES `property` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52E7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52EB84E0D1D` FOREIGN KEY (`description_property_id`) REFERENCES `property` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  ADD CONSTRAINT `FK_4689E2F116131EA` FOREIGN KEY (`resource_template_id`) REFERENCES `resource_template` (`id`),
  ADD CONSTRAINT `FK_4689E2F1549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site`
--
ALTER TABLE `site`
  ADD CONSTRAINT `FK_694309E4571EDDA` FOREIGN KEY (`homepage_id`) REFERENCES `site_page` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_694309E47E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  ADD CONSTRAINT `FK_236473FE126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_236473FEE9ED820C` FOREIGN KEY (`block_id`) REFERENCES `site_page_block` (`id`),
  ADD CONSTRAINT `FK_236473FEEA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  ADD CONSTRAINT `FK_D4CE134960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D4CE134F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site_page`
--
ALTER TABLE `site_page`
  ADD CONSTRAINT `FK_2F900BD9F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`);

--
-- Contraintes pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  ADD CONSTRAINT `FK_C593E731C4663E4` FOREIGN KEY (`page_id`) REFERENCES `site_page` (`id`);

--
-- Contraintes pour la table `site_permission`
--
ALTER TABLE `site_permission`
  ADD CONSTRAINT `FK_C0401D6FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C0401D6FF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site_setting`
--
ALTER TABLE `site_setting`
  ADD CONSTRAINT `FK_64D05A53F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_setting`
--
ALTER TABLE `user_setting`
  ADD CONSTRAINT `FK_C779A692A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `value`
--
ALTER TABLE `value`
  ADD CONSTRAINT `FK_1D7758344BC72506` FOREIGN KEY (`value_resource_id`) REFERENCES `resource` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1D775834549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1D77583489329D25` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`);

--
-- Contraintes pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD CONSTRAINT `FK_9099C97B7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
