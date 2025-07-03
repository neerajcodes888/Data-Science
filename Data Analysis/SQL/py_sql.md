 """# 🧠 SQL Practice Questions for Python (SQLite / Pandas)

## 🧩 Basic SELECT & Filtering
1. Select all columns from the `employees` table.
2. Get names of employees with salary greater than 85,000.
3. Find employees in department 10.
4. List distinct department IDs from employees.
5. Show the top 3 highest salaries.

## 🧮 Aggregations
6. Find the average salary of all employees.
7. Count how many employees are in each department.
8. Find the total salary paid by each department.
9. Get the minimum and maximum salary in the company.
10. Count departments with more than 1 employee.

## 🔗 JOINs
11. Join employees with their department names.
12. List all employees and their department name, including departments without employees.
13. Find departments that have no employees.
14. Show employee name, salary, and department name for each employee.
15. List all departments and the number of employees in each (even if 0).

## 🧠 Subqueries & EXISTS
16. Find employees whose salary is above the company average.
17. Get departments where no employee earns more than 90,000.
18. Find employees who are in the same department as 'Alice'.
19. List employees who do not belong to any department.
20. Show departments that have at least one employee with salary > 90,000.

## 🧱 Window Functions (SQLite 3.25+ or Pandas)
21. Assign a rank to employees based on salary (highest to lowest).
22. Find the second highest salary.
23. Show each employee's salary compared to the department average.
24. Create a running total of salaries.
25. Assign quartiles (NTILE(4)) to employee salaries.

## 🔄 Set Operations
26. Get all unique department IDs from both `employees` and `departments` (`UNION`).
27. Get department IDs present in `departments` but not in `employees` (`EXCEPT`).
28. Get common department IDs from both tables (`INTERSECT`).

## 🔄 DML & Constraints (for simulation)
29. Insert 3 new employees into the `employees` table.
30. Update salary for employees in IT department.
31. Delete employees with salary below 60,000.
32. Add a `bonus` column to `employees`.
33. Set `bonus = 10000` for employees with salary > 90,000.

## 🧪 Miscellaneous
34. Find duplicate department IDs in employees (if any).
35. Show employees sorted by salary in descending order.
36. Find employees whose name starts with 'A'.
37. Count employees per department, only for departments with more than 2 employees.
38. Get employee names in lowercase and uppercase.
39. Find the length of each employee's name.
40. Get employees hired in January (if you add a `hire_date` column).
"""

