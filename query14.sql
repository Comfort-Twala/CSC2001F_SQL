SELECT orderdetails.orderNumber, orders.status, orderdetails.quantityOrdered, productName 
FROM ((products 
INNER JOIN orderdetails ON products.productCode = orderdetails.productCode) 
INNER JOIN orders ON orderdetails.orderNumber = orders.orderNumber) 
WHERE productVendor = 'Exoto Designs' AND status = 'Cancelled';
