SET @newNum = (SELECT MAX(employeeNumber) FROM employees) + 1;
UPDATE employees 
SET employeeNumber = (SELECT MAX(employeeNumber) FROM employees) + 1;
WHERE employeeNumber = 1625;
SELECT * FROM employees WHERE employeeNumber = @newNum;