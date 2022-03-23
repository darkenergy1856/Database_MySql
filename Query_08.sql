-- 8. Query to display Employee Name and departement No. of all the employees in Dept 10 and Dept 30 in the alphabetical order by name.
SELECT Ename,
    Dno
FROM emp_dept.employee
WHERE Dno = 10
    OR Dno = 30
ORDER BY Ename;
