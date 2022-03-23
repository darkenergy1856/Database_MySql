-- 31. Query to display the total number of supervisors without listing their names.
select count(distinct(emp_dept.employee.SupervisionENO)) 'Distinct'
from emp_dept.employee;