-- 16. Query to display the Current Date along with the day name.
select current_date() as 'Current Date',
    dayname(current_date()) as 'Day Name';
