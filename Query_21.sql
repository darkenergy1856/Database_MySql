-- 21. Query to display Name, Hire Date and Day of the week on which the employee started. 
select Ename,
    hire_date,
    dayname((hire_date)) as 'Day'
from emp_dept.employee;