-- 38. Display names of employees along with their departement name who have more than 20 years experience
SELECT y.ENAME 'Name',
    emp_dept.departement.Dname
FROM (
        SELECT DATEDIFF(DATE(NOW()), emp_dept.employee.hire_date) / 365 AS 'experience',
            emp_dept.employee.Ename,
            emp_dept.employee.Dno 'Dno'
        FROM emp_dept.employee
    ) y
    LEFT JOIN emp_dept.departement ON y.Dno = departement.Dno
WHERE y.experience > 20;