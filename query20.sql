SET @boss = (SELECT reportsTo FROM employees WHERE employeeNumber = 1166);
SELECT employeeNumber FROM employees WHERE reportsTo = @boss AND employeeNumber <> 1166;