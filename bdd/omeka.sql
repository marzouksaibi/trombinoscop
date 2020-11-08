-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 08 nov. 2020 à 19:42
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
(4, 'items', 1, 1, NULL, '1\nsaibi\nmarzouk\nC:\\Users\\home\\Desktop\\NTROMBINO\\marzz.jpg \n25\nalgérien'),
(5, 'items', 1, 1, NULL, '2\nghaoui\nyacine\nC:\\Users\\home\\Desktop\\NTROMBINO\\marzz.jpg\n25\nmarocain'),
(6, 'items', 1, 1, NULL, '3\nouled oulhadj\nkoucila\nC:\\Users\\home\\Desktop\\NTROMBINO\\marzz.jpg \n24\nalgérien '),
(7, 'items', 1, 1, NULL, '4\noulkadi\nsalim\nC:\\Users\\home\\Desktop\\NTROMBINO\\marzz.jpg \n27\nalgérien '),
(8, 'items', 1, 1, NULL, '5\nhelal \nlinda\nC:\\Users\\home\\Desktop\\NTROMBINO\\marzz.jpg \n20\nAlgerien'),
(9, 'items', 1, 1, NULL, '6\nsabi\nsabrina\nC:\\Users\\home\\Desktop\\NTROMBINO\\marzz.jpg \n24\nalgerien'),
(10, 'items', 1, 1, NULL, '1eR ligue\n1'),
(11, 'items', 1, 1, NULL, '2eme ligue\n2'),
(12, 'items', 1, 1, NULL, '3eme ligue\n3'),
(13, 'items', 1, 1, NULL, '4eme ligue\n4'),
(14, 'items', 1, 1, NULL, '5eme division\n5'),
(15, 'items', 1, 1, NULL, '6eme division\n6'),
(16, 'items', 1, 1, NULL, '1\nJSK'),
(17, 'items', 1, 1, NULL, '2\nJSMB'),
(18, 'items', 1, 1, NULL, '3\nNAHD'),
(19, 'items', 1, 1, NULL, '4\nMOBB'),
(20, 'items', 1, 1, NULL, '5\nPSG'),
(21, 'items', 1, 1, NULL, '6\nMANC'),
(22, 'items', 1, 1, NULL, 'description 1\n1'),
(23, 'items', 1, 1, NULL, 'description 2\n2'),
(24, 'items', 1, 1, NULL, 'description 3\n3'),
(25, 'items', 1, 1, NULL, 'description 4\n4'),
(26, 'items', 1, 1, NULL, 'description5\n5'),
(27, 'items', 1, 1, NULL, 'description6\n6'),
(28, 'items', 1, 1, NULL, '1\nbleu'),
(29, 'items', 1, 1, NULL, '2\nrouge'),
(30, 'items', 1, 1, NULL, '3\nnoir'),
(31, 'items', 1, 1, NULL, '4\ngris'),
(32, 'items', 1, 1, NULL, '5\nroug et vert'),
(33, 'items', 1, 1, NULL, '6\nnoir et bleu');

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
(28),
(29),
(30),
(31),
(32),
(33);

-- --------------------------------------------------------

--
-- Structure de la table `item_item_set`
--

