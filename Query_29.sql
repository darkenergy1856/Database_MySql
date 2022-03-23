-- 29. Query to display the Highest, Lowest, Sum and Average Salaries of all the employees
select avg(Salary) 'Averge',
    sum(Salary) 'Sum',
    max(Salary) 'Max',
    min(Salary) 'Min'
from emp_dept.employee;