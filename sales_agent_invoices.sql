SELECT Employee.FirstName, Employee.LastName, InvoiceId FROM Employee
    JOIN Customer
    ON Employee.EmployeeId = Customer.SupportRepId
    JOIN Invoice
    ON Customer.CustomerId = Invoice.CustomerId;