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
(2, 'Kick-Off plenair', 'Arjan van Hijum', '1', '14:00:00', '14:45:00', ''),
(3, 'Van klantrelaties naar ecosysteem (case KVK) ', 'Fabian', '1', '14:45:00', '15:20:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-4'),
(5, 'Data gedreven toekomst (Case UWV)', 'Fabian', '1', '15:20:00', '15:55:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-5'),
(6, 'Pauze', 'Fabian', '1', '15:55:00', '16:20:00', ''),
(7, 'Data gedreven toekomst (Case Florius)', 'Fabian', '1', '16:20:00', '16:55:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-7'),
(8, 'Van klantrelaties naar ecosysteem (de digitale klantreis)', NULL, '1', '16:55:00', '17:30:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-8'),
(9, 'Eindpresentatie Algemeen', 'Fabian', '1', '17:30:00', '18:00:00', ''),
(10, 'Napraten met hap, drank en lach in het speelkwartier', 'Borrel', '1', '18:00:00', '20:00:00', ''),
(11, 'Welkom in een winterse sfeer', 'PVKO', '2', '13:00:00', '13:30:00', NULL),
(12, 'Kick-Off plenair', NULL, '2', '14:00:00', '14:45:00', NULL),
(13, 'De toekomst van KG Org. in 280 tekens', NULL, '2', '14:45:00', '15:20:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-4'),
(14, 'Tech-Touch balans van de toekomst', NULL, '2', '15:20:00', '15:55:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-4'),
(15, 'Pauze', NULL, '2', '16:20:00', '16:55:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-7'),
(16, 'Tech-Touch Balans van de toekomst (deel 2)', NULL, '2', '16:20:00', '16:55:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-7'),
(17, 'De toekomst van de KG Org. in 280 tekens', NULL, '2', '16:55:00', '17:30:00', NULL),
(18, 'Workshop: De Gouden Regels voor Klantvriendelijkheid in de toekomst', 'Bas Peters en Gerrit Piksen', '8', '14:45', '15:20', NULL),
(19, 'Workshop: Creatief met CX', 'Babs Asselbergs', '5', '14:45', '15:20', NULL),
(20, 'Themasessie: Van beleving naar betekenis (case Betaald Voetbal)', 'Themasessie: Van beleving naar betekenis (case Betaald Voetbal)', '3', '14:45', '15:20', NULL),
(21, 'Themasessie: De data gedreven toekomst (Case UWV: Verantwoorde toezicht algoritmes)', 'Robin Philippo (UWV) en Riens Koopman (Cmotions) en Serge Poppes (Pegamento)', '3', '15:20', '15:55', NULL),
(22, 'Verdieping: Doorpraten over de klantgerichte organisatie van de toekomst met AkzoNobel', 'AkzoNobel onder leiding van Daan Noordeloos (Due North Consultancy) en Stephan van Slooten (Altuïtion)', '4', '15:20', '15:55', NULL),
(23, 'Themasessie: De data gedreven toekomst (case Florius)', 'Deliane Schimmel (Florius) en Kees Groenewoud (Cmotions)', '5', '16:20', '16:55', NULL),
(24, 'Themasessie: Van beleving naar betekenis (case participatiesamenleving) ', 'Rob Beltman (H3ROES) en Jasper Klapwijk (Kantelingen)', '6', '16:20', '16:55', NULL);

ALTER TABLE `blokkenschema`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `blokkenschema`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;
