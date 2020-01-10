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


insert into Editor (producerID, Full_Name, Address, Movie_language) values ('204', 'Peter Crown', 'Wisconsin 87th Street,CA, USA', 'French Version');
insert into Editor (producerID, Full_Name, Address, Movie_language) values ('205', 'Mirka Molkovo', 'Lemumu 2087th Street,HA,USA', 'German Version');
insert into Editor (producerID, Full_Name, Address, Movie_language) values ('206', 'Fredick Stevenson', 'Trosdorf 27th Street,BO,US', 'Norwegian Version');

insert into Producer (producerID, Full_Name, Address, Movie_language) values ('201', 'Peter Müller', 'Toperware 165th Street, Ny, USA', 'English Version');
insert into Producer (producerID, Full_Name, Address, Movie_language) values ('202', 'Orlando Pereira', 'Kiwi 165th Street, MO, USA','Spanish Version');
insert into Producer (producerID, Full_Name, Address, Movie_language) values ('203', 'Xin Pi', 'Coral Springs 98th Street,FL, USA', ' Chinese Version');

insert into MovieTeam (MovieTeamID, Team_Name, MemberProducerID, MemberEditorID, Movie_project) values ('20', 'The benedicts', '201','206', 'Life after Death');
insert into MovieTeam (MovieTeamID, Team_Name, MemberProducerID, MemberEditorID, Movie_project) values ('21', 'Chopsticks', '203', '205', 'Großvater');
insert into MovieTeam (MovieTeamID, Team_Name, MemberProducerID, MemberEditorID, Movie_project) values ('22', ' Matadores', '202', '204', 'Vita e bela');

insert into MovieTrailer (MovieTrailerID, Genre, Release_Date, Tittle, Platform, Producer_ID, Editor_ID) values ('2050', 'Romatic', TO_DATE('01.02.2019', 'DD/MM/YYYY'), 'Life after Death', '201', '206');
insert into MovieTrailer (MovieTrailerID, Genre, Release_Date, Tittle, Platform, Producer_ID, Editor_ID) values ('2051', 'Science Fiction', TO_DATE('02.09.2020', 'DD/MM/YYYY'), 'Großvater', '203', '205');
insert into MovieTrailer (MovieTrailerID, Genre, Release_Date, Tittle, Platform, Producer_ID, Editor_ID) values ('2052', 'Art',TO_DATE('05.10.2019', 'DD/MM/YYYY','Vita e bela'), 'Cinema', '202', '204');


