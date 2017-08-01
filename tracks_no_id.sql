select  Album.Title as "Album Name", Track.Name as "Track Name", Genre.Name as "Genre Type", MediaType.Name as "Media Type"
from Genre, MediaType, Album, Track, Artist
where Artist.ArtistId= Album.ArtistId
and Track.GenreId= Genre.GenreId
and Track.MediaTypeId= MediaType.MediaTypeId;






