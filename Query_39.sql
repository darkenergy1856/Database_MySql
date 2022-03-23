-- 39. Display total number of departements at each location
SELECT emp_dept.departement.Location,
    COUNT(DISTINCT (emp_dept.departement.Dname)) 'Count'
FROM emp_dept.departement
GROUP BY emp_dept.departement.Location;