-- This project uses the following licenses:
-- MIT License
-- Copyright (c) 2020 Ricardo Mendoza 
-- Montréal Québec Canada

-- Repository : https://github.com/RicardoAMendoza/prjWin_MVC_NationalBank_Rm
-- Project : prjWin_MVC_NationalBank_Rm
-- Instruction :
-- Copy and paste on SqlServer script and run it. That will create de data base

-- DROP DATABASE bd_MVC_NationalBank

-- -----------------------------------------------------
-- Data base bd_MVC_NationalBank
-- -----------------------------------------------------
CREATE DATABASE bd_MVC_NationalBank
Go
-- -----------------------------------------------------
-- Tables 
-- -----------------------------------------------------

USE bd_MVC_NationalBank
Go
-- -----------------------------------------------------
-- 1.- Table `bd_MVC_NationalBank`.`tagencies`
-- -----------------------------------------------------
-- Tip: To specify that the "idagencies" column should start at value 10 and increment by 5, change it to IDENTITY(10,5).

CREATE TABLE tagencies
(
idagencies INT IDENTITY(10,5) not NULL PRIMARY KEY,
agencyNumber VARCHAR (45) NULL DEFAULT NULL,
name VARCHAR (45)  NULL DEFAULT NULL,
address VARCHAR (45) NULL DEFAULT NULL,
)

-- -----------------------------------------------------
-- 2.- Table `bd_MVC_NationalBank`.`tarea`
-- -----------------------------------------------------
CREATE TABLE tarea
(
codearea VARCHAR (3) not NULL PRIMARY KEY,
description VARCHAR (45) NULL DEFAULT NULL,
) 

-- -----------------------------------------------------
-- 3.- Table `bd_MVC_NationalBank`.`temployee`
-- -----------------------------------------------------
CREATE TABLE temployee
(
idemployee INT IDENTITY(10,5) NOT NULL PRIMARY KEY,
employeeNumber VARCHAR(45) NULL DEFAULT NULL,
name VARCHAR (45) NULL DEFAULT NULL,
lastName VARCHAR (45) NULL DEFAULT NULL,
email VARCHAR (45) NULL DEFAULT NULL,
img VARCHAR (45) NULL DEFAULT NULL,
hiringDate DATE NULL DEFAULT NULL,
salary DECIMAL(22,6) NULL DEFAULT NULL,
sexe VARCHAR (1) NULL DEFAULT NULL,
active VARCHAR (1) NULL DEFAULT NULL,
idagencies INT NOT NULL,
--- REFERNCES
CONSTRAINT Relation_a_tagencies FOREIGN KEY (idagencies) REFERENCES tagencies(idagencies)
)

-- -----------------------------------------------------
-- 4.- Table `bd_MVC_NationalBank`.`temploy_area`
-- -----------------------------------------------------
CREATE TABLE temploy_area
(
idemployee INT NOT NULL,
codearea VARCHAR (3) NOT NULL,
PRIMARY KEY (idemployee,codearea),
--- REFERNCES
CONSTRAINT Relation_a_temployee FOREIGN KEY (idemployee) REFERENCES temployee(idemployee),
CONSTRAINT Relation_a_tarea FOREIGN KEY (codearea) REFERENCES tarea(codearea)
)

-- -----------------------------------------------------
-- 5.- Table `bd_MVC_NationalBank`.`tclient`
-- -----------------------------------------------------
CREATE TABLE tclient
(
idclient INT IDENTITY(10,5) NOT NULL PRIMARY KEY,
clientNumber VARCHAR (45) NULL DEFAULT NULL,
name VARCHAR (45) NULL DEFAULT NULL,
lastName VARCHAR (45) NULL DEFAULT NULL,
email VARCHAR (45) NULL DEFAULT NULL,
img VARCHAR (45) NULL DEFAULT NULL,
address VARCHAR (45) NULL DEFAULT NULL,
cardNumber VARCHAR (45) NULL DEFAULT NULL,
nip VARCHAR (45) NULL DEFAULT NULL,
sexe VARCHAR (1) NULL DEFAULT NULL,
active VARCHAR (1) NULL DEFAULT NULL,
idagencies INT NOT NULL,
--- REFERNCES
CONSTRAINT Relation_a_tagencies_2 FOREIGN KEY (idagencies) REFERENCES tagencies(idagencies),
)

