CREATE DATABASE ORG1235;
SHOW DATABASES;
USE ORG1235;


CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account');
        
-- select * from worker;-- 

















Create Table Persons(	
	ID int not null,
    LastName varchar(255) NOT NULL,
	FirstName varchar(255) NOT NULL,
    age int
);



create table category(
c_id int primary key,
c_name varchar(25) not null unique,
c_decrp varchar(250) not null
);

insert into category values (102, 'furnitures', 'it stores all set of wooden items');
select * from category;
desc category;

use org123;
CREATE TABLE Products (
    P_ID int primary key,
    p_Name varchar(250) NOT NULL,
    c_id int ,
    CONSTRAINT c_id FOREIGN KEY (c_id)
    REFERENCES category(c_id)
);
show tables from org123;
desc products;

drop table products;

insert into products values (904, 'Wooden table', null);
select * from products;


select * from category;

delete from category where c_id=101;

drop table category;

CREATE TABLE Student (
    sno INT PRIMARY KEY,
    sname VARCHAR(20),
    age INT

);

INSERT INTO Student(sno, sname,age) 
 VALUES(1,'Ankit',17),
       (2,'Ramya',18),
       (3,'Ram',16);


CREATE TABLE Course (
    cno INT PRIMARY KEY,
    cname VARCHAR(20)
);
INSERT INTO Course(cno, cname) 
 VALUES(101,'c'),
       (102,'c++'),
       (103,'DBMS');






CREATE TABLE Enroll (
  sno INT,
    cno INT,
    jdate DATE,
    PRIMARY KEY (sno, cno),
    FOREIGN KEY (sno)
    REFERENCES Student(sno)  -- Corrected
    ON DELETE CASCADE,
    FOREIGN KEY (cno)
    REFERENCES Course(cno)   -- Corrected
    ON DELETE CASCADE
        );
	INSERT INTO Enroll(sno,cno,jdate) 
 VALUES(1, 101, '5-jun-2021'),
       (1, 102, '5-jun-2021'),
       (2, 103, '6-jun-2021');
create database saturday;
use saturday;

create table category(
c_id int primary key,
c_name varchar(25) not null unique,
c_decrp varchar(250) not null
);

insert into category values (101, 'electronics', 'it stores all set of electronics items');select * from category;
desc category;

CREATE TABLE Products (
    P_ID int primary key,
    p_Name varchar(250) NOT NULL,
    c_id int ,
    CONSTRAINT c_id FOREIGN KEY (c_id)
    REFERENCES category(c_id) on delete cascade
);

insert into products values (904, 'INTEL I5 Processor', 101);
select * from products;
delete from category where c_id=101;
select * from category;

CREATE TABLE College (
    cno INT PRIMARY KEY,
    cname VARCHAR(255) 
  );

CREATE TABLE Department (
 dno INT PRIMARY KEY,
dname VARCHAR(255),  
cno INT,
FOREIGN KEY (cno) REFERENCES College(cno)
);


CREATE TABLE Student (
    sno INT PRIMARY KEY,
    sname VARCHAR(255),  
    dno INT,
    cno INT,
    FOREIGN KEY (dno) REFERENCES Department(dno),
    FOREIGN KEY (cno) REFERENCES College(cno)
  );
  select tables from org1235;
  
  select * from  worker

SELECT * FROM worker;
SELECT * FROM worker WHERE JOINING_DATE LIKE '2014-02%';
select department 'Admin' and salary > 100000 order by salary desc	

CREATE OR REPLACE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;



CREATE DATABASE ORG123;
SHOW DATABASES;
USE ORG123;

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);SERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');



CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
SELECT * FROM Worker 
WHERE FIRST_NAME NOT IN ('Vipul', 'Satish');

SELECT * FROM Worker 

WHERE FIRST_NAME LIKE '%a';

SELECT * FROM Worker 
WHERE FIRST_NAME LIKE '%h' 
AND LENGTH(FIRST_NAME) = 6;

SELECT DEPARTMENT, COUNT(*) AS Worker_Count 
FROM Worker 
GROUP BY DEPARTMENT 
ORDER BY Worker_Count DESC;

