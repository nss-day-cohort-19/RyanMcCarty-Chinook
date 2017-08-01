select track.name, invoiceLine.unitPrice, invoiceLine.quantity, artist.name
from track, invoiceLine, artist, album
where track.trackId= invoiceLine.trackId
and artist.artistId= album.artistId;


