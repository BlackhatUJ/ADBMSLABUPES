use library;
create table issued(issue_no int not null auto_increment, book_id int not null , book_name varchar(40),
primary key(issue_no));
select * from issued;
drop table issued;
insert into issued(book_id, book_name) values (99,"yuaths");
