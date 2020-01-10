
insert into Editor (editorID, Full_Name, Address, Movie_Genre) values ('2004', 'Peter Crown', 'Wisconsin 87th Street Los Angeles US', 'French Version');
insert into Editor (editorID, Full_Name, Address, Movie_Genre) values ('2005', 'Mirka Molkovo', 'Lemumu 2087th Street Honolulu US', 'German Version');
insert into Editor (editorID, Full_Name, Address, Movie_Genre) values ('2006', 'Fredick Stevenson', 'Trosdorf 27th Street Boston US', 'Norwegian Version');

insert into Producer (producerID, Full_Name, Address, Movie_language) values ('201', 'Peter Müller', 'Toperwarestreet 165th New York US', 'English Version');
insert into Producer (producerID, Full_Name, Address, Movie_language) values ('202', 'Orlando Pereira', 'Kiwistreet 22nd Montana US','Spanish Version');
insert into Producer (producerID, Full_Name, Address, Movie_language) values ('203', 'Xin Pi', 'Coral Springs 98th Miami US', 'Chinese Version');

insert into MovieTeam (MovieTeamID, Team_Name, MemberProducerID, MemberEditorID, Movie_project) values ('20', 'The benedicts', '201','206', 'Life and Death');
insert into MovieTeam (MovieTeamID, Team_Name, MemberProducerID, MemberEditorID, Movie_project) values ('21', 'Chopsticks', '203', '205', 'Großvater');
insert into MovieTeam (MovieTeamID, Team_Name, MemberProducerID, MemberEditorID, Movie_project) values ('22', ' Matadores', '202', '204', 'Vita e bela');

insert into MovieTrailer (trailerID, genre, Release_Date, title, platform, producer_ID, editor_ID) values ('2050', 'Romance', '2020-02-01', 'Life and Death', '201', '206');
insert into MovieTrailer (trailerID, genre, Release_Date, title, platform, producer_ID, editor_ID) values ('2051', 'Science Fiction', '2020-09-10', 'Großvater', '203', '205');
insert into MovieTrailer (trailerID, genre, Release_Date, title, platform, producer_ID, editor_ID) values (2052, 'Art', '2019-05-10', 'Vita e bela', 'Cinema', 202, 204);

select * from MovieTrailer;
