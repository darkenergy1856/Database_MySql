-- 26. Query to display Name and Employee no. Along with their supervisor’s Name and the supervisor’s employee no; along with the Employees’ Name who do not have a supervisor.
SELECT 
    t1.ENAME, t1.Eno, t1.SupervisionENO, t2.ENAME
FROM
    emp_dept.employee t1
        LEFT JOIN
    emp_dept.employee t2 ON t1.SupervisionENO = t2.Eno;