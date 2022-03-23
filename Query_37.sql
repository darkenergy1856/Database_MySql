-- 37. Query to display the departement no, name and job for all employees in the Sales departement.
SELECT employee.Dno,
    ENAME 'Name',
    Job_Type
FROM emp_dept.employee
    LEFT JOIN emp_dept.departement ON employee.Dno = departement.Dno
WHERE departement.Dname = 'Sales';