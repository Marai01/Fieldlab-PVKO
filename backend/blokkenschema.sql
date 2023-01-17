SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

DROP TABLE IF EXISTS `blokkenschema`;
CREATE TABLE `blokkenschema` (
  `id` mediumint(9) NOT NULL,
  `Workshop_naam` varchar(100) NOT NULL,
  `Spreker` varchar(100) DEFAULT NULL,
  `Ruimte` varchar(100) NOT NULL,
  `Start_tijd` time NOT NULL,
  `Eind_tijd` time NOT NULL,
  `url_programma` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Gegevens worden geëxporteerd voor tabel `blokkenschema`
--

INSERT INTO `blokkenschema` (`id`, `Workshop_naam`, `Spreker`, `Ruimte`, `Start_tijd`, `Eind_tijd`, `url_programma`) VALUES
(1, 'Welkom in een winterse sfeer', 'PVKO', '1', '13:00:00', '13:45:00', ''),
(2, 'Welkom in een winterse sfeer', 'PVKO', '3', '13:00:00', '13:45:00', ''),
(3, 'Welkom in een winterse sfeer', 'PVKO', '4', '13:00:00', '13:45:00', ''),
(4, 'Welkom in een winterse sfeer', 'PVKO', '5', '13:00:00', '13:45:00', ''),
(5, 'Welkom in een winterse sfeer', 'PVKO', '6', '13:00:00', '13:45:00', ''),
(6, 'Welkom in een winterse sfeer', 'PVKO', '7', '13:00:00', '13:45:00', ''),
(7, 'Kick-Off plenair', 'Arjan van Hijum', '1', '14:00:00', '14:45:00', ''),
(8, 'Van klantrelaties naar ecosysteem (case KVK) ', 'Fabian', '1', '14:45:00', '15:20:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-4'),
(9, 'Data gedreven toekomst (Case UWV)', 'Fabian', '1', '15:20:00', '15:55:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-5'),
(10, 'Pauze', 'Fabian', '1', '15:55:00', '16:20:00', ''),
(11, 'Pauze', NULL, '3', '15:55:00', '16:20:00', ''),
(12, 'Pauze', NULL, '4', '15:55:00', '16:20:00', ''),
(13, 'Pauze', NULL, '5', '15:55:00', '16:20:00', ''),
(14, 'Pauze', NULL, '6', '15:55:00', '16:20:00', ''),
(15, 'Pauze', NULL, '7', '15:55:00', '16:20:00', ''),
(16, 'Data gedreven toekomst (Case Florius)', 'Fabian', '1', '16:20:00', '16:55:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-7'),
(17, 'Van klantrelaties naar ecosysteem (de digitale klantreis)', NULL, '1', '16:55:00', '17:30:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-8'),
(18, 'Eindpresentatie Algemeen', 'Fabian', '1', '17:30:00', '18:00:00', ''),
(19, 'Napraten met hap, drank en lach in het speelkwartier', 'Borrel', '1', '18:00:00', '20:00:00', ''),
(20, 'Welkom in een winterse sfeer', 'PVKO', '2', '13:00:00', '13:30:00', NULL),
(21, 'Kick-Off plenair', NULL, '2', '14:00:00', '14:45:00', NULL),
(22, 'De toekomst van KG Org. in 280 tekens', NULL, '2', '14:45:00', '15:20:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-4'),
(23, 'Tech-Touch balans van de toekomst', NULL, '2', '15:20:00', '15:55:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-4'),
(24, 'Pauze', NULL, '2', '16:20:00', '16:55:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-7'),
(25, 'Tech-Touch Balans van de toekomst (deel 2)', NULL, '2', '16:20:00', '16:55:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-7'),
(26, 'De toekomst van de KG Org. in 280 tekens', NULL, '2', '16:55:00', '17:30:00', NULL),
(27, 'Workshop: De Gouden Regels voor Klantvriendelijkheid in de toekomst', 'Bas Peters en Gerrit Piksen', '7', '14:45', '15:20', NULL),
(28, 'Workshop: Creatief met CX', 'Babs Asselbergs', '5', '14:45', '15:20', NULL),
(29, 'Themasessie: Van beleving naar betekenis (case Betaald Voetbal)', 'Themasessie: Van beleving naar betekenis (case Betaald Voetbal)', '3', '14:45', '15:20', NULL),
(30, 'Workshop: Eco-systeem mapping', 'Robin Philippo (UWV) en Riens Koopman (Cmotions) en Serge Poppes (Pegamento)', '3', '15:20', '15:55', NULL),
(31, 'Verdieping: Doorpraten over de klantgerichte organisatie van de toekomst met AkzoNobel', 'AkzoNobel onder leiding van Daan Noordeloos (Due North Consultancy) en Stephan van Slooten (Altuïtion)', '4', '15:20', '15:55', NULL),
(32, 'Themasessie: De data gedreven toekomst (case Florius)', 'Deliane Schimmel (Florius) en Kees Groenewoud (Cmotions)', '5', '16:20', '16:55', NULL),
(33, 'Themasessie: Van beleving naar betekenis (case participatiesamenleving) ', 'Rob Beltman (H3ROES) en Jasper Klapwijk (Kantelingen)', '6', '16:20', '16:55', NULL);

ALTER TABLE `blokkenschema`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `blokkenschema`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;
