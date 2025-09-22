-- Assesment 1 

CREATE DATABASE ProductDB;
USE ProductDB;

-- Create Table Product 

CREATE TABLE Product (
    PRO_ID INT PRIMARY KEY,
    PRO_NAME VARCHAR(100),
    PRO_PRICE DECIMAL(10, 2),
    PRO_COM INT
);

INSERT INTO Product (PRO_ID, PRO_NAME, PRO_PRICE, PRO_COM) VALUES
(101, 'Mother Board', 3200.00, 15),
(102, 'Key Board', 450.00, 16),
(103, 'ZIP drive', 250.00, 14),
(104, 'Speaker', 550.00, 16),
(105, 'Monitor', 5000.00, 11),
(106, 'DVD drive', 900.00, 12),
(107, 'CD drive', 800.00, 12),
(108, 'Printer', 2600.00, 13),
(109, 'Refill cartridge', 350.00, 13),
(110, 'Mouse', 250.00, 12);

-- Checking of Table
SELECT * FROM Product;

-- Query 1
-- Find items whose prices are greater than or equal to 250,  order by price descending, then by product name ascending. 
-- Return PRO_NAME and PRO_PRICE.

SELECT PRO_NAME , PRO_PRICE
FROM Product
WHERE PRO_PRICE >= 250
ORDER BY PRO_PRICE DESC , PRO_NAME  ASC ; 


-- Query 2 
-- Find the cheapest item. Return PRO_NAME and PRO_PRICE.
SELECT PRO_NAME , PRO_PRICE 
FROM Product
WHERE PRO_PRICE = (SELECT MIN(PRO_PRICE) FROM Product);

-- Query 3
-- Calculate the average price of items for each company (PRO_COM). Return PRO_COM and average price.

SELECT PRO_COM, AVG(PRO_PRICE) AS AVG_PRICE
FROM Product
GROUP BY PRO_COM;

-- Query 4  
-- 	Calculate the average total price of all products in the table.
SELECT AVG(PRO_PRICE) AS AVG_TOTAL_PRICE
FROM Product;



