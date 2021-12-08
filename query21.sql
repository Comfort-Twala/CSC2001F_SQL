SELECT e.employeeNumber, e.firstName, e.lastName, e.reportsTo 
FROM (SELECT MAX(employeeNumber) as temployeeNumber
FROM employees
WHERE employeeNumber < 1625 
AND (jobTitle = 'President' OR jobTitle LIKE 'Sales R%' OR jobTitle LIKE 'V% Sales')
GROUP BY jobTitle) r
INNER JOIN employees e
ON e.employeeNumber = r.temployeeNumber
ORDER BY employeeNumber DESC;