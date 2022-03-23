-- 7. Query to display Employee Name and Salary for all employees whose salary is not in the range of $1500 and $2850.
SELECT Ename,
    Salary
FROM emp_dept.employee
WHERE salary NOT IN (1500, 2850);