SELECT * FROM Worker WHERE WORKER_ID = 1
SELECT * FROM Worker WHERE WORKER_ID = 1
UNION ALL
SELECT * FROM Worker WHERE WORKER_ID = 1;

select  department ,count(department) as highest_head_count
from worker
group by department
having count(department) >= 3;


SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition   // not ui
ORDER BY column_name(s);


SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;

SELECT DEPARTMENT, Worker_Count
FROM (
    SELECT DEPARTMENT, COUNT(*) AS Worker_Count
    FROM Worker
    GROUP BY DEPARTMENT
    ORDER BY Worker_Count DESC
    LIMIT 2
) AS subquery
ORDER BY Worker_Count ASC
LIMIT 1;

CREATE TABLE VIT_BPL (
    ID INT NOT NULL PRIMARY KEY,
    NAME VARCHAR(50),
    DEPARTMENT VARCHAR(50)
);

INSERT INTO VIT_BPL (ID, NAME, DEPARTMENT) VALUES
(1, 'Rahul Sharma', 'Computer Science'),
(2, 'Ananya Verma', 'Mechanical'),
(3, 'Vikram Singh', 'Electrical'),
(4, 'Neha Gupta', 'Civil'),
(5, 'Amit Tiwari', 'Electronics');

SELECT * FROM VIT_BPL;

CREATE TABLE VIT (
    ID INT NOT NULL PRIMARY KEY,
    NAME VARCHAR(50),
    DEPARTMENT VARCHAR(50)
);

INSERT INTO VIT (ID, NAME, DEPARTMENT) VALUES
(1, 'Rahul Sharma', 'Computer Science'),
(2, 'Ananya Verma', 'Mechanical'),
(3, 'Vikram Singh', 'Electrical'),
(4, 'Neha Gupta', 'Civil'),
(5, 'Amit Tiwari', 'Electronics');

SELECT * FROM VIT;

SELECT * FROM VIT_BPL;
select name from vit_bpl where id = (select id from vit where department = 'civil');


C

CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT(10),
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '16-02-20'),
		(002, 3000, '16-06-11'),
		(003, 4000, '16-02-20'),
		(001, 4500, '16-02-20'),
		(002, 3500, '16-06-11');
CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Title 
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '2016-02-20 00:00:00'),
 (002, 'Executive', '2016-06-11 00:00:00'),
 (008, 'Executive', '2016-06-11 00:00:00'),
 (005, 'Manager', '2016-06-11 00:00:00'),
 (004, 'Asst. Manager', '2016-06-11 00:00:00'),
 (007, 'Executive', '2016-06-11 00:00:00'),
 (006, 'Lead', '2016-06-11 00:00:00'),
 (003, 'Lead', '2016-06-11 00:00:00');


SELECT DEPARTMENT, COUNT(*) AS Worker_Count 
FROM Worker 
GROUP BY DEPARTMENT 
HAVING COUNT(*) < 5;

SELECT * FROM Worker 
ORDER BY WORKER_ID DESC
LIMIT 5;


insert into student values (1001,"Jayanth","ECE"),(1002,"Praveen","CSE"),(1003,"Logesh","Mech"),(1006,'karthick','Aero'),(1007,"Mahesh","Civil");

select * from student;
drop table vit;
create table VIiT(
s_id int primary key,
s_cgpa varchar(5) not null
);
insert into viit values (1001,'7.2'),(1002,'8.6'),(1007,'9.25');
select * from viit;


select * from student  cross join viit;
select * from student Inner join viit where Student.sno = viit.s_id;
select * from student Natural join viit where student.sno;
select
 * from student left outer join viit on (student.sno = viit.s_id);
 select *  from student full join viit on  (student.sno = viit.s_id); 	


SELECT W.* 
FROM Worker W
INNER JOIN Title T ON W.WORKER_ID = T.WORKER_REF_ID
WHERE T.WORKER_TITLE = 'Manager';





SELECT Worker.* 
FROM Worker
INNER JOIN Title ON Worker.WORKER_ID = Title.WORKER_REF_ID
WHERE Title.WORKER_TITLE = 'Manager';



