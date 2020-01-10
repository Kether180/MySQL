TASK 8

DELETE FROM MovieTrailer where producer_ID = 202;
UPDATE MovieTeam
SET Movie_projects = 'Avatar2'
WHERE
MovieTeam.ID = '21';
Commit;

#1)	We Want to know which producer is working on each Movie Project ?

SELECT DISTINCT MovieTrailer.Release_Date, MovieTeam.Movie_projects, Producer.Producer_name
FROM MovieTrailer
RIGHT JOIN Producer ON Producer.ProducerID = MovieTrailer.producer_ID
RIGHT JOIN MovieTeam ON  MovieTeam.MemberproducerID = MovieTrailer.producer_ID
ORDER BY Release_Date;


#2)	#We want to know Movies’ Title and on which dates are being  release ?

SELECT MovieTrailer.Title AS Title, MovieTrailer.Release_Date AS Release_Date
FROM MovieTrailer
LEFT JOIN Producer on Producer.Producer_name = Producer.producerID;


SELECT MovieTrailer.Title AS Title, MovieTrailer.Release_Date AS Release_Date
FROM MovieTrailer
LEFT JOIN Editor ON Editor.Editor_name = Editor.editorID;
