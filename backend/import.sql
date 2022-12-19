drop DATABASE if exists festival;
CREATE DATABASE `festival`;

USE `festival`;

CREATE TABLE `blokkenschema` (
	id MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Workshop_naam VARCHAR(100) NOT NULL,
    Spreker VARCHAR(100) NOT NULL,
    Ruimte VARCHAR(100) NOT NULL,
    Start_tijd VARCHAR(100) NOT NULL,
    Eind_tijd VARCHAR(100) NOT NULL
);

INSERT INTO `blokkenschema` (`Worshop_naam`, `Spreker`,`Ruimte`, `Start_tijd`, `Eind_tijd`) VALUES
	('Themasessie ecosysteem slot 1', 'Fabian', '1', '14:45', '15:20'),
	('Themasessie kg organisatie', 'Fabian', '2', '14:45', '15:20'),
    ('Themasessie data', 'Fabian', '1', '15:20', '15:55'),
    ('Themasessie tech touch', 'Fabian', '2', '15:20', '15:55'),
    ('Workshop rt', 'Fabian', '4', '16:55', '17:30')