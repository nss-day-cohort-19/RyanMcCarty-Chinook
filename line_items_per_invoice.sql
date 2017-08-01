select count(invoiceId) as "Each Invoice"
from invoiceLine
group by invoiceId