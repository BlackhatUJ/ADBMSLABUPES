create database library;
show databases;
use library;

create table book(s_no int not null auto_increment ,book_id int not null , 
book_name varchar(40) not null,  book_available int,book_quantity  int ,primary key(s_no));
drop table book;
insert into book(book_id, book_name, book_available, book_quantity) values(33,"Basic of petroleum industry ",25,30);
select * from book;
select book_available from book where book_id= 78;

