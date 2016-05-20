SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET FOREIGN_KEY_CHECKS=0;

# DROP TABLES
DROP TABLE IF EXISTS Informazioni;
DROP TABLE IF EXISTS Citta;
DROP TABLE IF EXISTS ASL;
DROP TABLE IF EXISTS CUP;
DROP TABLE IF EXISTS Admin;
DROP TABLE IF EXISTS Dottore;
DROP TABLE IF EXISTS Paziente;
DROP TABLE IF EXISTS Infermiere;
DROP TABLE IF EXISTS Referto;
DROP TABLE IF EXISTS VisitaMedica;
DROP TABLE IF EXISTS DatiAccesso;




# CREATE TABLES
CREATE TABLE Informazioni (

	CodiceFiscale  VARCHAR(16) NOT NULL PRIMARY KEY,
	DataNascita    DATE NOT NULL,
	Nome 		   VARCHAR(20) NOT NULL,
	Cognome		   VARCHAR(20) NOT NULL,
	Email		   VARCHAR(45),
	Telefono	   VARCHAR(20) NOT NULL,
	CittaResidenza VARCHAR(45) NOT NULL,
	CittaNascita   VARCHAR(45) NOT NULL,
	Indirizzo	   VARCHAR(45) NOT NULL,
	CodiceASL 	   INT NOT NULL,

	FOREIGN KEY (CittaResidenza) REFERENCES Citta(Nome) 
		ON DELETE NO ACTION,
	FOREIGN KEY (CittaNascita) REFERENCES Citta(Nome) 
		ON DELETE NO ACTION,
	FOREIGN KEY (CodiceASL) REFERENCES ASL(Codice) 
		ON DELETE NO ACTION

) ENGINE=INNODB;

CREATE TABLE Citta (

	Nome 	  VARCHAR(45) NOT NULL PRIMARY KEY,
	Provincia VARCHAR(2) NOT NULL,
	CAP		  VARCHAR(5) NOT NULL,
	Regione   VARCHAR(15) NOT NULL


)ENGINE=INNODB;

CREATE TABLE ASL (

	Codice    INT NOT NULL PRIMARY KEY,
	Indirizzo VARCHAR(45) NOT NULL,
	Email     VARCHAR(45) NOT NULL,
	Telefono  VARCHAR(20) NOT NULL,
	CittaSede VARCHAR(45) NOT NULL,

	FOREIGN KEY (CittaSede) REFERENCES Citta(Nome)


)ENGINE=INNODB; 


CREATE TABLE CUP (

	Codice INT NOT NULL PRIMARY KEY,
	Password VARCHAR(10),
	CodiceASL INT NOT NULL,

	FOREIGN KEY (CodiceASL) REFERENCES ASL(Codice) 
		ON DELETE NO ACTION


) ENGINE=INNODB;


CREATE TABLE DatiAccesso (

	NomeUtente VARCHAR(20) NOT NULL PRIMARY KEY,
	Password VARCHAR(20) NOT NULL,
	DataScadenza DATE NOT NULL

)ENGINE=INNODB;


CREATE TABLE Admin (

	CodiceFiscale VARCHAR(16) NOT NULL,
	NomeUtente VARCHAR(20) NOT NULL,
	Stipendio SMALLINT NOT NULL,

	PRIMARY KEY (CodiceFiscale,NomeUtente),

	FOREIGN KEY (CodiceFiscale) REFERENCES Informazioni(CodiceFiscale)
		ON DELETE CASCADE,
	FOREIGN KEY (NomeUtente) REFERENCES DatiAccesso(NomeUtente)
		ON DELETE CASCADE

) ENGINE=INNODB;

CREATE TABLE Dottore (

	CodiceFiscale VARCHAR(16) NOT NULL,
	NomeUtente VARCHAR(10) NOT NULL,
	Stipendio SMALLINT NOT NULL,
	Specializzazione VARCHAR(30) NOT NULL,
	OraInizio TIME NOT NULL,
	OraFine TIME NOT NULL,
	Disponibile BOOL NOT NULL,

	PRIMARY KEY (CodiceFiscale,NomeUtente),

	FOREIGN KEY (NomeUtente) REFERENCES DatiAccesso(NomeUtente)
		ON DELETE CASCADE,
	FOREIGN KEY (CodiceFiscale) REFERENCES Informazioni(CodiceFiscale)
		ON DELETE CASCADE


) ENGINE=INNODB;

CREATE TABLE Paziente (

	CodiceFiscale VARCHAR(16) NOT NULL PRIMARY KEY,
	CodiceEsenzione VARCHAR(3),

	FOREIGN KEY (CodiceFiscale) REFERENCES Informazioni(CodiceFiscale)
		ON DELETE CASCADE


) ENGINE=INNODB;

CREATE TABLE Infermiere (

	CodiceFiscale VARCHAR(16) NOT NULL PRIMARY KEY,
	Stipendio SMALLINT NOT NULL,
	Tirocinante BOOL NOT NULL,

	FOREIGN KEY (CodiceFiscale) REFERENCES Informazioni(CodiceFiscale)
		ON DELETE CASCADE

)ENGINE=INNODB;


CREATE TABLE VisitaMedica (

	CodiceVisita INT NOT NULL PRIMARY KEY,
	Data DATETIME NOT NULL,
	Ambulatorio VARCHAR(25) NOT NULL,
	TipoVisita VARCHAR(15) NOT NULL,
	TipoPrenotazione VARCHAR(15) NOT NULL,
	Priorita CHAR,
	CFDottore VARCHAR(16),
	CFInfermiere VARCHAR(16),
	CFPaziente VARCHAR(16) NOT NULL,
	CodiceReferto INT,

	FOREIGN KEY (CFDottore) REFERENCES Dottore(CodiceFiscale)
		ON DELETE NO ACTION,
	FOREIGN KEY (CFInfermiere) REFERENCES Infermiere(CodiceFiscale)
		ON DELETE NO ACTION,
	FOREIGN KEY (CFPaziente) REFERENCES Paziente(CodiceFiscale)
		ON DELETE NO ACTION,
	FOREIGN KEY (CodiceReferto) REFERENCES Referto(Codice)
		ON DELETE CASCADE

) ENGINE=INNODB;

CREATE TABLE Referto (

	Codice INT NOT NULL PRIMARY KEY,
	Contenuto LONGTEXT NOT NULL


)ENGINE=INNODB;

