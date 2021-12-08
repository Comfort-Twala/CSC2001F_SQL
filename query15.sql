SELECT products.productCode 
FROM products 
INNER JOIN orderdetails ON products.productCode = orderdetails.productCode
WHERE products.productCode <> orderdetails.productCode;
