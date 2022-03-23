--  Query to display the Employee Name concatenated by a Job separated by a comma

select concat(Ename , ',' , Job_type) as Data from emp_dept.employee ;
