select customer.country, count(invoice.total) as "Total Invoices"
from customer, invoice
where customer.customerId= invoice.customerId
group by country


