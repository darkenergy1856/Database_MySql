-- 41. Query to find the employee’ name who is not supervisor and name of supervisor supervising more than 5 employees.
SELECT 
    ENAME AS 'Employee Name'
FROM
    emp_dept.employee
WHERE
    Eno NOT IN (SELECT 
            SupervisionENO
        FROM
            emp_dept.employee
        WHERE
            SupervisionENO IS NOT NULL) 
UNION 
select ENAME from emp_dept.employee where Eno in  (SELECT 
    customTable.SupervisionENO
FROM
    (SELECT 
        SupervisionENO, COUNT(Eno) AS 'NoOfEmployee'
    FROM
        emp_dept.employee
    WHERE
        SupervisionENO IS NOT NULL
    GROUP BY (SupervisionENO)) customTable
WHERE
    customTable.NoOfEmployee > 5);