CREATE TABLE `item_item_set` (
  `item_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `item_set`
--

CREATE TABLE `item_set` (
  `id` int(11) NOT NULL,
  `is_open` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(362, 1, 7, 'transmission', 'transmission', NULL);

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
(4, 1, NULL, 6, NULL, NULL, 1, '2020-11-08 16:16:03', '2020-11-08 16:17:31', 'Omeka\\Entity\\Item'),
(5, 1, NULL, 6, NULL, NULL, 1, '2020-11-08 16:19:02', '2020-11-08 16:19:02', 'Omeka\\Entity\\Item'),
(6, 1, NULL, 6, NULL, NULL, 1, '2020-11-08 16:20:29', '2020-11-08 16:20:29', 'Omeka\\Entity\\Item'),
(7, 1, NULL, 6, NULL, NULL, 1, '2020-11-08 16:21:31', '2020-11-08 16:21:31', 'Omeka\\Entity\\Item'),
(8, 1, NULL, 6, NULL, NULL, 1, '2020-11-08 16:22:34', '2020-11-08 16:22:34', 'Omeka\\Entity\\Item'),
(9, 1, NULL, 6, NULL, NULL, 1, '2020-11-08 16:24:39', '2020-11-08 16:24:39', 'Omeka\\Entity\\Item'),
(10, 1, NULL, 8, NULL, NULL, 1, '2020-11-08 16:25:36', '2020-11-08 16:26:54', 'Omeka\\Entity\\Item'),
(11, 1, NULL, 8, NULL, NULL, 1, '2020-11-08 16:27:23', '2020-11-08 16:27:23', 'Omeka\\Entity\\Item'),
(12, 1, NULL, 8, NULL, NULL, 1, '2020-11-08 16:27:54', '2020-11-08 16:27:54', 'Omeka\\Entity\\Item'),
(13, 1, NULL, 8, NULL, NULL, 1, '2020-11-08 16:28:36', '2020-11-08 16:28:36', 'Omeka\\Entity\\Item'),
(14, 1, NULL, 8, NULL, NULL, 1, '2020-11-08 16:29:08', '2020-11-08 16:29:08', 'Omeka\\Entity\\Item'),
(15, 1, NULL, 8, NULL, NULL, 1, '2020-11-08 16:29:35', '2020-11-08 16:29:35', 'Omeka\\Entity\\Item'),
(16, 1, NULL, 7, NULL, NULL, 1, '2020-11-08 16:33:37', '2020-11-08 16:33:37', 'Omeka\\Entity\\Item'),
(17, 1, NULL, 7, NULL, NULL, 1, '2020-11-08 16:33:58', '2020-11-08 16:33:58', 'Omeka\\Entity\\Item'),
(18, 1, NULL, 7, NULL, NULL, 1, '2020-11-08 16:34:41', '2020-11-08 16:34:41', 'Omeka\\Entity\\Item'),
(19, 1, NULL, 7, NULL, NULL, 1, '2020-11-08 16:35:25', '2020-11-08 16:35:25', 'Omeka\\Entity\\Item'),
(20, 1, NULL, 7, NULL, NULL, 1, '2020-11-08 16:36:30', '2020-11-08 16:36:30', 'Omeka\\Entity\\Item'),
(21, 1, NULL, 7, NULL, NULL, 1, '2020-11-08 16:36:55', '2020-11-08 16:36:55', 'Omeka\\Entity\\Item'),
(22, 1, NULL, 9, NULL, NULL, 1, '2020-11-08 16:44:07', '2020-11-08 16:44:07', 'Omeka\\Entity\\Item'),
(23, 1, NULL, 9, NULL, NULL, 1, '2020-11-08 16:44:33', '2020-11-08 16:44:33', 'Omeka\\Entity\\Item'),
(24, 1, NULL, 9, NULL, NULL, 1, '2020-11-08 16:45:04', '2020-11-08 16:45:04', 'Omeka\\Entity\\Item'),
(25, 1, NULL, 9, NULL, NULL, 1, '2020-11-08 16:45:32', '2020-11-08 16:45:32', 'Omeka\\Entity\\Item'),
(26, 1, NULL, 9, NULL, NULL, 1, '2020-11-08 16:45:54', '2020-11-08 16:45:54', 'Omeka\\Entity\\Item'),
(27, 1, NULL, 9, NULL, NULL, 1, '2020-11-08 16:46:17', '2020-11-08 16:46:17', 'Omeka\\Entity\\Item'),
(28, 1, NULL, 10, NULL, NULL, 1, '2020-11-08 16:47:41', '2020-11-08 16:47:41', 'Omeka\\Entity\\Item'),
(29, 1, NULL, 10, NULL, NULL, 1, '2020-11-08 16:48:03', '2020-11-08 16:48:03', 'Omeka\\Entity\\Item'),
(30, 1, NULL, 10, NULL, NULL, 1, '2020-11-08 16:48:35', '2020-11-08 16:48:35', 'Omeka\\Entity\\Item'),
(31, 1, NULL, 10, NULL, NULL, 1, '2020-11-08 16:49:01', '2020-11-08 16:49:01', 'Omeka\\Entity\\Item'),
(32, 1, 24, 10, NULL, NULL, 1, '2020-11-08 16:49:32', '2020-11-08 16:55:35', 'Omeka\\Entity\\Item'),
(33, 1, 24, 10, NULL, NULL, 1, '2020-11-08 16:50:06', '2020-11-08 16:55:15', 'Omeka\\Entity\\Item');

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
(606, 1, 7, 'Zone', 'Zone', NULL);

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
(6, 1, NULL, NULL, NULL, 'joueur'),
(7, 1, NULL, NULL, NULL, 'equipe'),
(8, 1, NULL, NULL, NULL, 'division'),
(9, 1, NULL, NULL, NULL, 'poste'),
(10, 1, NULL, NULL, NULL, 'maillot');

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
(50, 9, 10, NULL, NULL, 2, NULL, 0, 0);

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
('htle0m0j4v6btmiqpl19v2nu8n', 0x5f5f4c616d696e61737c613a31303a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630343835343533352e3330303137343b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22666f6b6170617461746e346a68626e647438616f36626c396c67223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343331373335363b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630343835383132383b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343835383132383b7d733a34353a224c616d696e61735f56616c696461746f725f437372665f73616c745f7369746570616765666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343539303637393b7d733a33373a224c616d696e61735f56616c696461746f725f437372665f73616c745f666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343539303834363b7d733a35303a224c616d696e61735f56616c696461746f725f437372665f73616c745f736974657265736f7572636573666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343539303831313b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343835373337363b7d733a34373a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343636393031353b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226538623936303462306533623661356539616332383737373566613165626663223b733a33323a223038333730313037633061313661353037353764656637373462643736313164223b7d733a343a2268617368223b733a36353a2230383337303130376330613136613530373537646566373734626437363131642d6538623936303462306533623661356539616332383737373566613165626663223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343233323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a34393a7b733a33323a223033326365353734626333646638393439386332313833376337343131636333223b733a33323a223331643637376430336462333332366266333237383538383034313261653562223b733a33323a223134666433643639313864633466343762363537613664383663373430636538223b733a33323a223263653831373037333764326639653864336666353561303334376139336563223b733a33323a223165643330623463306334643565373630363837326630636333306334616363223b733a33323a223162376661363765306265356439366138363931376233306136646263633562223b733a33323a223739326233396162643866653161393462656430303037363461656463363736223b733a33323a223465333130363733626466393762373464356665333661643337623835373835223b733a33323a226239633933663437626262343432643831633137363662613036396165613830223b733a33323a223836646166356664663238656466316330386234313465373666346466363261223b733a33323a223763646362323739653631336334346635653864353230656261313930343837223b733a33323a226531616463306332666165393732386330303334383761653235333135336565223b733a33323a226130643132366262373863663934666663346461333037373961643630373431223b733a33323a223531633135376239396464313964616132333437363031346534656461326432223b733a33323a223734306266653762623766643437383335346165636337383666616137623533223b733a33323a223731373532626130636566303033643161666238663938643763653635653834223b733a33323a223862313236613863373737313132633336366465353030363537383161386635223b733a33323a226234316138333939616238363237646164653332633535336137613165346337223b733a33323a226531353565386333393332316132653962353838316533643630666436646435223b733a33323a223034373330316335626564373035646531396361393837333436646236323134223b733a33323a223265376536383130376530656132636666623666383861626236323630663139223b733a33323a226466326431363666323236343337323462326266393430393964383234343734223b733a33323a223532613539343935633439633363633737346666663639386231363239323765223b733a33323a226436343564666264626534663830616238316363663262393438376132353263223b733a33323a226462376466653931366664303636653031356237636635353462363830373932223b733a33323a223465633933306532356565363862643664663863613634616561353866386433223b733a33323a223266613332396462303935313235626330303737383132393837666362623265223b733a33323a226362346332333266373961346531386566663037666465303533653531303135223b733a33323a223664356335333063376639643363346561656634633033613963336135303730223b733a33323a223232663437363033636635656337393635326264656231366435353431303330223b733a33323a226466356438326331363165333839386564626434633939383537653533663631223b733a33323a226166663937376535616439663936623537393834376462643437383233353833223b733a33323a223233383765396137343039636239356630323035393535313965343065313933223b733a33323a226238393331663735396634393237306665333763333337353261613437323732223b733a33323a226139346531353731333334363331636339383466643761666337336135373533223b733a33323a223962376233326639623563376138386463616335383465303232366639366566223b733a33323a223132623663326335383565326538346237366634303966633938666261336534223b733a33323a223064323538653139316431376234373030666139643535313839626539653330223b733a33323a223339313531363561353465613839646563316332666565303162363037326333223b733a33323a223039383831626665346662303034353162646335396532376134626166616664223b733a33323a223864333666363534383936306430643864656663656565363935616665376361223b733a33323a223761356362353536623238323335326337333962346334373762393338333366223b733a33323a223762653935643733326332336432393738366463313037333965623765363539223b733a33323a223262313665326432656563666333663064383932363034383833326464343231223b733a33323a223361366662366261653964393437303936343265333536353138616135363732223b733a33323a226265346635396465376666323463393962333963323362656438623739643866223b733a33323a226437306566663932633963643134353063616333663736626563303736373464223b733a33323a223039646530373362633566623333376333363061393733313065313139343466223b733a33323a226662373839323238326130393761623162653636366363353030646236376331223b733a33323a226464306261303062303533653531323165316635643661666436366261353831223b733a33323a223930393364633330373732353030303966633566396163613762393163383164223b733a33323a226463383436646334303939646362653333636436323531646137353836366565223b733a33323a223734613664353166636662663335636630623337643961313930376262386530223b733a33323a223634326536346665383763646634646334383930306539363139303730666132223b733a33323a223932656466663439373537643234313763356663303937616237363437663632223b733a33323a223661356665353232343135363339346366373835396465343532373366636232223b733a33323a226161613465376335336166386134353464303263363139363832306330386230223b733a33323a223032303964353439333531636262363730633966643264303166313437353364223b733a33323a223763613039636365366663356261616564353536663462636464653734343534223b733a33323a223065313365373037363034356230646631653132623734633430396235343666223b733a33323a223530616461376532383938663034393632393464383064613932386635633835223b733a33323a226334623463663239353164363334663737663832313866666364343939393738223b733a33323a226132636162343764356638376165353233353936353863333361633233323762223b733a33323a223565363861336331363432356532643034663463656362623264623665363231223b733a33323a223261386230383738633433646165333033333437316362336230646235653666223b733a33323a226130626264303730366133326132636534643330376133333838663232313063223b733a33323a226533373132656231623732336535323239383162376166616565363435623536223b733a33323a223461326138363862303133366132616561323562323238363061333635666362223b733a33323a223633393131633262386261333832633539616662626161373137326164633138223b733a33323a223737666430646462336534613233303264336432623065383961333537393730223b733a33323a226331316339663531353434366133626564643634373066323431333632306639223b733a33323a223364656531653964343534333962613534636364333566663935376466623465223b733a33323a226434363934636535363630326532616333363063656635336662373566333838223b733a33323a223030663165663439616536316465306361313763663133623334313066393665223b733a33323a223631613066393437333338306539386637633462323932393565393063376262223b733a33323a226631626330326134353938326564653438396563383738376532656434656161223b733a33323a226432646262333836636239336237333531326630643131633438366165316364223b733a33323a223666636438303864373765646539336436663166633633373762396663373136223b733a33323a223562643531333435346164623934613662623535333034663562356637303239223b733a33323a226133396335653531646638663534656430346466623535623235333663626463223b733a33323a223138316663323334626138313962663037376338383565373266616336333564223b733a33323a226436373137613034343137653938623536373733663061323365616531643431223b733a33323a223332303761393461396634356635363264643738653635333035363533366264223b733a33323a223462303662343032323866346135313964613863376563356235303839633336223b733a33323a223031613034303430366334316538623134636235313430343361323739396561223b733a33323a226330656235353465656232393839376330636361363837303035623363633231223b733a33323a226633323337313466376663303134623063616534666331346132316139316166223b733a33323a223833313032653339643864613838363636623736343634343136653762666364223b733a33323a223436643531633562306264313835333661656134373830336366633665373236223b733a33323a223539353834306333386630616662623361303533366666373335353330653765223b733a33323a223438383737376238653532326361663066666439393136323731333734636533223b733a33323a223365626634623562306333316131613463306436343831366237653061613265223b733a33323a223062366333633237396439316432353939636331643732306564616665316163223b733a33323a223362646432636532333566353432373661383239613030643739333538616434223b733a33323a226237333636393935663939383063616133346431646164336235363663666234223b733a33323a223961363332343761363838373337613633613665656166636339326263313064223b733a33323a226130653262306335336462306235376661393634326166363532633539613965223b733a33323a223132643861313136366135643865363936623864613366313833393836663234223b7d733a343a2268617368223b733a36353a2231326438613131363661356438653639366238646133663138333938366632342d6130653262306335336462306235376661393634326166363532633539613965223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a383739333a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3130363a7b733a33323a226263316566643635386230353834613561313662313366353861633533656364223b733a33323a226163633230646430636463666330386262386436303563383134383536613166223b733a33323a226364623139306539373732386430313265383637323934343936336462303838223b733a33323a223064326339613238383538666633646634613737373462336137316237373130223b733a33323a226235353234613466613265613264393236326461653236353535626365373935223b733a33323a223566336333303661323336373264383661363863336432363738613432633533223b733a33323a226332653332643035336531373137306663303263613835313163643961636335223b733a33323a226633336631633537396263623566323738656264666236383339353730386336223b733a33323a223433366261636462353766393531643065643038663034353634613163383534223b733a33323a223034323432643361346466643535623862323436336637646237643862386361223b733a33323a223361343332353261313730336139396331613965353038306564316362393166223b733a33323a223030653562313162643931316362356566313737643131656565636237333035223b733a33323a226534663237646462333830663266333439366137343234643463396339353662223b733a33323a223932653566326264356165303838383537333232633838636466653630363537223b733a33323a223336376661313031356661373164383635346132373336386166656438313138223b733a33323a223238313932326464393762623638663335626334656533326535353261623064223b733a33323a223033386336633538656238356563613337666630323634633064636230343066223b733a33323a226266613064333235343232666338326463363565613265306538343466396133223b733a33323a226331366534366338626165643463346536653865613737366431383939393436223b733a33323a223734666138313737373862313066646534323865353264333331636537323539223b733a33323a223334306330303437306466313937356636306233383334313666656131643663223b733a33323a223734613238333930313636383365633735613434656661396264646561303264223b733a33323a223333646563303065323834366462396162336464343830656233356266313064223b733a33323a226535626637366261653765353236343766633136306435366131343065636465223b733a33323a223132373032666132303266313332616531393939313636313935623466343838223b733a33323a223938653234653465666534383238343936303461643230653764313232336337223b733a33323a223462376537326132356333346438356331633632353166653132386666363162223b733a33323a223133366634316665393165393533343439323436326139313634393265396163223b733a33323a223566383363313335666530353531313839366236663838633664303963373239223b733a33323a226661613761373034323336656431306364366566336332396563343861303737223b733a33323a223062343662346663623561643732323637363036366665633061393161623736223b733a33323a226131653535313862666135373137356537663332313365333439303232336164223b733a33323a226535303064663864373363376461383232343237663562366439643662366638223b733a33323a223239663965663561623330373537636232373162323538353132373938343739223b733a33323a223235313537663864613166633130613962396332336361326330313134663337223b733a33323a223439393766343735386339326532616163396363353539346437356636623363223b733a33323a223665646161306464613532323466383261643962343763363337643037303939223b733a33323a223535303763376132373639376538356562613938353738313261353564653538223b733a33323a226564313335316134373465653863373639613433333139633566643432663236223b733a33323a226562653366653762353039313733326532323334633738393034656232303737223b733a33323a223965366431313135373764633366333936353036646363353966386164323066223b733a33323a226537613033343436616363653438323230643536653938623437626633383762223b733a33323a223464633062366336653833313531303337373435383662356431646562343934223b733a33323a223566303938653038303131313661656632353138653932373765666631643661223b733a33323a223133323062663339623839373237343961396166343432663531313038383962223b733a33323a226137383937386661323832343966636434663537646363376462343261316631223b733a33323a223462333936663238303737303936336130383436383339303730643730656436223b733a33323a223433353764613837663462306537313932313061643836393935363130306239223b733a33323a223963636264316565353134316665366638323166623736653063373431366561223b733a33323a223563346532653761323538393433366230353366323338313564353138666638223b733a33323a226337386666346330376462613132363736643830393039666165326664333963223b733a33323a223166343634633336373963623831633065613132346663663939356666346438223b733a33323a223562303663616566326438613531353534663333343563623664326630303030223b733a33323a226634323136346436393061636439393062633564326361353339386135396132223b733a33323a223637393762373663366337373037356364613863353736396533393134383238223b733a33323a226262613163303338666531326534353462653131653665313832666434663962223b733a33323a223136303837366235623462343632636138646262323131653335323736666633223b733a33323a223461366666613136653265336234663762313532343731383737386238633231223b733a33323a226561323138383032633535653730666334646138636335353038306436363938223b733a33323a226436623063656438333933396335336533363131306637653731323264343436223b733a33323a223234643531663062656131303562656634396632626163646639393662633761223b733a33323a223264333061346661313638646532633963323365346237393734376533663030223b733a33323a223261633033376631373266323739646331633163623366633262633139363833223b733a33323a223261346630326662663761653438353365383432633664306331623337636366223b733a33323a223530306231363733393764356338393238386162653039333535323561633136223b733a33323a226239646631366132313635333166653034386665623235323233343038663633223b733a33323a223634613436383732333936323364333435366235333364313739306330346261223b733a33323a223736653263636435326231353734323139393037396531373538666235393235223b733a33323a223362616363393639356338623761313832383137306634373062626431393766223b733a33323a223663323630353363643533333639316232633730613033333931656530373434223b733a33323a226438306661373563336566363363626165653163666136363836303335306633223b733a33323a223637383565333030326632313836383562323232643031626432323635326537223b733a33323a226261663334383237373264333361633761363361363061303263616665333236223b733a33323a223938356561326335323135663037333734393231306136336637393235323436223b733a33323a226332303265353735353832336538623163373764636331613466306161396562223b733a33323a226264303933346434633935376363346430666265383735323963326135373436223b733a33323a223638303862613466363539663137313362653737666537323832336461393032223b733a33323a226434383661663863656331336663623461396562373165633738333261636237223b733a33323a226531356231313032343366336131303834663338393334353536623934613930223b733a33323a226439613264343537353232343963613866623461643036636132633332393663223b733a33323a226339346464633230306531613239663639636135373636646632326334363832223b733a33323a226631623231633833383866393835643961636564323962666561343730666365223b733a33323a223366383033653830306537623865346665623038333036393761333766356464223b733a33323a223132666234303935366232323234663632633734336566616461643437316134223b733a33323a223430343632613930346435663230393636333764613133373465366638303163223b733a33323a226164653333393964333439373164373631633436353862303839616563633832223b733a33323a223235323634616361346136356262656365336166366138303336656135306536223b733a33323a223338333961666230653165643438336563373238333266306237383035626166223b733a33323a226636626361616534656133333262633039386262623962646235653034666266223b733a33323a223836303233633431626261613739393464333866356664386638343633386236223b733a33323a223334633064316135346535633336616133613862356630663233366163616334223b733a33323a226662613738633332666536303236386363343338616337383763633832626435223b733a33323a223633636662353035663433386263306334653566386232343638663739356132223b733a33323a226664363364376432356265373762323336336238666361666432633839306666223b733a33323a223130373562656433356433336665616466663965656563393461396262356530223b733a33323a223532623063363466396664353965626538656631623866343233336261366334223b733a33323a226664313764653830623539346135623235336531383630316163383337323135223b733a33323a226363636338373463343833326162353835313638623137383164333338303561223b733a33323a223865333164653138323232646337356130636365393966353538343831326438223b733a33323a223936336530363138353338393935626464663631616634666139356235653866223b733a33323a223461663834346633316563643134363166633236326536313839613437666462223b733a33323a226633346231316137323365666435303839303132363964636363653638663137223b733a33323a223732393164373432663264343235646130306465653530323565363738353762223b733a33323a226232323533663232303539356134363464396438393462656466306465386437223b733a33323a223435363465623830656163623636623361613539306433353561643337646563223b733a33323a226536646436663166646139393235376239373134343930666136666432346431223b733a33323a226163613836393761623337343061303732633633366330663364633335356665223b733a33323a223862363563303436646335353736383066326334653636613164396231666436223b733a33323a223861373264653162343766383033316531336631326665356536393035326266223b733a33323a226333303634613732666461613662316434653237396139643065353365643432223b733a33323a223935393661333862306536326538346339313637383537383734313663636266223b733a33323a223938356138343930643234346533613862386663313133646130646439376136223b733a33323a223339393563613736333630303237353764646339303263646430373635633437223b733a33323a226630343130336333663164333831613063663330653463383366663462626330223b733a33323a226634636664303161353932333739306430613139633435346235363238323335223b733a33323a223566343266326332313035646637383364303336343261633564333265646630223b733a33323a223130363133666232363865626332646130326533306563353632366366333930223b733a33323a226364333437346238396433353435323135303834346236626439623733653361223b733a33323a223839333164633532323964303336613035383862316238636263616230373434223b733a33323a223930386132633035343032386538623132353837653764333839326338336262223b733a33323a223763373832393665653836656661666461663836633334373761343638623462223b733a33323a226164646662336161623337653631646132656164373337323532646265306161223b733a33323a223939633333306235346239386163646334396662393434633962303637333863223b733a33323a223633663139326337346362616138323466666261666365313338326336376436223b733a33323a226435333763396330613639333565656365383035633237316564643461653537223b733a33323a226339336431633034653830373862316666316466643831313765646635633235223b733a33323a226230313231303161346334313166613131363036373434333830356437663638223b733a33323a223632306134663136393035306536396166383838663730303032633632376135223b733a33323a226663373339613733323436326635616162633337616132343864373964353539223b733a33323a223937653961646164333766626563663038343832643364313962383466663733223b733a33323a223961623562336237356166313332643262373964356362323830633962316566223b733a33323a226533663266343764346434643038646462323364643561333534356266336334223b733a33323a226235626637363362633165343238623337313733363637323433316233313331223b733a33323a226362353166306534636638363063373634393439366437373361656434643431223b733a33323a223762663631386339393164343461616134326162653130373263336138303131223b733a33323a223038336539343336323262643765313630323834333264336263633832383339223b733a33323a223434313462373864306466343265376639343431646665613163323461316539223b733a33323a223636646235613463653334303034363462366236366464303337333566613737223b733a33323a226337313661353538633366386232636266623230643432336131636466343964223b733a33323a223766386366653436663061643463316331306337396461383962633838356336223b733a33323a223835623432613737313866323366366333623362323132326535316264306566223b733a33323a226633653066343933386635323537643061353532343332376532396336613038223b733a33323a223734303062643033343261663533613031613938323163643533653639343937223b733a33323a226665373735623435343932343133373033363334323735333431353139313938223b733a33323a223962646235306531613461383164363961376430633938643963633163366431223b733a33323a226666656561353437333261616661666135373237653536663030393931343133223b733a33323a223732633762353037316562343035353535613463396666373037613366326334223b733a33323a226333626665653334326139643765383064383734386166643736343461313762223b733a33323a223066353964343631373235333437666135646666623530393462303637363561223b733a33323a226332316666353762323936363266656331343637356161383363343135653038223b733a33323a223664613531306238623532353533623361376363326338653261373638376232223b733a33323a226466396163623731326463393835366462323664663637353030306330376438223b733a33323a226434306332343634306532616630613337316132663930393230316537356338223b733a33323a223664316661323733363965383666306133336632386164356163663135653338223b733a33323a223863326235373334336463313863303537376236313261656237613065383234223b733a33323a223930383961396230316161313230633061333432316631633339356361623732223b733a33323a226261633062316538386463633032633538346261336365323834343733613236223b733a33323a223835663865356664303737653531663731633535653639666665656538363261223b733a33323a223963343339303438323638623435356363663366343434313231643665386462223b733a33323a226230323364383330353765626434646434613663383161613934613038323032223b733a33323a226439386330313333363737616133303737353936626561333632336533346135223b733a33323a226563356366633830373435353062333638616135376431393930353630383837223b733a33323a226539376333356639333533306333653133366338376261633736333836363864223b733a33323a223363333733346532316233333530636338393331663638353035643333613630223b733a33323a223038393537333330373665656662356330373662356132353833626430313235223b733a33323a226432613531613130393663623835653764633761343064366534376533663166223b733a33323a226362316234633234653739616436336364376466623337323865356363363832223b733a33323a226562623631643264396663343062386539353564643931396534376566613333223b733a33323a226163626664633733363033363461313064616439613161323165346565336133223b733a33323a223264393661383530323962383139326138393733333136653330383566636166223b733a33323a226336653634353935393366316138306632306338626461666534326430626539223b733a33323a223830636439373132623839346465643762396333396534643439643663333430223b733a33323a226430353838336435316330323062363065313035646665353431663165303336223b733a33323a223762666634353862363863393234343561623166343230623338613537653263223b733a33323a223639336536653734363431313832613139646631353765303662386635396239223b733a33323a226664343037336135366231643463343437653961326436383536316335386463223b733a33323a226564373932656239623332636663333137333733646133633238353637376365223b733a33323a226339303864643065323035313436666534373432383935376562366435633131223b733a33323a226133393137356234343238633736633036643430316433383034386361633532223b733a33323a223661326261653937343533386630363630316338353363353034373566383563223b733a33323a223930636431333364373961373463323939396636663265636234616462633531223b733a33323a223433613234393530636164366339383265613362663730313135623161333637223b733a33323a223063623262363036373563316165666337613032616535363739616364613063223b733a33323a223738663031306131653663646237626661383636393635666131383362376635223b733a33323a223966316462363836346134323432343638313863363931353837366466306632223b733a33323a226662626665306136313932623163626436613866363238346335613137306566223b733a33323a223339396436343939353339313733623662656437386431646232383636376663223b733a33323a226230386561356231373232626138306630346539353136653566393163363033223b733a33323a226265306639343230623033336566343765663264663861323363333066616166223b733a33323a223931393766646162323566356334643134303333313831356235326262316439223b733a33323a226634326437343039393138306538666538373635356636326637353038616537223b733a33323a223832343863386161663361303964616134306663373964626131393864613066223b733a33323a223365613131333761663737613139376231613038633866303934383264373233223b733a33323a226231633331376237616630663364396130636534373266343064396331643533223b733a33323a226261316662656638393561323639313831313962316263653963383266303861223b733a33323a223937333665313833643635366433336439353733393331376136393532393538223b733a33323a223334323361323432313762393965343565663933346532373664303865363839223b733a33323a226463383636346434623837626337323032353936373931303730353930306231223b733a33323a223633343931633537333537653132656637616231633739663639396234666231223b733a33323a226633613866623731353565373761663434386631363233303536326131653039223b733a33323a226333373137356632666534643663383161613366366335313035353831313861223b733a33323a223666356536336464613261306538343162656333356565643630306532663965223b733a33323a223735653063313934373633623265663333643761656462656264633436656638223b733a33323a223361346634383663366338326133373830376662303763376162393730646536223b733a33323a226635656261366235643936373932333030343061363630636632633934323861223b733a33323a226636646532376337323862653632343132313365333732303135636136313237223b733a33323a226139383462633565376536613663373765303662643563393066396434663937223b733a33323a223265656161316131343835383138346361393366343832363835396531343235223b733a33323a223262333939326534343430376161363264653638663166613364613131616362223b733a33323a223861316238333837636166313362643632633761666333323466326634346533223b733a33323a223463613637656436636535303164633935326236653232666261333664626134223b733a33323a223063376331396337666161333238653736393534656336663330396334333931223b7d733a343a2268617368223b733a36353a2230633763313963376661613332386537363935346563366633303963343339312d3463613637656436636535303164633935326236653232666261333664626134223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7369746570616765666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223138363265666362613238373930386132653863313662393633363734653562223b733a33323a226539333964393863626461303835313166386266386363373230643863646234223b733a33323a226661623731356663333763306239363637663035376436333137386563376630223b733a33323a226464326235353464323636643265326665316638383462636239636533383062223b7d733a343a2268617368223b733a36353a2264643262353534643236366432653266653166383834626362396365333830622d6661623731356663333763306239363637663035376436333137386563376630223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3731313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a353a7b733a33323a223063646461393534356330303861373361396132666234623738356663643163223b733a33323a223266373939663165366335386431626464393033626633646165366665386331223b733a33323a226664613864306138643964333366363632616433373031346664336632353638223b733a33323a226537383432626361363234663264646434343134613637316239346639666263223b733a33323a226332623130303061393364363065646535373636306632396264663832373238223b733a33323a223165616530393763636630663036333562343865396530343361313662343731223b733a33323a223166353130346661666430313437326130663830393265613165393038663930223b733a33323a223836663930383930373631353931616437333132656536343436646139616134223b733a33323a223138653564646630316232303566313739306536313931306338356632626464223b733a33323a226364653565623837653561326337366637393663363430306137353165623432223b7d733a343a2268617368223b733a36353a2263646535656238376535613263373666373936633634303061373531656234322d3138653564646630316232303566313739306536313931306338356632626464223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f736974657265736f7572636573666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226633636539666563616266623834346639353830626537643336393262313366223b733a33323a223831616663656535326430303161306139353865646534636232376634656666223b733a33323a226130396564643333646430613832646161346664346532633638626338313034223b733a33323a226536393366393236663339643334313130626335623763346330303362366233223b7d733a343a2268617368223b733a36353a2265363933663932366633396433343131306263356237633463303033623662332d6130396564643333646430613832646161346664346532633638626338313034223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3739313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a363a7b733a33323a226462303837323138313832353233633864343137613137326339333139333838223b733a33323a226236323161356435633462383933663961653438643539303037653539313966223b733a33323a223336313331616432303432346265383531396636623232353839363335663561223b733a33323a223937303731306534383664373763316630396532326231333763663466663366223b733a33323a223062336433653931303932333463633334393734393866356436666132306332223b733a33323a223964386437366230643162343430613363616433653034373734366331653138223b733a33323a223631333065326562393966653833633762336264633639333236396334373331223b733a33323a226664323735663936616537363666653764306363383162323062646234346562223b733a33323a226538376365306538386131323165376432306162623463393936383364303631223b733a33323a223236656137303466666166376562336239336439343933363766356336346535223b733a33323a223166626637363563303263343239623063376536663664343635613964353664223b733a33323a223030326164373832333939653733633662396638383362363239313565333833223b7d733a343a2268617368223b733a36353a2230303261643738323339396537336336623966383833623632393135653338332d3166626637363563303263343239623063376536663664343635613964353664223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a313237323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31323a7b733a33323a226331383162366232643962303861646236313031376131343065306238636539223b733a33323a226563323134383136623165353134343765613365373432626633393466363835223b733a33323a223965303561346463643339643836613962633065373130613539623938343636223b733a33323a223338663362643738336131626463666166643963353663393164306163306531223b733a33323a223763333562313436373833333566616562656363333433386439666666326462223b733a33323a226539613434666636356234626534366531366561613361386433393331613430223b733a33323a226466326430346534626536643433313762376634383562356336303064336438223b733a33323a226463623438353536623438653163356335306336356136633366316461333339223b733a33323a223762383361383962383164663839313963333263646263643435306366363163223b733a33323a223439363364343562353031613136303935373364656464393238363439303939223b733a33323a223531353232613565396434616266666335333765626134646666373438376331223b733a33323a223531336361643039383630346634353366646133363630633435653733346531223b733a33323a223266613466623538643362353165383562613564383130313362353436353335223b733a33323a223334323633376635303639313436343432306235353135616236333438663038223b733a33323a223834613465643362303065646665626330323563343864323430636464346430223b733a33323a223537393339393938363332333931343161643630363332303661343532633739223b733a33323a223761396461386133303435633732383233353562663033396133616335376663223b733a33323a223566376365303431343931633539646331663630343336666265356264383366223b733a33323a223965323434363137303839613630366532653938646365306533306639626465223b733a33323a223331336236383338316464633465623831653030303733663461393932353363223b733a33323a226138393137353063313239313765393930316166366461616439366633363661223b733a33323a223739663831363139373833323838333036383533653233666163666234623563223b733a33323a226665616264643532353432626164663661623961646161613763633534383263223b733a33323a223535336235316539353938646661363464386363326236633266313461626430223b7d733a343a2268617368223b733a36353a2235353362353165393539386466613634643863633262366332663134616264302d6665616264643532353432626164663661623961646161613763633534383263223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1604854535);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
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
(62, 22, 4, NULL, 'literal', '', 'description 1', NULL, 1),
(63, 22, 10, NULL, 'literal', '', '1', NULL, 1),
(64, 23, 4, NULL, 'literal', '', 'description 2', NULL, 1),
(65, 23, 10, NULL, 'literal', '', '2', NULL, 1),
(66, 24, 4, NULL, 'literal', '', 'description 3', NULL, 1),
(67, 24, 10, NULL, 'literal', '', '3', NULL, 1),
(68, 25, 4, NULL, 'literal', '', 'description 4', NULL, 1),
(69, 25, 10, NULL, 'literal', '', '4', NULL, 1),
(70, 26, 4, NULL, 'literal', '', 'description5', NULL, 1),
(71, 26, 10, NULL, 'literal', '', '5', NULL, 1),
(72, 27, 4, NULL, 'literal', '', 'description6', NULL, 1),
(73, 27, 10, NULL, 'literal', '', '6', NULL, 1),
(74, 28, 10, NULL, 'literal', '', '1', NULL, 1),
(75, 28, 247, NULL, 'literal', '', 'bleu', NULL, 1),
(76, 29, 10, NULL, 'literal', '', '2', NULL, 1),
(77, 29, 247, NULL, 'literal', '', 'rouge', NULL, 1),
(78, 30, 10, NULL, 'literal', '', '3', NULL, 1),
(79, 30, 247, NULL, 'literal', '', 'noir', NULL, 1),
(80, 31, 10, NULL, 'literal', '', '4', NULL, 1),
(81, 31, 247, NULL, 'literal', '', 'gris', NULL, 1),
(82, 32, 10, NULL, 'literal', '', '5', NULL, 1),
(83, 32, 247, NULL, 'literal', '', 'roug et vert', NULL, 1),
(84, 33, 10, NULL, 'literal', '', '6', NULL, 1),
(85, 33, 247, NULL, 'literal', '', 'noir et bleu', NULL, 1);

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
(7, 1, 'http://www.ontotext.com/', 'www.ontotext.com/proton/protonext.html#Nationality', 'nationalité', 'nationality des joueurs');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=363;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=607;

--
-- AUTO_INCREMENT pour la table `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
