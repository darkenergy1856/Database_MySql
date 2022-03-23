-- 5. Query to display the Employee Name and Salary of all the employees earning more than $2850.
SELECT Ename,
    Salary
FROM emp_dept.employee
WHERE salary > 2850;
-- 6. Query to display Employee Name and departement Number for the Employee No= 79.
SELECT Ename,
    Dno
FROM emp_dept.employee
WHERE Eno = 79;
-- 7. Query to display Employee Name and Salary for all employees whose salary is not in the range of $1500 and $2850.
SELECT Ename,
    Salary
FROM emp_dept.employee
WHERE salary NOT IN (1500, 2850);
-- 8. Query to display Employee Name and departement No. of all the employees in Dept 10 and Dept 30 in the alphabetical order by name.
SELECT Ename,
    Dno
FROM emp_dept.employee
WHERE Dno = 10
    OR Dno = 30
ORDER BY Ename;
-- 9. Query to display Name and Hire Date of every Employee who was hired in 1981.
SELECT Ename,
    Hire_date
FROM emp_dept.employee
WHERE Hire_date LIKE '1981%';
-- 10. Query to display Name and Job of all employees who have not assigned a supervisor.
SELECT Ename,
    Job_type
FROM emp_dept.employee
WHERE SupervisionENO = '';
-- 11. Query to display the Name, Salary and Commission for all the employees who earn commission.
SELECT Ename 'Name',
    Salary,
    Commision
FROM emp_dept.employee
WHERE employee.Commision IS NOT NULL;
-- 12. Sort the data in descending order of Salary and .
SELECT *
FROM emp_dept.employee
ORDER BY Salary DESC,
    Commision DESC;
-- 13. Query to display Name of all the employees where the third letter of their name is ‘A’.
SELECT Ename
FROM emp_dept.employee
WHERE Ename LIKE '__A%';
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
-- 15. Query to display Name, Salary and Commission for all employees whose Commission amount is greater than their Salary increased by 5%.
select Ename,
    Salary,
    Commision
from emp_dept.employee
where Commision > (Salary + 0.05 * Salary);
-- 16. Query to display the Current Date along with the day name.
select current_date() as 'Current Date',
    dayname(current_date()) as 'Day Name';
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
-- 18. Query to display Name and calculate the number of months between today and the date on which employee was hired of departement ‘Purchase’.
select Ename as 'Name',
    TIMESTAMPDIFF(MONTH, hire_date, current_date()) as 'Month Difference'
from emp_dept.employee
    left join emp_dept.departement on employee.Dno = departement.Dno
where departement.Dname = 'Purchase';
-- 19.Query to display the following for each employee < E - Name > earns < Salary > monthly but wants < 3 * Current Salary >.Label the Column as Dream Salary.
select concat(
        Ename,
        ' earns ',
        Salary,
        ' monthly but wants ',
        (Salary * 3)
    ) AS 'Dream Salary'
from emp_dept.employee;
-- 20. Query to display Name with the 1st letter capitalized and all other letter lower case and length of their name of all the employees whose name starts with ‘J’, ’A’ and ‘M’. 
select concat(
        left(Ename, 1),
        lower(right(Ename, char_length(Ename) - 1))
    ) as 'Name'
from emp_dept.employee
where Ename like 'A%'
    or Ename like 'J%'
    or Ename like 'M%';
-- 21. Query to display Name, Hire Date and Day of the week on which the employee started. 
select Ename,
    hire_date,
    dayname((hire_date)) as 'Day'
from emp_dept.employee;
-- 22. Query to display Name, departement Name and departement No for all the employees.
select Ename,
    departement.Dname,
    departement.Dno
from emp_dept.employee
    left join emp_dept.departement on employee.Dno = departement.Dno;
-- 23. Query to display Unique Listing of all Jobs that are in departement number 30. 
select distinct employee.Job_Type as 'Unique Job'
from emp_dept.employee
where employee.Dno = 30;
-- 24. Query to display Name, Dept Name of all employees who have an ‘A’ in their name.
select Ename 'Name',
    departement.Dname 'Dept Name'
