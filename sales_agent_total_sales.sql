select Employee.FirstName, Employee.LastName, sum(Invoice.Total)
from Employee, Invoice, Customer
where Employee.EmployeeId= Customer.SupportRepId
and Customer.CustomerId= Invoice.CustomerId
group by Employee.LastName;










