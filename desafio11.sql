SELECT
    customer1.ContactName AS 'Nome',
    customer1.Country AS 'País',
    COUNT(customer1.ContactName) AS 'Número de compatriotas'
FROM
    w3schools.customers AS customer1,
    w3schools.customers AS customer2
WHERE
    customer1.Country = customer2.Country AND customer1.CustomerID != customer2.CustomerID
GROUP BY 1, 2
ORDER BY 1;