from emp_dept.employee
    left join emp_dept.departement on employee.Dno = departement.Dno
where employee.Ename like '%a%';
-- 25. Query to display Name, Job, departement No. And departement Name for all the employees working at the Dallas location.
select Ename 'Name',
    Job_Type 'JOB',
    departement.Dno as 'departement No.',
    departement.Dname as 'departement Name'
from emp_dept.employee
    left join emp_dept.departement on employee.Dno = departement.Dno
WHERE departement.Location = 'Dallas';
-- 26. Query to display Name and Employee no. Along with their supervisor’s Name and the supervisor’s employee no; along with the Employees’ Name who do not have a supervisor.
-- 27. Query to display Name, Dept No. And Salary of any employee whose departement No. and salary matches both the departement no. And the salary of any employee who earns a commission. 
-- 28. Query to display Name and Salaries represented by asterisks, where each asterisk (*) signifies $100. 
select lpad('', (emp_dept.employee.Salary) / 100, '*')
from emp_dept.employee;
-- 29. Query to display the Highest, Lowest, Sum and Average Salaries of all the employees
select avg(Salary) 'Averge',
    sum(Salary) 'Sum',
    max(Salary) 'Max',
    min(Salary) 'Min'
from emp_dept.employee;
-- 30. Query to display the number of employees performing the same Job type functions.
select count(distinct(emp_dept.employee.Job_Type)) 'Count'
from emp_dept.employee
group by emp_dept.employee.Job_Type;
-- 31. Query to display the total number of supervisors without listing their names.
select count(distinct(emp_dept.employee.SupervisionENO)) 'Distinct'
from emp_dept.employee;
-- 32. Query to display the departement Name, Location Name, No. of Employees and the average salary for all employees in that departement.
-- 33. Query to display Name and Hire Date for all employees in the same dept. as Blake. 
SELECT Ename 'Name',
    Hire_Date 'Hire Date'
FROM emp_dept.employee
    LEFT JOIN emp_dept.departement ON employee.Dno = departement.Dno
WHERE departement.dname = 'Blake';
-- 34. Query to display the Employee No. And Name for all employees who earn more than the average salary. 
select Ename,
    Eno
from emp_dept.employee
where employee.Salary > (
        select avg(emp_dept.employee.Salary) 'Avg'
        from emp_dept.employee
    );
-- 35. Query to display Employee Number and Name for all employees who work in a departement with any employee whose name contains a ‘T’. 
-- 36. Query to display the names and salaries of all employees who report to supervisor named ‘King’.
-- 37. Query to display the departement no, name and job for all employees in the Sales departement.
SELECT employee.Dno,
    ENAME 'Name',
    Job_Type
FROM emp_dept.employee
    LEFT JOIN emp_dept.departement ON employee.Dno = departement.Dno
WHERE departement.Dname = 'Sales';
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
-- 39. Display total number of departements at each location
SELECT emp_dept.departement.Location,
    COUNT(DISTINCT (emp_dept.departement.Dname)) 'Count'
FROM emp_dept.departement
GROUP BY emp_dept.departement.Location;
-- 40. Find the departement name in which at least 20 employees work in.
SELECT y.Dno,
    emp_dept.departement.Dname,
    y.Count
FROM (
        SELECT COUNT(DISTINCT (emp_dept.employee.Dno)) 'Count',
            emp_dept.employee.Dno 'Dno'
        FROM emp_dept.employee
        GROUP BY emp_dept.employee.Dno
    ) y
    LEFT JOIN emp_dept.departement ON y.Dno = departement.Dno
WHERE y.Count >= 20;
-- 41. Query to find the employee’ name who is not supervisor and name of supervisor supervising more than 5 employees.
-- 42. Query to display the job type with maximum and minimum employees.