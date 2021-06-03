SELECT
    cn.ContactName AS 'Nome de contato',
    sn.ShipperName AS 'Empresa que fez o envio',
    od.OrderDate AS 'Data do pedido'
  FROM w3schools.orders AS od
        INNER JOIN
    w3schools.customers AS cn ON cn.CustomerID = od.CustomerID
        INNER JOIN
    w3schools.shippers AS sn ON sn.ShipperID = od.ShipperID
  WHERE od.ShipperID <= 2
ORDER BY 1, 2, 3;
