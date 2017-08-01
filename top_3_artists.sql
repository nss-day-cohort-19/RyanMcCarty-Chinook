select Count(Artist.Name) as "MostTimesBought", Artist.Name as "BestSellingArtist"
from Track, Invoice, InvoiceLine, Artist, Album
where Track.TrackId= InvoiceLine.TrackId
and InvoiceLine.InvoiceId= Invoice.InvoiceId
and Artist.ArtistId= Album.ArtistId
and Track.AlbumId= Album.AlbumId
group by artist.name
order by MostTimesBought desc
limit 3;








