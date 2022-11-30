SELECT 
    MAX(TotalSales),
    EmployeeName
FROM
    (
    SELECT
        "$" || printf("%.2f", SUM(i.Total)) AS TotalSales,
        e.FirstName || ' ' || e.LastName AS EmployeeName
    FROM
        Invoice i,
        Employee e,
        Customer c
    WHERE 
        i.CustomerId = c.CustomerId
        AND c.SupportRepId = e.EmployeeId
    GROUP BY
        EmployeeName
    ) AS Sales;
    