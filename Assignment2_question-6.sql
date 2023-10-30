USE assignment;


SELECT * FROM pivot_table;

-------------- CREATING PROCEDURE TO GET THE NTH NUMBER OF MAX VALUES --------------;

DELIMITER //
CREATE PROCEDURE nth_max(IN row_index int)
BEGIN
SET row_index=row_index-1;
SELECT Sales_amount FROM pivot_table
ORDER BY Sales_amount DESC LIMIT 1 OFFSET row_index;
END //
DELIMITER ;

--------------------- EXECUTING PROCEDURE --------------------------;
CALL nth_max(4);
