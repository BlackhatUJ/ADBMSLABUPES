create database LAB3;
use LAB3;
create  table supplier(scode varchar(10) primary key, sname varchar(20), scity varchar(15),turnover int );
create table part (pcode varchar(15) primary key, weight int, color varchar(10), cost int, selling_price int);
create table supplier_part(scode varchar(10) references supplier(scode), pcode varchar(15) references part(pcode), qty int);
desc supplier;
desc part;
desc supplier_part;
 
 ## 500091584 ##

insert into supplier values ("s1", "ujjwal", "kannauj",60000000), ("s2","sangini", "asansol", 100000),
("s3", "nishant", "delhi", 156000),
("s4", "aryansh", "bijnor", 150000);
insert into supplier values("s7", "xyz","chennai",null );
insert into part  values("p1", 20, "green", 15,50),("p2", 50, "blue", 20,100),
("p3",25, "red", 15, 30), ("p4", 15, "violet", 20, 50), ("p5", 60, "black", 26,35);

## 500091584 ##
insert into supplier_part values("s1", "p1",200), 
("s2","p1", 150), ("s3", "p1", 200), ("s4", "p1", 200),
("s2","p1", 120),("s2", "p4", 20),("s3", "p3", 50),
 ("s4", "p4", 150),("s4", "p4", 150),("s4", "p5", 200),("s3", "p2", 60);
select * from supplier_part;

## 500091584 ##
#select sname from supplier,part,supplier_part where part.color="red" and supplier_part.scode=supplier.scode and supplier_part.pcode=part.pcode;
#select sname from supplier, supplier_part,part where part.pcode ="p1"and supplier_part.pcode=part.pcode;

## 500091584 ##

select scode, pcode from supplier_part order by scode asc; 
select * from supplier where scity="bombay" and turnover=50;
select count(scode) from supplier;

## 500091584 ##
select pcode  from part where weight between 25 and 35;
select scode from supplier where turnover is null;
select pcode from part where cost in(20,30,40);
select sum(qty) from supplier_part where pcode="p2";

## 500091584 ##
select supplier.sname from supplier inner join supplier_part 
on supplier.scode=supplier_part.scode
where supplier_part.pcode="p2";

 ## 500091584 ##
select pcode from part where cost >(select avg(cost) from part);
select scode, turnover from supplier order by turnover desc;
