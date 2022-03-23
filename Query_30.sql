-- 30. Query to display the number of employees performing the same Job type functions.
select count(distinct(emp_dept.employee.Job_Type)) 'Count'
from emp_dept.employee
group by emp_dept.employee.Job_Type;