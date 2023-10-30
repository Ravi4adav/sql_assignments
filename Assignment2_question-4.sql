USE assignment;

CREATE TABLE pivot_table
(
Product_name varchar(50),
Sales_date varchar(10),
Sales_amount double
);

INSERT INTO pivot_table  
VALUES ('Product A', '2022-01-01', 500),
('Product B', '2022-01-01', 750),
('Product C', '2022-01-01', 1000),
('Product A', '2022-01-02', 800),
('Product B', '2022-01-02', 900),
('Product C', '2022-01-02', 1200);

SELECT * FROM pivot_table;



-------------- EXECUTING PIVOT QUERY --------------;

SELECT
  Sales_date,
  MAX(CASE WHEN Product_name = 'Product A' then Sales_amount END) AS Product_A,
  MAX(CASE WHEN Product_name = 'Product B' then Sales_amount END) AS Product_B,
  MAX(CASE WHEN Product_name = 'Product C' then Sales_amount END) AS Product_C
FROM
  pivot_table
GROUP BY
  Sales_date;

