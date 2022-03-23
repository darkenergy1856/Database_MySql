-- 11. Query to display the Name, Salary and Commission for all the employees who earn commission.
SELECT Ename 'Name',
    Salary,
    Commision
FROM emp_dept.employee
WHERE employee.Commision IS NOT NULL;
