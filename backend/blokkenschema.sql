-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 17 jan 2023 om 10:00
-- Serverversie: 10.4.21-MariaDB
-- PHP-versie: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `festival`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `blokkenschema`
--

CREATE TABLE `blokkenschema` (
  `Id` int(11) NOT NULL,
  `Workshop_naam` varchar(200) NOT NULL,
  `Spreker` varchar(200) NOT NULL,
  `Ruimte` varchar(200) NOT NULL,
  `Start_tijd` varchar(50) NOT NULL,
  `Eind_tijd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `blokkenschema`
--

INSERT INTO `blokkenschema` (`Id`, `Workshop_naam`, `Spreker`, `Ruimte`, `Start_tijd`, `Eind_tijd`) VALUES
(2, 'Welkom en informele start', 'Karoline Wiegerink', '1', '13:45', '14:00'),
(3, 'Plenaire Kick-Off dagvoorzitter & Alle festival themas worden kort gepitcht', 'Arjen van Hijum', '2', '14:00', '14:45'),
(4, 'Workshop: De Gouden Regels voor Klantvriendelijkheid in de toekomst', 'Bas Peters en Gerrit Piksen', '8', '14:45', '15:20'),
(5, 'Workshop: Creatief met CX', 'Babs Asselbergs', '5', '14:45', '15:20'),
(6, 'Themasessie: Van beleving naar betekenis (case Betaald Voetbal)', 'Themasessie: Van beleving naar betekenis (case Betaald Voetbal)', '3', '14:45', '15:20'),
(7, 'Themasessie: De toekomst van klantgerichte organisaties in 280 tekens', 'Daan Noordeloos (Due North Consultancy), Evert Vols (Buro Improof), Stephan van Slooten (Altuïtion) en Kees Kerkvliet (TOTE-M) ', '2', '14:45', '15:20'),
(8, 'Themasessie: De data gedreven toekomst (Case UWV: Verantwoorde toezicht algoritmes)', 'Robin Philippo (UWV) en Riens Koopman (Cmotions) en Serge Poppes (Pegamento)', '3', '15:20', '15:55'),
(9, 'Workshop Ecosysteem Mapping ', 'Stein Wetzer en Wim Rampen (Livework Studio)', '2', '15:20', '15:55'),
(10, 'Verdieping: Doorpraten over de klantgerichte organisatie van de toekomst met AkzoNobel', 'AkzoNobel onder leiding van Daan Noordeloos (Due North Consultancy) en Stephan van Slooten (Altuïtion)', '4', '15:20', '15:55'),
(11, 'Workshop: De Gouden Regels voor Klantvriendelijkheid in de toekomst', 'Bas Peters en Gerrit Piksen (MarketResponse)', '1', '16:20', '16:55'),
(12, 'Themasessie: De data gedreven toekomst (case Florius)', 'Deliane Schimmel (Florius) en Kees Groenewoud (Cmotions)', '5', '16:20', '16:55'),
(13, 'Themasessie: Van beleving naar betekenis (case participatiesamenleving) ', 'Rob Beltman (H3ROES) en Jasper Klapwijk (Kantelingen)', '6', '16:20', '16:55'),
(14, 'Themasessie Van klantrelaties naar ecosystemen | De digitale klantreis, een randvoorwaarde voor je ecosysteem', 'Gerard Datema (excap)', '2', '16:55', '17:30'),
(15, 'Workshop: Van beleving naar betekenis: de BossUp! game', 'Bas Berkhout (Chemistry Team)', '2', '16:55', '17:30'),
(16, 'Conclusies en knallend einde door dagvoorzitter', 'Arjen van Hijum', '1', '17:30', '18:00');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `blokkenschema`
--
ALTER TABLE `blokkenschema`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `blokkenschema`
--
ALTER TABLE `blokkenschema`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
