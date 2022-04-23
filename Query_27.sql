-- Query to display Name, Dept No. And Salary of any employee whose department No. and salary matches both the department no. And the salary of any employee who earns a commission.

SELECT 
    Ename, Dno, Salary
FROM
    EMPLOYEE
WHERE
    (Dno , Salary) IN (SELECT 
            Dno, Salary
        FROM
            EMPLOYEE
        WHERE
            Commision > 0);