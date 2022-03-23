-- 34. Query to display the Employee No. And Name for all employees who earn more than the average salary. 
select Ename,
    Eno
from emp_dept.employee
where employee.Salary > (
        select avg(emp_dept.employee.Salary) 'Avg'
        from emp_dept.employee
    );
