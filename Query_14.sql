-- 14. Query to display Name of all employees either have two ‘R’s or have two ‘A’s in their name and are either in Dept No = 30 or their Manger’s Employee No = 7788.
select Ename
from emp_dept.employee
where (
        Ename like '%R%R%'
        or Ename like '%A%A%'
    )
    and (
        Dno = 30
        or SupervisionENO = 7788
    );
