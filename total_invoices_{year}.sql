SELECT COUNT(*) AS TotalInvoices FROM Invoice
    WHERE InvoiceDate LIKE "2009-%"
    OR InvoiceDate LIKE "2011-%";