-- 19.Query to display the following for each employee < E - Name > earns < Salary > monthly but wants < 3 * Current Salary >.Label the Column as Dream Salary.
select concat(
        Ename,
        ' earns ',
        Salary,
        ' monthly but wants ',
        (Salary * 3)
    ) AS 'Dream Salary'
from emp_dept.employee;
