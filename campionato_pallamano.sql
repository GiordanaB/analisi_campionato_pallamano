-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Ott 27, 2026 alle 10:42
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `campionato_pallamano`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `giocatori`
--

CREATE TABLE `giocatori` (
  `id_giocatore` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cognome` varchar(100) NOT NULL,
  `anno_nascita` smallint(6) DEFAULT NULL,
  `nazionalita` varchar(60) DEFAULT NULL,
  `ruolo` varchar(50) DEFAULT NULL,
  `id_squadra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `giocatori`
--

INSERT INTO `giocatori` (`id_giocatore`, `nome`, `cognome`, `anno_nascita`, `nazionalita`, `ruolo`, `id_squadra`) VALUES
(1, 'Pedro Henrique', 'Hermones', 1993, 'ITA', 'Portiere', 1),
(2, 'Salah', 'Rihai', 2004, 'ITA', 'Portiere', 1),
(3, 'Gianluca', 'Vinci', 1999, 'ITA', 'Ala sinistra', 1),
(4, 'Giampaolo', 'Sciorsci', 2001, 'ITA', 'Pivot', 1),
(5, 'Juan Ignacio', 'Zungri', 1988, 'ARG', 'Terzino sinistro', 1),
(6, 'Vito Claudio', 'Marino', 1996, 'ITA', 'Pivot', 1),
(7, 'Cristian', 'Guggino', 2003, 'ITA', 'Terzino destro', 1),
(8, 'Filippo ', 'Angiolini', 1999, 'ITA', 'Terzino sinistro', 1),
(9, 'Nuno', 'Santos', 1992, 'POR', 'Ala destra', 1),
(10, 'Giuseppe', 'Cuzzupè', 2004, 'ITA', 'Terzino destro', 1),
(11, 'Nahuel ', 'Pereira', 2005, 'ARG', 'Centrale', 1),
(12, 'Alvaro', 'de la Santa', 2001, 'ESP', 'Centrale', 1),
(13, 'Joao Henrique', 'De Matos Santos Cirilo', 1999, 'BRA', 'Terzino sinistro', 1),
(14, 'Felipe', 'Coutinho', 2000, 'BRA', 'Pivot', 1),
(15, 'Hazem', 'Mamdouh', 1998, 'EGY', 'Terzino destro', 1),
(16, 'Daniele', 'D\'Alberti', 2009, 'ITA', 'Ala sinistra', 1),
(17, 'Riccardo', 'Giuffrida', 2009, 'ITA', 'Terzino sinistro', 1),
(18, 'Davide', 'Sortino', 2009, 'ITA', 'Centrale', 1),
(19, 'Lukacs', 'Soma', 2001, 'HUN', 'Terzino sinistro', 1),
(20, 'Josè', 'Baptista', 2003, 'POR', 'Centrale', 1),
(21, 'Luca', 'Visentin', 2003, 'ITA', 'Ala sinistra', 2),
(22, 'Tommaso', 'Borgato', 2008, 'ITA', 'Ala sinistra', 2),
(23, 'Francesco', 'Borgato', 2008, 'ITA', 'Ala sinistra', 2),
(24, 'Lorenz', 'Brenner', 2008, 'ITA', 'Terzino sinistro', 2),
(25, 'Alex', 'Zorzi', 2008, 'ITA', 'Terzino sinistro', 2),
(26, 'Samuel', 'Gerstgrasser', 2005, 'ITA', 'Centrale', 2),
(27, 'Simon', 'Gerstgrasser', 2009, 'ITA', 'Terzino sinistro', 2),
(28, 'Wasim', 'Khouaja', 2006, 'ITA', 'Centrale', 2),
(29, 'Luca', 'Sperandio', 2006, 'ITA', 'Terzino sinistro', 2),
(30, 'Rodolfo', 'Malandrin de Oliveira', 1992, 'BRA', 'Terzino destro', 2),
(31, 'Noah', 'Ennemoser', 2008, 'ITA', 'Terzino destro', 2),
(32, 'Santiago ', 'Nunez', 1994, 'ITA', 'Ala destra', 2),
(33, 'Leo', 'Urban', 2008, 'ITA', 'Ala destra', 2),
(34, 'Christian Robert', 'Brusic', 2006, 'ITA', 'Pivot', 2),
(35, 'Roberto', 'Conte', 2007, 'ITA', 'Pivot', 2),
(36, 'Andreas', 'Stricker', 1994, 'ITA', 'Pivot', 2),
(37, 'Yannick', 'Meye', 1999, 'GER', 'Pivot', 2),
(38, 'Kilian', 'Eder', 2009, 'ITA', 'Pivot', 2),
(39, 'Vicente Antonio', 'Gonzalez Parra', 1999, 'CHI', 'Portiere', 2),
(40, 'Selmi', 'Haj Frej', 2005, 'ITA', 'Portiere', 2),
(41, 'Manuel', 'Pichler', 2010, 'ITA', 'Portiere', 2),
(42, 'Vilhelm', 'Ernst', 2001, 'SWE', 'Terzino sinistro', 2),
(43, 'Marko', 'Ribic', 2004, 'SLO', 'Terzino sinistro', 2),
(44, 'Alexander', 'De Hhrenstein', 2007, 'ITA', 'Portiere', 3),
(45, 'Jakub', 'Matlega', 2000, 'POL', 'Portiere', 3),
(46, 'Stefano', 'Martinati', 1997, 'ITA', 'Portiere', 3),
(47, 'Raphael', 'Rottensteiner', 2003, 'ITA', 'Portiere', 3),
(48, 'Carlo', 'De Leo', 2008, 'ITA', 'Ala sinistra', 3),
(49, 'Riccardo ', 'Di Giulio', 1997, 'ITA', 'Ala destra', 3),
(50, 'Elia', 'Tamanini', 2008, 'ITA', 'Ala destra', 3),
(51, 'Leonardo', 'Trevisiol', 2005, 'ITA', 'Ala destra', 3),
(52, 'Jonas', 'Walcher', 2002, 'ITA', 'Ala sinistra', 3),
(53, 'Daniel ', 'Galvan', 2006, 'ITA', 'Pivot', 3),
(54, 'Alberto', 'Gazzini', 2001, 'ITA', 'Pivot', 3),
(55, 'Mohamed Ghazi', 'Memmich', 1996, 'TUN', 'Pivot', 3),
(56, 'Jonas', 'Gasser', 2006, 'ITA', 'Centrale', 3),
(57, 'Alan', 'Javor', 2000, 'CRO', 'Terzino sinistro', 3),
(58, 'Aleksandar', 'Milicevic', 1996, 'SRB', 'Terzino sinistro', 3),
(59, 'Samuele', 'Serafini', 2003, 'ITA', 'Terzino destro', 3),
(60, 'Dean', 'Turkovic', 1987, 'ITA', 'Terzino sinistro', 3),
(61, 'Erik', 'Udovicic', 1995, 'CRO/ITA', 'Terzino sinistro', 3),
(62, 'Samuel ', 'Zanetti', 2008, 'ITA', 'Terzino sinistro', 3),
(63, 'Marzo', 'Zanon', 2004, 'ITA', 'Terzino destro', 3),
(64, 'Patrick', 'Amort', 2009, 'ITA', 'Pivot', 4),
(65, 'Stefano', 'Arcieri', 1998, 'ITA', 'Ala sinistra', 4),
(66, 'Andrea ', 'Basic', 1985, 'ITA', 'Pivot', 4),
(67, 'Bruno', 'Brzic', 1987, 'ITA', 'Centrale', 4),
(68, 'Juan Bautista', 'Ceccardi', 2002, 'ITA', 'Terzino sinistro', 4),
(69, 'Alex ', 'Coppola', 2003, 'ITA', 'Terzino sinistro', 4),
(70, 'David Jasper', 'Declara', 2007, 'ITA', 'Pivot', 4),
(71, 'Tomas', 'Della Vecchia', 2001, 'ITA', 'Ala destra', 4),
(72, 'Noah', 'Hopfgartner', 2005, 'ITA', 'Ala destra', 4),
(73, 'Ardian', 'Iballi', 1994, 'ITA', 'Centrale', 4),
(74, 'Guilherme', 'Leonel Costa Da Silva', 1996, 'BRA', 'Terzino destro', 4),
(75, 'Alessandro', 'Lubinati', 2005, 'ITA', 'Portiere', 4),
(76, 'Omar', 'Mejri', 2006, 'ITA', 'Portiere', 4),
(77, 'Felix', 'Muehloegger', 2002, 'ITA', 'Ala destra', 4),
(78, 'Daniel ', 'Oberhollenzer', 2006, 'ITA', 'Terzino destro', 4),
(79, 'Aaron', 'Plattner', 2009, 'ITA', 'Ala sinistra', 4),
(80, 'Alex ', 'Poeder', 2009, 'ITA', 'Terzino sinistro', 4),
(81, 'Adam', 'Puntaier', 2003, 'ITA', 'Pivot', 4),
(82, 'Junes', 'Sader', 2000, 'ITA', 'Terzino destro', 4),
(83, 'Andreas', 'Steiner', 1981, 'ITA', 'Portiere', 4),
(84, 'Giorgio', 'Adamo', 2004, 'ITA', 'Ala destra', 5),
(85, 'Filippo ', 'Branca', 1998, 'ITA', 'Ala destra', 5),
(86, 'Gianluca', 'Dapiran', 1994, 'ITA', 'Ala sinistra', 5),
(87, 'Giacomo', 'Decio', 1996, 'ITA', 'Ala destra', 5),
(88, 'Mattia', 'Dorio', 1998, 'ITA', 'Pivot', 5),
(89, 'Marco', 'Fantinato', 1998, 'ITA', 'Terzino destro', 5),
(90, 'Riccardo', 'Fasanelli', 1998, 'ITA', 'Portiere', 5),
(91, 'Ivan', 'Ilic', 1983, 'ITA', 'Portiere', 5),
(92, 'Usman', 'Kabeer', 2002, 'ITA', 'Pivot', 5),
(93, 'Simone', 'La Bruna', 2002, 'ITA', 'Terzino destro', 5),
(94, 'Alberto', 'Lazzari', 2003, 'ITA', 'Centrale', 5),
(95, 'Federico', 'Mazza', 1998, 'ITA', 'Terzino sinistro', 5),
(96, 'Luca', 'Monciardini', 1995, 'ITA', 'Portiere', 5),
(97, 'Alessio', 'Moretti', 1994, 'ITA', 'Terzino sinistro', 5),
(98, 'Samuele', 'Prevosti', 2002, 'ITA', 'Ala sinistra', 5),
(99, 'Nicolò Giulio', 'Riva', 2002, 'ITA', 'Portiere', 5),
(100, 'Ivan', 'Salvati', 2003, 'ITA', 'Terzino destro', 5),
(101, 'Giacomo', 'Savini', 1998, 'ITA', 'Centrale', 5),
(102, 'Nikola', 'Jezdimirovic', 1993, 'SRB', 'Terzino sinistro', 5),
(103, 'Erik', 'Ostling', 1994, 'SWE', 'Pivot', 5),
(104, 'Matteo', 'Brutti', 1994, 'ITA', 'Ala destra', 6),
(105, 'Martin', 'Di Domenico', 2001, 'ITA', 'Ala sinistra', 6),
(106, 'Luca', 'Vichi', 1997, 'ITA', 'Ala sinistra', 6),
(107, 'Simone', 'Ceresoli', 1992, 'ITA', 'Terzino sinistro', 6),
(108, 'Valerio', 'Sampaolo', 1987, 'ITA', 'Portiere', 6),
(109, 'Francesco', 'Ballabio', 1998, 'ITA', 'Portiere', 6),
(110, 'Juan Pablo', 'Cuello', 1997, 'ITA/ARG', 'Terzino destro', 6),
(111, 'Francisco Martin', 'Cuello', 2004, 'ITA/ARG', 'Terzino sinistro', 6),
(112, 'Andrea', 'Solustri', 1998, 'ITA', 'Centrale', 6),
(113, 'Mario', 'Sanchez', 1981, 'ITA', 'Portiere', 6),
(114, 'Yari', 'Chiappini', 2007, 'ITA', 'Portiere', 6),
(115, 'Jacopo', 'Babbini', 2007, 'ITA', 'Terzino sinistro', 6),
(116, 'Francesco Angelo', 'Altomonte', 2003, 'ITA/ARG', 'Pivot', 6),
(117, 'Fehmi', 'Hammouda', 1992, 'TUN', 'Terzino sinistro', 6),
(118, 'Marco', 'Babbini', 2009, 'ITA', 'Terzino sinistro', 6),
(119, 'Mohamed', 'Miri', 1990, 'MAR', 'Pivot', 6),
(120, 'Edoardo', 'Francelli', 2004, 'ITA', 'Ala sinistra', 6),
(121, 'Renato Alexandre', 'Araujo', 2005, 'POR', 'Terzino sinistro', 6),
(122, 'Omar', 'Santinelli', 1993, 'ITA', 'Terzino sinistro', 6),
(123, 'Piero', 'D\'Benedetto', 1996, 'ITA/ARG', 'Centrale', 6),
(124, 'Mario Andrei', 'Capatina', 2008, 'ITA', 'Ala destra', 6),
(125, 'Jakob', 'Fager', 2001, 'SWE', 'Terzino destro', 6),
(126, 'Francesco', 'Albanesi', 2004, 'ITA', 'Portiere', 7),
(127, 'Alex ', 'Martini', 2006, 'ITA', 'Portiere', 7),
(128, 'Amir', 'Gharbi', 2007, 'ITA', 'Portiere', 7),
(129, 'Davide', 'Ciattaglia', 2003, 'ITA', 'Ala sinistra', 7),
(130, 'Francesco', 'Rossi', 2004, 'ITA', 'Ala sinistra', 7),
(131, 'Matteo', 'Bordoni', 2004, 'ITA', 'Ala sinistra', 7),
(132, 'Paolo', 'Latini', 1999, 'ITA', 'Ala sinistra', 7),
(133, 'Nicola', 'Gagliardini', 2006, 'ITA', 'Ala sinistra', 7),
(134, 'Louay', 'Makhlouf', 1999, 'TUN', 'Terzino sinistro', 7),
(135, 'Oier', 'Lezaun Eugui', 2004, 'ESP', 'Terzino sinistro', 7),
(136, 'Matteo', 'Gigli', 2004, 'ITA', 'Terzino sinistro', 7),
(137, 'Riccardo', 'Lucertoni', 2006, 'ITA', 'Terzino sinistro', 7),
(138, 'Sedzad', 'Abdurahmanovic', 1994, 'BIH', 'Centrale', 7),
(139, 'Lorenzo', 'Nocelli', 1999, 'ITA', 'Centrale', 7),
(140, 'Riccardo', 'Tobaldi', 2003, 'ITA', 'Centrale', 7),
(141, 'Navid', 'Naghvialhosseini', 2000, 'UKR', 'Terzino destro', 7),
(142, 'Simone', 'Giambartolomei', 2006, 'ITA', 'Terzino destro', 7),
(143, 'Tommaso', 'Morganti', 2007, 'ITA', 'Terzino destro', 7),
(144, 'Filippo ', 'Mangoni', 1998, 'ITA', 'Ala destra', 7),
(145, 'Lorenzo', 'Rossetti', 2004, 'ITA', 'Ala destra', 7),
(146, 'Hakim', 'Jaziri', 2001, 'ITA', 'Ala destra', 7),
(147, 'Diego', 'Strappini', 1992, 'ITA', 'Pivot', 7),
(148, 'Mirco', 'Compagnucci', 2005, 'ITA', 'Pivot', 7),
(149, 'Samuel ', 'Ottobri', 2005, 'ITA', 'Pivot', 7),
(150, 'Balsa', 'Stevovic', 2000, 'SRB', 'Terzino sinistro', 7),
(151, 'Carl Adam', 'Krantz', 1991, 'SWE', 'Portiere', 8),
(152, 'Germano', 'Albanini', 2003, 'ITA', 'Portiere', 8),
(153, 'Nicholas', 'Manenti', 1996, 'ITA', 'Portiere', 8),
(154, 'Nikola', 'Erovic', 1999, 'ITA', 'Portiere', 8),
(155, 'Tommaso', 'De Angelis', 2005, 'ITA', 'Ala sinistra', 8),
(156, 'Federico', 'Armanelli', 2006, 'ITA', 'Ala sinistra', 8),
(157, 'Noah', 'Manenti', 2002, 'ITA', 'Ala sinistra', 8),
(158, 'Vincenzo Alessandro ', 'Florio', 2002, 'ITA', 'Terzino sinistro', 8),
(159, 'Luigi', 'Arena', 2003, 'ITA', 'Terzino destro', 8),
(160, 'Marko', 'Knezevic', 1993, 'HUN', 'Centrale', 8),
(161, 'Joao', 'Marinho Da Cunha', 1997, 'POR', 'Centrale', 8),
(162, 'Claudio Felix', 'Piceni', 2006, 'ITA', 'Centrale', 8),
(163, 'Luca', 'Mombelli', 1999, 'ITA', 'Terzino sinistro', 8),
(164, 'Fabrizio', 'Caironi', 2006, 'ITA', 'Terzino destro', 8),
(165, 'Alessandro', 'Bozzoli', 2001, 'ITA', 'Ala destra', 8),
(166, 'Gianmarco', 'Barbariga', 1994, 'ITA', 'Ala destra', 8),
(167, 'Marco', 'Perletti', 2002, 'ITA', 'Ala destra', 8),
(168, 'Ivano', 'Rossi', 2004, 'ITA', 'Pivot', 8),
(169, 'Davide', 'Lancini', 1998, 'ITA', 'Pivot', 8),
(170, 'Federico', 'Loda', 2006, 'ITA', 'Pivot', 8),
(171, 'Stefan', 'Trkulja', 1998, 'SRB', 'Pivot', 8),
(172, 'Pasqualino', 'Di Giandomenico', 1994, 'ITA', 'Portiere', 9),
(173, 'Francesco', 'Scarcelli', 2005, 'ITA', 'Portiere', 9),
(174, 'Demis', 'Radovcic', 1988, 'ITA', 'Ala sinistra', 9),
(175, 'Gabriele', 'Iachemet', 2002, 'ITA', 'Ala sinistra', 9),
(176, 'Mirko', 'Djurovic', 2000, 'SRB', 'Centrale', 9),
(177, 'Mihailo', 'Sljukic', 2001, 'SRB', 'Terzino sinistro', 9),
(178, 'Jacopo', 'Lupo', 1995, 'ITA', 'Pivot', 9),
(179, 'Ignazio', 'Degiorgio', 1999, 'ITA', 'Centrale', 9),
(180, 'Massimiliano', 'Possamai', 2001, 'ITA', 'Centrale', 9),
(181, 'Marko', 'Curcic', 1992, 'CRO', 'Terzino destro', 9),
(182, 'Camillo', 'Di Mascio', 2005, 'ITA', 'Terzino destro', 9),
(183, 'Gabriele', 'Saitta', 1998, 'ITA', 'Ala destra', 9),
(184, 'Daniele', 'De Luca', 2002, 'ITA', 'Ala destra', 9),
(185, 'Endrit', 'Iballi', 1998, 'ITA', 'Pivot', 9),
(186, 'Efrem', 'Saccardo', 2006, 'ITA', 'Pivot', 9),
(187, 'Samuele', 'Bortolot', 1996, 'ITA', 'Portiere', 10),
(188, 'Theo', 'Solva', 2005, 'ITA', 'Portiere', 10),
(189, 'Juan Manuel', 'Bendini', 2005, 'ITA/ARG', 'Terzino sinistro', 10),
(190, 'Goncalo Rafael', 'Marques Cunha', 1997, 'POR', 'Centrale', 10),
(191, 'Alberto', 'Lollo', 2001, 'ITA', 'Centrale', 10),
(192, 'Jan-Niklas', 'Oberrauch', 1999, 'ITA', 'Terzino destro', 10),
(193, 'Alex ', 'Wiedenhofer', 1999, 'ITA', 'Ala sinistra', 10),
(194, 'Felipe Matheus', 'Zanutto', 1998, 'ITA', 'Pivot', 10),
(195, 'Manuel ', 'Bernard', 2005, 'ITA', 'Pivot', 10),
(196, 'Dragan', 'Glisic', 2001, 'ITA', 'Terzino sinistro', 10),
(197, 'Daniel ', 'Lemayr', 2005, 'ITA', 'Ala destra', 10),
(198, 'Dusan ', 'Glisic', 1999, 'ITA', 'Terzino destro', 10),
(199, 'Tiago', 'Costa', 2000, 'POR', 'Terzino sinistro', 10),
(200, 'Alexander', 'Eizans', 2006, 'LAT/ITA', 'Pivot', 10),
(201, 'Simon ', 'Singer', 1991, 'ITA', 'Ala destra', 10),
(202, 'Valentin', 'Rainer', 2006, 'ITA', 'Ala sinistra', 10),
(203, 'Alessandro', 'Leban', 1998, 'ITA', 'Portiere', 11),
(204, 'Giorgio', 'Rossa', 2004, 'ITA', 'Portiere', 11),
(205, 'Daniele', 'Vinci', 2001, 'ITA', 'Portiere', 11),
(206, 'Andrea', 'Guarini', 2007, 'ITA', 'Ala sinistra', 11),
(207, 'Gabriele', 'Somma', 2006, 'ITA', 'Ala sinistra', 11),
(208, 'Mohamed Hechmi', 'Belhareth', 1995, 'TUN', 'Terzino sinistro', 11),
(209, 'Pablo Miguel', 'Marrochi', 1986, 'ITA', 'Centrale', 11),
(210, 'Nidhal Eddine Badie', 'Blida', 2002, 'DZA', 'Terzino destro', 11),
(211, 'Aaron Alexanther', 'Codina Vivanco', 1999, 'ESP', 'Terzino sinistro', 11),
(212, 'Leonardo Palmiro', 'Boggia', 2005, 'ITA', 'Ala destra', 11),
(213, 'Valentino', 'Dello Vicario Giacinti', 2005, 'ITA', 'Pivot', 11),
(214, 'Matias Ezequil', 'Beorlegui', 1999, 'ITA/ARG', 'Pivot', 11),
(215, 'Raffaele', 'Corcione', 1991, 'ITA', 'Pivot', 11),
(216, 'Antonio', 'Capozzoli', 2006, 'ITA', 'Terzino sinistro', 11),
(217, 'Diego', 'Somma', 2006, 'ITA', 'Centrale', 11),
(218, 'Michele', 'Neglia', 2009, 'ITA', 'Ala destra', 11),
(219, 'Pietro', 'Di Tano', 2009, 'ITA', 'Terzino sinistro', 11),
(220, 'Davide', 'Notarangelo', 2000, 'ITA', 'Centrale', 11),
(221, 'Kevi', 'Bllunga', 2007, 'ITA', 'Ala sinistra', 11),
(222, 'Olafur Brim', 'Stefansson', 2000, 'ISL', 'Terzino destro', 11),
(223, 'Francesco ', 'Rossi', 1999, 'ITA', 'Ala destra', 12),
(224, 'Marco ', 'Chistè', 1998, 'ITA', 'Ala destra', 12),
(225, 'Davide', 'Sontacchi', 2001, 'ITA', 'Ala sinistra', 12),
(226, 'Marco', 'Mazzucchi', 2001, 'ITA', 'Ala sinistra', 12),
(227, 'Nicola', 'Rossi', 1997, 'ITA', 'Ala sinistra', 12),
(228, 'Alessandro', 'Vagnoni', 2004, 'ITA', 'Centrale', 12),
(229, 'Luca', 'Villotti', 2003, 'ITA', 'Centrale', 12),
(230, 'Nicola', 'Fadanelli', 2002, 'ITA', 'Centrale', 12),
(231, 'Pascal', 'D\'Antino', 1994, 'ITA', 'Centrale', 12),
(232, 'Cristian', 'Piffer', 2006, 'ITA', 'Pivot', 12),
(233, 'Emanuele', 'Bellini', 2002, 'ITA', 'Pivot', 12),
(234, 'Oliver', 'Martini', 2001, 'ITA', 'Pivot', 12),
(235, 'Elia', 'Milani', 2008, 'ITA', 'Portiere', 12),
(236, 'Nikolaos', 'Loizos', 1990, 'GRE', 'Portiere', 12),
(237, 'Simone Aldo', 'Facchinelli', 1998, 'ITA', 'Portiere', 12),
(238, 'Nicola', 'Moser', 1997, 'ITA', 'Terzino sinistro', 12),
(239, 'Hamza', 'Fraj', 1996, 'TUN', 'Terzino destro', 12),
(240, 'Matteo', 'Moser', 1998, 'ITA', 'Terzino destro', 12),
(241, 'Paul', 'Wierer', 2004, 'ITA', 'Terzino destro', 12),
(242, 'Danilo', 'Milovic', 1999, 'SRB', 'Terzino sinistro', 12),
(243, 'Federico', 'Pilati', 2006, 'ITA', 'Terzino sinistro', 12),
(244, 'Leonardo ', 'Piffer', 2005, 'ITA', 'Terzino sinistro', 12),
(245, 'Giovanni', 'Pavani', 2000, 'ITA', 'Portiere', 13),
(246, 'Federico', 'Mihail', 1993, 'ITA/ARG', 'Portiere', 13),
(247, 'Luigi', 'Bernardini', 2009, 'ITA', 'Portiere', 13),
(248, 'Giovanni', 'Nardin', 2000, 'ITA', 'Ala sinistra', 13),
(249, 'Alberto', 'Mura', 2005, 'ITA', 'Ala sinistra', 13),
(250, 'Rohnan', 'Conte', 1997, 'FRA', 'Terzino sinistro', 13),
(251, 'Gualther', 'De Pina Lopes Furtado', 1995, 'CPV', 'Terzino destro', 13),
(252, 'Albin Richard', 'Jarlstam', 1995, 'SWE', 'Centrale', 13),
(253, 'Octave', 'Touvrey', 2003, 'FRA', 'Centrale', 13),
(254, 'Ignacio', 'Beenardo', 2004, 'ITA/ARG', 'Terzino sinistro', 13),
(255, 'Antonio', 'Piras', 2009, 'ITA', 'Terzino sinistro', 13),
(256, 'Alfonso', 'Didone', 2006, 'ITA', 'Terzino destro', 13),
(257, 'Andrea', 'Delogu', 2003, 'ITA', 'Ala destra', 13),
(258, 'Raul', 'Bargelli', 1999, 'ITA', 'Pivot', 13),
(259, 'Marco Carmelo', 'Campagna', 2003, 'ITA', 'Pivot', 13),
(260, 'Cristian', 'Podda', 2009, 'ITA', 'Pivot', 13),
(261, 'Davide', 'Pugliese', 2001, 'ITA', 'Terzino destro', 13),
(262, 'Facundo ', 'Garcia', 1988, 'ITA/ARG', 'Portiere', 14),
(263, 'Fernando', 'Bono', 1992, 'ITA/ARG', 'Terzino sinistro', 14),
(264, 'Lorenzo', 'Ganz', 2005, 'ITA', 'Centrale', 14),
(265, 'Gabriel ', 'Mazzarol', 2001, 'ITA', 'Ala destra', 14),
(266, 'Samuel ', 'Antonutti', 2006, 'ITA', 'Terzino sinistro', 14),
(267, 'Alex', 'Pernic', 1992, 'ITA', 'Pivot', 14),
(268, 'Federico', 'Urbaz', 2004, 'ITA', 'Ala sinistra', 14),
(269, 'Orfeo', 'Giorgi', 2006, 'ITA', 'Portiere', 14),
(270, 'Jaume', 'Pujol', 1998, 'ESP', 'Centrale', 14),
(271, 'Davide', 'Parisato', 2001, 'ITA', 'Ala sinistra', 14),
(272, 'Pietro', 'Lo Duca', 2007, 'ITA', 'Ala destra', 14),
(273, 'Thomas', 'Postogna', 1993, 'ITA', 'Portiere', 14),
(274, 'Leo', 'Andreotta', 2004, 'ITA', 'Pivot', 14),
(275, 'Juan Agustin', 'Pauloni', 2000, 'ITA/ARG', 'Ala destra', 14),
(276, 'Richard', 'Lindstrom', 1996, 'SWE', 'Terzino destro', 14),
(277, 'Federico', 'Vanoli', 1995, 'ITA/ARG', 'Terzino sinistro', 14),
(278, 'Riccardo', 'Scorzato', 2005, 'ITA', 'Ala sinistra', 14),
(279, 'Luca', 'Sandrin', 1999, 'ITA', 'Terzino sinistro', 14),
(280, 'Clement', 'Esparon', 2002, 'FRA', 'Terzino sinistro', 14),
(281, 'Sofiane', 'Bendjilali', 1995, 'ALG', 'Pivot', 14),
(282, 'Lucas', 'Hubert', 1998, 'FRA', 'Centrale', 14);

-- --------------------------------------------------------

--
-- Struttura della tabella `partite`
--

CREATE TABLE `partite` (
  `id_partita` int(11) NOT NULL,
  `giornata` tinyint(4) NOT NULL,
  `data` date NOT NULL,
  `id_squadra_casa` int(11) NOT NULL,
  `id_squadra_trasferta` int(11) NOT NULL,
  `goal_casa` tinyint(4) DEFAULT NULL,
  `goal_trasferta` tinyint(4) DEFAULT NULL,
  `stato_partita` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `partite`
--

INSERT INTO `partite` (`id_partita`, `giornata`, `data`, `id_squadra_casa`, `id_squadra_trasferta`, `goal_casa`, `goal_trasferta`, `stato_partita`) VALUES
(1, 1, '2025-09-06', 9, 4, 40, 34, 'Disputata'),
(2, 1, '2025-09-06', 2, 10, 31, 28, 'Disputata'),
(3, 1, '2025-09-07', 5, 7, 32, 31, 'Disputata'),
(4, 1, '2025-09-06', 14, 11, 32, 30, 'Disputata'),
(5, 1, '2025-09-06', 1, 3, 34, 33, 'Disputata'),
(6, 1, '2025-09-06', 12, 8, 26, 26, 'Disputata'),
(7, 1, '2025-09-06', 6, 13, 23, 38, 'Disputata'),
(8, 2, '2025-10-07', 13, 12, 35, 29, 'Disputata'),
(9, 2, '2025-09-13', 3, 14, 34, 32, 'Disputata'),
(10, 2, '2025-09-13', 11, 5, 32, 30, 'Disputata'),
(11, 2, '2025-09-13', 10, 9, 27, 35, 'Disputata'),
(12, 2, '2025-09-13', 4, 6, 35, 34, 'Disputata'),
(13, 2, '2025-09-13', 8, 1, 30, 31, 'Disputata'),
(14, 2, '2025-09-13', 7, 2, 30, 25, 'Disputata'),
(15, 3, '2025-09-20', 2, 11, 24, 27, 'Disputata'),
(16, 3, '2025-09-20', 5, 3, 38, 31, 'Disputata'),
(17, 3, '2025-09-21', 14, 8, 30, 23, 'Disputata'),
(18, 3, '2025-09-20', 7, 10, 31, 25, 'Disputata'),
(19, 3, '2025-09-20', 1, 13, 31, 29, 'Disputata'),
(20, 3, '2025-09-20', 12, 4, 35, 24, 'Disputata'),
(21, 3, '2025-09-20', 6, 9, 24, 28, 'Disputata'),
(22, 4, '2025-09-27', 13, 14, 38, 38, 'Disputata'),
(23, 4, '2025-09-27', 3, 2, 36, 26, 'Disputata'),
(24, 4, '2025-09-27', 9, 12, 25, 32, 'Disputata'),
(25, 4, '2025-09-27', 11, 7, 33, 27, 'Disputata'),
(26, 4, '2025-09-27', 10, 6, 28, 32, 'Disputata'),
(27, 4, '2025-09-27', 4, 1, 29, 31, 'Disputata'),
(28, 4, '2025-09-27', 8, 5, 26, 30, 'Disputata'),
(29, 5, '2025-10-11', 11, 10, 29, 26, 'Disputata'),
(30, 5, '2025-10-11', 2, 8, 31, 28, 'Disputata'),
(31, 5, '2025-11-05', 5, 13, 25, 16, 'Disputata'),
(32, 5, '2025-10-11', 14, 4, 28, 29, 'Disputata'),
(33, 5, '2025-10-11', 7, 3, 28, 34, 'Disputata'),
(34, 5, '2025-11-05', 1, 9, 29, 25, 'Disputata'),
(35, 5, '2025-10-11', 12, 6, 30, 25, 'Disputata'),
(36, 6, '2025-10-22', 13, 2, 37, 31, 'Disputata'),
(37, 6, '2025-10-18', 3, 11, 30, 29, 'Disputata'),
(38, 6, '2025-10-18', 9, 14, 24, 24, 'Disputata'),
(39, 6, '2025-10-18', 10, 12, 31, 23, 'Disputata'),
(40, 6, '2025-10-05', 4, 5, 29, 26, 'Disputata'),
(41, 6, '2025-10-18', 8, 7, 25, 34, 'Disputata'),
(42, 6, '2025-10-18', 6, 1, 27, 26, 'Disputata'),
(43, 7, '2025-10-25', 3, 10, 28, 26, 'Disputata'),
(44, 7, '2025-10-25', 11, 8, 32, 27, 'Disputata'),
(45, 7, '2025-10-25', 2, 4, 31, 31, 'Disputata'),
(46, 7, '2025-10-25', 5, 9, 24, 21, 'Disputata'),
(47, 7, '2025-10-25', 14, 6, 30, 23, 'Disputata'),
(48, 7, '2025-10-25', 7, 13, 31, 30, 'Disputata'),
(49, 7, '2025-10-25', 1, 12, 33, 29, 'Disputata'),
(50, 8, '2025-11-09', 13, 11, 40, 27, 'Disputata'),
(51, 8, '2025-11-08', 9, 2, 26, 22, 'Disputata'),
(52, 8, '2025-11-08', 10, 1, 32, 33, 'Disputata'),
(53, 8, '2025-11-08', 4, 7, 35, 32, 'Disputata'),
(54, 8, '2025-11-08', 8, 3, 35, 37, 'Disputata'),
(55, 8, '2025-11-08', 12, 14, 25, 29, 'Disputata'),
(56, 8, '2025-11-08', 6, 5, 15, 19, 'Disputata'),
(57, 9, '2025-12-17', 3, 13, 29, 34, 'Disputata'),
(58, 9, '2025-11-15', 11, 4, 31, 27, 'Disputata'),
(59, 9, '2025-11-15', 2, 6, 27, 31, 'Disputata'),
(60, 9, '2025-11-12', 5, 12, 18, 17, 'Disputata'),
(61, 9, '2025-11-15', 14, 1, 34, 30, 'Disputata'),
(62, 9, '2025-11-15', 8, 10, 31, 25, 'Disputata'),
(63, 9, '2025-11-15', 7, 9, 27, 24, 'Disputata'),
(64, 10, '2025-11-19', 13, 8, 29, 27, 'Disputata'),
(65, 10, '2025-11-19', 9, 11, 29, 30, 'Disputata'),
(66, 10, '2025-11-19', 10, 14, 20, 31, 'Disputata'),
(67, 10, '2025-11-19', 4, 3, 28, 28, 'Disputata'),
(68, 10, '2025-11-19', 1, 5, 19, 25, 'Disputata'),
(69, 10, '2025-11-19', 12, 2, 33, 30, 'Disputata'),
(70, 10, '2025-11-19', 6, 7, 36, 27, 'Disputata'),
(71, 11, '2025-12-10', 13, 10, 32, 31, 'Disputata'),
(72, 11, '2025-11-23', 3, 9, 30, 27, 'Disputata'),
(73, 11, '2025-11-22', 11, 6, 27, 28, 'Disputata'),
(74, 11, '2025-11-22', 2, 1, 29, 32, 'Disputata'),
(75, 11, '2025-11-26', 5, 14, 29, 24, 'Disputata'),
(76, 11, '2025-11-22', 8, 4, 35, 27, 'Disputata'),
(77, 11, '2025-11-22', 7, 12, 25, 23, 'Disputata'),
(78, 12, '2025-11-29', 9, 8, 26, 28, 'Disputata'),
(79, 12, '2025-11-29', 5, 10, 28, 17, 'Disputata'),
(80, 12, '2025-11-29', 4, 13, 30, 36, 'Disputata'),
(81, 12, '2025-11-29', 14, 2, 33, 27, 'Disputata'),
(82, 12, '2025-11-29', 1, 7, 32, 30, 'Disputata'),
(83, 12, '2025-11-29', 12, 11, 29, 28, 'Disputata'),
(84, 12, '2025-11-29', 6, 3, 26, 26, 'Disputata'),
(85, 13, '2025-12-06', 13, 9, 31, 25, 'Disputata'),
(86, 13, '2025-12-06', 3, 12, 26, 29, 'Disputata'),
(87, 13, '2025-12-06', 11, 1, 41, 37, 'Disputata'),
(88, 13, '2025-12-06', 2, 5, 22, 36, 'Disputata'),
(89, 13, '2025-12-06', 10, 4, 37, 42, 'Disputata'),
(90, 13, '2025-12-06', 8, 6, 31, 31, 'Disputata'),
(91, 13, '2025-12-06', 7, 14, 24, 23, 'Disputata'),
(92, 14, '2025-12-13', 4, 9, 28, 29, 'Disputata'),
(93, 14, '2025-12-13', 10, 2, 27, 25, 'Disputata'),
(94, 14, '2025-12-13', 7, 5, 25, 32, 'Disputata'),
(95, 14, '2025-12-13', 11, 14, 29, 28, 'Disputata'),
(96, 14, '2025-12-13', 3, 1, 25, 32, 'Disputata'),
(97, 14, '2025-12-13', 8, 12, 30, 27, 'Disputata'),
(98, 14, '2025-12-13', 13, 6, 29, 22, 'Disputata'),
(99, 15, '2025-12-20', 12, 13, 26, 35, 'Disputata'),
(100, 15, '2025-12-20', 14, 3, 32, 32, 'Disputata'),
(101, 15, '2025-12-20', 5, 11, 31, 25, 'Disputata'),
(102, 15, '2025-12-20', 9, 10, 29, 27, 'Disputata'),
(103, 15, '2025-12-20', 6, 4, 39, 32, 'Disputata'),
(104, 15, '2025-12-20', 1, 8, 24, 27, 'Disputata'),
(105, 15, '2025-12-20', 2, 7, 34, 29, 'Disputata'),
(106, 16, '2026-02-07', 11, 2, 31, 27, 'Disputata'),
(107, 16, '2026-02-07', 3, 5, 23, 33, 'Disputata'),
(108, 16, '2026-02-07', 8, 14, 31, 25, 'Disputata'),
(109, 16, '2026-02-08', 10, 7, 27, 35, 'Disputata'),
(110, 16, '2026-02-07', 13, 1, 27, 27, 'Disputata'),
(111, 16, '2026-02-07', 4, 12, 30, 30, 'Disputata'),
(112, 16, '2026-02-07', 9, 6, 26, 19, 'Disputata'),
(113, 17, '2026-02-14', 14, 13, 28, 36, 'Disputata'),
(114, 17, '2026-02-14', 2, 3, 32, 28, 'Disputata'),
(115, 17, '2026-02-15', 12, 9, 25, 20, 'Disputata'),
(116, 17, '2026-02-14', 7, 11, 28, 32, 'Disputata'),
(117, 17, '2026-02-14', 6, 10, 29, 25, 'Disputata'),
(118, 17, '2026-02-14', 1, 4, 34, 32, 'Disputata'),
(119, 17, '2026-02-14', 5, 8, 31, 28, 'Disputata'),
(120, 18, '2026-02-21', 10, 11, 29, 28, 'Disputata'),
(121, 18, '2026-02-21', 8, 2, 23, 19, 'Disputata'),
(122, 18, '2026-02-21', 13, 5, 29, 32, 'Disputata'),
(123, 18, '2026-02-21', 4, 14, 33, 36, 'Disputata'),
(124, 18, '2026-02-21', 3, 7, 32, 27, 'Disputata'),
(125, 18, '2026-02-21', 9, 1, 30, 29, 'Disputata'),
(126, 18, '2026-02-21', 6, 12, 32, 27, 'Disputata'),
(127, 19, '2026-03-07', 2, 13, 32, 33, 'Disputata'),
(128, 19, '2026-03-07', 11, 3, 29, 29, 'Disputata'),
(129, 19, '2026-03-07', 14, 9, 20, 25, 'Disputata'),
(130, 19, '2026-03-07', 12, 10, 27, 22, 'Disputata'),
(131, 19, '2026-03-07', 5, 4, 38, 24, 'Disputata'),
(132, 19, '2026-03-07', 7, 8, 31, 26, 'Disputata'),
(133, 19, '2026-03-07', 1, 6, 26, 24, 'Disputata'),
(134, 20, '2026-03-14', 10, 3, 25, 30, 'Disputata'),
(135, 20, '2026-03-14', 8, 11, 31, 24, 'Disputata'),
(136, 20, '2026-03-14', 4, 2, 32, 36, 'Disputata'),
(137, 20, '2026-03-14', 9, 5, 25, 31, 'Disputata'),
(138, 20, '2026-03-14', 6, 14, 23, 29, 'Disputata'),
(139, 20, '2026-03-14', 13, 7, 36, 26, 'Disputata'),
(140, 20, '2026-03-14', 12, 1, 29, 25, 'Disputata'),
(141, 21, '2026-03-28', 11, 13, 30, 27, 'Disputata'),
(142, 21, '2026-03-28', 2, 9, 35, 35, 'Disputata'),
(143, 21, '2026-03-28', 1, 10, 31, 29, 'Disputata'),
(144, 21, '2026-03-28', 7, 4, 35, 32, 'Disputata'),
(145, 21, '2026-03-28', 3, 8, 33, 33, 'Disputata'),
(146, 21, '2026-03-28', 14, 12, 33, 29, 'Disputata'),
(147, 21, '2026-03-28', 5, 6, 40, 29, 'Disputata'),
(148, 22, '2026-04-04', 13, 3, 31, 34, 'Disputata'),
(149, 22, '2026-04-04', 4, 11, 33, 26, 'Disputata'),
(150, 22, '2026-04-04', 6, 2, 30, 26, 'Disputata'),
(151, 22, '2026-04-04', 12, 5, 29, 30, 'Disputata'),
(152, 22, '2026-04-04', 1, 14, 32, 29, 'Disputata'),
(153, 22, '2026-04-04', 10, 8, 28, 31, 'Disputata'),
(154, 22, '2026-04-04', 9, 7, 35, 31, 'Disputata'),
(155, 23, '2026-04-08', 8, 13, 31, 34, 'Disputata'),
(156, 23, '2026-04-08', 11, 9, 24, 28, 'Disputata'),
(157, 23, '2026-04-08', 14, 10, 35, 32, 'Disputata'),
(158, 23, '2026-04-08', 3, 4, 33, 32, 'Disputata'),
(159, 23, '2026-04-08', 5, 1, 37, 28, 'Disputata'),
(160, 23, '2026-04-08', 2, 12, 34, 32, 'Disputata'),
(161, 23, '2026-04-08', 7, 6, 26, 31, 'Disputata'),
(162, 24, '2026-04-11', 10, 13, 29, 44, 'Disputata'),
(163, 24, '2026-04-11', 9, 3, 31, 24, 'Disputata'),
(164, 24, '2026-04-11', 6, 11, 29, 20, 'Disputata'),
(165, 24, '2026-04-11', 1, 2, 31, 32, 'Disputata'),
(166, 24, '2026-04-11', 14, 5, 28, 33, 'Disputata'),
(167, 24, '2026-04-11', 4, 8, 32, 27, 'Disputata'),
(168, 24, '2026-04-11', 12, 7, 34, 26, 'Disputata'),
(169, 25, '2026-04-18', 8, 9, 31, 33, 'Disputata'),
(170, 25, '2026-04-18', 10, 5, 29, 38, 'Disputata'),
(171, 25, '2026-04-18', 13, 4, 34, 33, 'Disputata'),
(172, 25, '2026-04-18', 2, 14, 34, 33, 'Disputata'),
(173, 25, '2026-04-18', 7, 1, 31, 30, 'Disputata'),
(174, 25, '2026-04-18', 11, 12, 30, 24, 'Disputata'),
(175, 25, '2026-04-18', 3, 6, 31, 24, 'Disputata'),
(176, 26, '2026-04-25', 9, 13, 28, 28, 'Disputata'),
(177, 26, '2026-04-25', 12, 3, 20, 28, 'Disputata'),
(178, 26, '2026-04-25', 1, 11, 24, 26, 'Disputata'),
(179, 26, '2026-04-25', 5, 2, 38, 31, 'Disputata'),
(180, 26, '2026-04-25', 4, 10, 35, 30, 'Disputata'),
(181, 26, '2026-04-25', 6, 8, 32, 31, 'Disputata'),
(182, 26, '2026-04-25', 14, 7, 27, 23, 'Disputata');

-- --------------------------------------------------------

--
-- Struttura della tabella `squadre`
--

CREATE TABLE `squadre` (
  `id_squadra` int(11) NOT NULL,
  `nome_squadra` varchar(100) NOT NULL,
  `citta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `squadre`
--

INSERT INTO `squadre` (`id_squadra`, `nome_squadra`, `citta`) VALUES
(1, 'Albatro', 'Siracusa'),
(2, 'Black Devils', 'Merano'),
(3, 'Bolzano', 'Bolzano'),
(4, 'Brixen', 'Bressanone'),
(5, 'Cassano Magnago', 'Cassano Magnago'),
(6, 'Chiaravalle', 'Chiaravalle'),
(7, 'Cingoli', 'Cingoli'),
(8, 'Cologne', 'Cologne'),
(9, 'Conversano', 'Conversano'),
(10, 'Eppan', 'Appiano sulla strada del vino'),
(11, 'Fasano', 'Fasano'),
(12, 'Pressano', 'Lavis'),
(13, 'Sassari', 'Sassari'),
(14, 'Trieste', 'Trieste');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `giocatori`
--
ALTER TABLE `giocatori`
  ADD PRIMARY KEY (`id_giocatore`),
  ADD KEY `id_squadra` (`id_squadra`);

--
-- Indici per le tabelle `partite`
--
ALTER TABLE `partite`
  ADD PRIMARY KEY (`id_partita`),
  ADD KEY `partite_ibfk_1` (`id_squadra_casa`),
  ADD KEY `partite_ibfk_2` (`id_squadra_trasferta`);

--
-- Indici per le tabelle `squadre`
--
ALTER TABLE `squadre`
  ADD PRIMARY KEY (`id_squadra`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `giocatori`
--
ALTER TABLE `giocatori`
  MODIFY `id_giocatore` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT per la tabella `partite`
--
ALTER TABLE `partite`
  MODIFY `id_partita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT per la tabella `squadre`
--
ALTER TABLE `squadre`
  MODIFY `id_squadra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `giocatori`
--
ALTER TABLE `giocatori`
  ADD CONSTRAINT `giocatori_ibfk_1` FOREIGN KEY (`id_squadra`) REFERENCES `squadre` (`id_squadra`);

--
-- Limiti per la tabella `partite`
--
ALTER TABLE `partite`
  ADD CONSTRAINT `partite_ibfk_1` FOREIGN KEY (`id_squadra_casa`) REFERENCES `squadre` (`id_squadra`) ON UPDATE CASCADE,
  ADD CONSTRAINT `partite_ibfk_2` FOREIGN KEY (`id_squadra_trasferta`) REFERENCES `squadre` (`id_squadra`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
