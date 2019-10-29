CREATE DATABASE `poslasticarnica` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

CREATE TABLE `materijal` (
  `idMaterijal` int(11) NOT NULL AUTO_INCREMENT,
  `vrstaMaterijala` varchar(45) DEFAULT NULL,
  `cenaMaterijala` double DEFAULT NULL,
  `kolicinaMaterijala` double DEFAULT '0',
  `jedinicaMereMaterijala` varchar(45) DEFAULT NULL,
  `idPoslastica` int(11) DEFAULT NULL,
  PRIMARY KEY (`idMaterijal`),
  KEY `idPoslastica_idx` (`idPoslastica`),
  CONSTRAINT `idPoslastica` FOREIGN KEY (`idPoslastica`) REFERENCES `poslastica` (`idPoslastica`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `poslastica` (
  `idPoslastica` int(11) NOT NULL AUTO_INCREMENT,
  `nazivPoslastice` varchar(45) NOT NULL,
  `vrstaPoslastice` varchar(45) DEFAULT NULL,
  `cenaPoslastice` double DEFAULT NULL,
  `kolicinaDostupnih` int(11) NOT NULL DEFAULT '0',
  `dostupna` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`idPoslastica`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
