-- 33. Query to display Name and Hire Date for all employees in the same dept. as Blake. 
SELECT Ename 'Name',
    Hire_Date 'Hire Date'
FROM emp_dept.employee
    LEFT JOIN emp_dept.departement ON employee.Dno = departement.Dno
WHERE departement.dname = 'Blake';
