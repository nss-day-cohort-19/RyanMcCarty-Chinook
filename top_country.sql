select Max(custTotal.Total) as "Most Purchases", custTotal.CustomerName, custTotal.Country
from(select Customer.Country, Customer.FirstName ||" "||Customer.LastName as "CustomerName", Sum(Invoice.Total) as "Total"
from Customer, Invoice
where Customer.CustomerId= Invoice.CustomerId
group by Customer.LastName)as custTotal;





