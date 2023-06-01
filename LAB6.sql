create database lab6;
use lab6;
CREATE TABLE employees(Employee_id VARCHAR(10) PRIMARY KEY,First_Name VARCHAR(30) 
NOT NULL,Last_Name VARCHAR(30) NOT NULL,DOB DATE,Salary NUMERIC(25) NOT NULL,
Department_id VARCHAR(10));
INSERT INTO employees VALUES("E0001","John","Smith","2001-01-01",25000, "D0001"),
("E0002","Barry","Allen","1980-12-05",25000, "D0002"),
("E0003","Clark","Kent","1990-09-24",25000, "D0003"),
("E0004","James","Miller","1988-11-15",25000, "D0004");
SELECT * FROM employees; 

create view emp_view as
select Employee_id, Last_Name, Salary, Department_id from employees;
 select * from emp_view;
  ## 500091584 ##
  
  alter table employees modify Last_Name varchar(30) NULL;
  alter table employees modify Salary varchar(30) NULL;
  desc emp_view;
  insert into employees values ("E0005", "Peter", "Parker", "1970-08-21", NULL, "D0001"),
  ("E0006", "Holden", NULL , "1970-08-21", 35000, "D0001");
  SELECT * FROM emp_view;
  
  ## 500091584 ##
  update emp_view set Department_id="D0020" where Employee_id="E0004";
  delete from emp_view where Last_Name="Parker";
  select * from emp_view;
  drop view emp_view;
  
  ## 500091584 ##
  create view salary_view as select Employee_id,First_Name, Last_Name, Salary*12,
  Department_id from employees where Department_id="D0020";
  select * from salary_view;
  
  