##join assignment
use hr3;

#1. Write a query to find the addresses (location_id, street_address, city, state_province, country_name) of all the departments. 
select * from locations;
select * from countries;
select * from employees;
select * from jobs;
select * from departments;
select * from job_history;


select l.location_id, l.street_address, l.city, l.state_province, c.country_name from
locations l inner join countries c on c.country_id=l.country_id;

#2. Write a query to find the name (first_name, last name), department ID and name of all the employees. 
select e.first_name,e.last_name ,d.department_id,d.department_name 
 from employees e inner join departments d on d.department_id=e.department_id;


#3. Write a query to find the name (first_name, last_name), job, department ID and name of the employees who works in London. 
select e.first_name,e.last_name,j.job_title, d.department_id,d.department_name ,salary,city
 from employees e inner join jobs j on e.job_id=j.job_id 
inner join departments d on d.department_id=e.department_id
inner join locations l on l.location_id=d.location_id where city='london';

#4. Write a query to find the employee id, name (last_name) along with their manager_id and name (last_name). 
select e1.employee_id, e1.last_name, e1.manager_id,e1.last_name from employees e1 inner join employees e2 on e1.manager_id=e2.manager_id  ;


#5. Write a query to find the name (first_name, last_name) and hire date of the employees who was hired after 'Jones'. 
select e1.first_name,e1.last_name ,e1.hire_date from employees e1 inner join employees e2 on e1.hire_date > e2.hire_date where  e2.last_name='jones';

#IMP
#6. Write a query to get the department name and number of employees in the department. 
select department_name, count(*) as TotalEmployee from  employees e inner join departments d on e.department_id=d.department_id
 group by d.department_id, d.department_name order by department_name;


#7. Write a query to find the employee ID, job title, number of days between ending date and starting date for all jobs in department 90. 
select d.department_id,j.employee_id,job_title,datediff(j.end_date,j.start_date) as WorkingDays from job_history j inner join departments d 
on d.department_id=j.department_id inner join jobs j1 on j.job_id=j1.job_id
where d.department_id=90;

#8. Write a query to display the department ID and name and first name of manager. 
select e.department_id,d.department_name, e.first_name as ManagerName from employees e inner join departments d 
on d.department_id=e.department_id; 


#9. Write a query to display the department name, manager name, and city. 
select d.department_name, e.first_name as ManagerName, city from employees e inner join departments d on e.department_id=d.department_id
inner join locations l on l.location_id=d.location_id;

#10. Write a query to display the job title and average salary of employees. 
select d.job_title, avg(salary) as avgSalary from employees e join departments d on d.department_id=e.department_id;


#11. Write a query to display job title, employee name, and the difference between salary of the employee and minimum salary for the job. 
select j.job_title,e.first_name, e.salary-j.min_salary as DiffSalary from employees e  inner join jobs j on j.job_id=e.job_id ;



#12. Write a query to display the job history that were done by any employee who is currently drawing more than 10000 of salary. 

select j.* from job_history j join employees e on e.job_id=j.job_id where e.salary>1000;


#13. Write a query to display department name, name (first_name, last_name), hire date, salary of the manager for all managers whose experience is more than 15 years.
select d.department_name,concat(e.first_name,' ',e.last_name) as fullName, e.hire_date,e.salary from employees e inner join departments d 
on d.department_id=e.department_id ;
