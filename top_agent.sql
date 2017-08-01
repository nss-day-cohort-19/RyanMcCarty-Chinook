select max(Total.Sales) as "Sales", Total.LastName
from( select Employee.FirstName, Employee.LastName, invoice.invoiceDate, Sum(Invoice.Total) as "Sales"
from Invoice, Employee, Customer
where Employee.EmployeeId= Customer.SupportRepId
and Customer.CustomerId= Invoice.CustomerId
group by Employee.LastName) as Total;


