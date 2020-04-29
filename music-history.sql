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


DELETE from Album WHERE AlbumId=23

-- Using the INSERT statement, add some songs that are on that album to the Song table.
INSERT INTO 