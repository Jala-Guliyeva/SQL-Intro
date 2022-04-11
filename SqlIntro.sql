CREATE DATABASE Department

USE Department

CREATE TABLE Employee(
Id int primary key identity,
Fullname varchar(255) not null,
Age int not null CHECK(Age>0),
Email nvarchar(50) UNIQUE  not null,
Salary  float not null CHECK(salary>=300 AND salary<=2000)
)

INSERT INTO Employee
VALUES('Jale',20,'quliyevajale52@gmail.com',300),
('Ilknur',19,'azizoff@gmail.com',400),
('Kamran',25,'quliyevkamran@gmail.com',500)

SELECT* FROM Employee

UPDATE Employee  SET Salary=1700 WHERE Id=1

SELECT * FROM Employee WHERE Salary>=500 AND Salary <=1500

SELECT Fullname,Email,Salary FROM Employee ORDER BY Salary DESC
