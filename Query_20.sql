-- 20. Query to display Name with the 1st letter capitalized and all other letter lower case and length of their name of all the employees whose name starts with ‘J’, ’A’ and ‘M’. 
select concat(
        left(Ename, 1),
        lower(right(Ename, char_length(Ename) - 1))
    ) as 'Name'
from emp_dept.employee
where Ename like 'A%'
    or Ename like 'J%'
    or Ename like 'M%';