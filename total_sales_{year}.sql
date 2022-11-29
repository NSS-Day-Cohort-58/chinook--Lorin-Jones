SELECT SUM(InvoiceLine.UnitPrice * InvoiceLine.Quantity) AS TotalSales FROM Invoice
    JOIN InvoiceLine
    ON Invoice.InvoiceId = InvoiceLine.InvoiceId
    WHERE InvoiceDate LIKE "2009-%"
    OR InvoiceDate LIKE "2011-%";