SELECT DISTINCT Invoice.InvoiceId, COUNT(InvoiceLine.InvoiceId) AS LineItemCount FROM Invoice
    JOIN InvoiceLine ON Invoice.InvoiceId = InvoiceLine.InvoiceId
    GROUP BY InvoiceLine.InvoiceId