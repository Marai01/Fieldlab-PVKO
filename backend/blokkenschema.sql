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
  `session` varchar(100) NULL,
  `ruimte` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Gegevens worden geëxporteerd voor tabel `blokkenschema`
--

INSERT INTO `blokkenschema` (`id`, `Workshop_naam`, `Spreker`, `zaal`, `Start_tijd`, `Eind_tijd`, `url_programma`, `session`, `ruimte`, `description`) VALUES
(1, 'Welkom in een winterse sfeer', 'PVKO', '21', '13:00:00', '13:45:00', '', '1'),
(20, 'Welkom in een winterse sfeer', 'PVKO', '1', '13:00:00', '13:45:00', '', '2'),
(2, 'Welkom in een winterse sfeer', 'PVKO', '23', '13:00:00', '13:45:00', '', '3'),
(3, 'Welkom in een winterse sfeer', 'PVKO', '1A', '13:00:00', '13:45:00', '', '4'),
(4, 'Welkom in een winterse sfeer', 'PVKO', '11', '13:00:00', '13:45:00', '', '5'),
(5, 'Welkom in een winterse sfeer', 'PVKO', '20', '13:00:00', '13:45:00', '', '6'),
(6, 'Welkom in een winterse sfeer', 'PVKO', '8', '13:00:00', '13:45:00', '', '7'),
(7, 'Kick-Off plenair', 'Arjan van Hijum', '14', '14:00:00', '14:45:00', '', '1'),
(8, 'Van klantrelaties naar ecosysteem (case KVK) ', 'Fabian', '21', '14:45:00', '15:20:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-4', '1.1', '1', "Hoe kun je je echt van betekenis zijn voor klanten door in een klantreis verder te kijken dan je eigen organisatie? Samenwerking met andere organisaties vanuit de levensgebeurtenissen van de klant van betekenis te zijn en blijven vraagt om een klantgericht ecosysteem. Wat vraagt zo'n samenwerking van organisaties? Waar lopen ze tegen aan? En hoe pakt men dit aan binnen de overheid zodat burgers en ondernemers ook een overheid ervaren?

In deze sessie gaan we in over hoe je dit kan aanpakken, wat de uitdagingen zijn en bespreken we een concrete case van de Kamer van Koophandel over de overheidsbrede aanpak van levensgebeurtenissen.

Door: Martijn Lentz (KvK), Nikkie de Bruijn (Kirkman Company) en Harald Lamberts (Essense)

#Ecosystemen #overheid #toekomstvisie"),
(9, 'Data gedreven toekomst (Case UWV)', 'Fabian', '21', '15:20:00', '15:55:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-5', '2.1', '1', "Data gedreven waardecreatie gaat in de toekomst niet alleen om de waarde die het oplevert voor de eigen organisatie maar met name voor de klant en de maatschappij! Privacy en dataethiek spelen daarin een cruciale rol ... zeker bij een uitvoeringsorganisatie als het UWV.

Het UWV zet data in voor haar toezichtstaak die zich richt op vroegtijdig signaleren van misbruik en oneigenlijk gebruik onder haar cliënten. Hiervoor wordt gebruik gemaakt van persoonsgegevens. Tevens worden algoritmes ontwikkeld en toegepast. Middels een concreet voorbeeld laat het UWV zien op welke wijze privacy en data ethiek hierin worden meegenomen. Leer van het risicomanagement raamwerk op weg naar de toekomst.

Door: Robin Philippo (UWV) en Riens Koopman (Cmotions) en Serge Poppes (Pegamento)

#datagedreven #algoritme #data ethiek #verantwoord #AVG #risicomodel #modellevenscyclus #governance"),
(10, 'Pauze', 'Fabian', '21', '15:55:00', '16:20:00', '', '1'),
(11, 'Pauze', NULL, '23', '15:55:00', '16:20:00', '', '2'),
(12, 'Pauze', NULL, '1A', '15:55:00', '16:20:00', '', '3'),
(13, 'Pauze', NULL, '11', '15:55:00', '16:20:00', '', '4'),
(14, 'Pauze', NULL, '20', '15:55:00', '16:20:00', '', '5'),
(21, 'Pauze', NULL, '1', '15:55:00', '16:20:00', '', '6'),
(15, 'Pauze', NULL, '8', '15:55:00', '16:20:00', '', '7'),
(16, 'Data gedreven toekomst (Case Florius)', 'Fabian', '21', '16:20:00', '16:55:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-7', '3.1', '1', "Data gedreven waardecreatie gaat in de toekomst niet alleen om de waarde die het oplevert voor de eigen organisatie maar met name voor de klant en de maatschappij! Hoe je data op een verantwoorde manier laat werken in de toekomst en hoe je daarin voortdurend op zoek moet naar de juiste balans tussen mens (CX en EX), organisatie en techniek leer je van Florius.

We kunnen niet meer om data heen. We hebben ontzettend veel informatie tot onze beschikking maar de vraag is wat we ermee doen en hoe we er ethisch mee om gaan. Wat heeft het voor impact op onze klanten en medewerkers? Medewerkers zijn echter wel onze belangrijkste asset dus is het van belang om hen zodanig te ondersteunen met technologie en klantdata, dat zij duurzaam inzetbaar kunnen zijn en blijven. Daarmee creëer je ambassadeurs voor je organisatie die de klant op een mensgerichte manier helpen.

Door Deliane Schimmel (Florius) en Kees Groenewoud (Cmotions)

#CX #Data #Technology #EmployeeExperience"),
(17, 'Van klantrelaties naar ecosysteem (de digitale klantreis)', NULL, '21', '16:55:00', '17:30:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-8', '4.1', '1', "Hoe gebruik ik digital om een ecosysteem neer te zetten en waar en hoe moet ik dan beginnen? Over 20 jaar (en natuurlijk veel eerder al) is optimale

dienstverlening via de digitale (snel)weg geen wens meer, maar een eis. Voor veel bedrijven is de digitalisering een uitdaging die zo groot is dat het maken van de juiste keuzes, in het juiste tempo lastig is … laat staan als we het niet alleen over klantrelaties maar ook ecosysteem relaties hebben.

Laat je onderdompelen in een mix van praktische voorbeelden, tools en kennis in de wereld van digital experience. En vind antwoorden op vragen als wat is mijn digital experience en hoe kan ik deze beïnvloeden? Hoe breng ik mijn digital journey in kaart? En hoe helpt mij dit waarde te creëren binnen ecosystemen.

Door: Gerard Datema (excap)

#Ecosysteem #EustomerExperience #Digita"),
(18, 'Eindpresentatie Algemeen', 'Fabian', '14', '17:30:00', '18:00:00', '', '1'),
(19, 'Napraten met hap, drank en lach in het speelkwartier', 'Borrel', '21', '18:00:00', '20:00:00', '', '1'),
(34, 'Napraten met hap, drank en lach in het speelkwartier', 'Borrel', '23', '18:00:00', '20:00:00', '', '2'),
(35, 'Napraten met hap, drank en lach in het speelkwartier', 'Borrel', '1A', '18:00:00', '20:00:00', '', '3'),
(36, 'Napraten met hap, drank en lach in het speelkwartier', 'Borrel', '11', '18:00:00', '20:00:00', '', '4'),
(37, 'Napraten met hap, drank en lach in het speelkwartier', 'Borrel', '1', '18:00:00', '20:00:00', '', '5'),
(38, 'Napraten met hap, drank en lach in het speelkwartier', 'Borrel', '20', '18:00:00', '20:00:00', '', '6'),
(39, 'Napraten met hap, drank en lach in het speelkwartier', 'Borrel', '8', '18:00:00', '20:00:00', '', '7'),
(22, 'De toekomst van KG Org. in 280 tekens', NULL, '1', '14:45:00', '15:20:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-4', '1.2', '2', "Ga in gesprek met vier experts over de toekomst van klantgericht organiseren. Op basis van vier visies op de toekomst van klantgerichte organisaties gaan we op zoek naar de belangrijkste drijvende en remmende krachten voor klantgericht ondernemen de komende 20 jaar. Ontdek welke uitdagingen de toekomst van jouw klantgerichte organisatie te wachten staan in vier tweets.

Door: Daan Noordeloos (Due North Consultancy), Evert Vols (Buro Improof), Stephan van Slooten (Altuïtion) en Kees Kerkvliet (TOTE-M)

#Klantgerichtondernemen #Transformatie #Customerexperience #Employeeexperience #Klantgerichtleiderschap"),
(23, 'Tech-Touch balans van de toekomst', NULL, '14', '15:20:00', '15:55:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-4', '2.2', '2', "Hoe vinden we de balans tussen menselijke technologie én het ondersteunen van mensen met technologie? De potentie van technologische ontwikkelingen voor een optimaal klantcontact is voor iedereen evident. Van

gegevensbeveiliging tot klantgerichte chatbots tot medewerker ervaring; er is geen gebied van de klantenservice dat onaangetast is door technieken zoals AI, IVR en NLP. Het zorgt voor kostenbesparingen, stimuleert klantbehoud en stelt medewerkers in staat om uitstekende ervaringen te bieden waardoor klanten blijven terugkomen. Maar de klant wil nog steeds direct contact met een medewerker wanneer het gaat om lastige vragen. En de klantenservice medewerker wil de klant nog steeds zo goed en zo snel mogelijk helpen!

Peter Jongeneel, Business Development Manager bij Content Guru, gaat in deze Tech-Touch sessie de discussie aan, samen met Vodafone Business en het publiek, over de veranderende verhouding tussen mens en machine en de afwegingen van klantgerichte organisaties. Samen gaan we een visie vormen hoe de toekomstige tech-touch balans eruit zal komen te zien komende jaren.

Door: Vodafone Business en Peter Jongeneel (Content Guru)

#Techtouch #Balans #CustomerExperience"),
(24, 'Pauze', NULL, '2', '16:20:00', '16:55:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-7', '2'),
(25, 'Tech-Touch Balans van de toekomst (deel 2)', NULL, '14', '16:20:00', '16:55:00', 'https://www.pvko.nl/bijeenkomsten/over/325/pvko-winterfestival-2023/schedule#activity-7', '3.2', '2', "Wat is de stip op de horizon? Hoe vinden we de balans tussen menselijke technologie én het ondersteunen van mensen met technologie?

#Techtouch #Balans #CustomerExperience"),
(26, 'De toekomst van de KG Org. in 280 tekens', NULL, '1', '16:55:00', '17:30:00', NULL, '4.2', '2', "Ga in gesprek met vier experts over de toekomst van klantgericht organiseren. Op basis van vier visies op de toekomst van klantgerichte organisaties gaan we op zoek naar de belangrijkste drijvende en remmende krachten voor klantgericht ondernemen de komende 20 jaar. Ontdek welke uitdagingen de toekomst van jouw klantgerichte organisatie te wachten staan in vier tweets.

Door: Daan Noordeloos (Due North Consultancy), Evert Vols (Buro Improof), Stephan van Slooten (Altuïtion) en Kees Kerkvliet (TOTE-M)

#Klantgerichtondernemen #Transformatie #Customerexperience #Employeeexperience #Klantgerichtleiderschap"),
(27, 'Workshop: De Gouden Regels voor Klantvriendelijkheid in de toekomst', 'Bas Peters en Gerrit Piksen', '13', '14:45', '15:15', NULL, '1.5', '3', "Elk jaar wordt de Prijs voor het meest klantvriendelijke bedrijf uitgereikt. Consumenten beoordelen organisaties op basis van Zeven Gouden Regels. Wat houden ze in? En – veel belangrijk nog – hoe houdbaar zijn deze voor de toekomst? Hoe kun je nog het verschil maken richting je klant? Wat wordt de 8e Gouden Regel voor klantvriendelijkheid van de toekomst? Draag bij en discussieer mee!

Door: Bas Peters en Gerrit Piksen (MarketResponse)

#Klantvriendelijkheid #Meestklantvriendelijkbedrijf #GoudenRegels"),
(40, 'Workshop: De Gouden Regels voor Klantvriendelijkheid in de toekomst', 'Bas Peters en Gerrit Piksen', '13', '15:20', '15:50', NULL, '2.5', '4', "Elk jaar wordt de Prijs voor het meest klantvriendelijke bedrijf uitgereikt. Consumenten beoordelen organisaties op basis van Zeven Gouden Regels. Wat houden ze in? En – veel belangrijk nog – hoe houdbaar zijn deze voor de toekomst? Hoe kun je nog het verschil maken richting je klant? Wat wordt de 8e Gouden Regel voor klantvriendelijkheid van de toekomst? Draag bij en discussieer mee!

Door: Bas Peters en Gerrit Piksen (MarketResponse)

#Klantvriendelijkheid #Meestklantvriendelijkbedrijf #GoudenRegels"),
(28, 'Workshop: Creatief met CX', 'Babs Asselbergs', '23', '14:45', '15:15', NULL, '1.4', '5', "Als je doet wat je altijd deed, dan krijg je wat je altijd deed. De klantgerichte organisatie van de toekomst ziet er écht anders uit dan vandaag de dag. Maar hoe ziet klantgerichtheid er dan uit in 2042? Daar gaan we samen op creatieve wijze mee aan de slag. Door andersom te denken en te spelen in organisaties wordt het écht anders én sowieso leuker. Laat je verrassen en doe mee!

Door: Babs Asselbergs

#Creatief #CustomerExperience #Spelen"),
(41, 'Workshop: Creatief met CX', 'Babs Asselbergs', '23', '15:20', '15:50', NULL, '2.4', '6', "Als je doet wat je altijd deed, dan krijg je wat je altijd deed. De klantgerichte organisatie van de toekomst ziet er écht anders uit dan vandaag de dag. Maar hoe ziet klantgerichtheid er dan uit in 2042? Daar gaan we samen op creatieve wijze mee aan de slag. Door andersom te denken en te spelen in organisaties wordt het écht anders én sowieso leuker. Laat je verrassen en doe mee!

Door: Babs Asselbergs

#Creatief #CustomerExperience #Spelen"),
(29, 'Themasessie: Van beleving naar betekenis (case Betaald Voetbal)', 'Themasessie: Van beleving naar betekenis (case Betaald Voetbal)', '11', '14:45', '15:20', NULL, '1.3', '5', "Ontdek welke kansen ontstaan de komende jaren doordat organisaties zich niet afzonderlijk op goede bedrijfs-, klant- en maatschappelijke prestaties richten, maar deze steeds krachtiger met elkaar verbinden? Welke nieuwe samenwerkingen zijn dan mogelijk? Hoe bewegen social (impact) enterprises, commerciële ondernemingen en klantgerichtheid naar elkaar toe?

Trends, ontwikkelingen en voorbeelden laten zien waarom dit niet alleen nuttig, maar ook nodig is voor langdurig succes. Laat je inspireren van de verrassende case Betaald Voetbal, waar maatschappelijke resultaten naast het veld steeds belangrijker worden voor het aantrekken van sponsoren en binden van fans aan de clubs.

Door: Rob Beltman (H3ROES) en Niels Redert (Impct Agency)

#Betekenis #SocialImpact #MaatschapplijkOndernemen #Betekenis"),
(30, 'Workshop: Eco-systeem mapping', 'Robin Philippo (UWV) en Riens Koopman (Cmotions) en Serge Poppes (Pegamento)', '8', '15:20', '15:55', NULL, '2.6', '6', "Map jouw (klant zijn/haar) ecosysteem! Tijdens deze workshop krijg je een korte introductie in het ecosysteem denken en innoveren. We gaan aan de slag met de toepassing van ecosysteem mapping en de waarde daarvan. Hoe kan je deze tool gebruiken om klantgericht te innoveren?

We brengen de verschillende stakeholders en onderdelen van het systeem in kaart en starten met het analyseren van de uitgewisselde waarden als startpunt voor klantgerichte innovatie. We eindigen de workshop met een template waarmee je zelf de vervolgstappen kan zetten.

Door: Stein Wetzer en Wim Rampen (Livework Studio)

#Ecosysteem #Innovatie #Stakeholdermapping"),
(31, 'Verdieping: Doorpraten over de klantgerichte organisatie van de toekomst met AkzoNobel', 'AkzoNobel onder leiding van Daan Noordeloos (Due North Consultancy) en Stephan van Slooten (Altuïtion)', '1A', '15:20', '15:55', NULL, '2.7', '7', "AkzoNobel is bezig met het uitrollen van een nieuw organisatiemodel om de digitale customer experience de komende jaren wereldwijd te kunnen verbeteren (in een mega traditionele markt). Hoe passen de 4 tweets in deze transformatie. Ga in gesprek en vraag door

Door: Wendy Dirne (AkzoNobel) onder leiding van Daan Noordeloos (Due North Consultancy) en Stephan van Slooten (Altuïtion)

#Klantgerichtondernemen #Transformatie #Customerexperience #Employeeexperience #Klantgerichtleiderschap"),
(32, 'Themasessie: De data gedreven toekomst (case Florius)', 'Deliane Schimmel (Florius) en Kees Groenewoud (Cmotions)', '20', '16:20', '16:55', NULL, '4.7', '7', "Door: Deliane Schimmel (Florius) onder leiding van Kees Groenewoud (Cmotions)"),
(42, 'Themasessie: De data gedreven toekomst (UWV)', 'UWV', '20', '16:20', '16:55', NULL, '4.6', '6', "Door: Robin Philippo (UWV) en Riens Koopman (Cmotions) onder leiding van Ger Koedam (Pegamento)"),
(33, 'Themasessie: Van beleving naar betekenis (case participatiesamenleving) ', 'Rob Beltman (H3ROES) en Jasper Klapwijk (Kantelingen)', '11', '16:20', '16:55', NULL, '3.3', '3', "Ontdek welke kansen ontstaan de komende jaren doordat organisaties zich niet afzonderlijk op goede bedrijfs-, klant- en maatschappelijke prestaties richten, maar deze steeds krachtiger met elkaar verbinden? Welke nieuwe samenwerkingen zijn dan mogelijk? Hoe bewegen social (impact) enterprises, commerciële ondernemingen en klantgerichtheid naar elkaar toe?

Rob Beltman licht aan de hand van trends, ontwikkelingen en voorbeelden toe waarom dit niet alleen nuttig, maar ook nodig is voor langdurig succes.

Jasper Klapwijk laat zien wat er nodig is om maatschappelijk betekenisvolle veranderingen niet voor, maar echt samen met klanten te laten ontstaan. Hij begeleidde al menig coöperatief van burgers of bewoners en deelt inzichten hoe je de als organisatie echt impact kunt hebben in de participatiesamenleving.

Door: Rob Beltman (H3ROES) en Jasper Klapwijk (Kantelingen)

#Betekenis #SocialImpact #MaatschapplijkOndernemen #Betekenis #Participatiesamenleving");

ALTER TABLE `blokkenschema`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `blokkenschema`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;
