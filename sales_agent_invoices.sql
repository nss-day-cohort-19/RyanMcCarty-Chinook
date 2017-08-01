select employee.firstname, employee.lastname, invoice.invoiceId
from ((employee
inner Join customer On employee.employeeId=customer.supportrepId)
inner Join invoice On customer.customerId= invoice.customerid);


select employee.firstname, employee.lastname, invoice.invoiceId
from employee, customer, invoice
where employee.employeeId=customer.supportrepId
and customer.customerId= invoice.customerid