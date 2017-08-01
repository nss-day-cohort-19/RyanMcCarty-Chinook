select max(Sum.MostTimesBought) as "Most Popular", Sum.TrackName
from (select Track.Name as "TrackName", Invoice.InvoiceDate as "Date", Sum(InvoiceLine.Quantity) as "MostTimesBought"
from Track, Invoice, InvoiceLine 
where Track.TrackId= InvoiceLine.TrackId
and InvoiceLine.InvoiceId= Invoice.InvoiceId
and Invoice.InvoiceDate like "2013%"
group by Track.Name) as "Sum";




