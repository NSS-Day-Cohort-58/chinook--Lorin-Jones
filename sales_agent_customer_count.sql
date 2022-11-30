SELECT
    FullName,
    TotalCustomers
FROM
    (
    SELECT
        e.FirstName || ' ' || e.LastName AS FullName,
        SUM(c.SupportRepId) AS TotalCustomers
    FROM
        Employee e,
        Customer c
    WHERE 
        c.SupportRepId = e.EmployeeId
    GROUP BY EmployeeId) AS Customers
