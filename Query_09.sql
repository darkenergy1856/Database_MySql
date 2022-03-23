-- 9. Query to display Name and Hire Date of every Employee who was hired in 1981.
SELECT Ename,
    Hire_date
FROM emp_dept.employee
WHERE Hire_date LIKE '1981%';
