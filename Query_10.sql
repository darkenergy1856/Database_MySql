-- 10. Query to display Name and Job of all employees who have not assigned a supervisor.
SELECT Ename,
    Job_type
FROM emp_dept.employee
WHERE SupervisionENO = '';
