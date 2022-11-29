SELECT COUNT(*) AS InvoicesPerCountry, BillingCountry FROM Invoice
    GROUP BY BillingCountry;