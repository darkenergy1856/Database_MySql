-- 25. Query to display Name, Job, departement No. And departement Name for all the employees working at the Dallas location.
select Ename 'Name',
    Job_Type 'JOB',
    departement.Dno as 'departement No.',
    departement.Dname as 'departement Name'
from emp_dept.employee
    left join emp_dept.departement on employee.Dno = departement.Dno
WHERE departement.Location = 'Dallas';
