-- 17. Query to display Name, Hire Date and Salary Review Date which is the 1st Monday after six months of employment.
SELECT y.Emp_name AS 'Name',
    y.Hiring_date,
    CASE
        WHEN DAYNAME(y.new_date) = 'Tuesday' THEN ADDDATE(y.new_date, INTERVAL 6 DAY)
        WHEN DAYNAME(y.new_date) = 'Wednesday' THEN ADDDATE(y.new_date, INTERVAL 5 DAY)
        WHEN DAYNAME(y.new_date) = 'Thursday' THEN ADDDATE(y.new_date, INTERVAL 4 DAY)
        WHEN DAYNAME(y.new_date) = 'Friday' THEN ADDDATE(y.new_date, INTERVAL 3 DAY)
        WHEN DAYNAME(y.new_date) = 'Saturday' THEN ADDDATE(y.new_date, INTERVAL 2 DAY)
        WHEN DAYNAME(y.new_date) = 'Sunday' THEN ADDDATE(y.new_date, INTERVAL 1 DAY)
        ELSE y.new_date
    END AS Salary_review_date
FROM (
        SELECT x.Ename Emp_Name,
            x.Hire_date Hiring_date,
            ADDDATE(hire_date, INTERVAL 6 MONTH) new_date
        FROM (
                SELECT Ename,
                    Hire_date
                FROM emp_dept.employee
            ) x
    ) y;