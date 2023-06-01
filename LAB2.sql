show databases;
## 500091584 Ujjwal Kumar Gupta ##
create database lab2;
use lab2;
create table CLIENT_MASTER_1(CLIENTNO varchar(6) primary key, check (CLIENTNO like "C%"), NAME varchar(30)  NOT NULL, ADDRESS1 varchar(30),
ADDRESS2 varchar(30), CITY varchar(15), PINCODE int(8), STATE varchar(15), BALDUE decimal(10,2));
desc  CLIENT_MASTER_1;
select * from CLIENT_MASTER_1;

## 500091584 Ujjwal Kumar Gupta##

create table PRODUCT_MASTER_1(PRODUCTNO varchar(6) primary key , check(PRODUCTNO like "P%"), DESCRIPTION VARCHAR (15) NOT NULL, 
PROFITPERCENT DECIMAL(4,2) NOT NULL, UNIT_MEASURE VARCHAR(10) NOT NULL, QTYONHAND INT(8) NOT NULL, REORDER_VL INT(8)NOT NULL, 
SELLPRICE DECIMAL(8,2)NOT NULL, COSTPRICE DECIMAL(8,2)NOT NULL);
desc PRODUCT_MASTER_1;
select * from PRODUCT_MASTER_1;

 
 create table SALESMAN_MASTER_1(SALESMANNO VARCHAR(6)primary key , check(SALESMANNO like "S%"), SALESMANNAME VARCHAR(20)NOT NULL, 
 ADDRESS1 VARCHAR (30)NOT NULL, ADDRESS2 VARCHAR(30), CITY VARCHAR(20), PINCODE INT,STATE VARCHAR (20), 
SALAMT double precision NOT NULL  check(SALAMT!=0),TGTTOGET DECIMAL(20,3)NOT NULL check (TGTTOGET!=0), YTDSALES DOUBLE(6,2)NOT NULL, REMARKS VARCHAR(60));
desc SALESMAN_MASTER_1;
select * from SALESMAN_MASTER_1;
## 500091584 Ujjwal Kumar Gupta ##


insert into CLIENT_MASTER_1(CLIENTNO, NAME,CITY,PINCODE,STATE,BALDUE) values ('C00006', 'Deepak Sharma','Mangalore', 560050, 'Karnataka',0 );
select * from CLIENT_MASTER_1;


INSERT INTO PRODUCT_MASTER_1(PRODUCTNO ,DESCRIPTION,PROFITPERCENT,UNIT_MEASURE,QTYONHAND,REORDER_VL,SELLPRICE,COSTPRICE)VALUES 
('P08865', 'SKIRTS', 5, 'PIECE', 75, 30,450, 300);
select * from PRODUCT_MASTER_1;

INSERT INTO SALESMAN_MASTER_1(SALESMANNO, SALESMANNAME, ADDRESS1, ADDRESS2, CITY, PINCODE,STATE) VALUES
('S00001','AMAN','A/14', 'WORLI', 'MUMBAI', 40002, 'MAHARASHTRA');
select * from SALESMAN_MASTER_1;

create table AUTHOR(Author_ID varchar(5)primary key, Lastname varchar(15) not null, Firstname varchar(15) not null, Email varchar(40), City varchar(15), Country varchar(15));
create table BOOK(Book_ID varchar(5) primary key , check(Book_ID like "B%"), Book_Title varchar(60) not null, Copies int , check(Copies >2));


## 500091584 Ujjwal Kumar Gupta ##

create table AUTHOR_LIST(Author_ID varchar(5), 
Book_ID varchar(5), Au_role varchar(15), constraint pk primary key(Author_ID, Book_ID), foreign key (Author_ID) 
references AUTHOR(Author_ID), foreign key (Book_ID) references BOOK(Book_ID));
desc AUTHOR_LIST;

## enter four records ##
insert into AUTHOR values("A1","kirby", "landon", "landon@gmail.com", "mexico", "USA"),
("A2","mikaelson", "Hope", "hope@gmail.com", "london", "england"),
("A3", "saltzman","Alaric", "saltzman01@gmail.com", "Texas", "USA"),
("A4", "gilbert", "elena", "gilbert2gmail.com", "new jersey" , "USA");
select* from AUTHOR;

## 500091584 Ujjwal Kumar Gupta ##

insert into BOOK values("B1", "HEllo!",400000 ),
("B2", "money mined", 500041),
("B3","criminal mind", 500000),
("B4", "song of ice and fire", 8000000);
select * from BOOK;

insert into AUTHOR_LIST values("A1", "B1","Author"),
("A2", "B2", "Author"),
("A3", "B3", "Author"),
("A4", "B4", "Author");

select * from AUTHOR_LIST;
alter table AUTHOR_LIST add column Publisher varchar(30);
desc AUTHOR_LIST;

## 500091584 Ujjwal Kumar Gupta ##









