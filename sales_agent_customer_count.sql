select count(Customer.CustomerId) as "Customers", Employee.FirstName ||" "|| Employee.LastName as "Employee Name"
from Employee, Customer
where Employee.EmployeeId= Customer.SupportRepId
group by Employee.LastName;





