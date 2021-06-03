SELECT
    pn.ProductName AS 'Produto',
    MIN(ord.Quantity) AS 'Mínima',
    MAX(ord.Quantity) AS 'Máxima',
    ROUND(AVG(ord.Quantity), 2) AS 'Média'
  FROM w3schools.order_details AS ord
  INNER JOIN
    w3schools.products AS pn ON pn.ProductID = ord.ProductID
  GROUP BY 1
  HAVING `Média` > 20
ORDER BY 4, 1;
