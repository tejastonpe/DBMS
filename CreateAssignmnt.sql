#1. Write a SQL statement to create a simple table of countries including columns country_id,country_name and region_id.
create database tableAssignment;
use tableAssignment;
create table countries(
country_id varchar(2),
country_name varchar(10),
region_id int(2)
);
desc countries;

#2. Write a SQL statement to create a simple table of countries including columns country_id,country_name and region_id which already exists.

#3. Write a SQL statement to create the structure of a table dup_countries similar to countries.
create table dup_countries as select * from countries where 1=0;
desc dup_countries;

#4. Write a SQL statement to create a duplicate copy of countries table including structure and data by name dup_countries.
insert into countries values('IN','INDIA',1);
create table dup2_countries as select * from countries where 1=1;
select * from dup2_countries;

#5. Write a SQL statement to create a table where countries set a constraint NULL.
create table a(
countries varchar(20) null);

# 6. Write a SQL statement to create a table named jobs including columns job_id, job_title, min_salary, max_salary 
# and check whether the max_salary amount exceeds the upper limit 25000

create table jobs(
job_id int,
job_title varchar(10),
MIN_SALARY int,
MAX_SALARY int check(MAX_SALARY <=25000)
);
desc jobs;

#7. Write a SQL statement to create a table named countries including columns country_id,
# country_name and region_id and make sure that no countries except Italy, India and China will be entered in the table.
create table countries2(
country_id int,
country_name enum ('Italy','India','China'),
region_id varchar(10)

);
desc countries2;

#8 . Write a SQL statement to create a table named job_histry including columns employee_id, start_date, end_date, 
#job_id and department_id and make sure that the value against column end_date will be entered at the time of insertion to the format like '--/--/----'.


use tableassignment;
create table r(
rdate date);
alter table r modify column rdate varchar(10);
insert into r (rdate) values('27/09/2023');
select * from r;

#9.and make sure that no duplicate data against column country_id will be allowed at the time of insertion.
create table r1(
countryID int unique); 

# 10. Write a SQL statement to create a table named jobs including columns job_id, job_title, min_salary and max_salary, 
# and make sure that, the default value for job_title is blank and min_salary is 8000 and max_salary is NULL 
# will be entered automatically at the time of insertion if no value assigned for the specified columns.

create table jobs1(
jobId int(2),
jobTitle varchar(10)  default 'blank',
minSalary int default 8000,
maxSalary int null
);
insert into jobs1 (jobId) values(1);
select * from jobs1;

#  11. Write a SQL statement to create a table named countries including columns country_id,
# country_name and region_id and make sure that the country_id column
 # will be a key field which will not contain any duplicate data at the time of insertion
 
 # 12.country_id will be unique and store an auto incremented value
 
# 13.combination of columns country_id and region_id will be unique.

 
 create table countries(
 countryID int unique auto_increment ,
 countryName varchar(10),
 regionID int,
 unique (countryName,regionID)
 );
 
 # 14. Write a SQL statement to create a table job_history including columns employee_id, start_date, end_date,
 # job_id and department_id and make sure that, the employee_id column does not contain any duplicate value at the
 # time of insertion and the foreign key column job_id contain only those values which are exists in the jobs table.
 create table jobs2(
 jobID int primary key);
 
 create table job_history(
 employeeID int unique,
 startDate date,
 enddate date,
 jobID int, foreign key(jobID) references jobs2(jobID),
 deptID int
 );
 desc job_history;
 
# 15. Write a SQL statement to create a table employees including columns employee_id, first_name, last_name,
 # email, phone_number hire_date, job_id, salary, commission, manager_id and department_id and make sure that, 
 # the employee_id column does not contain any duplicate value at the time of insertion and the foreign key columns 
 # combined by department_id and manager_id columns contain only those unique combination values, which combinations are
 # exists in the departments table.
 create table departments2(
deptID int primary key

 );
 alter table departments2 add column mangrID int ;
 create table employees5(
 empId int unique,
 firstName varchar(20),
 lastName varchar(20),
 email varchar(10),
 phoneNo int(10),
 hireDate date,
 jobId int,
 salary int,
 commission int,
 manager_id int,
 department_id int,
 constraint fk_department foreign key( manager_id,department_id) references departments2(deptID,mangrID)
 );
 desc employees5;
 
 
 -- 16. Write a SQL statement to create a table employees including columns employee_id, first_name, last_name,
--  email, phone_number hire_date, job_id, salary, commission, manager_id and department_id and make sure that, 
--  the employee_id column does not contain any duplicate value at the time of insertion, and the foreign key column department_id,
--  reference by the column department_id of departments table, can contain only those values which are exists in the departments table 
--  and another foreign key column job_id, referenced by the column job_id of jobs table, can contain only those values which are exists in 
--  the jobs table. The InnoDB Engine have been used to create the tables.
-- "A foreign key constraint is not required merely to join two tables. For storage engines other than InnoDB, it is possible when defining a
--  column to use a REFERENCES tbl_name(col_name) clause, which has no actual effect, and serves only as a memo or comment to you that the column
--  which you are currently defining is intended to refer to a column in another table."

create table employees0(
empId int unique,
first_name varchar(10),
last_name varchar(10),
email varchar(10),
phone_number int(10),
hire_date date, 
job_id int,
salary int,
commission float,
manager_id int,
department_id int,
constraint fk_deptID foreign key (department_id) references departments2(deptID)
);
desc employees0;

 