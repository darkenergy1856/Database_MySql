-- 24. Query to display Name, Dept Name of all employees who have an ‘A’ in their name.
select Ename 'Name',
    departement.Dname 'Dept Name'
from emp_dept.employee
    left join emp_dept.departement on employee.Dno = departement.Dno
where employee.Ename like '%a%';