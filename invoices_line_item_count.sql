select *, count(InvoiceLine.InvoiceId) as "Invoice Line #"
from Invoice, InvoiceLine
where Invoice.InvoiceId= InvoiceLine.InvoiceId
group by Invoice.InvoiceId;







