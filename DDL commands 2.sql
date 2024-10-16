    /*Create a database called “Sales” and create a new table named “Orders” in the Sales database
    with columns: (Order_Id, Customer_name, Product_Category, Ordered_item, Contact_No).
    Use constraints: Primary Key Unique Not Null. 
    1. Add a new column named “order_quantity” to the orders table. 
    2. Rename the orders table to the sales_orders table. 
    3. Insert 10 rows into the sales_orders table. 
    4. Retrieve customer_name and Ordered_Item from the sales_orders table. 
    5. Use the update command to change the name of the product for any row. 
    6. Delete the sales_orders table from the database.*/
    
    CREATE DATABASE SALES;
     USE SALES;
     CREATE TABLE ORDERS(Order_Id INT PRIMARY KEY NOT NULL, Customer_name varchar(25),
     Product_Category varchar(25), Ordered_item varchar(25), Contact_No varchar(15));
     INSERT INTO ORDERS(Order_Id, Customer_name,Product_Category, Ordered_item, Contact_No) 
     VALUES 
     (1000201,'ABHI','ELECTRONICS','WATCH','998978652'),
     (1000202,'ABHIJITH','ELECTRONICS','CALCULATOR','999978536'),
	 (1000203,'BALU','ELECTRONICS','TELEVISION','998956789'),
     (1000204,'DIANA','FURNITURE','DINING TABLE','8793456271'),
     (1000205,'JILIN','FURNITURE','SOFA','8799076541'),
     (1000206,'MANEESH','FURNITURE','ALMIRAH','9086957843'),
     (1000207,'MANU','FURNITURE','SOFA','9089775646'),
     (1000208,'NAKUL','ELECTRICALS','MIXER GRINDER','9425126453'),
     (1000209,'NEERAJA','ELECTRICALS','FAN','9425675894'),
     (1000210,'ROBIN','ELECTRICALS','FAN','9425678554');
     SELECT * FROM ORDERS;
	
    #1. Add a new column named “order_quantity” to the orders table. 
    ALTER TABLE ORDERS ADD Order_Quantity int;
    desc ORDERS;
    
    #2. Rename the orders table to the sales_orders table.
    RENAME TABLE ORDERS TO SALES_ORDERS;
    DESC  SALES_ORDERS;
    
  #3. Insert 10 rows into the sales_orders table. 
    INSERT INTO SALES_ORDERS (Order_Id, Customer_name,Product_Category, Ordered_item, Contact_No,Order_Quantity) 
     VALUES 
     (1000201,'ABHI','ELECTRONICS','WATCH','998978652',4),
     (1000202,'ABHIJITH','ELECTRONICS','CALCULATOR','999978536',6),
	 (1000203,'BALU','ELECTRONICS','TELEVISION','998956789',3),
     (1000204,'DIANA','FURNITURE','DINING TABLE','8793456271',5),
     (1000205,'JILIN','FURNITURE','SOFA','8799076541',3),
     (1000206,'MANEESH','FURNITURE','ALMIRAH','9086957843',2),
     (1000207,'MANU','FURNITURE','SOFA','9089775646',7),
     (1000208,'NAKUL','ELECTRICALS','MIXER GRINDER','9425126453',8),
     (1000209,'NEERAJA','ELECTRICALS','FAN','9425675894',3),
     (1000210,'ROBIN','ELECTRICALS','FAN','9425678554',9);
     SELECT * FROM SALES_ORDERS;

#4. Retrieve customer_name and Ordered_Item from the sales_orders table. 
SELECT CUSTOMER_NAME , Ordered_Item FROM SALES_ORDERS;

#5. Use the update command to change the name of the product for any row. 
UPDATE SALES_ORDERS SET ORDERED_ITEM = 'SMART WATCH' WHERE  Ordered_Item = 'WATCH';
SET SQL_SAFE_UPDATES =0;

#6. Delete the sales_orders table from the database.
DROP TABLE sales_orders; 