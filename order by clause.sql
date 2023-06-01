use ujjwaldb;
select * from student;
select * from student order by marks desc;
select * from student order by roll_no asc;
update student set age=90
where roll_no=2;

rollback;
