s-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 06. Jun 2015 um 12:43
-- Server Version: 5.6.20
-- PHP-Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `Quizdatenbank`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Aufgabe`
--

CREATE TABLE IF NOT EXISTS `Aufgabe` (
  `AufgabeID` int(11) NOT NULL,
  `Frage` text NOT NULL,
  `KorrekteAntwort` text NOT NULL,
  `FalscheAntwortA` text NOT NULL,
  `FalscheAntwortB` text NOT NULL,
  `FalscheAntwortC` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `Aufgabe`
--

INSERT INTO `Aufgabe` (`AufgabeID`, `Frage`, `KorrekteAntwort`, `FalscheAntwortA`, `FalscheAntwortB`, `FalscheAntwortC`) VALUES
(1, 'Welche Insel ist die größte der Welt?', 'Grönland', 'England', 'Australien', 'Alaska'),
(2, 'Welcher Planet ist der größte des Sonnensystems?', 'Jupiter', 'Mars', 'Saturn', 'Pluto'),
(3, 'In welchem Jahr wurde Rom gegründet?', '753 v Chr.', '333 v. Chr.', '1789 n Chr.', '1956'),
(4, 'Wer wurde im Jahr 2014 Weltmeister?', 'Deutschland', 'Spanien', 'Italien ', 'Brasilien'),
(5, 'Im welchen Jahr begann die Reformation?', '1543 n. Chr.', '2012 n. Chr.', '300 v. Chr.', '1467 n. Chr.'),
(6, 'Welches ist das größte Land der Erde?', 'Russland ', 'Schweiz ', 'Brasilien', 'Argentinien '),
(7, 'Welche Richtgeschwindigkeit gilt auf Autobahnen?', '130 km/h', '100 km/h', '120 km/h', '80 km/h'),
(8, 'Wie viele Menschen lebten 2014 auf der Welt?', 'ca. 7 Milliarden', 'ca. 8 Milliarden', 'ca. 4 Milliarden', 'ca. 280 Millionen'),
(9, 'Wann war der erste Weltkrieg?', '1914-1918', '1951-1999', '1230-1270', '1860-1900'),
(10, 'Wann war der zweite Weltkrieg?', '1939-1945', '1954-1993', '1914-1918', '1999-2015'),
(11, 'Welcher dieser Menschen ist ein Philosoph?', 'Immanuel Kant', 'Lukas Podolski', 'Angela Merkel', 'Günther Jauch'),
(12, 'Wann wurde die erste Atombombe gezündet?', '1945', '1555', '2. v. Chr.', 'Nie'),
(13, 'Wie hoch ist der Anteil an Sauerstoff in der Luft?', 'ca. 21%', 'ca. 80%', '1', 'ca. 50%'),
(14, 'Wann ist die Berliner Mauer gefallen?', '1989', '1860', '2000', '1889'),
(15, 'Wer hat die Firma Microsoft gegründet?', 'Bill Gates', 'Steve Jobs', 'Johnny Depp', 'Stefan Raab'),
(16, 'Welche Farbe hat keine Helligkeit?', 'Schwarz', 'Weiß', 'Blau', 'Grün'),
(17, 'Wer war der erste Mensch auf dem Mond?', 'Neil Armstrong', 'Buzz Aldrin', 'Michael Collins', 'Charles Conrad'),
(18, 'Wann wurde mit dem Bau der chinesische Mauern begonnen?', 'ca. 700 v. Chr.', '1950', 'ca. 200 v. Chr.', '1945'),
(19, 'Was bedeutet "Bonjour"?', 'Guten Tag!', 'Auf Wiedersehen!', 'Bis bald!', 'Danke!'),
(20, 'Wie heißt die Hauptstadt von Grönland?', 'Nuuk', 'Uummannaq', 'Narsaq', 'Ittoqqortoormiit'),
(21, 'Wie viele Bundesstaaten hat die USA?', '50', '30', '25', '60'),
(22, 'Wer ist ein berühmter Formel 1-Rennfahrer?', 'Hamilton', 'Reus', 'Putin', 'Klitschko'),
(23, 'Welche Stadt liegt nicht in Deutschland?', 'Straßburg', 'Staßfurt', 'Alzey', 'St. Blasien'),
(24, 'Was bringt laut Aberglaube Unglück?', 'schwarze Katze', 'Stuhl', 'Turteltauben', 'Sonne'),
(25, 'Wie oft wurde Deutschland Weltmeister im Fußball?', '4', '1', '6', '5'),
(26, 'Wann kam das erste iPhone auf den Markt?', '2007', '2006', '2008', '2009'),
(27, 'Wie heißt die Hauptstadt Deutschlands?', 'Berlin', 'Bottrop', 'Castrop-Rauxel', 'Celle'),
(28, 'Welcher der folgenden Charaktere ist in GTA 5 nicht spielbar?', 'Lester', 'Franklin', 'Trevor', 'Michael'),
(29, 'Aus welchem Land stammt der ehemalige Weltfußballer Diego Maradonna?', 'Argentinien', 'Deutschland', 'China', 'Brasilien'),
(30, 'Wann fand die französische Revolution statt?', '1789', 'gar nicht', '2011', '593 v. Chr.'),
(31, 'Welche Firma brachte das Spiel GTA 5 raus?', 'Rockstar Games', 'Sony ', 'Apple', 'Es ist noch nicht geplant.'),
(32, 'Wo steht der schiefe Turm von Pisa?', 'Pisa', 'Rom', 'Tokio', 'Düsseldorf'),
(33, 'Welches Tier ist das giftigste der Welt?', 'Würfelqualle', 'Inlandtaipan', 'Pfeilgiftfrosch', 'Sydney-Trichterspinne'),
(34, 'In welchem Land leben die meisten giftigen Tiere?', 'Australien', 'China', 'USA', 'Taiwan'),
(35, 'Wer gewann die Fussballweltmeisterschaft im Jahr 1954?', 'BR Deutschland', 'Ungarn', 'Österreich', 'Uruguay'),
(36, 'Wie viele Oscars hat Leonardo DiCaprio gewonnen?', '0', '1', '3', '5'),
(37, 'Wer wurde Fußballer des Jahres 2014?', 'Cristiano Ronaldo', 'Lionel Messi', 'Manuel Neuer', 'Arjen Robben'),
(38, 'Was ist die Hauptstadt von Brasilien?', 'Brasília', 'Rio de Janeiro', 'Recife', 'Sao Paolo'),
(39, 'In welchem Jahr ist Michael Jackson gestorben?', '2009', '2008', '2011', '2014'),
(40, 'Welches Musikalbum wurde am meisten verkauft?', 'Thriller', 'King', 'Bad', 'Dirty Dancing'),
(41, 'Welcher Film ist der erfolgreichste Film aller Zeiten?', 'Avatar', 'Titanic', 'Star Wars IV', 'Transformers'),
(42, 'Wer hat die Glühbirne erfunden?', 'Thomas Edison', 'Steve Jobs', 'Hiram Maxim', 'Roy Sullivan'),
(43, 'Was ist der Hauptbestandteil von Bleistiftminen?', 'Graphit', 'Blei', 'Kohle', 'Marmor'),
(44, 'Welches Rentier besitzt eine rote Nase?', 'Rudolph', 'Tom', 'Reiner', 'Barnie'),
(45, 'Wie viele Säulen hat das Brandenburger Tor?', '6', '4', '8', '5'),
(46, 'Wie viele Spieler hat eine Handballmannschaft?', '7', '8', '5', '6'),
(47, 'Wie heißt der römische Kriegsgott?', 'Mars', 'Twix', 'Snickers', 'Kinderriegel'),
(48, 'Wie heißt der Bär aus dem Film Dschungelbuch?', 'Balu', 'Shirkhan', 'Baghira', 'King Loui'),
(49, 'Welches Tier ist nicht bei den "Bremer Stadtmusikanten" dabei?', 'Luchs', 'Hund', 'Esel', 'Hahn'),
(50, 'Wie heißt eine berühmtes Nachschlagewerk?', 'Brockhaus', 'Backhaus', 'Gasthaus', 'Hexenhaus'),
(51, 'Was wurde früher für die Abwehr von bösen Geistern benutzt?', 'Kürbis', 'Petersilie', 'Zwiebeln', 'Knoblauch'),
(52, 'Welche Schweizer Käse ist bekannt für seine Löcher?', 'Emmentaler', 'Gouda ', 'Emmensilber', 'Emmengroschen'),
(53, 'Was darf bei einer Waschmaschine nicht fehlen?', 'Trommel', 'Schlagzeug', 'Pauke', 'Bongo'),
(54, 'Welche Fischart gibt es wirklich?', 'Guppy', 'Gappu', 'Guppa', 'Gippy'),
(55, 'Was ist ein "Undercut"?', 'Haarschnitt ', 'Operationsmethode ', 'Sportart', 'Technik beim Steakschneiden '),
(56, 'Welches Wahrzeichen ist in Paris zu bewundern?', 'Eiffelturm', 'Big Ben', 'schiefer Turm von Pisa', 'Brandenburger Tor'),
(57, 'Welcher Baum wirft im Winter seine Nadeln ab?', 'Lärche', 'Kiefer', 'Fichte', 'Tanne'),
(58, 'Zwischen welchen beiden Ländern liegt der Ärmelkanal?', 'Frankreich und Großbritannien', 'Spanien und Portugal', 'Russland und Finnland', 'Deutschland und Frankreich'),
(59, 'Wie heißt das heilige Buch der Muslime?', 'Koran', 'Thora', 'Bibel', 'Lexikon'),
(60, 'Wie viele Bundesländer hat Deutschland?', '16', '21', '24', '18'),
(61, 'Auf wie vielen Linien notiert man normalerweise Musiknoten?', '5', '3', '6', '4'),
(62, 'Welcher geometrische Körper hat fünf Flächen?', 'Pyramide', 'Würfel', 'Zylinder', 'Kegel'),
(63, 'Was braucht Feuer zum Brennen?', 'Sauerstoff', 'Kohlendioxid', 'Helium', 'Stickstoff'),
(64, 'Welche dieser Formen ist keine Form von "to be"?', 'can', 'is', 'been', 'am'),
(65, 'In welchem Jahr starb John F. Kennedy durch ein Attentat?', '1963', '1950', '1967', '1973'),
(66, 'Welches Tier ist das größte der Welt?', 'Blauwal', 'Elefant', 'Pottwal', 'Braunbär'),
(67, 'In welchem Jahr fand die erste Mondlandung statt?', '1969', '1984', '1942', '1971'),
(68, 'Welcher Planet wird auch Abendstern genannt?', 'Venus', 'Mars', 'Jupiter', 'Erde'),
(69, 'Wie nennt man eine selbst geschriebene Lebensgeschichte?', 'Autobiographie', 'Lebenslauf', 'Biographie', 'Sonett'),
(70, 'Wer hat die "Zauberflöte" komponiert?', 'Mozart', 'Beethoven', 'Bach', 'Webber'),
(71, 'Wofür stehen die Olympischen Ringe?', 'Kontinente', 'Tugenden', 'Sportarten', 'Vereine'),
(72, 'Welche Krankheit wird mit Insulin behandelt?', 'Diabetes', 'Asthma', 'Gicht', 'Rheuma'),
(73, 'Wie groß ist der Erdumfang?', '40 000 km', '15 000 km', '120 000 km', '25 000 km'),
(74, 'Wer wählt den Bundeskanzler / die Bundeskanzlerin ?', 'Bundestag', 'Volk', 'Bundesrat', 'Regierung'),
(75, 'Was zeigt ein Barometer an?', 'Luftdruck', 'Luftfeuchtigkeit', 'Lufttemperatur', 'Luftverschmutzung'),
(76, 'Wie heißt das westliche Militärbündnis?', 'NATO', 'NATRON', 'UNO', 'Unicef'),
(77, 'Welches Land hatte im zweiten Weltkrieg die meisten Toten zu beklagen?', 'Sowjetunion', 'Deutschland', 'Frankreich', 'USA'),
(78, 'In welcher Einheit wird der elektrische Widerstand gemessen?', 'Ohm', 'Volt', 'Watt', 'Ampere'),
(79, 'Wie heißt die kleinste Speichereinheit eines informatischen Systems?', 'Bit', 'Byte', 'Kilobyte', 'Flop'),
(80, 'Mit welchem anderen Begriff bezeichnet man radioaktiven Niederschlag?', 'Fallout', 'sauerer Regen', 'Plutoplumbs', 'Fog'),
(81, 'Welche Sprache sprach Jesus?', 'Aramäisch', 'Griechisch', 'Latein', 'Hebräisch'),
(82, 'Welche Pflanze bildet keine Zwiebel?', 'Petunie', 'Krokus', 'Narzisse', 'Tulpe'),
(83, 'Wie hieß der Komponist Beethoven mit Vornamen?', 'Ludwig', 'Siegmund', 'Wolfgang', 'Amadeus'),
(84, 'Zu welcher Epoche gehört der Komponist W. A. Mozart?', 'Klassik', 'Romantik', 'Barock', 'Renaissance'),
(85, 'Zu welcher Epoche gehört der Komponist J. S. Bach?', 'Barock', 'Klassik', 'Romantik', 'Renaissance'),
(86, 'Welche dieser Pflanzen gehört nicht zu den Kräutern?', 'Möhre', 'Schnittlauch', 'Petersilie', 'Kerbel'),
(87, 'Welcher der folgenden Bäume ist kein Nadelbaum?', 'Linde', 'Fichte', 'Tanne', 'Lärche'),
(88, 'Welches Musical ist nicht von A. L. Webber komponiert?', 'Hair', 'Cats', 'Phantom der Oper', 'Sunset Boulevard'),
(89, 'Welches Musical komponierte L. Bernstein?', 'West Side Story', 'Hair', 'Cats', 'Starlight Express'),
(90, 'Welche Sprache ist keine Landessprache der Schweiz?', 'Holländisch', 'Deutsch ', 'Französisch', 'Italienisch'),
(91, 'Wie viele Wochen dauert eine Schwangerschaft beim Menschen?', '40', '9', '22', '36'),
(92, 'In welcher Sprache wurde das Alte Testament der Bibel geschrieben?', 'Hebräisch', 'Latein', 'Griechisch', 'Deutsch'),
(93, 'In welcher Sprache wurde das Neue Testament der Bibel geschrieben?', 'Griechisch', 'Latein', 'Hebräisch', 'Deutsch'),
(94, 'Aus wie vielen Gramm besteht ein Kilogramm?', '1000', '100', '10', '10 000'),
(95, 'Aus wie vielen Quadratmetern besteht ein Quadratkilometer?', '1 000 000', '1000', '100', '10 000'),
(96, 'Aus wie vielen Sekunden besteht eine Stunde?', '3 600', '24', '60', '183 600'),
(97, 'Woran arbeiten die Wissenschaftler am CERN in Genf?', 'Kernforschung', 'Gentechnik', 'Weltraumforschung', 'Klonen'),
(98, 'Welcher dieser englischen Namen bezeichnet keine Blume?', 'Mary', 'Rose', 'Daisy', 'Lily'),
(99, 'Welcher dieser Moderatoren hat nie „Wetten, dass?“ moderiert?', 'Stefan Raab', 'Thomas Gottschalk', 'Wolfgang Lippert', 'Frank Elstner');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `hatBearbeitet`
--

CREATE TABLE IF NOT EXISTS `hatBearbeitet` (
  `SpielerID` int(11) NOT NULL,
  `AufgabeID` int(11) NOT NULL,
  `AnzahlBearbeitungen` int(11) NOT NULL,
  `AnzahlKorrekteBearbeitungen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
+
-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Spieler`
--

CREATE TABLE IF NOT EXISTS `Spieler` (
  `SpielerID` int(11) NOT NULL,
  `Benutzername` text NOT NULL,
  `Passwort` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `Spieler`
--

INSERT INTO `Spieler` (`SpielerID`, `Benutzername`, `Passwort`) VALUES
(1, 'Tim', '1234'),
(2, 'Tom', '1234'),
(3, 'Tina', '1234'),
(4, 'Tanja', '1234');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
