create database LAB4;
use LAB4;
create table EMP (empno int, ename varchar(20), job varchar(15), mgr int, hiredate date, sal numeric, comm numeric, deptno int);

## 500091584 ##
insert into EMP values (7369, "SMITH", "CLERK", 7902, '1980-12-17', 500, 800, 20),
(7499, "ALLEN", "SALESMAN", 7698, '1981-02-20', 1600, 300, 30),
(7521, "WARD", "SALESMAN", 7698, '1981-02-22', 1250, 500, 30),
(7566, "JONES", "MANAGER", 7839, '1981-04-02', 2975, NULL, 20),
(7654, "MARTIN", "SALESMAN", 7698, '1981-09-28', 1250, 1400, 30),
(7698, "BLAKE", "MANAGER", 7839, '1981-05-01', 2850, NULL, 30), 
(7782, "CLARK", "MANAGER", 7839, '1981-06-09', 2450, NULL, 10),
(7788, "SCOTT", "ANALYST", 7566, '1982-12-09', 3000, NULL, 20),
(7839, "KING", "PRESIDENT", NULL, '1981-11-17', 5000, NULL, 10),
(7844, "TURNER", "SALESMAN", 7698, '1981-09-08', 1500, 0, 30),
(7876, "ADAMS", "CLERK", 7788, '1983-01-12', 1100, NULL, 20),
(7900, "JAMES", "CLERK", 7698, '1981-12-03', 950, NULL, 30),
(7902, "FORD", "ANALYST", 7566, '1981-12-03', 3000, NULL, 20),
(7934, "MILLER", "CLERK", 7782, '1982-12-23', 1300, NULL, 10);

create table dept(deptno numeric, dname varchar(15), loc varchar(10));
INSERT INTO dept VALUES(10, "ACCOUNTING", "NEW YORK"),(20, "RESEARCH", "DALLAS"),
(30, "SALES", "CHICAGO"),(40, "OPERATIONS", "BOSTON");
describe dept;
 ## 500091584 ##

select * from dept;
select * from EMP where sal>(select sal from EMP where ename="BLAKE");
select * from EMP  where job=(select job from EMP where ename="ALLEN");
select * from EMP where sal in (select sal from EMP where ename="FORD" or ename ="SMITH") order by ename desc;

## 500091584 ##
select * from EMP where job=(select job from EMP where ename="MILLER") or sal>(select sal from emp where ename="ALLEN");
select * from emp where sal=(select MAX(sal) from emp);

select * from emp where hiredate<(select MAX(hiredate)from emp where mgr=(select empno from emp where ename="KING"));
select * from emp where sal in (select MAX(sal) from emp GROUP BY deptno);
select * from emp where sal=(select (MAX(sal)+MIN(sal))/2 from emp);
select * from emp e where hiredate in(select hiredate from emp where e.empno<>empno);
select * from emp e where hiredate <(select hiredate from emp where empno=e.mgr);