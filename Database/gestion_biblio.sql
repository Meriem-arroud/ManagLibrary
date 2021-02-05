-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 01 fév. 2021 à 21:12
-- Version du serveur :  10.3.16-MariaDB
-- Version de PHP :  7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gestion_biblio`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nomAdmin` varchar(30) NOT NULL,
  `motDePass` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `nomAdmin`, `motDePass`) VALUES
(1, 'Meriem', 'TWVyaWVtMTIz'),
(2, 'Asmae', 'QXNtYWUxMjM='),
(3, 'Chaimae', 'Q2hhaW1hZTEyMw==');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` int(10) NOT NULL,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `CNE` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `numTel` int(10) NOT NULL,
  `motDePass` varchar(40) NOT NULL,
  `etat` enum('ACTIF','BLOQUE','','') NOT NULL DEFAULT 'ACTIF'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id`, `nom`, `prenom`, `CNE`, `email`, `numTel`, `motDePass`, `etat`) VALUES
(60, 'Belmir', 'Asmae', 'R124671213', 'asmaebelmir@gmail.com', 637153576, 'QXNtYWUxMjM=', 'ACTIF'),
(61, 'Benayad', 'Chaimae', 'R921712131', 'benayadchaimae@gmail.com', 632193576, 'Q2hhaW1hZTEyMw==', 'ACTIF'),
(62, 'Arroud', 'Meriem', 'R134676215', 'arroudmeriem@gmail.com', 613224121, 'TWVyaWVtMTIzNA==', 'ACTIF');

-- --------------------------------------------------------

--
-- Structure de la table `exemplaire`
--

