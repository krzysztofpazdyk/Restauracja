-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas wygenerowania: 26 Wrz 2015, 18:24
-- Wersja serwera: 5.6.14
-- Wersja PHP: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `dania`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `braki`
--

CREATE TABLE IF NOT EXISTS `braki` (
  `skladnik` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `braki`
--

INSERT INTO `braki` (`skladnik`) VALUES
('20'),
('16');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `daniaskladniki`
--

CREATE TABLE IF NOT EXISTS `daniaskladniki` (
  `ID_Dania` int(11) NOT NULL,
  `ID_Skladnika` int(11) NOT NULL,
  `Ilosc` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Dania`,`ID_Skladnika`),
  KEY `ID_Dania` (`ID_Dania`),
  KEY `ID_Skladnika` (`ID_Skladnika`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `daniaskladniki`
--

INSERT INTO `daniaskladniki` (`ID_Dania`, `ID_Skladnika`, `Ilosc`) VALUES
(12, 10, 0),
(49, 2, 0),
(50, 9, 0),
(50, 16, 100),
(51, 12, 0),
(51, 17, 0),
(52, 12, 100),
(52, 16, 150),
(86, 10, 100),
(89, 17, 100),
(90, 10, 100),
(90, 15, 100),
(90, 19, 100),
(91, 20, 100),
(93, 11, 100);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dania_gotowe`
--

CREATE TABLE IF NOT EXISTS `dania_gotowe` (
  `Danie` text,
  `Klient` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `danie`
--

CREATE TABLE IF NOT EXISTS `danie` (
  `ID_Dania` int(11) NOT NULL AUTO_INCREMENT,
  `Nazwa` text NOT NULL,
  `Przepis` text NOT NULL,
  `ID_User` int(11) NOT NULL,
  PRIMARY KEY (`ID_Dania`),
  KEY `ID_User` (`ID_User`),
  KEY `ID_Dania` (`ID_Dania`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=94 ;

--
-- Zrzut danych tabeli `danie`
--

INSERT INTO `danie` (`ID_Dania`, `Nazwa`, `Przepis`, `ID_User`) VALUES
(12, 'tort', 'fbfb', 2),
(49, 'Ciastko mangowe', 'qwerty', 1),
(50, 'Jajecznica', 'Jajka', 6),
(51, 'Purre po francusku', 'Ziemniaki', 3),
(52, 'Budyn', '', 5),
(53, 'Mars', 'dfgdsfgsdfgsdfgsdfh', 1),
(54, 'pizza', 'test1', 1),
(59, 'herbata', 'woda, dilmah, sugar', 9),
(66, 'Margaryna', 'etq', 15),
(67, 'Jabłecznik', 'JabÅ?ka 500 gramÃ³w.', 15),
(70, 'Kompot', 'Mak', 15),
(71, 'Sok', 'JabÅ?ko', 15),
(72, 'baton', 'czekolada', 15),
(73, 'Kaczka', 'Kaczka', 15),
(78, 'makaron', 'jajka', 15),
(86, 'Banan', 'Banan', 15),
(89, 'Malina', 'qwe', 15),
(90, 'Kogiel-Mogiel', 'a', 15),
(91, 'Kabanos', 's', 15),
(93, 'Kalafior', 'r', 15);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `danielokal`
--

CREATE TABLE IF NOT EXISTS `danielokal` (
  `ID_Dania` int(11) NOT NULL,
  `ID_lokalu` int(11) NOT NULL,
  PRIMARY KEY (`ID_Dania`,`ID_lokalu`),
  KEY `ID_Dania` (`ID_Dania`),
  KEY `ID_lokalu` (`ID_lokalu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lista_dan`
--

CREATE TABLE IF NOT EXISTS `lista_dan` (
  `danie` text,
  `Klient` text,
  `Nawynos` text,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lista_dostawca`
--

CREATE TABLE IF NOT EXISTS `lista_dostawca` (
  `Danie` text,
  `Klient` text,
  `Nawynos` text,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lista_kelner`
--

CREATE TABLE IF NOT EXISTS `lista_kelner` (
  `Danie` text,
  `Klient` text,
  `Nawynos` text,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lista_zamowien`
--

CREATE TABLE IF NOT EXISTS `lista_zamowien` (
  `Danie` text,
  `Klient` text,
  `Nawynos` text,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Zrzut danych tabeli `lista_zamowien`
--

INSERT INTO `lista_zamowien` (`Danie`, `Klient`, `Nawynos`, `id`) VALUES
('Banan', '20', ' w lokalu', 1),
('Banan', '20', ' w lokalu', 2),
('Banan', '20', ' w lokalu', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lokale`
--

CREATE TABLE IF NOT EXISTS `lokale` (
  `ID_lokalu` int(11) NOT NULL,
  `opis` text NOT NULL,
  PRIMARY KEY (`ID_lokalu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `lokale`
--

INSERT INTO `lokale` (`ID_lokalu`, `opis`) VALUES
(0, 'dgdf');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rodzaj_user`
--

CREATE TABLE IF NOT EXISTS `rodzaj_user` (
  `ID_RodzajUser` int(11) NOT NULL,
  `Kto` text NOT NULL,
  PRIMARY KEY (`ID_RodzajUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `rodzaj_user`
--

INSERT INTO `rodzaj_user` (`ID_RodzajUser`, `Kto`) VALUES
(0, 'Użytkownik'),
(1, 'Restaurator');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `skladniki`
--

CREATE TABLE IF NOT EXISTS `skladniki` (
  `ID_Skladnika` int(11) NOT NULL AUTO_INCREMENT,
  `Skladnik` text NOT NULL,
  `Ilość` text NOT NULL,
  `Opis` text NOT NULL,
  PRIMARY KEY (`ID_Skladnika`),
  UNIQUE KEY `ID_Skladnika` (`ID_Skladnika`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Zrzut danych tabeli `skladniki`
--

INSERT INTO `skladniki` (`ID_Skladnika`, `Skladnik`, `Ilość`, `Opis`) VALUES
(2, 'Mango', '10000', 'Mango'),
(6, 'Kiwi', '10000', 'Kiwi'),
(9, 'Jajka', '10000', 'Jajka'),
(10, 'Pomarancze', '10000', 'Pomarańcze'),
(11, 'Maka', '10000', 'Mąka'),
(12, 'Mleko', '10000', 'Mleko'),
(13, 'Jajka', '10000', 'Jajka'),
(14, 'Drozdze', '10000', 'Drożdże'),
(15, 'Smietana', '10000', 'Śmietana'),
(16, 'Czekolada', '10000', 'Czekolada'),
(17, 'Ziemniaki', '10000', 'Ziemniaki'),
(18, 'Marakuja', '100 sztuk', 'brak'),
(19, 'Orzech', '20 sztuk', 'brak'),
(20, 'Cukier', '100 kg', 'brak'),
(21, 'Homary', '20', 'Å?wieÅ¼e homary');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `ID_User` int(11) NOT NULL AUTO_INCREMENT,
  `Imie` text NOT NULL,
  `Nazwisko` text NOT NULL,
  `Login` text NOT NULL,
  `Password` text NOT NULL,
  `ID_RodzajUser` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_User`),
  KEY `ID_User` (`ID_User`),
  KEY `ID_RodzajUser` (`ID_RodzajUser`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`ID_User`, `Imie`, `Nazwisko`, `Login`, `Password`, `ID_RodzajUser`) VALUES
(1, 'ja', 'naz', 'har', '', 1),
(2, '5ee', 'ryt', '545', 'ryrty', 1),
(3, '', '', '', '', 0),
(4, 'a', 'b', 'c', 'd', 0),
(5, 'q', 'w', 'e', 's', 0),
(6, 'asf', 'dsfh', 'fgj', 'g', 0),
(7, 'Krzysztof', 'Pazdyk', 'ja', 'ja', 0),
(8, 'Krzysztof', 'Pazdyk', 'jajyreuytruyt', '12', 0),
(9, 'Dawid', 'dawd', 'dawid', 'zaq1', 0),
(10, 'Krzysztof', 'Pazdyk', 'qazwsx', 'a', 0),
(11, 'Agnieszka', 'Agusia', 'aga', 'zaq1', 0),
(12, 'Kucharz', 'Kucharz', 'Kucharz', 'kucharz', 0),
(13, 'kelner', 'kelner', 'kelner', 'kelner', 0),
(14, 'dostawca', 'dostawca', 'dostawca', 'dostawca', 0),
(15, 'restaurator', 'restaurator', 'restaurator', 'restaurator', 0),
(16, 'zaopatrzenie', 'zaopatrzenie', 'zaopatrzenie', 'zaopatrzenie', 0),
(17, '<br> dgdfgdf<br>', '<br> dgdfgdf<br>', '<br> dgdfgdf<br>', '<br> dgdfgdf<br>', 0),
(18, '<b> dgdfgdf<b>', '<b> dgdfgdf<b>', '<b> dgdfgdf<b>', '<b> dgdfgdf<b>', 0),
(19, 'xxx', 'xxx', 'xxx', 'xxx', 0),
(20, 'x', 'x', 'x', 'x', 0),
(21, 'Krzysztof', 'qwerty', 'Krzysztof', 'ja', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wskazowki`
--

CREATE TABLE IF NOT EXISTS `wskazowki` (
  `ID_Dania` int(11) NOT NULL,
  `wskazowka` varchar(200) NOT NULL,
  PRIMARY KEY (`ID_Dania`,`wskazowka`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zdjeciadania`
--

CREATE TABLE IF NOT EXISTS `zdjeciadania` (
  `ID_Dania` int(11) NOT NULL,
  `zdjecie` varchar(200) NOT NULL,
  PRIMARY KEY (`ID_Dania`,`zdjecie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `daniaskladniki`
--
ALTER TABLE `daniaskladniki`
  ADD CONSTRAINT `daniaskladniki_ibfk_1` FOREIGN KEY (`ID_Dania`) REFERENCES `danie` (`ID_Dania`) ON UPDATE CASCADE,
  ADD CONSTRAINT `daniaskladniki_ibfk_2` FOREIGN KEY (`ID_Skladnika`) REFERENCES `skladniki` (`ID_Skladnika`) ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `danie`
--
ALTER TABLE `danie`
  ADD CONSTRAINT `danie_ibfk_1` FOREIGN KEY (`ID_User`) REFERENCES `users` (`ID_User`) ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `danielokal`
--
ALTER TABLE `danielokal`
  ADD CONSTRAINT `danielokal_ibfk_1` FOREIGN KEY (`ID_Dania`) REFERENCES `danie` (`ID_Dania`) ON UPDATE CASCADE,
  ADD CONSTRAINT `danielokal_ibfk_2` FOREIGN KEY (`ID_lokalu`) REFERENCES `lokale` (`ID_lokalu`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
