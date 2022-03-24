-- 36. Query to display the names and salaries of all employees who report to supervisor named ‘King’.
SELECT 
    ENAME, Salary
FROM
    emp_dept.employee
WHERE
    SupervisionENO = (SELECT 
            Eno
        FROM
            emp_dept.employee
        WHERE
            ENAME = 'King');