-- -----------------------------------------------------
-- 6.- Table `bd_MVC_NationalBank`.`taccount`
-- -----------------------------------------------------
CREATE TABLE taccount
(
idaccount INT IDENTITY(10,5) NOT NULL PRIMARY KEY,
number VARCHAR (45) NULL DEFAULT NULL,
balance DECIMAL (22,6) NULL DEFAULT NULL,
openDate DATETIME NULL DEFAULT NULL,
idemployee INT NOT NULL,
idagencies INT NOT NULL,
)

-- -----------------------------------------------------
-- 7.- Table `bd_MVC_NationalBank`.`taccounttype`
-- -----------------------------------------------------
CREATE TABLE taccounttype
(
idaccounttype INT IDENTITY(10,5) NOT NULL PRIMARY KEY,
accountType VARCHAR (45) NULL DEFAULT NULL,
comission DECIMAL(22,6) NULL DEFAULT NULL,
overdraft DECIMAL (22,6) NULL DEFAULT NULL,
interestRate DECIMAL (22,6) NULL DEFAULT NULL,
)

-- -----------------------------------------------------
-- 8.- Table `bd_MVC_NationalBank`.`tclient_account`
-- -----------------------------------------------------
CREATE TABLE tclient_account
(
idaccounttype INT NOT NULL,
idclient INT NOT NULL,
idaccount INT NOT NULL,
PRIMARY KEY (idaccounttype,idclient),
--- REFERNCES
CONSTRAINT Relation_a_taccount_2 FOREIGN KEY (idaccount) REFERENCES taccount(idaccount),
CONSTRAINT Relation_a_taccounttype  FOREIGN KEY (idaccounttype) REFERENCES taccounttype(idaccounttype),
CONSTRAINT Relation_a_tclient FOREIGN KEY (idclient) REFERENCES tclient(idclient)
)

-- -----------------------------------------------------
-- 9.- Table `bd_MVC_NationalBank`.`ttransaction`
-- -----------------------------------------------------
CREATE TABLE ttransaction
(
idtransaction INT IDENTITY(10,5) NOT NULL PRIMARY KEY,
balance DECIMAL(22,6) NULL DEFAULT NULL,
transactionDate DATETIME NULL DEFAULT NULL,
comission DECIMAL (22,6) NULL DEFAULT NULL,
overdraft DECIMAL (22,6) NULL DEFAULT NULL,
interestRate DECIMAL (22,6) NULL DEFAULT NULL,
idaccount INT NOT NULL,
idclient INT NOT NULL,
idemployee INT NOT NULL,
idagencies INT NOT NULL,
--- REFERNCES
CONSTRAINT Relation_a_taccount FOREIGN KEY (idaccount) REFERENCES taccount(idaccount)
)

-- -----------------------------------------------------
-- 10.- Table `bd_MVC_NationalBank`.`tadmin`
-- -----------------------------------------------------
CREATE TABLE tadmin
(
idadmin INT IDENTITY(10,5) NOT NULL PRIMARY KEY,
adminNumber VARCHAR (45) NULL DEFAULT NULL,
name VARCHAR(45) NULL DEFAULT NULL,
lastName VARCHAR(45) NULL DEFAULT NULL,
email VARCHAR(45) NULL DEFAULT NULL,
img VARCHAR(45) NULL DEFAULT NULL,
password VARCHAR(45) NULL DEFAULT NULL,
sexe VARCHAR (1) NULL DEFAULT NULL,
active VARCHAR (1) NULL DEFAULT NULL,
)















