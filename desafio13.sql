SELECT
    pn.ProductName AS 'Produto', pn.Price AS 'Preço'
FROM
    w3schools.order_details AS od
        INNER JOIN
    w3schools.products AS pn ON od.ProductID = pn.ProductID
WHERE
    od.Quantity > 80
ORDER BY 1;
