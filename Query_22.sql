-- 22. Query to display Name, departement Name and departement No for all the employees.
select Ename,
    departement.Dname,
    departement.Dno
from emp_dept.employee
    left join emp_dept.departement on employee.Dno = departement.Dno;