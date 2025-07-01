# 🟢 SQL QUESTION BANK: BASIC TO EXPERT

> Covers all SQL concepts with clear syntax and use cases. Perfect for revision, interviews, or building muscle memory.

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
SELECT MIN(salary) AS "Minimum", MAX(salary) AS "Maximum",
ROUND(AVG(salary), 2) AS "Average" FROM employees;
