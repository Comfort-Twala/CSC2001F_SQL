SELECT salesRepEmployeeNumber AS employeeNumber, Count(*) AS numCustomers FROM customers
WHERE ISNULL(salesRepEmployeeNumber) = 0 
GROUP BY salesRepEmployeeNumber 
ORDER BY salesRepEmployeeNumber ASC;