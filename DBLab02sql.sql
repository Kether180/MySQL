DROP TABLE MovieTrailer;
DROP TABLE MovieTeam;
DROP TABLE Producer;
DROP TABLE Editor;

CREATE TABLE Producer (
producerID int,
Full_Name VARCHAR(255) NOT NULL,
Address VARCHAR (255) NOT NULL,
Movie_language VARCHAR(255) NOT NULL,
Primary Key (producerID));
 
CREATE TABLE Editor (
ID int,
Full_Name VARCHAR(255) NOT NULL,
Address VARCHAR(255) NOT NULL,
Movie_Genre VARCHAR(255) NOT NULL,
Primary Key (ID));

CREATE TABLE MovieTrailer (
ID int NOT NULL,
Genre VARCHAR(255) NOT NULL,
Release_Date DATE,
Title VARCHAR(255) NOT NULL,
Platform VARCHAR(255),
Producer_ID int NOT NULL,
Editor_ID int NOT NULL,
PRIMARY KEY (ID),
CONSTRAINT FK_1 FOREIGN KEY (Editor_ID) REFERENCES Editor(ID),
CONSTRAINT FK_2 FOREIGN KEY (Producer_ID) REFERENCES Producer (producerID));
 
CREATE TABLE MovieTeam (
ID int NOT NULL,
Team_Name VARCHAR(255) NOT NULL,
MemberProducerID int NOT NULL,
MemberEditorID int NOT NULL,
Movie_projects VARCHAR(255) NOT NULL,
PRIMARY KEY (ID),
CONSTRAINT FK_3 FOREIGN KEY (MemberProducerID) REFERENCES Producer(producerID),
CONSTRAINT FK_4 FOREIGN KEY (MemberEditorID) REFERENCES Editor(ID));