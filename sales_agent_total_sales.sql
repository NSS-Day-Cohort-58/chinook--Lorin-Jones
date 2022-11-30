SELECT DISTINCT Employee.FirstName || "" || Employee.LastName AS "EmployeeName", SUM(InvoiceLine.UnitPrice) AS TotalAgentSales FROM Customer
    JOIN Employee 
    ON Customer.SupportRepId = Employee.EmployeeId
    JOIN Invoice
    ON Customer.CustomerId = Invoice.CustomerId
    JOIN InvoiceLine
    ON Invoice.InvoiceId = InvoiceLine.InvoiceId
    GROUP BY SupportRepId
