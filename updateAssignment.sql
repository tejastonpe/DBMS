use hr;
#1.Write a SQL statement to change the email column of the employees table with 'not available' for all employees.
update employees set email='not available';
select email from employees;

#2.Write a SQL statement to change the email and commission_pct column of employees table with 'not available' and 0.10 for all employees.
update employees set email='not availabe1', commission_pct=0.10;
select email,commission_pct from employees;

#3.Write a SQL statement to change the email and commission_pct column of employees table with 'not available' and 0.10 for those employees whose department_id is 110.
update employees set email='not available', commission_pct=0.10 where department_id=100;
select * from employees;


#4-Write a SQL statement to change the email column of employees table with 'not available' for those employees whose department_id is 80 and gets a commission_pct is less than .20
update employees set email='not available', commission_pct=0.20 where department_id=80;
select * from employees;

# 5-Write a SQL statement to change the email column of the employees table with 'not available' for those employees who belong to the 'Accounting' department.
-- update employees set email='not available', commission_pct=0.20 where  ;



select * from departments;


#Write a SQL statement to change the salary of an employee to 8000 whose ID is 105, if the existing salary is less than 5000.
update employees set salary=8000 where employee_id=105 and salary<5000;

#Write a SQL statement to change the job ID of the employee whose ID is 118, to SH_CLERK if the employee belongs to the department, whose ID is 30 and the existing job ID does not start with SH.
update employees set job_id = 'SH_CLERK' where employee_id = 118 and department_id = 30 and not (job_id like 'SH%');

#Write a SQL statement to increase the salary of employees under the department 40, 90 and 110 according to the company rules that salary will be increased by 25% for department 40, 15% for department 90 and 10% for department 110 and the rest of the departments will remain the same.
UPDATE employees
SET salary = CASE
    WHEN department_id = 40 THEN salary * 1.25
    WHEN department_id = 90 THEN salary * 1.15
    WHEN department_id = 110 THEN salary * 1.10
    ELSE salary
END
WHERE department_id IN (40, 90, 110);
select * from employees;



#Write a SQL statement to increase the minimum and maximum salary of PU_CLERK by 2000 as well as the salary for those employees by 20% and commission percent by .10.
update employees set min_salary = min_salary + 2000, max_salary = max_salary + 2000, salary = salary * 1.20,commission_pct = commission_pct + 0.10
where job_id = 'PU_CLERK';