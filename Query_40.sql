-- 40. Find the departement name in which at least 20 employees work in.
SELECT y.Dno,
    emp_dept.departement.Dname,
    y.Count
FROM (
        SELECT COUNT(emp_dept.employee.Dno) 'Count',
            emp_dept.employee.Dno 'Dno'
        FROM emp_dept.employee
        GROUP BY emp_dept.employee.Dno
    ) y
    LEFT JOIN emp_dept.departement ON y.Dno = departement.Dno
WHERE y.Count >= 20;
