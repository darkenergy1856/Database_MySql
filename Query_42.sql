-- 42. Query to display the job type with maximum and minimum employees.
SELECT 
    customTable1.Job_Type, MIN(customTable1.EmpMin) 'No. Of Employee' 
FROM
    (SELECT 
        Job_Type, COUNT(ENo) AS 'EmpMin'
    FROM
        emp_dept.employee
    GROUP BY (Job_type) order by EmpMin asc) customTable1 
UNION SELECT 
    customTable2.Job_Type , MAX(customTable2.EmpMax)
FROM
    (SELECT 
        Job_Type, COUNT(ENo) AS 'EmpMax'
    FROM
        emp_dept.employee
    GROUP BY (Job_type) order by EmpMax desc) customTable2;
    
  