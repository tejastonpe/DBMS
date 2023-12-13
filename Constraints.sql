create database constraints;
use constraints;

create table user(
u_id int auto_increment primary key,
username varchar(10),
password varchar(10)
);
insert into user(username,password)values('Rnama','12345'),('ramchandra','321'),('shayma',09877);
select * from user;

######################
-- using if not exits
create table if not exists user(
u_id int auto_increment primary key,
username varchar(10),
password varchar(10));
select * from user;


############
create table if not exists withexitsclauses(
u_id int auto_increment primary key,
username varchar(10),
password varchar(10));
select * from withexitsclauses;

###
-- another way to create using like operator
create table user_details like user;
desc user_details;

################
create table userwithidone as select * from user where u_id=1;
 select * from userwithidone;
 
 #################
 create table unique_ex(
 username varchar(10),
 password varchar(6),
 email varchar(10)unique
 );
 insert into unique_ex values('abc','abc123','a@gmail');
 select * from unique_ex;
 
 
 create table uniqueCheck(
 username varchar(10)unique,
 password varchar(10));
 insert into uniqueCheck values('tejastonpe','12334');
 insert into uniqueCheck values('to8npe','12376434');
 select * from uniqueCheck;
 
 -- multiple attributes unique
 create table uniqueCheck2(
 username varchar(10),
 password varchar(10),
 course varchar(10),
 unique(username,course));
 insert into uniqueCheck2 values('tejastonpe','12334','DAC');
 insert into uniqueCheck2 values('to8npe','12376434','DBDA');
 select * from uniqueCheck2;
 
 ##############
 -- not null
 create table not_null_ex(
 student_id int(2) not null
 );
 insert into not_null_ex values(22);
 select * from not_null_ex;
 
 ###
 -- both conditions should be match hear if any one false then not work
 create table not_null_ex2(
 st_id int(8) not null unique,
  o_name varchar(10) not null,
 quantity int not null);
  insert into not_null_ex2 values(292,'pizza',2);
  insert into not_null_ex2 values(76,'pizza',2);
  select * from not_null_ex2;
  
  #####################################
  -- default
  create table default_ex(
  em_id int(2),
  em_name varchar(10),
  dept varchar(10) default 'UNASSIGNED'
  );
  insert into default_ex(em_id,em_name) values(12,'tejas');
  select * from default_ex;
  
  
  create table default_ex2(
  or_id int(2),
  or_name varchar(10),
  dquantity int default 0
  );
  insert into default_ex2(or_id,or_name) values(12,'tejas');
  select * from default_ex2;
  insert into default_ex2 values(12,'tejas',4);
  select * from default_ex2;
  
  ##################
  -- check constraint
  create table check_ex(
  or_id int(2),
  or_name varchar(10),
  qty int check(qty<0)
  );
  insert into check_ex values(12,'tejas',-7);
  select * from check_ex;
  insert into check_ex values(12,'tejas',0);
  select * from check_ex;
  
  create table check_ex2(
  s_id int,
  s_age int check(s>21),
  s_course  enum('DAC','DBDA')
  );
  insert into check_ex2 values(12,33,'DAC');
  select * from check_ex2;
  -- error in code ,check code n repair
  
  ##########
  -- primary key
  create table primary_ex(
  or_id int(2) primary key,
  or_name varchar(10),
  qty int 
  );
  insert into primary_ex values(12,'tejas',9);
  select * from primary_ex;
  insert into primary_ex values(12,'tejas',0);
  select * from primary_ex;
  
   ##########
  -- composite key
  create table composite_ex(
  or_id int(2) ,
  or_name varchar(10),
  qty int, 
  primary key(or_id,or_name)
  );
  insert into composite_ex values(12,'tejas',9);
  select * from composite_ex;
  insert into composite_ex values(182,'tejags',0);
  select * from composite_ex;
  
  ################
  -- foreign  key
create table pk_student_example(
s_id int(8) primary key ,
s_name varchar(16) not null,
age int(20)
);
create table pk_course_example1(
course_id int(8) primary key ,
student_id int(8),
course_name varchar(16) not null,
faculty varchar(20),
foreign key(student_id) references pk_student_example(s_id)
);

desc pk_student_example;
desc pk_course_example1;

###################################
# 2 tables one for emplloyee and deptrtment where empid will act as foreign key
-- in a depertments table

create table employee2(
empID int(2) primary key,
empName varchar(10)
);
create table dept(
deptName varchar(10),
deptID int(2),
foreign key(deptID) references employee2(empID)
);
desc dept;