-- 23. Query to display Unique Listing of all Jobs that are in departement number 30. 
select distinct employee.Job_Type as 'Unique Job'
from emp_dept.employee
where employee.Dno = 30;