SELECT productCode, (buyPrice * 1.15) AS totalPrice FROM products WHERE quantityInStock < 100;
