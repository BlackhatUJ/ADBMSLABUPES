### UJJWAL 500091584 ###
use lab1;
show tables;
select CLIENT_NAME FROM client_master;

select * from client_master;

select CLIENT_NAME, CITY,STATE FROM client_master;

select DESCRIPTION from product_master;
SELECT  CLIENT_NAME FROM client_master WHERE CITY= 'MUMBAI';
select SALESMANNAME FROM salesman_master WHERE SALAMT=3000;

update client_master set CITY= 'BANGLORE' WHERE CLIENTNO='C0005';
SELECT * from client_master;


UPDATE client_master set BALDUE= 1000 where CLIENTNO='C0001';
## 500091584 ###
update product_master set COSTPRICE = 950 where DESCRIPTION ='TROUSERS';
SELECT* FROM product_master;
## 500091584 ##
update salesman_master set CITY= 'PUNE' ;
select * from salesman_master;


## 500091584 ##
delete from salesman_master where SALAMT=3500;
select * from salesman_master;

## 500091584 ##
delete from product_master where QTYONHAND= 100;
select * from product_master;

## 500091584 ##
delete from client_master where STATE='TAMIL NADU';
SELECT * FROM client_master;

## 500091584 ##
ALTER TABLE client_master ADD TELEPHONE INT;
SELECT * FROM client_master;

## 500091584 ##
ALTER TABLE product_master MODIFY SELLPRICE DECIMAL(10,2);

## 500091584 ##
DROP TABLE CLIENT_MASTER;
SHOW TABLES;

## 500091584 ##
ALTER TABLE salesman_master RENAME sman_mast;
show tables;


















