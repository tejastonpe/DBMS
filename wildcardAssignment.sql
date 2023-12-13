###wildcart assignment
create database wildcartAssignment;
use  wildcartAssignment;

create table sales(
salesman_id int(5),
salesman_name varchar(10),
city varchar(10),
commision int(10));
alter table sales modify column city varchar(20);
insert into sales values(1001,'chirag','mangalwar_peth',5),(1002,'darshan','budhwar_peth',3),(1003,'sai','aandheri',7),(1004,'prajwal','kumbharWadi',5),(1005,'ranjet','patilwada',8);
select * from sales;



#1. write a SQL query to find the details of those salespeople who come from the 'Paris' City or 'Rome' City.
# Return salesman_id, name, city, commission.
select salesman_name, commision,city from sales where city='mangalwar_peth' or city='budhwar_peth';


#2.write a SQL query to find the details of the salespeople who come from either 'Paris' or 'Rome'. Return salesman_id, name, city, commission.
select salesman_name, commision,city from sales where city='mangalwar_peth' or city='budhwar_peth';


#3. write a SQL query to find the details of those salespeople who live in cities other than Paris and Rome. Return salesman_id, name, city, commission.  
select salesman_name,salesman_id, commision,city from sales where city<>'mangalwar_peth' and  city<>'budhwar_peth';

#4. write a SQL query to retrieve the details of all customers whose ID belongs to any of the values 3007, 3008 or 3009. Return customer_id, cust_name, city, grade, and salesman_id.  
select salesman_name, commision,city from sales where salesman_id=1001 or  salesman_id=1004;

#5. write a SQL query to find salespeople who receive commissions between 0.12 and 0.14 (begin and end values are included). Return salesman_id, name, city, and commission.  
select * from sales where commision between 2 and 5;

#6. write a SQL query to select orders between 500 and 4000 (begin and end values are included). Exclude orders amount 948.50 and 1983.43. Return ord_no, purch_amt, ord_date, customer_id, and salesman_id. 
select * from sales where (commision between 2 and 5) and (commision not between 3 and 4 ); 

#7. write a SQL query to retrieve the details of the salespeople whose names begin with any letter between 'A' and 'L' (not inclusive). Return salesman_id, name, city, commission. 
select * from sales where salesman_name like '[a-l]%';

SELECT *
FROM sales
WHERE SUBSTRING(salesman_name, 1, 1) BETWEEN 'A' AND 'L';


#8.write a SQL query to find the details of all salespeople except those whose names begin with any letter between 'A' and 'L' (not inclusive). Return salesman_id, name, city, commission.  
select * from sales where salesman_name not like '[A-S]%';
# another mthd
select * from sales where substring(salesman_name,1,1) not between 'a' and 'l';

#9.write a SQL query to retrieve the details of the customers whose names begins with the letter 'B'. Return customer_id, cust_name, city, grade, salesman_id.. 
select * from sales where salesman_name like 'c%';

#10. write a SQL query to find the details of the customers whose names end with the letter 'n'. Return customer_id, cust_name, city, grade, salesman_id.
select * from sales where salesman_name like '%n';

#11. write a SQL query to find the details of those salespeople whose names begin with ‘N’ and the fourth character is 'l'. Rests may be any character. Return salesman_id, name, city, commission. 
select * from sales where salesman_name like 'r%' and substring(salesman_name,4,1)='j';

#12.write a SQL query to find those rows where col1 contains the escape character underscore ( _ ). Return col1.
select salesman_name from sales where salesman_name like '%\_%';  # hear \ is stands for escape character 

#13. write a SQL query to identify those rows where col1 does not contain the escape character underscore ( _ ). Return col1.
select salesman_name from sales where salesman_name not like '%\_%';

#14.write a SQL query to find rows in which col1 contains the forward slash character ( / ). Return col1.
select salesman_name from sales where salesman_name like '%\/%';

#15. write a SQL query to identify those rows where col1 does not contain the forward slash character ( / ). Return col1.
select salesman_name from sales where salesman_name not like '%\/%';

#16. write a SQL query to find those rows where col1 contains the string ( _/ ). Return col1.
select salesman_name from sales where salesman_name like '%\_/%';

#17. write a SQL query to find those rows where col1 does not contain the string ( _/ ). Return col1.
select salesman_name from sales where salesman_name not like '%\_/%';

#18. write a SQL query to find those rows where col1 contains the character percent ( % ). Return col1.
select * from sales where salesman_name like '%\%%';

#19. write a SQL query to find those rows where col1 does not contain the character percent ( % ). Return col1.
select * from sales where salesman_name not like '%\%%';

#20. write a SQL query to find all those customers who does not have any grade. Return customer_id, cust_name, city, grade, salesman_id.
select * from sales where grade=null;

#21. write a SQL query to locate all customers with a grade value. Return customer_id, cust_name,city, grade, salesman_id.
select * from sales order by grade;

#22. write a SQL query to locate the employees whose last name begins with the letter 'D'. Return emp_idno, emp_fname, emp_lname and emp_dept.
select * from sales where salesman_name like 'D%' order by salesman_name;

