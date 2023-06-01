create database LAB5;
use lab4;
select d.deptno from dept d where not exists (select * from emp where d.deptno=deptno);
## 500091584 ##
select count(*),AVG(sal), deptno,job from emp group by deptno, job;
select MAX(sal) from emp where sal in (select AVG(sal) from emp where job<>"President" group by job);

##500091584 ##
select * from dept where deptno in (select deptno from emp group by deptno having count(*) >= 2);
select deptno, count(*) as "no. of emp" from emp group by deptno having count(*)>=3;

## 500091584 ##
select e.deptno,e.ename,e.sal from emp e where e.sal in (select MAX(sal) from emp group by deptno);
 select e.deptno, AVG(e.sal) from emp e  group by e.deptno having AVG(sal) < (select AVG(sal) from emp);
 
 ## 500091584 ##
 
 select * from emp right join dept on emp.deptno = dept.deptno
 where sal>(select sal from emp where ename="BLAKE");
 
 select * from emp right join dept on emp.deptno= dept.deptno 
 where job in (select job from emp where ename="ALLEN");
 
## 500091584 ##
select * from emp right join dept on emp.deptno= dept.deptno
where sal in (select sal from emp where ename ="FORD" or ename="SMITH")
order by ename desc;

select * from emp right join dept on emp.deptno= dept.deptno
where job=(select job from emp where ename="MILLER") 
or sal>(select sal from emp where ename="ALLEN");

## 500091584 ##
select * from emp right join dept on emp.deptno= dept.deptno
where sal= (select MAX(sal) from emp);

select * from emp right join dept on emp.deptno= dept.deptno
where hiredate<(select MAX(hiredate) from emp 
where mgr=(select empno from emp where ename="KING"));

## 500091584 ##
select * from emp right join dept on emp.deptno= dept.deptno
where sal in (select MAX(sal) from emp group by deptno);


select * from emp right join dept on emp.deptno= dept.deptno
where sal=(select (MAX(sal)+MIN(sal))/2 from emp);

## 500091584 ##
select * from emp e right join dept on e.deptno=dept.deptno
where hiredate in (select hiredate from emp where e.empno <> empno);


select * from emp e right join dept on e.deptno= dept.deptno
where hiredate < (select hiredate from emp where empno=e.mgr);

