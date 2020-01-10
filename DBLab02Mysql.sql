DROP TABLE MovieTrailer ;
DROP TABLE MovieTeam;
DROP TABLE Producer;
DROP TABLE Editor;

CREATE TABLE Producer(
    producerID int,
    producer_name VARCHAR(255) NOT NULL,
    producer_address VARCHAR(255) NOT NULL,
    movie_genre VARCHAR(225) NOT NULL,
    PRIMARY KEY(producerID)    
);
 
CREATE TABLE Editor(
    editorID int,
    editor_name VARCHAR(255) NOT NULL,
    editor_address VARCHAR(255) NOT NULL,
    movie_genre VARCHAR(225) NOT NULL,
    PRIMARY KEY(editorID)
);
CREATE TABLE MovieTrailer(
    trailerID int,
    genre int,
    Release_date DATE NOT NULL,
    title VARCHAR(225),
    platform VARCHAR(225),
    producer_ID int REFERENCES Producer(producerID),
    editor_ID int REFERENCES Editor(editorID),
    PRIMARY KEY(trailerID)    
);

CREATE TABLE MovieTeam(
movieteamID int,
movie_member_name VARCHAR(255),
movie_project VARCHAR(225) NOT NULL,
Member_producerID int REFERENCES Producer(producerID),
Member_editorID int REFERENCES Editor(editorID),
PRIMARY KEY(movieteamID)

);