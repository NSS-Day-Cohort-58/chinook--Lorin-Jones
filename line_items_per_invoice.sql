SELECT InvoiceId, COUNT(*) AS LineItemsPer FROM InvoiceLine
    GROUP BY InvoiceId

