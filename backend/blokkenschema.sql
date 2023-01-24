DROP DATABASE IF EXISTS deb77629n3_pvko;
CREATE DATABASE deb77629n3_pvko;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

DROP TABLE IF EXISTS `blokkenschema`;
CREATE TABLE `blokkenschema` (
  `id` mediumint(9) NOT NULL,
  `Workshop_naam` varchar(100) NOT NULL,
  `Spreker` varchar(100) DEFAULT NULL,
  `zaal` varchar(100) NOT NULL,
  `Start_tijd` time NOT NULL,
  `Eind_tijd` time NOT NULL,
  `url_programma` text DEFAULT NULL,
  `session` varchar(100) NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Gegevens worden geëxporteerd voor tabel `blokkenschema`
--

INSERT INTO `blokkenschema` (`id`, `Workshop_naam`, `Spreker`, `zaal`, `Start_tijd`, `Eind_tijd`, `url_programma`, `session`) VALUES
(1, 'Welkom in een winterse sfeer', 'PVKO', '21', '13:00:00', '13:45:00', '', NULL),
(20, 'Welkom in een winterse sfeer', 'PVKO', '1', '13:00:00', '13:45:00', '', NULL),
(2, 'Welkom in een winterse sfeer', 'PVKO', '23', '13:00:00', '13:45:00', '', NULL),
(3, 'Welkom in een winterse sfeer', 'PVKO', '1A', '13:00:00', '13:45:00', '', NULL),
(4, 'Welkom in een winterse sfeer', 'PVKO', '11', '13:00:00', '13:45:00', '', NULL),
(5, 'Welkom in een winterse sfeer', 'PVKO', '20', '13:00:00', '13:45:00', '', NULL),
(6, 'Welkom in een winterse sfeer', 'PVKO', '8', '13:00:00', '13:45:00', '',  NULL),
(7, 'Kick-Off plenair', 'Arjan van Hijum', '14', '14:00:00', '14:45:00', '', NULL),
(8, 'Van klantrelaties naar ecosysteem (case KVK) ', 'Fabian', '21', '14:45:00', '15:20:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-4', '1.1'),
(9, 'Data gedreven toekomst (Case UWV)', 'Fabian', '21', '15:20:00', '15:55:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-5', '2.1'),
(10, 'Pauze', 'Fabian', '21', '15:55:00', '16:20:00', '', NULL),
(11, 'Pauze', NULL, '23', '15:55:00', '16:20:00', '', NULL),
(12, 'Pauze', NULL, '1A', '15:55:00', '16:20:00', '', NULL),
(13, 'Pauze', NULL, '11', '15:55:00', '16:20:00', '', NULL),
(14, 'Pauze', NULL, '20', '15:55:00', '16:20:00', '', NULL),
(21, 'Pauze', NULL, '1', '15:55:00', '16:20:00', '', NULL),
(15, 'Pauze', NULL, '8', '15:55:00', '16:20:00', '', NULL),
(16, 'Data gedreven toekomst (Case Florius)', 'Fabian', '21', '16:20:00', '16:55:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-7', '3.1'),
(17, 'Van klantrelaties naar ecosysteem (de digitale klantreis)', NULL, '21', '16:55:00', '17:30:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-8', '4.1'),
(18, 'Eindpresentatie Algemeen', 'Fabian', '14', '17:30:00', '18:00:00', '', NULL),
(19, 'Napraten met hap, drank en lach in het speelkwartier', 'Borrel', '21', '18:00:00', '20:00:00', '', NULL),
(34, 'Napraten met hap, drank en lach in het speelkwartier', 'Borrel', '23', '18:00:00', '20:00:00', '', NULL),
(35, 'Napraten met hap, drank en lach in het speelkwartier', 'Borrel', '1A', '18:00:00', '20:00:00', '', NULL),
(36, 'Napraten met hap, drank en lach in het speelkwartier', 'Borrel', '11', '18:00:00', '20:00:00', '', NULL),
(37, 'Napraten met hap, drank en lach in het speelkwartier', 'Borrel', '1', '18:00:00', '20:00:00', '', NULL),
(38, 'Napraten met hap, drank en lach in het speelkwartier', 'Borrel', '20', '18:00:00', '20:00:00', '', NULL),
(39, 'Napraten met hap, drank en lach in het speelkwartier', 'Borrel', '8', '18:00:00', '20:00:00', '', NULL),
(22, 'De toekomst van KG Org. in 280 tekens', NULL, '1', '14:45:00', '15:20:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-4', '1.2'),
(23, 'Tech-Touch balans van de toekomst', NULL, '14', '15:20:00', '15:55:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-4', '2.2'),
(24, 'Pauze', NULL, '2', '16:20:00', '16:55:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-7', NULL),
(25, 'Tech-Touch Balans van de toekomst (deel 2)', NULL, '14', '16:20:00', '16:55:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-7', '3.2'),
(26, 'De toekomst van de KG Org. in 280 tekens', NULL, '1', '16:55:00', '17:30:00', NULL, '4.2'),
(27, 'Workshop: De Gouden Regels voor Klantvriendelijkheid in de toekomst', 'Bas Peters en Gerrit Piksen', '13', '14:45', '15:15', NULL, '1.5'),
(40, 'Workshop: De Gouden Regels voor Klantvriendelijkheid in de toekomst', 'Bas Peters en Gerrit Piksen', '13', '15:20', '15:50', NULL, '2.5'),
(28, 'Workshop: Creatief met CX', 'Babs Asselbergs', '23', '14:45', '15:15', NULL, '1.4'),
(41, 'Workshop: Creatief met CX', 'Babs Asselbergs', '23', '15:20', '15:50', NULL, '2.4'),
(29, 'Themasessie: Van beleving naar betekenis (case Betaald Voetbal)', 'Themasessie: Van beleving naar betekenis (case Betaald Voetbal)', '11', '14:45', '15:20', NULL, '1.3'),
(30, 'Workshop: Eco-systeem mapping', 'Robin Philippo (UWV) en Riens Koopman (Cmotions) en Serge Poppes (Pegamento)', '8', '15:20', '15:55', NULL, '2.6'),
(31, 'Verdieping: Doorpraten over de klantgerichte organisatie van de toekomst met AkzoNobel', 'AkzoNobel onder leiding van Daan Noordeloos (Due North Consultancy) en Stephan van Slooten (Altuïtion)', '1A', '15:20', '15:55', NULL, '2.7'),
(32, 'Themasessie: De data gedreven toekomst (case Florius)', 'Deliane Schimmel (Florius) en Kees Groenewoud (Cmotions)', '20', '16:20', '16:55', NULL, '4.7'),
(42, 'Themasessie: De data gedreven toekomst (UWV)', 'UWV', '20', '16:20', '16:55', NULL, '4.6'),
(33, 'Themasessie: Van beleving naar betekenis (case participatiesamenleving) ', 'Rob Beltman (H3ROES) en Jasper Klapwijk (Kantelingen)', '11', '16:20', '16:55', NULL, '3.3');

ALTER TABLE `blokkenschema`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `blokkenschema`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;
