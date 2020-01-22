CREATE DATABASE Employees;
go;

CREATE SCHEMA Employees;
go;

USE Employees;
go;

create table Department(
DeptId int not null,
DeptName varchar(50) not null,
Loc varchar(50) not null,
PRIMARY KEY (DeptId),
);

DROP TABLE Department;

create table Employee(
empId int not null,
firstName varchar(30) not null,
lastName varchar(30) not null,
ssn varchar(9) not null,
DeptId int  not null,
PRIMARY KEY (empId),
FOREIGN KEY (DeptId) REFERENCES Department(DeptId),
);

DROP TABLE Employee;



create table EmpDetails(
detailId int not null,
empId int not null,
salary money,
address1 varchar(50) not null,
address2 varchar(50),
city varchar(30) not null,
_state varchar(30),
country varchar(30) not null,
PRIMARY KEY (detailId),
FOREIGN KEY (empId) REFERENCES Employee(empId),
);

DROP TABLE EmpDetails;

INSERT INTO DEPARTMENT (DeptId, DeptName, Loc)
VALUES (1,'Sales', 'Dallas');
INSERT INTO DEPARTMENT (DeptId, DeptName, Loc)
VALUES (2,'HR', 'Richmond');
INSERT INTO DEPARTMENT (DeptId, DeptName, Loc)
VALUES (3,'Tech', 'Kansas City');
select * from DEPARTMENT;

INSERT INTO Employee (empId, firstName, lastName, ssn, DeptId)
VALUES (1, 'Franklin', 'Clinton', 999999999, 3);
INSERT INTO Employee (empId, firstName, lastName, ssn, DeptId)
VALUES (2, 'Trevor', 'Phillips', 888888888, 2);
INSERT INTO Employee (empId, firstName, lastName, ssn, DeptId)
VALUES (3, 'Michael', 'Townley', 777777777, 1);

select * from Employee;

INSERT INTO EmpDetails (detailId, empId, salary, address1, address2, city, _state, country)
 VALUES (1, 3, 90000, '0420 E Walnut St', '' ,'Vinewood', 'Los Santos', 'US');
 INSERT INTO EmpDetails (detailId, empId, salary, address1, address2, city, _state, country)
 VALUES (2, 2, 60000, '1337 Camacho St', '' ,'Sandy Shores', 'Los Santos', 'US');
 INSERT INTO EmpDetails (detailId, empId, salary, address1, address2, city, _state, country)
 VALUES (3, 1, 40000, '2020 Grove St', 'Apt 4' ,'Alta', 'Los Santos', 'US');
 select * from EmpDetails;
 delete from EmpDetails;

 INSERT INTO Employee (empId, firstName, lastName, ssn, DeptId)
VALUES (4, 'Tina', 'Smith', 666666666, 2);
INSERT INTO EmpDetails (detailId, empId, salary, address1, address2, city, _state, country)
 VALUES (4, 4, 40000, '1010 W Baltimore', '' ,'Farmington', 'New Mexico', 'US');
INSERT INTO DEPARTMENT (DeptId, DeptName, Loc)
VALUES (4,'Marketing', 'Santa Fe');

select * from Employee where Employee.DeptId = 4;

select SUM(EmpDetails.salary)
from EmpDetails;

select Count(DeptId)
from Employee
where DeptId = 1;
select Count(DeptId)
from Employee
where DeptId = 2;
select Count(DeptId)
from Employee
where DeptId = 3;
select Count(DeptId)
from Employee
where DeptId = 4;

UPDATE EmpDetails
SET salary = 90000
WHERE empId = 4;







