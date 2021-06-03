SELECT
    CONCAT(emp.FirstName, ' ', emp.LastName) AS 'Nome completo',
    COUNT(*) AS 'Total de pedidos'
  FROM w3schools.orders AS ord
  INNER JOIN
    w3schools.employees AS emp ON emp.EmployeeID = ord.EmployeeID
GROUP BY 1
ORDER BY 2;
