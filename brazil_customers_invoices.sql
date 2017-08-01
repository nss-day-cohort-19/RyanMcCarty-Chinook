select invoice.invoiceId, invoice.billingCountry, invoice.invoiceDate, customer.firstname, customer.lastname
from invoice
left Join customer On invoice.CustomerId=customer.CustomerId;

