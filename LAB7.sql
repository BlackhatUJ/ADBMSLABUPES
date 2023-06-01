create database LAB7;
use LAB6;
create index employee_idx on employees(Last_Name, Department_id);
select row_number() over(order by Employee_id) as Employee_id, First_Name, Last_Name, DOB,Salary from employees;
create unique index ROWID on employees(Employee_id);
select ROWID from employees;
show indexes from employees;
create index composite on employees(DOB, Salary,First_Name, Last_Name);
create index case_insensitive on employees (UPPER (Last_Name)) ;