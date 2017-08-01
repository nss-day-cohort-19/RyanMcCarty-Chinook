select track.name, invoiceLine.unitPrice, invoiceLine.quantity
from track, invoiceLine
where track.trackId= invoiceLine.trackId;


