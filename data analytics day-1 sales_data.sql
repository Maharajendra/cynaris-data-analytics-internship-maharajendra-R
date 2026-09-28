CREATE DATABASE da_sales;

CREATE TABLE sales_data (
Transaction_ID INT PRIMARY KEY,
Date DATE,
Customer_ID VARCHAR(5),
Product_ID VARCHAR(5),
Category VARCHAR(15),
Units VARCHAR(4),
Unit_Price DECIMAL(5,2),
Discount_Pct INT,
Channel VARCHAR(20),
City VARCHAR(25),
Return_Flag INT
);

SELECT * FROM sales_data;
USE da_sales;
INSERT INTO sales_data VALUES
(50, '2025-10-01', 'C51' ,'P1', 'Health', 5, 1311.00, 0, 'Website', 'Jaipur', 0);




drop database da_sales;

CREATE DATABASE da_sales;
USE da_sales;

CREATE TABLE sales_data (
    Transaction_ID VARCHAR(10) PRIMARY KEY,
    Date DATE,
    Customer_ID VARCHAR(5),
    Product_ID VARCHAR(5),
    Category VARCHAR(15),
    Units INT,
    Unit_Price DECIMAL(10,2),
    Discount_Pct INT,
    Channel VARCHAR(20),
    City VARCHAR(25),
    Return_Flag INT
);

INSERT INTO sales_data VALUES
('T50', '2025-10-01', 'C51', 'P1', 'Health', 5, 1311.00, 0, 'Website', 'Jaipur', 0);

SELECT * FROM sales_data;
INSERT INTO sales_data VALUES
('T100','2026-05-25', 'C101','P1','Sports', 5,	720, 5,	'Offline', 'Jaipur',0);

INSERT INTO sales_data VALUES
('T200', '2025-08-07', 'C1', 'P1', 'Grocery', 5,	667, 0, 'Website', 'Jaipur', 1);
INSERT INTO sales_data VALUES
('T250', '2024-09-13', 'C51', 'P1',	'Home',	2,	4597,	0,	'App',	'Kolkata',	0);
INSERT INTO sales_data VALUES
('T300', '2026-03-04', 'C101', 'P1', 'Electronics',	5,	2408,	5,	'Offline', 'Kolkata',	0);
INSERT INTO sales_data VALUES
('T350', '2025-07-11', 'C151', 'P1', 'Apparel',	1,	2174,	15,	'Marketplace', 'Jaipur',0);
INSERT INTO sales_data VALUES
('T400', '2025-01-03', 'C1', 'P1',	'Apparel',	3,	1117,	15,	'App','Kolkata', 0);
INSERT INTO sales_data VALUES
('T450', '2025-02-11', 'C51', 'P1',	'Health',	1,	4215,	0,	'Website',	'Delhi', 0);


SELECT * FROM sales_data;


SELECT transaction_ID, Category, Units, city
FROM sales_data;
SELECT * FROM sales_data WHERE city = 'jaipur';

SELECT * FROM sales_data where city = 'jaipur'
 AND category = 'apparel';
 
 
 SELECT * FROM sales_data WHERE city = 'kolkata'
 and category = 'Electronics';

select * from sales_data where city = 'Delhi'
and Product_ID = 'P1';


select * from sales_data where city = 'Kolkata'
and category = 'Health';


SELECT * FROM sales_data WHERE city = 'Kolkata'
AND customer_ID = 'C151';


SELECT * FROM sales_data WHERE city = 'kolkata'
OR city = 'jaipur';

SELECT * FROM sales_data WHERE NOT category = 'Apparel';

SELECT * FROM sales_data where category <> 'Home';


SELECT * FROM sales_data WHERE customer_ID LIKE 'C1%';


SELECT * FROM sales_data WHERE city IN ('Kolkata', 'Delhi', 'Jaipur');

SELECT * FROM sales_data WHERE units BETWEEN 2 AND 5;

SELECT * FROM sales_data
 WHERE date BETWEEN '2025-01-01' AND '2025-12-31';


SELECT * FROM sales_data WHERE city IS NULL;


SELECT * FROM sales_data WHERE category IN ('Health', 'Apparel')
AND city IN ('Kolkata', 'Jaipur')
AND units >= 2;