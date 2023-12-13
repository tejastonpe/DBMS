#selectAssignment
use hr;
#1. From the following table return complete information about the employees. 
select * from employees;

#2. From the following table, write a  query to find the salaries of all employees. Return salary. 
select salary from employees;

#3. From the following table, write a  query to find the unique designations of the employees. Return job name.   
select distinct job_id from employees ;

# 4. From the following table, write a  query to list the employees’ names, increase their salary by 15%, and express the number of Dollars.   
select  first_name, salary*15/100 as newSalary , salary/82 as dollarSalary from employees ;

update employees set salary=salary*15/100;
select first_name, salary, salary/82 as dollarSalary from employees;


#5. From the following table, write a  query to list the employee's name and job name as a format of "Employee & Job".
select concat(first_name,' ',job_id ) as Employee_job from employees;

#6. Write a query to produce the output of employees as follows.
#7. From the following table, write a  query to find those employees with a hire date in the format like February 22, 1991. 
# Return employee ID, employee name,
select employee_id,first_name, date as hiredDate from employees;
select * from employees;



 #8. From the following table, write a  query to count the number of characters except the spaces 
# for each employee name. Return employee name length. 
select char_length(first_name) as lenghtOFname, first_name from employees;



#9. From the following table, write a  query to find the employee ID, salary, and commission of all the employees.  
select employee_id,salary,commission_pct from employees;

#10. From the following table, write a  query to find the unique department with jobs. Return department ID, Job name.
select distinct job_id, department_id from employees;


#11. From the following table, write a  query to find those employees who do not belong to the department 2001. Return complete information about the 
select department_id  from employees where department_id <> 30;


#12. From the following table, write a  query to find those employees who joined before 1991. Return complete information about the employees.   
select * from employees where hire_date < '1987-06-21';


#13. From the following table, write a  query to calculate the average salary of employees who work as analysts. Return average salary.  
select * from employees;
select avg(salary) as avgSalary from employees where job_id='it_prog';


#14. From the following table, write a  query to find the details of the employee ‘BLAZE’.
select * from employees where first_name='bruce';

 
#15. From the following table, write a  query to identify employees whose commissions exceed their salaries. Return complete information about the employees.  
select * from employees where commission_pct < salary;

#16. From the following table, write a  query to identify those employees whose salaries exceed 3000 after receiving a 25% salary increase. Return complete information about the employees.   
update employees set  salary=salary + 4020;


select * from employees;
select * from employees where salary >3000;
select * from employees;
#17. From the following table, write a  query to find the names of the employees whose length is six. Return employee name.  
select first_name, character_length(first_name) as nameLength from employees where length(first_name)> 6; 


#18. From the following table, write a  query to find out which employees joined in the month of January. Return complete information about the employees.   
select * from employees where month(hire_date)=06;

#19. From the following table, write a  query to separate the names of employees and their managers by the string 'works for'. 


#20. From the following table, write a  query to find those employees whose designation  is ‘CLERK’. Return complete information about
# the employees.  
select * from employees where job_id='it_prog';

#21. From the following table, write a  query to identify employees with more than 27 years of experience. Return complete information about the employees.   
select * from employees where manager_id > 104;

#22. From the following table, write a  query to find those employees whose salaries are less than 3500. Return complete information about the employees.  
select * from employees where salary< 90.47;

#23. From the following table, write a  query to find the employee whose designation is ‘ANALYST’. Return employee name, job name and salary.  
select concat(first_name,' ',last_name) as fullName, job_id,salary from employees where job_id='ad_vp';


#24.From the following table, write a  query to identify those employees who joined the company in 1991. Return complete information about the employees.   
select * from employees where year(hire_date)=1987;


#25. From the following table, write a  query to find those employees who joined before 1st April 1991. Return employee ID, employee name, hire date and salary.   
select employee_id, first_name,hire_date,salary from employees where hire_date <'1991-04-01';

#26. From the following table, write a  query to identify the employees who do not report to a manager. Return employee name, job name.  

select * from employees;
-- 27. From the following table, write a  query to find the employees who joined on the 1st of May 1991. Return complete information about the employees.  
select * from employees where year(hire_date)='1987-05-01';

-- 28. From the following table, write a  query to identify the experience of the employees who work under the manager whose ID number is 68319. 
# Return employee ID, employee name, salary, experience.   
select employee_id,first_name,salary,datediff(curdate(),hire_date) as TotalExperiance from employees where manager_id=100;

-- 29. From the following table, write a  query to find out which employees earn more than 100 per day as a salary. Return employee ID, employee name, salary, and experience.
select employee_id, salary/30 as perDaySalary from employees having perDaySalary>1;


#30. From the following table, write a  query to identify those employees who retired after 31-Dec-99, completing eight years of service. Return employee name.  
select first_name from employees where year(hire_date)>'1987-06-1';

#31. From the following table, write a  query to identify the employees whose salaries are odd. Return complete information about the employees. 
select * from employees where salary%2 != 0;

#32. From the following table, write a  query to identify employees whose salaries contain only three digits. Return complete information about the employees.  
select * from employees where length(substring(salary,'.',1)=1);

select * from employees where length(salary)=3 ;

#33. From the following table, write a  query to find those employees who joined in the month of APRIL. Return complete information about the employees.   
select * from employees where month(hire_date)='7';

#34. From the following table, write a  query to find out which employees joined the company before the 19th of the month. Return complete information about the employees.   
select * from employees where day(hire_date)<19;

#35. From the following table, write a  query to identify those employees who have been working as a SALESMAN and month portion of the experience is more than 10. Return complete information about the employees.  
select *, datediff(curdate(),hire_date) as Experiance from employees where job_id='pu_man';