--*Database connections**
-- Field | Value |
-----|---|
-- Login | `sa` |
-- Default Password | Ulht#db26!Class |

-- ex 1
SELECT *FROM sys.tables;

-- é possivel identificar as relacoes atraves do schema_id



--ex 2
SELECT  first_name FROM sales.staffs WHERE first_name LIKE '[A-M]%' ;

--ex 3
SELECT  CONCAT( LEFT(first_name,3),' ', manager_id)  AS 'Empregados -> manager id' FROM sales.staffs ;

--ex 4
SELECT product_id AS 'id', UPPER(CONCAT('mota :', product_name)), model_year 'ano modelo', list_price AS'preco'
 FROM production.products;

--ex5
SELECT product_id FROM  production.products WHERE product_id = 8000;

SET IDENTITY_INSERT production.products ON;
INSERT INTO production.products(product_id,product_name, brand_id, category_id,model_year,list_price)
VALUES(8000,'mota voadora',9, 70 ,3000, 8000.9 );
SET IDENTITY_INSERT production.products OFF;

--ex6
UPDATE sales.customers SET first_name = LOWER(first_name) FROM sales.customers WHERE first_name = 'Debra';



