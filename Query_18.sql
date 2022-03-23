-- 18. Query to display Name and calculate the number of months between today and the date on which employee was hired of departement ‘Purchase’.
select Ename as 'Name',
    TIMESTAMPDIFF(MONTH, hire_date, current_date()) as 'Month Difference'
from emp_dept.employee
    left join emp_dept.departement on employee.Dno = departement.Dno
where departement.Dname = 'Purchase';