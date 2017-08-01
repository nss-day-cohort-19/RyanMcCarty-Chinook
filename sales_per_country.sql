select Customer.Country, Sum(Invoice.Total) as "Total"
from Customer, Invoice
where Customer.CustomerId= Invoice.CustomerId
group by Customer.Country;





