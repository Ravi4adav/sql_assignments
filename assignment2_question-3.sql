CREATE DATABASE assignment;

USE assignment;

CREATE TABLE car_customer(
CUSTOMERID INT,
CustomerName varchar(100),
ContactName varchar(100),
Address varchar(300),
City varchar(20),
PostalCode varchar(10),
Country varchar(20),
PRIMARY KEY (CUSTOMERID)
);


INSERT INTO car_customer VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico'),
(3,	'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312',	'México D.F.', '05023', 'Mexico'),
(4,	'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', '135001', 'UK'),
(5,	'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', '135002', 'Sweden'),
(6,	'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany');


SELECT * FROM car_customer;

---------------- Following are the aggregate functions present in SQL -----------------;

------- COUNT --> used to give the number of values present in an attribute --------;
SELECT COUNT(PostalCode) as PostalCode_frequency From car_customer;

------- MAX --> used to get the maximum value present inside a field -----------;
SELECT MAX(PostalCode) as PostalCode_max From car_customer;


------- MIN --> used to get the minimum value present inside a field -----------;
SELECT MIN(PostalCode) as PostalCode_min From car_customer;

------- AVG --> used to get the average value of a field ----------;
SELECT AVG(PostalCode) as PostalCode_average From car_customer;


------- SUM --> used to get the sum of all value of a field -----------;
SELECT SUM(PostalCode) as PostalCode_average From car_customer;
