insert into Editor values ('2004', 'Peter Crown', 'Wisconsin 87th Street Los Angeles US', 'French Version');
insert into Editor values ('2005', 'Mirka Molkovo', 'Lemumu 2087th Street Honolulu US', 'German Version');
insert into Editor (ID, Editor_name, Address, Movie_Genre) values ('2006', 'Fredick Stevenson', 'Trosdorf 27th Street Boston US', 'Norwegian Version');

insert into Producer values ('201', 'Peter Müller', 'Toperwarestreet 165th New York US', 'English Version');
insert into Producer (producerID, Producer_name, Address, Movie_language) values ('202', 'Orlando Pereira', 'Kiwistreet 22nd Montana US','Spanish Version');
insert into Producer values ('203', 'Xin Pi', 'Coral Springs 98th Miami US', 'Chinese Version');

insert into MovieTeam (ID, Team_Name, MemberProducerID, MemberEditorID, Movie_projects) values ('20', 'The benedicts', '201','2006', 'Life and Death');
insert into MovieTeam (ID, Team_Name, MemberProducerID, MemberEditorID, Movie_projects) values ('21', 'Chopsticks', '202', '2005', 'Großvater');
insert into MovieTeam (ID, Team_Name, MemberProducerID, MemberEditorID, Movie_projects) values ('22', ' Matadores', '203', '2004', 'Vita e bela');

insert into MovieTrailer values ('2001', 'Science Fiction', '2020-09-10', 'Großvater', 'Cinema', '201', '2005');
insert into MovieTrailer values ('2002', 'Art', '2019-05-10', 'Vita e bela', 'Cinema', '203', '2006');
insert into MovieTrailer (ID, genre, Release_Date, title, platform, producer_ID, editor_ID) values ('2000', 'Romance', '2020-02-01', 'Life and Death', 'Cinema', '202', '2004');







