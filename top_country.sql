SELECT 
    MAX(Sales) AS TotalSales,
    BillingCountry
FROM
    (
    SELECT 
        SUM(Total) AS Sales, 
        BillingCountry 
    FROM Invoice
    GROUP BY BillingCountry) 