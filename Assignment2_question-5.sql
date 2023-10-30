USE assignment;


---------- CREATING CUSTOMERS TABLE ------------;

CREATE TABLE Customers
(
Customer_id int not null,
Customer_name varchar(60),
Country varchar(10),
PRIMARY KEY (Customer_id)
);

--------- INSERTING VALUES IN CUSTOMERS TABLE ---------;

INSERT INTO Customers VALUES 
(1, 'Alfreds Futterkiste', 'Germany'),
(2, 'Ana Trujillo Emparedados y helados', 'Mexico'),
(3, 'Antonio Moreno Taquería', 'Mexico');

SELECT * FROM Customers;

--------- CREATING ORDERS TABLE ---------;

CREATE TABLE Orders
(
Order_id int not null,
Customer_id int,
Order_date varchar(15),
PRIMARY KEY (Order_id)
);

--------- INSERTING VALUES IN ORDERS TABLE ---------;

INSERT INTO Orders VALUES
(10308, 2, '1996-09-18'),
(10309, 1, '1996-09-19'),
(10310, 77, '1996-09-20');

SELECT * FROM Orders;

--------- JOINING ORDERS AND CUSTOMERS TABLE ----------;
SELECT Customers.Customer_id, Customers.Customer_name, Orders.Order_id, Orders.Order_date
From Customers 
INNER JOIN Orders ON Customers.Customer_id = Orders.Customer_id
ORDER BY Orders.Customer_id;

