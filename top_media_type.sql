select MediaType.Name, count(Artist.Name) as "Songs"
from Track, Invoice, InvoiceLine, Artist, Album, MediaType
where Track.TrackId= InvoiceLine.TrackId
and InvoiceLine.InvoiceId= Invoice.InvoiceId
and Artist.ArtistId= Album.ArtistId
and Track.AlbumId= Album.AlbumId
and MediaType.MediaTypeId= Track.MediaTypeId
group by MediaType.Name
Order by Songs desc
Limit 1;








