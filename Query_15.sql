-- 15. Query to display Name, Salary and Commission for all employees whose Commission amount is greater than their Salary increased by 5%.
select Ename,
    Salary,
    Commision
from emp_dept.employee
where Commision > (Salary + 0.05 * Salary);