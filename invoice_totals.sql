select invoice.total, customer.firstname, customer.country, employee.firstname, employee.lastname
from employee, customer, invoice
where employee.employeeId=customer.supportrepId
and customer.customerId= invoice.customerid