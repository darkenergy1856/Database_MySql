-- Query to display all the data from the Employee Table. Separate each Column by a comma and name the said column as THE_OUTPUT. 

select concat(Eno,',' , ENAME,',' , Job_Type,',' , SupervisionENO,',' , Hire_date,',' , Dno,',' , Commision,',' , Salary) as 'THE_OUTPUT' from emp_dept.employee;