CREATE TABLE `exemplaire` (
  `idExemplaire` int(10) NOT NULL,
  `idLivre` int(10) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `auteur` varchar(100) NOT NULL,
  `editeur` varchar(100) NOT NULL,
  `theme` varchar(150) NOT NULL,
  `langue` varchar(50) NOT NULL,
  `ISBN` varchar(50) NOT NULL,
  `nbPages` int(10) NOT NULL,
  `etat` enum('DISPONIBLE','RESERVE','EMPRUNTE','PERDU') NOT NULL DEFAULT 'DISPONIBLE'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `exemplaire`
--

INSERT INTO `exemplaire` (`idExemplaire`, `idLivre`, `titre`, `auteur`, `editeur`, `theme`, `langue`, `ISBN`, `nbPages`, `etat`) VALUES
(1, 1, 'Algorithmes de graphes', 'P. Lacomme Christian -M. Sevaux', 'Eyrolles', 'Algorithmique et Développement Informatique', 'fr', '9782212113853', 411, 'EMPRUNTE'),
(2, 1, 'Algorithmes de graphes', 'P. Lacomme Christian -M. Sevaux', 'Eyrolles', 'Algorithmique et Développement Informatique', 'fr', '9782212113853', 411, 'RESERVE'),
(3, 2, 'Algorithmes et structures de données génériques.Cours et exercices corrigés en langage C', 'Michel Divay', 'DUNOD', 'Algorithmique et Développement Informatique', 'fr', '9782100074501', 144, 'DISPONIBLE'),
(4, 2, 'Algorithmes et structures de données génériques.Cours et exercices corrigés en langage C', 'Michel Divay', 'DUNOD', 'Algorithmique et Développement Informatique', 'fr', '9782100074501', 144, 'DISPONIBLE'),
(5, 2, 'Algorithmes et structures de données génériques.Cours et exercices corrigés en langage C', 'Michel Divay', 'DUNOD', 'Algorithmique et Développement Informatique', 'fr', '9782100074501', 144, 'DISPONIBLE'),
(6, 3, 'Algorithmique (cours avec 957 exercices et 158 problèmes)', 'Cormen.Leiserson Rivest.Stein', 'Dunod', 'Algorithmique et Développement Informatique', 'fr', '9782100545261', 1188, 'DISPONIBLE'),
(7, 3, 'Algorithmique (cours avec 957 exercices et 158 problèmes)', 'Cormen.Leiserson Rivest.Stein', 'Dunod', 'Algorithmique et Développement Informatique', 'fr', '9782100545261', 1188, 'DISPONIBLE'),
(8, 4, 'Algorithmique en C++', 'Jean-Michel Léry', 'Pearson Education', 'Algorithmique et Développement Informatique', 'fr', '9782744073793', 300, 'DISPONIBLE'),
(9, 4, 'Algorithmique en C++', 'Jean-Michel Léry', 'Pearson Education', 'Algorithmique et Développement Informatique', 'fr', '9782744073793', 300, 'DISPONIBLE'),
(10, 5, 'C++ en action', 'd.ryan stephens', 'O\'reilly', 'Algorithmique et Développement Informatique', 'fr', '9782841774074', 150, 'DISPONIBLE'),
(11, 5, 'C++ en action', 'd.ryan stephens', 'O\'reilly', 'Algorithmique et Développement Informatique', 'fr', '9782841774074', 150, 'DISPONIBLE'),
(12, 5, 'C++ en action', 'd.ryan stephens', 'O\'reilly', 'Algorithmique et Développement Informatique', 'fr', '9782841774074', 150, 'DISPONIBLE'),
(13, 6, 'Biologie', 'RAVEN,JOHNSON,MASON,LOSOS,SINGER', 'Boeck', 'Biologie', 'fr', '9782804163051', 140, 'RESERVE'),
(14, 6, 'Biologie', 'RAVEN,JOHNSON,MASON,LOSOS,SINGER', 'Boeck', 'Biologie', 'fr', '9782804163051', 140, 'DISPONIBLE'),
(15, 7, 'Biologie animale', 'André Beaumont', 'Dunod', 'Biologie', 'fr', '9782100486953', 200, 'DISPONIBLE'),
(16, 7, 'Biologie animale', 'André Beaumont', 'Dunod', 'Biologie', 'fr', '9782100486953', 200, 'DISPONIBLE'),
(17, 8, 'Biologie générale', 'p. VAN GANSEN H.ALEXANDRE', 'DUNOD', 'Biologie', 'fr', '9782100490264', 340, 'DISPONIBLE'),
(18, 8, 'Biologie générale', 'p. VAN GANSEN H.ALEXANDRE', 'DUNOD', 'Biologie', 'fr', '9782100490264', 340, 'DISPONIBLE'),
(19, 8, 'Biologie générale', 'p. VAN GANSEN H.ALEXANDRE', 'DUNOD', 'Biologie', 'fr', '9782100490264', 340, 'DISPONIBLE'),
(20, 9, 'Biomarqueurs en écotoxicologie aspects fondamentaux', 'Laurent Lagadic', 'Masson', 'Biologie', 'fr', '9782225830532', 205, 'DISPONIBLE'),
(21, 9, 'Biomarqueurs en écotoxicologie aspects fondamentaux', 'Laurent Lagadic', 'Masson', 'Biologie', 'fr', '9782225830532', 205, 'DISPONIBLE'),
(22, 10, 'informatique de la santé', 'cédric cartau', 'Eyrolles', 'Biologie', 'fr', '9782212139679', 140, 'DISPONIBLE'),
(23, 10, 'informatique de la santé', 'cédric cartau', 'Eyrolles', 'Biologie', 'fr', '9782212139679', 140, 'DISPONIBLE'),
(41, 16, 'calcul des probabilités applications commentésées', 'jean-pierre boullay', 'ellipses', 'Probabilités et Statistiques', 'fr', '9782729838690', 350, 'DISPONIBLE'),
(40, 16, 'calcul des probabilités applications commentésées', 'jean-pierre boullay', 'ellipses', 'Probabilités et Statistiques', 'fr', '9782729838690', 350, 'DISPONIBLE'),
(27, 11, 'E-commerce sans peine avec php et MY SQL', 'Larry Ullman', 'FIRST INTERACTIVE', 'E-Commerce', 'fr', '9782754030601', 400, 'DISPONIBLE'),
(37, 13, 'Energie électrique éolienne', 'brendan fox et coll.', 'Dunod', 'Énergétique', 'fr', '9782100724642', 140, 'DISPONIBLE'),
(29, 12, 'Magento pratique du e-commerce avec magento', 'CHRISTOPHE LEBOT', 'PEARSON', 'E-Commerce', 'fr', '9782744024344', 140, 'DISPONIBLE'),
(36, 13, 'Energie électrique éolienne', 'brendan fox et coll.', 'Dunod', 'Énergétique', 'fr', '9782100724642', 140, 'DISPONIBLE'),
(39, 15, 'L’Énergie éolienne', 'marc rapin et jean marc noel', 'Dunod', 'Énergétique', 'fr', '9782100725175', 260, 'DISPONIBLE'),
(32, 14, 'La combution', 'Philippe ARQUES', 'Ellipes', 'Énergétique', 'fr', '9782729820374', 420, 'DISPONIBLE'),
(33, 14, 'La combution', 'Philippe ARQUES', 'Ellipes', 'Énergétique', 'fr', '9782729820374', 420, 'DISPONIBLE'),
(34, 14, 'La combution', 'Philippe ARQUES', 'Ellipes', 'Énergétique', 'fr', '9782729820374', 420, 'DISPONIBLE'),
(38, 15, 'L’Énergie éolienne', 'marc rapin et jean marc noel', 'Dunod', 'Énergétique', 'fr', '9782100725175', 260, 'DISPONIBLE'),
(42, 17, 'initiation à la statistique avec R', 'frédéric bertrand', 'dunod', 'Probabilités et Statistiques', 'fr', '9782100551262', 140, 'DISPONIBLE'),
(43, 17, 'initiation à la statistique avec R', 'frédéric bertrand', 'dunod', 'Probabilités et Statistiques', 'fr', '9782100551262', 140, 'DISPONIBLE'),
(44, 18, 'Mathématique,intégration et probabilités', 'Guy Auliac', 'Ediscience', 'Probabilités et Statistiques', 'fr', '9782100483341', 140, 'DISPONIBLE'),
(45, 18, 'Mathématique,intégration et probabilités', 'Guy Auliac', 'Ediscience', 'Probabilités et Statistiques', 'fr', '9782100483341', 140, 'DISPONIBLE'),
(46, 18, 'Mathématique,intégration et probabilités', 'Guy Auliac', 'Ediscience', 'Probabilités et Statistiques', 'fr', '9782100483341', 140, 'DISPONIBLE'),
(47, 19, 'Pratiques de la statistique', 'Claudine Schwartz', 'Vuibert', 'Probabilités et Statistiques', 'fr', '9782711771820', 300, 'DISPONIBLE'),
(48, 19, 'Pratiques de la statistique', 'Claudine Schwartz', 'Vuibert', 'Probabilités et Statistiques', 'fr', '9782711771820', 300, 'DISPONIBLE'),
(49, 20, 'Probabilités pour scientifiques et ingénieurs : Introduction au calcul des probabilités', 'Patrick Bogaert', 'De Boeck', 'Probabilités et Statistiques', 'fr', '9782804147945', 300, 'DISPONIBLE'),
(50, 20, 'Probabilités pour scientifiques et ingénieurs : Introduction au calcul des probabilités', 'Patrick Bogaert', 'De Boeck', 'Probabilités et Statistiques', 'fr', '9782804147945', 300, 'DISPONIBLE'),
(51, 21, 'A la Recherche de l\'eau dans l\'univers', 'Thérèze Encrenaz', 'Belin', 'Environnement', 'fr', '9782701137070', 200, 'DISPONIBLE'),
(52, 21, 'A la Recherche de l\'eau dans l\'univers', 'Thérèze Encrenaz', 'Belin', 'Environnement', 'fr', '9782701137070', 200, 'DISPONIBLE'),
(53, 22, 'Antibiogramme', 'Patrice Courvalin', 'ESKA', 'Environnement', 'fr', '9782747209076', 140, 'DISPONIBLE'),
(54, 22, 'Antibiogramme', 'Patrice Courvalin', 'ESKA', 'Environnement', 'fr', '9782747209076', 140, 'DISPONIBLE'),
(55, 23, 'Bases téchniques de l\'irrigation par Aspersion', 'Clement Mathieu', 'Tec et Doc', 'Environnement', 'fr', '9782743009465', 210, 'DISPONIBLE'),
(56, 23, 'Bases téchniques de l\'irrigation par Aspersion', 'Clement Mathieu', 'Tec et Doc', 'Environnement', 'fr', '9782743009465', 210, 'DISPONIBLE'),
(57, 24, 'Chimie de l\'eau des mer', 'Gerard Copin Montegut', 'Institut oceanographique', 'Environnement', 'fr', '9782903581145', 300, 'DISPONIBLE'),
(58, 24, 'Chimie de l\'eau des mer', 'Gerard Copin Montegut', 'Institut oceanographique', 'Environnement', 'fr', '9782903581145', 300, 'DISPONIBLE'),
(59, 24, 'Chimie de l\'eau des mer', 'Gerard Copin Montegut', 'Institut oceanographique', 'Environnement', 'fr', '9782903581145', 300, 'DISPONIBLE'),
(60, 25, 'Code de l\'environnement', 'Christian Huglo', 'Litec', 'Environnement', 'fr', '9782711005567', 250, 'DISPONIBLE'),
(61, 25, 'Code de l\'environnement', 'Christian Huglo', 'Litec', 'Environnement', 'fr', '9782711005567', 250, 'DISPONIBLE'),
(62, 26, 'Poutres et dalles', 'Henry Thonier', 'CSTB', 'RDM et MMC', 'fr', '9782868914903', 450, 'DISPONIBLE'),
(63, 26, 'Poutres et dalles', 'Henry Thonier', 'CSTB', 'RDM et MMC', 'fr', '9782868914903', 450, 'DISPONIBLE'),
(64, 27, 'Calcul des structures en bois', 'Yves Benoit, Bernard Legrand,Vincent Tastet', 'Eyrolles', 'RDM et MMC', 'fr', '9782212124811', 350, 'DISPONIBLE'),
(65, 28, 'Résistance des matériaux.Exercices et solutions', 'Guy Pluvinage ', 'cépadues', 'RDM et MMC', 'fr', '9782854287066', 550, 'DISPONIBLE'),
(66, 28, 'Résistance des matériaux.Exercices et solutions', 'Guy Pluvinage ', 'cépadues', 'RDM et MMC', 'fr', '9782854287066', 550, 'DISPONIBLE'),
(67, 28, 'Résistance des matériaux.Exercices et solutions', 'Guy Pluvinage ', 'cépadues', 'RDM et MMC', 'fr', '9782854287066', 550, 'DISPONIBLE'),
(68, 29, 'Geographie de cycle de l\'eau', 'Roger Lambert', 'Presses Universitaire de mirail', 'Hydrologie et hydraulique', 'fr', '9782858162734', 400, 'DISPONIBLE'),
(69, 30, 'L\'énergie hydraulique', 'Roger Ginocchio,Pierre-Louis Viollet', 'Lavoisier', 'Hydrologie et hydraulique', 'fr', '9782743011918', 310, 'DISPONIBLE'),
(70, 30, 'L\'énergie hydraulique', 'Roger Ginocchio,Pierre-Louis Viollet', 'Lavoisier', 'Hydrologie et hydraulique', 'fr', '9782743011918', 310, 'DISPONIBLE'),
(71, 31, 'Climatologie', 'J,P,Vigneau', 'Ar.Colin', 'Hydrologie et hydraulique', 'fr', '9782200267599', 250, 'DISPONIBLE'),
(72, 31, 'Climatologie', 'J,P,Vigneau', 'Ar.Colin', 'Hydrologie et hydraulique', 'fr', '9782200267599', 250, 'DISPONIBLE'),
(73, 32, 'Dessin technique et lecture de plans', 'Jean pierre gousset', 'Eyrolles', 'Topographie et SIG', 'fr', '9782212136227', 230, 'DISPONIBLE'),
(74, 32, 'Dessin technique et lecture de plans', 'Jean pierre gousset', 'Eyrolles', 'Topographie et SIG', 'fr', '9782212136227', 230, 'DISPONIBLE'),
(75, 32, 'Dessin technique et lecture de plans', 'Jean pierre gousset', 'Eyrolles', 'Topographie et SIG', 'fr', '9782212136227', 230, 'DISPONIBLE'),
(76, 33, 'SIG concepts, outils et données', 'Patricia Bordin', 'lavoisier', 'Topographie et SIG', 'fr', '9782746205543', 330, 'DISPONIBLE'),
(77, 33, 'SIG concepts, outils et données', 'Patricia Bordin', 'lavoisier', 'Topographie et SIG', 'fr', '9782746205543', 330, 'DISPONIBLE'),
(78, 34, 'Topographie opérationnelle mesure-calculs-dessins-implantations', 'Michel Brabant', 'Eyrolles', 'Topographie et SIG', 'fr', '9782212128475', 240, 'DISPONIBLE'),
(79, 35, 'Les codes en informatique', 'Khira Lamèche', 'Hermes', 'Sécurité et Cryptographie', 'fr', '9782866014650', 320, 'DISPONIBLE'),
(80, 36, 'Sécurité informatique', 'L.Bloch ,Christophe Wolfhugel', 'Eyrolles', 'Sécurité et Cryptographie	', 'fr', '9782212132335', 304, 'DISPONIBLE'),
(81, 36, 'Sécurité informatique', 'L.Bloch ,Christophe Wolfhugel', 'Eyrolles', 'Sécurité et Cryptographie	', 'fr', '9782212132335', 304, 'DISPONIBLE'),
(82, 37, 'Manager un projet informatique', 'Olivier Englender', 'Eyrolloes', 'Gestion de projet', 'fr', '9782212555240', 205, 'DISPONIBLE'),
(83, 37, 'Manager un projet informatique', 'Olivier Englender', 'Eyrolloes', 'Gestion de projet', 'fr', '9782212555240', 205, 'DISPONIBLE'),
(84, 37, 'Manager un projet informatique', 'Olivier Englender', 'Eyrolloes', 'Gestion de projet', 'fr', '9782212555240', 205, 'DISPONIBLE'),
(85, 38, 'la conduite de projet', 'Thierry Hougron', 'DUNOD', 'Gestion de projet', 'fr', '9782100532926', 300, 'DISPONIBLE'),
(86, 38, 'la conduite de projet', 'Thierry Hougron', 'DUNOD', 'Gestion de projet', 'fr', '9782100532926', 300, 'DISPONIBLE'),
(87, 39, 'L\'urbanisme durable', 'Catherine Charlot-Valdieu', 'Le Moniteur', 'Urbanisme', 'fr', '9782281195057', 405, 'DISPONIBLE'),
(88, 39, 'L\'urbanisme durable', 'Catherine Charlot-Valdieu', 'Le Moniteur', 'Urbanisme', 'fr', '9782281195057', 405, 'DISPONIBLE'),
(89, 40, 'Mener une opération d\'aménagement', 'Aldo Sevino', 'Le Moniteur', 'Urbanisme', 'fr', '9782281129533', 274, 'DISPONIBLE');

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE `livre` (
  `idLivre` int(10) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `auteur` varchar(100) NOT NULL,
  `editeur` varchar(100) NOT NULL,
  `theme` varchar(150) NOT NULL,
  `langue` varchar(50) NOT NULL,
  `ISBN` varchar(50) NOT NULL,
  `nbPages` int(10) NOT NULL,
  `qte` int(10) NOT NULL,
  `etat` enum('DISPONIBLE','RESERVE','EMPRUNTE','PERDU') NOT NULL DEFAULT 'DISPONIBLE'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`idLivre`, `titre`, `auteur`, `editeur`, `theme`, `langue`, `ISBN`, `nbPages`, `qte`, `etat`) VALUES
(1, 'Algorithmes de graphes', 'P. Lacomme Christian -M. Sevaux', 'Eyrolles', 'Algorithmique et Développement Informatique', 'fr', '9782212113853', 411, 1, 'DISPONIBLE'),
(2, 'Algorithmes et structures de données génériques.Cours et exercices corrigés en langage C', 'Michel Divay', 'DUNOD', 'Algorithmique et Développement Informatique', 'fr', '9782100074501', 144, 3, 'DISPONIBLE'),
(3, 'Algorithmique (cours avec 957 exercices et 158 problèmes)', 'Cormen.Leiserson Rivest.Stein', 'Dunod', 'Algorithmique et Développement Informatique', 'fr', '9782100545261', 1188, 2, 'DISPONIBLE'),
(4, 'Algorithmique en C++', 'Jean-Michel Léry', 'Pearson Education', 'Algorithmique et Développement Informatique', 'fr', '9782744073793', 300, 2, 'DISPONIBLE'),
(5, 'C++ en action', 'd.ryan stephens', 'O\'reilly', 'Algorithmique et Développement Informatique', 'fr', '9782841774074', 150, 3, 'DISPONIBLE'),
(6, 'Biologie', 'RAVEN,JOHNSON,MASON,LOSOS,SINGER', 'Boeck', 'Biologie', 'fr', '9782804163051', 140, 2, 'DISPONIBLE'),
(7, 'Biologie animale', 'André Beaumont', 'Dunod', 'Biologie', 'fr', '9782100486953', 200, 2, 'DISPONIBLE'),
(8, 'Biologie générale', 'p. VAN GANSEN H.ALEXANDRE', 'DUNOD', 'Biologie', 'fr', '9782100490264', 340, 3, 'DISPONIBLE'),
(9, 'Biomarqueurs en écotoxicologie aspects fondamentaux', 'Laurent Lagadic', 'Masson', 'Biologie', 'fr', '9782225830532', 205, 2, 'DISPONIBLE'),
(10, 'informatique de la santé', 'cédric cartau', 'Eyrolles', 'Biologie', 'fr', '9782212139679', 140, 2, 'DISPONIBLE'),
(11, 'E-commerce sans peine avec php et MY SQL', 'Larry Ullman', 'FIRST INTERACTIVE', 'E-Commerce', 'fr', '9782754030601', 400, 1, 'DISPONIBLE'),
(12, 'Magento pratique du e-commerce avec magento', 'CHRISTOPHE LEBOT', 'PEARSON', 'E-Commerce', 'fr', '9782744024344', 140, 1, 'DISPONIBLE'),
(13, 'Energie électrique éolienne', 'brendan fox et coll.', 'Dunod', 'Énergétique', 'fr', '9782100724642', 140, 2, 'DISPONIBLE'),
(14, 'La combution', 'Philippe ARQUES', 'Ellipes', 'Énergétique', 'fr', '9782729820374', 420, 3, 'DISPONIBLE'),
(15, 'L’Énergie éolienne', 'marc rapin et jean marc noel', 'Dunod', 'Énergétique', 'fr', '9782100725175', 260, 2, 'DISPONIBLE'),
(16, 'calcul des probabilités applications commentésées', 'jean-pierre boullay', 'ellipses', 'Probabilités et Statistiques', 'fr', '9782729838690', 350, 2, 'DISPONIBLE'),
(17, 'initiation à la statistique avec R', 'frédéric bertrand', 'dunod', 'Probabilités et Statistiques', 'fr', '9782100551262', 140, 2, 'DISPONIBLE'),
(18, 'Mathématique,intégration et probabilités', 'Guy Auliac', 'Ediscience', 'Probabilités et Statistiques', 'fr', '9782100483341', 140, 3, 'DISPONIBLE'),
(19, 'Pratiques de la statistique', 'Claudine Schwartz', 'Vuibert', 'Probabilités et Statistiques', 'fr', '9782711771820', 300, 2, 'DISPONIBLE'),
(20, 'Probabilités pour scientifiques et ingénieurs : Introduction au calcul des probabilités', 'Patrick Bogaert', 'De Boeck', 'Probabilités et Statistiques', 'fr', '9782804147945', 300, 2, 'DISPONIBLE'),
(21, 'A la Recherche de l\'eau dans l\'univers', 'Thérèze Encrenaz', 'Belin', 'Environnement', 'fr', '9782701137070', 200, 2, 'DISPONIBLE'),
(22, 'Antibiogramme', 'Patrice Courvalin', 'ESKA', 'Environnement', 'fr', '9782747209076', 140, 2, 'DISPONIBLE'),
(23, 'Bases téchniques de l\'irrigation par Aspersion', 'Clement Mathieu', 'Tec et Doc', 'Environnement', 'fr', '9782743009465', 210, 2, 'DISPONIBLE'),
(24, 'Chimie de l\'eau des mer', 'Gerard Copin Montegut', 'Institut oceanographique', 'Environnement', 'fr', '9782903581145', 300, 3, 'DISPONIBLE'),
(25, 'Code de l\'environnement', 'Christian Huglo', 'Litec', 'Environnement', 'fr', '9782711005567', 250, 2, 'DISPONIBLE'),
(26, 'Poutres et dalles', 'Henry Thonier', 'CSTB', 'RDM et MMC', 'fr', '9782868914903', 450, 2, 'DISPONIBLE'),
(27, 'Calcul des structures en bois', 'Yves Benoit, Bernard Legrand,Vincent Tastet', 'Eyrolles', 'RDM et MMC', 'fr', '9782212124811', 350, 1, 'DISPONIBLE'),
(28, 'Résistance des matériaux.Exercices et solutions', 'Guy Pluvinage ', 'cépadues', 'RDM et MMC', 'fr', '9782854287066', 550, 3, 'DISPONIBLE'),
(29, 'Geographie de cycle de l\'eau', 'Roger Lambert', 'Presses Universitaire de mirail', 'Hydrologie et hydraulique', 'fr', '9782858162734', 400, 1, 'DISPONIBLE'),
(30, 'L\'énergie hydraulique', 'Roger Ginocchio,Pierre-Louis Viollet', 'Lavoisier', 'Hydrologie et hydraulique', 'fr', '9782743011918', 310, 2, 'DISPONIBLE'),
(31, 'Climatologie', 'J,P,Vigneau', 'Ar.Colin', 'Hydrologie et hydraulique', 'fr', '9782200267599', 250, 2, 'DISPONIBLE'),
(32, 'Dessin technique et lecture de plans', 'Jean pierre gousset', 'Eyrolles', 'Topographie et SIG', 'fr', '9782212136227', 230, 3, 'DISPONIBLE'),
(33, 'SIG concepts, outils et données', 'Patricia Bordin', 'lavoisier', 'Topographie et SIG', 'fr', '9782746205543', 330, 2, 'DISPONIBLE'),
(34, 'Topographie opérationnelle mesure-calculs-dessins-implantations', 'Michel Brabant', 'Eyrolles', 'Topographie et SIG', 'fr', '9782212128475', 240, 1, 'DISPONIBLE'),
(35, 'Les codes en informatique', 'Khira Lamèche', 'Hermes', 'Sécurité et Cryptographie', 'fr', '9782866014650', 320, 1, 'DISPONIBLE'),
(36, 'Sécurité informatique', 'L.Bloch ,Christophe Wolfhugel', 'Eyrolles', 'Sécurité et Cryptographie	', 'fr', '9782212132335', 304, 2, 'DISPONIBLE'),
(37, 'Manager un projet informatique', 'Olivier Englender', 'Eyrolloes', 'Gestion de projet', 'fr', '9782212555240', 205, 3, 'DISPONIBLE'),
(38, 'la conduite de projet', 'Thierry Hougron', 'DUNOD', 'Gestion de projet', 'fr', '9782100532926', 300, 2, 'DISPONIBLE'),
(39, 'L\'urbanisme durable', 'Catherine Charlot-Valdieu', 'Le Moniteur', 'Urbanisme', 'fr', '9782281195057', 405, 2, 'DISPONIBLE'),
(40, 'Mener une opération d\'aménagement', 'Aldo Sevino', 'Le Moniteur', 'Urbanisme', 'fr', '9782281129533', 274, 1, 'DISPONIBLE');

-- --------------------------------------------------------

--
-- Structure de la table `livresempruntes`
--

CREATE TABLE `livresempruntes` (
  `etudiantID` int(11) NOT NULL,
  `livreID` int(11) NOT NULL,
  `exemplaireID` int(11) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `auteur` varchar(100) NOT NULL,
  `theme` varchar(150) NOT NULL,
  `dateEmprunt` datetime NOT NULL DEFAULT current_timestamp(),
  `dateRetour` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `livresempruntes`
--

INSERT INTO `livresempruntes` (`etudiantID`, `livreID`, `exemplaireID`, `titre`, `auteur`, `theme`, `dateEmprunt`, `dateRetour`) VALUES
(59, 1, 1, 'Algorithmes de graphes', 'P. Lacomme Christian -M. Sevaux', 'Algorithmique et DÃ©veloppement Informatique', '2021-01-25 15:00:23', '2021-01-28');

-- --------------------------------------------------------

--
-- Structure de la table `réservation`
--

CREATE TABLE `réservation` (
  `idRes` int(20) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `IdLivre` int(10) NOT NULL,
  `IdExemplaire` int(11) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `auteur` varchar(100) NOT NULL,
  `theme` varchar(100) NOT NULL,
  `dateReservation` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `réservation`
--

INSERT INTO `réservation` (`idRes`, `IdUser`, `IdLivre`, `IdExemplaire`, `titre`, `auteur`, `theme`, `dateReservation`) VALUES
(7, 60, 1, 2, 'Algorithmes de graphes', 'P. Lacomme Christian -M. Sevaux', 'Algorithmique et Développement Informatique', '2021-01-25 18:35:19'),
(9, 62, 6, 13, 'Biologie', 'RAVEN,JOHNSON,MASON,LOSOS,SINGER', 'Biologie', '2021-01-25 19:21:55');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `CNE` (`CNE`) USING BTREE;

--
-- Index pour la table `exemplaire`
--
ALTER TABLE `exemplaire`
  ADD PRIMARY KEY (`idExemplaire`);

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`idLivre`);

--
-- Index pour la table `réservation`
--
ALTER TABLE `réservation`
  ADD PRIMARY KEY (`idRes`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT pour la table `exemplaire`
--
ALTER TABLE `exemplaire`
  MODIFY `idExemplaire` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT pour la table `livre`
--
ALTER TABLE `livre`
  MODIFY `idLivre` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `réservation`
--
ALTER TABLE `réservation`
  MODIFY `idRes` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
