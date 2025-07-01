
# 🟢 SQL QUESTION BANK: BASIC TO EXPERT

> A structured guide covering SQL concepts from beginner to expert level with practical examples.

---

## 🧩 1. BASIC SQL (DQL)

```sql
-- 1. Select all columns from 'employees'
SELECT * FROM employees;

-- 2. Select specific columns
SELECT emp_id, emp_name FROM employees;

-- 3. Filter records where salary > 50000
SELECT * FROM employees WHERE salary > 50000;

-- 4. Use BETWEEN on hire_date
SELECT * FROM employees WHERE YEAR(hire_date) BETWEEN 2020 AND 2024;

-- 5. Use IN to find employees in HR, IT
SELECT * FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
WHERE dept_name IN ('HR', 'IT');

-- 6. LIKE for names starting with 'J'
SELECT emp_name FROM employees WHERE emp_name LIKE 'J%';

-- 7. IS NULL to find employees without department
SELECT * FROM employees e
LEFT JOIN departments d ON e.dept_id = d.dept_id
WHERE d.dept_name IS NULL;

-- 8. Order by salary descending
SELECT * FROM employees ORDER BY salary DESC;

-- 9. Count total number of employees
SELECT COUNT(*) AS "Total Employees" FROM employees;

-- 10. Find min, max, avg salary
SELECT 
    MIN(salary) AS "Minimum", 
    MAX(salary) AS "Maximum", 
    ROUND(AVG(salary), 2) AS "Average"
FROM employees;
```

---

## 🛠️ 2. SQL FUNCTIONS

```sql
-- 11. CONCAT first and last name
SELECT CONCAT(first_name, last_name) FROM employees;

-- 12. Extract year from hire_date
SELECT YEAR(hire_date) FROM employees;

-- 13. Round salary
SELECT ROUND(salary, 2) FROM employees;

-- 14. UPPER & LOWER on names
SELECT UPPER(emp_name), LOWER(emp_name) FROM employees;

-- 15. LENGTH of employee names
SELECT LENGTH(emp_name) FROM employees;
```

---

## 📌 3. GROUP BY & HAVING

```sql
-- 16. Count employees per department
SELECT dept_name, COUNT(*) AS "Total Employees"
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY dept_name;

-- 17. Avg salary per department
SELECT dept_name, ROUND(AVG(salary), 2) AS "Average Salary"
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY dept_name;

-- 18. Departments with > 5 employees
SELECT dept_name, COUNT(*) AS "Total Employees"
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY dept_name
HAVING COUNT(*) >= 5;

-- 19. Max salary per department
SELECT dept_name, MAX(salary) AS "Max Salary"
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY dept_name;

-- 20. Count employees joined each year
SELECT YEAR(hire_date), COUNT(*) AS "Joined"
FROM employees
GROUP BY YEAR(hire_date);
```

---

## 🔗 4. JOINS

```sql
-- 21. INNER JOIN
SELECT * FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id;

-- 22. LEFT JOIN with sales
SELECT * FROM employees e
LEFT JOIN sales s ON e.emp_id = s.emp_id;

-- 23. RIGHT JOIN with departments
SELECT * FROM employees e
RIGHT JOIN departments d ON e.dept_id = d.dept_id;

-- 24. FULL OUTER JOIN simulation (MySQL)
SELECT * FROM employees e
LEFT JOIN departments d ON e.dept_id = d.dept_id
UNION
SELECT * FROM employees e
RIGHT JOIN departments d ON e.dept_id = d.dept_id;

-- 25. JOIN 3 tables
SELECT * FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
JOIN sales s ON e.emp_id = s.emp_id;
```

---

## 🎯 5. SUBQUERIES & SET OPERATIONS

```sql
-- 26. Employees with salary > avg salary
SELECT * FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- 27. Departments with no employees
SELECT * FROM departments d
WHERE NOT EXISTS (
  SELECT 1 FROM employees e WHERE e.dept_id = d.dept_id
);

-- 28. Employees who made a sale in Jan but not in Feb
SELECT * FROM employees e
WHERE EXISTS (
  SELECT 1 FROM sales s
  WHERE s.emp_id = e.emp_id AND MONTH(s.sale_date) = 1
)
AND NOT EXISTS (
  SELECT 1 FROM sales s
  WHERE s.emp_id = e.emp_id AND MONTH(s.sale_date) = 2
);

-- 29. UNION
SELECT dept_id FROM employees
UNION
SELECT dept_id FROM departments;

-- 29b. UNION ALL
SELECT dept_id FROM employees
UNION ALL
SELECT dept_id FROM departments;

-- 30. INTERSECT / EXCEPT (PostgreSQL or Oracle only)
SELECT dept_id FROM employees
INTERSECT
SELECT dept_id FROM departments;

SELECT dept_id FROM employees
EXCEPT
SELECT dept_id FROM departments;
```

---

## ⚙️ 6. DDL – CREATE / ALTER / DROP

```sql
-- 31. Create table
CREATE TABLE emp (
  name CHAR(30),
  emp_id INT(10) NOT NULL PRIMARY KEY,
  designation CHAR(12)
);

-- 32. Add column
ALTER TABLE emp ADD COLUMN bonus FLOAT;

-- 33. Change column type
ALTER TABLE emp CHANGE COLUMN bonus bonus DOUBLE;

-- 34. Drop table
CREATE TABLE temp_projects (temp VARCHAR(30));
DROP TABLE temp_projects;

-- 35. Create foreign key
CREATE TABLE sal (
  sal_id INT(10) NOT NULL PRIMARY KEY,
  sal_amount DOUBLE,
  emp_id INT,
  FOREIGN KEY (emp_id) REFERENCES emp(emp_id)
);
```

---

## 👨‍💻 Author Info

**Neeraj Kumar**  
🎓 MCA '24 | NIT Warangal  
📧 neerajmail888@gmail.com  
📱 +91 7070672322  
🔗 GitHub: [neerajcodes888](https://github.com/neerajcodes888)
