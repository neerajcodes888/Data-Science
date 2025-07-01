/* 🟢 SQL QUESTION BANK: BASIC TO EXPERT (ALL CONCEPTS)
====================================================

=====================
🧩 1. BASIC SQL (DQL)
=====================

1. Select all columns from a table. */
use org;

select * from employees;

-- 2. Select specific columns from 'employees'.

select emp_id,emp_name from employees;

-- 3. Filter records where salary > 50000.

select * from employees where salary > 50000;

-- 4. Use BETWEEN to filter hire_date between 2020 and 2024.

select * from employees where year(hire_date) between 2020 and 2024;

-- 5. Use IN to find employees in 'HR', 'IT'.

select * from employees e join departments d on e.dept_id=d.dept_id 
where dept_name in('HR','IT');

-- 6. Use LIKE to find names starting with 'J'.

select emp_name from employees where emp_name like 'J%';

-- 7. Use IS NULL to find employees without department.


select * from employees e join departments d on e.dept_id=d.dept_id 
where dept_name is null;

-- 8. Order employees by salary descending.

select * from employees order by salary desc;

-- 9. Count total number of employees.

 select count(*) as "Total Employees" from employees;
 
 -- 10. Find min, max, average salary.

select min(salary) as "Minimum Salary" , max(salary) as "Maximum Salary",
round(avg(salary),2) as "Average Salary" from employees;

/* -- ======================
🛠️ 2. SQL FUNCTIONS
======================
11. Use CONCAT to join first and last names. */

select concat(first_name,last_name) from employees;

-- 12. Extract year from hire_date.

select year(hire_date) from employees;

-- 13. Round a decimal salary to 2 digits.

select round(salary,2) from employees;

-- 14. Use UPPER and LOWER on employee names.

select upper(emp_name),lower(emp_name) from employees;

-- 15. Use LENGTH() to get name lengths.

select length(emp_name) from employees;

/*
=======================
📌 3. GROUP BY & HAVING
=======================
16. Count employees per department.
*/

select dept_name,count(*) as "Total Employees" from employees e join departments d
on e.dept_id=d.dept_id
group by dept_name;

-- 17. Average salary per job title.

select dept_name,round(avg(salary),2) as "Average Salary" from employees e join departments d
on e.dept_id=d.dept_id
group by dept_name;

-- 18. Filter departments having more than 5 employees.

select dept_name,count(*) as "Total Employees" from employees e join departments d
on e.dept_id=d.dept_id
group by dept_name having count(*) >=5;

-- 19. Find max salary per department.

select dept_name,max(salary) as "Maximum Salary" from employees e join departments d
on e.dept_id=d.dept_id
group by dept_name;

-- 20. Count how many employees joined each year.

select year(hire_date),count(*) as "Joined" from employees
group by year(hire_date);

-- 21. INNER JOIN employees and departments.

select * from employees e inner join departments d
on e.dept_id=d.dept_id;

-- 22. LEFT JOIN employees and sales.

select * from employees e left join sales s
on e.emp_id=s.emp_id;


-- RIGHT JOIN employees and departments.

select * from employees e right join departments d
on e.dept_id=d.dept_id;

-- FULL OUTER JOIN (simulate in MySQL).  won't work in MySql

select * from employees e full outer join departments d
on e.dept_id=d.dept_id; 


-- 25. JOIN three tables: employees, departments, and sales.

select * from employees e 
inner join departments d on e.dept_id=d.dept_id  
inner join sales s on e.emp_id=s.emp_id;

/* =========================
🎯 5. SUBQUERIES & SETS
========================= */

-- 	 26. Find employees with salary > avg salary (subquery).

select * from employees where salary > (select avg(salary) from employees);

-- 27. Find departments with no employees (NOT EXISTS).


select * from employees where not exists(select * from employees e right join departments d
on e.dept_id=d.dept_id where e.dept_id=d.dept_id); 



-- 28. Find employees who made a sale in Jan but not in Feb.

select * from employees where exists(select * from employees e inner join sales s
on e.emp_id=s.emp_id where month(s.sale_date)=1) and not exists(select * from employees e inner join sales s
on e.emp_id=s.emp_id where month(s.sale_date)!=3);

-- 29. Use UNION to merge two SELECT queries.(Gives common entity by removing duplicates)


select dept_id from employees
union
select dept_id from departments;    

-- 29b. Use UNION ALL to merge two SELECT queries.(Gives common entity by keeping duplicates)

select dept_id from employees
union all
select dept_id from departments;


-- 30. Use INTERSECT and EXCEPT (PostgreSQL/Oracle)

select dept_id from employees
intersect
select dept_id from departments;

select dept_id from employees
except
select dept_id from departments;

/* ============================
⚙️ 6. DDL - CREATE / ALTER / DROP
============================ */

-- 31. Create a table for employees.

create table emp(name char(30),emp_id int(10) not null primary key;,designation char(12));

-- 32. Add a new column 'bonus' to employees.

alter table emp add column bonus float;

-- 33. Modify datatype of 'bonus to double.

alter table emp change column bonus bonus double;

create table temp_projects(temp varchar(30));
--  34. Drop the 'temp_projects' table.

drop table temp_projects;

-- 35. Create a table with foreign key constraints.


create table sal(sal_id int(10) not null primary key,sal_amount double,emp_id int,foreign key(emp_id) references emp(emp_id));