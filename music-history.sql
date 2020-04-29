-- Query all of the entries in the Genre table
SELECT * FROM Genre;

-- Using the INSERT statement, add one of your favorite artists to the Artist table.
INSERT INTO Artist (ArtistName, YearEstablished)
VALUES("Lamb Of God", 1999);

-- Using the INSERT statement, add one, or more, albums by your artist to the Album table.
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
VALUES("New American Gospel", "09/26/2000", 2846, "Prosthetic", 28, 5);

INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
VALUES("As the Palaces Burn", "05/06/2003", 3333, "Prosthetic", 28, 5);

INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
VALUES("Ashes of the Wake", "09/31/04", 3333, "Prosthetic", 28, 5);


DELETE FROM Album WHERE AlbumId=23 -- Using the INSERT statement, add some songs that are on that album to the Song table.
 INSERT INTO Song(Title,SongLength,ReleaseDate,GenreId,ArtistId,AlbumId)VALUES("As the Palaces Burn",200,"05/06/2003",5,28,25);

INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
VALUES ("The Black Dahlia", 199, "09/26/2000", 5, 28, 23);

INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
VALUES ("Now You've Got Something to Die For", 242, "09/31/04", 5, 28, 24);

DELETE from Song WHERE AlbumId=23

SELECT * FROM Song;

-- Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.
SELECT s.Title as 'Song', al.Title as 'Album', ar.ArtistName as 'Artist'
FROM Song s
LEFT JOIN Album al, Artist ar
ON s.ArtistId = al.ArtistId
AND s.ArtistId = ar.ArtistId
WHERE s.ArtistId = 28;

-- Reminder: Direction of join matters. Try the following statements and see the difference in results.

SELECT a.Title as Album, s.Title as Song
FROM Album a 
LEFT JOIN Song s 
ON s.AlbumId = a.AlbumId;

SELECT s.Title as Song, a.Title as Album
FROM Song s 
LEFT JOIN Album a 
ON s.AlbumId = a.AlbumId;


-- Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

SELECT count() as 'Song Count', a.Title
FROM Song s
JOIN Album a
ON s.AlbumId = a.AlbumId
GROUP BY a.AlbumId
ORDER BY count() DESC;


-- Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

SELECT count() as 'Song Count', ar.ArtistName
FROM Song s
JOIN Artist ar
ON s.ArtistId = ar.ArtistId
GROUP BY ar.ArtistId;

-- Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

SELECT count() as 'Song Count', g.Label
FROM Song s
JOIN Genre g
ON s.GenreId = g.GenreId
GROUP BY g.GenreId
ORDER BY count();

-- Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.
SELECT Album.Title, MAX(AlbumLength) as 'Album Length'
FROM Album;


-- Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.

SELECT Song.Title, MAX(SongLength) as 'Song Length'
FROM Song;

-- Modify the previous query to also display the title of the album.

SELECT s.Title as 'Song', a.Title as 'Album', MAX(SongLength) as 'Song Length'
FROM Song s
JOIN Album a
ON s.AlbumId = a.AlbumId;