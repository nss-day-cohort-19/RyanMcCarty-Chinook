select max(Sum.MostTimesBought) as "Most Popular", Sum.TrackName
from (select Track.Name as "TrackName", Invoice.InvoiceDate as "Date", Sum(InvoiceLine.Quantity) as "MostTimesBought"
from Track, Invoice, InvoiceLine 
where Track.TrackId= InvoiceLine.TrackId
and InvoiceLine.InvoiceId= Invoice.InvoiceId
group by Track.Name) as "Sum"
group by Sum.MostTimesBought
limit 5;


select max(Sum.MostTimesBought) as "Most Popular", Sum.BestSellingArtist
from (select Track.Name as "TrackName", Invoice.InvoiceDate as "Date", Count(InvoiceLine.TrackId) as "MostTimesBought", Artist.Name as "BestSellingArtist"
from Track, Invoice, InvoiceLine, Artist 
where Track.TrackId= InvoiceLine.TrackId
and InvoiceLine.InvoiceId= Invoice.InvoiceId
group by artist.name) as "Sum"
group by Sum.BestSellingArtist;

