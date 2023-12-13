#1. Write an query to add a new column named 'phone_number' of type VARCHAR(20) to a table named 'customers'.
create database alterAssignment;
use alterAssignment;

create table customers(
cusID int,
cusName varchar(20)
);
alter table customers add column phone_number int(10);
desc customers;

#2. Write an query to modify the data type of the column 'age' in a table named 'employees' to INT.
create table employee(
age varchar(10)
);
alter table employee modify column age int(10);
desc employee;

#3. Write a query to rename the column 'address' to 'home_address' in a table named 'contacts'.
create table contacts(
address varchar(20)
);
alter table contacts change address  home_address varchar(20);
desc contacts;

#4. Write a query to add a foreign key constraint named 'fk_department' to a column named 'department_id'
# in a table named 'employees', referencing the 'department_id' column in a table named 'departments'.


create table departments(
deptId int(2) primary key
);
create table employees(
fk_department int(2),
foreign key (fk_department) references departments(deptID)
);
desc employees;

#5. Write a query to drop the primary key constraint from a table named 'students'.
create table students(
id int primary key);
alter table  students drop primary key;
desc students;

#6. Write a query to add a unique constraint named 'uc_email' to a column named 'email' in a table named 'users'.
create table users(
email varchar(20));
alter table users add constraint uc_email unique (email);
desc users;

#7. Write a query to add a default value of '0' to a column named 'quantity' in a table named 'inventory'.
create table inventory(
quantity int);
alter table inventory alter column quantity set default 0;
desc inventory;

#8. Write a query to modify the position of the column 'last_name' to be the first column in a table named 'customers'.
create table customers2(
id int,
last_name varchar(10)
);
alter table customers2 modify  id int after last_name ;
desc customers2;

#9. Write a query to change the auto-increment value of a column named 'product_id' to start from 1001 in a table named 'products'.
create table products(
product_id int(20) auto_increment primary key
);
alter table products auto_increment=1001;
desc products;

#10. Write a query to add a check constraint named 'chk_salary' to a column named 'salary' in a table named 'employees', ensuring that the salary is greater than or equal to 2000.
create table employees3(
salary int(10)
);
alter table employees3 add constraint chk_salary check(salary>=2000);
desc employees3;

######based on hr database
use hr;
#1. Write a SQL statement to rename the table countries to country_new

alter table country rename country_new;
desc country_new;

#2. Write a SQL statement to add a column region_id to the table locations.
alter table locations add column region_id int;
desc locations;

#3. Write a SQL statement to add a column ID as the first column of the table locations.
alter table locations add column ID int(2) after location_id;
alter table locations modify location_id decimal(4,0) after id;
desc locations;


#4. Write a SQL statement to add a column region_id after state_province to the table locations.
alter table locations add column region_id2 int(2) after state_province;
desc locations;

#5. Write a SQL statement to change the data type of the column country_id to integer in the table locations.
alter table locations modify column  country_id int;


#6. Write a SQL statement to drop the column city from the table locations.
alter table locations drop column city;
desc locations;


#7. Write a SQL statement to change the name of the column state_province to state, keeping the data type and size same.
alter table locations change state_province state varchar(25);
desc locations;

#8. Write a SQL statement to add a primary key for the columns location_id in the locations table.
alter table locations drop primary key;
alter table locations add constraint primary key(location_id);
desc locations;

#9. Write a SQL statement to add a primary key for a combination of columns location_id and country_id.
alter table locations drop primary key;
alter table locations add constraint primary key(location_id,country_id);
desc locations;

#10. Write a SQL statement to drop the existing primary from the table locations on a combination of columns location_id and country_id.
alter table locations drop primary key;
desc locations;

#11. Write a SQL statement to add a foreign key on the job_id column of the job_history table referencing the primary key job_id of jobs table.
alter table job_history add constraint fk_constraint foreign key (job_id) references jobs(job_id);


#12. Write a SQL statement to add a foreign key constraint named fk_job_id on the job_id column of the job_history table referencing the primary key job_id of the jobs table.
alter table job_history add constraint fk_job_id foreign key(job_id) references jobs(job_id);


#13. Write a SQL statement to drop the existing foreign key fk_job_id from the job_history table on job_id column which is referencing the job_id of jobs table.
alter table job_history drop constraint fk_job_id ; #foreign key(job_id) references jobs(job_id);


# 14. Write a SQL statement to add an index named indx_job_id on job_id column in the table job_history.
alter table job_history add index indx_job(job_id);

#15. Write a SQL statement to drop the index indx_job_id from job_history table.
alter table job_history drop index indx_job;














