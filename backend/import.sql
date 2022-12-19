drop DATABASE if exists festival;
CREATE DATABASE `festival`;

USE `festival`;

CREATE TABLE `fest` (
	id MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    spreker VARCHAR(100) NOT NULL,
    begintijd VARCHAR(100) NOT NULL,
    eindtijd VARCHAR(100) NOT NULL,
    zaal VARCHAR(100) NOT NULL,
    capaciteit VARCHAR(100) NOT NULL
);

INSERT INTO `fest` (`spreker`, `begintijd`, `eindtijd`, `zaal`, `capaciteit`) VALUES
	('naam', '9.30', '12.00', '1', '500'),
	('naam', '8.30', '11.00', '2', '200'),
    ('naam', '10.30', '13.00', '3', '450')