-- 32. Query to display the departement Name, Location Name, No. of Employees and the average salary for all employees in that departement.
SELECT 
    emp_dept.departement.Dname,
    emp_dept.departement.Location,
    COUNT(departement.Dno) 'No. of Employee' , 
    avg(employee.Salary)
FROM
    emp_dept.departement
        LEFT JOIN
    emp_dept.employee ON employee.Dno = departement.Dno
GROUP BY departement.Dno